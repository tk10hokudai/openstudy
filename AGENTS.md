<!-- BEGIN:nextjs-agent-rules -->
# This is NOT the Next.js you know

This version has breaking changes — APIs, conventions, and file structure may all differ from your training data. Read the relevant guide in `node_modules/next/dist/docs/` before writing any code. Heed deprecation notices.
<!-- END:nextjs-agent-rules -->

<!-- BEGIN:seed-question-rules -->
# Seed SQL Question Rules

When writing `INSERT INTO choices` blocks for any question seed file:

- **Shuffleable questions** (用語集・英単語集・SPI・基本情報など TOEIC L&R 本体以外):
  正解 (`is_correct=true`) は**必ず1番目（position 0）**に記述する。
  UIが出題時にランダム表示するため、SQLでは正規順（正解が先頭）を維持する。
- **Non-shuffleable questions** (TOEIC L&R の選択肢に (A)(B)(C)(D) ラベルがある問題):
  UIシャッフルは行わない。作問時に正解ラベルが (A)～(D) に**バランスよく分散**するよう
  各試験専用 skill の指示に従い配置する。
- All choice texts for vocabulary/term questions must be a single-word (or
  minimal-phrase) Japanese translation — never list multiple synonyms in one
  choice (e.g. use `「確実にする」` not `「確実にする・保証する」`).

詳細は `.claude/skills/question-creator/SKILL.md` を参照。
<!-- END:seed-question-rules -->

<!-- BEGIN:supabase-query-rules -->
# Supabase クエリの行数上限

`supabase/config.toml` に `max_rows = 1000` が設定されている（本番 Supabase も同様）。
**クライアント側の `.limit()` はサーバー側 `max_rows` を超えられない。**

## 問題が起きるパターン

複数セクションの問題を一括 `.in('section_id', allSectionIds)` で取得すると、
`question_number` 順ソート時に全セクションの Q1・Q2…が均等に並ぶため、
1000 行目がちょうど各セクションの Q70 付近で打ち切られる。
→ **どの分野を選んでも 70 問しか出てこない**バグが発生する。

## 対処法（モード別）

| モード | NG パターン | OK パターン |
|--------|------------|------------|
| `normal` + sectionsParam | 全セクション一括 `.in('section_id', all)` | **セクションごとにループ**してフェッチ |
| `normal`（sections なし） | 同上 | **セクションごとにループ** |
| `retry` | 全セクション取得→ID フィルタ | **`.in('id', retryIds)` で直接取得** |
| `continue` | 全セクション取得→ID フィルタ | **`.in('id', savedQIds)` で直接取得** |

```typescript
// NG: 全セクションを一括取得（1000行で打ち切られる）
supabase.from('questions').select('*').in('section_id', allSectionIds)

// OK①: セクションごとにループ（normal モード）
for (const sectionId of allSectionIds) {
  const { data } = await supabase.from('questions').select('*').eq('section_id', sectionId);
}

// OK②: 保存済み ID をバッチ取得（retry / continue モード）
//   → 1リクエストあたり BATCH=200 件に分割することで
//     URL 長制限（GET パラメータ）と max_rows の両方を回避する
const BATCH = 200;
for (let i = 0; i < savedIds.length; i += BATCH) {
  const { data } = await supabase.from('questions').select('*').in('id', savedIds.slice(i, i + BATCH));
}
```

### なぜ batch-by-ID は max_rows に引っかからないか

`BATCH=200` というクライアント側の上限により、**1リクエストで返される行数が最大 200 行**に制限される。
max_rows=1000（ローカル・本番共通デフォルト）を常に下回るため、IDs が何千件あっても安全。

### batch-by-ID が使えない場面（normal モード）

`normal` モードではどの問題 ID が存在するかを事前に知らないため、batch-by-ID は使えない。
2ステップ（① ID 一覧取得 → ② バッチフェッチ）にしても、①の時点で max_rows 問題が残る。
→ **per-section ループが唯一の解決策**。

### 本番 Supabase（cloud）での動作保証

| 条件 | 値 |
|------|----|
| Supabase cloud デフォルト max_rows | 1000（全プラン共通） |
| BATCH=200 との関係 | 200 < 1000 → 常に安全 |
| 崩れる条件 | max_rows < 200 に設定された環境（実用上ありえない） |

保存 ID が増えてもバッチ数が増えるだけで動作は変わらない（例: 3500 IDs → 18 バッチ）。

### URL 長制限について

PostgREST は GET リクエストでクエリパラメータに `.in()` リストを展開する。
ID が多いと `?id=in.(1,2,...,N)` の URL が長くなり、サーバー側の URL 長上限（通常 8KB）を超えてクエリが**無音で失敗**（`data = null`）する。
BATCH=200 では URL が約 1KB に収まるため、この制限にも安全に対処できる。

実装例: [app/exams/[examId]/quiz/page.tsx](app/exams/%5BexamId%5D/quiz/page.tsx) の `fetchQuestionsByIds` / `fetchGroupsByIds`
<!-- END:supabase-query-rules -->

<!-- BEGIN:collection-rules -->
# 問題集（コレクション）の大量問題対応

## 問題が起きるパターン

コレクションに 1000 問超の問題を追加すると、2 つの箇所で無音失敗が起きる。

| 箇所 | NG パターン | 症状 |
|------|------------|------|
| `getCollectionItems` | 単発 `.select().eq()` | `user_collection_items` が `max_rows=1000` で打ち切られ、IDリストが1000件で止まる |
| `collections/page.tsx` `handleNext` | `?questionIds=1,2,...,N` をURLに展開 | URL長上限（~8KB）を超えてクエリが消え、クイズ側で `qIds=[]` になる |

## 対処法

### `getCollectionItems` — `.range()` でページネーション

```typescript
// NG: 単発取得（1000件で打ち切られる）
supabase.from('user_collection_items').select('question_id').eq('collection_id', id)

// OK: range() でページネーション
const PAGE = 1000;
let from = 0;
while (true) {
  const { data } = await supabase
    .from('user_collection_items').select('question_id')
    .eq('collection_id', id).range(from, from + PAGE - 1);
  if (!data || data.length === 0) break;
  allIds.push(...data.map((d) => d.question_id));
  if (data.length < PAGE) break;
  from += PAGE;
}
```

### コレクション開始 — URL に questionIds を入れない

```typescript
// NG: URL長制限を超える（2000問で ~14KB）
router.push(`/quiz?mode=collection&questionIds=${qIds.join(',')}&collectionId=${id}`)

// OK: collectionId だけ渡し、クイズ側で getCollectionItems() + fetchQuestionsByIds() を使う
router.push(`/quiz?mode=collection&collectionId=${id}`)
```

クイズ側では `collectionIdParam` から `getCollectionItems(user, collectionIdParam)` でIDを取得し、
`fetchQuestionsByIds`（BATCH=200）で問題データを取得する。

実装例: [app/collections/page.tsx](app/collections/page.tsx) / [app/exams/[examId]/quiz/page.tsx](app/exams/%5BexamId%5D/quiz/page.tsx) の `collection` モード
<!-- END:collection-rules -->
