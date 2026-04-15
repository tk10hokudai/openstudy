---
name: question-creator
description: >
  OpenStudy プロジェクトで試験問題を作成・追加するときに使うスキル。
  用語集・単語集・SPI・基本情報・TOEIC L&R など、各種試験の seed SQL を
  書くときは必ずこのスキルを参照すること。選択肢の配置ルール、DB 構造、
  SQL パターン、品質基準をすべて網羅している。
  問題作成・seed ファイル編集・新規セクション追加のすべてに適用する。
---

# OpenStudy 作問共通スキル

## 1. 選択肢配置ポリシー（最重要）

選択肢を「シャッフル可能」と「シャッフル不可能」に分類し、それぞれ異なる方針を適用する。

### シャッフル可能な問題
**定義**: `choice_text` に位置的なラベル（`(A)`, `(B)` 等）を含まない問題。
選択肢の表示順を変えても問題・選択肢の意味が変わらないもの。

**正解 (`is_correct=true`) は必ず選択肢の 1 番目に記述する。**

UI 出題時に選択肢をランダム表示するため、SQL では正規順（正解が先頭）を維持する。
こうすることでデータの検証・デバッグが容易になる。

現在の対象: 用語集（section_id 17–39）、単語集（14–16）、SPI（12–13）、基本情報（1–2）

```sql
-- 正しい例（正解が1番目）
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '正解テキスト', NULL, true),
  (currval('questions_id_seq'), '不正解A',       NULL, false),
  (currval('questions_id_seq'), '不正解B',       NULL, false),
  (currval('questions_id_seq'), '不正解C',       NULL, false);
```

### シャッフル不可能な問題
**定義**: `choice_text` に位置的なラベル（`(A)`, `(B)`, `(C)`, `(D)` 等）を使用する問題。
音声・画像・問題文がラベルを参照しているため、選択肢の表示順を変えると矛盾が生じる。

UI はシャッフルしないため、作問時に正解ラベルが **1 バッチ内で各位置に均等分散** するよう配置する。
各試験専用 skill（例: `.claude/skills/toeic/SKILL.md`）で詳細を指定する。

現在の対象: TOEIC L&R 本体（section_id 3–11）

新たにシャッフル不可能な問題形式を追加する場合は、このリストと専用 skill を更新すること。

---

## 2. DB スキーマ

### `questions` テーブル
| カラム | 型 | 説明 |
|---|---|---|
| section_id | int | 出題セクション（master.sql 参照） |
| group_id | int\|null | 問題グループ（TOEIC Part3/4/6/7 のみ） |
| question_number | int | セクション内の連番（1 始まり） |
| question_type | text | `'choice'`（選択）/ `'text_input'`（記述） |
| max_selections | int | 選択可能数（通常 1） |
| score | int | 配点（通常 1） |
| body_text | text | 問題文 |
| explanation | text | 解説文 |
| audio_url | text\|null | 音声 URL（TOEIC リスニングのみ） |
| image_url | text\|null | 画像 URL |
| correct_answers | jsonb\|null | テキスト入力問題の正解（choice 問題は NULL） |

### `choices` テーブル
| カラム | 型 | 説明 |
|---|---|---|
| question_id | int | 親問題 ID |
| choice_text | text | 選択肢テキスト（シャッフル不可問題は `'(A)'` 等のラベル） |
| image_url | text\|null | 選択肢画像 |
| is_correct | bool | 正解フラグ |
| transcript | text\|null | シャッフル不可問題の選択肢実テキスト（音声/画像の内容） |

### `question_groups` テーブル
TOEIC Part3/4/6/7 など複数問が同一素材を共有する場合に使用。
通常の問題では group_id = NULL。

---

## 3. SQL パターン

### パターン A — DO $$ ブロック（用語集 glossary.sql）
section_id 17–39 の問題に使用。RETURNING で qid を取得。

```sql
DO $$
DECLARE
  qid integer;
BEGIN

  INSERT INTO questions (section_id, question_number, question_type, max_selections, score, body_text, explanation)
  VALUES (17, 2, 'choice', 1, 1,
    '問題文をここに記述する。',
    '解説文をここに記述する。'
  ) RETURNING id INTO qid;
  INSERT INTO choices (question_id, choice_text, is_correct) VALUES
    (qid, '正解',  true),
    (qid, '誤答A', false),
    (qid, '誤答B', false),
    (qid, '誤答C', false);

END $$;
```

