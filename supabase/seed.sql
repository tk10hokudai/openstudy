-- ============================================
-- OpenStudy 新シードデータ
-- 基本情報 2問 + TOEIC 7問 + SPI 2問 = 計11問
-- ============================================

-- ============================================
-- 1. 試験マスター（3試験）
-- ============================================
INSERT INTO exams OVERRIDING SYSTEM VALUE VALUES
  (1, '基本情報技術者試験', 'IT系', '情報処理推進機構(IPA)が実施する国家試験。ITエンジニアの基礎知識を問う。', now()),
  (2, 'TOEIC L&R', '語学系', '英語のリスニング・リーディング能力を測定する国際的な試験。', now()),
  (3, 'SPI試験', '就職', '就職活動で広く使用される適性検査。言語・非言語の2分野で構成される。', now());

-- ============================================
-- 2. セクション（階層構造 + question_count）
-- ============================================
-- 列順: (id, exam_id, parent_section_id, title, order_index, pass_threshold, question_count)
-- question_count は ALTER TABLE で後から追加されたため pass_threshold の後に来る
INSERT INTO exam_sections OVERRIDING SYSTEM VALUE VALUES
  -- 基本情報技術者試験
  (1, 1, NULL, '科目A', 1, NULL, 60),   -- 本番は60問（サンプルは1問）
  (2, 1, NULL, '科目B', 2, NULL, 20),   -- 本番は20問（サンプルは1問）

  -- TOEIC L&R: Listening（親セクション、question_count=NULL → 分野選択に非表示）
  (3, 2, NULL,  'Listening', 1, NULL, NULL),
  (4, 2, 3,     'Part 1 写真描写',       1, NULL, 6),
  (5, 2, 3,     'Part 2 応答問題',       2, NULL, 25),
  (6, 2, 3,     'Part 3 会話問題',       3, NULL, 39),
  (7, 2, 3,     'Part 4 説明文問題',     4, NULL, 30),
  -- TOEIC L&R: Reading（親セクション、question_count=NULL → 分野選択に非表示）
  (8, 2, NULL,  'Reading',  2, NULL, NULL),
  (9, 2, 8,     'Part 5 短文穴埋め',     1, NULL, 30),
  (10, 2, 8,    'Part 6 長文穴埋め',     2, NULL, 16),
  (11, 2, 8,    'Part 7 読解問題',       3, NULL, 54),

  -- SPI試験
  (12, 3, NULL, '言語',   1, NULL, 40),  -- サンプルは1問
  (13, 3, NULL, '非言語', 2, NULL, 30);  -- サンプルは1問

-- ============================================
-- 3. 問題グループ
-- ============================================

-- TOEIC Part 3: 会話の3問セット
INSERT INTO question_groups OVERRIDING SYSTEM VALUE VALUES
  (1, 6,
   'Questions 1-3 refer to the following conversation.',
   '/audio/toeic_part3_q1.mp3', NULL, NULL, NULL);

-- TOEIC Part 4: 説明文の3問セット
INSERT INTO question_groups OVERRIDING SYSTEM VALUE VALUES
  (2, 7,
   'Questions 1-3 refer to the following talk.',
   '/audio/toeic_part4_q1.mp3', NULL, NULL, NULL);

-- TOEIC Part 6: 長文穴埋め（4問セット）
INSERT INTO question_groups OVERRIDING SYSTEM VALUE VALUES
  (3, 10,
   'Questions 1-4 refer to the following email.

Dear Mr. Tanaka,

Thank you for your interest in our annual conference. We are pleased to confirm that your registration has been __(1)__. The event will take place on March 15 at the Grand Hotel.

Please note that the keynote speech will begin at 9:00 AM. All attendees are __(2)__ to arrive at least 30 minutes early. Light refreshments __(3)__ in the lobby before the opening session.

We look forward to __(4)__ you at the conference.

Best regards,
Sarah Johnson
Conference Coordinator',
   NULL, NULL, NULL, NULL);

