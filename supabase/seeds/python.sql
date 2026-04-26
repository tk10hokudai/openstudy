-- ============================================
-- プログラミング言語【python】
-- section_id: 40=基礎文法
--
-- 問題を追加するときはこのファイルの末尾に追記する
-- ============================================

-- ----------------------------------------
-- 基礎文法（section_id=40）Q1〜Q109
-- ----------------------------------------

-- Python-1: 文字列型
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 1, 'choice', 1, 1,
   E'【入力】\nx = _____\n# 文字列型\nprint(type(x))\n【出力】\n<class ''str''>',
   '文字列型。正解: ''number''',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '''number''',    NULL, true),
  (currval('questions_id_seq'), 'number',    NULL, false),
  (currval('questions_id_seq'), '1',    NULL, false),
  (currval('questions_id_seq'), '1.0',    NULL, false);

-- Python-2: 整数型
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 2, 'choice', 1, 1,
   E'【入力】\nx = _____\n# 整数型\nprint(type(x))\n【出力】\n<class ''int''>',
   '整数型。正解: 1',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '1',    NULL, true),
  (currval('questions_id_seq'), '1.0',    NULL, false),
  (currval('questions_id_seq'), '''number''',    NULL, false),
  (currval('questions_id_seq'), 'number',    NULL, false);

-- Python-3: 浮動小数点数型
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 3, 'choice', 1, 1,
   E'【入力】\nx = _____\n# 浮動小数点数型\nprint(type(x))\n【出力】\n<class ''float''>',
   '浮動小数点数型。正解: 1.0',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '1.0',    NULL, true),
  (currval('questions_id_seq'), '1',    NULL, false),
  (currval('questions_id_seq'), '''number''',    NULL, false),
  (currval('questions_id_seq'), 'number',    NULL, false);

-- Python-4: 型変換(文字列型にする)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 4, 'choice', 1, 1,
   E'【入力】\nx = _____\n# 型変換(文字列型にする)\nprint(type(x))\n【出力】\n<class ''str''>',
   '型変換(文字列型にする)。正解: str(1)',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'str(1)',    NULL, true),
  (currval('questions_id_seq'), '1',    NULL, false),
  (currval('questions_id_seq'), 'int(1)',    NULL, false),
  (currval('questions_id_seq'), 'float(1)',    NULL, false);

-- Python-5: 型変換(浮動小数点数型にする)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 5, 'choice', 1, 1,
   E'【入力】\nx = _____\n# 型変換(浮動小数点数型にする)\nprint(type(x))\n【出力】\n<class ''float''>',
   '型変換(浮動小数点数型にする)。正解: float(1)',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'float(1)',    NULL, true),
  (currval('questions_id_seq'), '1',    NULL, false),
  (currval('questions_id_seq'), 'str(1)',    NULL, false),
  (currval('questions_id_seq'), 'int(1)',    NULL, false);

-- Python-6: 型変換(整数型にする)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 6, 'choice', 1, 1,
   E'【入力】\nx = _____\n# 型変換(整数型にする)\nprint(type(x))\n【出力】\n<class ''int''>',
   '型変換(整数型にする)。正解: int(1.0)',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'int(1.0)',    NULL, true),
  (currval('questions_id_seq'), '1.0',    NULL, false),
  (currval('questions_id_seq'), 'str(1.0)',    NULL, false),
  (currval('questions_id_seq'), 'float(1.0)',    NULL, false);

-- Python-7: リスト型：要素の追加・削除・変更を自由に行える
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 7, 'choice', 1, 1,
   E'【入力】\nx = _____\n# リスト型：要素の追加・削除・変更を自由に行える\nprint(type(x))\n【出力】\n<class ''list''>',
   'リスト型：要素の追加・削除・変更を自由に行える。正解: [3, 1, 4]',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '[3, 1, 4]',    NULL, true),
  (currval('questions_id_seq'), '(3, 1, 4)',    NULL, false),
  (currval('questions_id_seq'), '{3, 1, 4}',    NULL, false),
  (currval('questions_id_seq'), '3, 1, 4',    NULL, false);

-- Python-8: タプル型：作成後に要素の変更が出来ない
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 8, 'choice', 1, 1,
   E'【入力】\nx = _____\n# タプル型：作成後に要素の変更が出来ない\nprint(type(x))\n【出力】\n<class ''tuple''>',
   'タプル型：作成後に要素の変更が出来ない。正解: (3, 1, 4)',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(3, 1, 4)',    NULL, true),
  (currval('questions_id_seq'), '[3, 1, 4]',    NULL, false),
  (currval('questions_id_seq'), '{3, 1, 4}',    NULL, false),
  (currval('questions_id_seq'), '3, 1, 4',    NULL, false);

-- Python-9: 集合型：要素に重複を含まず要素に順番がない
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 9, 'choice', 1, 1,
   E'【入力】\nx = _____\n# 集合型：要素に重複を含まず要素に順番がない\nprint(type(x))\n【出力】\n<class ''set''>',
   '集合型：要素に重複を含まず要素に順番がない。正解: {3, 1, 4}',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '{3, 1, 4}',    NULL, true),
  (currval('questions_id_seq'), '[3, 1, 4]',    NULL, false),
  (currval('questions_id_seq'), '(3, 1, 4)',    NULL, false),
  (currval('questions_id_seq'), '3, 1, 4',    NULL, false);

-- Python-10: 辞書型：キーと値の組み合わせで管理できる
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 10, 'choice', 1, 1,
   E'【入力】\nx = _____\n# 辞書型：キーと値の組み合わせで管理できる\nprint(type(x))\n【出力】\n<class ''dict''>',
   '辞書型：キーと値の組み合わせで管理できる。正解: {3: ''three'', 1: ''one'', 4: ''four''}',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '{3: ''three'', 1: ''one'', 4: ''four''}',    NULL, true),
  (currval('questions_id_seq'), '[3, 1, 4]',    NULL, false),
  (currval('questions_id_seq'), '(3, 1, 4)',    NULL, false),
  (currval('questions_id_seq'), '{3, 1, 4}',    NULL, false);

-- Python-11: 中身を空で定義する(リスト)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 11, 'choice', 1, 1,
   E'【入力】\nx = _____\n# 中身を空で定義する(リスト)\nprint(type(x))\n【出力】\n<class ''list''>',
   '中身を空で定義する(リスト)。正解: []',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '[]',    NULL, true),
  (currval('questions_id_seq'), '()',    NULL, false),
  (currval('questions_id_seq'), '{}',    NULL, false),
  (currval('questions_id_seq'), 'set()',    NULL, false);

-- Python-12: 中身を空で定義する(タプル)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 12, 'choice', 1, 1,
   E'【入力】\nx = _____\n# 中身を空で定義する(タプル)\nprint(type(x))\n【出力】\n<class ''tuple''>',
   '中身を空で定義する(タプル)。正解: ()',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '()',    NULL, true),
  (currval('questions_id_seq'), '[]',    NULL, false),
  (currval('questions_id_seq'), '{}',    NULL, false),
  (currval('questions_id_seq'), 'set()',    NULL, false);

-- Python-13: 中身を空で定義する(辞書)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 13, 'choice', 1, 1,
   E'【入力】\nx = _____\n# 中身を空で定義する(辞書)\nprint(type(x))\n【出力】\n<class ''dict''>',
   '中身を空で定義する(辞書)。正解: {}',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '{}',    NULL, true),
  (currval('questions_id_seq'), '[]',    NULL, false),
  (currval('questions_id_seq'), '()',    NULL, false),
  (currval('questions_id_seq'), 'set()',    NULL, false);

-- Python-14: 中身を空で定義する(集合)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 14, 'choice', 1, 1,
   E'【入力】\nx = _____\n# 中身を空で定義する(集合)\nprint(type(x))\n【出力】\n<class ''set''>',
   '中身を空で定義する(集合)。正解: set()',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'set()',    NULL, true),
  (currval('questions_id_seq'), '[]',    NULL, false),
  (currval('questions_id_seq'), '{}',    NULL, false),
  (currval('questions_id_seq'), '()',    NULL, false);

-- Python-15: ブール値：真か偽をもつ値
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 15, 'choice', 1, 1,
   E'【入力】\nx = _____\n# ブール値：真か偽をもつ値\nprint(type(x))\n【出力】\n<class ''bool''>',
   'ブール値：真か偽をもつ値。正解: True',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'True',    NULL, true),
  (currval('questions_id_seq'), '''number''',    NULL, false),
  (currval('questions_id_seq'), '1',    NULL, false),
  (currval('questions_id_seq'), '1.0',    NULL, false);

