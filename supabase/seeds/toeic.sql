-- ============================================
-- TOEIC L&R
-- section_id:
--    4 = Part 1 写真描写
--    5 = Part 2 応答問題
--    6 = Part 3 会話問題
--    7 = Part 4 説明文問題
--    9 = Part 5 短文穴埋め
--   10 = Part 6 長文穴埋め
--   11 = Part 7 読解問題
--
-- 問題を追加するときはこのファイルの末尾に追記する
--
-- 【独立問題の書き方】
--   INSERT INTO questions (...) VALUES (section_id, NULL, 次の連番, ...);
--   INSERT INTO choices (question_id, ...) VALUES (currval('questions_id_seq'), ...);
--
-- 【グループ問題（Part 3/4/6/7）の書き方】
--   INSERT INTO question_groups (section_id, ...) VALUES (...);
--   -- 以後 currval('question_groups_id_seq') でそのグループを参照
--   INSERT INTO questions (..., group_id, ...) VALUES (NULL, currval('question_groups_id_seq'), 1, ...);
--   INSERT INTO choices (question_id, ...) VALUES (currval('questions_id_seq'), ...);
--   INSERT INTO questions (..., group_id, ...) VALUES (NULL, currval('question_groups_id_seq'), 2, ...);
--   INSERT INTO choices (question_id, ...) VALUES (currval('questions_id_seq'), ...);
-- ============================================

-- ----------------------------------------
-- Part 1: 写真描写（独立問題、音声＋画像）
-- ----------------------------------------