-- TOEIC Part 7: 読解問題（2問セット）
INSERT INTO question_groups OVERRIDING SYSTEM VALUE VALUES
  (4, 11,
   'Questions 1-2 refer to the following notice.

OFFICE RENOVATION NOTICE

Starting Monday, October 7, the third floor of the Riverside Office Building will undergo renovations. The work is expected to last approximately three weeks. During this period, employees assigned to the third floor will be temporarily relocated to the second floor.

Please pack your personal belongings by Friday, October 4. Moving boxes will be provided at the reception desk. IT support will be available on Monday morning to help reconnect your equipment.

We apologize for any inconvenience and appreciate your cooperation.

— Facilities Management',
   NULL, NULL, NULL, NULL);

-- ============================================
-- 4. 基本情報技術者試験（2問）
-- ============================================

-- Q1: 科目A（単一選択）
INSERT INTO questions OVERRIDING SYSTEM VALUE VALUES
  (1, 1, NULL, 1, 'choice', 1, 1,
   '関係データベースにおいて、主キーの説明として最も適切なものはどれか。',
   '主キーは、テーブル内の各行（レコード）を一意に識別するための列または列の組み合わせである。NULL値は許容されず、重複も許されない。',
   NULL, NULL, NULL);

INSERT INTO choices OVERRIDING SYSTEM VALUE VALUES
  (1, 1, 'テーブル間の関連を定義するために使用するキー', NULL, false),
  (2, 1, 'テーブル内の各行を一意に識別するためのキー', NULL, true),
  (3, 1, '検索速度を向上させるために設定するキー', NULL, false),
  (4, 1, 'データの暗号化に使用するキー', NULL, false);

-- Q2: 科目B（単一選択・プログラミング系）
INSERT INTO questions OVERRIDING SYSTEM VALUE VALUES
  (2, 2, NULL, 1, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 x の値はいくつになるか。

x ← 0
for i ← 1 to 5
    if i mod 2 = 1
        x ← x + i
    endif
endfor',
   'i=1: 1は奇数なので x=0+1=1。i=2: 偶数なのでスキップ。i=3: 奇数なので x=1+3=4。i=4: 偶数なのでスキップ。i=5: 奇数なので x=4+5=9。',
   NULL, NULL, NULL);

INSERT INTO choices OVERRIDING SYSTEM VALUE VALUES
  (5, 2, '6', NULL, false),
  (6, 2, '9', NULL, true),
  (7, 2, '15', NULL, false),
  (8, 2, '25', NULL, false);

-- ============================================
-- 5. TOEIC L&R（7問：Part 1〜7 各1問）
-- ============================================

-- Part 1: 写真描写（リスニング + 選択）
INSERT INTO questions OVERRIDING SYSTEM VALUE VALUES
  (3, 4, NULL, 1, 'choice', 1, 1,
   'Look at the picture and choose the statement that best describes it.',
   'The correct answer is (B). The image shows a woman working at a computer, specifically typing on a keyboard.',
   '/audio/toeic_part1_q1.mp3', '/images/toeic_part1_q1.jpg', NULL);

INSERT INTO choices OVERRIDING SYSTEM VALUE VALUES
  (9,  3, '(A) The woman is reading a book.', NULL, false),
  (10, 3, '(B) The woman is typing on a keyboard.', NULL, true),
  (11, 3, '(C) The woman is talking on the phone.', NULL, false),
  (12, 3, '(D) The woman is writing on a whiteboard.', NULL, false);

-- Part 2: 応答問題（リスニング + 選択、3択）
INSERT INTO questions OVERRIDING SYSTEM VALUE VALUES
  (4, 5, NULL, 1, 'choice', 1, 1,
   'Where is the nearest post office?',
   'The correct answer is (A). The question asks about a location, and option (A) provides a direction ("around the corner").',
   '/audio/toeic_part2_q1.mp3', NULL, NULL);

INSERT INTO choices OVERRIDING SYSTEM VALUE VALUES
  (13, 4, '(A) It''s just around the corner.', NULL, true),
  (14, 4, '(B) I''ll post it tomorrow.', NULL, false),
  (15, 4, '(C) Yes, it''s very near.', NULL, false);

-- Part 3: 会話問題（グループ問題 3問）
INSERT INTO questions OVERRIDING SYSTEM VALUE VALUES
  (5, NULL, 1, 1, 'choice', 1, 1,
   'What is the woman''s problem?',
   'At the beginning of the conversation, the woman reports that the printer is not working.',
   NULL, NULL, NULL),
  (6, NULL, 1, 2, 'choice', 1, 1,
   'What does the man suggest?',
   'The man suggests contacting IT support to fix the issue.',
   NULL, NULL, NULL),
  (7, NULL, 1, 3, 'choice', 1, 1,
   'What will the woman probably do next?',
   'The woman agrees with the suggestion, so she will most likely call IT support.',
   NULL, NULL, NULL);