-- Python-16: かけ算
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 16, 'choice', 1, 1,
   E'【入力】\nx = _____\n# かけ算\nprint(x)\n【出力】\n124',
   'かけ算。正解: 31 * 4',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '31 * 4',    NULL, true),
  (currval('questions_id_seq'), '31 + 4',    NULL, false),
  (currval('questions_id_seq'), '31 - 4',    NULL, false),
  (currval('questions_id_seq'), '31 / 4',    NULL, false);

-- Python-17: べき乗
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 17, 'choice', 1, 1,
   E'【入力】\nx = _____\n# べき乗\nprint(x)\n【出力】\n923521',
   'べき乗。正解: 31 ** 4',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '31 ** 4',    NULL, true),
  (currval('questions_id_seq'), '31 + 4',    NULL, false),
  (currval('questions_id_seq'), '31 - 4',    NULL, false),
  (currval('questions_id_seq'), '31 * 4',    NULL, false);

-- Python-18: わり算
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 18, 'choice', 1, 1,
   E'【入力】\nx = _____\n# わり算\nprint(x)\n【出力】\n7.75',
   'わり算。正解: 31 / 4',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '31 / 4',    NULL, true),
  (currval('questions_id_seq'), '31 + 4',    NULL, false),
  (currval('questions_id_seq'), '31 - 4',    NULL, false),
  (currval('questions_id_seq'), '31 * 4',    NULL, false);

-- Python-19: 少数切り捨てわり算
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 19, 'choice', 1, 1,
   E'【入力】\nx = _____\n# 少数切り捨てわり算\nprint(x)\n【出力】\n7',
   '少数切り捨てわり算。正解: 31 // 4',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '31 // 4',    NULL, true),
  (currval('questions_id_seq'), '31 + 4',    NULL, false),
  (currval('questions_id_seq'), '31 - 4',    NULL, false),
  (currval('questions_id_seq'), '31 / 4',    NULL, false);

-- Python-20: 余りの計算
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 20, 'choice', 1, 1,
   E'【入力】\nx = _____\n# 余りの計算\nprint(x)\n【出力】\n3',
   '余りの計算。正解: 31 % 4',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '31 % 4',    NULL, true),
  (currval('questions_id_seq'), '31 + 4',    NULL, false),
  (currval('questions_id_seq'), '31 - 4',    NULL, false),
  (currval('questions_id_seq'), '31 / 4',    NULL, false);

-- Python-21: x = x + 4と同値(工夫された書き方)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 21, 'choice', 1, 1,
   E'【入力】\nx = 31\nx _____\n# x = x + 4と同値(工夫された書き方)\nprint(x)\n【出力】\n35',
   'x = x + 4と同値(工夫された書き方)。正解: += 4',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '+= 4',    NULL, true),
  (currval('questions_id_seq'), '-= 4',    NULL, false),
  (currval('questions_id_seq'), '*= 4',    NULL, false),
  (currval('questions_id_seq'), '/= 4',    NULL, false);

-- Python-22: 四捨六入, 5の場合は偶数となるように処理される
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 22, 'choice', 1, 1,
   E'【入力】\nx = _____\n# 四捨六入, 5の場合は偶数となるように処理される\nprint(x)\n【出力】\n31',
   '四捨六入, 5の場合は偶数となるように処理される。正解: round(31.4)',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'round(31.4)',    NULL, true),
  (currval('questions_id_seq'), '31 + 4',    NULL, false),
  (currval('questions_id_seq'), '31 - 4',    NULL, false),
  (currval('questions_id_seq'), '31 * 4',    NULL, false);

-- Python-23: 条件式1(a == b: aとbが等しいとき、真)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 23, 'choice', 1, 1,
   E'【入力】\nx = _____\n# 条件式1(a == b: aとbが等しいとき、真)\nprint(x)\n【出力】\nFalse',
   '条件式1(a == b: aとbが等しいとき、真)。正解: 31 == 4',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '31 == 4',    NULL, true),
  (currval('questions_id_seq'), '31 != 4',    NULL, false),
  (currval('questions_id_seq'), '31 >= 4',    NULL, false),
  (currval('questions_id_seq'), '3 <= 14',    NULL, false);

-- Python-24: 条件式2(a != b: aとbが異なるとき、真)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 24, 'choice', 1, 1,
   E'【入力】\nx = _____\n# 条件式2(a != b: aとbが異なるとき、真)\nprint(x)\n【出力】\nTrue',
   '条件式2(a != b: aとbが異なるとき、真)。正解: 31 != 4',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '31 != 4',    NULL, true),
  (currval('questions_id_seq'), '31 == 4',    NULL, false),
  (currval('questions_id_seq'), '31 <= 4',    NULL, false),
  (currval('questions_id_seq'), '3 >= 14',    NULL, false);

-- Python-25: 条件式3(a >= b: aがb以上のとき、真)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 25, 'choice', 1, 1,
   E'【入力】\nx = _____\n# 条件式3(a >= b: aがb以上のとき、真)\nprint(x)\n【出力】\nTrue',
   '条件式3(a >= b: aがb以上のとき、真)。正解: 31 >= 4',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '31 >= 4',    NULL, true),
  (currval('questions_id_seq'), '31 <= 4',    NULL, false),
  (currval('questions_id_seq'), '31 == 4',    NULL, false),
  (currval('questions_id_seq'), '3 >= 14',    NULL, false);

-- Python-26: 条件式4(not: 後ろの条件式が偽のとき、真)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 26, 'choice', 1, 1,
   E'【入力】\nx = _____\n# 条件式4(not: 後ろの条件式が偽のとき、真)\nprint(x)\n【出力】\nTrue',
   '条件式4(not: 後ろの条件式が偽のとき、真)。正解: not 31 == 4',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'not 31 == 4',    NULL, true),
  (currval('questions_id_seq'), 'not 31 != 4',    NULL, false),
  (currval('questions_id_seq'), 'not 31 >= 4',    NULL, false),
  (currval('questions_id_seq'), '31 == 4',    NULL, false);

-- Python-27: 条件式5(and: 全ての条件式が真のとき、真)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 27, 'choice', 1, 1,
   E'【入力】\nx = _____\n# 条件式5(and: 全ての条件式が真のとき、真)\nprint(x)\n【出力】\nFalse',
   '条件式5(and: 全ての条件式が真のとき、真)。正解: 31 >= 4 and 1 <= 59',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '31 >= 4 and 1 <= 59',    NULL, true),
  (currval('questions_id_seq'), '31 >= 4 and 1 >= 59',    NULL, false),
  (currval('questions_id_seq'), '31 >= 4 or 1 >= 59',    NULL, false),
  (currval('questions_id_seq'), '31 <= 4 or 1 <= 59',    NULL, false);

-- Python-28: 条件式6(or: 条件式が一つでも真のとき、真)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 28, 'choice', 1, 1,
   E'【入力】\nx = _____\n# 条件式6(or: 条件式が一つでも真のとき、真)\nprint(x)\n【出力】\nTrue',
   '条件式6(or: 条件式が一つでも真のとき、真)。正解: 31 >= 4 or 1 >= 59',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '31 >= 4 or 1 >= 59',    NULL, true),
  (currval('questions_id_seq'), '31 <= 4 or 1 >= 59',    NULL, false),
  (currval('questions_id_seq'), '31 >= 4 and 1 >= 59',    NULL, false),
  (currval('questions_id_seq'), '31 <= 4 and 1 >= 59',    NULL, false);

-- Python-29: 和集合
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 29, 'choice', 1, 1,
   E'【入力】\nx = {3, 1, 4} _ {1, 5, 9}\n# 和集合\nprint(x)\n【出力】\n{1, 3, 4, 5, 9}',
   '和集合。正解: |',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '|',    NULL, true),
  (currval('questions_id_seq'), '-',    NULL, false),
  (currval('questions_id_seq'), '&',    NULL, false),
  (currval('questions_id_seq'), '/',    NULL, false);

-- Python-30: 差集合
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 30, 'choice', 1, 1,
   E'【入力】\nx = {3, 1, 4} _ {1, 5, 9}\n# 差集合\nprint(x)\n【出力】\n{3, 4}',
   '差集合。正解: -',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '-',    NULL, true),
  (currval('questions_id_seq'), '|',    NULL, false),
  (currval('questions_id_seq'), '&',    NULL, false),
  (currval('questions_id_seq'), '/',    NULL, false);