-- P1-1
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (4, NULL, 1, 'choice', 1, 1,
   NULL,
   'The correct answer is (B). The image shows a woman working at a computer, specifically typing on a keyboard.',
   '/audio/toeic_part1_q1.mp3', '/images/toeic_part1_q1.jpg', NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, false, 'The woman is reading a book.'),
  (currval('questions_id_seq'), '(B)', NULL, true,  'The woman is typing on a keyboard.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'The woman is talking on the phone.'),
  (currval('questions_id_seq'), '(D)', NULL, false, 'The woman is writing on a whiteboard.');

-- P1-2
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (4, NULL, 2, 'choice', 1, 1,
   NULL,
   'The correct answer is (B). The image shows a man carrying boxes, likely in a warehouse or storage area.',
   '/audio/toeic_part1_q2.mp3', '/images/toeic_part1_q2.jpg', NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, false, 'The man is reading a document.'),
  (currval('questions_id_seq'), '(B)', NULL, true,  'The man is carrying some boxes.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'The man is sitting at a desk.'),
  (currval('questions_id_seq'), '(D)', NULL, false, 'The man is talking on the phone.');

-- P1-3
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (4, NULL, 3, 'choice', 1, 1,
   NULL,
   'The correct answer is (C). The image shows two people shaking hands, likely in a business setting.',
   '/audio/toeic_part1_q3.mp3', '/images/toeic_part1_q3.jpg', NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, false, 'The people are eating lunch together.'),
  (currval('questions_id_seq'), '(B)', NULL, false, 'A woman is pointing at a screen.'),
  (currval('questions_id_seq'), '(C)', NULL, true,  'Two people are shaking hands.'),
  (currval('questions_id_seq'), '(D)', NULL, false, 'The people are walking down a hallway.');

-- P1-4
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (4, NULL, 4, 'choice', 1, 1,
   NULL,
   'The correct answer is (A). The image shows a woman writing on a whiteboard, likely during a presentation or meeting.',
   '/audio/toeic_part1_q4.mp3', '/images/toeic_part1_q4.jpg', NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, true,  'A woman is writing on a whiteboard.'),
  (currval('questions_id_seq'), '(B)', NULL, false, 'The woman is reading a book.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'Several people are sitting at a table.'),
  (currval('questions_id_seq'), '(D)', NULL, false, 'The woman is using a computer.');

-- P1-5
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (4, NULL, 5, 'choice', 1, 1,
   NULL,
   'The correct answer is (C). The image shows people seated around a conference table, likely in a business meeting.',
   '/audio/toeic_part1_q5.mp3', '/images/toeic_part1_q5.jpg', NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, false, 'The chairs around the table are empty.'),
  (currval('questions_id_seq'), '(B)', NULL, false, 'Someone is standing at the front of the room.'),
  (currval('questions_id_seq'), '(C)', NULL, true,  'People are seated around a conference table.'),
  (currval('questions_id_seq'), '(D)', NULL, false, 'The people are standing in a line.');

-- P1-6
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (4, NULL, 6, 'choice', 1, 1,
   NULL,
   'The correct answer is (B). The image shows a man reading a newspaper while sitting on a bench outdoors.',
   '/audio/toeic_part1_q6.mp3', '/images/toeic_part1_q6.jpg', NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, false, 'A man is sleeping on a bench.'),
  (currval('questions_id_seq'), '(B)', NULL, true,  'A man is reading a newspaper on a bench.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'Two people are having a conversation outside.'),
  (currval('questions_id_seq'), '(D)', NULL, false, 'A man is using a laptop outdoors.');

-- ----------------------------------------
-- Part 2: 応答問題（独立問題、音声）
-- ----------------------------------------

-- P2-1
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 1, 'choice', 1, 1,
   NULL,
   'The correct answer is (A). The question asks about a location, and option (A) provides a direction ("around the corner").',
   '/audio/toeic_part2_q1.mp3', NULL, NULL,
   'Where is the nearest post office?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, true,  'It''s just around the corner.'),
  (currval('questions_id_seq'), '(B)', NULL, false, 'I''ll post it tomorrow.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'Yes, it''s very near.');

-- P2-2
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 2, 'choice', 1, 1,
   NULL,
   'The correct answer is (B). The question asks "when," so the appropriate response gives a time: "Thursday at 2 P.M."',
   '/audio/toeic_part2_q2.mp3', NULL, NULL,
   'When is the next team meeting?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, false, 'In the large conference room.'),
  (currval('questions_id_seq'), '(B)', NULL, true,  'It''s scheduled for Thursday at 2 P.M.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'Yes, I''ll attend.');

-- P2-3
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 3, 'choice', 1, 1,
   NULL,
   'The correct answer is (B). The question asks "who," so the appropriate response names a person: "Ms. Chen from the finance team."',
   '/audio/toeic_part2_q3.mp3', NULL, NULL,
   'Who is responsible for the budget report?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, false, 'It was submitted last week.'),
  (currval('questions_id_seq'), '(B)', NULL, true,  'Ms. Chen from the finance team.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'The report is on the table.');

-- P2-4
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 4, 'choice', 1, 1,
   NULL,
   'The correct answer is (A). This is a request, so the natural response is an agreement to help.',
   '/audio/toeic_part2_q4.mp3', NULL, NULL,
   'Could you help me move these chairs?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, true,  'Sure, I''d be happy to help.'),
  (currval('questions_id_seq'), '(B)', NULL, false, 'The chairs were delivered yesterday.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'No, I haven''t moved yet.');

-- P2-5
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 5, 'choice', 1, 1,
   NULL,
   'The correct answer is (B). The question asks "how long," so the appropriate response gives a duration: "about three weeks."',
   '/audio/toeic_part2_q5.mp3', NULL, NULL,
   'How long will the office renovation take?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, false, 'The contractor is very experienced.'),
  (currval('questions_id_seq'), '(B)', NULL, true,  'It should be finished in about three weeks.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'The renovation budget was approved.');

-- P2-6
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 6, 'choice', 1, 1,
   NULL,
   'The correct answer is (A). The question asks "why," so the appropriate response gives a reason: the speaker had a scheduling conflict.',
   '/audio/toeic_part2_q6.mp3', NULL, NULL,
   'Why was the conference canceled?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, true,  'The main speaker had a scheduling conflict.'),
  (currval('questions_id_seq'), '(B)', NULL, false, 'The conference room holds fifty people.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'It will be rescheduled for next month.');

-- P2-7
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 7, 'choice', 1, 1,
   NULL,
   'The correct answer is (A). This is a yes/no question, and (A) gives a direct honest answer with a follow-up plan.',
   '/audio/toeic_part2_q7.mp3', NULL, NULL,
   'Have you reviewed the new proposals yet?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, true,  'Not yet, but I''ll get to them this afternoon.'),
  (currval('questions_id_seq'), '(B)', NULL, false, 'The proposals were well received.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'Yes, the review meeting is on Friday.');

-- P2-8
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 8, 'choice', 1, 1,
   NULL,
   'The correct answer is (B). The question asks "where," so the appropriate response gives a location: "the HR department."',
   '/audio/toeic_part2_q8.mp3', NULL, NULL,
   'Where should I submit the application form?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, false, 'The application deadline is this Monday.'),
  (currval('questions_id_seq'), '(B)', NULL, true,  'Please bring it to the HR department.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'The form has already been submitted.');

-- P2-9
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 9, 'choice', 1, 1,
   NULL,
   'The correct answer is (B). The question asks "what time," so the appropriate response gives a specific time: "eight o''clock."',
   '/audio/toeic_part2_q9.mp3', NULL, NULL,
   'What time does the store close tonight?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, false, 'It opens at nine in the morning.'),
  (currval('questions_id_seq'), '(B)', NULL, true,  'At eight o''clock in the evening.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'The store is on the corner.');

-- P2-10
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 10, 'choice', 1, 1,
   NULL,
   'The correct answer is (B). The question asks "who," so the appropriate response names a contact: "the IT help desk."',
   '/audio/toeic_part2_q10.mp3', NULL, NULL,
   'Who should I contact about the software issue?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, false, 'The issue was reported yesterday.'),
  (currval('questions_id_seq'), '(B)', NULL, true,  'The IT help desk can assist you.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'The software update is now available.');

-- P2-11
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 11, 'choice', 1, 1,
   NULL,
   'The correct answer is (A). This is an invitation. (A) accepts and asks a follow-up question, which is the most natural and complete response.',
   '/audio/toeic_part2_q11.mp3', NULL, NULL,
   'Would you like to join us for lunch?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, true,  'That sounds great. Where are you going?'),
  (currval('questions_id_seq'), '(B)', NULL, false, 'Lunch is served at noon.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'I already had my lunch.');

-- P2-12
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 12, 'choice', 1, 1,
   NULL,
   'The correct answer is (B). The question asks "how to get there," so the appropriate response gives directions.',
   '/audio/toeic_part2_q12.mp3', NULL, NULL,
   'How do I get to the nearest train station?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, false, 'The trains run every ten minutes.'),
  (currval('questions_id_seq'), '(B)', NULL, true,  'Turn left at the corner and walk two blocks.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'The station was recently renovated.');

-- P2-13
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 13, 'choice', 1, 1,
   NULL,
   'The correct answer is (B). The question asks "when," so the appropriate response gives a time frame: "next quarter."',
   '/audio/toeic_part2_q13.mp3', NULL, NULL,
   'When will the new product be released?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, false, 'The product has received excellent reviews.'),
  (currval('questions_id_seq'), '(B)', NULL, true,  'We''re planning to launch it next quarter.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'The release was a great success.');

-- P2-14
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 14, 'choice', 1, 1,
   NULL,
   'The correct answer is (A). This is a yes/no question, and (A) gives a helpful response by offering to check.',
   '/audio/toeic_part2_q14.mp3', NULL, NULL,
   'Is the meeting room available this afternoon?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, true,  'I''ll check the booking system for you.'),
  (currval('questions_id_seq'), '(B)', NULL, false, 'The meeting was very productive.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'The room can seat up to twelve people.');

-- P2-15
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 15, 'choice', 1, 1,
   NULL,
   'The correct answer is (A). The question asks "why," so the appropriate response gives a reason: bad weather caused a delay.',
   '/audio/toeic_part2_q15.mp3', NULL, NULL,
   'Why haven''t the packages been delivered yet?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, true,  'There was a delay due to bad weather.'),
  (currval('questions_id_seq'), '(B)', NULL, false, 'The packages arrived right on time.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'I''ll send the package tomorrow.');

-- P2-16
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 16, 'choice', 1, 1,
   NULL,
   'The correct answer is (B). The question asks "what," so the appropriate response names the item: "the sales report."',
   '/audio/toeic_part2_q16.mp3', NULL, NULL,
   'What did you leave on my desk?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, false, 'I left about an hour ago.'),
  (currval('questions_id_seq'), '(B)', NULL, true,  'It''s the sales report for last quarter.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'Yes, your desk is near the window.');

-- P2-17
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 17, 'choice', 1, 1,
   NULL,
   'The correct answer is (A). This is a yes/no question asking if the report is ready. (A) gives a direct, honest answer.',
   '/audio/toeic_part2_q17.mp3', NULL, NULL,
   'Is the annual report ready to be sent out?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, true,  'Not quite — I still need to add the charts.'),
  (currval('questions_id_seq'), '(B)', NULL, false, 'The report was very well received.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'I''ll send it to the whole team.');

-- P2-18
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 18, 'choice', 1, 1,
   NULL,
   'The correct answer is (C). The question asks "how," and (C) gives the method: "by taking the express train."',
   '/audio/toeic_part2_q18.mp3', NULL, NULL,
   'How did you get to the conference so quickly?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, false, 'The conference was very informative.'),
  (currval('questions_id_seq'), '(B)', NULL, false, 'It starts at nine in the morning.'),
  (currval('questions_id_seq'), '(C)', NULL, true,  'I took the express train from Central Station.');

-- P2-19
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 19, 'choice', 1, 1,
   NULL,
   'The correct answer is (B). This is a request. (B) accepts and gives a helpful reason for the delay.',
   '/audio/toeic_part2_q19.mp3', NULL, NULL,
   'Could you proofread this document before the meeting?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, false, 'The meeting has been postponed until Thursday.'),
  (currval('questions_id_seq'), '(B)', NULL, true,  'Of course — give me about fifteen minutes.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'Yes, the document was approved yesterday.');

-- P2-20
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 20, 'choice', 1, 1,
   NULL,
   'The correct answer is (A). The question asks "who," and (A) names the person responsible.',
   '/audio/toeic_part2_q20.mp3', NULL, NULL,
   'Who is presenting at the workshop tomorrow?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, true,  'Dr. Harris from the research department.'),
  (currval('questions_id_seq'), '(B)', NULL, false, 'The workshop lasts about two hours.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'It''s held in the main auditorium.');

-- P2-21
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 21, 'choice', 1, 1,
   NULL,
   'The correct answer is (C). This is a suggestion ("Why don''t we..."). (C) agrees and adds a follow-up idea.',
   '/audio/toeic_part2_q21.mp3', NULL, NULL,
   'Why don''t we order lunch for the whole team today?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, false, 'Lunch is usually served at noon.'),
  (currval('questions_id_seq'), '(B)', NULL, false, 'The whole team attended the meeting.'),
  (currval('questions_id_seq'), '(C)', NULL, true,  'That''s a great idea — I''ll send around a menu.');

-- P2-22
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 22, 'choice', 1, 1,
   NULL,
   'The correct answer is (B). The question asks "where," and (B) gives a specific location.',
   '/audio/toeic_part2_q22.mp3', NULL, NULL,
   'Where are the extra printer cartridges kept?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, false, 'The printer was repaired last week.'),
  (currval('questions_id_seq'), '(B)', NULL, true,  'They''re in the supply cabinet on the second floor.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'You can order them from the supplier.');

-- P2-23
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 23, 'choice', 1, 1,
   NULL,
   'The correct answer is (A). This is a yes/no question. (A) gives a direct negative answer with a reason.',
   '/audio/toeic_part2_q23.mp3', NULL, NULL,
   'Have the clients confirmed their arrival time?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, true,  'Not yet — I''m still waiting for their reply.'),
  (currval('questions_id_seq'), '(B)', NULL, false, 'The clients were very satisfied.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'Their flight arrives at three o''clock.');

-- P2-24
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 24, 'choice', 1, 1,
   NULL,
   'The correct answer is (C). The question asks "how many," and (C) gives a specific number.',
   '/audio/toeic_part2_q24.mp3', NULL, NULL,
   'How many people signed up for the training session?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, false, 'The training starts at ten o''clock.'),
  (currval('questions_id_seq'), '(B)', NULL, false, 'It covers communication and leadership skills.'),
  (currval('questions_id_seq'), '(C)', NULL, true,  'About thirty people registered so far.');

-- P2-25
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, transcript)
VALUES
  (5, NULL, 25, 'choice', 1, 1,
   NULL,
   'The correct answer is (B). This is a yes/no question about the reservation. (B) confirms it was done.',
   '/audio/toeic_part2_q25.mp3', NULL, NULL,
   'Did you make a reservation at the restaurant?');
INSERT INTO choices (question_id, choice_text, image_url, is_correct, transcript) VALUES
  (currval('questions_id_seq'), '(A)', NULL, false, 'The restaurant opens at six in the evening.'),
  (currval('questions_id_seq'), '(B)', NULL, true,  'Yes, I booked a table for eight people at seven.'),
  (currval('questions_id_seq'), '(C)', NULL, false, 'I recommend the pasta dish there.');

-- ----------------------------------------
-- Part 3: 会話問題（グループ問題）
-- ----------------------------------------

-- P3-G1: 会話（プリンターの故障）
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule, transcript)
VALUES
  (6, 'Questions 1-3 refer to the following conversation.',
   '/audio/toeic_part3_q1.mp3', NULL, NULL, NULL,
   'Woman: Excuse me, do you have a moment? The printer on the third floor isn''t working again, and I need to print some documents for the meeting this afternoon.
Man: Oh, that''s the second time this week. Did you try restarting it?
Woman: Yes, I did, but it still won''t print. It just shows an error message on the screen.
Man: In that case, I think you should contact IT support. They can usually fix it pretty quickly.
Woman: That''s a good idea. I''ll call them right now. Thanks.');

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What is the woman''s problem?',
   'At the beginning of the conversation, the woman reports that the printer is not working.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Her computer crashed.',        NULL, false),
  (currval('questions_id_seq'), '(B) The printer is not working.',  NULL, true),
  (currval('questions_id_seq'), '(C) She lost her files.',          NULL, false),
  (currval('questions_id_seq'), '(D) The meeting was canceled.',    NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'What does the man suggest?',
   'The man suggests contacting IT support to fix the issue.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Buying a new printer',    NULL, false),
  (currval('questions_id_seq'), '(B) Contacting IT support',   NULL, true),
  (currval('questions_id_seq'), '(C) Using another office',    NULL, false),
  (currval('questions_id_seq'), '(D) Restarting the computer', NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What will the woman probably do next?',
   'The woman agrees with the suggestion, so she will most likely call IT support.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Go to a meeting',             NULL, false),
  (currval('questions_id_seq'), '(B) Print the document at home',  NULL, false),
  (currval('questions_id_seq'), '(C) Call IT support',             NULL, true),
  (currval('questions_id_seq'), '(D) Ask her manager',             NULL, false);

-- P3-G2: オフィス用品の発注
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule, transcript)
VALUES
  (6, 'Questions 1-3 refer to the following conversation.',
   '/audio/toeic_part3_q2.mp3', NULL, NULL, NULL,
   'Woman: Hi, could you place an order for office supplies? We''re running low on paper and pens.
Man: Sure, but I should mention that our department''s budget has been cut this quarter. I''m not sure we can order everything we need.
Woman: I see. In that case, why don''t we switch to a different supplier? I heard that Office Central offers lower prices for bulk orders.
Man: That sounds like a good idea. I''ll look them up and compare prices before placing the order.');

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What does the woman ask the man to do?',
   'The woman asks the man to place an order for office supplies because their stock is running low.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Fix the photocopier',           NULL, false),
  (currval('questions_id_seq'), '(B) Place an order for supplies',   NULL, true),
  (currval('questions_id_seq'), '(C) Call a delivery company',       NULL, false),
  (currval('questions_id_seq'), '(D) Check the storage room',        NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'What problem does the man mention?',
   'The man says the department''s budget has been reduced, so he is concerned about spending.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) The budget has been reduced',    NULL, true),
  (currval('questions_id_seq'), '(B) The supplier is out of stock',   NULL, false),
  (currval('questions_id_seq'), '(C) The order form is missing',      NULL, false),
  (currval('questions_id_seq'), '(D) The delivery was delayed',       NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What does the woman suggest doing?',
   'The woman suggests switching to a different supplier that offers lower prices.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Using a different supplier',              NULL, true),
  (currval('questions_id_seq'), '(B) Postponing the order',                    NULL, false),
  (currval('questions_id_seq'), '(C) Reducing the quantity ordered',           NULL, false),
  (currval('questions_id_seq'), '(D) Asking the finance department directly',  NULL, false);

-- P3-G3: レストランの予約
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule, transcript)
VALUES
  (6, 'Questions 1-3 refer to the following conversation.',
   '/audio/toeic_part3_q3.mp3', NULL, NULL, NULL,
   'Man: Hello, I''d like to make a reservation for dinner, please.
Woman: Of course. How many people will be in your party?
Man: There will be six of us. It''s a team dinner with my colleagues.
Woman: Let me check availability. We have an opening at seven o''clock this evening. Would that work for you?
Man: Seven o''clock is perfect. Thank you.
Woman: Great. Could I have your name, please?
Man: It''s James Cooper.');

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'Why is the man calling?',
   'The man calls the restaurant to make a reservation for a dinner with his colleagues.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) To make a reservation',       NULL, true),
  (currval('questions_id_seq'), '(B) To cancel a reservation',     NULL, false),
  (currval('questions_id_seq'), '(C) To ask about the menu',       NULL, false),
  (currval('questions_id_seq'), '(D) To complain about service',   NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'How many people are in the man''s party?',
   'The man says he needs a table for six people.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Three', NULL, false),
  (currval('questions_id_seq'), '(B) Four',  NULL, false),
  (currval('questions_id_seq'), '(C) Six',   NULL, true),
  (currval('questions_id_seq'), '(D) Eight', NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What time is the reservation for?',
   'The woman confirms the reservation for 7:00 P.M. after checking availability.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) 6:00 P.M.', NULL, false),
  (currval('questions_id_seq'), '(B) 7:00 P.M.', NULL, true),
  (currval('questions_id_seq'), '(C) 7:30 P.M.', NULL, false),
  (currval('questions_id_seq'), '(D) 8:00 P.M.', NULL, false);

-- P3-G4: 出張の手配
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule, transcript)
VALUES
  (6, 'Questions 1-3 refer to the following conversation.',
   '/audio/toeic_part3_q4.mp3', NULL, NULL, NULL,
   'Man: I have a client meeting scheduled in Chicago next week. I need to start making arrangements.
Woman: How long will you be away?
Man: Three days — I''m flying out Monday morning and coming back Wednesday evening.
Woman: Do you need help with the hotel? I can book it for you so you can focus on preparing for the meeting.
Man: That would be really helpful. Thanks a lot.');

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'Where is the man going on his business trip?',
   'The man mentions he has a client meeting scheduled in Chicago next week.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) New York',     NULL, false),
  (currval('questions_id_seq'), '(B) Chicago',      NULL, true),
  (currval('questions_id_seq'), '(C) Los Angeles',  NULL, false),
  (currval('questions_id_seq'), '(D) Seattle',      NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'How long will the man be away?',
   'The man says the trip will last three days, from Monday to Wednesday.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Two days',   NULL, false),
  (currval('questions_id_seq'), '(B) Three days', NULL, true),
  (currval('questions_id_seq'), '(C) One week',   NULL, false),
  (currval('questions_id_seq'), '(D) Ten days',   NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What does the woman offer to do?',
   'The woman offers to book the hotel room on his behalf so he can focus on preparing for the meeting.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Book the hotel room',          NULL, true),
  (currval('questions_id_seq'), '(B) Prepare the presentation',     NULL, false),
  (currval('questions_id_seq'), '(C) Contact the client directly',  NULL, false),
  (currval('questions_id_seq'), '(D) Drive him to the airport',     NULL, false);

-- P3-G5: 採用候補者の評価
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule, transcript)
VALUES
  (6, 'Questions 1-3 refer to the following conversation.',
   '/audio/toeic_part3_q5.mp3', NULL, NULL, NULL,
   'Woman: So, what did you think of the candidates we interviewed today for the software engineer position?
Man: I was really impressed with the last one. Her technical skills were outstanding, and her portfolio showed exactly the kind of work we''re looking for.
Woman: I agree completely. Her problem-solving approach during the coding exercise was particularly strong.
Man: I think we should invite her back for a second interview so she can meet the rest of the engineering team.
Woman: Good idea. I''ll reach out to her tomorrow morning.');

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What position are the speakers discussing?',
   'The two speakers are evaluating candidates who applied for the software engineer position.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Marketing manager',      NULL, false),
  (currval('questions_id_seq'), '(B) Software engineer',      NULL, true),
  (currval('questions_id_seq'), '(C) Sales representative',   NULL, false),
  (currval('questions_id_seq'), '(D) Product designer',       NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'What impressed the speakers most about the candidate?',
   'Both speakers agree that the candidate''s strong technical skills and portfolio stood out the most.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Communication skills',    NULL, false),
  (currval('questions_id_seq'), '(B) Work experience',         NULL, false),
  (currval('questions_id_seq'), '(C) Technical skills',        NULL, true),
  (currval('questions_id_seq'), '(D) Educational background',  NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What will the speakers most likely do next?',
   'They decide to invite the candidate back for a second interview to meet with the engineering team.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Schedule a second interview',   NULL, true),
  (currval('questions_id_seq'), '(B) Send a job offer immediately',  NULL, false),
  (currval('questions_id_seq'), '(C) Check the candidate''s references', NULL, false),
  (currval('questions_id_seq'), '(D) Post the position online again', NULL, false);

-- P3-G6: 顧客からのクレーム対応
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule, transcript)
VALUES
  (6, 'Questions 1-3 refer to the following conversation.',
   '/audio/toeic_part3_q6.mp3', NULL, NULL, NULL,
   'Woman: Hello, I''d like to speak with someone about an order I placed last week. I haven''t received it yet, and I was told it would arrive within three days.
Man: I''m sorry to hear that. Could I have your order number, please?
Woman: Sure, it''s order number 88421.
Man: Let me pull up your account... I can see your order was delayed due to a warehouse issue. I apologize for the inconvenience. I''d like to offer you a full refund or have the item reshipped with express delivery at no charge.
Woman: I''d prefer to have it reshipped. I still need the item.
Man: Absolutely. I''ll arrange that right away and send you a confirmation email within the hour.');

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'Why is the woman calling?',
   'The woman says she placed an order last week and has not received it yet.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) To cancel an order',                    NULL, false),
  (currval('questions_id_seq'), '(B) To complain about a delayed delivery',  NULL, true),
  (currval('questions_id_seq'), '(C) To ask about a refund policy',          NULL, false),
  (currval('questions_id_seq'), '(D) To update her shipping address',        NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'What caused the delay?',
   'The man explains the order was delayed due to a warehouse issue.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Bad weather conditions',     NULL, false),
  (currval('questions_id_seq'), '(B) An incorrect address',       NULL, false),
  (currval('questions_id_seq'), '(C) A warehouse issue',          NULL, true),
  (currval('questions_id_seq'), '(D) A payment problem',          NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What does the woman decide to do?',
   'The woman says she would prefer to have the item reshipped because she still needs it.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Accept a full refund',                   NULL, false),
  (currval('questions_id_seq'), '(B) Have the item reshipped',                NULL, true),
  (currval('questions_id_seq'), '(C) Visit the store in person',              NULL, false),
  (currval('questions_id_seq'), '(D) Wait for the original delivery',         NULL, false);

-- P3-G7: 新オフィスへの引越し準備
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule, transcript)
VALUES
  (6, 'Questions 1-3 refer to the following conversation.',
   '/audio/toeic_part3_q7.mp3', NULL, NULL, NULL,
   'Man: Have you heard? We''re moving to the new office building on Fifth Avenue next month.
Woman: Yes, I saw the announcement. Are we responsible for packing our own desks?
Man: Apparently, yes. Facilities will handle all the furniture and equipment, but we need to pack our personal items and files by the end of next week.
Woman: That''s not much time. I have quite a lot of documents to sort through.
Man: I know. They''re also providing boxes — you can pick them up from the storage room on the ground floor starting tomorrow.
Woman: Good to know. I''ll go get some after lunch.');

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What are the speakers mainly discussing?',
   'The speakers are talking about the upcoming office move and what employees need to do to prepare.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) A new company policy',              NULL, false),
  (currval('questions_id_seq'), '(B) Preparations for an office move',  NULL, true),
  (currval('questions_id_seq'), '(C) A facilities maintenance schedule', NULL, false),
  (currval('questions_id_seq'), '(D) The layout of a new building',      NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'What will the facilities team handle?',
   'The man says facilities will handle all the furniture and equipment.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Personal items and files',       NULL, false),
  (currval('questions_id_seq'), '(B) Furniture and equipment',        NULL, true),
  (currval('questions_id_seq'), '(C) Packing boxes and labels',       NULL, false),
  (currval('questions_id_seq'), '(D) Setting up new workstations',    NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What will the woman most likely do after lunch?',
   'The woman says she will go get boxes from the storage room after lunch.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Attend a team meeting',               NULL, false),
  (currval('questions_id_seq'), '(B) Start packing her documents',         NULL, false),
  (currval('questions_id_seq'), '(C) Pick up boxes from the storage room', NULL, true),
  (currval('questions_id_seq'), '(D) Speak with the facilities manager',   NULL, false);

-- P3-G8: 新製品のマーケティング戦略
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule, transcript)
VALUES
  (6, 'Questions 1-3 refer to the following conversation.',
   '/audio/toeic_part3_q8.mp3', NULL, NULL, NULL,
   'Woman: I wanted to discuss our marketing plan for the new product launch next month. Have you had a chance to review the draft I sent over?
Man: Yes, I went through it this morning. Overall it looks solid, but I think we should put more emphasis on social media. Our target customers are mostly in their twenties and thirties.
Woman: That''s a good point. We could run a campaign on social platforms and partner with a few influencers.
Man: Exactly. I''d also suggest increasing the budget for online ads and cutting back on print advertising, since the return on print has been lower lately.
Woman: Agreed. I''ll revise the plan and have an updated version ready by Wednesday.
Man: Perfect. Let''s schedule a review meeting for Thursday morning.');

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What are the speakers planning?',
   'The woman mentions a marketing plan for the new product launch next month.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) A new product launch strategy',   NULL, true),
  (currval('questions_id_seq'), '(B) A staff recruitment campaign',    NULL, false),
  (currval('questions_id_seq'), '(C) An annual sales review',          NULL, false),
  (currval('questions_id_seq'), '(D) A budget reduction plan',         NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'What does the man suggest changing in the plan?',
   'The man suggests putting more emphasis on social media and increasing the budget for online ads while cutting print advertising.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Hiring more marketing staff',            NULL, false),
  (currval('questions_id_seq'), '(B) Focusing more on social media',          NULL, true),
  (currval('questions_id_seq'), '(C) Launching the product earlier',          NULL, false),
  (currval('questions_id_seq'), '(D) Increasing the print advertising budget', NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'When will the updated plan be ready?',
   'The woman says she will have an updated version ready by Wednesday.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) By Tuesday',    NULL, false),
  (currval('questions_id_seq'), '(B) By Wednesday',  NULL, true),
  (currval('questions_id_seq'), '(C) By Thursday',   NULL, false),
  (currval('questions_id_seq'), '(D) By Friday',     NULL, false);

-- P3-G9: 医師の予約変更
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule, transcript)
VALUES
  (6, 'Questions 1-3 refer to the following conversation.',
   '/audio/toeic_part3_q9.mp3', NULL, NULL, NULL,
   'Man: Hello, I''m calling to reschedule my appointment with Dr. Patel. I have a work conflict on Thursday afternoon.
Woman: Of course. Could I have your name, please?
Man: It''s Michael Torres.
Woman: Thank you, Mr. Torres. Your appointment is currently at two o''clock on Thursday. When would you like to reschedule?
Man: Would Friday morning work? Anytime before noon would be fine.
Woman: Let me check... we have an opening at ten thirty on Friday morning. Does that work for you?
Man: That''s perfect. Thank you very much.
Woman: Great. I''ll update your appointment and send you a reminder by email.');

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'Why is the man calling?',
   'The man says he needs to reschedule his appointment because of a work conflict on Thursday.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) To make a new appointment',            NULL, false),
  (currval('questions_id_seq'), '(B) To reschedule an existing appointment', NULL, true),
  (currval('questions_id_seq'), '(C) To cancel his appointment',            NULL, false),
  (currval('questions_id_seq'), '(D) To ask about test results',            NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'What is the man''s original appointment time?',
   'The woman says his current appointment is at two o''clock on Thursday.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Thursday at 10:00 A.M.',  NULL, false),
  (currval('questions_id_seq'), '(B) Thursday at 2:00 P.M.',   NULL, true),
  (currval('questions_id_seq'), '(C) Friday at 10:30 A.M.',    NULL, false),
  (currval('questions_id_seq'), '(D) Friday at 12:00 P.M.',    NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What will the woman do after the call?',
   'The woman says she will update the appointment and send a reminder by email.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Call Dr. Patel directly',            NULL, false),
  (currval('questions_id_seq'), '(B) Send a reminder email to the man',   NULL, true),
  (currval('questions_id_seq'), '(C) Mail a confirmation letter',         NULL, false),
  (currval('questions_id_seq'), '(D) Update the man''s medical records',  NULL, false);

-- P3-G10: 社内表彰式の準備
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule, transcript)
VALUES
  (6, 'Questions 1-3 refer to the following conversation.',
   '/audio/toeic_part3_q10.mp3', NULL, NULL, NULL,
   'Woman: Hi, I''m helping organize the employee recognition ceremony next Friday. I wanted to check whether the catering has been arranged yet.
Man: I spoke with the catering team yesterday. They''ve confirmed they can handle lunch for around eighty people.
Woman: Great. What about the venue? I heard there might be an issue with the main hall.
Man: Yes, the main hall is being used for a client presentation that day. So we''ve moved the ceremony to the rooftop terrace instead.
Woman: Oh, that''s actually a nicer space. Will there be enough seating?
Man: They''re bringing in extra chairs, so it should be fine. I''ll send everyone the updated location details by the end of today.');

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What event are the speakers preparing for?',
   'The woman says she is helping organize the employee recognition ceremony next Friday.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) A client presentation',                NULL, false),
  (currval('questions_id_seq'), '(B) An employee recognition ceremony',     NULL, true),
  (currval('questions_id_seq'), '(C) A company anniversary dinner',         NULL, false),
  (currval('questions_id_seq'), '(D) A new product launch event',           NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'Why was the venue changed?',
   'The man explains the main hall is being used for a client presentation that day.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) The main hall is under renovation',              NULL, false),
  (currval('questions_id_seq'), '(B) The rooftop terrace is larger',                  NULL, false),
  (currval('questions_id_seq'), '(C) The main hall is reserved for a presentation',   NULL, true),
  (currval('questions_id_seq'), '(D) The catering team requested a different space',  NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What will the man do by the end of today?',
   'The man says he will send everyone the updated location details by the end of today.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Confirm the catering order',                  NULL, false),
  (currval('questions_id_seq'), '(B) Arrange additional seating',                  NULL, false),
  (currval('questions_id_seq'), '(C) Send out the updated venue information',      NULL, true),
  (currval('questions_id_seq'), '(D) Speak with the client presentation team',     NULL, false);

-- P3-G11: 図書館の蔵書検索
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule, transcript)
VALUES
  (6, 'Questions 1-3 refer to the following conversation.',
   '/audio/toeic_part3_q11.mp3', NULL, NULL, NULL,
   'Man: Excuse me, I''m looking for a book called "Modern Infrastructure Design." I checked the catalog online and it says it''s available, but I can''t find it on the shelf.
Woman: Let me check the system for you. Hmm, it looks like it was returned this morning and may not have been reshelved yet. Let me check in the returns cart.
Man: Oh, I see. I actually need it for a presentation tomorrow morning, so it''s quite urgent.
Woman: I understand. I found it — it was still in the cart. Here you go.
Man: That''s a relief. Thank you so much.
Woman: You''re welcome. Just a reminder — this title is in high demand, so the loan period is one week rather than the usual two.');

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What problem does the man have?',
   'The man cannot find the book on the shelf even though the catalog says it is available.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) The book is checked out by another patron',   NULL, false),
  (currval('questions_id_seq'), '(B) He cannot find the book on the shelf',        NULL, true),
  (currval('questions_id_seq'), '(C) The catalog system is not working',           NULL, false),
  (currval('questions_id_seq'), '(D) The book is damaged and unavailable',         NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'Why does the man need the book urgently?',
   'The man says he needs it for a presentation tomorrow morning.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) He has a class this afternoon',          NULL, false),
  (currval('questions_id_seq'), '(B) He has a presentation tomorrow morning', NULL, true),
  (currval('questions_id_seq'), '(C) His library card expires today',         NULL, false),
  (currval('questions_id_seq'), '(D) He is leaving on a trip tonight',        NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What does the woman tell the man about the loan period?',
   'The woman says the loan period for this title is one week rather than the usual two because it is in high demand.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) He can renew the book once online',    NULL, false),
  (currval('questions_id_seq'), '(B) The loan period is one week',          NULL, true),
  (currval('questions_id_seq'), '(C) The loan period is three weeks',       NULL, false),
  (currval('questions_id_seq'), '(D) He must return it by end of business', NULL, false);

-- P3-G12: 工場の安全点検
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule, transcript)
VALUES
  (6, 'Questions 1-3 refer to the following conversation.',
   '/audio/toeic_part3_q12.mp3', NULL, NULL, NULL,
   'Woman: I wanted to let you know that the safety inspection for the manufacturing floor is scheduled for next Tuesday.
Man: Right, I saw the memo. Do we need to do anything to prepare beforehand?
Woman: Yes, all machinery needs to be cleaned and the safety labels checked. Also, the emergency exits should be clear of any obstructions.
Man: I''ll assign those tasks to the maintenance team today. Is there anything else?
Woman: The inspector will also want to review the incident log from the past six months, so make sure that''s up to date.
Man: Got it. I''ll have everything ready by Monday afternoon.');

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'When is the safety inspection scheduled?',
   'The woman says the safety inspection is scheduled for next Tuesday.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) This Friday',   NULL, false),
  (currval('questions_id_seq'), '(B) Next Monday',   NULL, false),
  (currval('questions_id_seq'), '(C) Next Tuesday',  NULL, true),
  (currval('questions_id_seq'), '(D) Next Thursday', NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'What will the man do today?',
   'The man says he will assign the preparation tasks to the maintenance team today.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Review the incident log',                       NULL, false),
  (currval('questions_id_seq'), '(B) Assign tasks to the maintenance team',          NULL, true),
  (currval('questions_id_seq'), '(C) Contact the safety inspector directly',         NULL, false),
  (currval('questions_id_seq'), '(D) Clean the machinery himself',                   NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What document must be up to date before the inspection?',
   'The woman says the inspector will want to review the incident log from the past six months.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) The maintenance schedule',       NULL, false),
  (currval('questions_id_seq'), '(B) The employee training records',  NULL, false),
  (currval('questions_id_seq'), '(C) The incident log',               NULL, true),
  (currval('questions_id_seq'), '(D) The equipment purchase orders',  NULL, false);

-- P3-G13: ホテルのチェックイン
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule, transcript)
VALUES
  (6, 'Questions 1-3 refer to the following conversation.',
   '/audio/toeic_part3_q13.mp3', NULL, NULL, NULL,
   'Man: Good evening. I have a reservation under the name David Park.
Woman: Welcome, Mr. Park. Let me pull up your reservation... I can see you have a standard room booked for two nights.
Man: That''s correct. I was actually wondering if it''s possible to upgrade to a room with a city view. I''m here for a special occasion.
Woman: Let me check availability. We do have a deluxe room with a city view available. There would be an additional charge of forty dollars per night.
Man: That''s fine. I''ll take it.
Woman: Wonderful. Here is your key card. Breakfast is served in the dining room on the second floor from six thirty to ten. Is there anything else I can help you with?
Man: No, that''s everything. Thank you.');

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What does the man request at check-in?',
   'The man asks if it is possible to upgrade to a room with a city view.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) A later check-out time',          NULL, false),
  (currval('questions_id_seq'), '(B) A room with a city view',         NULL, true),
  (currval('questions_id_seq'), '(C) A room on a higher floor',        NULL, false),
  (currval('questions_id_seq'), '(D) An extra bed in his room',        NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'How much extra will the man pay per night?',
   'The woman says the deluxe room with a city view costs an additional forty dollars per night.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) $20',  NULL, false),
  (currval('questions_id_seq'), '(B) $30',  NULL, false),
  (currval('questions_id_seq'), '(C) $40',  NULL, true),
  (currval('questions_id_seq'), '(D) $50',  NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'Where is breakfast served?',
   'The woman tells the man breakfast is served in the dining room on the second floor.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) In the lobby café',                  NULL, false),
  (currval('questions_id_seq'), '(B) On the ground floor',                NULL, false),
  (currval('questions_id_seq'), '(C) In the dining room on the second floor', NULL, true),
  (currval('questions_id_seq'), '(D) In the rooftop restaurant',          NULL, false);

-- ----------------------------------------
-- Part 4: 説明文問題（グループ問題）
-- ----------------------------------------

-- P4-G1: 駐車場ポリシー
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule, transcript)
VALUES
  (7, 'Questions 1-3 refer to the following talk.',
   '/audio/toeic_part4_q1.mp3', NULL, NULL, NULL,
   'Attention, all staff. This is an announcement regarding the employee parking facility. Starting next Monday, all vehicles parked in the company lot must be registered with building management. Unregistered vehicles will not be permitted to enter the parking area. To register your vehicle, please visit the building management office on the ground floor and complete a short registration form. You will need to provide your employee ID and your vehicle''s license plate number. Registered employees will receive a parking permit sticker to display on their windshield. If you have any questions, please contact building management directly. Thank you for your cooperation.');

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What is the purpose of the announcement?',
   'The announcement is informing employees about a change in the office parking policy.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) To announce a holiday schedule',  NULL, false),
  (currval('questions_id_seq'), '(B) To explain a new parking policy', NULL, true),
  (currval('questions_id_seq'), '(C) To introduce a new employee',     NULL, false),
  (currval('questions_id_seq'), '(D) To report quarterly earnings',    NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'When will the new policy take effect?',
   'The speaker mentions that the new policy will take effect from next Monday.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Immediately',            NULL, false),
  (currval('questions_id_seq'), '(B) Next Monday',            NULL, true),
  (currval('questions_id_seq'), '(C) Next month',             NULL, false),
  (currval('questions_id_seq'), '(D) At the end of the year', NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What are employees asked to do?',
   'Employees are asked to register their vehicles with the building management.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Submit a vacation request',        NULL, false),
  (currval('questions_id_seq'), '(B) Attend a training session',        NULL, false),
  (currval('questions_id_seq'), '(C) Register their vehicles',          NULL, true),
  (currval('questions_id_seq'), '(D) Update their contact information', NULL, false);

-- P4-G2: 交通情報ラジオ放送
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule, transcript)
VALUES
  (7, 'Questions 1-3 refer to the following traffic report.',
   '/audio/toeic_part4_q2.mp3', NULL, NULL, NULL,
   'Good morning, commuters. Here is your traffic update for this hour. Oak Street between Third Avenue and Fifth Avenue is currently closed to all traffic due to ongoing road construction work. Drivers heading downtown are advised to use Maple Avenue or River Road as alternative routes. Construction crews are working to complete the project overnight, and the road is expected to reopen tomorrow morning. Delays of up to 20 minutes are possible in the surrounding area, so please allow extra time for your journey. We will bring you further updates at the top of the hour. Stay safe out there.');

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What is the main purpose of the announcement?',
   'The speaker reports that a section of Oak Street is closed due to ongoing road construction work.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) To warn about severe weather',                    NULL, false),
  (currval('questions_id_seq'), '(B) To report a road closure due to construction',    NULL, true),
  (currval('questions_id_seq'), '(C) To announce a new bus route',                     NULL, false),
  (currval('questions_id_seq'), '(D) To describe a traffic accident',                  NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'Which road is affected by the closure?',
   'The speaker specifically mentions that Oak Street between Third and Fifth Avenue is closed to traffic.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Highway 5',        NULL, false),
  (currval('questions_id_seq'), '(B) Oak Street',       NULL, true),
  (currval('questions_id_seq'), '(C) Park Avenue',      NULL, false),
  (currval('questions_id_seq'), '(D) Main Boulevard',   NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'When will the road reopen?',
   'The speaker says construction is expected to be completed overnight and the road will reopen tomorrow morning.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Later this evening',      NULL, false),
  (currval('questions_id_seq'), '(B) Tomorrow morning',        NULL, true),
  (currval('questions_id_seq'), '(C) Next Monday',             NULL, false),
  (currval('questions_id_seq'), '(D) In about two weeks',      NULL, false);

-- P4-G3: 美術館の音声ガイド
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule, transcript)
VALUES
  (7, 'Questions 1-3 refer to the following talk.',
   '/audio/toeic_part4_q3.mp3', NULL, NULL, NULL,
   'Welcome to the Harrington Museum of Art. We are delighted to have you join us today. Our current special exhibit, "Voices of the Neighborhood," features the works of twelve talented artists who all live and work right here in our local community. Each piece in the exhibit reflects the artists'' personal experiences and connection to this city. As you explore the galleries, you will find a short biography of each artist on the wall beside their work. We ask that you refrain from using flash photography, as it can cause long-term damage to the artwork. Non-flash photography is welcome. If you have any questions, our staff members, identifiable by their blue lanyards, are happy to assist you. Enjoy your visit.');

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'Where would this talk most likely be heard?',
   'The speaker welcomes visitors and describes artworks on display, indicating this is a museum audio guide.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) At a public library',   NULL, false),
  (currval('questions_id_seq'), '(B) At a museum',           NULL, true),
  (currval('questions_id_seq'), '(C) At an art school',      NULL, false),
  (currval('questions_id_seq'), '(D) At a theater',          NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'What is special about the current exhibit?',
   'The speaker highlights that the exhibit exclusively features works by artists from the local community.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) It features works by local artists',       NULL, true),
  (currval('questions_id_seq'), '(B) It is the largest exhibit in the country', NULL, false),
  (currval('questions_id_seq'), '(C) It is free of charge to all visitors',     NULL, false),
  (currval('questions_id_seq'), '(D) It includes interactive digital displays', NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What are visitors asked to refrain from doing?',
   'The speaker asks visitors not to use flash photography as it can damage the artwork.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Taking photographs',              NULL, false),
  (currval('questions_id_seq'), '(B) Using flash photography',         NULL, true),
  (currval('questions_id_seq'), '(C) Leaving bags at the entrance',    NULL, false),
  (currval('questions_id_seq'), '(D) Purchasing a guidebook',          NULL, false);

-- P4-G4: 社内リモートワーク方針アナウンス
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule, transcript)
VALUES
  (7, 'Questions 1-3 refer to the following talk.',
   '/audio/toeic_part4_q4.mp3', NULL, NULL, NULL,
   'Good afternoon, everyone. I have an important update regarding our company''s remote work policy. Following a review by senior management, we will be implementing changes to the current guidelines, effective from the beginning of next month. Under the updated policy, full-time employees will be permitted to work remotely for up to two days per week. To apply for remote work days, you will need to submit a formal request form to the HR department at least one week in advance. The form is available on the company intranet under the HR section. Please note that remote work arrangements are subject to manager approval and may vary by team. More details will be shared via email later this week. Thank you.');

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What is the announcement mainly about?',
   'The speaker explains updates to the company''s remote work guidelines that will affect all employees.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) A new office location',               NULL, false),
  (currval('questions_id_seq'), '(B) Changes to the remote work policy',   NULL, true),
  (currval('questions_id_seq'), '(C) An upcoming company event',           NULL, false),
  (currval('questions_id_seq'), '(D) New employee benefit packages',       NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'When will the new policy take effect?',
   'The speaker states the updated policy will be implemented starting from the beginning of next month.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Immediately',                    NULL, false),
  (currval('questions_id_seq'), '(B) At the beginning of next month', NULL, true),
  (currval('questions_id_seq'), '(C) At the start of next year',      NULL, false),
  (currval('questions_id_seq'), '(D) After a 90-day review period',   NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What are employees asked to do?',
   'The speaker instructs employees to submit a formal request form to the HR department to apply for remote work days.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Submit a request form to HR',            NULL, true),
  (currval('questions_id_seq'), '(B) Attend a mandatory training session',    NULL, false),
  (currval('questions_id_seq'), '(C) Update their weekly work schedules',     NULL, false),
  (currval('questions_id_seq'), '(D) Speak directly with their managers',     NULL, false);

-- P4-G5: フィットネスジムのラジオ広告
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule, transcript)
VALUES
  (7, 'Questions 1-3 refer to the following advertisement.',
   '/audio/toeic_part4_q5.mp3', NULL, NULL, NULL,
   'Are you looking to get fit and feel great this year? Then come and check out Peak Performance Fitness Center — the city''s newest and most modern gym. We offer state-of-the-art equipment, a heated swimming pool, group fitness classes, and personal training sessions with certified coaches. Whether you''re a beginner or an experienced athlete, we have something for everyone. For a limited time, new members can sign up for just $30 a month — that''s 40 percent off our regular rate. This offer is only available until the end of this month, so don''t miss out. Visit us at 88 Westfield Road or go to peakperformancefitness.com to learn more and sign up today.');

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What is being advertised?',
   'The speaker promotes a newly opened fitness center, describing its facilities and membership options.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) A sports equipment store',    NULL, false),
  (currval('questions_id_seq'), '(B) A fitness center',            NULL, true),
  (currval('questions_id_seq'), '(C) A health food restaurant',    NULL, false),
  (currval('questions_id_seq'), '(D) A yoga studio',               NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'What special offer is mentioned in the advertisement?',
   'The speaker announces that new members who sign up this month will receive the first month of membership free.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) A free one-month membership',          NULL, true),
  (currval('questions_id_seq'), '(B) A 50% discount on all equipment',      NULL, false),
  (currval('questions_id_seq'), '(C) Free personal training sessions',      NULL, false),
  (currval('questions_id_seq'), '(D) A two-for-one membership deal',        NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'How can listeners get more information?',
   'The speaker directs listeners to visit the fitness center''s website for full details on membership plans.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) By visiting the website',          NULL, true),
  (currval('questions_id_seq'), '(B) By calling a phone number',        NULL, false),
  (currval('questions_id_seq'), '(C) By stopping by in person',         NULL, false),
  (currval('questions_id_seq'), '(D) By sending an email inquiry',      NULL, false);

-- P4-G6: 航空会社の機内アナウンス
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule, transcript)
VALUES
  (7, 'Questions 1-3 refer to the following announcement.',
   '/audio/toeic_part4_q6.mp3', NULL, NULL, NULL,
   'Ladies and gentlemen, on behalf of Captain Morris and the entire crew, welcome aboard Horizon Airlines Flight 248 to Vancouver. We are currently number three in line for takeoff and expect to be airborne in approximately ten minutes. Our flight time today will be two hours and forty-five minutes, and we anticipate an on-time arrival at Vancouver International Airport. Once we reach cruising altitude, our cabin crew will begin beverage and snack service. Please ensure that your seatbelts are fastened and that your carry-on luggage is stored in the overhead compartment or under the seat in front of you. Electronic devices must be switched to airplane mode at this time. We hope you enjoy the flight. Thank you for choosing Horizon Airlines.');

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'Where is the announcement being made?',
   'The speaker welcomes passengers, mentions the crew and boarding procedures, indicating this is an in-flight announcement.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) At an airport gate',       NULL, false),
  (currval('questions_id_seq'), '(B) On an airplane',           NULL, true),
  (currval('questions_id_seq'), '(C) At a train station',       NULL, false),
  (currval('questions_id_seq'), '(D) In an airport lounge',     NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'How long will the flight take?',
   'The speaker states that the flight time will be two hours and forty-five minutes.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) One hour and fifteen minutes',     NULL, false),
  (currval('questions_id_seq'), '(B) Two hours and forty-five minutes', NULL, true),
  (currval('questions_id_seq'), '(C) Three hours and ten minutes',      NULL, false),
  (currval('questions_id_seq'), '(D) Four hours',                       NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What are passengers asked to do at this time?',
   'The speaker instructs passengers to switch their electronic devices to airplane mode.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Turn off all electronic devices',           NULL, false),
  (currval('questions_id_seq'), '(B) Switch devices to airplane mode',           NULL, true),
  (currval('questions_id_seq'), '(C) Move their carry-on bags to the overhead compartment', NULL, false),
  (currval('questions_id_seq'), '(D) Order a meal from the cabin crew',          NULL, false);

