-- ============================================
-- 試験マスター・セクション構成
-- ID は固定値（問題ファイルから section_id として参照されるため）
-- 試験や分野を追加するときはここに追記する
-- ============================================

INSERT INTO exams OVERRIDING SYSTEM VALUE VALUES
  (1, '基本情報技術者試験', 'IT系',  '情報処理推進機構(IPA)が実施する国家試験。ITエンジニアの基礎知識を問う。', now()),
  (2, 'TOEIC L&R',             '語学系', '英語のリスニング・リーディング能力を測定する国際的な試験。',               now()),
  (3, 'SPI試験',               '就職',   '就職活動で広く使用される適性検査。言語・非言語の2分野で構成される。',       now()),
  (4, 'TOEIC L&R【単語集】',          '語学系', 'TOEICに頻出の英単語を初級・中級・上級の3レベルに分類した単語練習集。',    now()),
  (5, '基本情報技術者試験【用語集】', 'IT系', '基本情報技術者試験に頻出のIT用語を分野別に分類した用語練習集。',             now());

-- 列順: (id, exam_id, parent_section_id, title, order_index, pass_threshold, question_count, shuffle_choices)
-- question_count = 本番の試験で出題される問題数（表示用）。NULL のセクションは分野選択画面に表示されない
-- shuffle_choices = 選択肢をランダム表示するか否か（TOEIC L&R 本体は FALSE）
INSERT INTO exam_sections OVERRIDING SYSTEM VALUE VALUES
  -- 基本情報技術者試験
  (1,  1, NULL, '科目A',              1, NULL, 60,   TRUE),
  (2,  1, NULL, '科目B',              2, NULL, 20,   TRUE),

  -- TOEIC L&R（Listening / Reading は親セクション、question_count=NULL で非表示）
  -- 選択肢に (A)〜(D) ラベルを使用するためシャッフル不可
  (3,  2, NULL, 'Listening',          1, NULL, NULL, FALSE),
  (4,  2, 3,    'Part 1 写真描写',    1, NULL, 6,    FALSE),
  (5,  2, 3,    'Part 2 応答問題',    2, NULL, 25,   FALSE),
  (6,  2, 3,    'Part 3 会話問題',    3, NULL, 39,   FALSE),
  (7,  2, 3,    'Part 4 説明文問題',  4, NULL, 30,   FALSE),
  (8,  2, NULL, 'Reading',            2, NULL, NULL, FALSE),
  (9,  2, 8,    'Part 5 短文穴埋め',  1, NULL, 30,   FALSE),
  (10, 2, 8,    'Part 6 長文穴埋め',  2, NULL, 16,   FALSE),
  (11, 2, 8,    'Part 7 読解問題',    3, NULL, 54,   FALSE),

  -- SPI試験
  (12, 3, NULL, '言語',               1, NULL, 40,   TRUE),
  (13, 3, NULL, '非言語',             2, NULL, 30,   TRUE),

  -- TOEIC L&R -単語集-
  (14, 4, NULL, '初級',                         1, NULL, 400, TRUE),
  (15, 4, NULL, '中級',                         2, NULL, 300, TRUE),
  (16, 4, NULL, '上級',                         3, NULL, 300, TRUE),

  -- 基本情報技術者試験 -用語集-
  (17, 5, NULL, '基礎理論',                     1,  NULL, 212, TRUE),
  (18, 5, NULL, 'アルゴリズムとプログラミング', 2,  NULL, 146, TRUE),
  (19, 5, NULL, 'コンピュータ構成要素',         3,  NULL, 189, TRUE),
  (20, 5, NULL, 'システム構成要素',             4,  NULL,  89, TRUE),
  (21, 5, NULL, 'ソフトウェア',                 5,  NULL, 174, TRUE),
  (22, 5, NULL, 'ハードウェア',                 6,  NULL,  22, TRUE),
  (23, 5, NULL, 'ユーザーインタフェース',       7,  NULL,  75, TRUE),
  (24, 5, NULL, '情報メディア',                 8,  NULL,  59, TRUE),
  (25, 5, NULL, 'データベース',                 9,  NULL, 139, TRUE),
  (26, 5, NULL, 'ネットワーク',                 10, NULL, 205, TRUE),
  (27, 5, NULL, 'セキュリティ',                 11, NULL, 406, TRUE),
  (28, 5, NULL, 'システム開発技術',             12, NULL, 372, TRUE),
  (29, 5, NULL, 'ソフトウェア開発管理技術',     13, NULL,  90, TRUE),
  (30, 5, NULL, 'プロジェクトマネジメント',     14, NULL, 159, TRUE),
  (31, 5, NULL, 'サービスマネジメント',         15, NULL, 177, TRUE),
  (32, 5, NULL, 'システム監査',                 16, NULL,  65, TRUE),
  (33, 5, NULL, 'システム戦略',                 17, NULL,  96, TRUE),
  (34, 5, NULL, 'システム企画',                 18, NULL,  45, TRUE),
  (35, 5, NULL, '経営戦略マネジメント',         19, NULL, 115, TRUE),
  (36, 5, NULL, '技術戦略マネジメント',         20, NULL,  40, TRUE),
  (37, 5, NULL, 'ビジネスインダストリ',         21, NULL, 178, TRUE),
  (38, 5, NULL, '企業活動',                     22, NULL, 247, TRUE),
  (39, 5, NULL, '法務',                         23, NULL, 216, TRUE);

-- OVERRIDING SYSTEM VALUE で挿入したテーブルのシーケンスをリセット
-- （questions / choices / question_groups は自動採番のためリセット不要）
SELECT setval(pg_get_serial_sequence('exams',         'id'), (SELECT MAX(id) FROM exams));
SELECT setval(pg_get_serial_sequence('exam_sections', 'id'), (SELECT MAX(id) FROM exam_sections));