-- Python-31: 積集合
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 31, 'choice', 1, 1,
   E'【入力】\nx = {3, 1, 4} _ {1, 5, 9}\n# 積集合\nprint(x)\n【出力】\n{1}',
   '積集合。正解: &',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '&',    NULL, true),
  (currval('questions_id_seq'), '+',    NULL, false),
  (currval('questions_id_seq'), '-',    NULL, false),
  (currval('questions_id_seq'), '/',    NULL, false);

-- Python-32: 文字列に変数を代入する
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 32, 'choice', 1, 1,
   E'【入力】\nage = 20\nx = _''I''m {age} years old''\n# 文字列に変数を代入する\nprint(x)\n【出力】\nI''m 20 years old',
   '文字列に変数を代入する。正解: f',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'f',    NULL, true),
  (currval('questions_id_seq'), 'r',    NULL, false),
  (currval('questions_id_seq'), 'b',    NULL, false),
  (currval('questions_id_seq'), 'u',    NULL, false);

-- Python-33: 文字列の文字を書き換える
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 33, 'choice', 1, 1,
   E'【入力】\nstrs = ''My name is John''\nx = _____\n# 文字列の文字を書き換える\nprint(x)\n【出力】\nMy name is Mary',
   '文字列の文字を書き換える。正解: strs.replace(''John'', ''Mary'')',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'strs.replace(''John'', ''Mary'')',    NULL, true),
  (currval('questions_id_seq'), 'strs.replace(''Mary'', ''John'')',    NULL, false),
  (currval('questions_id_seq'), 'replace(''John'', ''Mary'')',    NULL, false),
  (currval('questions_id_seq'), 'replace(''Mary'', ''John'')',    NULL, false);

-- Python-34: 前後の空白や改行を取り除く
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 34, 'choice', 1, 1,
   E'【入力】\nstrs = ''   Hello, World   ''\nx = _____\n# 前後の空白や改行を取り除く\nprint(x)\n【出力】\nHello, World',
   '前後の空白や改行を取り除く。正解: strs.strip()',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'strs.strip()',    NULL, true),
  (currval('questions_id_seq'), 'strip(strs)',    NULL, false),
  (currval('questions_id_seq'), 'strs.split()',    NULL, false),
  (currval('questions_id_seq'), 'split(strs)',    NULL, false);

-- Python-35: 文字列を大文字に変換する
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 35, 'choice', 1, 1,
   E'【入力】\nstrs = ''Hello, World''\nx = _____\n# 文字列を大文字に変換する\nprint(x)\n【出力】\nHELLO, WORLD',
   '文字列を大文字に変換する。正解: strs.upper()',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'strs.upper()',    NULL, true),
  (currval('questions_id_seq'), 'upper(strs)',    NULL, false),
  (currval('questions_id_seq'), 'strs.isupper()',    NULL, false),
  (currval('questions_id_seq'), 'isupper(strs)',    NULL, false);

-- Python-36: 文字列が全て大文字のとき、真
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 36, 'choice', 1, 1,
   E'【入力】\nstrs = ''HELLO, WORLD''\nx = _____\n# 文字列が全て大文字のとき、真\nprint(x)\n【出力】\nTrue',
   '文字列が全て大文字のとき、真。正解: strs.isupper()',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'strs.isupper()',    NULL, true),
  (currval('questions_id_seq'), 'isupper(strs)',    NULL, false),
  (currval('questions_id_seq'), 'strs.upper()',    NULL, false),
  (currval('questions_id_seq'), 'upper(strs)',    NULL, false);

-- Python-37: 文字列に含まれるlの個数を数える
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 37, 'choice', 1, 1,
   E'【入力】\nstrs = ''Hello, World''\nx = _____\n# 文字列に含まれるlの個数を数える\nprint(x)\n【出力】\n3',
   '文字列に含まれるlの個数を数える。正解: strs.count(''l'')',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'strs.count(''l'')',    NULL, true),
  (currval('questions_id_seq'), 'strs.counts(''l'')',    NULL, false),
  (currval('questions_id_seq'), '''l''.count(strs)',    NULL, false),
  (currval('questions_id_seq'), '''l''.counts(strs)',    NULL, false);

-- Python-38: リストに含まれる1の個数を数える
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 38, 'choice', 1, 1,
   E'【入力】\nstrs = [3,1,4,1,5,9]\nx = _____\n# リストに含まれる1の個数を数える\nprint(x)\n【出力】\n2',
   'リストに含まれる1の個数を数える。正解: strs.count(1)',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'strs.count(1)',    NULL, true),
  (currval('questions_id_seq'), 'strs.counts(1)',    NULL, false),
  (currval('questions_id_seq'), '1.count(strs)',    NULL, false),
  (currval('questions_id_seq'), '1.counts(strs)',    NULL, false);

-- Python-39: リストの要素数を求める関数
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 39, 'choice', 1, 1,
   E'【入力】\nx = ___([3, 1, 4])\n# リストの要素数を求める関数\nprint(x)\n【出力】\n3',
   'リストの要素数を求める関数。正解: len',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'len',    NULL, true),
  (currval('questions_id_seq'), 'Len',    NULL, false),
  (currval('questions_id_seq'), 'length',    NULL, false),
  (currval('questions_id_seq'), 'count',    NULL, false);

-- Python-40: リストの1文字目を出力する
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 40, 'choice', 1, 1,
   E'【入力】\nlists = [3, 1, 4]\nx = _____\n# リストの1文字目を出力する\nprint(x)\n【出力】\n3',
   'リストの1文字目を出力する。正解: lists[0]',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'lists[0]',    NULL, true),
  (currval('questions_id_seq'), 'lists[1]',    NULL, false),
  (currval('questions_id_seq'), 'lists[2]',    NULL, false),
  (currval('questions_id_seq'), 'lists[3]',    NULL, false);

-- Python-41: リストの後ろから1文字目を出力する
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 41, 'choice', 1, 1,
   E'【入力】\nlists = [3, 1, 4]\nx = _____\n# リストの後ろから1文字目を出力する\nprint(x)\n【出力】\n4',
   'リストの後ろから1文字目を出力する。正解: lists[-1]',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'lists[-1]',    NULL, true),
  (currval('questions_id_seq'), 'lists[0]',    NULL, false),
  (currval('questions_id_seq'), 'lists[1]',    NULL, false),
  (currval('questions_id_seq'), 'lists[4]',    NULL, false);

-- Python-42: 文字列の4-11文字目を出力する
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 42, 'choice', 1, 1,
   E'【入力】\nstrs = ''Hello, World''\nx = _____\n# 文字列の4-11文字目を出力する\nprint(x)\n【出力】\nlo, Worl',
   '文字列の4-11文字目を出力する。正解: strs[3:11]',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'strs[3:11]',    NULL, true),
  (currval('questions_id_seq'), 'strs[4:11]',    NULL, false),
  (currval('questions_id_seq'), 'strs[3:12]',    NULL, false),
  (currval('questions_id_seq'), 'strs[4:12]',    NULL, false);

-- Python-43: ','で区切ってリストにする
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 43, 'choice', 1, 1,
   E'【入力】\nstrs = ''Hello, World''\nx = _____\n# '',''で区切ってリストにする\nprint(x)\n【出力】\n[''Hello'', '' World'']',
   ''',''で区切ってリストにする。正解: strs.split('','')',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'strs.split('','')',    NULL, true),
  (currval('questions_id_seq'), 'strs.split('''')',    NULL, false),
  (currval('questions_id_seq'), 'strs.strip('','')',    NULL, false),
  (currval('questions_id_seq'), 'strs.strip()',    NULL, false);

-- Python-44: リストの要素を','区切りで文字列に変換する
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 44, 'choice', 1, 1,
   E'【入力】\nlists = [''Hello'', '' World'']\nx = _____\n# リストの要素を'',''区切りで文字列に変換する\nprint(x)\n【出力】\nHello, World',
   'リストの要素を'',''区切りで文字列に変換する。正解: '',''.join(lists)',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), ''',''.join(lists)',    NULL, true),
  (currval('questions_id_seq'), 'join(lists)',    NULL, false),
  (currval('questions_id_seq'), 'lists.join('','')',    NULL, false),
  (currval('questions_id_seq'), 'lists.join('''')',    NULL, false);

