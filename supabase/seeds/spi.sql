-- ============================================
-- SPI試験
-- section_id: 12=言語, 13=非言語
--
-- 問題を追加するときはこのファイルの末尾に追記する
-- 書き方:
--   INSERT INTO questions (...) VALUES (section_id, NULL, 次の連番, ...);
--   INSERT INTO choices (question_id, ...) VALUES (currval('questions_id_seq'), ...);
-- ============================================

-- ----------------------------------------
-- 言語（section_id=12）Q1〜Q40
-- ----------------------------------------

-- 語句の意味（Q1〜Q6）

-- 言語-1: 語句の意味（慇懃）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 1, 'choice', 1, 1,
   '次の語句の意味として最も適切なものはどれか。「慇懃（いんぎん）」',
   '「慇懃」は、礼儀正しく丁寧なさまを意味する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '礼儀正しく丁寧なさま',     NULL, true),
  (currval('questions_id_seq'), '傲慢で横柄なさま',         NULL, false),
  (currval('questions_id_seq'), '物事に無関心なさま',       NULL, false),
  (currval('questions_id_seq'), '言葉数が少ないさま',       NULL, false);

-- 言語-2: 語句の意味（齟齬）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 2, 'choice', 1, 1,
   '次の語句の意味として最も適切なものはどれか。「齟齬（そご）」',
   '「齟齬」は、物事がうまくかみ合わないこと・食い違いを意味する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '物事がかみ合わないこと',   NULL, true),
  (currval('questions_id_seq'), '物事が順調に進むこと',     NULL, false),
  (currval('questions_id_seq'), '急いで行動すること',       NULL, false),
  (currval('questions_id_seq'), '深く考えすぎること',       NULL, false);

-- 言語-3: 語句の意味（杞憂）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 3, 'choice', 1, 1,
   '次の語句の意味として最も適切なものはどれか。「杞憂（きゆう）」',
   '「杞憂」は、心配する必要がない取り越し苦労を意味する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '取り越し苦労',             NULL, true),
  (currval('questions_id_seq'), '深い悲しみ',               NULL, false),
  (currval('questions_id_seq'), '強い怒り',                 NULL, false),
  (currval('questions_id_seq'), '大きな喜び',               NULL, false);

-- 言語-4: 語句の意味（嚆矢）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 4, 'choice', 1, 1,
   '次の語句の意味として最も適切なものはどれか。「嚆矢（こうし）」',
   '「嚆矢」は、物事のはじめ・最初を意味する。矢を放つ音が戦いの始まりを告げたことに由来する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '物事のはじまり',           NULL, true),
  (currval('questions_id_seq'), '物事の終わり',             NULL, false),
  (currval('questions_id_seq'), '物事の最盛期',             NULL, false),
  (currval('questions_id_seq'), '物事の転換点',             NULL, false);

-- 言語-5: 語句の意味（僥倖）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 5, 'choice', 1, 1,
   '次の語句の意味として最も適切なものはどれか。「僥倖（ぎょうこう）」',
   '「僥倖」は、思いがけない幸運・偶然の幸いを意味する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '思いがけない幸運',         NULL, true),
  (currval('questions_id_seq'), '努力によって得た成果',     NULL, false),
  (currval('questions_id_seq'), '予期していた不幸',         NULL, false),
  (currval('questions_id_seq'), '避けられない運命',         NULL, false);

-- 言語-6: 語句の意味（払拭）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 6, 'choice', 1, 1,
   '次の語句の意味として最も適切なものはどれか。「払拭（ふっしょく）」',
   '「払拭」は、すっかり取り除くことを意味する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'すっかり取り除くこと',     NULL, true),
  (currval('questions_id_seq'), '大切に保管すること',       NULL, false),
  (currval('questions_id_seq'), '改めて確認すること',       NULL, false),
  (currval('questions_id_seq'), '徐々に増やすこと',         NULL, false);

-- 同意語（Q7〜Q12）

-- 言語-7: 同意語（逡巡）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 7, 'choice', 1, 1,
   '次の語句と同じ意味の語句はどれか。「逡巡（しゅんじゅん）」',
   '「逡巡」はためらってぐずぐずするさまを意味し、「躊躇」と同意。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '躊躇',   NULL, true),
  (currval('questions_id_seq'), '決断',   NULL, false),
  (currval('questions_id_seq'), '邁進',   NULL, false),
  (currval('questions_id_seq'), '断念',   NULL, false);

-- 言語-8: 同意語（斡旋）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 8, 'choice', 1, 1,
   '次の語句と同じ意味の語句はどれか。「斡旋（あっせん）」',
   '「斡旋」は双方の間に立って仲介することを意味し、「仲介」と同意。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '仲介',   NULL, true),
  (currval('questions_id_seq'), '妨害',   NULL, false),
  (currval('questions_id_seq'), '競争',   NULL, false),
  (currval('questions_id_seq'), '拒絶',   NULL, false);

-- 言語-9: 同意語（憂慮）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 9, 'choice', 1, 1,
   '次の語句と同じ意味の語句はどれか。「憂慮（ゆうりょ）」',
   '「憂慮」は将来のことを心配して思い悩むことを意味し、「懸念」と同意。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '懸念',   NULL, true),
  (currval('questions_id_seq'), '楽観',   NULL, false),
  (currval('questions_id_seq'), '安堵',   NULL, false),
  (currval('questions_id_seq'), '期待',   NULL, false);