-- P4-G7: 公共図書館の閉館アナウンス
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule, transcript)
VALUES
  (7, 'Questions 1-3 refer to the following announcement.',
   '/audio/toeic_part4_q7.mp3', NULL, NULL, NULL,
   'Attention, Maplewood Public Library patrons. The library will be closing in fifteen minutes. Please begin returning any books or materials you have been using to the shelves or to the returns desk near the main entrance. If you are checking out items today, please proceed to the circulation desk now, as the checkout system will be shut down in ten minutes. We also want to remind you that the library will be closed this coming Saturday for a staff development day. Normal hours will resume on Sunday. Our upcoming events calendar, including details about next month''s reading club and children''s story time sessions, is available at the front desk and on our website. We look forward to seeing you again soon.');

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'Where is this announcement being made?',
   'The speaker addresses library patrons and mentions books, the circulation desk, and library hours — all indicators of a public library.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) At a bookstore',          NULL, false),
  (currval('questions_id_seq'), '(B) At a public library',     NULL, true),
  (currval('questions_id_seq'), '(C) At a school',             NULL, false),
  (currval('questions_id_seq'), '(D) At a community center',   NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'Why will the library be closed on Saturday?',
   'The speaker mentions that the library will be closed this coming Saturday for a staff development day.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) For renovations',                  NULL, false),
  (currval('questions_id_seq'), '(B) For a public holiday',             NULL, false),
  (currval('questions_id_seq'), '(C) For a staff development day',      NULL, true),
  (currval('questions_id_seq'), '(D) For a special members-only event', NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'Where can patrons find information about upcoming events?',
   'The speaker says the events calendar is available at the front desk and on the library website.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) By calling the library',              NULL, false),
  (currval('questions_id_seq'), '(B) At the front desk or on the website', NULL, true),
  (currval('questions_id_seq'), '(C) In the local newspaper',              NULL, false),
  (currval('questions_id_seq'), '(D) By asking a librarian directly',      NULL, false);