INSERT INTO choices OVERRIDING SYSTEM VALUE VALUES
  (16, 5, '(A) Her computer crashed.', NULL, false),
  (17, 5, '(B) The printer is not working.', NULL, true),
  (18, 5, '(C) She lost her files.', NULL, false),
  (19, 5, '(D) The meeting was canceled.', NULL, false),
  (20, 6, '(A) Buying a new printer', NULL, false),
  (21, 6, '(B) Contacting IT support', NULL, true),
  (22, 6, '(C) Using another office', NULL, false),
  (23, 6, '(D) Restarting the computer', NULL, false),
  (24, 7, '(A) Go to a meeting', NULL, false),
  (25, 7, '(B) Print the document at home', NULL, false),
  (26, 7, '(C) Call IT support', NULL, true),
  (27, 7, '(D) Ask her manager', NULL, false);

-- Part 4: 説明文問題（グループ問題 3問）
INSERT INTO questions OVERRIDING SYSTEM VALUE VALUES
  (8, NULL, 2, 1, 'choice', 1, 1,
   'What is the purpose of the announcement?',
   'The announcement is informing employees about a change in the office parking policy.',
   NULL, NULL, NULL),
  (9, NULL, 2, 2, 'choice', 1, 1,
   'When will the new policy take effect?',
   'The speaker mentions that the new policy will take effect from next Monday.',
   NULL, NULL, NULL),
  (10, NULL, 2, 3, 'choice', 1, 1,
   'What are employees asked to do?',
   'Employees are asked to register their vehicles with the building management.',
   NULL, NULL, NULL);

INSERT INTO choices OVERRIDING SYSTEM VALUE VALUES
  (28, 8, '(A) To announce a holiday schedule', NULL, false),
  (29, 8, '(B) To explain a new parking policy', NULL, true),
  (30, 8, '(C) To introduce a new employee', NULL, false),
  (31, 8, '(D) To report quarterly earnings', NULL, false),
  (32, 9, '(A) Immediately', NULL, false),
  (33, 9, '(B) Next Monday', NULL, true),
  (34, 9, '(C) Next month', NULL, false),
  (35, 9, '(D) At the end of the year', NULL, false),
  (36, 10, '(A) Submit a vacation request', NULL, false),
  (37, 10, '(B) Attend a training session', NULL, false),
  (38, 10, '(C) Register their vehicles', NULL, true),
  (39, 10, '(D) Update their contact information', NULL, false);

-- Part 5: 短文穴埋め
INSERT INTO questions OVERRIDING SYSTEM VALUE VALUES
  (11, 9, NULL, 1, 'choice', 1, 1,
   'All employees are required to submit their reports ------- the end of each month.',
   'by the end of ～ は「～の終わりまでに」という意味の定型表現。前置詞 by が正解。',
   NULL, NULL, NULL);

INSERT INTO choices OVERRIDING SYSTEM VALUE VALUES
  (40, 11, '(A) at', NULL, false),
  (41, 11, '(B) by', NULL, true),
  (42, 11, '(C) on', NULL, false),
  (43, 11, '(D) from', NULL, false);

-- Part 6: 長文穴埋め（グループ問題 4問）
INSERT INTO questions OVERRIDING SYSTEM VALUE VALUES
  (12, NULL, 3, 1, 'choice', 1, 1,
   'Choose the best word for blank (1).',
   'The context is about confirming a registration, so "accepted" is the correct choice.',
   NULL, NULL, NULL),
  (13, NULL, 3, 2, 'choice', 1, 1,
   'Choose the best word for blank (2).',
   'Attendees are "encouraged" to arrive early. This is a polite request, not an obligation.',
   NULL, NULL, NULL),
  (14, NULL, 3, 3, 'choice', 1, 1,
   'Choose the best word for blank (3).',
   'Refreshments "will be served" is the correct passive future form.',
   NULL, NULL, NULL),
  (15, NULL, 3, 4, 'choice', 1, 1,
   'Choose the best word for blank (4).',
   '"look forward to" is followed by a gerund: "seeing".',
   NULL, NULL, NULL);