-- Python-45: リストを昇順にする(元のリストはそのまま)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 45, 'choice', 1, 1,
   E'【入力】\nlists = [3, 1, 4, 1, 5, 9]\nx = _____\n# リストを昇順にする(元のリストはそのまま)\nprint(x)\n【出力】\n[1, 1, 3, 4, 5, 9]',
   'リストを昇順にする(元のリストはそのまま)。正解: sorted(lists)',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'sorted(lists)',    NULL, true),
  (currval('questions_id_seq'), 'sort(lists)',    NULL, false),
  (currval('questions_id_seq'), 'lists.sort()',    NULL, false),
  (currval('questions_id_seq'), 'lists.sorted()',    NULL, false);

-- Python-46: リストを昇順にする(元のリストに変更を加える)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 46, 'choice', 1, 1,
   E'【入力】\nx = [3, 1, 4, 1, 5, 9]\n_____\n# リストを昇順にする(元のリストに変更を加える)\nprint(x)\n【出力】\n[1, 1, 3, 4, 5, 9]',
   'リストを昇順にする(元のリストに変更を加える)。正解: x.sort()',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'x.sort()',    NULL, true),
  (currval('questions_id_seq'), 'x.sorted()',    NULL, false),
  (currval('questions_id_seq'), 'sort(x)',    NULL, false),
  (currval('questions_id_seq'), 'sorted(x)',    NULL, false);

-- Python-47: リストを降順にする(元のリストに変更を加える)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 47, 'choice', 1, 1,
   E'【入力】\nx = [3, 1, 4, 1, 5, 9]\n_____\n# リストを降順にする(元のリストに変更を加える)\nprint(x)\n【出力】\n[9, 5, 1, 4, 1, 3]',
   'リストを降順にする(元のリストに変更を加える)。正解: x.reverse()',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'x.reverse()',    NULL, true),
  (currval('questions_id_seq'), 'x.reversed()',    NULL, false),
  (currval('questions_id_seq'), 'reverse(x)',    NULL, false),
  (currval('questions_id_seq'), 'reversed(x)',    NULL, false);

-- Python-48: リストの中身を足し合わせる
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 48, 'choice', 1, 1,
   E'【入力】\nlists = [3, 1, 4, 1, 5, 9]\nx = _____\n# リストの中身を足し合わせる\nprint(x)\n【出力】\n23',
   'リストの中身を足し合わせる。正解: sum(lists)',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'sum(lists)',    NULL, true),
  (currval('questions_id_seq'), 'lists.sum()',    NULL, false),
  (currval('questions_id_seq'), 'add(lists)',    NULL, false),
  (currval('questions_id_seq'), 'lists.add()',    NULL, false);

-- Python-49: リストの最大値を出力する
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 49, 'choice', 1, 1,
   E'【入力】\nlists = [3, 1, 4, 1, 5, 9]\nx = _____\n# リストの最大値を出力する\nprint(x)\n【出力】\n9',
   'リストの最大値を出力する。正解: max(lists)',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'max(lists)',    NULL, true),
  (currval('questions_id_seq'), 'lists.max()',    NULL, false),
  (currval('questions_id_seq'), 'min(lists)',    NULL, false),
  (currval('questions_id_seq'), 'lists.min()',    NULL, false);

-- Python-50: リストの1番目の要素を取り出す
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 50, 'choice', 1, 1,
   E'【入力】\nx = [3, 1, 4, 1, 5, 9]\n_____\n# リストの1番目の要素を取り出す\nprint(x)\n【出力】\n[1, 4, 1, 5, 9]',
   'リストの1番目の要素を取り出す。正解: x.pop(0)',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'x.pop(0)',    NULL, true),
  (currval('questions_id_seq'), 'x.out(0)',    NULL, false),
  (currval('questions_id_seq'), 'x.remove(0)',    NULL, false),
  (currval('questions_id_seq'), 'x.delete(0)',    NULL, false);

-- Python-51: リストを結合する
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 51, 'choice', 1, 1,
   E'【入力】\nx = [3, 1, 4] _ [1, 5, 9]\n# リストを結合する\nprint(x)\n【出力】\n[3, 1, 4, 1, 5, 9]',
   'リストを結合する。正解: +',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '+',    NULL, true),
  (currval('questions_id_seq'), '-',    NULL, false),
  (currval('questions_id_seq'), '*',    NULL, false),
  (currval('questions_id_seq'), '/',    NULL, false);

-- Python-52: リストの最後に要素を追加する
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 52, 'choice', 1, 1,
   E'【入力】\nx = [3, 1, 4, 1, 5, 9]\n_____\n# リストの最後に要素を追加する\nprint(x)\n【出力】\n[3, 1, 4, 1, 5, 9, 2]',
   'リストの最後に要素を追加する。正解: x.append(2)',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'x.append(2)',    NULL, true),
  (currval('questions_id_seq'), 'x.add(2)',    NULL, false),
  (currval('questions_id_seq'), '2.append(x)',    NULL, false),
  (currval('questions_id_seq'), '2.add(x)',    NULL, false);

-- Python-53: リストから指定の要素を削除する
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 53, 'choice', 1, 1,
   E'【入力】\nx = [3, 1, 4, 1, 5, 9]\n_____\n# リストから指定の要素を削除する\nprint(x)\n【出力】\n[3, 1, 1, 5, 9]',
   'リストから指定の要素を削除する。正解: x.remove(4)',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'x.remove(4)',    NULL, true),
  (currval('questions_id_seq'), 'x.delete(4)',    NULL, false),
  (currval('questions_id_seq'), 'x.pop(4)',    NULL, false),
  (currval('questions_id_seq'), 'x.out(4)',    NULL, false);

-- Python-54: keyの値を指定すると、対応するvalueを出力する
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 54, 'choice', 1, 1,
   E'【入力】\ndicts = {3: ''three'', 1: ''one'', 4: ''four''}\nx = _____\n# keyの値を指定すると、対応するvalueを出力する\nprint(x)\n【出力】\nthree',
   'keyの値を指定すると、対応するvalueを出力する。正解: dicts[3]',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'dicts[3]',    NULL, true),
  (currval('questions_id_seq'), 'dicts[0]',    NULL, false),
  (currval('questions_id_seq'), 'dicts[1]',    NULL, false),
  (currval('questions_id_seq'), 'dicts[2]',    NULL, false);

-- Python-55: 辞書の2番目の要素を取り出す
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 55, 'choice', 1, 1,
   E'【入力】\nx = {3: ''three'', 1: ''one'', 4: ''four''}\n_____\n# 辞書の2番目の要素を取り出す\nprint(x)\n【出力】\n{3: ''three'', 4: ''four''}',
   '辞書の2番目の要素を取り出す。正解: x.pop(1)',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'x.pop(1)',    NULL, true),
  (currval('questions_id_seq'), 'x.delete(1)',    NULL, false),
  (currval('questions_id_seq'), 'x.remove(1)',    NULL, false),
  (currval('questions_id_seq'), 'x.out(1)',    NULL, false);

-- Python-56: 辞書から、keyの値のみ出力する
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 56, 'choice', 1, 1,
   E'【入力】\ndicts = {3: ''three'', 1: ''one'', 4: ''four''}\nx = _____\n# 辞書から、keyの値のみ出力する\nprint(x)\n【出力】\ndict_keys([3, 1, 4])',
   '辞書から、keyの値のみ出力する。正解: dicts.keys()',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'dicts.keys()',    NULL, true),
  (currval('questions_id_seq'), 'dicts.key()',    NULL, false),
  (currval('questions_id_seq'), 'keys(dicts)',    NULL, false),
  (currval('questions_id_seq'), 'key(dicts)',    NULL, false);

-- Python-57: 辞書から、valueの値のみ出力する
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 57, 'choice', 1, 1,
   E'【入力】\ndicts = {3: ''three'', 1: ''one'', 4: ''four''}\nx = _____\n# 辞書から、valueの値のみ出力する\nprint(x)\n【出力】\ndict_values([''three'', ''one'', ''four''])',
   '辞書から、valueの値のみ出力する。正解: dicts.values()',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'dicts.values()',    NULL, true),
  (currval('questions_id_seq'), 'dicts.value()',    NULL, false),
  (currval('questions_id_seq'), 'values(dicts)',    NULL, false),
  (currval('questions_id_seq'), 'value(dicts)',    NULL, false);