-- P4-G8: ソフトウェア製品のラジオ広告
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule, transcript)
VALUES
  (7, 'Questions 1-3 refer to the following advertisement.',
   '/audio/toeic_part4_q8.mp3', NULL, NULL, NULL,
   'Tired of juggling multiple apps to manage your busy schedule? Introducing OrganizePro — the all-in-one productivity app designed for professionals on the go. With OrganizePro, you can manage your calendar, track tasks, set reminders, and collaborate with your team all in one place. Our intelligent scheduling assistant automatically finds the best meeting times based on everyone''s availability, saving you hours every week. OrganizePro is available for iOS and Android and syncs seamlessly across all your devices. Download the app for free today and enjoy a 30-day premium trial with no credit card required. After the trial, premium plans start at just $9.99 per month. Visit organizepro.com to get started.');

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What type of product is being advertised?',
   'The speaker describes a productivity app for managing schedules, tasks, and team collaboration.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) A calendar planner book',          NULL, false),
  (currval('questions_id_seq'), '(B) A productivity application',       NULL, true),
  (currval('questions_id_seq'), '(C) A project management service',     NULL, false),
  (currval('questions_id_seq'), '(D) A new smartphone model',           NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'What does the intelligent scheduling assistant do?',
   'The speaker says the assistant automatically finds the best meeting times based on everyone''s availability.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) It sends reminders for deadlines',                              NULL, false),
  (currval('questions_id_seq'), '(B) It finds the best meeting times based on availability',         NULL, true),
  (currval('questions_id_seq'), '(C) It automatically responds to emails',                           NULL, false),
  (currval('questions_id_seq'), '(D) It creates weekly reports for managers',                        NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What is offered to new users at no initial cost?',
   'The speaker states that users can download the app for free and enjoy a 30-day premium trial with no credit card required.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) A lifetime free subscription',       NULL, false),
  (currval('questions_id_seq'), '(B) A 30-day free premium trial',        NULL, true),
  (currval('questions_id_seq'), '(C) A 50% discount on the first year',   NULL, false),
  (currval('questions_id_seq'), '(D) Free customer support for one month', NULL, false);

-- P4-G9: 会社の自動音声応答メッセージ
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule, transcript)
VALUES
  (7, 'Questions 1-3 refer to the following recorded message.',
   '/audio/toeic_part4_q9.mp3', NULL, NULL, NULL,
   'Thank you for calling Greenfield Solutions. Our office hours are Monday through Friday, nine A.M. to six P.M. We are currently closed. If you are calling about a billing inquiry, please press one. For technical support, please press two. For sales inquiries, please press three. To speak with our receptionist during business hours, please press zero. You may also visit our website at greenfieldsolutions.com, where you can submit a support ticket, browse our product catalog, or schedule a consultation with one of our specialists. If you would like to leave a message, please press four after the tone. We aim to return all calls within one business day. Thank you for your patience.');

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What type of message is this?',
   'The speaker provides automated menu options for callers, indicating this is a company phone system recording.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) A voicemail from a customer',               NULL, false),
  (currval('questions_id_seq'), '(B) An automated phone system message',         NULL, true),
  (currval('questions_id_seq'), '(C) A live call with a receptionist',           NULL, false),
  (currval('questions_id_seq'), '(D) A company training recording',              NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'What should a caller press to reach technical support?',
   'The speaker states that callers should press two for technical support.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Press one',   NULL, false),
  (currval('questions_id_seq'), '(B) Press two',   NULL, true),
  (currval('questions_id_seq'), '(C) Press three', NULL, false),
  (currval('questions_id_seq'), '(D) Press four',  NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What can callers do on the company website?',
   'The speaker says visitors can submit a support ticket, browse the product catalog, or schedule a consultation on the website.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Apply for a job opening',               NULL, false),
  (currval('questions_id_seq'), '(B) Schedule a consultation with a specialist', NULL, true),
  (currval('questions_id_seq'), '(C) Download product manuals',              NULL, false),
  (currval('questions_id_seq'), '(D) Track the status of their shipment',    NULL, false);

-- P4-G10: 市の観光ツアーガイドトーク
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule, transcript)
VALUES
  (7, 'Questions 1-3 refer to the following talk.',
   '/audio/toeic_part4_q10.mp3', NULL, NULL, NULL,
   'Welcome, everyone, to the Riverside City Historical Walking Tour. My name is Daniel, and I will be your guide for the next ninety minutes. Today, we will be exploring the city''s historic downtown district, visiting landmarks dating back over 200 years. Our first stop will be the old City Hall building, where you''ll learn about the founding of Riverside City in the early 1800s. From there, we''ll walk along Heritage Street, known for its well-preserved Victorian architecture. Our tour ends at Riverside Park, where you are welcome to enjoy the rest of the afternoon at your own pace. Please stay with the group and feel free to ask me questions at any point during the tour. Photography is encouraged throughout. Let''s get started.');

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What is the purpose of this talk?',
   'The speaker introduces himself as a tour guide and describes the historical walking tour the group is about to take.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) To announce the opening of a museum',      NULL, false),
  (currval('questions_id_seq'), '(B) To introduce a historical walking tour',   NULL, true),
  (currval('questions_id_seq'), '(C) To explain the history of architecture',   NULL, false),
  (currval('questions_id_seq'), '(D) To promote tourism in a foreign country',  NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'What will the group see first?',
   'The speaker says the first stop will be the old City Hall building.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Heritage Street',           NULL, false),
  (currval('questions_id_seq'), '(B) The old City Hall building', NULL, true),
  (currval('questions_id_seq'), '(C) Riverside Park',            NULL, false),
  (currval('questions_id_seq'), '(D) A Victorian museum',        NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What are participants told they may do throughout the tour?',
   'The speaker encourages photography at any point during the tour.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Take photographs',                NULL, true),
  (currval('questions_id_seq'), '(B) Leave the group at any time',     NULL, false),
  (currval('questions_id_seq'), '(C) Use audio guides',                NULL, false),
  (currval('questions_id_seq'), '(D) Purchase souvenirs along the way', NULL, false);

-- ----------------------------------------
-- Part 5: 短文穴埋め（独立問題）
-- ----------------------------------------

-- P5-1
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 1, 'choice', 1, 1,
   'All employees are required to submit their reports ------- the end of each month.',
   'by the end of ～ は「～の終わりまでに」という意味の定型表現。前置詞 by が正解。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) at',   NULL, false),
  (currval('questions_id_seq'), '(B) by',   NULL, true),
  (currval('questions_id_seq'), '(C) on',   NULL, false),
  (currval('questions_id_seq'), '(D) from', NULL, false);

-- P5-2
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 2, 'choice', 1, 1,
   'Ms. Yamada is ------- for coordinating all international shipments.',
   '"be responsible for" は「〜の責任がある」という定型表現。be動詞の後ろには形容詞が入るため responsible が正解。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) responsible',   NULL, true),
  (currval('questions_id_seq'), '(B) responsibility', NULL, false),
  (currval('questions_id_seq'), '(C) responsibly',   NULL, false),
  (currval('questions_id_seq'), '(D) respond',        NULL, false);

-- P5-3
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 3, 'choice', 1, 1,
   'The marketing team ------- the new campaign strategy since last month.',
   '"since last month" は現在完了（進行形）の目印。過去から現在まで継続している動作を表す has been developing が正解。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) develop',              NULL, false),
  (currval('questions_id_seq'), '(B) is developing',        NULL, false),
  (currval('questions_id_seq'), '(C) has been developing',  NULL, true),
  (currval('questions_id_seq'), '(D) had developed',        NULL, false);

-- P5-4
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 4, 'choice', 1, 1,
   'Please submit your ------- for the position by Friday.',
   '所有格 "your" の後ろには名詞が入る。"apply"（動詞）、"applicable"（形容詞）は不可。「申請書」を意味する名詞 application が正解。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) apply',        NULL, false),
  (currval('questions_id_seq'), '(B) applicant',    NULL, false),
  (currval('questions_id_seq'), '(C) applicable',   NULL, false),
  (currval('questions_id_seq'), '(D) application',  NULL, true);