-- 言語-10: 同意語（漸次）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 10, 'choice', 1, 1,
   '次の語句と同じ意味の語句はどれか。「漸次（ぜんじ）」',
   '「漸次」は少しずつ・だんだんという意味で、「徐々に」と同意。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '徐々に',   NULL, true),
  (currval('questions_id_seq'), '突然',     NULL, false),
  (currval('questions_id_seq'), '一斉に',   NULL, false),
  (currval('questions_id_seq'), '再び',     NULL, false);

-- 言語-11: 同意語（顕著）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 11, 'choice', 1, 1,
   '次の語句と同じ意味の語句はどれか。「顕著（けんちょ）」',
   '「顕著」は際立って目立つという意味で、「著しい」と同意。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '著しい',   NULL, true),
  (currval('questions_id_seq'), '微細な',   NULL, false),
  (currval('questions_id_seq'), '曖昧な',   NULL, false),
  (currval('questions_id_seq'), '平凡な',   NULL, false);

-- 言語-12: 同意語（敷衍）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 12, 'choice', 1, 1,
   '次の語句と同じ意味の語句はどれか。「敷衍（ふえん）」',
   '「敷衍」は意味を押し広げて詳しく説明することを意味し、「敷説」「詳説」と同意。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '詳説',   NULL, true),
  (currval('questions_id_seq'), '要約',   NULL, false),
  (currval('questions_id_seq'), '省略',   NULL, false),
  (currval('questions_id_seq'), '批評',   NULL, false);

-- 反意語（Q13〜Q18）

-- 言語-13: 反意語（抽象）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 13, 'choice', 1, 1,
   '次の語句の反対の意味を持つ語句はどれか。「抽象（ちゅうしょう）」',
   '「抽象」の反意語は「具体」。抽象は概念的・一般的なさまを、具体は実際の形や内容が明確なさまを意味する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '具体',   NULL, true),
  (currval('questions_id_seq'), '観念',   NULL, false),
  (currval('questions_id_seq'), '理念',   NULL, false),
  (currval('questions_id_seq'), '概念',   NULL, false);

-- 言語-14: 反意語（冗長）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 14, 'choice', 1, 1,
   '次の語句の反対の意味を持つ語句はどれか。「冗長（じょうちょう）」',
   '「冗長」（むだに長くくどいこと）の反意語は「簡潔」。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '簡潔',   NULL, true),
  (currval('questions_id_seq'), '詳細',   NULL, false),
  (currval('questions_id_seq'), '丁寧',   NULL, false),
  (currval('questions_id_seq'), '明瞭',   NULL, false);

-- 言語-15: 反意語（促進）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 15, 'choice', 1, 1,
   '次の語句の反対の意味を持つ語句はどれか。「促進（そくしん）」',
   '「促進」（物事を早めること）の反意語は「抑制」。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '抑制',   NULL, true),
  (currval('questions_id_seq'), '推進',   NULL, false),
  (currval('questions_id_seq'), '奨励',   NULL, false),
  (currval('questions_id_seq'), '加速',   NULL, false);

-- 言語-16: 反意語（独創）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 16, 'choice', 1, 1,
   '次の語句の反対の意味を持つ語句はどれか。「独創（どくそう）」',
   '「独創」（自分だけの発想でつくること）の反意語は「模倣」。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '模倣',   NULL, true),
  (currval('questions_id_seq'), '創造',   NULL, false),
  (currval('questions_id_seq'), '発明',   NULL, false),
  (currval('questions_id_seq'), '考案',   NULL, false);

-- 言語-17: 反意語（軽率）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 17, 'choice', 1, 1,
   '次の語句の反対の意味を持つ語句はどれか。「軽率（けいそつ）」',
   '「軽率」（よく考えずに行動すること）の反意語は「慎重」。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '慎重',   NULL, true),
  (currval('questions_id_seq'), '大胆',   NULL, false),
  (currval('questions_id_seq'), '果敢',   NULL, false),
  (currval('questions_id_seq'), '迅速',   NULL, false);

-- 言語-18: 反意語（隆盛）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 18, 'choice', 1, 1,
   '次の語句の反対の意味を持つ語句はどれか。「隆盛（りゅうせい）」',
   '「隆盛」（勢いが盛んなこと）の反意語は「衰退」。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '衰退',   NULL, true),
  (currval('questions_id_seq'), '繁栄',   NULL, false),
  (currval('questions_id_seq'), '興隆',   NULL, false),
  (currval('questions_id_seq'), '発展',   NULL, false);

-- 語句の用法（Q19〜Q24）

-- 言語-19: 語句の用法（棚に上げる）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 19, 'choice', 1, 1,
   '次の慣用句の意味として最も適切なものはどれか。「棚に上げる」',
   '「棚に上げる」は、自分に都合の悪いことを問題にしないでおくことを意味する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '都合の悪いことを問題にしないでおく',   NULL, true),
  (currval('questions_id_seq'), '物事を高く評価する',                   NULL, false),
  (currval('questions_id_seq'), '物事を整理して保管する',               NULL, false),
  (currval('questions_id_seq'), '物事を後で見直す',                     NULL, false);