-- Python-58: 辞書から、keyとvalue組合せを出力する
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 58, 'choice', 1, 1,
   E'【入力】\ndicts = {3: ''three'', 1: ''one'', 4: ''four''}\nx = _____\n# 辞書から、keyとvalue組合せを出力する\nprint(x)\n【出力】\ndict_items([(3, ''three''), (1, ''one''), (4, ''four'')])',
   '辞書から、keyとvalue組合せを出力する。正解: dicts.items()',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'dicts.items()',    NULL, true),
  (currval('questions_id_seq'), 'dicts.item()',    NULL, false),
  (currval('questions_id_seq'), 'items(dicts)',    NULL, false),
  (currval('questions_id_seq'), 'item(dicts)',    NULL, false);

-- Python-59: 集合に要素を追加する
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 59, 'choice', 1, 1,
   E'【入力】\nx = {3, 1, 4, 1, 5, 9}\n_____\n# 集合に要素を追加する\nprint(x)\n【出力】\n{1, 2, 3, 4, 5, 9}',
   '集合に要素を追加する。正解: x.add(2)',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'x.add(2)',    NULL, true),
  (currval('questions_id_seq'), 'x.append(2)',    NULL, false),
  (currval('questions_id_seq'), 'x.sorted(2)',    NULL, false),
  (currval('questions_id_seq'), 'x.sort(2)',    NULL, false);

-- Python-60: 集合から要素を削除する
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 60, 'choice', 1, 1,
   E'【入力】\nx = {3, 1, 4, 1, 5, 9}\n_____\n# 集合から要素を削除する\nprint(x)\n【出力】\n{1, 3, 5, 9}',
   '集合から要素を削除する。正解: x.remove(4)',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'x.remove(4)',    NULL, true),
  (currval('questions_id_seq'), 'x.remove(1)',    NULL, false),
  (currval('questions_id_seq'), 'x.remove(2)',    NULL, false),
  (currval('questions_id_seq'), 'x.remove(3)',    NULL, false);

-- Python-61: 集合から、昇順のリストに変換する
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 61, 'choice', 1, 1,
   E'【入力】\nsets = {3, 1, 4, 1, 5, 9}\nx = _____\n# 集合から、昇順のリストに変換する\nprint(x)\n【出力】\n[1, 3, 4, 5, 9]',
   '集合から、昇順のリストに変換する。正解: sorted(sets)',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'sorted(sets)',    NULL, true),
  (currval('questions_id_seq'), 'sort(sets)',    NULL, false),
  (currval('questions_id_seq'), 'sets.sorted()',    NULL, false),
  (currval('questions_id_seq'), 'sets.sort()',    NULL, false);

-- Python-62: タプルの1つ目の要素を出力する
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 62, 'choice', 1, 1,
   E'【入力】\ntuples = (3, 1, 4, 1, 5, 9)\nx = _____\n# タプルの1つ目の要素を出力する\nprint(x)\n【出力】\n3',
   'タプルの1つ目の要素を出力する。正解: tuples[0]',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'tuples[0]',    NULL, true),
  (currval('questions_id_seq'), 'tuples(0)',    NULL, false),
  (currval('questions_id_seq'), 'tuples{0}',    NULL, false),
  (currval('questions_id_seq'), 'tuples.0',    NULL, false);

-- Python-63: 上記以外の場合の処理
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 63, 'choice', 1, 1,
   E'【入力】\nx = 3.14\nif type(x) == int:\n    print(''<class \\''int\\''>'')\nelif type(x) == float:\n    print(''<class \\''float\\''>'')\n_____\n    print(''<class \\''str\\''>'')\n# 上記以外の場合の処理\n【出力】\n<class ''float''>',
   '上記以外の場合の処理。正解: else:',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'else:',    NULL, true),
  (currval('questions_id_seq'), 'if:',    NULL, false),
  (currval('questions_id_seq'), 'elif:',    NULL, false),
  (currval('questions_id_seq'), 'other:',    NULL, false);

-- Python-64: 指定の要素がリストに含まれていれば、真
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 64, 'choice', 1, 1,
   E'【入力】\nlists = [3, 1, 4, 1, 5, 9]\nx = 3 __ lists\n# 指定の要素がリストに含まれていれば、真\nprint(x)\n【出力】\nTrue',
   '指定の要素がリストに含まれていれば、真。正解: in',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'in',    NULL, true),
  (currval('questions_id_seq'), 'on',    NULL, false),
  (currval('questions_id_seq'), 'at',    NULL, false),
  (currval('questions_id_seq'), 'if',    NULL, false);

-- Python-65: 指定の要素がリストに含まれていれば、真
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 65, 'choice', 1, 1,
   E'【入力】\nstrs = ''Hello, World''\nx = '','' __ strs\n# 指定の要素がリストに含まれていれば、真\nprint(x)\n【出力】\nTrue',
   '指定の要素がリストに含まれていれば、真。正解: in',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'in',    NULL, true),
  (currval('questions_id_seq'), 'on',    NULL, false),
  (currval('questions_id_seq'), 'at',    NULL, false),
  (currval('questions_id_seq'), 'if',    NULL, false);

-- Python-66: 文字列が指定の文字で始まっていれば、真
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 66, 'choice', 1, 1,
   E'【入力】\nstrs = ''Hello, World''\nx = _____\n# 文字列が指定の文字で始まっていれば、真\nprint(x)\n【出力】\nTrue',
   '文字列が指定の文字で始まっていれば、真。正解: strs.startswith(''Hello'')',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'strs.startswith(''Hello'')',    NULL, true),
  (currval('questions_id_seq'), 'strs.startwith(''Hello'')',    NULL, false),
  (currval('questions_id_seq'), '''Hello''.startswith(strs)',    NULL, false),
  (currval('questions_id_seq'), '''Hello''.startwith(strs)',    NULL, false);

-- Python-67: xに文字列を順番に代入する(ループ文)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 67, 'choice', 1, 1,
   E'【入力】\nstrs = ''Hey''\n_____ x in strs:\n    print(x)\n# xに文字列を順番に代入する(ループ文)\n【出力】\nH\ne\ny',
   'xに文字列を順番に代入する(ループ文)。正解: for',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'for',    NULL, true),
  (currval('questions_id_seq'), 'if',    NULL, false),
  (currval('questions_id_seq'), 'with',    NULL, false),
  (currval('questions_id_seq'), 'while',    NULL, false);

-- Python-68: xにリストの値を順番に代入する(ループ文)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 68, 'choice', 1, 1,
   E'【入力】\nlists = [3, 1, 4]\n_____ x in lists:\n    print(x)\n# xにリストの値を順番に代入する(ループ文)\n【出力】\n3\n1\n4',
   'xにリストの値を順番に代入する(ループ文)。正解: for',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'for',    NULL, true),
  (currval('questions_id_seq'), 'if',    NULL, false),
  (currval('questions_id_seq'), 'with',    NULL, false),
  (currval('questions_id_seq'), 'while',    NULL, false);

-- Python-69: xに辞書のアイテムを順番に代入する(ループ文)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 69, 'choice', 1, 1,
   E'【入力】\ndicts = {3: ''three'', 1: ''one'', 4: ''four''}\nfor x in _____:\n    print(x)\n# xに辞書のアイテムを順番に代入する(ループ文)\n【出力】\n(3, ''three'')\n(1, ''one'')\n(4, ''four'')',
   'xに辞書のアイテムを順番に代入する(ループ文)。正解: dicts.items()',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'dicts.items()',    NULL, true),
  (currval('questions_id_seq'), 'dicts.item()',    NULL, false),
  (currval('questions_id_seq'), 'items(dicts)',    NULL, false),
  (currval('questions_id_seq'), 'dicts',    NULL, false);

-- Python-70: xに0から順番に3つの数字を代入する
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 70, 'choice', 1, 1,
   E'【入力】\nfor x in _____:\n    print(x)\n# xに0から順番に3つの数字を代入する\n【出力】\n0\n1\n2',
   'xに0から順番に3つの数字を代入する。正解: range(3)',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'range(3)',    NULL, true),
  (currval('questions_id_seq'), 'range(2)',    NULL, false),
  (currval('questions_id_seq'), 'range(1,3)',    NULL, false),
  (currval('questions_id_seq'), 'range(1)',    NULL, false);

