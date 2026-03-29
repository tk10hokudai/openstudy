-- ============================================
-- OpenStudy Phase 2: シードデータ
-- 全5試験のテストデータ
-- ============================================

-- OVERRIDING SYSTEM VALUE で ID を明示的に指定する

-- ============================================
-- 1. 試験マスター
-- ============================================
INSERT INTO exams OVERRIDING SYSTEM VALUE VALUES
  (1, '基本情報技術者試験', 'IT系', '情報処理推進機構(IPA)が実施する国家試験。ITエンジニアの基礎知識を問う。', now()),
  (2, '共通テスト -国語', '大学入試', '大学入学共通テストの国語科目。現代文・古文・漢文で構成される。', now()),
  (3, '共通テスト -数学', '大学入試', '大学入学共通テストの数学科目。穴埋め形式で解答する。', now()),
  (4, 'SPI試験', '就職', '就職活動で広く使用される適性検査。言語・非言語の2分野で構成される。', now()),
  (5, 'TOEIC L&R', '語学系', '英語のリスニング・リーディング能力を測定する国際的な試験。', now());

-- ============================================
-- 2. セクション（階層構造）
-- ============================================
INSERT INTO exam_sections OVERRIDING SYSTEM VALUE VALUES
  -- 基本情報技術者試験
  (1, 1, NULL, '科目A', 1, NULL),
  (2, 1, NULL, '科目B', 2, NULL),
  -- 共通テスト 国語
  (3, 2, NULL, '現代文', 1, NULL),
  (4, 2, NULL, '古文', 2, NULL),
  -- 共通テスト 数学
  (5, 3, NULL, '数学I', 1, NULL),
  (6, 3, NULL, '数学A', 2, NULL),
  -- SPI
  (7, 4, NULL, '言語', 1, NULL),
  (8, 4, NULL, '非言語', 2, NULL),
  -- TOEIC L&R
  (9,  5, NULL, 'Listening', 1, NULL),
  (10, 5, NULL, 'Reading',   2, NULL),
  (11, 5, 9,   'Part 1 写真描写', 1, NULL),
  (12, 5, 9,   'Part 2 応答',     2, NULL),
  (13, 5, 9,   'Part 3 会話',     3, NULL),
  (14, 5, 10,  'Part 5 短文穴埋め', 1, NULL);

-- ============================================
-- 3. 問題グループ
-- ============================================

-- 共通テスト 国語：現代文の長文読解
INSERT INTO question_groups OVERRIDING SYSTEM VALUE VALUES
  (1, 3,
   '次の文章を読んで、後の問いに答えよ。

　現代社会において、情報技術の発展は人々のコミュニケーションのあり方を根本的に変えつつある。かつて手紙や電話が主要な通信手段であった時代には、相手に言葉を届けるまでに一定の時間的・空間的な距離が存在していた。その距離こそが、発信者に熟考の機会を与え、受信者には心の準備をする余裕をもたらしていたと言えるだろう。
　ところが、電子メールやSNSの普及により、その距離は事実上消滅した。私たちは今、思いついたことをほぼ即座に相手に届けることができる。この即時性は利便性をもたらす一方で、感情的な発言や不用意な表現が増加する要因ともなっている。
　コミュニケーションにおける「間」の喪失は、単に技術的な変化にとどまらず、人間関係の質そのものに影響を及ぼしているのではないだろうか。',
   NULL, NULL, NULL, NULL);

-- TOEIC Part 3：会話のグループ問題
INSERT INTO question_groups OVERRIDING SYSTEM VALUE VALUES
  (2, 13,
   'Questions 1-3 refer to the following conversation.',
   '/audio/toeic_part3_conv1.mp3', NULL, NULL, NULL);

-- ============================================
-- 4. 基本情報技術者試験（科目A）: 10問 choice + 2問 multi-select
-- ============================================