-- 言語-20: 語句の用法（一朝一夕）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 20, 'choice', 1, 1,
   '次の慣用句の意味として最も適切なものはどれか。「一朝一夕（いっちょういっせき）」',
   '「一朝一夕」は、非常に短い時間・わずかな期間を意味する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ごくわずかな期間',         NULL, true),
  (currval('questions_id_seq'), '長い年月',                 NULL, false),
  (currval('questions_id_seq'), '朝から晩まで',             NULL, false),
  (currval('questions_id_seq'), '一生の間',                 NULL, false);

-- 言語-21: 語句の用法（耳を疑う）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 21, 'choice', 1, 1,
   '次の慣用句の意味として最も適切なものはどれか。「耳を疑う」',
   '「耳を疑う」は、聞いた内容が信じられないほど驚くことを意味する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '聞いた内容が信じられず驚く',   NULL, true),
  (currval('questions_id_seq'), '聴力に問題が生じる',           NULL, false),
  (currval('questions_id_seq'), '注意深く聞こうとする',         NULL, false),
  (currval('questions_id_seq'), '人の話を無視する',             NULL, false);

-- 言語-22: 語句の用法（青天の霹靂）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 22, 'choice', 1, 1,
   '次の慣用句の意味として最も適切なものはどれか。「青天の霹靂（せいてんのへきれき）」',
   '「青天の霹靂」は、晴れた空に突然雷が鳴るように、突然の出来事に非常に驚くことを意味する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '突然の出来事に非常に驚くこと',   NULL, true),
  (currval('questions_id_seq'), '努力が実を結ぶこと',             NULL, false),
  (currval('questions_id_seq'), '天気が急変すること',             NULL, false),
  (currval('questions_id_seq'), '状況が好転すること',             NULL, false);

-- 言語-23: 語句の用法（焼け石に水）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 23, 'choice', 1, 1,
   '次の慣用句の意味として最も適切なものはどれか。「焼け石に水」',
   '「焼け石に水」は、わずかな努力や援助では何の効果もないことを意味する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'わずかな援助では効果がないこと',   NULL, true),
  (currval('questions_id_seq'), '熱心に取り組むこと',               NULL, false),
  (currval('questions_id_seq'), '物事が勢いよく進むこと',           NULL, false),
  (currval('questions_id_seq'), '困難を乗り越えること',             NULL, false);

-- 言語-24: 語句の用法（二の足を踏む）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 24, 'choice', 1, 1,
   '次の慣用句の意味として最も適切なものはどれか。「二の足を踏む」',
   '「二の足を踏む」は、ためらって決断できないことを意味する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ためらって決断できない',     NULL, true),
  (currval('questions_id_seq'), '勇気を持って進む',           NULL, false),
  (currval('questions_id_seq'), '失敗を繰り返す',             NULL, false),
  (currval('questions_id_seq'), '素早く行動に移す',           NULL, false);

-- 二語関係（Q25〜Q30）

-- 言語-25: 二語関係（医師：診断）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 25, 'choice', 1, 1,
   '「医師：診断」と同じ関係になるように、「弁護士：＿＿」の＿＿に入る最も適切な語はどれか。',
   '「医師：診断」は「専門職：その専門職が行う行為」の関係。同様に「弁護士：弁護」も同じ関係にある。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '弁護',   NULL, true),
  (currval('questions_id_seq'), '訴訟',   NULL, false),
  (currval('questions_id_seq'), '判決',   NULL, false),
  (currval('questions_id_seq'), '裁判',   NULL, false);

-- 言語-26: 二語関係（加速：速度）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 26, 'choice', 1, 1,
   '「加速：速度」と同じ関係になるように、「冷却：＿＿」の＿＿に入る最も適切な語はどれか。',
   '「加速：速度」は「動作：その動作が変化させる対象」の関係。「冷却」は温度を下げる行為なので「冷却：温度」が同じ関係にある。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '温度',   NULL, true),
  (currval('questions_id_seq'), '冷蔵',   NULL, false),
  (currval('questions_id_seq'), '気温',   NULL, false),
  (currval('questions_id_seq'), '湿度',   NULL, false);

-- 言語-27: 二語関係（東京：関東）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 27, 'choice', 1, 1,
   '「東京：関東」と同じ関係になるように、「大阪：＿＿」の＿＿に入る最も適切な語はどれか。',
   '「東京：関東」は「都市：その都市が属する地方」の関係。大阪は近畿地方に属するので「大阪：近畿」が同じ関係にある。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '近畿',   NULL, true),
  (currval('questions_id_seq'), '中部',   NULL, false),
  (currval('questions_id_seq'), '四国',   NULL, false),
  (currval('questions_id_seq'), '中国',   NULL, false);

-- 言語-28: 二語関係（増加：減少）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 28, 'choice', 1, 1,
   '「増加：減少」と同じ関係になるように、「拡大：＿＿」の＿＿に入る最も適切な語はどれか。',
   '「増加：減少」は反意語の関係。「拡大」の反意語は「縮小」なので「拡大：縮小」が同じ関係にある。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '縮小',   NULL, true),
  (currval('questions_id_seq'), '圧縮',   NULL, false),
  (currval('questions_id_seq'), '削減',   NULL, false),
  (currval('questions_id_seq'), '縮減',   NULL, false);