-- P5-5
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 5, 'choice', 1, 1,
   '------- the heavy rain, the outdoor ceremony was held as planned.',
   '空欄の後ろが名詞句（"the heavy rain"）なので前置詞が必要。"Although" は接続詞で節が続く。「〜にもかかわらず」を意味する前置詞 despite が正解。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Because of', NULL, false),
  (currval('questions_id_seq'), '(B) Despite',    NULL, true),
  (currval('questions_id_seq'), '(C) Although',   NULL, false),
  (currval('questions_id_seq'), '(D) Therefore',  NULL, false);

-- P5-6
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 6, 'choice', 1, 1,
   'The manager reviewed the quarterly report ------- before submitting it to the board.',
   '主語（the manager）が自ら行為を行ったことを強調するには再帰代名詞を使う。himself が正解。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) him',     NULL, false),
  (currval('questions_id_seq'), '(B) his',     NULL, false),
  (currval('questions_id_seq'), '(C) himself', NULL, true),
  (currval('questions_id_seq'), '(D) he',      NULL, false);

-- P5-7
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 7, 'choice', 1, 1,
   'Each of the employees ------- required to complete the online safety training.',
   '"Each of ＋ 複数名詞" は単数扱い。動詞は三人称単数の is を使う。is required が正解。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) are',      NULL, false),
  (currval('questions_id_seq'), '(B) is',       NULL, true),
  (currval('questions_id_seq'), '(C) were',     NULL, false),
  (currval('questions_id_seq'), '(D) have been', NULL, false);

-- P5-8
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 8, 'choice', 1, 1,
   '------- the project was completed on time, the client was not entirely satisfied with the results.',
   '前半（時間通り完了）と後半（満足していない）が逆接の関係。「〜だけれども」を意味する接続詞 although が正解。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Because',  NULL, false),
  (currval('questions_id_seq'), '(B) Since',    NULL, false),
  (currval('questions_id_seq'), '(C) Although', NULL, true),
  (currval('questions_id_seq'), '(D) So that',  NULL, false);

-- P5-9
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 9, 'choice', 1, 1,
   'The board of directors has decided to ------- the annual shareholders'' meeting until next month.',
   '"until next month" から会議を来月まで延期すると判断できる。「延期する」を意味する postpone が正解。cancel（中止）とは異なる。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) cancel',   NULL, false),
  (currval('questions_id_seq'), '(B) postpone', NULL, true),
  (currval('questions_id_seq'), '(C) schedule', NULL, false),
  (currval('questions_id_seq'), '(D) attend',   NULL, false);

-- P5-10
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 10, 'choice', 1, 1,
   'The new software update has ------- improved the system''s overall performance.',
   '動詞（improved）を修飾するには副詞が必要。"significant"（形容詞）は不可。「大幅に」を意味する副詞 significantly が正解。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) significant',   NULL, false),
  (currval('questions_id_seq'), '(B) significance',  NULL, false),
  (currval('questions_id_seq'), '(C) signify',       NULL, false),
  (currval('questions_id_seq'), '(D) significantly', NULL, true);

-- P5-11
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 11, 'choice', 1, 1,
   'All participants must register ------- the workshop to ensure a seat.',
   '「ワークショップの前に登録する」という文脈。"prior to" は「〜の前に」を意味する前置詞句で、後ろに名詞が続く。正解は prior to。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) prior to',      NULL, true),
  (currval('questions_id_seq'), '(B) instead of',    NULL, false),
  (currval('questions_id_seq'), '(C) in addition to', NULL, false),
  (currval('questions_id_seq'), '(D) according to',  NULL, false);

-- P5-12
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 12, 'choice', 1, 1,
   'The construction of the new headquarters ------- by the end of this year.',
   '建設は「完成させられる」という受動態が適切。主語は物（construction）なので能動の will complete は不自然。未来の受動態 will be completed が正解。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) will complete',      NULL, false),
  (currval('questions_id_seq'), '(B) will be completed',  NULL, true),
  (currval('questions_id_seq'), '(C) has completed',      NULL, false),
  (currval('questions_id_seq'), '(D) completes',          NULL, false);

-- P5-13
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 13, 'choice', 1, 1,
   'Employees who have worked here for more than five years are ------- for the long-service bonus.',
   '"be eligible for" は「〜の資格がある」という定型表現。制度や給付の受給資格を表す場合に使う。eligible が正解。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) suitable',   NULL, false),
  (currval('questions_id_seq'), '(B) available',  NULL, false),
  (currval('questions_id_seq'), '(C) capable',    NULL, false),
  (currval('questions_id_seq'), '(D) eligible',   NULL, true);

-- P5-14
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 14, 'choice', 1, 1,
   'The ------- of the new product exceeded all expectations.',
   '文の主語になる名詞が必要。"popular"（形容詞）・"popularly"（副詞）は主語になれない。「人気」を意味する名詞 popularity が正解。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) popular',     NULL, false),
  (currval('questions_id_seq'), '(B) popularity',  NULL, true),
  (currval('questions_id_seq'), '(C) popularly',   NULL, false),
  (currval('questions_id_seq'), '(D) popularize',  NULL, false);

-- P5-15
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 15, 'choice', 1, 1,
   '------- you contact the supplier before noon, the order may not arrive by Friday.',
   '「正午前に連絡しなければ〜」という否定条件を表す。"Unless"（〜しない限り）が正解。"Until" は時間の継続、"Once" は「一度〜すれば」、"Whether" は選択を表す。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Unless',  NULL, true),
  (currval('questions_id_seq'), '(B) Until',   NULL, false),
  (currval('questions_id_seq'), '(C) Once',    NULL, false),
  (currval('questions_id_seq'), '(D) Whether', NULL, false);

-- P5-16
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 16, 'choice', 1, 1,
   'The ------- of our employees directly impacts the company''s overall performance.',
   '文の主語になる名詞が必要。"productive"（形容詞）・"productively"（副詞）は主語になれない。「生産性」を意味する名詞 productivity が正解。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) productive',   NULL, false),
  (currval('questions_id_seq'), '(B) productively', NULL, false),
  (currval('questions_id_seq'), '(C) productivity', NULL, true),
  (currval('questions_id_seq'), '(D) produce',      NULL, false);

-- P5-17
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 17, 'choice', 1, 1,
   'Mr. Kim signed the contract ------- the entire sales team.',
   '"on behalf of" は「〜を代表して、〜の代理として」という定型表現。代理署名の文脈に最も適切。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) on behalf of',   NULL, true),
  (currval('questions_id_seq'), '(B) due to',         NULL, false),
  (currval('questions_id_seq'), '(C) along with',     NULL, false),
  (currval('questions_id_seq'), '(D) regardless of',  NULL, false);

-- P5-18
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 18, 'choice', 1, 1,
   'By the time the guests arrived, the hotel staff ------- all the rooms.',
   '"By the time ＋ 過去形" のパターンでは、それより先に完了した動作に過去完了形を使う。had prepared が正解。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) prepared',      NULL, false),
  (currval('questions_id_seq'), '(B) have prepared', NULL, false),
  (currval('questions_id_seq'), '(C) had prepared',  NULL, true),
  (currval('questions_id_seq'), '(D) will prepare',  NULL, false);

-- P5-19
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 19, 'choice', 1, 1,
   'The venue can ------- up to 500 guests for the annual conference.',
   '"accommodate" は「収容する、対応する」を意味する。ホテルや会場の定員を表す際の定番語。他の選択肢は意味が合わない。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) accommodate', NULL, true),
  (currval('questions_id_seq'), '(B) accumulate',  NULL, false),
  (currval('questions_id_seq'), '(C) accomplish',  NULL, false),
  (currval('questions_id_seq'), '(D) accompany',   NULL, false);

-- P5-20
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 20, 'choice', 1, 1,
   'The ------- of the new software system has been scheduled for next quarter.',
   '文の主語として「導入」という行為を表す名詞が必要。installer は「導入する人・ソフト」で意味が異なる。「導入・設置」を意味する名詞 installation が正解。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) installs',      NULL, false),
  (currval('questions_id_seq'), '(B) installed',     NULL, false),
  (currval('questions_id_seq'), '(C) installation',  NULL, true),
  (currval('questions_id_seq'), '(D) installer',     NULL, false);

-- P5-21
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 21, 'choice', 1, 1,
   'The event will be held outdoors ------- the weather is favorable.',
   '"provided that" は「〜という条件で」を表す接続詞。"in spite of" は前置詞句なので後ろに節は続かない。天気を条件にした文脈に provided that が正解。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) provided that',  NULL, true),
  (currval('questions_id_seq'), '(B) in order that',  NULL, false),
  (currval('questions_id_seq'), '(C) as well as',     NULL, false),
  (currval('questions_id_seq'), '(D) in spite of',    NULL, false);

-- P5-22
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 22, 'choice', 1, 1,
   'Attendance at the safety training session is ------- for all new employees.',
   '"mandatory" は「義務的な、必須の」を意味する。"optional"（任意）・"voluntary"（自発的）は義務を表さない。全員に参加を義務付ける文脈に mandatory が正解。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) optional',   NULL, false),
  (currval('questions_id_seq'), '(B) voluntary',  NULL, false),
  (currval('questions_id_seq'), '(C) mandatory',  NULL, true),
  (currval('questions_id_seq'), '(D) temporary',  NULL, false);

-- P5-23
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 23, 'choice', 1, 1,
   'Neither the manager nor the employees ------- informed about the policy change.',
   '"Neither A nor B ＋ 動詞" では、動詞は B（直近の名詞）に一致する。B＝employees（複数）なので were が正解。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) was',      NULL, false),
  (currval('questions_id_seq'), '(B) were',     NULL, true),
  (currval('questions_id_seq'), '(C) has been', NULL, false),
  (currval('questions_id_seq'), '(D) is',       NULL, false);

-- P5-24
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 24, 'choice', 1, 1,
   'The new conference room is ------- than the old one, allowing more participants.',
   '"than" の前には比較級が必要。"spacious" は原級、"most spacious" は最上級で不可。比較級 more spacious が正解。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) spacious',      NULL, false),
  (currval('questions_id_seq'), '(B) most spacious', NULL, false),
  (currval('questions_id_seq'), '(C) spaciously',    NULL, false),
  (currval('questions_id_seq'), '(D) more spacious', NULL, true);

-- P5-25
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 25, 'choice', 1, 1,
   'All vendors are expected to ------- the company''s strict quality standards.',
   '"comply with" は「〜を遵守する、従う」という表現。規則・基準に従う文脈で使う定番の動詞句。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) comply with', NULL, true),
  (currval('questions_id_seq'), '(B) agree on',    NULL, false),
  (currval('questions_id_seq'), '(C) refer to',    NULL, false),
  (currval('questions_id_seq'), '(D) apply for',   NULL, false);

-- P5-26
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 26, 'choice', 1, 1,
   'The expense report must be filed ------- the company''s financial regulations.',
   '"in accordance with" は「〜に従って、〜に基づいて」という表現。"with regard to" は「〜に関して」で意味が異なる。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) in accordance with', NULL, true),
  (currval('questions_id_seq'), '(B) with regard to',     NULL, false),
  (currval('questions_id_seq'), '(C) on account of',      NULL, false),
  (currval('questions_id_seq'), '(D) for the purpose of', NULL, false);

-- P5-27
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 27, 'choice', 1, 1,
   'If the shipment ------- by Friday, the client will cancel the order.',
   'if節（条件節）では未来のことでも現在形を使う。"will not arrive" は条件節では使えない。does not arrive が正解。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) does not arrive',  NULL, true),
  (currval('questions_id_seq'), '(B) will not arrive',  NULL, false),
  (currval('questions_id_seq'), '(C) has not arrived',  NULL, false),
  (currval('questions_id_seq'), '(D) did not arrive',   NULL, false);

-- P5-28
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 28, 'choice', 1, 1,
   'The company ------- a significant increase in sales during the upcoming holiday season.',
   '"anticipate" は「〜を予期する、見込む」を意味し、将来の出来事を期待する文脈に最も適切なビジネス語。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) celebrates',  NULL, false),
  (currval('questions_id_seq'), '(B) anticipates', NULL, true),
  (currval('questions_id_seq'), '(C) declines',    NULL, false),
  (currval('questions_id_seq'), '(D) postpones',   NULL, false);

-- P5-29
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 29, 'choice', 1, 1,
   'The project was completed ------- ahead of the original deadline.',
   '副詞 ahead を修飾するには副詞が必要。"considerable"（形容詞）・"considerately"（思いやりを持って）は意味が合わない。「かなり」を意味する副詞 considerably が正解。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) consider',       NULL, false),
  (currval('questions_id_seq'), '(B) considerable',   NULL, false),
  (currval('questions_id_seq'), '(C) considerately',  NULL, false),
  (currval('questions_id_seq'), '(D) considerably',   NULL, true);

-- P5-30
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (9, NULL, 30, 'choice', 1, 1,
   'Employees may work from home ------- they meet their weekly performance targets.',
   '"as long as" は「〜する限り」という条件を表す接続詞。目標達成を条件にリモートワークを許可する文脈に最も適切。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) as long as', NULL, true),
  (currval('questions_id_seq'), '(B) even if',    NULL, false),
  (currval('questions_id_seq'), '(C) so that',    NULL, false),
  (currval('questions_id_seq'), '(D) now that',   NULL, false);

-- ----------------------------------------
-- Part 6: 長文穴埋め（グループ問題）
-- ----------------------------------------

-- P6-G1: カンファレンス登録確認メール
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule)
VALUES
  (10, 'Questions 1-4 refer to the following email.

Dear Mr. Tanaka,

Thank you for your interest in our annual conference. We are pleased to confirm that your registration has been __(1)__. The event will take place on March 15 at the Grand Hotel.

Please note that the keynote speech will begin at 9:00 AM. All attendees are __(2)__ to arrive at least 30 minutes early. Light refreshments __(3)__ in the lobby before the opening session.

We look forward to __(4)__ you at the conference.

Best regards,
Sarah Johnson
Conference Coordinator',
  NULL, NULL, NULL, NULL);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'Choose the best word for blank (1).',
   'The context is about confirming a registration, so "accepted" is the correct choice.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) accepted',   NULL, true),
  (currval('questions_id_seq'), '(B) accepting',  NULL, false),
  (currval('questions_id_seq'), '(C) acceptance', NULL, false),
  (currval('questions_id_seq'), '(D) acceptable', NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'Choose the best word for blank (2).',
   'Attendees are "encouraged" to arrive early. This is a polite request, not an obligation.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) encouraged', NULL, true),
  (currval('questions_id_seq'), '(B) declined',   NULL, false),
  (currval('questions_id_seq'), '(C) permitted',  NULL, false),
  (currval('questions_id_seq'), '(D) assigned',   NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'Choose the best word for blank (3).',
   'Refreshments "will be served" is the correct passive future form.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) are serving',    NULL, false),
  (currval('questions_id_seq'), '(B) will be served', NULL, true),
  (currval('questions_id_seq'), '(C) have served',    NULL, false),
  (currval('questions_id_seq'), '(D) were serving',   NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 4, 'choice', 1, 1,
   'Choose the best word for blank (4).',
   '"look forward to" is followed by a gerund: "seeing".',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) see',    NULL, false),
  (currval('questions_id_seq'), '(B) seen',   NULL, false),
  (currval('questions_id_seq'), '(C) seeing', NULL, true),
  (currval('questions_id_seq'), '(D) saw',    NULL, false);