-- Python-71: xに2から4までの数字を代入する
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 71, 'choice', 1, 1,
   E'【入力】\nfor x in _____:\n    print(x)\n# xに2から4までの数字を代入する\n【出力】\n2\n3\n4',
   'xに2から4までの数字を代入する。正解: range(2,5)',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'range(2,5)',    NULL, true),
  (currval('questions_id_seq'), 'range(3,5)',    NULL, false),
  (currval('questions_id_seq'), 'range(2,4)',    NULL, false),
  (currval('questions_id_seq'), 'range(3)',    NULL, false);

-- Python-72: ループを抜け出す
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 72, 'choice', 1, 1,
   E'【入力】\nlists = [3, 1, 4, 1, 5, 9]\nfor x in lists:\n    if x % 2 == 1:\n        print(x)\n    else:\n        _____\n# ループを抜け出す\n【出力】\n3\n1',
   'ループを抜け出す。正解: break',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'break',    NULL, true),
  (currval('questions_id_seq'), 'pass',    NULL, false),
  (currval('questions_id_seq'), 'continue',    NULL, false),
  (currval('questions_id_seq'), 'exit',    NULL, false);

-- Python-73: 実行を終了する
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 73, 'choice', 1, 1,
   E'【入力】\nlists = [3, 1, 4, 1, 5, 9]\nfor x in lists:\n    if x % 2 == 1:\n        print(x)\n    else:\n        _____\n# 実行を終了する\n【出力】\n3\n1',
   '実行を終了する。正解: exit()',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'exit()',    NULL, true),
  (currval('questions_id_seq'), 'pass',    NULL, false),
  (currval('questions_id_seq'), 'continue',    NULL, false),
  (currval('questions_id_seq'), 'exit',    NULL, false);

-- Python-74: 値を返す
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 74, 'choice', 1, 1,
   E'【入力】\ndef func():\n    _____ ''Hello, World''\n# 値を返す\nx = func()\nprint(x)\n【出力】\nHello, World',
   '値を返す。正解: return',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'return',    NULL, true),
  (currval('questions_id_seq'), 'pass',    NULL, false),
  (currval('questions_id_seq'), 'continue',    NULL, false),
  (currval('questions_id_seq'), 'break',    NULL, false);

-- Python-75: 同じ階層にあるコードを読み飛ばす
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 75, 'choice', 1, 1,
   E'【入力】\nlists = [3, 1, 4, 1, 5, 9]\nfor x in lists:\n    if x % 2 == 1:\n        _____\n    print(x)\n# 同じ階層にあるコードを読み飛ばす\n【出力】\n4',
   '同じ階層にあるコードを読み飛ばす。正解: continue',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'continue',    NULL, true),
  (currval('questions_id_seq'), 'pass',    NULL, false),
  (currval('questions_id_seq'), 'break',    NULL, false),
  (currval('questions_id_seq'), 'exit',    NULL, false);

-- Python-76: 何もしない
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 76, 'choice', 1, 1,
   E'【入力】\nlists = [3, 1, 4, 1, 5, 9]\nfor x in lists:\n    _____\n# 何もしない\n    if x % 2 == 1:\n        continue\n    print(x)\n【出力】\n4',
   '何もしない。正解: pass',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'pass',    NULL, true),
  (currval('questions_id_seq'), 'continue',    NULL, false),
  (currval('questions_id_seq'), 'break',    NULL, false),
  (currval('questions_id_seq'), 'return',    NULL, false);

-- Python-77: Greetクラスのworld()を起動する
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 77, 'choice', 1, 1,
   E'【入力】\nclass Greet:\n    def __init__(self):\n        self.x = ''Hello, ''\n    def world(self):\n        print(f"{self.x}World")\n_____\n# Greetクラスのworld()を起動する\n【出力】\nHello, World',
   'Greetクラスのworld()を起動する。正解: Greet().world()',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'Greet().world()',    NULL, true),
  (currval('questions_id_seq'), 'Greet.world()',    NULL, false),
  (currval('questions_id_seq'), 'world()',    NULL, false),
  (currval('questions_id_seq'), 'world(self)',    NULL, false);

-- Python-78: 処理後に終了処理を自動で行う
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 78, 'choice', 1, 1,
   E'【入力】\n_____ open(''file_path'', ''w'') as f:\n    f.write(''Hello, '')\n_____ open(''file_path'', ''a'') as f:\n    f.write(''World'')\n_____ open(''file_path'', ''r'') as f:\n    x = f.read()\n# 処理後に終了処理を自動で行う\nprint(x)\n【出力】\nHello, World',
   '処理後に終了処理を自動で行う。正解: with',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'with',    NULL, true),
  (currval('questions_id_seq'), 'while',    NULL, false),
  (currval('questions_id_seq'), 'for',    NULL, false),
  (currval('questions_id_seq'), 'try',    NULL, false);

-- Python-79: エラーが発生しうる処理に対して、例外処理を設定できる
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 79, 'choice', 1, 1,
   E'【入力】\nimport math\n_____\n    x = 1 / 0\n# エラーが発生しうる処理に対して、例外処理を設定できる\nexcept ZeroDivisionError:\n    x = math.pi\nprint(x)\n【出力】\n3.141592653589793',
   'エラーが発生しうる処理に対して、例外処理を設定できる。正解: try:',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'try:',    NULL, true),
  (currval('questions_id_seq'), 'if:',    NULL, false),
  (currval('questions_id_seq'), 'with:',    NULL, false),
  (currval('questions_id_seq'), 'while:',    NULL, false);

-- Python-80: for文の特殊な書き方1
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 80, 'choice', 1, 1,
   E'【入力】\nx = _____\nprint(x)\n# for文の特殊な書き方1\n【出力】\n[0, 1, 4, 9]',
   'for文の特殊な書き方1。正解: [i**2 for i in range(4)]',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '[i**2 for i in range(4)]',    NULL, true),
  (currval('questions_id_seq'), '[i*2 for i in range(4)]',    NULL, false),
  (currval('questions_id_seq'), '[i**2 for i in range(3)]',    NULL, false),
  (currval('questions_id_seq'), '[i**2 for i in range(1,4)]',    NULL, false);

-- Python-81: for文の特殊な書き方2
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 81, 'choice', 1, 1,
   E'【入力】\nx = _____\n# for文の特殊な書き方2\nprint(x)\n【出力】\n{0: 0, 1: 1, 2: 4}',
   'for文の特殊な書き方2。正解: {i: i**2 for i in range(3)}',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '{i: i**2 for i in range(3)}',    NULL, true),
  (currval('questions_id_seq'), '{i: i**2 for i in range(2)}',    NULL, false),
  (currval('questions_id_seq'), '{i: i*2 for i in range(3)}',    NULL, false),
  (currval('questions_id_seq'), '{i**2: i for i in range(3)}',    NULL, false);

-- Python-82: 条件式の省略した書き方
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 82, 'choice', 1, 1,
   E'【入力】\na = 5\nx = ''even'' if _____ else ''odd''\n# 条件式の省略した書き方\nprint(x)\n【出力】\nodd',
   '条件式の省略した書き方。正解: a % 2 == 0',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'a % 2 == 0',    NULL, true),
  (currval('questions_id_seq'), 'a % 2',    NULL, false),
  (currval('questions_id_seq'), 'a % 2 == 1',    NULL, false),
  (currval('questions_id_seq'), 'a // 2 == 0',    NULL, false);

-- Python-83: 定義式の省略した書き方
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 83, 'choice', 1, 1,
   E'【入力】\nnums = [1, 2, 3]\nx = list(map(_____, nums))\n# 定義式の省略した書き方\nprint(x)\n【出力】\n[2, 4, 6]',
   '定義式の省略した書き方。正解: lambda n: n*2',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'lambda n: n*2',    NULL, true),
  (currval('questions_id_seq'), 'lambda n: n+2',    NULL, false),
  (currval('questions_id_seq'), 'lambda n: n**2',    NULL, false),
  (currval('questions_id_seq'), 'lambda n: n/2',    NULL, false);

-- Python-84: リスト等に対して、順番に番号を割り振ることができる
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 84, 'choice', 1, 1,
   E'【入力】\nfruits = [''apple'', ''banana'']\nx = list(_____(fruits))\n# リスト等に対して、順番に番号を割り振ることができる\nprint(x)\n【出力】\n[(0, ''apple''), (1, ''banana'')]',
   'リスト等に対して、順番に番号を割り振ることができる。正解: enumerate',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'enumerate',    NULL, true),
  (currval('questions_id_seq'), 'zip',    NULL, false),
  (currval('questions_id_seq'), 'range',    NULL, false),
  (currval('questions_id_seq'), 'map',    NULL, false);