-- 言語-29: 二語関係（辞書：言葉）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 29, 'choice', 1, 1,
   '「辞書：言葉」と同じ関係になるように、「地図：＿＿」の＿＿に入る最も適切な語はどれか。',
   '「辞書：言葉」は「情報をまとめたもの：その情報の内容」の関係。地図は地形情報をまとめたものなので「地図：地形」が同じ関係にある。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '地形',   NULL, true),
  (currval('questions_id_seq'), '方角',   NULL, false),
  (currval('questions_id_seq'), '距離',   NULL, false),
  (currval('questions_id_seq'), '道路',   NULL, false);

-- 言語-30: 二語関係（桜：落葉）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 30, 'choice', 1, 1,
   '「桜：落葉樹」と同じ関係になるように、「松：＿＿」の＿＿に入る最も適切な語はどれか。',
   '「桜：落葉樹」は「植物：その植物が属する種類」の関係。松は常緑樹に属するので「松：常緑樹」が同じ関係にある。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '常緑樹',   NULL, true),
  (currval('questions_id_seq'), '針葉樹',   NULL, false),
  (currval('questions_id_seq'), '広葉樹',   NULL, false),
  (currval('questions_id_seq'), '低木',     NULL, false);

-- 文の並べ替え（Q31〜Q35）

-- 言語-31: 文の並べ替え（会議の準備）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 31, 'choice', 1, 1,
   '次のア〜エの文を意味が通るよう並べ替えたとき、正しい順序はどれか。
ア. しかし、議題を事前に共有することが最も重要だ。
イ. 会議を成功させるためには、十分な準備が欠かせない。
ウ. そうすることで参加者全員が意見をまとめやすくなる。
エ. 特に、資料の配布は前日までに完了させるべきだ。',
   '正しい順序はイ→ア→エ→ウ。「準備が必要（イ）」→「議題共有が最重要（ア）」→「資料配布（エ）」→「その効果（ウ）」と展開する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'イ→ア→エ→ウ',   NULL, true),
  (currval('questions_id_seq'), 'ア→イ→ウ→エ',   NULL, false),
  (currval('questions_id_seq'), 'イ→エ→ア→ウ',   NULL, false),
  (currval('questions_id_seq'), 'ア→エ→イ→ウ',   NULL, false);

-- 言語-32: 文の並べ替え（読書の効果）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 32, 'choice', 1, 1,
   '次のア〜エの文を意味が通るよう並べ替えたとき、正しい順序はどれか。
ア. その結果、語彙力や表現力が豊かになる。
イ. 読書は多くのメリットをもたらす。
ウ. また、思考力や集中力の向上にもつながる。
エ. まず、さまざまな知識や情報を吸収できる。',
   '正しい順序はイ→エ→ア→ウ。総論（イ）→最初の利点（エ）→その結果（ア）→さらに別の利点（ウ）と展開する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'イ→エ→ア→ウ',   NULL, true),
  (currval('questions_id_seq'), 'イ→ア→エ→ウ',   NULL, false),
  (currval('questions_id_seq'), 'エ→イ→ア→ウ',   NULL, false),
  (currval('questions_id_seq'), 'イ→ウ→エ→ア',   NULL, false);

-- 言語-33: 文の並べ替え（環境問題）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 33, 'choice', 1, 1,
   '次のア〜エの文を意味が通るよう並べ替えたとき、正しい順序はどれか。
ア. つまり、私たちひとりひとりの行動が問われている。
イ. 地球温暖化が深刻な問題となっている。
ウ. これを解決するには、日常の省エネが効果的だ。
エ. その原因は、大量の二酸化炭素の排出にある。',
   '正しい順序はイ→エ→ウ→ア。問題提起（イ）→原因（エ）→解決策（ウ）→結論（ア）と展開する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'イ→エ→ウ→ア',   NULL, true),
  (currval('questions_id_seq'), 'イ→ウ→エ→ア',   NULL, false),
  (currval('questions_id_seq'), 'エ→イ→ウ→ア',   NULL, false),
  (currval('questions_id_seq'), 'イ→エ→ア→ウ',   NULL, false);

-- 言語-34: 文の並べ替え（習慣の形成）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 34, 'choice', 1, 1,
   '次のア〜エの文を意味が通るよう並べ替えたとき、正しい順序はどれか。
ア. まず、小さな目標を毎日継続することが大切だ。
イ. 良い習慣を身につけるのは簡単ではない。
ウ. しかし、三週間継続すると習慣として定着しやすくなる。
エ. そのため、記録をつけてモチベーションを維持しよう。',
   '正しい順序はイ→ア→ウ→エ。困難の提示（イ）→対処法（ア）→継続の効果（ウ）→具体的手段（エ）と展開する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'イ→ア→ウ→エ',   NULL, true),
  (currval('questions_id_seq'), 'ア→イ→ウ→エ',   NULL, false),
  (currval('questions_id_seq'), 'イ→ウ→ア→エ',   NULL, false),
  (currval('questions_id_seq'), 'イ→ア→エ→ウ',   NULL, false);