-- Q1〜Q10: 既存の単一選択問題
INSERT INTO questions OVERRIDING SYSTEM VALUE VALUES
  (1,  1, NULL, 1,  'choice', 1, 1, '8ビットの2進数 01011010 を10進数に変換したものはどれか。', '各桁の重みを計算する。0+64+0+16+8+0+2+0 = 90', NULL, NULL, NULL),
  (2,  1, NULL, 2,  'choice', 1, 1, 'A = 1, B = 0 のとき、A AND B の結果はどれか。', 'AND演算は両方が1のときのみ1を返す。A=1, B=0 なので結果は0。', NULL, NULL, NULL),
  (3,  1, NULL, 3,  'choice', 1, 1, 'OSの主な役割として、最も適切なものはどれか。', 'OSはハードウェアとアプリケーションの間に位置し、資源管理やプロセス管理などを行う。', NULL, NULL, NULL),
  (4,  1, NULL, 4,  'choice', 1, 1, 'RAID1の説明として、正しいものはどれか。', 'RAID1はミラーリングとも呼ばれ、同じデータを2台のディスクに書き込むことで信頼性を高める。', NULL, NULL, NULL),
  (5,  1, NULL, 5,  'choice', 1, 1, 'TCP/IPのトランスポート層のプロトコルはどれか。', 'TCPとUDPはトランスポート層のプロトコルである。HTTPはアプリケーション層、IPはネットワーク層。', NULL, NULL, NULL),
  (6,  1, NULL, 6,  'choice', 1, 1, 'SQLにおいて、テーブルからデータを取得するために使用する文はどれか。', 'SELECTはデータの取得、INSERTは挿入、UPDATEは更新、DELETEは削除に使用する。', NULL, NULL, NULL),
  (7,  1, NULL, 7,  'choice', 1, 1, '公開鍵暗号方式の説明として、正しいものはどれか。', '公開鍵暗号方式では、暗号化と復号に異なる鍵（公開鍵と秘密鍵）を使用する。', NULL, NULL, NULL),
  (8,  1, NULL, 8,  'choice', 1, 1, 'ウォーターフォールモデルの特徴として、最も適切なものはどれか。', 'ウォーターフォールモデルは、各工程を順番に進め、原則として前の工程には戻らない開発手法である。', NULL, NULL, NULL),
  (9,  1, NULL, 9,  'choice', 1, 1, 'IPv4アドレスのビット数はどれか。', 'IPv4アドレスは32ビット（4オクテット）で構成される。IPv6は128ビット。', NULL, NULL, NULL),
  (10, 1, NULL, 10, 'choice', 1, 1, 'データ構造のうち、後に入れたデータを先に取り出す（LIFO）方式のものはどれか。', 'スタックはLIFO（Last In, First Out）方式。キューはFIFO（First In, First Out）方式。', NULL, NULL, NULL);

-- Q11〜Q12: 複数選択問題
INSERT INTO questions OVERRIDING SYSTEM VALUE VALUES
  (11, 1, NULL, 11, 'choice', 2, 2,
   '次のうち、オブジェクト指向の特徴として正しいものを2つ選べ。',
   'カプセル化はデータと操作をまとめて外部から隠蔽すること。ポリモーフィズムは同じインタフェースで異なる動作を実現すること。正規化はRDBの設計手法、FIFOはキューの特性であり、オブジェクト指向の特徴ではない。',
   NULL, NULL, NULL),
  (12, 1, NULL, 12, 'choice', 2, 2,
   '情報セキュリティの3要素のうち、正しいものを2つ選べ。',
   '情報セキュリティの3要素（CIA）は、機密性（Confidentiality）、完全性（Integrity）、可用性（Availability）である。冗長性と効率性は3要素に含まれない。',
   NULL, NULL, NULL);

