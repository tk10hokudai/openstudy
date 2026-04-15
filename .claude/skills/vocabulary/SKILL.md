---
name: vocabulary-question-creator
description: >
  TOEIC L&R -単語集- の問題を作成するときに使うスキル。
  vocabulary.sql（section_id 14〜16）へ問題を追加するとき、
  body_text・explanation・選択肢を書くときは必ずこのスキルを参照すること。
  英単語/フレーズ → 日本語訳を選ぶ形式・SQL パターン・ディストラクタ選定基準を網羅している。
---

# TOEIC L&R -単語集- 作問スキル

共通ルールは `.claude/skills/question-creator/SKILL.md` を先に参照すること。
このスキルはその試験固有の上書きルールと追加仕様を定める。

---

## 1. 試験概要

| 項目 | 内容 |
|---|---|
| 正式名称 | TOEIC L&R -単語集-（exam_id=4） |
| seed ファイル | `supabase/seeds/vocabulary.sql` |
| SQL パターン | パターン B（単純 INSERT + currval） |
| 問題形式 | 4択単一選択（シャッフル可能）→ 正解を **1番目** に記述 |
| 出題方向 | **英単語/フレーズ → 正しい日本語訳を選ぶ** |

---

## 2. セクション一覧と目標問題数

| section_id | レベル | 目標問題数 | 現在の問題数 |
|---|---|---|---|
| 14 | 初級 | 400 | 10 |
| 15 | 中級 | 300 | 10 |
| 16 | 上級 | 300 | 10 |

問題を追加するときは、**既存の question_number の最大値を確認してから連番で追加**する。

### レベル定義

| レベル | 想定スコア帯 | 語彙の特徴 |
|---|---|---|
| 初級（section_id=14） | TOEIC 〜600点相当 | 日常会話・基礎ビジネスで頻出の基本語。中学〜高校基礎レベル相当 |
| 中級（section_id=15） | TOEIC 600〜800点相当 | ビジネスシーン（会議・メール・人事・経理）で頻出の語彙 |
| 上級（section_id=16） | TOEIC 800点〜相当 | 専門的・フォーマルなビジネス語彙。TOEIC Part 7で出る難語 |

---

## 3. 問題形式の仕様

### 3-1. body_text（問題文）の書き方

**ルール：英単語またはフレーズのみを記述する。**
説明文・句読点・品詞注記は一切入れない。

```
'available'          ← 単語のみ（引用符なし・品詞注記なし）
'look forward to'    ← フレーズはそのまま
'in advance'         ← 副詞句もそのまま
```

**body_text の書き方チェック:**
- [ ] 英単語/フレーズのみ（日本語なし）
- [ ] 品詞注記（名詞、動詞 など）を入れない
- [ ] 冠詞・前置詞付きフレーズはフレーズ全体を記述（例: `'in charge of'`）

### 3-2. explanation（解説）の書き方

**形式: 英文用例 + 括弧内に日本語訳**

```
'Sales have been declining lately, so we need to change our strategy.（最近売上が落ちているので、戦略を変える必要があります。）'
```

**必須要素:**
1. TOEIC のビジネス場面に沿った自然な英文用例（1文）
2. 括弧 `（）` 内に日本語訳

**explanation 作成チェック:**
- [ ] 英文が自然なビジネス英語か
- [ ] body_text の単語/フレーズが用例中で正しく使われているか
- [ ] 括弧は全角 `（）` を使う
- [ ] `correct_answers` カラムは NULL のまま（choice 問題のため）

### 3-3. 選択肢（choices）の書き方

| 項目 | ルール |
|---|---|
| 正解 | **必ず1番目**に記述（シャッフル可能、UI側でランダム表示） |
| 誤答数 | 3つ（計4択） |
| choice_text | **日本語訳を1語（または最小フレーズ）のみ** |
| 複数訳の禁止 | `「確実にする・保証する」` のように複数訳を並べない |
| image_url | 常に NULL |

**choice_text の具体例:**

```
○ '利用できる'
○ '確実にする'
○ '提出する'
× '利用できる・使える'    ← 複数訳NG
× '提出する（手渡す）'    ← 補足説明NG
```

**ディストラクタ（誤答）の選定基準:**

```
優先順位:
1. 同品詞で意味が近い語  例: 「最近」→「かつて」「今後」「しばしば」
2. 混同されやすいペア    例: 「参照する」→「申し込む」「返却する」「提出する」
3. 同カテゴリの関連語    例: ビジネス行動語ならビジネス行動語で揃える
4. 反意語・対概念        例: 「増加する」→「減少する」「維持する」「変化する」
```

4択全体で「訳を知っていれば確実に選べる」難易度を設定する。
「どれも正解に見える」選択肢群は避ける。