-- 言語-35: 文の並べ替え（リーダーシップ）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 35, 'choice', 1, 1,
   '次のア〜エの文を意味が通るよう並べ替えたとき、正しい順序はどれか。
ア. それは、メンバーの意見をよく聞く姿勢である。
イ. 優れたリーダーに共通する特徴がある。
ウ. こうして信頼関係が築かれ、チームが一体となる。
エ. そのうえで、明確な方向性を示すことが求められる。',
   '正しい順序はイ→ア→エ→ウ。総論（イ）→傾聴の姿勢（ア）→方向性の提示（エ）→チームの一体化（ウ）と展開する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'イ→ア→エ→ウ',   NULL, true),
  (currval('questions_id_seq'), 'ア→イ→エ→ウ',   NULL, false),
  (currval('questions_id_seq'), 'イ→エ→ア→ウ',   NULL, false),
  (currval('questions_id_seq'), 'ア→エ→イ→ウ',   NULL, false);

-- 空欄補充（Q36〜Q40）

-- 言語-36: 空欄補充（独創性）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 36, 'choice', 1, 1,
   '次の文の（　）に入る最も適切な語句はどれか。
「彼の提案は（　）に富んでおり、会議で高く評価された。」',
   '文脈より（　）には「独創性」が入る。「独創性に富む」は独自のアイデアが豊かであることを意味し、評価される理由として自然。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '独創性',   NULL, true),
  (currval('questions_id_seq'), '画一性',   NULL, false),
  (currval('questions_id_seq'), '保守性',   NULL, false),
  (currval('questions_id_seq'), '従来性',   NULL, false);

-- 言語-37: 空欄補充（検討）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 37, 'choice', 1, 1,
   '次の文の（　）に入る最も適切な語句はどれか。
「新しいシステムを導入する際には、事前に十分な（　）が必要だ。」',
   '文脈より（　）には「検討」が入る。システム導入前に行うべき準備として「十分な検討」が最も自然。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '検討',   NULL, true),
  (currval('questions_id_seq'), '実施',   NULL, false),
  (currval('questions_id_seq'), '確認',   NULL, false),
  (currval('questions_id_seq'), '報告',   NULL, false);

-- 言語-38: 空欄補充（連携）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 38, 'choice', 1, 1,
   '次の文の（　）に入る最も適切な語句はどれか。
「このプロジェクトは多くの部署が（　）して進めている。」',
   '文脈より（　）には「連携」が入る。複数の部署が協力して物事を進める場合、「連携して」が最も自然な表現。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '連携',   NULL, true),
  (currval('questions_id_seq'), '対立',   NULL, false),
  (currval('questions_id_seq'), '競合',   NULL, false),
  (currval('questions_id_seq'), '分散',   NULL, false);

-- 言語-39: 空欄補充（平静）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 39, 'choice', 1, 1,
   '次の文の（　）に入る最も適切な語句はどれか。
「彼女は困難な状況でも（　）を保ち、冷静に判断した。」',
   '文脈より（　）には「平静」が入る。困難な状況で「冷静に判断」につながる語として「平静を保つ」が最も自然。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '平静',   NULL, true),
  (currval('questions_id_seq'), '興奮',   NULL, false),
  (currval('questions_id_seq'), '動揺',   NULL, false),
  (currval('questions_id_seq'), '混乱',   NULL, false);

-- 言語-40: 空欄補充（簡潔）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (12, NULL, 40, 'choice', 1, 1,
   '次の文の（　）に入る最も適切な語句はどれか。
「この報告書は情報が（　）にまとめられており、非常に読みやすい。」',
   '文脈より（　）には「簡潔」が入る。「読みやすい」という評価につながる語として「簡潔にまとめられている」が最も自然。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '簡潔',   NULL, true),
  (currval('questions_id_seq'), '冗長',   NULL, false),
  (currval('questions_id_seq'), '複雑',   NULL, false),
  (currval('questions_id_seq'), '難解',   NULL, false);

-- ----------------------------------------
-- 非言語（section_id=13）Q1〜Q30
-- ----------------------------------------

-- 割合・比率（Q1〜Q4）

-- 非言語-1: 割合・比率（定価からの割引）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 1, 'choice', 1, 1,
   '定価6,000円の商品を25%引きで販売した。売値は何円か。',
   '6000 × (1 − 0.25) = 6000 × 0.75 = 4500円',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '4500',   NULL, true),
  (currval('questions_id_seq'), '5000',   NULL, false),
  (currval('questions_id_seq'), '4000',   NULL, false),
  (currval('questions_id_seq'), '3500',   NULL, false);

-- 非言語-2: 割合・比率（合格者と不合格者）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 2, 'choice', 1, 1,
   'ある試験を200人が受験し、合格者は全体の35%だった。不合格者は何人か。',
   '合格者 = 200 × 0.35 = 70人、不合格者 = 200 − 70 = 130人',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '130',   NULL, true),
  (currval('questions_id_seq'), '70',    NULL, false),
  (currval('questions_id_seq'), '100',   NULL, false),
  (currval('questions_id_seq'), '140',   NULL, false);