-- 基本情報の選択肢
INSERT INTO choices OVERRIDING SYSTEM VALUE VALUES
  -- Q1
  (1,  1,  '82',  NULL, false),
  (2,  1,  '86',  NULL, false),
  (3,  1,  '90',  NULL, true),
  (4,  1,  '94',  NULL, false),
  -- Q2
  (5,  2,  '0',   NULL, true),
  (6,  2,  '1',   NULL, false),
  (7,  2,  'A',   NULL, false),
  (8,  2,  'B',   NULL, false),
  -- Q3
  (9,  3,  'Webページの作成を支援する',                    NULL, false),
  (10, 3,  'ハードウェア資源の管理とプログラムの実行制御を行う', NULL, true),
  (11, 3,  'ウイルスの検出と駆除を行う',                    NULL, false),
  (12, 3,  'データベースの設計を支援する',                   NULL, false),
  -- Q4
  (13, 4,  'データを分割して複数のディスクに書き込む',          NULL, false),
  (14, 4,  '同じデータを2台のディスクに書き込む',              NULL, true),
  (15, 4,  'パリティ情報を付加してデータを分散する',            NULL, false),
  (16, 4,  'ディスクを連結して1台の大きなディスクとして使う',     NULL, false),
  -- Q5
  (17, 5,  'HTTP',  NULL, false),
  (18, 5,  'IP',    NULL, false),
  (19, 5,  'TCP',   NULL, true),
  (20, 5,  'SMTP',  NULL, false),
  -- Q6
  (21, 6,  'INSERT',  NULL, false),
  (22, 6,  'UPDATE',  NULL, false),
  (23, 6,  'DELETE',  NULL, false),
  (24, 6,  'SELECT',  NULL, true),
  -- Q7
  (25, 7,  '暗号化と復号に同じ鍵を使用する',                          NULL, false),
  (26, 7,  '暗号化と復号に異なる鍵を使用する',                         NULL, true),
  (27, 7,  '鍵を使用せずにデータを暗号化する',                         NULL, false),
  (28, 7,  '送信者と受信者が事前に同じ鍵を共有する必要がある',            NULL, false),
  -- Q8
  (29, 8,  '短い反復サイクルで開発を進める',                  NULL, false),
  (30, 8,  '各工程を順番に進め、原則として前の工程に戻らない',   NULL, true),
  (31, 8,  'プロトタイプを繰り返し作成して要件を確認する',       NULL, false),
  (32, 8,  'ペアプログラミングを必須とする',                   NULL, false),
  -- Q9
  (33, 9,  '8ビット',   NULL, false),
  (34, 9,  '16ビット',  NULL, false),
  (35, 9,  '32ビット',  NULL, true),
  (36, 9,  '64ビット',  NULL, false),
  -- Q10
  (37, 10, 'キュー',    NULL, false),
  (38, 10, 'スタック',  NULL, true),
  (39, 10, 'リスト',    NULL, false),
  (40, 10, 'ヒープ',    NULL, false),
  -- Q11 (複数選択)
  (41, 11, 'カプセル化',       NULL, true),
  (42, 11, '正規化',           NULL, false),
  (43, 11, 'ポリモーフィズム', NULL, true),
  (44, 11, 'FIFO',             NULL, false),
  -- Q12 (複数選択)
  (45, 12, '機密性',   NULL, true),
  (46, 12, '冗長性',   NULL, false),
  (47, 12, '完全性',   NULL, true),
  (48, 12, '効率性',   NULL, false);

-- ============================================
-- 5. 共通テスト 国語（現代文）: グループ問題 3問
-- ============================================
INSERT INTO questions OVERRIDING SYSTEM VALUE VALUES
  (13, NULL, 1, 1, 'choice', 1, 2,
   '筆者が「その距離」と述べているものとして最も適切なものはどれか。',
   '第一段落で「相手に言葉を届けるまでに一定の時間的・空間的な距離が存在していた」と述べており、通信にかかる時間と空間の隔たりを指している。',
   NULL, NULL, NULL),
  (14, NULL, 1, 2, 'choice', 1, 2,
   '筆者の主張として最も適切なものはどれか。',
   '筆者は即時性の利便性を認めつつも、コミュニケーションにおける「間」の喪失が人間関係の質に影響を及ぼしていると主張している。',
   NULL, NULL, NULL),
  (15, NULL, 1, 3, 'choice', 1, 2,
   '本文の構成について、最も適切な説明はどれか。',
   '第一段落で過去の状況を述べ、第二段落で現在の変化を示し、第三段落で問題提起を行う構成になっている。',
   NULL, NULL, NULL);

INSERT INTO choices OVERRIDING SYSTEM VALUE VALUES
  -- Q13
  (49, 13, '電子メールの送信時間', NULL, false),
  (50, 13, '通信にかかる時間的・空間的な隔たり', NULL, true),
  (51, 13, '手紙の配達日数', NULL, false),
  (52, 13, '人間関係における心理的な距離', NULL, false),
  -- Q14
  (53, 14, '情報技術の発展を全面的に否定すべきである', NULL, false),
  (54, 14, '即時性の利便性は「間」の喪失というコストを伴っている', NULL, true),
  (55, 14, 'SNSの普及によりコミュニケーションは改善された', NULL, false),
  (56, 14, '手紙や電話に回帰すべきである', NULL, false),
  -- Q15
  (57, 15, '具体例を列挙し、最後に反論を述べている', NULL, false),
  (58, 15, '過去と現在を対比した上で、問題提起を行っている', NULL, true),
  (59, 15, '仮説を立て、実験結果で検証している', NULL, false),
  (60, 15, '複数の立場を紹介し、中立的にまとめている', NULL, false);