-- Python-85: 2つ以上のリスト等をまとめてペアにする関数
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 85, 'choice', 1, 1,
   E'【入力】\nkeys = [''a'', ''b'']\nvals = [1, 2]\nx = dict(_____(keys, vals))\n# 2つ以上のリスト等をまとめてペアにする関数\nprint(x)\n【出力】\n{''a'': 1, ''b'': 2}',
   '2つ以上のリスト等をまとめてペアにする関数。正解: zip',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'zip',    NULL, true),
  (currval('questions_id_seq'), 'enumerate',    NULL, false),
  (currval('questions_id_seq'), 'map',    NULL, false),
  (currval('questions_id_seq'), 'dict',    NULL, false);

-- Python-86: 条件が偽となる場合即エラー停止する(主に開発用途で使用)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 86, 'choice', 1, 1,
   E'【入力】\nx = 5\n_____ x >= 0, ''Negative value''\n# 条件が偽となる場合即エラー停止する(主に開発用途で使用)\nprint(''ok'')\n【出力】\nok',
   '条件が偽となる場合即エラー停止する(主に開発用途で使用)。正解: assert',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'assert',    NULL, true),
  (currval('questions_id_seq'), 'ensure',    NULL, false),
  (currval('questions_id_seq'), 'check',    NULL, false),
  (currval('questions_id_seq'), 'raise',    NULL, false);

-- Python-87: try-except構文で使用、構文の中で必ず実行される処理を書く
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 87, 'choice', 1, 1,
   E'【入力】\ntry:\n    x = 1 / 0\nexcept ZeroDivisionError:\n    x = 0\n_____: \n    x += 1\n# try-except構文で使用、構文の中で必ず実行される処理を書く\nprint(x)\n【出力】\n1',
   'try-except構文で使用、構文の中で必ず実行される処理を書く。正解: finally',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'finally',    NULL, true),
  (currval('questions_id_seq'), 'else',    NULL, false),
  (currval('questions_id_seq'), 'except',    NULL, false),
  (currval('questions_id_seq'), 'catch',    NULL, false);

-- Python-88: for文if文を組み合わせた省略形
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 88, 'choice', 1, 1,
   E'【入力】\nnums = [1, 2, 3, 4]\nx = sum(_____) \n# for文if文を組み合わせた省略形\nprint(x)\n【出力】\n6',
   'for文if文を組み合わせた省略形。正解: (n for n in nums if n % 2 == 0)',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '(n for n in nums if n % 2 == 0)',    NULL, true),
  (currval('questions_id_seq'), '(n for n in nums if n % 2 == 1)',    NULL, false),
  (currval('questions_id_seq'), '(n*2 for n in nums if n % 2 == 0)',    NULL, false),
  (currval('questions_id_seq'), '[n % 2 for n in nums]',    NULL, false);

-- Python-89: *は可変長引数で、渡された引数をまとめて1つのタプルにする
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 89, 'choice', 1, 1,
   E'【入力】\ndef add(*nums):\n    return sum(nums)\nx = add(_____)\n# *は可変長引数で、渡された引数をまとめて1つのタプルにする\nprint(x)\n【出力】\n6',
   '*は可変長引数で、渡された引数をまとめて1つのタプルにする。正解: 1, 2, 3',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '1, 2, 3',    NULL, true),
  (currval('questions_id_seq'), '[1, 2, 3]',    NULL, false),
  (currval('questions_id_seq'), '(1, 2, 3)',    NULL, false),
  (currval('questions_id_seq'), '{1, 2, 3}',    NULL, false);

-- Python-90: **はキーワード可変長引数で、渡された引数をまとめて辞書にする
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 90, 'choice', 1, 1,
   E'【入力】\ndef greet(**info):\n    return f"{info[''first'']} {info[''last'']}"\nx = greet(_____)\n# **はキーワード可変長引数で、渡された引数をまとめて辞書にする\nprint(x)\n【出力】\nJohn Doe',
   '**はキーワード可変長引数で、渡された引数をまとめて辞書にする。正解: first=''John'', last=''Doe''',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'first=''John'', last=''Doe''',    NULL, true),
  (currval('questions_id_seq'), '''John'', ''Doe''',    NULL, false),
  (currval('questions_id_seq'), 'first=''Doe'', last=''John''',    NULL, false),
  (currval('questions_id_seq'), '[''John'', ''Doe'']',    NULL, false);

-- Python-91: s[開始位置:終了位置:ステップ]で、sから一部分だけ取り出す
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 91, 'choice', 1, 1,
   E'【入力】\ns = ''abcdefghij''\nx = s[1:8:_____]\n# s[開始位置:終了位置:ステップ]で、sから一部分だけ取り出す\nprint(x)\n【出力】\nbdfh',
   's[開始位置:終了位置:ステップ]で、sから一部分だけ取り出す。正解: 2',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '2',    NULL, true),
  (currval('questions_id_seq'), '1',    NULL, false),
  (currval('questions_id_seq'), '3',    NULL, false),
  (currval('questions_id_seq'), '-1',    NULL, false);

-- Python-92: ステップが負の場合、逆から取り出す
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 92, 'choice', 1, 1,
   E'【入力】\ns = ''Python''\nx = s[::__]\n# ステップが負の場合、逆から取り出す\nprint(x)\n【出力】\nnohtyP',
   'ステップが負の場合、逆から取り出す。正解: -1',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '-1',    NULL, true),
  (currval('questions_id_seq'), '-2',    NULL, false),
  (currval('questions_id_seq'), '-3',    NULL, false),
  (currval('questions_id_seq'), '-4',    NULL, false);

-- Python-93: オブジェクトが等しければ、真(==と必ずしも一致しない)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 93, 'choice', 1, 1,
   E'【入力】\nx = 256\ny = 256\nprint(x __ y)\n# オブジェクトが等しければ、真(==と必ずしも一致しない)\n【出力】\nTrue',
   'オブジェクトが等しければ、真(==と必ずしも一致しない)。正解: is',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'is',    NULL, true),
  (currval('questions_id_seq'), 'if',    NULL, false),
  (currval('questions_id_seq'), 'eq',    NULL, false),
  (currval('questions_id_seq'), '=',    NULL, false);