-- 非言語-3: 割合・比率（売上の増加）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 3, 'choice', 1, 1,
   '昨年の売上が500万円で、今年は昨年比15%増加した。今年の売上は何万円か。',
   '500 × 1.15 = 575万円',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '575',   NULL, true),
  (currval('questions_id_seq'), '550',   NULL, false),
  (currval('questions_id_seq'), '600',   NULL, false),
  (currval('questions_id_seq'), '515',   NULL, false);

-- 非言語-4: 割合・比率（男女の人数）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 4, 'choice', 1, 1,
   'あるクラスは40人で、男子が全体の55%を占める。女子は何人か。',
   '男子 = 40 × 0.55 = 22人、女子 = 40 − 22 = 18人',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '18',   NULL, true),
  (currval('questions_id_seq'), '22',   NULL, false),
  (currval('questions_id_seq'), '20',   NULL, false),
  (currval('questions_id_seq'), '16',   NULL, false);

-- 速さ・距離・時間（Q5〜Q8）

-- 非言語-5: 速さ（速度変更と所要時間）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 5, 'choice', 1, 1,
   'A地点からB地点まで時速60kmで走ると3時間かかる。時速90kmで走ると何時間かかるか。',
   '距離 = 60 × 3 = 180km、時間 = 180 ÷ 90 = 2時間',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '2',     NULL, true),
  (currval('questions_id_seq'), '3',     NULL, false),
  (currval('questions_id_seq'), '1.5',   NULL, false),
  (currval('questions_id_seq'), '1',     NULL, false);

-- 非言語-6: 速さ（分速と所要時間）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 6, 'choice', 1, 1,
   '750mの距離を分速50mで歩くと何分かかるか。',
   '750 ÷ 50 = 15分',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '15',   NULL, true),
  (currval('questions_id_seq'), '18',   NULL, false),
  (currval('questions_id_seq'), '12',   NULL, false),
  (currval('questions_id_seq'), '10',   NULL, false);

-- 非言語-7: 速さ（単位換算）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 7, 'choice', 1, 1,
   '時速72kmを秒速に換算すると何m/sか。',
   '72km/h = 72 × 1000 ÷ 3600 = 20m/s',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '20',   NULL, true),
  (currval('questions_id_seq'), '72',   NULL, false),
  (currval('questions_id_seq'), '12',   NULL, false),
  (currval('questions_id_seq'), '2',    NULL, false);

-- 非言語-8: 速さ（反対方向に歩く）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 8, 'choice', 1, 1,
   '兄と弟が同じ地点から逆方向に歩き始めた。兄は分速80m、弟は分速60mで歩く。2人の距離が1400mになるのは何分後か。',
   '2人の速さの合計 = 80 + 60 = 140m/分、1400 ÷ 140 = 10分後',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '10',   NULL, true),
  (currval('questions_id_seq'), '14',   NULL, false),
  (currval('questions_id_seq'), '8',    NULL, false),
  (currval('questions_id_seq'), '12',   NULL, false);

-- 仕事算（Q9〜Q12）

-- 非言語-9: 仕事算（B単独の日数）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 9, 'choice', 1, 1,
   'AとBが協力すると6日で完成する仕事がある。Aだけでやると10日かかる。Bだけでやると何日かかるか。',
   '全体の仕事量を1とすると、1日あたりA=1/10、協力時=1/6。B=1/6−1/10=5/30−3/30=2/30=1/15。B単独=15日',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '15',   NULL, true),
  (currval('questions_id_seq'), '12',   NULL, false),
  (currval('questions_id_seq'), '18',   NULL, false),
  (currval('questions_id_seq'), '20',   NULL, false);

-- 非言語-10: 仕事算（協力日数）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 10, 'choice', 1, 1,
   'ある仕事をAだけでやると12日、Bだけでやると6日かかる。2人で協力すると何日で完成するか。',
   '1日あたりA=1/12、B=1/6=2/12。合計=3/12=1/4。完成日数=4日',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '4',   NULL, true),
  (currval('questions_id_seq'), '3',   NULL, false),
  (currval('questions_id_seq'), '6',   NULL, false),
  (currval('questions_id_seq'), '9',   NULL, false);

-- 非言語-11: 仕事算（給水ポンプ）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 11, 'choice', 1, 1,
   'Aポンプだけで水槽を満タンにするのに10時間、Bポンプだけでは15時間かかる。両方同時に使うと何時間で満タンになるか。',
   '1時間あたりA=1/10、B=1/15。合計=3/30+2/30=5/30=1/6。完成=6時間',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '6',    NULL, true),
  (currval('questions_id_seq'), '5',    NULL, false),
  (currval('questions_id_seq'), '8',    NULL, false),
  (currval('questions_id_seq'), '12',   NULL, false);

-- 非言語-12: 仕事算（B単独2）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 12, 'choice', 1, 1,
   'AとBが協力すると3日で完成する仕事がある。Aだけでやると4日かかる。Bだけでやると何日かかるか。',
   '全体の仕事量を1とすると、B=1/3−1/4=4/12−3/12=1/12。B単独=12日',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '12',   NULL, true),
  (currval('questions_id_seq'), '8',    NULL, false),
  (currval('questions_id_seq'), '16',   NULL, false),
  (currval('questions_id_seq'), '6',    NULL, false);

-- 損益算（Q13〜Q16）