---

## 4. TOEICビジネス語彙の出題カテゴリ

問題を作成するときは、以下のカテゴリのバランスを保つこと。

### 品詞バランス目安（1バッチあたり）

| 品詞 | 目安割合 | 例 |
|---|---|---|
| 動詞 | 約35% | submit, notify, ensure, coordinate |
| 名詞 | 約35% | submission, deadline, conference, invoice |
| 形容詞 | 約20% | eligible, comprehensive, confidential, mandatory |
| 副詞 | 約10% | lately, definitely, promptly, accordingly |

### カテゴリ別頻出語彙

| カテゴリ | 初級語彙例 | 中級語彙例 | 上級語彙例 |
|---|---|---|---|
| ビジネス一般 | meeting, offer, department | agenda, proposal, negotiate | procurement, consortium, delegate |
| 人事・採用 | apply, hire, position | eligible, compensation, probation | remunerate, incumbent, severance |
| 会議・連絡 | refer, confirm, conference | notify, regarding, summarize | convene, adjourn, unanimous |
| 財務・経理 | budget, cost, invoice | expense, reimburse, fiscal | amortize, depreciation, equity |
| 物流・在庫 | order, ship, delivery | inventory, freight, dispatch | consignment, logistics, manifest |
| 施設・設備 | available, equipment, department | facility, renovate, maintenance | premises, retrofit, amenity |
| 顧客・営業 | customer, sales, offer | clientele, revenue, incentive | lucrative, prospective, retention |

---

## 5. 問題作成手順

1. **vocabulary.sql の末尾を確認**し、対象セクションの現在の最大 question_number を確認する。

2. **追加するセクション（14/15/16）と品詞カテゴリを決める**。
   カテゴリ 4 の表でバランスを確認し、少ないカテゴリを優先する。

3. **body_text を作成**する:
   - 英単語またはフレーズのみ記述
   - 品詞注記・説明は入れない

4. **explanation を作成**する:
   - ビジネス場面の自然な英文用例 1文
   - 全角括弧で日本語訳

5. **選択肢を作成**する:
   - 正解の日本語訳を1番目に記述
   - 誤答3つは同品詞・混同されやすい語から選ぶ
   - 各 choice_text は単一訳のみ

6. **自己検査**:
   - [ ] body_text が英単語/フレーズのみか
   - [ ] choice_text が単一訳か（複数訳・補足説明なし）
   - [ ] 正解が1番目に配置されているか
   - [ ] explanation に用例英文と日本語訳（全角括弧）があるか
   - [ ] question_number が連番になっているか（欠番なし）
   - [ ] 誤答が同品詞・近い意味の語か
   - [ ] `image_url` が NULL か、`correct_answers` が NULL か

---

## 6. SQL テンプレート

```sql
-- 初級-{N}: {英単語}
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, N, 'choice', 1, 1,
   '英単語またはフレーズ',
   '英文用例。（日本語訳。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '正解の日本語訳', NULL, true),
  (currval('questions_id_seq'), '誤答A',          NULL, false),
  (currval('questions_id_seq'), '誤答B',          NULL, false),
  (currval('questions_id_seq'), '誤答C',          NULL, false);
```

section_id は対象レベルに合わせて 14（初級）/ 15（中級）/ 16（上級）を使う。
コメント行のプレフィックスも `初級-N` / `中級-N` / `上級-N` に合わせる。

**複数問まとめて記述する場合のコメント形式:**

```sql
-- ----------------------------------------
-- 初級（section_id=14）Q11〜Q20
-- ----------------------------------------

-- 初級-11: submit
INSERT INTO questions ...

-- 初級-12: deadline
INSERT INTO questions ...
```

---

## 7. よくある間違いチェックリスト

| 間違い | 正しい形 |
|---|---|
| `body_text` に品詞注記を入れる（例: `available（形容詞）`） | 英単語/フレーズのみ（例: `available`） |
| `choice_text` に複数訳を並べる（例: `確実にする・保証する`） | 単一訳のみ（例: `確実にする`） |
| `explanation` に単語説明のみ（例: `"available" は形容詞で〜`） | 英文用例 + 全角括弧訳（例: `The item is available.（〜）`） |
| 正解を2〜4番目に配置 | 正解は必ず **1番目** |
| `image_url` カラムを省略して INSERT | `image_url` は NULL で明示的に含める |
| section_id のレベルを間違える | 14=初級 / 15=中級 / 16=上級 を確認してから記述 |
| question_number を確認せず 1 から始める | vocabulary.sql 末尾で対象 section の最大番号を確認してから +1 する |
| `correct_answers` カラムを省略 | choice 問題でも NULL で明示的に含める |

---

## 8. フィードバック履歴

（なし。初版作成時点）