INSERT INTO choices OVERRIDING SYSTEM VALUE VALUES
  (44, 12, '(A) accepted', NULL, true),
  (45, 12, '(B) accepting', NULL, false),
  (46, 12, '(C) acceptance', NULL, false),
  (47, 12, '(D) acceptable', NULL, false),
  (48, 13, '(A) encouraged', NULL, true),
  (49, 13, '(B) declined', NULL, false),
  (50, 13, '(C) permitted', NULL, false),
  (51, 13, '(D) assigned', NULL, false),
  (52, 14, '(A) are serving', NULL, false),
  (53, 14, '(B) will be served', NULL, true),
  (54, 14, '(C) have served', NULL, false),
  (55, 14, '(D) were serving', NULL, false),
  (56, 15, '(A) see', NULL, false),
  (57, 15, '(B) seen', NULL, false),
  (58, 15, '(C) seeing', NULL, true),
  (59, 15, '(D) saw', NULL, false);

-- Part 7: 読解問題（グループ問題 2問）
INSERT INTO questions OVERRIDING SYSTEM VALUE VALUES
  (16, NULL, 4, 1, 'choice', 1, 1,
   'What is the purpose of the notice?',
   'The notice informs employees about upcoming office renovations and temporary relocation.',
   NULL, NULL, NULL),
  (17, NULL, 4, 2, 'choice', 1, 1,
   'What are employees asked to do by Friday?',
   'Employees are asked to pack their personal belongings by Friday, October 4.',
   NULL, NULL, NULL);

INSERT INTO choices OVERRIDING SYSTEM VALUE VALUES
  (60, 16, '(A) To announce a company merger', NULL, false),
  (61, 16, '(B) To inform about office renovations', NULL, true),
  (62, 16, '(C) To introduce new office rules', NULL, false),
  (63, 16, '(D) To advertise available office space', NULL, false),
  (64, 17, '(A) Submit renovation requests', NULL, false),
  (65, 17, '(B) Move to a different building', NULL, false),
  (66, 17, '(C) Pack their personal belongings', NULL, true),
  (67, 17, '(D) Contact the IT department', NULL, false);

-- ============================================
-- 6. SPI試験（2問）
-- ============================================

-- 言語（単一選択）
INSERT INTO questions OVERRIDING SYSTEM VALUE VALUES
  (18, 12, NULL, 1, 'choice', 1, 1,
   '次の語句の意味として最も適切なものはどれか。「忸怩（じくじ）」',
   '「忸怩」は、自分の行為を恥ずかしく思うさまを意味する。',
   NULL, NULL, NULL);

INSERT INTO choices OVERRIDING SYSTEM VALUE VALUES
  (68, 18, '自分の行為を恥ずかしく思うさま', NULL, true),
  (69, 18, '他人を激しく非難するさま', NULL, false),
  (70, 18, '物事に無関心であるさま', NULL, false),
  (71, 18, '自信に満ちあふれているさま', NULL, false);

-- 非言語（記述式）
INSERT INTO questions OVERRIDING SYSTEM VALUE VALUES
  (19, 13, NULL, 1, 'text', 1, 1,
   'ある商品を定価の2割引きで販売したところ、売価は1600円であった。この商品の定価はいくらか。（単位：円）',
   '定価 × 0.8 = 1600 → 定価 = 1600 ÷ 0.8 = 2000円',
   NULL, NULL, '{"answer": "2000"}');

-- ============================================
-- 7. シーケンスのリセット
-- ============================================
SELECT setval(pg_get_serial_sequence('exams', 'id'), (SELECT MAX(id) FROM exams));
SELECT setval(pg_get_serial_sequence('exam_sections', 'id'), (SELECT MAX(id) FROM exam_sections));
SELECT setval(pg_get_serial_sequence('question_groups', 'id'), (SELECT MAX(id) FROM question_groups));
SELECT setval(pg_get_serial_sequence('questions', 'id'), (SELECT MAX(id) FROM questions));
SELECT setval(pg_get_serial_sequence('choices', 'id'), (SELECT MAX(id) FROM choices));