-- ============================================
-- 6. 共通テスト 数学（数学I）: 穴埋め問題 3問
-- ============================================
INSERT INTO questions OVERRIDING SYSTEM VALUE VALUES
  (16, 5, NULL, 1, 'multi_blanks', 1, 4,
   '2次方程式 x² + [ア]x + [イウ] = 0 の解が x = 3, x = -5 であるとき、[ア] と [イウ] に当てはまる値を求めよ。',
   '(x-3)(x+5) = x² + 2x - 15 を展開すると、ア = 2, イウ = -15 となる。',
   NULL, NULL, '{"ア": "2", "イウ": "-15"}'),
  (17, 5, NULL, 2, 'multi_blanks', 1, 4,
   'sin30° = [ア]/[イ] であり、cos60° = [ウ]/[エ] である。',
   'sin30° = 1/2, cos60° = 1/2 である。三角比の基本値を覚えておくこと。',
   NULL, NULL, '{"ア": "1", "イ": "2", "ウ": "1", "エ": "2"}'),
  (18, 5, NULL, 3, 'multi_blanks', 1, 3,
   'データ 3, 5, 7, 9, 11 の平均値は [ア] であり、分散は [イ] である。',
   '平均値 = (3+5+7+9+11)/5 = 35/5 = 7。分散 = ((3-7)²+(5-7)²+(7-7)²+(9-7)²+(11-7)²)/5 = (16+4+0+4+16)/5 = 40/5 = 8。',
   NULL, NULL, '{"ア": "7", "イ": "8"}');

-- 穴埋め問題は choices なし

-- ============================================
-- 7. SPI試験
-- ============================================

-- 言語（choice）
INSERT INTO questions OVERRIDING SYSTEM VALUE VALUES
  (19, 7, NULL, 1, 'choice', 1, 1,
   '次の語句の意味として最も適切なものはどれか。「忸怩（じくじ）」',
   '「忸怩」は、自分の行為を恥ずかしく思うさまを意味する。',
   NULL, NULL, NULL),
  (20, 7, NULL, 2, 'choice', 1, 1,
   '次の文の空欄に入る語として最も適切なものはどれか。「彼の提案は（　）的で、実現可能性が高いと評価された。」',
   '「具体的」が最も適切。「抽象的」は反意語、「感情的」「衝動的」は文脈に合わない。',
   NULL, NULL, NULL);

-- 非言語（text）
INSERT INTO questions OVERRIDING SYSTEM VALUE VALUES
  (21, 8, NULL, 3, 'text', 1, 1,
   'ある商品を定価の2割引きで販売したところ、売価は1600円であった。この商品の定価はいくらか。（単位：円）',
   '定価 × 0.8 = 1600 → 定価 = 1600 ÷ 0.8 = 2000円',
   NULL, NULL, '{"answer": "2000"}'),
  (22, 8, NULL, 4, 'text', 1, 1,
   'A地点からB地点まで時速60kmで走ると3時間かかる。この距離を時速90kmで走ると何時間かかるか。（単位：時間）',
   '距離 = 60 × 3 = 180km。時間 = 180 ÷ 90 = 2時間',
   NULL, NULL, '{"answer": "2"}');

INSERT INTO choices OVERRIDING SYSTEM VALUE VALUES
  -- Q19
  (61, 19, '自分の行為を恥ずかしく思うさま', NULL, true),
  (62, 19, '他人を激しく非難するさま',       NULL, false),
  (63, 19, '物事に無関心であるさま',         NULL, false),
  (64, 19, '自信に満ちあふれているさま',     NULL, false),
  -- Q20
  (65, 20, '抽象',   NULL, false),
  (66, 20, '具体',   NULL, true),
  (67, 20, '感情',   NULL, false),
  (68, 20, '衝動',   NULL, false);

-- Q21, Q22 は text 型なので choices なし

-- ============================================
-- 8. TOEIC L&R
-- ============================================

-- Part 1: 写真描写（リスニング + 選択）
INSERT INTO questions OVERRIDING SYSTEM VALUE VALUES
  (23, 11, NULL, 1, 'choice', 1, 1,
   'Look at the picture and choose the statement that best describes it.',
   'The correct answer is (B). The image shows a woman working at a computer, specifically typing on a keyboard.',
   '/audio/toeic_part1_q1.mp3', '/images/toeic_part1_q1.jpg', NULL),
  (24, 11, NULL, 2, 'choice', 1, 1,
   'Look at the picture and choose the statement that best describes it.',
   'The correct answer is (C). The image shows people sitting around a table in a meeting room.',
   '/audio/toeic_part1_q2.mp3', '/images/toeic_part1_q2.jpg', NULL);