-- Python-94: リスト等に含まれる要素が1つでも真であれば、真
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 94, 'choice', 1, 1,
   E'【入力】\nnums = [0, 0, 3]\nprint(any(nums))\n# リスト等に含まれる要素が1つでも真であれば、真\nprint(___(nums))\n# リスト等に含まれる要素が全て真であれば、真\n# pythonでは、0,0.0,'''',[],(),{},set(),None,Falseが偽として扱われる。それ以外は真\n【出力】\nTrue\nFalse',
   'リスト等に含まれる要素が1つでも真であれば、真。正解: all',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'all',    NULL, true),
  (currval('questions_id_seq'), 'any',    NULL, false),
  (currval('questions_id_seq'), 'sum',    NULL, false),
  (currval('questions_id_seq'), 'max',    NULL, false);

-- Python-95: エラーを自分で定義してプログラムを終了させる
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 95, 'choice', 1, 1,
   E'【入力】\ndef positive(n):\n    if n < 0:\n        _____ ValueError(''negative!'')\n    return n\n# エラーを自分で定義してプログラムを終了させる\ntry:\n    positive(-1)\nexcept ValueError as e:\n    print(e)\n【出力】\nnegative!',
   'エラーを自分で定義してプログラムを終了させる。正解: raise',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'raise',    NULL, true),
  (currval('questions_id_seq'), 'assert',    NULL, false),
  (currval('questions_id_seq'), 'except',    NULL, false),
  (currval('questions_id_seq'), 'return',    NULL, false);

-- Python-96: next()を呼び出すとyieldを区切りとしてプログラムを細切れで実行できる
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 96, 'choice', 1, 1,
   E'【入力】\ndef fib():\n    a, b = 0, 1\n    while True:\n        _____ a\n        a, b = b, a + b\ng = fib()\nfor i in range(5):\n    print(next(g))\n# next()を呼び出すとyieldを区切りとしてプログラムを細切れで実行できる\n【出力】\n0\n1\n1\n2\n3',
   'next()を呼び出すとyieldを区切りとしてプログラムを細切れで実行できる。正解: yield',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'yield',    NULL, true),
  (currval('questions_id_seq'), 'return',    NULL, false),
  (currval('questions_id_seq'), 'break',    NULL, false),
  (currval('questions_id_seq'), 'pass',    NULL, false);

-- Python-97: matchの後ろの値とcaseの後ろの値が等しいとき、処理が実行される
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 97, 'choice', 1, 1,
   E'【入力】\nvalue = [1, 2]\n_____ value:\n    case [x, y]:\n        print(x + y)\n    case _:\n        print(0)\n# matchの後ろの値とcaseの後ろの値が等しいとき、処理が実行される\n【出力】\n3',
   'matchの後ろの値とcaseの後ろの値が等しいとき、処理が実行される。正解: match',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'match',    NULL, true),
  (currval('questions_id_seq'), 'if',    NULL, false),
  (currval('questions_id_seq'), 'for',    NULL, false),
  (currval('questions_id_seq'), 'while',    NULL, false);

-- Python-98: 便利なライブラリ集
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 98, 'choice', 1, 1,
   E'【入力】\n# 便利なライブラリ集\nfrom itertools import product\nx = list(_____([1,2],[3,4]))\n# 2つのリストの要素の直積をタプルで列挙する\nprint(x)\n【出力】\n[(1, 3), (1, 4), (2, 3), (2, 4)]',
   '便利なライブラリ集。正解: product',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'product',    NULL, true),
  (currval('questions_id_seq'), 'combinations',    NULL, false),
  (currval('questions_id_seq'), 'permutations',    NULL, false),
  (currval('questions_id_seq'), 'accumulate',    NULL, false);

-- Python-99: 便利なライブラリ集
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 99, 'choice', 1, 1,
   E'【入力】\n# 便利なライブラリ集\nfrom itertools import combinations\nx = list(_____(range(4), 2))\n# 要素を順不同で2つ取り出す\nprint(x)\n【出力】\n[(0, 1), (0, 2), (0, 3), (1, 2), (1, 3), (2, 3)]',
   '便利なライブラリ集。正解: combinations',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'combinations',    NULL, true),
  (currval('questions_id_seq'), 'product',    NULL, false),
  (currval('questions_id_seq'), 'permutations',    NULL, false),
  (currval('questions_id_seq'), 'accumulate',    NULL, false);

-- Python-100: 便利なライブラリ集
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 100, 'choice', 1, 1,
   E'【入力】\n# 便利なライブラリ集\nfrom itertools import accumulate\nx = list(_____([1, 2, 3, 4]))\n# 累積和を求める\nprint(x)\n【出力】\n[1, 3, 6, 10]',
   '便利なライブラリ集。正解: accumulate',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'accumulate',    NULL, true),
  (currval('questions_id_seq'), 'sum',    NULL, false),
  (currval('questions_id_seq'), 'product',    NULL, false),
  (currval('questions_id_seq'), 'combinations',    NULL, false);

-- Python-101: 便利なライブラリ集
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 101, 'choice', 1, 1,
   E'【入力】\n# 便利なライブラリ集\nfrom collections import Counter\ncnt = _____(''abaac'')\n# 文字ごとの出現回数を辞書形で保持する\nprint(cnt[''a''])\n【出力】\n3',
   '便利なライブラリ集。正解: Counter',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'Counter',    NULL, true),
  (currval('questions_id_seq'), 'defaultdict',    NULL, false),
  (currval('questions_id_seq'), 'deque',    NULL, false),
  (currval('questions_id_seq'), 'dict',    NULL, false);

-- Python-102: 便利なライブラリ集
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 102, 'choice', 1, 1,
   E'【入力】\n# 便利なライブラリ集\nfrom collections import defaultdict\nfreq = _____(int)\n# 未登録キーにアクセスすると自動で0を返す\nfreq[''x''] += 1\nprint(freq[''x''])\n【出力】\n1',
   '便利なライブラリ集。正解: defaultdict',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'defaultdict',    NULL, true),
  (currval('questions_id_seq'), 'Counter',    NULL, false),
  (currval('questions_id_seq'), 'dict',    NULL, false),
  (currval('questions_id_seq'), 'deque',    NULL, false);

-- Python-103: 便利なライブラリ集
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 103, 'choice', 1, 1,
   E'【入力】\n# 便利なライブラリ集\nfrom collections import deque\nq = deque([1, 2, 3])\n_____(q, 0)\n# 両端の処理をリストより早く行える\nprint(list(q))\n【出力】\n[0, 1, 2, 3]',
   '便利なライブラリ集。正解: q.appendleft',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'q.appendleft',    NULL, true),
  (currval('questions_id_seq'), 'q.append',    NULL, false),
  (currval('questions_id_seq'), 'q.insert',    NULL, false),
  (currval('questions_id_seq'), 'q.extendleft',    NULL, false);

-- Python-104: 便利なライブラリ集
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 104, 'choice', 1, 1,
   E'【入力】\n# 便利なライブラリ集\nimport heapq\nh = []\n_____(h, 3)\nheapq.heappush(h, 1)\nheapq.heappush(h, 2)\n# 最小値をリストより早く取り出せる\nprint(heapq.heappop(h))\n【出力】\n1',
   '便利なライブラリ集。正解: heapq.heappush',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'heapq.heappush',    NULL, true),
  (currval('questions_id_seq'), 'heapq.push',    NULL, false),
  (currval('questions_id_seq'), 'heapq.append',    NULL, false),
  (currval('questions_id_seq'), 'heappush',    NULL, false);

-- Python-105: 便利なライブラリ集
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 105, 'choice', 1, 1,
   E'【入力】\n# 便利なライブラリ集\nimport heapq\nh = [5, 1, 3]\n_____(h)\n# リストをヒープに変換する(最小値を取り出すのが早くなる)\nprint(heapq.heappop(h))\n【出力】\n1',
   '便利なライブラリ集。正解: heapq.heapify',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'heapq.heapify',    NULL, true),
  (currval('questions_id_seq'), 'heapq.heappush',    NULL, false),
  (currval('questions_id_seq'), 'heapq.sort',    NULL, false),
  (currval('questions_id_seq'), 'sorted',    NULL, false);

-- Python-106: 便利なライブラリ集
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 106, 'choice', 1, 1,
   E'【入力】\n# 便利なライブラリ集\nimport bisect\narr = [1, 3, 3, 5]\nidx = bisect._____(arr, 3)\n# 昇順(降順)のリストにある要素の左側の位置を教えてくれる\nprint(idx)\n【出力】\n1',
   '便利なライブラリ集。正解: bisect_left',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'bisect_left',    NULL, true),
  (currval('questions_id_seq'), 'bisect_right',    NULL, false),
  (currval('questions_id_seq'), 'insort',    NULL, false),
  (currval('questions_id_seq'), 'index',    NULL, false);

-- Python-107: 便利なライブラリ集
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 107, 'choice', 1, 1,
   E'【入力】\n# 便利なライブラリ集\nimport bisect\narr = [1, 3, 4, 5]\nidx = bisect._____(arr, 3)\n# 昇順(降順)のリストにある要素の右側の位置を教えてくれる\nprint(idx)\n【出力】\n2',
   '便利なライブラリ集。正解: bisect_right',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'bisect_right',    NULL, true),
  (currval('questions_id_seq'), 'bisect_left',    NULL, false),
  (currval('questions_id_seq'), 'insort',    NULL, false),
  (currval('questions_id_seq'), 'index',    NULL, false);

-- Python-108: 便利なライブラリ集
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 108, 'choice', 1, 1,
   E'【入力】\n# 便利なライブラリ集\nimport math\nx = math._____(84, 30)\n# 最大公約数を出力する\nprint(x)\n【出力】\n6',
   '便利なライブラリ集。正解: gcd',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'gcd',    NULL, true),
  (currval('questions_id_seq'), 'lcm',    NULL, false),
  (currval('questions_id_seq'), 'factorial',    NULL, false),
  (currval('questions_id_seq'), 'isqrt',    NULL, false);

-- Python-109: 便利なライブラリ集
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (40, NULL, 109, 'choice', 1, 1,
   E'【入力】\n# 便利なライブラリ集\nimport math\nn = 9876\nx = math._____(n)\n# isqrt: 整数平方根（切り捨て）を出力する\nprint(x)\n【出力】\n99',
   '便利なライブラリ集。正解: isqrt',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'isqrt',    NULL, true),
  (currval('questions_id_seq'), 'sqrt',    NULL, false),
  (currval('questions_id_seq'), 'floor',    NULL, false),
  (currval('questions_id_seq'), 'pow',    NULL, false);