複数問をまとめて 1 つの DO $$ ブロックに入れることも可能。

### パターン B — 単純 INSERT（vocabulary.sql / spi.sql / base_info.sql）
section_id 1–16 の問題に使用。`currval` でシーケンス ID を参照。

```sql
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 11, 'choice', 1, 1,
   '問題文',
   '解説文',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '正解テキスト', NULL, true),
  (currval('questions_id_seq'), '誤答A',        NULL, false),
  (currval('questions_id_seq'), '誤答B',        NULL, false),
  (currval('questions_id_seq'), '誤答C',        NULL, false);
```

### パターン C — ラベル形式（toeic.sql などシャッフル不可問題）
choice_text にラベル `(A)`〜`(D)` を記述し、実テキストは transcript カラムへ。

```sql
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, true,  '正解の英文テキスト'),
  (currval('questions_id_seq'), '(B)', NULL, false, '誤答B の英文テキスト'),
  (currval('questions_id_seq'), '(C)', NULL, false, '誤答C の英文テキスト'),
  (currval('questions_id_seq'), '(D)', NULL, false, '誤答D の英文テキスト');
```

---

## 4. 作問品質基準

### 全試験共通
- **問題文 (body_text)**: 明確で一意に解釈できる文章。曖昧さを排除する。
- **解説 (explanation)**: 正解の根拠と、主要な誤答が誤りである理由を含める。
- **誤答（ディストラクタ）**:
  - 実力不足なら間違えるが、知識があれば確実に排除できる難易度を設定する。
  - 正解と同じカテゴリ・分野から選ぶ（例: 正解がアルゴリズム用語なら誤答も同分野の用語）。
  - すべての誤答が明確に誤りであること（複数正解にならないよう注意）。
- **重複チェック**: 同一 section 内で question_number が重複しないこと。
  追加前に既存の最大 question_number を確認する。
- **question_number の連番**: セクション内で欠番が生じないよう連続した番号を使用する。

### 語彙問題（単語集 section_id 14–16）
- `choice_text` は**日本語訳を 1 語（または最小フレーズ）のみ**記述する。
  例: ○ `「確実にする」`　× `「確実にする・保証する」`
- 複数訳を並べると正解が自明になるため禁止。
- body_text に英単語・フレーズ、explanation に用例（英文 + 日本語訳）を含める。

### 用語問題（用語集 section_id 17–39）
- body_text に用語の説明・定義を記述し、正解欄に用語名を記述する形式。
- 誤答には同カテゴリの類似用語を使用する。

---

## 5. バッチ作成時のワークフロー

1. **既存の最大 question_number を確認**する（ファイル末尾を読む）。
2. 対象セクションの**専用 skill** を参照して形式・難易度・出題比率を確認する。
3. 問題と選択肢を作成する:
   - シャッフル可能: 正解を**1 番目**に配置する。
   - シャッフル不可能: 専用 skill の正解分散ロジックに従い配置する。
4. 作成後、以下を**自己検査**する:
   - [ ] シャッフル可能問題: 正解が各問題の 1 番目にあるか
   - [ ] シャッフル不可能問題: 正解ラベルがバッチ内で均等分散しているか
   - [ ] question_number が連番になっているか
   - [ ] 誤答に複数正解がないか
   - [ ] 解説が正解の根拠を含んでいるか
   - [ ] 語彙問題の choice_text が単一訳になっているか

---

## 6. 専用 skill へのポインタ

各試験固有のルール（出題カテゴリ、難易度分布、問題パターン、正解分散ロジックなど）は
それぞれの専用 skill に記述する:

| 試験 | skill パス | 状態 |
|---|---|---|
| TOEIC L&R 本体 | `.claude/skills/toeic/SKILL.md` | 未作成 |
| TOEIC L&R -単語集- | `.claude/skills/vocabulary/SKILL.md` | 作成済み |
| SPI | `.claude/skills/spi/SKILL.md` | 未作成 |
| 基本情報技術者試験 | `.claude/skills/base-info/SKILL.md` | 作成済み |
| 基本情報 -用語集- | `.claude/skills/glossary/SKILL.md` | 作成済み |