INSERT INTO choices OVERRIDING SYSTEM VALUE VALUES
  -- Q23
  (69, 23, '(A) The woman is reading a book.', NULL, false),
  (70, 23, '(B) The woman is typing on a keyboard.', NULL, true),
  (71, 23, '(C) The woman is talking on the phone.', NULL, false),
  (72, 23, '(D) The woman is writing on a whiteboard.', NULL, false),
  -- Q24
  (73, 24, '(A) They are leaving the building.', NULL, false),
  (74, 24, '(B) They are cleaning the room.', NULL, false),
  (75, 24, '(C) They are sitting around a table.', NULL, true),
  (76, 24, '(D) They are standing in a line.', NULL, false);

-- Part 3: 会話のグループ問題（3問セット）
INSERT INTO questions OVERRIDING SYSTEM VALUE VALUES
  (25, NULL, 2, 1, 'choice', 1, 1,
   'What is the woman''s problem?',
   'At the beginning of the conversation, the woman reports that the printer is not working.',
   NULL, NULL, NULL),
  (26, NULL, 2, 2, 'choice', 1, 1,
   'What does the man suggest?',
   'The man suggests contacting IT support to fix the issue.',
   NULL, NULL, NULL),
  (27, NULL, 2, 3, 'choice', 1, 1,
   'What will the woman probably do next?',
   'The woman agrees with the man''s suggestion, so she will most likely call IT support.',
   NULL, NULL, NULL);

INSERT INTO choices OVERRIDING SYSTEM VALUE VALUES
  -- Q25
  (77, 25, '(A) Her computer crashed.', NULL, false),
  (78, 25, '(B) The printer is not working.', NULL, true),
  (79, 25, '(C) She lost her files.', NULL, false),
  (80, 25, '(D) The meeting was canceled.', NULL, false),
  -- Q26
  (81, 26, '(A) Buying a new printer', NULL, false),
  (82, 26, '(B) Contacting IT support', NULL, true),
  (83, 26, '(C) Using another office', NULL, false),
  (84, 26, '(D) Restarting the computer', NULL, false),
  -- Q27
  (85, 27, '(A) Go to a meeting', NULL, false),
  (86, 27, '(B) Print the document at home', NULL, false),
  (87, 27, '(C) Call IT support', NULL, true),
  (88, 27, '(D) Ask her manager', NULL, false);

-- Part 5: 短文穴埋め（Reading）
INSERT INTO questions OVERRIDING SYSTEM VALUE VALUES
  (28, 14, NULL, 1, 'choice', 1, 1,
   'All employees are required to submit their reports ------- the end of each month.',
   'by the end of ～ は「～の終わりまでに」という意味の定型表現。前置詞 by が正解。',
   NULL, NULL, NULL),
  (29, 14, NULL, 2, 'choice', 1, 1,
   'The new marketing strategy has ------- increased sales in the Asian market.',
   'significantly は「大幅に」という意味の副詞。動詞 increased を修飾する副詞が必要。',
   NULL, NULL, NULL);

INSERT INTO choices OVERRIDING SYSTEM VALUE VALUES
  -- Q28
  (89, 28, '(A) at',    NULL, false),
  (90, 28, '(B) by',    NULL, true),
  (91, 28, '(C) on',    NULL, false),
  (92, 28, '(D) from',  NULL, false),
  -- Q29
  (93, 29, '(A) significance',   NULL, false),
  (94, 29, '(B) significant',    NULL, false),
  (95, 29, '(C) significantly',  NULL, true),
  (96, 29, '(D) signify',        NULL, false);

-- ============================================
-- 9. シーケンスのリセット
-- ============================================
SELECT setval(pg_get_serial_sequence('exams', 'id'), (SELECT MAX(id) FROM exams));
SELECT setval(pg_get_serial_sequence('exam_sections', 'id'), (SELECT MAX(id) FROM exam_sections));
SELECT setval(pg_get_serial_sequence('question_groups', 'id'), (SELECT MAX(id) FROM question_groups));
SELECT setval(pg_get_serial_sequence('questions', 'id'), (SELECT MAX(id) FROM questions));
SELECT setval(pg_get_serial_sequence('choices', 'id'), (SELECT MAX(id) FROM choices));