-- P6-G2: 製品リコール通知メール
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule)
VALUES
  (10, 'Questions 1-4 refer to the following email.

Dear Valued Customer,

We are writing to inform you that Model X200 coffee makers purchased between January and March have been __(1)__. The affected units may pose a safety risk due to a manufacturing defect.

We sincerely apologize for any __(2)__ this may cause. As a precaution, please stop using the appliance immediately. To receive a full refund or a replacement unit, please visit our website and complete the online __(3)__ form.

Our customer service team is __(4)__ to assist you throughout this process.

Best regards,
SafeHome Appliances',
  NULL, NULL, NULL, NULL);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'Choose the best word for blank (1).',
   '"recalled" は製品回収を意味し、製品の欠陥を理由に顧客に通知する文脈に最も適切。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) recalled',   NULL, true),
  (currval('questions_id_seq'), '(B) returned',   NULL, false),
  (currval('questions_id_seq'), '(C) collected',  NULL, false),
  (currval('questions_id_seq'), '(D) listed',     NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'Choose the best word for blank (2).',
   '"inconvenience" は「ご不便」を意味し、謝罪の定型表現 "apologize for any inconvenience" として最も自然。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) inconvenience', NULL, true),
  (currval('questions_id_seq'), '(B) damage',        NULL, false),
  (currval('questions_id_seq'), '(C) difficulty',    NULL, false),
  (currval('questions_id_seq'), '(D) mistake',       NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'Choose the best word for blank (3).',
   '製品回収の文脈で返金・交換を申請するフォーム → "return"（返品）が最も適切。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) application', NULL, false),
  (currval('questions_id_seq'), '(B) return',      NULL, true),
  (currval('questions_id_seq'), '(C) complaint',   NULL, false),
  (currval('questions_id_seq'), '(D) feedback',    NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 4, 'choice', 1, 1,
   'Choose the best word for blank (4).',
   '"available to assist" は「サポートできる状態にある」という定型表現。"ready" より丁寧でビジネス文書に適切。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) available', NULL, true),
  (currval('questions_id_seq'), '(B) ready',     NULL, false),
  (currval('questions_id_seq'), '(C) able',      NULL, false),
  (currval('questions_id_seq'), '(D) willing',   NULL, false);

-- P6-G3: 社内メモ（ドレスコード変更）
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule)
VALUES
  (10, 'Questions 1-4 refer to the following memo.

MEMORANDUM

To: All Staff
From: Human Resources Department
Re: Updated Dress Code Policy

Effective from next Monday, the company will be __(1)__ a new business casual dress code. This change has been made in response to employee feedback __(2)__ in our recent survey.

Employees are expected to dress in a professional yet comfortable manner. Clothing that is too __(3)__ or revealing will not be permitted in the workplace.

If you have any questions regarding the new policy, please do not hesitate to __(4)__ the HR department.',
  NULL, NULL, NULL, NULL);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'Choose the best word for blank (1).',
   '"implementing a new policy" は「新しい方針を導入・実施する」という最も自然な表現。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) implementing', NULL, true),
  (currval('questions_id_seq'), '(B) requiring',    NULL, false),
  (currval('questions_id_seq'), '(C) following',    NULL, false),
  (currval('questions_id_seq'), '(D) replacing',    NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'Choose the best word for blank (2).',
   '"feedback collected in our survey" は「調査で収集されたフィードバック」。collected は過去分詞で feedback を後置修飾する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) collected',  NULL, true),
  (currval('questions_id_seq'), '(B) reported',   NULL, false),
  (currval('questions_id_seq'), '(C) submitted',  NULL, false),
  (currval('questions_id_seq'), '(D) demanded',   NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'Choose the best word for blank (3).',
   '"too casual or revealing" はドレスコードの文脈で「カジュアルすぎる・露出が多い」服装を禁止する自然な表現。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) casual',      NULL, true),
  (currval('questions_id_seq'), '(B) comfortable', NULL, false),
  (currval('questions_id_seq'), '(C) colorful',    NULL, false),
  (currval('questions_id_seq'), '(D) formal',      NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 4, 'choice', 1, 1,
   'Choose the best word for blank (4).',
   '"do not hesitate to contact" は「遠慮なくご連絡ください」という丁寧な定型表現。ビジネス文書で広く使われる。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) contact', NULL, true),
  (currval('questions_id_seq'), '(B) inform',  NULL, false),
  (currval('questions_id_seq'), '(C) visit',   NULL, false),
  (currval('questions_id_seq'), '(D) consult', NULL, false);

-- P6-G4: マンション共用部改修お知らせ
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule)
VALUES
  (10, 'Questions 1-4 refer to the following notice.

NOTICE TO ALL RESIDENTS

The management of Greenview Apartments would like to inform you that the lobby and common areas will be __(1)__ renovation from March 10 to March 28.

During this period, residents are kindly asked to use the __(2)__ entrance on the east side of the building. We sincerely __(3)__ for any inconvenience this may cause.

The renovation is expected to greatly __(4)__ the appearance and safety of our shared spaces.

Management Office
Greenview Apartments',
  NULL, NULL, NULL, NULL);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'Choose the best word for blank (1).',
   '"undergoing renovation" は「改修工事中」を意味する定型表現。undergo は「（変化・工事などを）経験する」。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) undergoing', NULL, true),
  (currval('questions_id_seq'), '(B) having',     NULL, false),
  (currval('questions_id_seq'), '(C) receiving',  NULL, false),
  (currval('questions_id_seq'), '(D) starting',   NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'Choose the best word for blank (2).',
   '"alternative entrance" は「代替の入口」。工事中に通常の入口が使えない場合の誘導として最も適切な表現。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) alternative', NULL, true),
  (currval('questions_id_seq'), '(B) emergency',   NULL, false),
  (currval('questions_id_seq'), '(C) temporary',   NULL, false),
  (currval('questions_id_seq'), '(D) nearest',     NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'Choose the best word for blank (3).',
   '"We sincerely apologize for any inconvenience" はビジネス文書で最も標準的な謝罪の定型表現。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) apologize', NULL, true),
  (currval('questions_id_seq'), '(B) excuse',    NULL, false),
  (currval('questions_id_seq'), '(C) forgive',   NULL, false),
  (currval('questions_id_seq'), '(D) blame',     NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 4, 'choice', 1, 1,
   'Choose the best word for blank (4).',
   '"enhance the appearance and safety" は「外観と安全性を向上させる」。enhance は品質・価値の向上に使い improve より上品な表現。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) enhance', NULL, true),
  (currval('questions_id_seq'), '(B) damage',  NULL, false),
  (currval('questions_id_seq'), '(C) change',  NULL, false),
  (currval('questions_id_seq'), '(D) delay',   NULL, false);

-- ----------------------------------------
-- Part 7: 読解問題（グループ問題）
-- ----------------------------------------

-- P7-G1: オフィス改修通知
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule)
VALUES
  (11, 'Questions 1-2 refer to the following notice.

OFFICE RENOVATION NOTICE

Starting Monday, October 7, the third floor of the Riverside Office Building will undergo renovations. The work is expected to last approximately three weeks. During this period, employees assigned to the third floor will be temporarily relocated to the second floor.

Please pack your personal belongings by Friday, October 4. Moving boxes will be provided at the reception desk. IT support will be available on Monday morning to help reconnect your equipment.

We apologize for any inconvenience and appreciate your cooperation.

— Facilities Management',
  NULL, NULL, NULL, NULL);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What is the purpose of the notice?',
   'The notice informs employees about upcoming office renovations and temporary relocation.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) To announce a company merger',        NULL, false),
  (currval('questions_id_seq'), '(B) To inform about office renovations',  NULL, true),
  (currval('questions_id_seq'), '(C) To introduce new office rules',       NULL, false),
  (currval('questions_id_seq'), '(D) To advertise available office space', NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'What are employees asked to do by Friday?',
   'Employees are asked to pack their personal belongings by Friday, October 4.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Submit renovation requests',      NULL, false),
  (currval('questions_id_seq'), '(B) Move to a different building',    NULL, false),
  (currval('questions_id_seq'), '(C) Pack their personal belongings',  NULL, true),
  (currval('questions_id_seq'), '(D) Contact the IT department',       NULL, false);

-- P7-G2: 求人広告（3問）
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule)
VALUES
  (11, 'Questions 1-3 refer to the following advertisement.

JOB ADVERTISEMENT

Riverside Digital Solutions is seeking an experienced Project Manager to join our growing team in San Francisco.

Requirements:
- Minimum 5 years of project management experience
- PMP certification preferred
- Strong communication and leadership skills
- Proficiency in project management software

Responsibilities:
- Oversee multiple software development projects
- Coordinate with cross-functional teams
- Prepare and present progress reports to senior management
- Manage project budgets and timelines

We offer a competitive salary, comprehensive health benefits, and flexible working hours. Interested candidates should send their resume and cover letter to careers@riversidedigital.com by April 30.',
  NULL, NULL, NULL, NULL);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What type of company is advertising the position?',
   'The company name "Riverside Digital Solutions" and the job responsibilities involving software development indicate it is a technology company.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) A law firm',                  NULL, false),
  (currval('questions_id_seq'), '(B) A technology company',        NULL, true),
  (currval('questions_id_seq'), '(C) A financial institution',     NULL, false),
  (currval('questions_id_seq'), '(D) A healthcare provider',       NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'According to the advertisement, what is preferred but NOT required?',
   'The advertisement lists PMP certification as "preferred," while the other items listed (5 years of experience, communication skills, software proficiency) are stated as requirements.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Five years of experience',              NULL, false),
  (currval('questions_id_seq'), '(B) Strong communication skills',           NULL, false),
  (currval('questions_id_seq'), '(C) PMP certification',                     NULL, true),
  (currval('questions_id_seq'), '(D) Proficiency in project management software', NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What should interested applicants do?',
   'The advertisement states that candidates should send their resume and cover letter to the company email address by April 30.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Call the HR department',                    NULL, false),
  (currval('questions_id_seq'), '(B) Visit the company website',                 NULL, false),
  (currval('questions_id_seq'), '(C) Submit a resume and cover letter by email', NULL, true),
  (currval('questions_id_seq'), '(D) Attend an open interview session',          NULL, false);

-- P7-G3: 注文遅延への返信メール（3問）
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule)
VALUES
  (11, 'Questions 1-3 refer to the following email.

Subject: Response to Your Recent Feedback

Dear Ms. Thompson,

Thank you for taking the time to share your experience with us. We are sorry to hear that your recent order arrived later than expected.

After reviewing your case, we found that the delay was caused by an unexpected issue with our shipping partner. We understand how frustrating this must have been, especially since the items were intended as gifts.

As an apology, we would like to offer you a 20% discount on your next purchase. This discount code, THANKYOU20, is valid for the next 30 days and can be applied at checkout.

We value your business and hope to have the opportunity to serve you again.

Sincerely,
Customer Support Team
ShopEasy Online Store',
  NULL, NULL, NULL, NULL);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'Why was this email sent?',
   'The email begins with "We are sorry to hear that your recent order arrived later than expected," indicating it is a response to a customer complaint about a delayed order.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) To confirm a new order',              NULL, false),
  (currval('questions_id_seq'), '(B) To respond to a customer complaint',  NULL, true),
  (currval('questions_id_seq'), '(C) To announce a sale event',            NULL, false),
  (currval('questions_id_seq'), '(D) To request payment',                  NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'What caused the delivery delay?',
   'The email states "the delay was caused by an unexpected issue with our shipping partner."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) An error in the customer''s order',    NULL, false),
  (currval('questions_id_seq'), '(B) A problem with the shipping partner',  NULL, true),
  (currval('questions_id_seq'), '(C) Bad weather conditions',               NULL, false),
  (currval('questions_id_seq'), '(D) High demand for the product',          NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What is being offered to the customer as an apology?',
   'The email offers "a 20% discount on your next purchase" using the code THANKYOU20, valid for 30 days.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) A full refund',                          NULL, false),
  (currval('questions_id_seq'), '(B) A free replacement item',                NULL, false),
  (currval('questions_id_seq'), '(C) A discount on a future purchase',        NULL, true),
  (currval('questions_id_seq'), '(D) Free express shipping on the next order', NULL, false);

-- P7-G4: スタートアップ資金調達のニュース記事（4問）
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule)
VALUES
  (11, 'Questions 1-4 refer to the following article.

TECH STARTUP SECURES MAJOR FUNDING

UrbanMobility, a San Francisco-based startup specializing in electric scooter sharing services, announced yesterday that it has secured $45 million in Series B funding. The investment was led by Green Future Capital, with additional contributions from three other venture capital firms.

The company, founded just three years ago by Sarah Chen and James Park, currently operates in twelve cities across North America. The new funding will be used primarily to expand operations to fifteen additional cities in Europe by the end of next year.

"This investment will allow us to bring sustainable urban transportation to millions more people," said CEO Sarah Chen in a press statement.

UrbanMobility reported a 200% increase in ridership over the past year and expects to reach profitability within eighteen months.',
  NULL, NULL, NULL, NULL);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What does UrbanMobility specialize in?',
   'The article describes UrbanMobility as "a startup specializing in electric scooter sharing services."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Electric vehicle manufacturing',        NULL, false),
  (currval('questions_id_seq'), '(B) Electric scooter sharing services',     NULL, true),
  (currval('questions_id_seq'), '(C) Public transportation consulting',      NULL, false),
  (currval('questions_id_seq'), '(D) Urban planning software',               NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'How much funding did the company secure?',
   'The article states the company "has secured $45 million in Series B funding."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) $15 million', NULL, false),
  (currval('questions_id_seq'), '(B) $30 million', NULL, false),
  (currval('questions_id_seq'), '(C) $45 million', NULL, true),
  (currval('questions_id_seq'), '(D) $60 million', NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What does the company plan to do with the new funding?',
   'The article says "the new funding will be used primarily to expand operations to fifteen additional cities in Europe."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Develop a new type of vehicle',   NULL, false),
  (currval('questions_id_seq'), '(B) Expand to cities in Europe',      NULL, true),
  (currval('questions_id_seq'), '(C) Open a manufacturing plant',      NULL, false),
  (currval('questions_id_seq'), '(D) Acquire a competing company',     NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 4, 'choice', 1, 1,
   'What does the article say about the company''s ridership?',
   'The article states "UrbanMobility reported a 200% increase in ridership over the past year."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) It doubled over the past year',               NULL, false),
  (currval('questions_id_seq'), '(B) It tripled over the past year',               NULL, false),
  (currval('questions_id_seq'), '(C) It increased by 200% over the past year',     NULL, true),
  (currval('questions_id_seq'), '(D) It reached one million users',                NULL, false);

-- P7-G5: 予算会議の社内メモ（3問）
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule)
VALUES
  (11, 'Questions 1-3 refer to the following memo.

INTERNAL MEMORANDUM

To: All Department Managers
From: Office of the President
Date: March 5
Re: Annual Budget Review Meeting

Please be advised that the annual budget review meeting will be held on Friday, March 20 at 10:00 A.M. in the Main Conference Room on the fourth floor.

All department managers are required to attend and must come prepared with a summary of their department''s expenditures for the current fiscal year, along with a proposed budget for the upcoming year.

Presentations should be no longer than fifteen minutes per department. Please submit your presentation slides to the president''s office by Wednesday, March 18 at 5:00 P.M.

If you are unable to attend due to an unavoidable conflict, please inform Ms. Rodriguez in the president''s office as soon as possible so that alternative arrangements can be made.',
  NULL, NULL, NULL, NULL);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What is the purpose of the memorandum?',
   'The subject line "Re: Annual Budget Review Meeting" and the body of the memo indicate that its purpose is to notify managers about an upcoming budget review meeting.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) To announce a company restructuring',        NULL, false),
  (currval('questions_id_seq'), '(B) To notify managers of a budget meeting',     NULL, true),
  (currval('questions_id_seq'), '(C) To report the company''s annual revenue',    NULL, false),
  (currval('questions_id_seq'), '(D) To introduce a new department head',         NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'What are managers asked to submit before the meeting?',
   'The memo states "Please submit your presentation slides to the president''s office by Wednesday, March 18."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) A list of department employees',   NULL, false),
  (currval('questions_id_seq'), '(B) A financial report for the board', NULL, false),
  (currval('questions_id_seq'), '(C) Presentation slides',             NULL, true),
  (currval('questions_id_seq'), '(D) A budget approval form',          NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What should managers do if they cannot attend the meeting?',
   'The memo says "please inform Ms. Rodriguez in the president''s office as soon as possible so that alternative arrangements can be made."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Send a representative in their place',     NULL, false),
  (currval('questions_id_seq'), '(B) Submit a written report instead',          NULL, false),
  (currval('questions_id_seq'), '(C) Contact Ms. Rodriguez',                    NULL, true),
  (currval('questions_id_seq'), '(D) Reschedule directly with the president',   NULL, false);