専用 skill が存在しない場合は、このスキルの基準のみで作問を行い、
作問後に専用 skill の作成を提案する。

---

## 7. 専用 skill の作成手順

新しい試験・資格の専用 skill を作成する際は、以下のプロセスに従う。

### ステップ 1 — 試験情報の調査

**WebSearch/WebFetch を使って以下を収集する:**

```
調査項目チェックリスト:
[ ] 試験の正式名称・主催団体・公式サイト URL
[ ] 試験の構成（科目数・問題数・試験時間・合格基準）
[ ] 問題形式の種類（四肢択一・多肢選択・記述・穴埋め・並べ替えなど）
[ ] 出題カテゴリ一覧と各カテゴリの出題比率（%）
[ ] 難易度レベルの分布（易/普通/難 の比率）
[ ] シャッフル可否（選択肢にラベルがあるか否か）
[ ] 公式サンプル問題・過去問題の有無と URL
[ ] 問題文・選択肢の書き方の慣習（言語・形式・長さ）
[ ] 特有のルール（計算問題・コード問題・リスニング など）
```

調査は**公式サイト・公式サンプル問題を最優先**とし、
信頼性の低い情報源は補足に留める。

### ステップ 2 — skill ファイルの作成

パス: `.claude/skills/{試験識別子}/SKILL.md`

**必須セクション:**

```markdown
---
name: {試験識別子}-question-creator
description: >
  {試験名} の問題を作成するときに使うスキル。（トリガー条件を詳述）
---

# {試験名} 作問スキル

共通ルールは `.claude/skills/question-creator/SKILL.md` を先に参照すること。

## 1. 試験概要
（正式名称・主催・section_id 対応・seed ファイル名・シャッフル可否）

## 2. 出題カテゴリと比率
（カテゴリ一覧と % 表、出題数目安）

## 3. 問題形式の仕様
（各形式の書き方・特有のフォーマット・DB カラムの使い方）

## 4. 問題作成手順
（この試験固有の作成フロー・自己検査チェックリスト）

## 5. SQL テンプレート
（この試験で使う INSERT 文のひな形）

## 6. よくある間違いチェックリスト
（この試験固有の落とし穴と正しい形）

## 7. フィードバック履歴
（ユーザーからの指摘・改善記録。下記「フィードバック反映手順」参照）
```

### ステップ 3 — 共通 skill のポインタ更新

作成後、このファイル（`question-creator/SKILL.md`）の **セクション 6 の表** を
`未作成` → `作成済み` に更新する。

### ステップ 4 — 動作確認

作成した skill を使って 3〜5 問試作し、以下を確認する:
- 問題文・選択肢が実際の試験と同じ形式か
- 出題カテゴリが偏っていないか
- 品質基準（セクション 4）を満たしているか

---

## 8. フィードバック反映手順

ユーザーから作問に関する指摘・改善要望があった場合は、以下の手順で記録する。

### 反映先の判断

| フィードバックの種類 | 反映先 |
|---|---|
| すべての試験に共通するルール | このファイル（共通 skill）のセクション 4 または 5 |
| 特定の試験にのみ適用するルール | 対象の専用 skill |
| 選択肢ルール・SQL 形式など横断的なルール | AGENTS.md にも追記 |

### 専用 skill への記録形式

各専用 skill の末尾にある **「フィードバック履歴」セクション** に追記する:

```markdown
## 7. フィードバック履歴

### YYYY-MM-DD: （フィードバックの概要）
**指摘内容**: ユーザーからの指摘を要約する。
**修正内容**: skill または seed ファイルに加えた変更内容。
**適用範囲**: 今後この skill を使うすべての作問に適用する。
```

### 共通 skill への記録

共通ルールに関わるフィードバックは、セクション 4（作問品質基準）または
セクション 5（バッチ作成ワークフロー）の該当箇所を直接書き換えた上で、
変更の理由をコメント形式で直後に残す:

```markdown
> **変更履歴 YYYY-MM-DD**: （変更理由）
```

### 重要: フィードバックの即時反映

ユーザーから指摘を受けたら、その会話内で skill を更新する。
「次回から気をつける」ではなく、**ファイルに書いて初めて反映されたとみなす**。