-- 非言語-13: 損益算（定価の設定）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 13, 'choice', 1, 1,
   '原価800円の商品に25%の利益を乗せて定価をつけた。定価は何円か。',
   '定価 = 800 × (1 + 0.25) = 800 × 1.25 = 1000円',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '1000',   NULL, true),
  (currval('questions_id_seq'), '900',    NULL, false),
  (currval('questions_id_seq'), '1100',   NULL, false),
  (currval('questions_id_seq'), '1200',   NULL, false);

-- 非言語-14: 損益算（割引後の利益）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 14, 'choice', 1, 1,
   '定価2,000円の商品を10%引きで販売した。この商品の原価が1,500円のとき、利益は何円か。',
   '売値 = 2000 × 0.9 = 1800円、利益 = 1800 − 1500 = 300円',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '300',   NULL, true),
  (currval('questions_id_seq'), '200',   NULL, false),
  (currval('questions_id_seq'), '400',   NULL, false),
  (currval('questions_id_seq'), '500',   NULL, false);

-- 非言語-15: 損益算（利益率）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 15, 'choice', 1, 1,
   'ある商品の定価は3,600円で、原価は3,000円だった。利益率（利益÷原価×100）は何%か。',
   '利益 = 3600 − 3000 = 600円、利益率 = 600 ÷ 3000 × 100 = 20%',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '20',   NULL, true),
  (currval('questions_id_seq'), '25',   NULL, false),
  (currval('questions_id_seq'), '15',   NULL, false),
  (currval('questions_id_seq'), '16',   NULL, false);

-- 非言語-16: 損益算（原価の逆算）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 16, 'choice', 1, 1,
   '定価1,500円の商品を20%引きで売ったところ、200円の利益が出た。原価は何円か。',
   '売値 = 1500 × 0.8 = 1200円、原価 = 1200 − 200 = 1000円',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '1000',   NULL, true),
  (currval('questions_id_seq'), '900',    NULL, false),
  (currval('questions_id_seq'), '800',    NULL, false),
  (currval('questions_id_seq'), '1100',   NULL, false);

-- 集合（Q17〜Q20）

-- 非言語-17: 集合（両方選んだ人数）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 17, 'choice', 1, 1,
   '100人のうち、Aを選んだ人が60人、Bを選んだ人が50人、どちらも選ばなかった人が10人いた。AとBの両方を選んだ人は何人か。',
   'A∪B = 100 − 10 = 90人、両方 = 60 + 50 − 90 = 20人',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '20',   NULL, true),
  (currval('questions_id_seq'), '10',   NULL, false),
  (currval('questions_id_seq'), '30',   NULL, false),
  (currval('questions_id_seq'), '15',   NULL, false);

-- 非言語-18: 集合（最小共通人数）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 18, 'choice', 1, 1,
   '50人のクラスで、数学が好きな人が28人、英語が好きな人が32人だった。両方好きな人は最低何人か。',
   '最小共通人数 = 28 + 32 − 50 = 10人',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '10',   NULL, true),
  (currval('questions_id_seq'), '6',    NULL, false),
  (currval('questions_id_seq'), '15',   NULL, false),
  (currval('questions_id_seq'), '20',   NULL, false);

-- 非言語-19: 集合（どちらも利用していない）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 19, 'choice', 1, 1,
   '80人にアンケートを取った。AとBの両方を利用した人が20人、Aだけ利用した人が30人、Bだけ利用した人が15人だった。AもBも利用していない人は何人か。',
   'どちらも利用した人を含む利用者 = 20 + 30 + 15 = 65人、利用なし = 80 − 65 = 15人',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '15',   NULL, true),
  (currval('questions_id_seq'), '20',   NULL, false),
  (currval('questions_id_seq'), '25',   NULL, false),
  (currval('questions_id_seq'), '10',   NULL, false);

-- 非言語-20: 集合（両方好きな人数）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 20, 'choice', 1, 1,
   '120人のうち、野球が好きな人が70人、サッカーが好きな人が80人だった。どちらも好きでない人が15人のとき、両方好きな人は何人か。',
   '野球∪サッカー = 120 − 15 = 105人、両方 = 70 + 80 − 105 = 45人',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '45',   NULL, true),
  (currval('questions_id_seq'), '30',   NULL, false),
  (currval('questions_id_seq'), '50',   NULL, false),
  (currval('questions_id_seq'), '35',   NULL, false);

-- 推論（Q21〜Q24）

-- 非言語-21: 推論（三段論法）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 21, 'choice', 1, 1,
   '次の前提が全て正しいとき、確実にいえる結論はどれか。
「すべての社員はIDカードを持っている。山田さんは社員である。」',
   '「すべての社員→IDカード所持」かつ「山田さんは社員」なので、「山田さんはIDカードを持っている」は確実に正しい。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '山田さんはIDカードを持っている',         NULL, true),
  (currval('questions_id_seq'), 'IDカードを持つ人は全員社員である',       NULL, false),
  (currval('questions_id_seq'), '社員でない人はIDカードを持っていない',   NULL, false),
  (currval('questions_id_seq'), '山田さんは最近入社した',                 NULL, false);

-- 非言語-22: 推論（順位関係）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 22, 'choice', 1, 1,
   'A・B・C・Dの4人が徒競走をした。次の条件が全て成立するとき、1位は誰か。