-- P7-G6: オンラインショップ返品ポリシー（3問）
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule)
VALUES
  (11, 'Questions 1-3 refer to the following information.

RETURN POLICY — Maple Goods Online Store

At Maple Goods, customer satisfaction is our top priority. If you are not completely satisfied with your purchase, you may return most items within 30 days of delivery for a full refund or exchange.

To initiate a return, please visit our website and complete the online return request form. Once your request is approved, you will receive a prepaid shipping label via email within two business days. Items must be returned in their original packaging and in unused condition.

Please note that the following items are non-returnable: personalized products, digital downloads, and perishable goods.

Refunds will be processed within 5–7 business days after we receive and inspect the returned item. For exchanges, the new item will be shipped once the original item is received at our warehouse.

If you have any questions, please contact our customer support team at support@maplegoods.com.',
  NULL, NULL, NULL, NULL);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What must a customer do to start a return?',
   'The policy states: "please visit our website and complete the online return request form."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Call the customer support team',          NULL, false),
  (currval('questions_id_seq'), '(B) Fill out a form on the website',          NULL, true),
  (currval('questions_id_seq'), '(C) Mail the item with a handwritten note',   NULL, false),
  (currval('questions_id_seq'), '(D) Visit the nearest retail location',       NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'Which of the following items CANNOT be returned?',
   'The policy lists non-returnable items: "personalized products, digital downloads, and perishable goods."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) A kitchen appliance',      NULL, false),
  (currval('questions_id_seq'), '(B) A digital download',       NULL, true),
  (currval('questions_id_seq'), '(C) A clothing item',          NULL, false),
  (currval('questions_id_seq'), '(D) A piece of furniture',     NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'How long does it take to receive a refund after the item is returned?',
   'The policy states: "Refunds will be processed within 5–7 business days after we receive and inspect the returned item."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Two business days',          NULL, false),
  (currval('questions_id_seq'), '(B) 30 days',                    NULL, false),
  (currval('questions_id_seq'), '(C) 5 to 7 business days',       NULL, true),
  (currval('questions_id_seq'), '(D) Immediately upon receipt',   NULL, false);

-- P7-G7: レストラン新規オープンのお知らせ広告（2問）
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule)
VALUES
  (11, 'Questions 1-2 refer to the following advertisement.

NOW OPEN — SAFFRON KITCHEN

Authentic Mediterranean Cuisine in the Heart of Downtown

Saffron Kitchen is proud to announce the grand opening of our newest location at 45 Harbor Street. Join us for a dining experience inspired by the flavors of Greece, Turkey, and Lebanon.

GRAND OPENING SPECIAL
Enjoy 20% off your entire bill every day during our opening week (March 3–9).
Valid for dine-in only. Reservations recommended.

Hours of Operation:
Monday–Friday: 11:00 A.M. – 10:00 P.M.
Saturday–Sunday: 10:00 A.M. – 11:00 P.M.

To make a reservation, call us at (555) 302-8841 or visit www.saffronkitchen.com.',
  NULL, NULL, NULL, NULL);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What type of food does Saffron Kitchen serve?',
   'The advertisement describes "Authentic Mediterranean Cuisine inspired by the flavors of Greece, Turkey, and Lebanon."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) East Asian cuisine',        NULL, false),
  (currval('questions_id_seq'), '(B) Mediterranean cuisine',     NULL, true),
  (currval('questions_id_seq'), '(C) South American cuisine',    NULL, false),
  (currval('questions_id_seq'), '(D) Traditional American food', NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'What is indicated about the grand opening special?',
   'The ad states the discount is "Valid for dine-in only."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) It applies to takeout orders',            NULL, false),
  (currval('questions_id_seq'), '(B) It is available only on weekends',        NULL, false),
  (currval('questions_id_seq'), '(C) It is for dine-in customers only',        NULL, true),
  (currval('questions_id_seq'), '(D) It requires a coupon code',               NULL, false);

-- P7-G8: 出張費精算の社内メール（3問）
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule)
VALUES
  (11, 'Questions 1-3 refer to the following email.

To: All Staff
From: Finance Department
Subject: Updated Travel Expense Reimbursement Procedure
Date: April 7

Dear Team,

Please be advised that effective May 1, the procedure for submitting travel expense reimbursements will be updated.

Previously, employees were required to submit paper receipts along with a printed reimbursement form to the Finance Department within 10 business days of returning from a trip. Under the new system, all submissions must be made through the company''s online portal, ExpenseTrack. Receipts can be uploaded as scanned images or photos taken with a smartphone.

The deadline for submission remains the same: within 10 business days of your return. However, reimbursements will now be processed faster — typically within three business days of submission approval, compared to the previous five business days.

Please ensure you have registered for an ExpenseTrack account before May 1. If you need assistance, contact the Finance Department at finance@company.com.

Thank you for your cooperation.',
  NULL, NULL, NULL, NULL);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What is the main purpose of this email?',
   'The email announces an update to the travel expense reimbursement procedure, effective May 1.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) To remind employees of the expense deadline',        NULL, false),
  (currval('questions_id_seq'), '(B) To announce a change in reimbursement procedure',    NULL, true),
  (currval('questions_id_seq'), '(C) To introduce a new travel booking system',           NULL, false),
  (currval('questions_id_seq'), '(D) To request outstanding receipts from employees',     NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'What is one advantage of the new reimbursement system?',
   'The email states reimbursements will be "processed faster — typically within three business days," compared to the previous five.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Employees no longer need to submit receipts',        NULL, false),
  (currval('questions_id_seq'), '(B) The submission deadline has been extended',          NULL, false),
  (currval('questions_id_seq'), '(C) Reimbursements are processed more quickly',          NULL, true),
  (currval('questions_id_seq'), '(D) Paper forms are still accepted as a backup option',  NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What are employees asked to do before May 1?',
   'The email says: "Please ensure you have registered for an ExpenseTrack account before May 1."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Submit all pending expense reports',              NULL, false),
  (currval('questions_id_seq'), '(B) Attend a training session on ExpenseTrack',       NULL, false),
  (currval('questions_id_seq'), '(C) Register for an ExpenseTrack account',            NULL, true),
  (currval('questions_id_seq'), '(D) Print and submit any remaining paper forms',      NULL, false);

-- P7-G9: 書評・レビュー投稿（3問）
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule)
VALUES
  (11, 'Questions 1-3 refer to the following review.

★★★★☆  4/5 stars
Reviewed by: C. Watanabe
Posted on: March 22

Title: "The Art of Quiet Leadership" by M. Holloway

I picked up this book after a colleague recommended it, and I was not disappointed. Holloway argues that the most effective leaders are not necessarily the loudest voices in the room, but rather those who listen deeply, build trust quietly, and inspire action through consistent example rather than charisma.

The first half of the book is packed with case studies from diverse industries — technology, healthcare, and education — which make the argument compelling and accessible. The second half shifts to practical strategies readers can apply immediately, including techniques for running more inclusive meetings and giving feedback that motivates rather than discourages.

My only criticism is that some of the later chapters feel repetitive, covering ground already laid out earlier. Despite this, I would strongly recommend this book to anyone in a management role, or anyone who aspires to lead.',
  NULL, NULL, NULL, NULL);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What is the main argument of the book according to the review?',
   'The reviewer states Holloway argues that "effective leaders … listen deeply, build trust quietly, and inspire action through consistent example rather than charisma."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Charismatic leaders achieve the best results',            NULL, false),
  (currval('questions_id_seq'), '(B) Effective leaders lead through quiet, consistent action', NULL, true),
  (currval('questions_id_seq'), '(C) Leadership skills can only be developed in business',     NULL, false),
  (currval('questions_id_seq'), '(D) Listening is a skill that cannot be learned',             NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'What does the reviewer criticize about the book?',
   'The reviewer says "some of the later chapters feel repetitive, covering ground already laid out earlier."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) The case studies are not credible',          NULL, false),
  (currval('questions_id_seq'), '(B) The practical strategies are too difficult',  NULL, false),
  (currval('questions_id_seq'), '(C) Some later chapters are repetitive',          NULL, true),
  (currval('questions_id_seq'), '(D) The book is too short',                       NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'Who does the reviewer say would benefit most from this book?',
   'The reviewer recommends the book "to anyone in a management role, or anyone who aspires to lead."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) People interested in starting a business',       NULL, false),
  (currval('questions_id_seq'), '(B) Those in or aspiring to management roles',       NULL, true),
  (currval('questions_id_seq'), '(C) Students studying organizational psychology',    NULL, false),
  (currval('questions_id_seq'), '(D) HR professionals conducting hiring interviews',  NULL, false);

-- P7-G10: 施設見学ツアー申込確認メール（4問）
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule)
VALUES
  (11, 'Questions 1-4 refer to the following email.

To: Marcus Chen <m.chen@brightlearn.edu>
From: Visitor Services <tours@meridianinstitute.org>
Subject: Facility Tour Confirmation — April 24
Date: April 10

Dear Mr. Chen,

Thank you for registering for the Meridian Institute Facility Tour on April 24. We are delighted to confirm your booking for the 10:00 A.M. session.

Your group of 12 students will meet at the main reception desk, located in the East Wing of the building. Please arrive by 9:45 A.M. so that we can complete check-in procedures before the tour begins. Visitors are required to present a valid photo ID upon arrival.

The tour lasts approximately 90 minutes and will cover our research laboratories, the Digital Innovation Hub, and the rooftop garden. A light lunch will be provided in the cafeteria following the tour.

Please note that photography is permitted in most areas; however, our laboratory spaces are restricted zones where no photographs may be taken.

If the number of participants changes or you need to reschedule, please contact us at least 48 hours in advance at tours@meridianinstitute.org.

We look forward to welcoming your group.

Warm regards,
Priya Nair
Visitor Services Coordinator',
  NULL, NULL, NULL, NULL);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What is the purpose of this email?',
   'The email confirms a booking for a facility tour: "we are delighted to confirm your booking."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) To invite Mr. Chen to register for a tour',        NULL, false),
  (currval('questions_id_seq'), '(B) To confirm a tour reservation',                    NULL, true),
  (currval('questions_id_seq'), '(C) To inform Mr. Chen of a schedule change',          NULL, false),
  (currval('questions_id_seq'), '(D) To request payment for the tour',                  NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'What are visitors required to bring to the tour?',
   'The email states: "Visitors are required to present a valid photo ID upon arrival."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) A printed copy of the confirmation email',   NULL, false),
  (currval('questions_id_seq'), '(B) A valid photo ID',                           NULL, true),
  (currval('questions_id_seq'), '(C) A signed permission form',                   NULL, false),
  (currval('questions_id_seq'), '(D) A pre-paid entry ticket',                    NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'Where is photography NOT allowed during the tour?',
   'The email states: "our laboratory spaces are restricted zones where no photographs may be taken."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) The rooftop garden',            NULL, false),
  (currval('questions_id_seq'), '(B) The cafeteria',                 NULL, false),
  (currval('questions_id_seq'), '(C) The Digital Innovation Hub',    NULL, false),
  (currval('questions_id_seq'), '(D) The laboratory spaces',         NULL, true);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 4, 'choice', 1, 1,
   'What should Mr. Chen do if the number of participants changes?',
   'The email says: "If the number of participants changes … please contact us at least 48 hours in advance."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Arrive earlier on the day of the tour',                NULL, false),
  (currval('questions_id_seq'), '(B) Contact the institute at least 48 hours in advance',   NULL, true),
  (currval('questions_id_seq'), '(C) Submit a written request on the day of the tour',      NULL, false),
  (currval('questions_id_seq'), '(D) Send an email to the main reception desk',             NULL, false);

-- P7-G11: コワーキングスペース会員プラン案内（3問）
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule)
VALUES
  (11, 'Questions 1-3 refer to the following information.

NEXUS COWORKING — MEMBERSHIP PLANS

Whether you are a freelancer, a remote worker, or a growing startup, Nexus Coworking has a plan designed for you.

DAY PASS — $25/day
Access to hot desks and shared lounge areas. Printing (up to 10 pages) and Wi-Fi included. No reservation required.

FLEX PLAN — $150/month
10 days of access per month. Includes all Day Pass benefits plus one free meeting room booking per month (up to 2 hours).

DEDICATED DESK — $320/month
Your own assigned desk, available 24/7. Unlimited printing, private locker, and two free meeting room bookings per month (up to 2 hours each).

PRIVATE OFFICE — From $600/month
Fully enclosed private office for teams of 2–6 people. All Dedicated Desk benefits included, plus a dedicated phone line and mail handling service.

All memberships include access to our rooftop terrace and monthly networking events. Contact us at info@nexuscoworking.com to schedule a tour.',
  NULL, NULL, NULL, NULL);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What benefit is included in ALL membership plans?',
   'The document states: "All memberships include access to our rooftop terrace and monthly networking events."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) A private locker',                         NULL, false),
  (currval('questions_id_seq'), '(B) Access to the rooftop terrace',            NULL, true),
  (currval('questions_id_seq'), '(C) Free meeting room bookings',               NULL, false),
  (currval('questions_id_seq'), '(D) A dedicated phone line',                   NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'Which plan would best suit a remote worker who needs office access about twice a week?',
   'Twice a week ≈ 8–10 days/month. The Flex Plan offers 10 days of access per month at $150, which fits this usage.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Day Pass',          NULL, false),
  (currval('questions_id_seq'), '(B) Flex Plan',         NULL, true),
  (currval('questions_id_seq'), '(C) Dedicated Desk',    NULL, false),
  (currval('questions_id_seq'), '(D) Private Office',    NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What should a person do to learn more about the available spaces?',
   'The document says: "Contact us at info@nexuscoworking.com to schedule a tour."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Visit the website and sign up online',    NULL, false),
  (currval('questions_id_seq'), '(B) Attend a monthly networking event',       NULL, false),
  (currval('questions_id_seq'), '(C) Contact the company to schedule a tour',  NULL, true),
  (currval('questions_id_seq'), '(D) Come in during business hours',           NULL, false);

-- P7-G12: 社内ニュースレター（イベント告知）（3問）
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule)
VALUES
  (11, 'Questions 1-3 refer to the following newsletter article.

STAFF SPOTLIGHT — WELCOMING OUR NEW TEAM MEMBERS
Pinnacle Solutions Internal Newsletter | Issue 34

This quarter, Pinnacle Solutions welcomed five new employees across three departments. We sat down with two of them to learn more about their backgrounds and what drew them to the company.

Yuki Tanaka joined our Data Analytics team in July after spending six years at a financial consulting firm in Tokyo. "I was looking for a role where I could apply data skills to real-world product decisions," she said. "Pinnacle''s culture of continuous learning was a major draw for me."

Also joining us in July is Rafael Morales, who takes on the role of Senior UX Designer in the Product team. Rafael previously worked at a design agency in São Paulo and brings over eight years of experience in mobile interface design. "I was excited by the opportunity to work on a product used by millions of people," he explained.

Both Yuki and Rafael will participate in this month''s onboarding workshop on September 5. All staff are invited to join the welcome lunch on September 6 at noon in the main cafeteria.',
  NULL, NULL, NULL, NULL);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'Where did Yuki Tanaka work before joining Pinnacle Solutions?',
   'The article states she spent "six years at a financial consulting firm in Tokyo."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) A technology startup in Tokyo',           NULL, false),
  (currval('questions_id_seq'), '(B) A financial consulting firm in Tokyo',    NULL, true),
  (currval('questions_id_seq'), '(C) A design agency in São Paulo',            NULL, false),
  (currval('questions_id_seq'), '(D) A university research department',        NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'What is indicated about Rafael Morales?',
   'The article says Rafael "brings over eight years of experience in mobile interface design."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) He previously worked in data analytics',              NULL, false),
  (currval('questions_id_seq'), '(B) He has more than eight years of design experience',   NULL, true),
  (currval('questions_id_seq'), '(C) He is originally from Tokyo',                         NULL, false),
  (currval('questions_id_seq'), '(D) He will lead the onboarding workshop',                NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What event are all staff members invited to attend?',
   'The article says: "All staff are invited to join the welcome lunch on September 6 at noon in the main cafeteria."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) The onboarding workshop on September 5',      NULL, false),
  (currval('questions_id_seq'), '(B) A welcome lunch on September 6',              NULL, true),
  (currval('questions_id_seq'), '(C) A product demonstration in the afternoon',    NULL, false),
  (currval('questions_id_seq'), '(D) A team-building event outside the office',    NULL, false);

-- P7-G13: アパート賃貸契約の条件メール（4問）
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule)
VALUES
  (11, 'Questions 1-4 refer to the following email.

To: Oliver Grant <o.grant@mailbox.com>
From: Sunrise Property Management <rentals@sunriseprop.com>
Subject: Lease Agreement — Unit 4B, 88 Elmwood Avenue
Date: June 3

Dear Mr. Grant,

We are pleased to inform you that your application for Unit 4B at 88 Elmwood Avenue has been approved. Please find below a summary of the lease terms before we proceed with signing the formal agreement.

Monthly Rent: $1,450
Lease Term: 12 months, commencing July 1
Security Deposit: $2,900 (equivalent to two months'' rent), due upon signing
Utilities: Water and trash collection are included. Electricity and internet are the tenant''s responsibility.

The unit will be available for a walkthrough on June 10 between 2:00 P.M. and 5:00 P.M. Please confirm your preferred time by replying to this email.

Pets are permitted with prior written approval and an additional non-refundable pet fee of $300.

Please review the terms carefully. If you have any questions or wish to discuss any of the conditions, do not hesitate to contact us. Once you are ready to proceed, we will send you the full lease document for your signature.

Sincerely,
Amanda Torres
Leasing Agent, Sunrise Property Management',
  NULL, NULL, NULL, NULL);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'When does the lease begin?',
   'The email states: "Lease Term: 12 months, commencing July 1."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) June 3',   NULL, false),
  (currval('questions_id_seq'), '(B) June 10',  NULL, false),
  (currval('questions_id_seq'), '(C) July 1',   NULL, true),
  (currval('questions_id_seq'), '(D) August 1', NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'Which utility is NOT included in the rent?',
   'The email states: "Water and trash collection are included. Electricity and internet are the tenant''s responsibility."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Water',              NULL, false),
  (currval('questions_id_seq'), '(B) Trash collection',   NULL, false),
  (currval('questions_id_seq'), '(C) Electricity',        NULL, true),
  (currval('questions_id_seq'), '(D) Building insurance', NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'How much is the security deposit?',
   'The email states: "Security Deposit: $2,900 (equivalent to two months'' rent)."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) $1,450', NULL, false),
  (currval('questions_id_seq'), '(B) $2,900', NULL, true),
  (currval('questions_id_seq'), '(C) $300',   NULL, false),
  (currval('questions_id_seq'), '(D) $4,350', NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 4, 'choice', 1, 1,
   'What must Mr. Grant do if he wants to keep a pet in the unit?',
   'The email states: "Pets are permitted with prior written approval and an additional non-refundable pet fee of $300."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Pay a higher monthly rent',                         NULL, false),
  (currval('questions_id_seq'), '(B) Obtain written approval and pay a $300 fee',        NULL, true),
  (currval('questions_id_seq'), '(C) Provide a larger security deposit',                 NULL, false),
  (currval('questions_id_seq'), '(D) Sign a separate lease for the pet',                 NULL, false);

-- P7-G14: 公共交通機関の運行変更お知らせ（2問）
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule)
VALUES
  (11, 'Questions 1-2 refer to the following notice.

CITYLINE METRO — SERVICE CHANGE NOTICE

Effective Saturday, November 2, through Sunday, November 10, the Blue Line will be suspended between Central Station and Riverside Station due to track maintenance work.

During this period, a free shuttle bus service will operate between Central Station and Riverside Station, stopping at all intermediate stations. Shuttle buses will depart every 12 minutes from the station forecourt. Please allow an additional 20–30 minutes for your journey.

Passengers traveling beyond Riverside Station to the Airport Terminal may continue their journey on the Blue Line without any interruption.

We apologize for any inconvenience caused and thank you for your patience.

For real-time updates, follow @CitylineMetro on social media or visit our website.',
  NULL, NULL, NULL, NULL);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'Why is the Blue Line being suspended?',
   'The notice states the suspension is "due to track maintenance work."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) A new station is being constructed',    NULL, false),
  (currval('questions_id_seq'), '(B) Track maintenance is being carried out', NULL, true),
  (currval('questions_id_seq'), '(C) There is a staff shortage',             NULL, false),
  (currval('questions_id_seq'), '(D) The line is being permanently closed',  NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'What is indicated about passengers traveling to the Airport Terminal?',
   'The notice states: "Passengers traveling beyond Riverside Station to the Airport Terminal may continue their journey on the Blue Line without any interruption."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) They must use the shuttle bus for the full journey',  NULL, false),
  (currval('questions_id_seq'), '(B) Their Blue Line service is not affected',             NULL, true),
  (currval('questions_id_seq'), '(C) They should allow an extra 30 minutes',               NULL, false),
  (currval('questions_id_seq'), '(D) They need to transfer at Central Station',            NULL, false);

-- P7-G15: 新製品フィードバックアンケート依頼メール（3問）
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule)
VALUES
  (11, 'Questions 1-3 refer to the following email.

To: Claire Dubois <c.dubois@heliosmail.com>
From: Feedback Team <feedback@verdeapparel.com>
Subject: We''d love your feedback on your recent purchase
Date: October 14

Dear Ms. Dubois,

Thank you for your recent purchase of the Verde Apparel Merino Wool Sweater. We hope you are enjoying your new item!

As a valued customer, your opinion matters to us. We would greatly appreciate it if you could take a few minutes to complete our product feedback survey. The survey consists of 8 questions and should take no more than 5 minutes to complete.

Your responses will help us improve our products and better serve customers like you. As a token of our appreciation, everyone who completes the survey will receive a 15% discount code valid on their next purchase.

To access the survey, please click the link below:
[Complete the Survey]

The survey will remain open until October 31. Please note that the discount code will be sent to this email address within 24 hours of survey completion.

If you have any questions, feel free to contact us at feedback@verdeapparel.com.

Thank you for helping us grow.

Warm regards,
The Verde Apparel Team',
  NULL, NULL, NULL, NULL);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What is the main purpose of this email?',
   'The email asks Ms. Dubois to complete a product feedback survey.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) To confirm a product shipment',                  NULL, false),
  (currval('questions_id_seq'), '(B) To request the customer to take a survey',       NULL, true),
  (currval('questions_id_seq'), '(C) To offer a refund on a defective product',       NULL, false),
  (currval('questions_id_seq'), '(D) To announce a seasonal sale',                    NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'What will customers receive for completing the survey?',
   'The email states: "everyone who completes the survey will receive a 15% discount code valid on their next purchase."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) A free product sample',              NULL, false),
  (currval('questions_id_seq'), '(B) A 15% discount on their next order', NULL, true),
  (currval('questions_id_seq'), '(C) Free shipping on future orders',     NULL, false),
  (currval('questions_id_seq'), '(D) A store credit worth $15',           NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'When will the discount code be sent to the customer?',
   'The email states: "the discount code will be sent to this email address within 24 hours of survey completion."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Immediately upon completing the survey',        NULL, false),
  (currval('questions_id_seq'), '(B) Within 24 hours of completing the survey',      NULL, true),
  (currval('questions_id_seq'), '(C) After the survey closes on October 31',         NULL, false),
  (currval('questions_id_seq'), '(D) Within one week of the original purchase',      NULL, false);

-- P7-G16: ジム会員向けお知らせ（3問）
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule)
VALUES
  (11, 'Questions 1-3 refer to the following notice.

PEAK FITNESS CENTER — MEMBER NOTICE

Dear Valued Members,

We are excited to announce several upgrades to our facility, scheduled to take place from Monday, August 5, through Friday, August 9. During this period, the following areas will be temporarily unavailable:

- Swimming pool (full week)
- Sauna and steam rooms (Monday–Wednesday only)
- Studio B (Tuesday and Thursday)

All other areas of the gym, including the main weight training floor, cardio zone, and Studio A, will remain open throughout the renovation period.

As compensation for the inconvenience, all members will receive a one-week extension added to their current membership at no charge. This extension will be applied automatically to your account.

We appreciate your patience and understanding as we work to improve your experience at Peak Fitness Center. If you have any questions, please speak with a member of staff at the front desk.

Peak Fitness Management',
  NULL, NULL, NULL, NULL);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What is the purpose of this notice?',
   'The notice informs members about temporary closures during facility upgrades.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) To announce a new membership promotion',          NULL, false),
  (currval('questions_id_seq'), '(B) To inform members of temporary facility changes', NULL, true),
  (currval('questions_id_seq'), '(C) To invite members to a grand opening event',      NULL, false),
  (currval('questions_id_seq'), '(D) To request feedback on gym services',             NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'Which area of the gym will be closed for the entire renovation week?',
   'The notice states the "Swimming pool (full week)" will be unavailable.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Studio B',              NULL, false),
  (currval('questions_id_seq'), '(B) The sauna',             NULL, false),
  (currval('questions_id_seq'), '(C) The swimming pool',     NULL, true),
  (currval('questions_id_seq'), '(D) The cardio zone',       NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'How will members be compensated for the inconvenience?',
   'The notice states: "all members will receive a one-week extension added to their current membership at no charge."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) A discount on their next monthly fee',         NULL, false),
  (currval('questions_id_seq'), '(B) A one-week membership extension',              NULL, true),
  (currval('questions_id_seq'), '(C) Free access to a partner gym',                 NULL, false),
  (currval('questions_id_seq'), '(D) A complimentary personal training session',    NULL, false);

-- P7-G17: 社員採用の内定通知メール（3問）
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule)
VALUES
  (11, 'Questions 1-3 refer to the following email.

To: Nadia Petrov <n.petrov@quickmail.net>
From: HR Department <hr@axiomlogistics.com>
Subject: Job Offer — Operations Coordinator
Date: February 18

Dear Ms. Petrov,

It is our pleasure to extend an offer of employment for the position of Operations Coordinator at Axiom Logistics. We were very impressed with your interview performance and believe you will be an excellent addition to our team.

Details of the offer are as follows:
- Start Date: March 10
- Salary: $52,000 per year, paid monthly
- Working Hours: Monday–Friday, 9:00 A.M. to 5:30 P.M.
- Benefits: Health insurance, 15 days of paid annual leave, and access to the company pension plan

To accept this offer, please sign and return the enclosed contract by February 25. If you have any questions or would like to discuss any aspect of the offer, please do not hesitate to contact me directly at hr@axiomlogistics.com.

We look forward to welcoming you to the Axiom team.

Kind regards,
Thomas Burke
HR Manager, Axiom Logistics',
  NULL, NULL, NULL, NULL);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What is Ms. Petrov being offered?',
   'The email extends "an offer of employment for the position of Operations Coordinator."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) A promotion within her current company',    NULL, false),
  (currval('questions_id_seq'), '(B) A job as Operations Coordinator',           NULL, true),
  (currval('questions_id_seq'), '(C) An internship at Axiom Logistics',          NULL, false),
  (currval('questions_id_seq'), '(D) A freelance contract for a project',        NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'How many days of paid leave are offered?',
   'The email states the benefits include "15 days of paid annual leave."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) 10 days', NULL, false),
  (currval('questions_id_seq'), '(B) 12 days', NULL, false),
  (currval('questions_id_seq'), '(C) 15 days', NULL, true),
  (currval('questions_id_seq'), '(D) 20 days', NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What must Ms. Petrov do to accept the offer?',
   'The email says: "please sign and return the enclosed contract by February 25."',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Call the HR manager to confirm verbally',     NULL, false),
  (currval('questions_id_seq'), '(B) Attend a second interview on March 10',       NULL, false),
  (currval('questions_id_seq'), '(C) Sign and return the contract by February 25', NULL, true),
  (currval('questions_id_seq'), '(D) Send her portfolio to the HR department',     NULL, false);

-- P7-G18: 安全トレーニング案内メモ（3問）
INSERT INTO question_groups (section_id, group_text, audio_url, image_url, score, scoring_rule)
VALUES
  (11, 'Questions 1-3 refer to the following memo.

To: All Staff
From: Human Resources Department
Subject: Mandatory Safety Training — March Schedule
Date: February 28

Please be advised that the company''s annual mandatory safety training will take place throughout March. All employees are required to complete the training before March 31.

Sessions will be held in Conference Room B on the following dates:
- March 5 (Tuesday): 10:00 A.M. – 12:00 P.M.
- March 12 (Tuesday): 2:00 P.M. – 4:00 P.M.
- March 19 (Tuesday): 10:00 A.M. – 12:00 P.M.
- March 26 (Tuesday): 2:00 P.M. – 4:00 P.M.

To register, please visit the HR portal at hr.company.com/training and select a preferred session. Registration must be completed by March 1.

Employees who do not complete the training by March 31 may be required to attend a makeup session in April. Department managers should ensure all direct reports have registered by February 28.

For questions, contact the HR Department at hr@company.com.',
  NULL, NULL, NULL, NULL);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 1, 'choice', 1, 1,
   'What is the main purpose of this memo?',
   'The memo announces "the company''s annual mandatory safety training," making (A) the correct answer.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) To inform all staff about required safety training',  NULL, true),
  (currval('questions_id_seq'), '(B) To announce the installation of new safety equipment', NULL, false),
  (currval('questions_id_seq'), '(C) To notify employees of changes to their work schedules', NULL, false),
  (currval('questions_id_seq'), '(D) To remind staff to complete their performance reviews',  NULL, false);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 2, 'choice', 1, 1,
   'Where will the training sessions be held?',
   'The memo states "Sessions will be held in Conference Room B," making (D) the correct answer.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) In the main auditorium',             NULL, false),
  (currval('questions_id_seq'), '(B) At an off-site training facility',   NULL, false),
  (currval('questions_id_seq'), '(C) In the HR Department office',        NULL, false),
  (currval('questions_id_seq'), '(D) In Conference Room B',               NULL, true);

INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (NULL, currval('question_groups_id_seq'), 3, 'choice', 1, 1,
   'What are employees who miss the March deadline required to do?',
   'The memo says employees who fail to complete training by March 31 "may be required to attend a makeup session in April," making (B) the correct answer.',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(A) Submit a written explanation to their manager', NULL, false),
  (currval('questions_id_seq'), '(B) Attend a makeup session in April',              NULL, true),
  (currval('questions_id_seq'), '(C) Retake their department''s safety exam',        NULL, false),
  (currval('questions_id_seq'), '(D) Complete an online training module instead',    NULL, false);