・AはBより速い
・CはAより速い
・DはBより遅い',
   'C > A > B > D の順。よって1位はC。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'C',   NULL, true),
  (currval('questions_id_seq'), 'A',   NULL, false),
  (currval('questions_id_seq'), 'B',   NULL, false),
  (currval('questions_id_seq'), 'D',   NULL, false);

-- 非言語-23: 推論（重さ比較）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 23, 'choice', 1, 1,
   'P・Q・R・Sの4人の所持金について、次のことがわかっている。
・PはQより多い
・QはRより多い
・SはRより多く、Qより少ない
最も所持金が多いのは誰か。',
   'P > Q > S > R の関係より、最も多いのはP。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'P',   NULL, true),
  (currval('questions_id_seq'), 'Q',   NULL, false),
  (currval('questions_id_seq'), 'S',   NULL, false),
  (currval('questions_id_seq'), 'R',   NULL, false);

-- 非言語-24: 推論（対偶推論）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 24, 'choice', 1, 1,
   '次のア〜ウが全て正しいとき、確実にいえることはどれか。
ア. コーヒーを飲む人は必ず紅茶も飲む
イ. 田中さんはコーヒーを飲む
ウ. 佐藤さんは紅茶を飲まない',
   'アの対偶：「紅茶を飲まない人はコーヒーを飲まない」。ウより佐藤さんは紅茶を飲まない→佐藤さんはコーヒーを飲まない。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '佐藤さんはコーヒーを飲まない',   NULL, true),
  (currval('questions_id_seq'), '佐藤さんは紅茶を飲む',           NULL, false),
  (currval('questions_id_seq'), '田中さんはコーヒーを飲まない',   NULL, false),
  (currval('questions_id_seq'), '紅茶を飲む人は全員コーヒーも飲む', NULL, false);

-- 場合の数・確率（Q25〜Q27）

-- 非言語-25: 場合の数（組み合わせ）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 25, 'choice', 1, 1,
   '5人の中から2人のグループを選ぶ。選び方は何通りか。',
   '5C2 = 5! ÷ (2! × 3!) = (5 × 4) ÷ (2 × 1) = 10通り',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '10',   NULL, true),
  (currval('questions_id_seq'), '20',   NULL, false),
  (currval('questions_id_seq'), '15',   NULL, false),
  (currval('questions_id_seq'), '25',   NULL, false);

-- 非言語-26: 場合の数（順列）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 26, 'choice', 1, 1,
   '赤・青・白の3色のカードが各1枚ある。この3枚を1列に並べる。並べ方は何通りか。',
   '3! = 3 × 2 × 1 = 6通り',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '6',    NULL, true),
  (currval('questions_id_seq'), '3',    NULL, false),
  (currval('questions_id_seq'), '9',    NULL, false),
  (currval('questions_id_seq'), '12',   NULL, false);

-- 非言語-27: 確率
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 27, 'choice', 1, 1,
   '袋の中に赤玉が3個、白玉が2個入っている。1個をランダムに取り出すとき、赤玉が出る確率はどれか。',
   '赤玉3個 ÷ 全体5個 = 3/5',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '3/5',   NULL, true),
  (currval('questions_id_seq'), '2/5',   NULL, false),
  (currval('questions_id_seq'), '1/2',   NULL, false),
  (currval('questions_id_seq'), '2/3',   NULL, false);

-- 図表の読み取り（Q28〜Q30）

-- 非言語-28: 図表（合計の計算）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 28, 'choice', 1, 1,
   '次のデータはある店の月別売上を示している。
4月：120万円、5月：150万円、6月：180万円
4〜6月の売上合計は何万円か。',
   '120 + 150 + 180 = 450万円',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '450',   NULL, true),
  (currval('questions_id_seq'), '400',   NULL, false),
  (currval('questions_id_seq'), '420',   NULL, false),
  (currval('questions_id_seq'), '480',   NULL, false);

-- 非言語-29: 図表（平均の計算）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 29, 'choice', 1, 1,
   '次のデータはある店舗の曜日別来客数を示している。
月曜：80人、火曜：95人、水曜：70人、木曜：105人、金曜：110人
月〜金曜の1日あたりの平均来客数は何人か。',
   '(80 + 95 + 70 + 105 + 110) ÷ 5 = 460 ÷ 5 = 92人',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '92',   NULL, true),
  (currval('questions_id_seq'), '90',   NULL, false),
  (currval('questions_id_seq'), '95',   NULL, false),
  (currval('questions_id_seq'), '88',   NULL, false);

-- 非言語-30: 図表（売上合計）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (13, NULL, 30, 'choice', 1, 1,
   '次のデータはA〜C3種類の商品の単価と販売数を示している。
A商品：単価500円×30個、B商品：単価800円×20個、C商品：単価1,200円×10個
3種類の売上合計は何円か。',
   'A=500×30=15000円、B=800×20=16000円、C=1200×10=12000円、合計=15000+16000+12000=43000円',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '43000',   NULL, true),
  (currval('questions_id_seq'), '40000',   NULL, false),
  (currval('questions_id_seq'), '45000',   NULL, false),
  (currval('questions_id_seq'), '38000',   NULL, false);
