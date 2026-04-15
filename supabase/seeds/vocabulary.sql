-- ============================================
-- TOEIC L&R -単語集-
-- section_id: 14=初級, 15=中級, 16=上級
--
-- 問題を追加するときはこのファイルの末尾に追記する
-- 書き方:
--   INSERT INTO questions (...) VALUES (section_id, NULL, 次の連番, ...);
--   INSERT INTO choices (question_id, ...) VALUES (currval('questions_id_seq'), ...);
--
-- 【重要】選択肢の記述ルール
--   正解・不正解を問わず、すべての選択肢は日本語訳を1つだけ記述すること。
--   例: ○「確実にする」  × 「確実にする・保証する」
--   複数訳を並べると正解が一目瞭然になってしまうため。
-- ============================================


-- ----------------------------------------
-- 初級（section_id=14）
-- ----------------------------------------

-- ----------------------------------------
-- 初級（section_id=14）Q001〜Q050
-- ----------------------------------------

-- 初級-1: anyway
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 1, 'choice', 1, 1,
   'anyway',
   'I know the budget is tight, but let''s proceed with the project anyway.（予算が厳しいのはわかっているが、とにかくプロジェクトを進めよう。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'とにかく',   NULL, true),
  (currval('questions_id_seq'), '代わりに',   NULL, false),
  (currval('questions_id_seq'), 'すでに',     NULL, false),
  (currval('questions_id_seq'), 'さらに',     NULL, false);

-- 初級-2: following
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 2, 'choice', 1, 1,
   'following',
   'Please sign the following documents before leaving the office.（退社する前に以下の書類に署名してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '以下の',   NULL, true),
  (currval('questions_id_seq'), '以前の',   NULL, false),
  (currval('questions_id_seq'), '現在の',   NULL, false),
  (currval('questions_id_seq'), '最後の',   NULL, false);

-- 初級-3: refer
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 3, 'choice', 1, 1,
   'refer',
   'Please refer to the user manual for installation instructions.（インストール手順についてはユーザーマニュアルを参照してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '参照する',   NULL, true),
  (currval('questions_id_seq'), '申し込む',   NULL, false),
  (currval('questions_id_seq'), '返却する',   NULL, false),
  (currval('questions_id_seq'), '提出する',   NULL, false);

-- 初級-4: available
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 4, 'choice', 1, 1,
   'available',
   'The conference room is available from 2 p.m. onward.（会議室は午後2時以降に利用できます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '利用できる', NULL, true),
  (currval('questions_id_seq'), '必要な',     NULL, false),
  (currval('questions_id_seq'), '難しい',     NULL, false),
  (currval('questions_id_seq'), '高価な',     NULL, false);

-- 初級-5: department
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 5, 'choice', 1, 1,
   'department',
   'She transferred to the marketing department last month.（彼女は先月マーケティング部門に異動しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '部門',   NULL, true),
  (currval('questions_id_seq'), '支店',   NULL, false),
  (currval('questions_id_seq'), '委員会', NULL, false),
  (currval('questions_id_seq'), '機関',   NULL, false);

-- 初級-6: conference
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 6, 'choice', 1, 1,
   'conference',
   'Over 500 professionals attended the annual conference in Chicago.（500人以上の専門家がシカゴの年次会議に出席しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '会議',   NULL, true),
  (currval('questions_id_seq'), 'セミナー', NULL, false),
  (currval('questions_id_seq'), '展示会', NULL, false),
  (currval('questions_id_seq'), '発表会', NULL, false);

-- 初級-7: according to
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 7, 'choice', 1, 1,
   'according to',
   'According to the report, profits increased by 15% this year.（報告書によると、今年は利益が15%増加しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '〜によると',       NULL, true),
  (currval('questions_id_seq'), '〜に関して',       NULL, false),
  (currval('questions_id_seq'), '〜にもかかわらず', NULL, false),
  (currval('questions_id_seq'), '〜のために',       NULL, false);

-- 初級-8: likely
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 8, 'choice', 1, 1,
   'likely',
   'The project is likely to be completed ahead of schedule.（そのプロジェクトは予定より早く完成しそうです。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '〜しそうな',   NULL, true),
  (currval('questions_id_seq'), '〜できない',   NULL, false),
  (currval('questions_id_seq'), '〜に違いない', NULL, false),
  (currval('questions_id_seq'), '〜すべきだ',   NULL, false);

-- 初級-9: offer
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 9, 'choice', 1, 1,
   'offer',
   'We are pleased to offer you a 10% discount on your next purchase.（次回のご購入に10%割引を提供できることを喜んでおります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '提供する', NULL, true),
  (currval('questions_id_seq'), '要求する', NULL, false),
  (currval('questions_id_seq'), '返却する', NULL, false),
  (currval('questions_id_seq'), '拒否する', NULL, false);

-- 初級-10: equipment
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 10, 'choice', 1, 1,
   'equipment',
   'All safety equipment must be worn when entering the construction site.（建設現場に入る際はすべての安全設備を着用しなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '設備',   NULL, true),
  (currval('questions_id_seq'), '施設',   NULL, false),
  (currval('questions_id_seq'), '資料',   NULL, false),
  (currval('questions_id_seq'), '費用',   NULL, false);

-- 初級-11: provide
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 11, 'choice', 1, 1,
   'provide',
   'The company will provide free training to all new employees.（会社はすべての新入社員に無料の研修を提供します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '提供する',   NULL, true),
  (currval('questions_id_seq'), '要求する',   NULL, false),
  (currval('questions_id_seq'), '受け取る',   NULL, false),
  (currval('questions_id_seq'), '削除する',   NULL, false);

-- 初級-12: local
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 12, 'choice', 1, 1,
   'local',
   'The store sources most of its products from local farmers.（その店はほとんどの商品を地元の農家から仕入れています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '地元の',   NULL, true),
  (currval('questions_id_seq'), '国内の',   NULL, false),
  (currval('questions_id_seq'), '国際的な', NULL, false),
  (currval('questions_id_seq'), '中央の',   NULL, false);

-- 初級-13: purchase
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 13, 'choice', 1, 1,
   'purchase',
   'Customers can purchase tickets online or at the venue.（お客様はオンラインまたは会場でチケットを購入できます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '購入する', NULL, true),
  (currval('questions_id_seq'), '申し込む', NULL, false),
  (currval('questions_id_seq'), '返品する', NULL, false),
  (currval('questions_id_seq'), '展示する', NULL, false);

-- 初級-14: opening
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 14, 'choice', 1, 1,
   'opening',
   'There is an opening in the accounting department for a senior accountant.（経理部門にシニア会計士の空きがあります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '空き',   NULL, true),
  (currval('questions_id_seq'), '締め切り', NULL, false),
  (currval('questions_id_seq'), '割引',   NULL, false),
  (currval('questions_id_seq'), '昇進',   NULL, false);

-- 初級-15: construction
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 15, 'choice', 1, 1,
   'construction',
   'Construction of the new office building is expected to be finished by March.（新しいオフィスビルの建設は3月までに完了する予定です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '建設',   NULL, true),
  (currval('questions_id_seq'), '生産',   NULL, false),
  (currval('questions_id_seq'), '修理',   NULL, false),
  (currval('questions_id_seq'), '管理',   NULL, false);

-- 初級-16: tour
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 16, 'choice', 1, 1,
   'tour',
   'New employees will take a tour of the factory on their first day.（新入社員は初日に工場の見学をします。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '見学',   NULL, true),
  (currval('questions_id_seq'), '旅行',   NULL, false),
  (currval('questions_id_seq'), '会議',   NULL, false),
  (currval('questions_id_seq'), '発表',   NULL, false);

-- 初級-17: research
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 17, 'choice', 1, 1,
   'research',
   'The company invested heavily in research and development this year.（会社は今年、研究開発に多大な投資をしました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '調査',   NULL, true),
  (currval('questions_id_seq'), '生産',   NULL, false),
  (currval('questions_id_seq'), '記録',   NULL, false),
  (currval('questions_id_seq'), '発表',   NULL, false);

-- 初級-18: attend
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 18, 'choice', 1, 1,
   'attend',
   'All managers are required to attend the quarterly review meeting.（全マネージャーは四半期ごとのレビュー会議に出席することが求められます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '出席する', NULL, true),
  (currval('questions_id_seq'), '申し込む', NULL, false),
  (currval('questions_id_seq'), '提出する', NULL, false),
  (currval('questions_id_seq'), '報告する', NULL, false);

-- 初級-19: delivery
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 19, 'choice', 1, 1,
   'delivery',
   'Free delivery is available on orders over fifty dollars.（50ドル以上のご注文は配達無料となります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '配達',   NULL, true),
  (currval('questions_id_seq'), '支払い', NULL, false),
  (currval('questions_id_seq'), '予約',   NULL, false),
  (currval('questions_id_seq'), '注文',   NULL, false);

-- 初級-20: recently
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 20, 'choice', 1, 1,
   'recently',
   'The company recently announced plans to open three new branches.（その会社は最近、3つの新しい支店を開設する計画を発表しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '最近',   NULL, true),
  (currval('questions_id_seq'), 'かつて', NULL, false),
  (currval('questions_id_seq'), '今後',   NULL, false),
  (currval('questions_id_seq'), '間もなく', NULL, false);

-- 初級-21: indicate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 21, 'choice', 1, 1,
   'indicate',
   'The survey results indicate a growing demand for online services.（調査結果はオンラインサービスへの需要の高まりを示しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '示す',     NULL, true),
  (currval('questions_id_seq'), '確認する', NULL, false),
  (currval('questions_id_seq'), '提出する', NULL, false),
  (currval('questions_id_seq'), '削除する', NULL, false);

-- 初級-22: employee
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 22, 'choice', 1, 1,
   'employee',
   'Each employee is entitled to two weeks of paid vacation per year.（各従業員は年間2週間の有給休暇を取る権利があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '従業員', NULL, true),
  (currval('questions_id_seq'), '顧客',   NULL, false),
  (currval('questions_id_seq'), '代理人', NULL, false),
  (currval('questions_id_seq'), '役員',   NULL, false);

-- 初級-23: additional
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 23, 'choice', 1, 1,
   'additional',
   'Please contact us if you require any additional information.（追加の情報が必要な場合はご連絡ください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '追加の',   NULL, true),
  (currval('questions_id_seq'), '最初の',   NULL, false),
  (currval('questions_id_seq'), '全体の',   NULL, false),
  (currval('questions_id_seq'), '現在の',   NULL, false);

-- 初級-24: survey
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 24, 'choice', 1, 1,
   'survey',
   'We conduct an annual customer satisfaction survey every December.（毎年12月に年次顧客満足度調査を実施しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '調査',   NULL, true),
  (currval('questions_id_seq'), '分析',   NULL, false),
  (currval('questions_id_seq'), '報告',   NULL, false),
  (currval('questions_id_seq'), '生産',   NULL, false);

-- 初級-25: review
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 25, 'choice', 1, 1,
   'review',
   'Please review the contract carefully before signing it.（署名する前に契約書を注意深く確認してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '確認する', NULL, true),
  (currval('questions_id_seq'), '削除する', NULL, false),
  (currval('questions_id_seq'), '提出する', NULL, false),
  (currval('questions_id_seq'), '発表する', NULL, false);

-- 初級-26: production
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 26, 'choice', 1, 1,
   'production',
   'The factory increased production by 30% to meet growing demand.（工場は増大する需要に対応するため、生産を30%増やしました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '生産',   NULL, true),
  (currval('questions_id_seq'), '建設',   NULL, false),
  (currval('questions_id_seq'), '管理',   NULL, false),
  (currval('questions_id_seq'), '販売',   NULL, false);

-- 初級-27: located
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 27, 'choice', 1, 1,
   'located',
   'Our headquarters is located in the center of the city.（本社は市の中心部に位置しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '位置している',   NULL, true),
  (currval('questions_id_seq'), '開かれている',   NULL, false),
  (currval('questions_id_seq'), '建設されている', NULL, false),
  (currval('questions_id_seq'), '設立されている', NULL, false);

-- 初級-28: detail
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 28, 'choice', 1, 1,
   'detail',
   'For more details about the event, please visit our website.（イベントの詳細については、当社のウェブサイトをご覧ください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '詳細',   NULL, true),
  (currval('questions_id_seq'), '概要',   NULL, false),
  (currval('questions_id_seq'), '要点',   NULL, false),
  (currval('questions_id_seq'), '手順',   NULL, false);

-- 初級-29: announce
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 29, 'choice', 1, 1,
   'announce',
   'The CEO will announce the merger at tomorrow''s press conference.（CEOは明日の記者会見で合併を発表します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '発表する', NULL, true),
  (currval('questions_id_seq'), '提案する', NULL, false),
  (currval('questions_id_seq'), '確認する', NULL, false),
  (currval('questions_id_seq'), '記録する', NULL, false);

-- 初級-30: repair
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 30, 'choice', 1, 1,
   'repair',
   'The elevator is out of service for repair until Friday.（エレベーターは金曜日まで修理のため使用できません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '修理',   NULL, true),
  (currval('questions_id_seq'), '建設',   NULL, false),
  (currval('questions_id_seq'), '設置',   NULL, false),
  (currval('questions_id_seq'), '交換',   NULL, false);

-- 初級-31: increase
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 31, 'choice', 1, 1,
   'increase',
   'The company plans to increase its workforce by 20% next year.（その会社は来年、従業員数を20%増やす予定です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '増加する', NULL, true),
  (currval('questions_id_seq'), '減少する', NULL, false),
  (currval('questions_id_seq'), '維持する', NULL, false),
  (currval('questions_id_seq'), '変化する', NULL, false);

-- 初級-32: include
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 32, 'choice', 1, 1,
   'include',
   'The price includes shipping and handling fees.（価格には送料と手数料が含まれています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '含む',     NULL, true),
  (currval('questions_id_seq'), '除外する', NULL, false),
  (currval('questions_id_seq'), '選択する', NULL, false),
  (currval('questions_id_seq'), '配布する', NULL, false);

-- 初級-33: currently
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 33, 'choice', 1, 1,
   'currently',
   'We are currently reviewing all applications for the position.（現在、そのポジションへの全応募書類を審査しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '現在',   NULL, true),
  (currval('questions_id_seq'), 'かつて', NULL, false),
  (currval('questions_id_seq'), '最近',   NULL, false),
  (currval('questions_id_seq'), '今後',   NULL, false);

-- 初級-34: advertising
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 34, 'choice', 1, 1,
   'advertising',
   'The company spent a large portion of its budget on advertising.（会社は予算の大部分を広告に費やしました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '広告',   NULL, true),
  (currval('questions_id_seq'), '販売',   NULL, false),
  (currval('questions_id_seq'), '生産',   NULL, false),
  (currval('questions_id_seq'), '管理',   NULL, false);

-- 初級-35: charge
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 35, 'choice', 1, 1,
   'charge',
   'There is no extra charge for same-day delivery.（当日配送に追加料金はかかりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '料金',   NULL, true),
  (currval('questions_id_seq'), '支払い', NULL, false),
  (currval('questions_id_seq'), '割引',   NULL, false),
  (currval('questions_id_seq'), '予算',   NULL, false);

-- 初級-36: expect
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 36, 'choice', 1, 1,
   'expect',
   'We expect the new product to be ready for launch by summer.（新製品は夏までに発売準備が整うと期待しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '期待する', NULL, true),
  (currval('questions_id_seq'), '確認する', NULL, false),
  (currval('questions_id_seq'), '要求する', NULL, false),
  (currval('questions_id_seq'), '検討する', NULL, false);

-- 初級-37: firm
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 37, 'choice', 1, 1,
   'firm',
   'She works for a well-known law firm in downtown Boston.（彼女はボストン中心部の有名な法律事務所に勤めています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '会社',   NULL, true),
  (currval('questions_id_seq'), '機関',   NULL, false),
  (currval('questions_id_seq'), '支店',   NULL, false),
  (currval('questions_id_seq'), '組織',   NULL, false);

-- 初級-38: client
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 38, 'choice', 1, 1,
   'client',
   'Our team will meet with the client to discuss the project requirements.（チームはプロジェクトの要件を話し合うために顧客と面談します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '顧客',   NULL, true),
  (currval('questions_id_seq'), '役員',   NULL, false),
  (currval('questions_id_seq'), '代理人', NULL, false),
  (currval('questions_id_seq'), '従業員', NULL, false);

-- 初級-39: financial
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 39, 'choice', 1, 1,
   'financial',
   'The financial report will be presented at the board meeting next week.（財務報告書は来週の取締役会で提出されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '財務の',   NULL, true),
  (currval('questions_id_seq'), '管理の',   NULL, false),
  (currval('questions_id_seq'), '法律の',   NULL, false),
  (currval('questions_id_seq'), '技術的な', NULL, false);

-- 初級-40: annual
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 40, 'choice', 1, 1,
   'annual',
   'The company holds an annual awards ceremony in December.（その会社は12月に年次表彰式を開催しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '年次の',   NULL, true),
  (currval('questions_id_seq'), '月次の',   NULL, false),
  (currval('questions_id_seq'), '毎週の',   NULL, false),
  (currval('questions_id_seq'), '毎日の',   NULL, false);

-- 初級-41: payment
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 41, 'choice', 1, 1,
   'payment',
   'Full payment is required before the order can be processed.（注文を処理する前に全額の支払いが必要です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '支払い', NULL, true),
  (currval('questions_id_seq'), '請求',   NULL, false),
  (currval('questions_id_seq'), '予算',   NULL, false),
  (currval('questions_id_seq'), '費用',   NULL, false);

-- 初級-42: budget
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 42, 'choice', 1, 1,
   'budget',
   'The marketing team must stay within the approved budget for the campaign.（マーケティングチームはキャンペーンの承認された予算内に収めなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '予算',   NULL, true),
  (currval('questions_id_seq'), '費用',   NULL, false),
  (currval('questions_id_seq'), '請求',   NULL, false),
  (currval('questions_id_seq'), '収益',   NULL, false);

-- 初級-43: application
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 43, 'choice', 1, 1,
   'application',
   'Please submit your application by the end of this month.（今月末までに申請書を提出してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '申請書', NULL, true),
  (currval('questions_id_seq'), '提案書', NULL, false),
  (currval('questions_id_seq'), '契約書', NULL, false),
  (currval('questions_id_seq'), '報告書', NULL, false);

-- 初級-44: contract
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 44, 'choice', 1, 1,
   'contract',
   'Both parties signed the contract at the end of the meeting.（両者は会議の最後に契約書に署名しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '契約書', NULL, true),
  (currval('questions_id_seq'), '提案書', NULL, false),
  (currval('questions_id_seq'), '合意書', NULL, false),
  (currval('questions_id_seq'), '保証書', NULL, false);

-- 初級-45: management
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 45, 'choice', 1, 1,
   'management',
   'Effective management is key to a productive work environment.（効果的な管理は生産的な職場環境の鍵です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '管理',   NULL, true),
  (currval('questions_id_seq'), '運営',   NULL, false),
  (currval('questions_id_seq'), '監督',   NULL, false),
  (currval('questions_id_seq'), '経営',   NULL, false);

-- 初級-46: performance
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 46, 'choice', 1, 1,
   'performance',
   'Employee performance will be evaluated at the end of each quarter.（従業員の業績は各四半期末に評価されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '業績',   NULL, true),
  (currval('questions_id_seq'), '成果',   NULL, false),
  (currval('questions_id_seq'), '実績',   NULL, false),
  (currval('questions_id_seq'), '結果',   NULL, false);

-- 初級-47: pleased
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 47, 'choice', 1, 1,
   'pleased',
   'We are pleased to announce the opening of our new branch.（新支店の開設を喜んでお知らせします。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '喜んでいる',   NULL, true),
  (currval('questions_id_seq'), '満足している', NULL, false),
  (currval('questions_id_seq'), '驚いている',   NULL, false),
  (currval('questions_id_seq'), '感謝している', NULL, false);

-- 初級-48: confirm
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 48, 'choice', 1, 1,
   'confirm',
   'Please confirm your attendance by replying to this email.（このメールに返信して出席を確認してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '確認する', NULL, true),
  (currval('questions_id_seq'), '同意する', NULL, false),
  (currval('questions_id_seq'), '提案する', NULL, false),
  (currval('questions_id_seq'), '記録する', NULL, false);

-- 初級-49: award
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 49, 'choice', 1, 1,
   'award',
   'She received an award for outstanding customer service.（彼女は優れた顧客サービスで賞を受賞しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '賞',       NULL, true),
  (currval('questions_id_seq'), '奨学金',   NULL, false),
  (currval('questions_id_seq'), '補助金',   NULL, false),
  (currval('questions_id_seq'), '報酬',     NULL, false);

-- 初級-50: clothing
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 50, 'choice', 1, 1,
   'clothing',
   'The company provides protective clothing for all factory workers.（会社はすべての工場作業員に保護用衣類を支給しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '衣類',   NULL, true),
  (currval('questions_id_seq'), '備品',   NULL, false),
  (currval('questions_id_seq'), '荷物',   NULL, false),
  (currval('questions_id_seq'), '製品',   NULL, false);

-- ----------------------------------------
-- 初級（section_id=14）Q051〜Q100
-- ----------------------------------------

-- 初級-51: display
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 51, 'choice', 1, 1,
   'display',
   'The new products will be on display at the trade fair next week.（新製品は来週の見本市に展示されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '展示する', NULL, true),
  (currval('questions_id_seq'), '販売する', NULL, false),
  (currval('questions_id_seq'), '配布する', NULL, false),
  (currval('questions_id_seq'), '発表する', NULL, false);

-- 初級-52: candidate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 52, 'choice', 1, 1,
   'candidate',
   'The hiring committee interviewed five candidates for the position.（採用委員会はそのポジションの候補者5名を面接しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '候補者', NULL, true),
  (currval('questions_id_seq'), '担当者', NULL, false),
  (currval('questions_id_seq'), '代理人', NULL, false),
  (currval('questions_id_seq'), '従業員', NULL, false);

-- 初級-53: state
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 53, 'choice', 1, 1,
   'state',
   'The manager stated that all employees must attend the training session.（マネージャーはすべての従業員が研修セッションに参加しなければならないと述べました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '述べる',   NULL, true),
  (currval('questions_id_seq'), '確認する', NULL, false),
  (currval('questions_id_seq'), '発表する', NULL, false),
  (currval('questions_id_seq'), '提案する', NULL, false);

-- 初級-54: exhibit
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 54, 'choice', 1, 1,
   'exhibit',
   'The museum will exhibit paintings from the 19th century this summer.（その博物館は今夏、19世紀の絵画を展示します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '展示する', NULL, true),
  (currval('questions_id_seq'), '販売する', NULL, false),
  (currval('questions_id_seq'), '発表する', NULL, false),
  (currval('questions_id_seq'), '配布する', NULL, false);

-- 初級-55: session
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 55, 'choice', 1, 1,
   'session',
   'The morning session will focus on project planning and budgeting.（午前のセッションはプロジェクト計画と予算編成に焦点を当てます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'セッション', NULL, true),
  (currval('questions_id_seq'), 'セミナー',   NULL, false),
  (currval('questions_id_seq'), 'ワークショップ', NULL, false),
  (currval('questions_id_seq'), '発表会',     NULL, false);

-- 初級-56: process
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 56, 'choice', 1, 1,
   'process',
   'The application process takes about two weeks to complete.（申請手続きは完了するまでに約2週間かかります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '手続き', NULL, true),
  (currval('questions_id_seq'), '方法',   NULL, false),
  (currval('questions_id_seq'), '規則',   NULL, false),
  (currval('questions_id_seq'), '手順',   NULL, false);

-- 初級-57: instruction
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 57, 'choice', 1, 1,
   'instruction',
   'Please follow the instructions on the packaging carefully.（梱包の指示に注意して従ってください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '指示',   NULL, true),
  (currval('questions_id_seq'), '提案',   NULL, false),
  (currval('questions_id_seq'), '要求',   NULL, false),
  (currval('questions_id_seq'), '方針',   NULL, false);

-- 初級-58: membership
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 58, 'choice', 1, 1,
   'membership',
   'Annual membership includes free access to all online resources.（年間会員資格にはすべてのオンラインリソースへの無料アクセスが含まれます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '会員資格', NULL, true),
  (currval('questions_id_seq'), '登録',     NULL, false),
  (currval('questions_id_seq'), '証明書',   NULL, false),
  (currval('questions_id_seq'), '資格',     NULL, false);

-- 初級-59: agency
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 59, 'choice', 1, 1,
   'agency',
   'We hired a recruitment agency to help find qualified candidates.（有資格の候補者を見つける手助けをしてもらうため、採用代理店を雇いました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '代理店', NULL, true),
  (currval('questions_id_seq'), '組織',   NULL, false),
  (currval('questions_id_seq'), '機関',   NULL, false),
  (currval('questions_id_seq'), '委員会', NULL, false);

-- 初級-60: based
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 60, 'choice', 1, 1,
   'based',
   'Our company is based in Tokyo, with offices in 10 countries.（当社は東京を拠点とし、10か国にオフィスを持っています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '〜を拠点とする', NULL, true),
  (currval('questions_id_seq'), '〜に関連した',   NULL, false),
  (currval('questions_id_seq'), '〜を対象とした', NULL, false),
  (currval('questions_id_seq'), '〜に従った',     NULL, false);

-- 初級-61: facility
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 61, 'choice', 1, 1,
   'facility',
   'The sports facility is open to all residents of the community.（スポーツ施設は地域のすべての住民に開放されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '施設',   NULL, true),
  (currval('questions_id_seq'), '設備',   NULL, false),
  (currval('questions_id_seq'), '機器',   NULL, false),
  (currval('questions_id_seq'), '資源',   NULL, false);

-- 初級-62: advance
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 62, 'choice', 1, 1,
   'advance',
   'Tickets must be purchased in advance to guarantee your seat.（席を確保するにはチケットを事前に購入しなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '事前に',   NULL, true),
  (currval('questions_id_seq'), '当日に',   NULL, false),
  (currval('questions_id_seq'), '追加で',   NULL, false),
  (currval('questions_id_seq'), '直接',     NULL, false);

-- 初級-63: industry
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 63, 'choice', 1, 1,
   'industry',
   'The technology industry has grown rapidly over the past decade.（テクノロジー産業はここ10年で急速に成長しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '産業',   NULL, true),
  (currval('questions_id_seq'), '経済',   NULL, false),
  (currval('questions_id_seq'), '商業',   NULL, false),
  (currval('questions_id_seq'), '事業',   NULL, false);

-- 初級-64: fee
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 64, 'choice', 1, 1,
   'fee',
   'There is an entrance fee of ten dollars for non-members.（非会員には10ドルの入場料がかかります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '料金',   NULL, true),
  (currval('questions_id_seq'), '費用',   NULL, false),
  (currval('questions_id_seq'), '支払い', NULL, false),
  (currval('questions_id_seq'), '予算',   NULL, false);

-- 初級-65: accept
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 65, 'choice', 1, 1,
   'accept',
   'The store accepts all major credit cards and cash.（その店は主要なクレジットカードと現金をすべて受け付けています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '受け付ける', NULL, true),
  (currval('questions_id_seq'), '提出する',   NULL, false),
  (currval('questions_id_seq'), '申し込む',   NULL, false),
  (currval('questions_id_seq'), '確認する',   NULL, false);

-- 初級-66: committee
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 66, 'choice', 1, 1,
   'committee',
   'The safety committee meets every month to review workplace policies.（安全委員会は毎月、職場の方針を確認するために会合を開きます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '委員会', NULL, true),
  (currval('questions_id_seq'), '組織',   NULL, false),
  (currval('questions_id_seq'), '機関',   NULL, false),
  (currval('questions_id_seq'), '代理店', NULL, false);

-- 初級-67: successful
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 67, 'choice', 1, 1,
   'successful',
   'The product launch was highly successful, exceeding all sales targets.（製品発売は大変成功し、すべての販売目標を超えました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '成功した', NULL, true),
  (currval('questions_id_seq'), '優れた',   NULL, false),
  (currval('questions_id_seq'), '有望な',   NULL, false),
  (currval('questions_id_seq'), '効果的な', NULL, false);

-- 初級-68: excellent
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 68, 'choice', 1, 1,
   'excellent',
   'The hotel received excellent reviews for its service and facilities.（そのホテルはサービスと施設について優れた評価を受けました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '優れた',   NULL, true),
  (currval('questions_id_seq'), '成功した', NULL, false),
  (currval('questions_id_seq'), '完璧な',   NULL, false),
  (currval('questions_id_seq'), '高度な',   NULL, false);

-- 初級-69: upcoming
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 69, 'choice', 1, 1,
   'upcoming',
   'Please check the schedule for upcoming training sessions.（次回の研修セッションの日程はスケジュールをご確認ください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '近づいている', NULL, true),
  (currval('questions_id_seq'), '最新の',       NULL, false),
  (currval('questions_id_seq'), '最後の',       NULL, false),
  (currval('questions_id_seq'), '前の',         NULL, false);

-- 初級-70: latest
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 70, 'choice', 1, 1,
   'latest',
   'The latest version of the software includes several new features.（ソフトウェアの最新バージョンにはいくつかの新機能が含まれています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '最新の',       NULL, true),
  (currval('questions_id_seq'), '最後の',       NULL, false),
  (currval('questions_id_seq'), '近づいている', NULL, false),
  (currval('questions_id_seq'), '前の',         NULL, false);

-- 初級-71: submit
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 71, 'choice', 1, 1,
   'submit',
   'All employees must submit their expense reports by Friday.（すべての従業員は金曜日までに経費報告書を提出しなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '提出する', NULL, true),
  (currval('questions_id_seq'), '送付する', NULL, false),
  (currval('questions_id_seq'), '申し込む', NULL, false),
  (currval('questions_id_seq'), '配布する', NULL, false);

-- 初級-72: transportation
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 72, 'choice', 1, 1,
   'transportation',
   'The company provides transportation allowance for employees commuting by train.（会社は電車通勤の従業員に交通費手当を支給しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '交通費',   NULL, true),
  (currval('questions_id_seq'), '配送費',   NULL, false),
  (currval('questions_id_seq'), '物流',     NULL, false),
  (currval('questions_id_seq'), '運搬',     NULL, false);

-- 初級-73: resume
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 73, 'choice', 1, 1,
   'resume',
   'Please send your resume and cover letter to the HR department.（人事部に履歴書とカバーレターを送ってください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '履歴書',   NULL, true),
  (currval('questions_id_seq'), '提案書',   NULL, false),
  (currval('questions_id_seq'), '報告書',   NULL, false),
  (currval('questions_id_seq'), '申請書',   NULL, false);

-- 初級-74: executive
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 74, 'choice', 1, 1,
   'executive',
   'Senior executives will attend the annual shareholder meeting next month.（来月の年次株主総会に上級役員が出席します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '役員',   NULL, true),
  (currval('questions_id_seq'), '担当者', NULL, false),
  (currval('questions_id_seq'), '代理人', NULL, false),
  (currval('questions_id_seq'), '従業員', NULL, false);

-- 初級-75: introduce
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 75, 'choice', 1, 1,
   'introduce',
   'The manager will introduce the new team members at today''s meeting.（マネージャーは今日の会議で新チームメンバーを紹介します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '紹介する', NULL, true),
  (currval('questions_id_seq'), '発表する', NULL, false),
  (currval('questions_id_seq'), '説明する', NULL, false),
  (currval('questions_id_seq'), '提案する', NULL, false);

-- 初級-76: previous
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 76, 'choice', 1, 1,
   'previous',
   'Please review the minutes from the previous meeting before today''s session.（今日のセッションの前に前回の会議の議事録を確認してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '前回の',   NULL, true),
  (currval('questions_id_seq'), '最初の',   NULL, false),
  (currval('questions_id_seq'), '次回の',   NULL, false),
  (currval('questions_id_seq'), '現在の',   NULL, false);

-- 初級-77: proposal
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 77, 'choice', 1, 1,
   'proposal',
   'The committee approved the proposal to expand the marketing budget.（委員会はマーケティング予算を拡大する提案を承認しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '提案',   NULL, true),
  (currval('questions_id_seq'), '申請',   NULL, false),
  (currval('questions_id_seq'), '報告書', NULL, false),
  (currval('questions_id_seq'), '計画',   NULL, false);

-- 初級-78: supply
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 78, 'choice', 1, 1,
   'supply',
   'The factory can supply up to 500 units per day.（工場は1日最大500台を供給できます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '供給する', NULL, true),
  (currval('questions_id_seq'), '配布する', NULL, false),
  (currval('questions_id_seq'), '提供する', NULL, false),
  (currval('questions_id_seq'), '配送する', NULL, false);

-- 初級-79: enclose
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 79, 'choice', 1, 1,
   'enclose',
   'Please enclose a copy of your ID with the application form.（申請書に身分証明書のコピーを同封してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '同封する', NULL, true),
  (currval('questions_id_seq'), '添付する', NULL, false),
  (currval('questions_id_seq'), '送付する', NULL, false),
  (currval('questions_id_seq'), '配布する', NULL, false);

-- 初級-80: policy
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 80, 'choice', 1, 1,
   'policy',
   'The company has a strict no-smoking policy in all indoor areas.（会社はすべての屋内エリアで厳格な禁煙方針を設けています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '方針',   NULL, true),
  (currval('questions_id_seq'), '規則',   NULL, false),
  (currval('questions_id_seq'), '手順',   NULL, false),
  (currval('questions_id_seq'), '基準',   NULL, false);

-- 初級-81: register
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 81, 'choice', 1, 1,
   'register',
   'Please register for the seminar by visiting our website.（当社のウェブサイトにアクセスしてセミナーに登録してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '登録する', NULL, true),
  (currval('questions_id_seq'), '申し込む', NULL, false),
  (currval('questions_id_seq'), '確認する', NULL, false),
  (currval('questions_id_seq'), '更新する', NULL, false);

-- 初級-82: arrange
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 82, 'choice', 1, 1,
   'arrange',
   'Our travel department will arrange hotel accommodations for your visit.（旅行部門がご訪問のためのホテルの宿泊を手配します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '手配する', NULL, true),
  (currval('questions_id_seq'), '計画する', NULL, false),
  (currval('questions_id_seq'), '準備する', NULL, false),
  (currval('questions_id_seq'), '調整する', NULL, false);

-- 初級-83: hire
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 83, 'choice', 1, 1,
   'hire',
   'The company is planning to hire 50 new engineers this year.（会社は今年、50名の新しいエンジニアを雇用する計画です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '雇用する', NULL, true),
  (currval('questions_id_seq'), '採用する', NULL, false),
  (currval('questions_id_seq'), '紹介する', NULL, false),
  (currval('questions_id_seq'), '任命する', NULL, false);

-- 初級-84: approve
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 84, 'choice', 1, 1,
   'approve',
   'The director approved the budget proposal for the new project.（取締役は新プロジェクトの予算提案を承認しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '承認する', NULL, true),
  (currval('questions_id_seq'), '確認する', NULL, false),
  (currval('questions_id_seq'), '同意する', NULL, false),
  (currval('questions_id_seq'), '提案する', NULL, false);

-- 初級-85: conduct
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 85, 'choice', 1, 1,
   'conduct',
   'The HR team will conduct interviews with all shortlisted candidates.（人事チームは最終選考に残ったすべての候補者と面接を実施します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '実施する', NULL, true),
  (currval('questions_id_seq'), '開催する', NULL, false),
  (currval('questions_id_seq'), '管理する', NULL, false),
  (currval('questions_id_seq'), '運営する', NULL, false);

-- 初級-86: opportunity
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 86, 'choice', 1, 1,
   'opportunity',
   'Working abroad is a great opportunity to develop your career.（海外で働くことはキャリアを発展させる素晴らしい機会です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '機会',   NULL, true),
  (currval('questions_id_seq'), '選択肢', NULL, false),
  (currval('questions_id_seq'), '権利',   NULL, false),
  (currval('questions_id_seq'), '利点',   NULL, false);

-- 初級-87: deadline
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 87, 'choice', 1, 1,
   'deadline',
   'The deadline for submitting reports is next Monday at noon.（報告書の提出締め切りは来週月曜日の正午です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '締め切り', NULL, true),
  (currval('questions_id_seq'), '予定',     NULL, false),
  (currval('questions_id_seq'), '日程',     NULL, false),
  (currval('questions_id_seq'), '期限',     NULL, false);

-- 初級-88: corporate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 88, 'choice', 1, 1,
   'corporate',
   'All employees are expected to follow the corporate dress code.（全従業員は企業の服装規定に従うことが求められます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '企業の',   NULL, true),
  (currval('questions_id_seq'), '会社の',   NULL, false),
  (currval('questions_id_seq'), '商業的な', NULL, false),
  (currval('questions_id_seq'), '組織の',   NULL, false);

-- 初級-89: warranty
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 89, 'choice', 1, 1,
   'warranty',
   'The product comes with a two-year warranty against manufacturing defects.（この製品には製造上の欠陥に対して2年間の保証が付いています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '保証',   NULL, true),
  (currval('questions_id_seq'), '契約',   NULL, false),
  (currval('questions_id_seq'), '合意',   NULL, false),
  (currval('questions_id_seq'), '証明書', NULL, false);

-- 初級-90: necessary
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 90, 'choice', 1, 1,
   'necessary',
   'It is necessary to bring a valid ID to enter the building.（建物に入るには有効な身分証明書を持参することが必要です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '必要な',   NULL, true),
  (currval('questions_id_seq'), '重要な',   NULL, false),
  (currval('questions_id_seq'), '適切な',   NULL, false),
  (currval('questions_id_seq'), '不可欠な', NULL, false);

-- 初級-91: reserve
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 91, 'choice', 1, 1,
   'reserve',
   'You can reserve a table online or by calling the restaurant.（レストランのテーブルはオンラインまたは電話で予約できます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '予約する', NULL, true),
  (currval('questions_id_seq'), '登録する', NULL, false),
  (currval('questions_id_seq'), '申し込む', NULL, false),
  (currval('questions_id_seq'), '確認する', NULL, false);

-- 初級-92: resident
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 92, 'choice', 1, 1,
   'resident',
   'Residents of the apartment complex have access to a gym and pool.（そのアパートの住民はジムとプールを利用できます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '住民',   NULL, true),
  (currval('questions_id_seq'), '従業員', NULL, false),
  (currval('questions_id_seq'), '市民',   NULL, false),
  (currval('questions_id_seq'), '近隣者', NULL, false);

-- 初級-93: create
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 93, 'choice', 1, 1,
   'create',
   'The new policy aims to create a more inclusive work environment.（新しい方針はより包括的な職場環境を作ることを目指しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '作る',     NULL, true),
  (currval('questions_id_seq'), '開発する', NULL, false),
  (currval('questions_id_seq'), '設立する', NULL, false),
  (currval('questions_id_seq'), '確立する', NULL, false);

-- 初級-94: inform
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 94, 'choice', 1, 1,
   'inform',
   'Please inform us of any changes to your contact information.（連絡先情報に変更がある場合はお知らせください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '知らせる', NULL, true),
  (currval('questions_id_seq'), '連絡する', NULL, false),
  (currval('questions_id_seq'), '伝える',   NULL, false),
  (currval('questions_id_seq'), '報告する', NULL, false);

-- 初級-95: allow
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 95, 'choice', 1, 1,
   'allow',
   'The new policy will allow employees to work from home twice a week.（新しい方針により、従業員は週2回在宅勤務することが許可されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '許可する', NULL, true),
  (currval('questions_id_seq'), '承認する', NULL, false),
  (currval('questions_id_seq'), '認める',   NULL, false),
  (currval('questions_id_seq'), '要求する', NULL, false);

-- 初級-96: mention
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 96, 'choice', 1, 1,
   'mention',
   'The manager mentioned a possible promotion during the performance review.（マネージャーは業績レビュー中に昇進の可能性について言及しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '言及する', NULL, true),
  (currval('questions_id_seq'), '述べる',   NULL, false),
  (currval('questions_id_seq'), '説明する', NULL, false),
  (currval('questions_id_seq'), '発表する', NULL, false);

-- 初級-97: appreciate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 97, 'choice', 1, 1,
   'appreciate',
   'We appreciate your patience while we process your order.（ご注文を処理している間、ご辛抱いただきありがとうございます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '感謝する', NULL, true),
  (currval('questions_id_seq'), '理解する', NULL, false),
  (currval('questions_id_seq'), '認識する', NULL, false),
  (currval('questions_id_seq'), '評価する', NULL, false);

-- 初級-98: replacement
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 98, 'choice', 1, 1,
   'replacement',
   'We will send a replacement for the damaged item free of charge.（破損した商品の代替品を無料でお送りします。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '代替品',   NULL, true),
  (currval('questions_id_seq'), '後任',     NULL, false),
  (currval('questions_id_seq'), '補充品',   NULL, false),
  (currval('questions_id_seq'), '払い戻し', NULL, false);

-- 初級-99: update
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 99, 'choice', 1, 1,
   'update',
   'Please install the latest update to ensure your software is secure.（ソフトウェアのセキュリティを確保するために最新の更新プログラムをインストールしてください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '更新',     NULL, true),
  (currval('questions_id_seq'), '報告',     NULL, false),
  (currval('questions_id_seq'), '発表',     NULL, false),
  (currval('questions_id_seq'), '通知',     NULL, false);

-- 初級-100: branch
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 100, 'choice', 1, 1,
   'branch',
   'The bank plans to open five new branches in rural areas next year.（その銀行は来年、農村部に5つの新しい支店を開設する予定です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '支店',   NULL, true),
  (currval('questions_id_seq'), '部門',   NULL, false),
  (currval('questions_id_seq'), '本社',   NULL, false),
  (currval('questions_id_seq'), '営業所', NULL, false);

-- ----------------------------------------
-- 初級（section_id=14）Q101〜Q150
-- ----------------------------------------

-- 初級-101: paid
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 101, 'choice', 1, 1,
   'paid',
   'All full-time employees are entitled to 15 days of paid leave annually.（すべての常勤従業員は年間15日の有給休暇を取る権利があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '有給の',   NULL, true),
  (currval('questions_id_seq'), '無給の',   NULL, false),
  (currval('questions_id_seq'), '任意の',   NULL, false),
  (currval('questions_id_seq'), '正規の',   NULL, false);

-- 初級-102: unfortunately
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 102, 'choice', 1, 1,
   'unfortunately',
   'Unfortunately, the event has been cancelled due to bad weather.（残念ながら、悪天候のためイベントはキャンセルになりました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '残念ながら', NULL, true),
  (currval('questions_id_seq'), '幸いにも',   NULL, false),
  (currval('questions_id_seq'), '実は',       NULL, false),
  (currval('questions_id_seq'), '確かに',     NULL, false);

-- 初級-103: original
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 103, 'choice', 1, 1,
   'original',
   'Please keep the original receipt for your records.（記録のために元のレシートを保管してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '元の',   NULL, true),
  (currval('questions_id_seq'), '最初の', NULL, false),
  (currval('questions_id_seq'), '以前の', NULL, false),
  (currval('questions_id_seq'), '現在の', NULL, false);

-- 初級-104: rent
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 104, 'choice', 1, 1,
   'rent',
   'The company rents office space in the business district downtown.（会社はダウンタウンのビジネス地区のオフィススペースを借りています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '借りる',   NULL, true),
  (currval('questions_id_seq'), '購入する', NULL, false),
  (currval('questions_id_seq'), '販売する', NULL, false),
  (currval('questions_id_seq'), '貸す',     NULL, false);

-- 初級-105: luggage
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 105, 'choice', 1, 1,
   'luggage',
   'Passengers are allowed to bring one piece of carry-on luggage.（乗客は手荷物を1つ持ち込むことができます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '手荷物', NULL, true),
  (currval('questions_id_seq'), '備品',   NULL, false),
  (currval('questions_id_seq'), '機器',   NULL, false),
  (currval('questions_id_seq'), '荷物',   NULL, false);

-- 初級-106: editor
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 106, 'choice', 1, 1,
   'editor',
   'The editor reviewed the article before it was published online.（編集者は記事がオンラインで公開される前にレビューしました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '編集者', NULL, true),
  (currval('questions_id_seq'), '著者',   NULL, false),
  (currval('questions_id_seq'), '記者',   NULL, false),
  (currval('questions_id_seq'), '担当者', NULL, false);

-- 初級-107: exhibition
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 107, 'choice', 1, 1,
   'exhibition',
   'The art exhibition will run from June through August at the city gallery.（その美術展は市内のギャラリーで6月から8月まで開催されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '展覧会',   NULL, true),
  (currval('questions_id_seq'), '発表会',   NULL, false),
  (currval('questions_id_seq'), 'セミナー', NULL, false),
  (currval('questions_id_seq'), '会議',     NULL, false);

-- 初級-108: participate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 108, 'choice', 1, 1,
   'participate',
   'All employees are encouraged to participate in the wellness program.（全従業員はウェルネスプログラムへの参加を奨励されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '参加する', NULL, true),
  (currval('questions_id_seq'), '出席する', NULL, false),
  (currval('questions_id_seq'), '登録する', NULL, false),
  (currval('questions_id_seq'), '申し込む', NULL, false);

-- 初級-109: cause
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 109, 'choice', 1, 1,
   'cause',
   'The power outage caused a significant delay in production.（停電が生産に大幅な遅延をもたらしました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '引き起こす', NULL, true),
  (currval('questions_id_seq'), '解決する',   NULL, false),
  (currval('questions_id_seq'), '防ぐ',       NULL, false),
  (currval('questions_id_seq'), '報告する',   NULL, false);

-- 初級-110: degree
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 110, 'choice', 1, 1,
   'degree',
   'Applicants must hold a degree in engineering or a related field.（応募者は工学または関連分野の学位を持っていなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '学位',   NULL, true),
  (currval('questions_id_seq'), '資格',   NULL, false),
  (currval('questions_id_seq'), '証明書', NULL, false),
  (currval('questions_id_seq'), '免許',   NULL, false);

-- 初級-111: directly
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 111, 'choice', 1, 1,
   'directly',
   'Please contact the customer service team directly for assistance.（サポートについては直接カスタマーサービスチームにご連絡ください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '直接',     NULL, true),
  (currval('questions_id_seq'), 'すぐに',   NULL, false),
  (currval('questions_id_seq'), '定期的に', NULL, false),
  (currval('questions_id_seq'), '正確に',   NULL, false);

-- 初級-112: host
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 112, 'choice', 1, 1,
   'host',
   'The city will host an international trade fair in November.（その市は11月に国際見本市を開催します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '開催する', NULL, true),
  (currval('questions_id_seq'), '主催する', NULL, false),
  (currval('questions_id_seq'), '運営する', NULL, false),
  (currval('questions_id_seq'), '管理する', NULL, false);

-- 初級-113: expert
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 113, 'choice', 1, 1,
   'expert',
   'We consulted an expert in tax law before filing our annual report.（年次報告書を提出する前に税法の専門家に相談しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '専門家', NULL, true),
  (currval('questions_id_seq'), '担当者', NULL, false),
  (currval('questions_id_seq'), '代理人', NULL, false),
  (currval('questions_id_seq'), '研究者', NULL, false);

-- 初級-114: impress
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 114, 'choice', 1, 1,
   'impress',
   'The candidate impressed the panel with her detailed knowledge of the industry.（その候補者は業界への詳細な知識で審査員を感動させました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '感動させる', NULL, true),
  (currval('questions_id_seq'), '説得する',   NULL, false),
  (currval('questions_id_seq'), '驚かせる',   NULL, false),
  (currval('questions_id_seq'), '促進する',   NULL, false);

-- 初級-115: mainly
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 115, 'choice', 1, 1,
   'mainly',
   'The store mainly sells organic produce sourced from local farms.（その店は主に地元農場から仕入れたオーガニック農産物を販売しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '主に',     NULL, true),
  (currval('questions_id_seq'), '特に',     NULL, false),
  (currval('questions_id_seq'), '一般的に', NULL, false),
  (currval('questions_id_seq'), 'たまに',   NULL, false);

-- 初級-116: suggestion
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 116, 'choice', 1, 1,
   'suggestion',
   'The manager welcomed suggestions from employees on improving workflow.（マネージャーはワークフロー改善に関する従業員からの提案を歓迎しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '提案',   NULL, true),
  (currval('questions_id_seq'), '意見',   NULL, false),
  (currval('questions_id_seq'), '要望',   NULL, false),
  (currval('questions_id_seq'), '助言',   NULL, false);

-- 初級-117: supplier
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 117, 'choice', 1, 1,
   'supplier',
   'We are looking for a reliable supplier for our raw materials.（原材料の信頼できる仕入先を探しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '仕入先',   NULL, true),
  (currval('questions_id_seq'), '代理店',   NULL, false),
  (currval('questions_id_seq'), '製造業者', NULL, false),
  (currval('questions_id_seq'), '販売業者', NULL, false);

-- 初級-118: leading
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 118, 'choice', 1, 1,
   'leading',
   'The company is one of the leading manufacturers of electric vehicles.（その会社は電気自動車の主要な製造業者の一つです。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '主要な',   NULL, true),
  (currval('questions_id_seq'), '優れた',   NULL, false),
  (currval('questions_id_seq'), '最新の',   NULL, false),
  (currval('questions_id_seq'), '先進的な', NULL, false);

-- 初級-119: organization
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 119, 'choice', 1, 1,
   'organization',
   'The non-profit organization provides free meals to low-income families.（その非営利組織は低所得家族に無料の食事を提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '組織',   NULL, true),
  (currval('questions_id_seq'), '機関',   NULL, false),
  (currval('questions_id_seq'), '委員会', NULL, false),
  (currval('questions_id_seq'), '協会',   NULL, false);

-- 初級-120: release
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 120, 'choice', 1, 1,
   'release',
   'The company will release its new product line at next month''s trade show.（その会社は来月の見本市で新製品ラインを発売します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '発売する', NULL, true),
  (currval('questions_id_seq'), '発表する', NULL, false),
  (currval('questions_id_seq'), '公開する', NULL, false),
  (currval('questions_id_seq'), '配布する', NULL, false);

-- 初級-121: limited
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 121, 'choice', 1, 1,
   'limited',
   'This offer is available for a limited time only, so act now.（このオファーは限定期間のみご利用いただけますので、お早めにどうぞ。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '限定の',   NULL, true),
  (currval('questions_id_seq'), '特別の',   NULL, false),
  (currval('questions_id_seq'), '選択的な', NULL, false),
  (currval('questions_id_seq'), '追加の',   NULL, false);

-- 初級-122: procedure
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 122, 'choice', 1, 1,
   'procedure',
   'Please follow the standard procedure for handling customer complaints.（顧客の苦情処理の標準手順に従ってください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '手順',   NULL, true),
  (currval('questions_id_seq'), '方法',   NULL, false),
  (currval('questions_id_seq'), '規則',   NULL, false),
  (currval('questions_id_seq'), '過程',   NULL, false);

-- 初級-123: experienced
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 123, 'choice', 1, 1,
   'experienced',
   'We are looking for an experienced project manager to lead the team.（チームを率いる経験豊富なプロジェクトマネージャーを募集しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '経験豊富な', NULL, true),
  (currval('questions_id_seq'), '専門的な',   NULL, false),
  (currval('questions_id_seq'), '優れた',     NULL, false),
  (currval('questions_id_seq'), '有能な',     NULL, false);

-- 初級-124: personnel
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 124, 'choice', 1, 1,
   'personnel',
   'All personnel changes must be reported to the HR department immediately.（すべての人事異動はただちに人事部に報告しなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '人事',   NULL, true),
  (currval('questions_id_seq'), 'スタッフ', NULL, false),
  (currval('questions_id_seq'), '担当者', NULL, false),
  (currval('questions_id_seq'), '従業員', NULL, false);

-- 初級-125: author
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 125, 'choice', 1, 1,
   'author',
   'The author will sign copies of her new book at the event this Saturday.（著者は今週土曜日のイベントで新著にサインします。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '著者',   NULL, true),
  (currval('questions_id_seq'), '編集者', NULL, false),
  (currval('questions_id_seq'), '記者',   NULL, false),
  (currval('questions_id_seq'), '発行者', NULL, false);

-- 初級-126: benefit
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 126, 'choice', 1, 1,
   'benefit',
   'One major benefit of the membership is access to exclusive discounts.（会員資格の大きな特典の一つは限定割引へのアクセスです。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '特典',   NULL, true),
  (currval('questions_id_seq'), '報酬',   NULL, false),
  (currval('questions_id_seq'), '支援',   NULL, false),
  (currval('questions_id_seq'), '利益',   NULL, false);

-- 初級-127: focus
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 127, 'choice', 1, 1,
   'focus',
   'This quarter, we will focus on expanding our customer base.（今四半期は顧客基盤の拡大に集中します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '集中する', NULL, true),
  (currval('questions_id_seq'), '専念する', NULL, false),
  (currval('questions_id_seq'), '取り組む', NULL, false),
  (currval('questions_id_seq'), '注目する', NULL, false);

-- 初級-128: experts
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 128, 'choice', 1, 1,
   'experts',
   'A panel of industry experts will evaluate the proposals next week.（来週、業界の専門家たちが提案を評価します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '専門家たち', NULL, true),
  (currval('questions_id_seq'), '担当者たち', NULL, false),
  (currval('questions_id_seq'), '代理人たち', NULL, false),
  (currval('questions_id_seq'), '役員たち',   NULL, false);

-- 初級-129: document
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 129, 'choice', 1, 1,
   'document',
   'Please sign and return the document by the end of the week.（週末までに書類に署名して返送してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '書類',   NULL, true),
  (currval('questions_id_seq'), '資料',   NULL, false),
  (currval('questions_id_seq'), '報告書', NULL, false),
  (currval('questions_id_seq'), '記録',   NULL, false);

-- 初級-130: remind
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 130, 'choice', 1, 1,
   'remind',
   'This email is to remind you that your subscription expires next week.（このメールは来週サブスクリプションが期限切れになることをお知らせするためのものです。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '思い出させる', NULL, true),
  (currval('questions_id_seq'), '知らせる',     NULL, false),
  (currval('questions_id_seq'), '連絡する',     NULL, false),
  (currval('questions_id_seq'), '伝える',       NULL, false);

-- 初級-131: require
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 131, 'choice', 1, 1,
   'require',
   'This position requires at least three years of relevant experience.（このポジションは少なくとも3年の関連経験を必要とします。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '必要とする', NULL, true),
  (currval('questions_id_seq'), '要求する',   NULL, false),
  (currval('questions_id_seq'), '求める',     NULL, false),
  (currval('questions_id_seq'), '確認する',   NULL, false);

-- 初級-132: representative
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 132, 'choice', 1, 1,
   'representative',
   'A sales representative will visit your office to present our new products.（営業担当者がオフィスを訪問して新製品をご紹介します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '担当者',   NULL, true),
  (currval('questions_id_seq'), '代理人',   NULL, false),
  (currval('questions_id_seq'), '代表者',   NULL, false),
  (currval('questions_id_seq'), '役員',     NULL, false);

-- 初級-133: packaging
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 133, 'choice', 1, 1,
   'packaging',
   'The company redesigned its packaging to use eco-friendly materials.（その会社は環境に優しい素材を使うために梱包を再設計しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '梱包',   NULL, true),
  (currval('questions_id_seq'), '包装',   NULL, false),
  (currval('questions_id_seq'), '荷造り', NULL, false),
  (currval('questions_id_seq'), '輸送',   NULL, false);

-- 初級-134: description
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 134, 'choice', 1, 1,
   'description',
   'Please read the job description carefully before submitting your application.（応募書類を提出する前に職務内容をよくお読みください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '説明',   NULL, true),
  (currval('questions_id_seq'), '概要',   NULL, false),
  (currval('questions_id_seq'), '詳細',   NULL, false),
  (currval('questions_id_seq'), '内容',   NULL, false);

-- 初級-135: property
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 135, 'choice', 1, 1,
   'property',
   'The company purchased a large property for its new headquarters.（その会社は新本社のために広大な物件を購入しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '物件',   NULL, true),
  (currval('questions_id_seq'), '施設',   NULL, false),
  (currval('questions_id_seq'), '土地',   NULL, false),
  (currval('questions_id_seq'), '建物',   NULL, false);

-- 初級-136: extension
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 136, 'choice', 1, 1,
   'extension',
   'You can reach the accounting department at extension 205.（会計部門には内線205番でご連絡いただけます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '内線',   NULL, true),
  (currval('questions_id_seq'), '番号',   NULL, false),
  (currval('questions_id_seq'), '回線',   NULL, false),
  (currval('questions_id_seq'), '番地',   NULL, false);

-- 初級-137: inquire
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 137, 'choice', 1, 1,
   'inquire',
   'Please inquire at the front desk for further information about check-in.（チェックインについての詳細はフロントデスクにお問い合わせください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '問い合わせる', NULL, true),
  (currval('questions_id_seq'), '確認する',     NULL, false),
  (currval('questions_id_seq'), '連絡する',     NULL, false),
  (currval('questions_id_seq'), '尋ねる',       NULL, false);

-- 初級-138: merchandise
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 138, 'choice', 1, 1,
   'merchandise',
   'The store offers a wide range of official merchandise for fans.（その店はファン向けに幅広い公式商品を提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '商品',   NULL, true),
  (currval('questions_id_seq'), '製品',   NULL, false),
  (currval('questions_id_seq'), '在庫',   NULL, false),
  (currval('questions_id_seq'), '荷物',   NULL, false);

-- 初級-139: highly
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 139, 'choice', 1, 1,
   'highly',
   'The new restaurant in the city center is highly recommended by food critics.（市内中心部の新しいレストランは料理評論家から非常に推薦されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '非常に',   NULL, true),
  (currval('questions_id_seq'), '特に',     NULL, false),
  (currval('questions_id_seq'), '十分に',   NULL, false),
  (currval('questions_id_seq'), 'おおよそ', NULL, false);

-- 初級-140: results
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 140, 'choice', 1, 1,
   'results',
   'The quarterly results exceeded the expectations of shareholders.（四半期の結果は株主の期待を超えました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '結果',   NULL, true),
  (currval('questions_id_seq'), '成果',   NULL, false),
  (currval('questions_id_seq'), '報告',   NULL, false),
  (currval('questions_id_seq'), '実績',   NULL, false);

-- 初級-141: assistance
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 141, 'choice', 1, 1,
   'assistance',
   'Please call our helpline if you need any assistance with your order.（ご注文に関してサポートが必要な場合はヘルプラインにお電話ください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'サポート', NULL, true),
  (currval('questions_id_seq'), '協力',     NULL, false),
  (currval('questions_id_seq'), '援助',     NULL, false),
  (currval('questions_id_seq'), '支援',     NULL, false);

-- 初級-142: encourage
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 142, 'choice', 1, 1,
   'encourage',
   'The company encourages employees to take part in volunteer activities.（会社は従業員がボランティア活動に参加するよう奨励しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '奨励する', NULL, true),
  (currval('questions_id_seq'), '励ます',   NULL, false),
  (currval('questions_id_seq'), '促す',     NULL, false),
  (currval('questions_id_seq'), '支援する', NULL, false);

-- 初級-143: individual
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 143, 'choice', 1, 1,
   'individual',
   'Each individual team member will receive a performance bonus.（各個人のチームメンバーはパフォーマンスボーナスを受け取ります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '個人',   NULL, true),
  (currval('questions_id_seq'), '従業員', NULL, false),
  (currval('questions_id_seq'), '担当者', NULL, false),
  (currval('questions_id_seq'), '代理人', NULL, false);

-- 初級-144: laboratory
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 144, 'choice', 1, 1,
   'laboratory',
   'Samples will be sent to the laboratory for analysis next week.（サンプルは来週分析のために実験室に送られます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '実験室',   NULL, true),
  (currval('questions_id_seq'), '研究室',   NULL, false),
  (currval('questions_id_seq'), '施設',     NULL, false),
  (currval('questions_id_seq'), '設備',     NULL, false);

-- 初級-145: consider
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 145, 'choice', 1, 1,
   'consider',
   'The board will consider the merger proposal at next month''s meeting.（取締役会は来月の会議で合併提案を検討します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '検討する', NULL, true),
  (currval('questions_id_seq'), '確認する', NULL, false),
  (currval('questions_id_seq'), '選択する', NULL, false),
  (currval('questions_id_seq'), '評価する', NULL, false);

-- 初級-146: headquarters
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 146, 'choice', 1, 1,
   'headquarters',
   'The company''s global headquarters is located in San Francisco.（会社のグローバル本社はサンフランシスコにあります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '本社',   NULL, true),
  (currval('questions_id_seq'), '支店',   NULL, false),
  (currval('questions_id_seq'), '営業所', NULL, false),
  (currval('questions_id_seq'), '拠点',   NULL, false);

-- 初級-147: ship
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 147, 'choice', 1, 1,
   'ship',
   'We will ship your order within two business days of receiving payment.（お支払いを受領してから2営業日以内に注文を発送します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '発送する', NULL, true),
  (currval('questions_id_seq'), '配達する', NULL, false),
  (currval('questions_id_seq'), '輸送する', NULL, false),
  (currval('questions_id_seq'), '配布する', NULL, false);

-- 初級-148: commercial
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 148, 'choice', 1, 1,
   'commercial',
   'The building is zoned for commercial use only.（その建物は商業利用のみに指定されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '商業的な', NULL, true),
  (currval('questions_id_seq'), '業務の',   NULL, false),
  (currval('questions_id_seq'), '企業の',   NULL, false),
  (currval('questions_id_seq'), '産業の',   NULL, false);

-- 初級-149: device
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 149, 'choice', 1, 1,
   'device',
   'Employees are allowed to use personal devices for work purposes.（従業員は業務目的で個人の装置を使用することができます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '装置',   NULL, true),
  (currval('questions_id_seq'), '機器',   NULL, false),
  (currval('questions_id_seq'), '設備',   NULL, false),
  (currval('questions_id_seq'), '機械',   NULL, false);

-- 初級-150: intended
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 150, 'choice', 1, 1,
   'intended',
   'This training program is intended for new employees joining the company.（この研修プログラムは会社に入社する新入社員を対象としています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '対象の',   NULL, true),
  (currval('questions_id_seq'), '計画された', NULL, false),
  (currval('questions_id_seq'), '最終の',   NULL, false),
  (currval('questions_id_seq'), '決定された', NULL, false);

-- ----------------------------------------
-- 初級（section_id=14）Q151〜Q200
-- ----------------------------------------

-- 初級-151: brochure
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 151, 'choice', 1, 1,
   'brochure',
   'Please take a brochure at the reception desk for more information.（詳細については受付でパンフレットをお取りください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'パンフレット', NULL, true),
  (currval('questions_id_seq'), '案内書',       NULL, false),
  (currval('questions_id_seq'), 'チラシ',       NULL, false),
  (currval('questions_id_seq'), 'カタログ',     NULL, false);

-- 初級-152: prefer
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 152, 'choice', 1, 1,
   'prefer',
   'Many employees prefer to work flexible hours rather than fixed schedules.（多くの従業員は固定スケジュールよりもフレックスタイムで働くことを好みます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '好む',   NULL, true),
  (currval('questions_id_seq'), '選ぶ',   NULL, false),
  (currval('questions_id_seq'), '求める', NULL, false),
  (currval('questions_id_seq'), '望む',   NULL, false);

-- 初級-153: response
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 153, 'choice', 1, 1,
   'response',
   'We aim to send a response to all customer inquiries within 24 hours.（すべての顧客からのお問い合わせに24時間以内に返答することを目指しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '返答',   NULL, true),
  (currval('questions_id_seq'), '報告',   NULL, false),
  (currval('questions_id_seq'), '通知',   NULL, false),
  (currval('questions_id_seq'), '連絡',   NULL, false);

-- 初級-154: donation
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 154, 'choice', 1, 1,
   'donation',
   'The company made a generous donation to the local children''s hospital.（会社は地元の小児病院に寛大な寄付をしました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '寄付',   NULL, true),
  (currval('questions_id_seq'), '支援',   NULL, false),
  (currval('questions_id_seq'), '助成金', NULL, false),
  (currval('questions_id_seq'), '補助',   NULL, false);

-- 初級-155: quarter
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 155, 'choice', 1, 1,
   'quarter',
   'Sales increased by 12% in the second quarter of this year.（今年の第2四半期に売上が12%増加しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '四半期', NULL, true),
  (currval('questions_id_seq'), '半期',   NULL, false),
  (currval('questions_id_seq'), '年次',   NULL, false),
  (currval('questions_id_seq'), '期末',   NULL, false);

-- 初級-156: agreements
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 156, 'choice', 1, 1,
   'agreements',
   'Both companies signed trade agreements to expand business cooperation.（両社はビジネス協力を拡大するための貿易協定に署名しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '協定',   NULL, true),
  (currval('questions_id_seq'), '契約',   NULL, false),
  (currval('questions_id_seq'), '合意',   NULL, false),
  (currval('questions_id_seq'), '規約',   NULL, false);

-- 初級-157: journal
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 157, 'choice', 1, 1,
   'journal',
   'The research was published in an international scientific journal.（その研究は国際的な科学専門誌に掲載されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '専門誌', NULL, true),
  (currval('questions_id_seq'), '雑誌',   NULL, false),
  (currval('questions_id_seq'), '新聞',   NULL, false),
  (currval('questions_id_seq'), '報告書', NULL, false);

-- 初級-158: distribute
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 158, 'choice', 1, 1,
   'distribute',
   'Volunteers will distribute food packages to families in need.（ボランティアが困窮家族に食料パッケージを配布します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '配布する', NULL, true),
  (currval('questions_id_seq'), '配達する', NULL, false),
  (currval('questions_id_seq'), '送付する', NULL, false),
  (currval('questions_id_seq'), '発送する', NULL, false);

-- 初級-159: potential
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 159, 'choice', 1, 1,
   'potential',
   'The manager identified several potential candidates for the promotion.（マネージャーは昇進の可能性のある候補者を数名特定しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '見込みのある', NULL, true),
  (currval('questions_id_seq'), '期待できる',   NULL, false),
  (currval('questions_id_seq'), '有望な',       NULL, false),
  (currval('questions_id_seq'), '優れた',       NULL, false);

-- 初級-160: reschedule
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 160, 'choice', 1, 1,
   'reschedule',
   'We need to reschedule the meeting due to a conflict in the calendar.（カレンダーの日程が重複しているため、会議を変更する必要があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '予定を変更する', NULL, true),
  (currval('questions_id_seq'), '延期する',       NULL, false),
  (currval('questions_id_seq'), 'キャンセルする', NULL, false),
  (currval('questions_id_seq'), '確認する',       NULL, false);

-- 初級-161: renewed
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 161, 'choice', 1, 1,
   'renewed',
   'The client signed a renewed contract for another two years.（クライアントはさらに2年間の更新された契約に署名しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '更新された', NULL, true),
  (currval('questions_id_seq'), '改定された', NULL, false),
  (currval('questions_id_seq'), '継続された', NULL, false),
  (currval('questions_id_seq'), '再開された', NULL, false);

-- 初級-162: warehouse
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 162, 'choice', 1, 1,
   'warehouse',
   'The warehouse stores inventory for distribution to retail stores.（倉庫には小売店への配送用の在庫が保管されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '倉庫',   NULL, true),
  (currval('questions_id_seq'), '工場',   NULL, false),
  (currval('questions_id_seq'), '店舗',   NULL, false),
  (currval('questions_id_seq'), '施設',   NULL, false);

-- 初級-163: refund
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 163, 'choice', 1, 1,
   'refund',
   'Customers can request a full refund within 30 days of purchase.（お客様はご購入から30日以内に全額払い戻しをご請求いただけます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '払い戻し', NULL, true),
  (currval('questions_id_seq'), '割引',     NULL, false),
  (currval('questions_id_seq'), '補償',     NULL, false),
  (currval('questions_id_seq'), '交換',     NULL, false);

-- 初級-164: advice
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 164, 'choice', 1, 1,
   'advice',
   'The financial advisor gave us useful advice on managing our expenses.（ファイナンシャルアドバイザーが経費管理について役立つアドバイスをくれました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'アドバイス', NULL, true),
  (currval('questions_id_seq'), '提案',       NULL, false),
  (currval('questions_id_seq'), '指示',       NULL, false),
  (currval('questions_id_seq'), '情報',       NULL, false);

-- 初級-165: immediately
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 165, 'choice', 1, 1,
   'immediately',
   'Please report any safety concerns to your supervisor immediately.（安全上の懸念はすぐに上司に報告してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'すぐに',   NULL, true),
  (currval('questions_id_seq'), '直接',     NULL, false),
  (currval('questions_id_seq'), '定期的に', NULL, false),
  (currval('questions_id_seq'), '間もなく', NULL, false);

-- 初級-166: council
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 166, 'choice', 1, 1,
   'council',
   'The city council voted to approve the new public transport plan.（市議会は新しい公共交通計画を承認することに票決しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '議会',   NULL, true),
  (currval('questions_id_seq'), '委員会', NULL, false),
  (currval('questions_id_seq'), '機関',   NULL, false),
  (currval('questions_id_seq'), '組織',   NULL, false);

-- 初級-167: broadcast
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 167, 'choice', 1, 1,
   'broadcast',
   'The press conference will be broadcast live on the company website.（記者会見は会社のウェブサイトでライブ放送されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '放送する', NULL, true),
  (currval('questions_id_seq'), '配信する', NULL, false),
  (currval('questions_id_seq'), '配布する', NULL, false),
  (currval('questions_id_seq'), '公開する', NULL, false);

-- 初級-168: responsible
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 168, 'choice', 1, 1,
   'responsible',
   'The project manager is responsible for overseeing all team activities.（プロジェクトマネージャーはすべてのチーム活動を監督する担当です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '担当する', NULL, true),
  (currval('questions_id_seq'), '関与した', NULL, false),
  (currval('questions_id_seq'), '適切な',   NULL, false),
  (currval('questions_id_seq'), '必要な',   NULL, false);

-- 初級-169: avoid
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 169, 'choice', 1, 1,
   'avoid',
   'To avoid delays, please submit your documents at least one week in advance.（遅延を避けるため、書類は少なくとも1週間前に提出してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '避ける',   NULL, true),
  (currval('questions_id_seq'), '防ぐ',     NULL, false),
  (currval('questions_id_seq'), '禁止する', NULL, false),
  (currval('questions_id_seq'), '削除する', NULL, false);

-- 初級-170: effective
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 170, 'choice', 1, 1,
   'effective',
   'The new training program has been highly effective in improving productivity.（新しい研修プログラムは生産性の向上に非常に効果的でした。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '効果的な', NULL, true),
  (currval('questions_id_seq'), '効率的な', NULL, false),
  (currval('questions_id_seq'), '適切な',   NULL, false),
  (currval('questions_id_seq'), '重要な',   NULL, false);

-- 初級-171: invitation
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 171, 'choice', 1, 1,
   'invitation',
   'Formal invitations will be sent to all guests two weeks before the event.（正式な招待状はイベントの2週間前にすべてのゲストに送られます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '招待状', NULL, true),
  (currval('questions_id_seq'), '案内状', NULL, false),
  (currval('questions_id_seq'), '通知',   NULL, false),
  (currval('questions_id_seq'), '連絡',   NULL, false);

-- 初級-172: reduce
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 172, 'choice', 1, 1,
   'reduce',
   'The company is implementing measures to reduce energy consumption.（会社はエネルギー消費を減らすための対策を実施しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '減らす',   NULL, true),
  (currval('questions_id_seq'), '削除する', NULL, false),
  (currval('questions_id_seq'), '下げる',   NULL, false),
  (currval('questions_id_seq'), '取り除く', NULL, false);

-- 初級-173: vehicle
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 173, 'choice', 1, 1,
   'vehicle',
   'All company vehicles must be inspected annually for safety compliance.（すべての会社の乗り物は安全規定への適合のため年次点検が必要です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '乗り物', NULL, true),
  (currval('questions_id_seq'), '機器',   NULL, false),
  (currval('questions_id_seq'), '装置',   NULL, false),
  (currval('questions_id_seq'), '設備',   NULL, false);

-- 初級-174: efficient
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 174, 'choice', 1, 1,
   'efficient',
   'The new software makes the billing process more efficient and accurate.（新しいソフトウェアにより請求処理がより効率的で正確になりました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '効率的な', NULL, true),
  (currval('questions_id_seq'), '効果的な', NULL, false),
  (currval('questions_id_seq'), '生産的な', NULL, false),
  (currval('questions_id_seq'), '適切な',   NULL, false);

-- 初級-175: manufacturer
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 175, 'choice', 1, 1,
   'manufacturer',
   'The manufacturer offers a five-year warranty on all its products.（その製造業者はすべての製品に5年間の保証を提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '製造業者', NULL, true),
  (currval('questions_id_seq'), '仕入先',   NULL, false),
  (currval('questions_id_seq'), '販売業者', NULL, false),
  (currval('questions_id_seq'), '代理店',   NULL, false);

-- 初級-176: comfortable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 176, 'choice', 1, 1,
   'comfortable',
   'The hotel rooms are spacious and comfortable, perfect for long stays.（ホテルの部屋は広くて快適で、長期滞在に最適です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '快適な',   NULL, true),
  (currval('questions_id_seq'), '便利な',   NULL, false),
  (currval('questions_id_seq'), '十分な',   NULL, false),
  (currval('questions_id_seq'), '適切な',   NULL, false);

-- 初級-177: correct
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 177, 'choice', 1, 1,
   'correct',
   'Please make sure all information in the form is correct before submitting.（提出する前にフォームのすべての情報が正確であることを確認してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '正確な',   NULL, true),
  (currval('questions_id_seq'), '適切な',   NULL, false),
  (currval('questions_id_seq'), '完全な',   NULL, false),
  (currval('questions_id_seq'), '妥当な',   NULL, false);

-- 初級-178: downtown
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 178, 'choice', 1, 1,
   'downtown',
   'Our new flagship store is located downtown, near the central station.（私たちの新しい旗艦店は中央駅近くの市内中心部にあります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '市内中心部', NULL, true),
  (currval('questions_id_seq'), '郊外',       NULL, false),
  (currval('questions_id_seq'), '近隣',       NULL, false),
  (currval('questions_id_seq'), '地区',       NULL, false);

-- 初級-179: method
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 179, 'choice', 1, 1,
   'method',
   'The company introduced a new method to reduce waste in production.（会社は生産における廃棄物を削減するための新しい方法を導入しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '方法',   NULL, true),
  (currval('questions_id_seq'), '手順',   NULL, false),
  (currval('questions_id_seq'), '手段',   NULL, false),
  (currval('questions_id_seq'), '過程',   NULL, false);

-- 初級-180: entire
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 180, 'choice', 1, 1,
   'entire',
   'The entire staff will attend the company''s annual dinner this Friday.（今週金曜日に全スタッフが会社の年次ディナーに出席します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '全体の',     NULL, true),
  (currval('questions_id_seq'), '完全な',     NULL, false),
  (currval('questions_id_seq'), '総合的な',   NULL, false),
  (currval('questions_id_seq'), '包括的な',   NULL, false);

-- 初級-181: range
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 181, 'choice', 1, 1,
   'range',
   'The store offers a wide range of products at competitive prices.（その店は競争力のある価格で幅広い種類の商品を提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '種類',   NULL, true),
  (currval('questions_id_seq'), '分野',   NULL, false),
  (currval('questions_id_seq'), '範囲',   NULL, false),
  (currval('questions_id_seq'), '区域',   NULL, false);

-- 初級-182: setting
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 182, 'choice', 1, 1,
   'setting',
   'The training takes place in a relaxed setting to encourage open discussion.（研修はオープンな議論を促すためリラックスした環境で行われます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '環境',   NULL, true),
  (currval('questions_id_seq'), '設定',   NULL, false),
  (currval('questions_id_seq'), '場所',   NULL, false),
  (currval('questions_id_seq'), '状況',   NULL, false);

-- 初級-183: apologize
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 183, 'choice', 1, 1,
   'apologize',
   'We sincerely apologize for any inconvenience caused by the delay.（遅延によってご不便をおかけしたことを心よりお詫び申し上げます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '謝罪する', NULL, true),
  (currval('questions_id_seq'), '承認する', NULL, false),
  (currval('questions_id_seq'), '断る',     NULL, false),
  (currval('questions_id_seq'), '理解する', NULL, false);

-- 初級-184: frequent
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 184, 'choice', 1, 1,
   'frequent',
   'Frequent travelers can earn bonus points with our loyalty program.（頻繁な旅行者は当社のロイヤルティプログラムでボーナスポイントを獲得できます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '頻繁な',   NULL, true),
  (currval('questions_id_seq'), '定期的な', NULL, false),
  (currval('questions_id_seq'), '継続的な', NULL, false),
  (currval('questions_id_seq'), '常時の',   NULL, false);

-- 初級-185: promotion
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 185, 'choice', 1, 1,
   'promotion',
   'She was delighted to receive a promotion to senior manager.（彼女はシニアマネージャーへの昇進を受けて喜んでいました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '昇進',   NULL, true),
  (currval('questions_id_seq'), '転勤',   NULL, false),
  (currval('questions_id_seq'), '異動',   NULL, false),
  (currval('questions_id_seq'), '採用',   NULL, false);

-- 初級-186: regarding
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 186, 'choice', 1, 1,
   'regarding',
   'Please contact us regarding any questions about your account.（アカウントに関するご質問については、ご連絡ください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '〜について',       NULL, true),
  (currval('questions_id_seq'), '〜によると',       NULL, false),
  (currval('questions_id_seq'), '〜のために',       NULL, false),
  (currval('questions_id_seq'), '〜にもかかわらず', NULL, false);

-- 初級-187: temporary
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 187, 'choice', 1, 1,
   'temporary',
   'The company hired temporary staff to handle the busy holiday season.（会社は繁忙期のホリデーシーズンに対応するために一時的なスタッフを雇いました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '一時的な', NULL, true),
  (currval('questions_id_seq'), '恒久的な', NULL, false),
  (currval('questions_id_seq'), '長期の',   NULL, false),
  (currval('questions_id_seq'), '正規の',   NULL, false);

-- 初級-188: traditional
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 188, 'choice', 1, 1,
   'traditional',
   'The restaurant serves traditional Japanese cuisine in a modern setting.（そのレストランは現代的な環境で伝統的な日本料理を提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '伝統的な', NULL, true),
  (currval('questions_id_seq'), '慣習的な', NULL, false),
  (currval('questions_id_seq'), '保守的な', NULL, false),
  (currval('questions_id_seq'), '歴史的な', NULL, false);

-- 初級-189: admission
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 189, 'choice', 1, 1,
   'admission',
   'Admission to the museum is free on the first Sunday of every month.（博物館への入場は毎月第1日曜日は無料です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '入場',   NULL, true),
  (currval('questions_id_seq'), '入学',   NULL, false),
  (currval('questions_id_seq'), '受講',   NULL, false),
  (currval('questions_id_seq'), '参加',   NULL, false);

-- 初級-190: reference
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 190, 'choice', 1, 1,
   'reference',
   'Please provide two professional references with your job application.（就職応募書類には2名の職業上の推薦状をご提出ください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '推薦状', NULL, true),
  (currval('questions_id_seq'), '参照',   NULL, false),
  (currval('questions_id_seq'), '連絡先', NULL, false),
  (currval('questions_id_seq'), '資料',   NULL, false);

-- 初級-191: status
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 191, 'choice', 1, 1,
   'status',
   'You can check the status of your order on our website at any time.（いつでも当社のウェブサイトでご注文の状況をご確認いただけます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '状況',   NULL, true),
  (currval('questions_id_seq'), '状態',   NULL, false),
  (currval('questions_id_seq'), '進捗',   NULL, false),
  (currval('questions_id_seq'), '段階',   NULL, false);

-- 初級-192: fuel
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 192, 'choice', 1, 1,
   'fuel',
   'Rising fuel costs have significantly increased our delivery expenses.（燃料費の上昇により、配送費用が大幅に増加しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '燃料',     NULL, true),
  (currval('questions_id_seq'), 'エネルギー', NULL, false),
  (currval('questions_id_seq'), '電力',     NULL, false),
  (currval('questions_id_seq'), '資源',     NULL, false);

-- 初級-193: nearly
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 193, 'choice', 1, 1,
   'nearly',
   'Nearly 500 people attended the grand opening of the new shopping center.（新しいショッピングセンターのグランドオープンにほぼ500人が参加しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ほぼ',   NULL, true),
  (currval('questions_id_seq'), '正確に', NULL, false),
  (currval('questions_id_seq'), '完全に', NULL, false),
  (currval('questions_id_seq'), '少し',   NULL, false);

-- 初級-194: cafeteria
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 194, 'choice', 1, 1,
   'cafeteria',
   'The office cafeteria offers a variety of healthy meal options for employees.（オフィスのカフェテリアは従業員向けにさまざまな健康的な食事の選択肢を提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'カフェテリア', NULL, true),
  (currval('questions_id_seq'), '食堂',         NULL, false),
  (currval('questions_id_seq'), '休憩室',       NULL, false),
  (currval('questions_id_seq'), 'レストラン',   NULL, false);

-- 初級-195: determine
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 195, 'choice', 1, 1,
   'determine',
   'The committee will determine the winner of the award by next Friday.（委員会は来週金曜日までに賞の受賞者を決定します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '決定する', NULL, true),
  (currval('questions_id_seq'), '確認する', NULL, false),
  (currval('questions_id_seq'), '選択する', NULL, false),
  (currval('questions_id_seq'), '設定する', NULL, false);

-- 初級-196: expense
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 196, 'choice', 1, 1,
   'expense',
   'Travel expenses must be submitted with original receipts for reimbursement.（払い戻しのために出張経費は領収書の原本と一緒に提出しなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '経費',   NULL, true),
  (currval('questions_id_seq'), '費用',   NULL, false),
  (currval('questions_id_seq'), '支払い', NULL, false),
  (currval('questions_id_seq'), '予算',   NULL, false);

-- 初級-197: overseas
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 197, 'choice', 1, 1,
   'overseas',
   'The company is expanding its business to several overseas markets.（その会社はいくつかの海外市場にビジネスを拡大しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '海外の',     NULL, true),
  (currval('questions_id_seq'), '国内の',     NULL, false),
  (currval('questions_id_seq'), '国際的な',   NULL, false),
  (currval('questions_id_seq'), '遠方の',     NULL, false);

-- 初級-198: satisfied
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 198, 'choice', 1, 1,
   'satisfied',
   'Most customers are satisfied with the quality of our after-sales service.（ほとんどのお客様は当社のアフターサービスの品質に満足しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '満足している', NULL, true),
  (currval('questions_id_seq'), '喜んでいる',   NULL, false),
  (currval('questions_id_seq'), '感謝している', NULL, false),
  (currval('questions_id_seq'), '安心している', NULL, false);

-- 初級-199: appear
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 199, 'choice', 1, 1,
   'appear',
   'The CEO will appear at the press conference scheduled for Thursday.（CEOは木曜日に予定されている記者会見に出席します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '出席する', NULL, true),
  (currval('questions_id_seq'), '見える',   NULL, false),
  (currval('questions_id_seq'), '示す',     NULL, false),
  (currval('questions_id_seq'), '始まる',   NULL, false);

-- 初級-200: develop
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 200, 'choice', 1, 1,
   'develop',
   'The research team is working to develop a more efficient battery technology.（研究チームはより効率的なバッテリー技術を開発するために取り組んでいます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '開発する', NULL, true),
  (currval('questions_id_seq'), '設立する', NULL, false),
  (currval('questions_id_seq'), '構築する', NULL, false),
  (currval('questions_id_seq'), '作成する', NULL, false);

-- ----------------------------------------
-- 初級（section_id=14）Q201〜Q250
-- ----------------------------------------

-- 初級-201: improve
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 201, 'choice', 1, 1,
   'improve',
   'We are constantly looking for ways to improve our customer service.（私たちは常にカスタマーサービスを改善する方法を探しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '改善する', NULL, true),
  (currval('questions_id_seq'), '向上させる', NULL, false),
  (currval('questions_id_seq'), '強化する', NULL, false),
  (currval('questions_id_seq'), '増加する', NULL, false);

-- 初級-202: reasonable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 202, 'choice', 1, 1,
   'reasonable',
   'The hotel offers comfortable rooms at very reasonable prices.（そのホテルは非常に手頃な価格で快適な客室を提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '手頃な',   NULL, true),
  (currval('questions_id_seq'), '高価な',   NULL, false),
  (currval('questions_id_seq'), '適切な',   NULL, false),
  (currval('questions_id_seq'), '公正な',   NULL, false);

-- 初級-203: unable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 203, 'choice', 1, 1,
   'unable',
   'We were unable to process your request due to a system error.（システムエラーのため、お客様のリクエストを処理できませんでした。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'できない',   NULL, true),
  (currval('questions_id_seq'), '難しい',     NULL, false),
  (currval('questions_id_seq'), '不便な',     NULL, false),
  (currval('questions_id_seq'), '不可能な',   NULL, false);

-- 初級-204: delay
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 204, 'choice', 1, 1,
   'delay',
   'Bad weather caused a significant delay in the flight schedule.（悪天候がフライトスケジュールに大幅な遅延をもたらしました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '遅延',   NULL, true),
  (currval('questions_id_seq'), '延期',   NULL, false),
  (currval('questions_id_seq'), '中断',   NULL, false),
  (currval('questions_id_seq'), '停止',   NULL, false);

-- 初級-205: legal
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 205, 'choice', 1, 1,
   'legal',
   'All contracts must be reviewed by our legal department before signing.（すべての契約は署名前に法務部によって審査されなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '法務の',   NULL, true),
  (currval('questions_id_seq'), '公式の',   NULL, false),
  (currval('questions_id_seq'), '正式の',   NULL, false),
  (currval('questions_id_seq'), '契約の',   NULL, false);

-- 初級-206: regulations
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 206, 'choice', 1, 1,
   'regulations',
   'All staff must comply with the safety regulations at all times.（すべてのスタッフは常に安全規則を遵守しなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '規則',   NULL, true),
  (currval('questions_id_seq'), '規定',   NULL, false),
  (currval('questions_id_seq'), '基準',   NULL, false),
  (currval('questions_id_seq'), '方針',   NULL, false);

-- 初級-207: expand
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 207, 'choice', 1, 1,
   'expand',
   'The company plans to expand its operations to three new countries.（その会社は3つの新しい国に業務を拡大する計画です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '拡大する', NULL, true),
  (currval('questions_id_seq'), '成長する', NULL, false),
  (currval('questions_id_seq'), '増加する', NULL, false),
  (currval('questions_id_seq'), '発展する', NULL, false);

-- 初級-208: launch
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 208, 'choice', 1, 1,
   'launch',
   'The company will launch its new mobile app next spring.（会社は来春に新しいモバイルアプリを発売します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '発売する', NULL, true),
  (currval('questions_id_seq'), '開始する', NULL, false),
  (currval('questions_id_seq'), '発表する', NULL, false),
  (currval('questions_id_seq'), '導入する', NULL, false);

-- 初級-209: recommendation
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 209, 'choice', 1, 1,
   'recommendation',
   'The board accepted the committee''s recommendation to restructure the department.（取締役会は部門再編に関する委員会の推薦を受け入れました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '推薦',   NULL, true),
  (currval('questions_id_seq'), '提案',   NULL, false),
  (currval('questions_id_seq'), '助言',   NULL, false),
  (currval('questions_id_seq'), '意見',   NULL, false);

-- 初級-210: direct
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 210, 'choice', 1, 1,
   'direct',
   'There is a direct train from the airport to the city center.（空港から市内中心部への直通電車があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '直通の',   NULL, true),
  (currval('questions_id_seq'), '即時の',   NULL, false),
  (currval('questions_id_seq'), '明確な',   NULL, false),
  (currval('questions_id_seq'), '効率的な', NULL, false);

-- 初級-211: profits
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 211, 'choice', 1, 1,
   'profits',
   'The company reported record profits for the third consecutive year.（その会社は3年連続で過去最高益を報告しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '利益',   NULL, true),
  (currval('questions_id_seq'), '収益',   NULL, false),
  (currval('questions_id_seq'), '売上',   NULL, false),
  (currval('questions_id_seq'), '収入',   NULL, false);

-- 初級-212: seek
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 212, 'choice', 1, 1,
   'seek',
   'We are currently seeking a motivated individual to join our sales team.（現在、営業チームに加わる意欲的な人材を求めています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '求める',   NULL, true),
  (currval('questions_id_seq'), '探す',     NULL, false),
  (currval('questions_id_seq'), '調査する', NULL, false),
  (currval('questions_id_seq'), '確認する', NULL, false);

-- 初級-213: entry
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 213, 'choice', 1, 1,
   'entry',
   'Entry to the VIP lounge requires a valid membership card.（VIPラウンジへの入場には有効な会員カードが必要です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '入場',   NULL, true),
  (currval('questions_id_seq'), '申し込み', NULL, false),
  (currval('questions_id_seq'), '登録',   NULL, false),
  (currval('questions_id_seq'), '参加',   NULL, false);

-- 初級-214: claim
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 214, 'choice', 1, 1,
   'claim',
   'Passengers can claim their baggage at the carousel on Level 1.（乗客は1階のターンテーブルで荷物を受け取ることができます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '受け取る', NULL, true),
  (currval('questions_id_seq'), '要求する', NULL, false),
  (currval('questions_id_seq'), '申請する', NULL, false),
  (currval('questions_id_seq'), '主張する', NULL, false);

-- 初級-215: crew
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 215, 'choice', 1, 1,
   'crew',
   'The flight crew will assist you with any questions during the journey.（乗務員が旅行中のご質問にお答えします。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '乗務員',   NULL, true),
  (currval('questions_id_seq'), 'スタッフ', NULL, false),
  (currval('questions_id_seq'), '担当者',   NULL, false),
  (currval('questions_id_seq'), '作業員',   NULL, false);

-- 初級-216: demand
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 216, 'choice', 1, 1,
   'demand',
   'There is a growing demand for electric vehicles in urban areas.（都市部での電気自動車への需要が高まっています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '需要',   NULL, true),
  (currval('questions_id_seq'), '要求',   NULL, false),
  (currval('questions_id_seq'), '注文',   NULL, false),
  (currval('questions_id_seq'), '依頼',   NULL, false);

-- 初級-217: figure
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 217, 'choice', 1, 1,
   'figure',
   'The sales figures for this quarter are significantly higher than expected.（今四半期の売上数字は予想を大幅に上回っています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '数字',   NULL, true),
  (currval('questions_id_seq'), '金額',   NULL, false),
  (currval('questions_id_seq'), '数値',   NULL, false),
  (currval('questions_id_seq'), '統計',   NULL, false);

-- 初級-218: raise
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 218, 'choice', 1, 1,
   'raise',
   'The company decided to raise the minimum wage for all hourly workers.（会社はすべての時間給従業員の最低賃金を引き上げることを決定しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '引き上げる', NULL, true),
  (currval('questions_id_seq'), '増やす',     NULL, false),
  (currval('questions_id_seq'), '高める',     NULL, false),
  (currval('questions_id_seq'), '増加させる', NULL, false);

-- 初級-219: attach
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 219, 'choice', 1, 1,
   'attach',
   'Please attach your resume to the email when applying for the position.（そのポジションに応募する際はメールに履歴書を添付してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '添付する', NULL, true),
  (currval('questions_id_seq'), '同封する', NULL, false),
  (currval('questions_id_seq'), '送付する', NULL, false),
  (currval('questions_id_seq'), '追加する', NULL, false);

-- 初級-220: attract
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 220, 'choice', 1, 1,
   'attract',
   'The new advertising campaign aims to attract younger customers.（新しい広告キャンペーンは若い顧客を引き付けることを目的としています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '引き付ける', NULL, true),
  (currval('questions_id_seq'), '集める',     NULL, false),
  (currval('questions_id_seq'), '促進する',   NULL, false),
  (currval('questions_id_seq'), '支援する',   NULL, false);

-- 初級-221: insurance
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 221, 'choice', 1, 1,
   'insurance',
   'The company provides health insurance to all full-time employees.（会社はすべての常勤従業員に健康保険を提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '保険',   NULL, true),
  (currval('questions_id_seq'), '保証',   NULL, false),
  (currval('questions_id_seq'), '補償',   NULL, false),
  (currval('questions_id_seq'), '保障',   NULL, false);

-- 初級-222: departure
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 222, 'choice', 1, 1,
   'departure',
   'Passengers should arrive at the gate 30 minutes before departure.（乗客は出発の30分前にゲートに到着する必要があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '出発',   NULL, true),
  (currval('questions_id_seq'), '到着',   NULL, false),
  (currval('questions_id_seq'), '帰国',   NULL, false),
  (currval('questions_id_seq'), '帰宅',   NULL, false);

-- 初級-223: mayor
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 223, 'choice', 1, 1,
   'mayor',
   'The mayor officially opened the new community center last Saturday.（市長は先週土曜日に新しいコミュニティセンターを正式に開設しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '市長',   NULL, true),
  (currval('questions_id_seq'), '知事',   NULL, false),
  (currval('questions_id_seq'), '議員',   NULL, false),
  (currval('questions_id_seq'), '大臣',   NULL, false);

-- 初級-224: balance
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 224, 'choice', 1, 1,
   'balance',
   'You can check your account balance online through our mobile app.（当社のモバイルアプリを通じてオンラインで口座残高を確認できます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '残高',   NULL, true),
  (currval('questions_id_seq'), '差額',   NULL, false),
  (currval('questions_id_seq'), '預金',   NULL, false),
  (currval('questions_id_seq'), '資金',   NULL, false);

-- 初級-225: estimate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 225, 'choice', 1, 1,
   'estimate',
   'We will provide a free estimate for the repair work within 24 hours.（修理作業の無料見積もりを24時間以内に提供します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '見積もり', NULL, true),
  (currval('questions_id_seq'), '計算',     NULL, false),
  (currval('questions_id_seq'), '請求',     NULL, false),
  (currval('questions_id_seq'), '予算',     NULL, false);

-- 初級-226: district
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 226, 'choice', 1, 1,
   'district',
   'The new office is located in the financial district of the city.（新しいオフィスは市の金融地区に位置しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '地区',   NULL, true),
  (currval('questions_id_seq'), '地域',   NULL, false),
  (currval('questions_id_seq'), '区域',   NULL, false),
  (currval('questions_id_seq'), '郊外',   NULL, false);

-- 初級-227: former
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 227, 'choice', 1, 1,
   'former',
   'The former CEO will attend the company''s 50th anniversary celebration.（前のCEOが会社の50周年記念式典に出席します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '前の',   NULL, true),
  (currval('questions_id_seq'), '最初の', NULL, false),
  (currval('questions_id_seq'), '現在の', NULL, false),
  (currval('questions_id_seq'), '後の',   NULL, false);

-- 初級-228: modern
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 228, 'choice', 1, 1,
   'modern',
   'The renovated building features modern facilities and open workspaces.（改装された建物には現代的な設備とオープンな作業スペースがあります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '現代的な', NULL, true),
  (currval('questions_id_seq'), '最新の',   NULL, false),
  (currval('questions_id_seq'), '先進的な', NULL, false),
  (currval('questions_id_seq'), '革新的な', NULL, false);

-- 初級-229: establish
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 229, 'choice', 1, 1,
   'establish',
   'The company was established in 1990 as a small family business.（その会社は1990年に小さな家族経営として設立されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '設立する', NULL, true),
  (currval('questions_id_seq'), '設置する', NULL, false),
  (currval('questions_id_seq'), '創設する', NULL, false),
  (currval('questions_id_seq'), '構築する', NULL, false);

-- 初級-230: option
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 230, 'choice', 1, 1,
   'option',
   'Customers have the option to pay in monthly installments.（お客様は月払いを選択することができます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '選択肢', NULL, true),
  (currval('questions_id_seq'), '可能性', NULL, false),
  (currval('questions_id_seq'), '代替案', NULL, false),
  (currval('questions_id_seq'), '手段',   NULL, false);

-- 初級-231: retire
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 231, 'choice', 1, 1,
   'retire',
   'Mr. Johnson plans to retire after 35 years of service with the company.（ジョンソン氏は会社での35年間の勤務の後、退職する予定です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '退職する', NULL, true),
  (currval('questions_id_seq'), '辞職する', NULL, false),
  (currval('questions_id_seq'), '転職する', NULL, false),
  (currval('questions_id_seq'), '離職する', NULL, false);

-- 初級-232: search
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 232, 'choice', 1, 1,
   'search',
   'You can search for available products using the keyword bar at the top.（上部のキーワードバーを使って利用可能な商品を検索できます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '検索する', NULL, true),
  (currval('questions_id_seq'), '探す',     NULL, false),
  (currval('questions_id_seq'), '調査する', NULL, false),
  (currval('questions_id_seq'), '調べる',   NULL, false);

-- 初級-233: specific
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 233, 'choice', 1, 1,
   'specific',
   'Could you please give me more specific details about the project requirements?（プロジェクトの要件についてより具体的な詳細を教えていただけますか？）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '具体的な', NULL, true),
  (currval('questions_id_seq'), '詳細な',   NULL, false),
  (currval('questions_id_seq'), '明確な',   NULL, false),
  (currval('questions_id_seq'), '特定の',   NULL, false);

-- 初級-234: agricultural
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 234, 'choice', 1, 1,
   'agricultural',
   'The region is known for its rich agricultural land and diverse crops.（その地域は豊かな農業用地と多様な作物で知られています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '農業の',   NULL, true),
  (currval('questions_id_seq'), '産業の',   NULL, false),
  (currval('questions_id_seq'), '工業の',   NULL, false),
  (currval('questions_id_seq'), '商業の',   NULL, false);

-- 初級-235: historical
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 235, 'choice', 1, 1,
   'historical',
   'The city has a rich historical background dating back hundreds of years.（その市は数百年前にさかのぼる豊かな歴史的背景を持っています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '歴史的な', NULL, true),
  (currval('questions_id_seq'), '伝統的な', NULL, false),
  (currval('questions_id_seq'), '文化的な', NULL, false),
  (currval('questions_id_seq'), '古代の',   NULL, false);

-- 初級-236: helpful
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 236, 'choice', 1, 1,
   'helpful',
   'The customer service representative was extremely helpful and polite.（カスタマーサービス担当者は非常に役に立つ、礼儀正しい方でした。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '役に立つ', NULL, true),
  (currval('questions_id_seq'), '便利な',   NULL, false),
  (currval('questions_id_seq'), '有用な',   NULL, false),
  (currval('questions_id_seq'), '有益な',   NULL, false);

-- 初級-237: complaint
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 237, 'choice', 1, 1,
   'complaint',
   'Please submit any complaints in writing to the customer service department.（苦情は書面で顧客サービス部門に提出してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '苦情',       NULL, true),
  (currval('questions_id_seq'), '問い合わせ', NULL, false),
  (currval('questions_id_seq'), '要求',       NULL, false),
  (currval('questions_id_seq'), '意見',       NULL, false);

-- 初級-238: related
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 238, 'choice', 1, 1,
   'related',
   'All work-related expenses can be reimbursed through the HR system.（すべての業務に関連した経費は人事システムを通じて払い戻されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '関連した', NULL, true),
  (currval('questions_id_seq'), '対応した', NULL, false),
  (currval('questions_id_seq'), '含まれた', NULL, false),
  (currval('questions_id_seq'), '付随した', NULL, false);

-- 初級-239: simply
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 239, 'choice', 1, 1,
   'simply',
   'To register, simply fill out the online form and click submit.（登録するには、単純にオンラインフォームに記入して送信をクリックするだけです。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '単純に',   NULL, true),
  (currval('questions_id_seq'), '簡単に',   NULL, false),
  (currval('questions_id_seq'), '容易に',   NULL, false),
  (currval('questions_id_seq'), '明確に',   NULL, false);

-- 初級-240: unique
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 240, 'choice', 1, 1,
   'unique',
   'Each customer receives a unique discount code by email after purchase.（各顧客は購入後にメールで独自の割引コードを受け取ります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '独自の',   NULL, true),
  (currval('questions_id_seq'), '特別な',   NULL, false),
  (currval('questions_id_seq'), '特有の',   NULL, false),
  (currval('questions_id_seq'), '独特な',   NULL, false);

-- 初級-241: concerning
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 241, 'choice', 1, 1,
   'concerning',
   'Please speak to your manager concerning any scheduling conflicts.（スケジュールの競合については上司にお話しください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '〜に関して',       NULL, true),
  (currval('questions_id_seq'), '〜によると',       NULL, false),
  (currval('questions_id_seq'), '〜のために',       NULL, false),
  (currval('questions_id_seq'), '〜にもかかわらず', NULL, false);

-- 初級-242: reputation
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 242, 'choice', 1, 1,
   'reputation',
   'The company has built a strong reputation for quality and reliability.（その会社は品質と信頼性で強い評判を築いてきました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '評判',   NULL, true),
  (currval('questions_id_seq'), '名声',   NULL, false),
  (currval('questions_id_seq'), '信頼',   NULL, false),
  (currval('questions_id_seq'), '実績',   NULL, false);

-- 初級-243: ability
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 243, 'choice', 1, 1,
   'ability',
   'The position requires strong communication ability in English and Japanese.（そのポジションは英語と日本語での強いコミュニケーション能力を必要とします。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '能力',   NULL, true),
  (currval('questions_id_seq'), 'スキル', NULL, false),
  (currval('questions_id_seq'), '技術',   NULL, false),
  (currval('questions_id_seq'), '知識',   NULL, false);

-- 初級-244: arrival
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 244, 'choice', 1, 1,
   'arrival',
   'Upon arrival, please check in at the registration desk on the first floor.（到着後、1階の受付デスクでチェックインしてください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '到着',   NULL, true),
  (currval('questions_id_seq'), '帰着',   NULL, false),
  (currval('questions_id_seq'), '入国',   NULL, false),
  (currval('questions_id_seq'), '来訪',   NULL, false);

-- 初級-245: familiar
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 245, 'choice', 1, 1,
   'familiar',
   'Candidates should be familiar with the latest accounting software.（候補者は最新の会計ソフトウェアに精通している必要があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '精通している', NULL, true),
  (currval('questions_id_seq'), '親しみやすい', NULL, false),
  (currval('questions_id_seq'), '馴染みのある', NULL, false),
  (currval('questions_id_seq'), '一般的な',     NULL, false);

-- 初級-246: ideal
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 246, 'choice', 1, 1,
   'ideal',
   'The location near the station makes this office space ideal for our team.（駅に近いこの立地はオフィススペースを私たちのチームにとって理想的なものにします。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '理想的な', NULL, true),
  (currval('questions_id_seq'), '最適な',   NULL, false),
  (currval('questions_id_seq'), '完璧な',   NULL, false),
  (currval('questions_id_seq'), '最良の',   NULL, false);

-- 初級-247: maintain
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 247, 'choice', 1, 1,
   'maintain',
   'It is important to maintain accurate records of all transactions.（すべての取引の正確な記録を維持することが重要です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '維持する', NULL, true),
  (currval('questions_id_seq'), '保持する', NULL, false),
  (currval('questions_id_seq'), '継続する', NULL, false),
  (currval('questions_id_seq'), '管理する', NULL, false);

-- 初級-248: landscaping
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 248, 'choice', 1, 1,
   'landscaping',
   'The property management company handles all landscaping around the building.（物件管理会社が建物周辺のすべての造園を担当しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '造園',       NULL, true),
  (currval('questions_id_seq'), '庭園管理',   NULL, false),
  (currval('questions_id_seq'), '外構工事',   NULL, false),
  (currval('questions_id_seq'), '環境整備',   NULL, false);

-- 初級-249: organized
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 249, 'choice', 1, 1,
   'organized',
   'The conference was well-organized and ran smoothly throughout the day.（会議は整然と行われ、一日中順調に進みました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '整然とした', NULL, true),
  (currval('questions_id_seq'), '計画的な',   NULL, false),
  (currval('questions_id_seq'), '効率的な',   NULL, false),
  (currval('questions_id_seq'), '体系的な',   NULL, false);

-- 初級-250: significance
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 250, 'choice', 1, 1,
   'significance',
   'The CEO explained the significance of the new partnership for the company.（CEOは会社にとっての新しいパートナーシップの重要性を説明しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '重要性', NULL, true),
  (currval('questions_id_seq'), '重大さ', NULL, false),
  (currval('questions_id_seq'), '意義',   NULL, false),
  (currval('questions_id_seq'), '価値',   NULL, false);

-- ----------------------------------------
-- 初級（section_id=14）Q251〜Q300
-- ----------------------------------------

-- 初級-251: occasion
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 251, 'choice', 1, 1,
   'occasion',
   'The company anniversary is a special occasion to recognize team achievements.（会社の記念日はチームの成果を表彰する特別な機会です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '機会',   NULL, true),
  (currval('questions_id_seq'), '場合',   NULL, false),
  (currval('questions_id_seq'), '状況',   NULL, false),
  (currval('questions_id_seq'), 'チャンス', NULL, false);

-- 初級-252: standard
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 252, 'choice', 1, 1,
   'standard',
   'All products must meet the company''s quality standard before shipment.（すべての製品は出荷前に会社の品質基準を満たさなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '基準',   NULL, true),
  (currval('questions_id_seq'), '規格',   NULL, false),
  (currval('questions_id_seq'), '水準',   NULL, false),
  (currval('questions_id_seq'), '指標',   NULL, false);

-- 初級-253: background
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 253, 'choice', 1, 1,
   'background',
   'Candidates with a background in finance are preferred for this role.（このポジションには財務の経歴を持つ候補者が優遇されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '経歴',   NULL, true),
  (currval('questions_id_seq'), '背景',   NULL, false),
  (currval('questions_id_seq'), '履歴',   NULL, false),
  (currval('questions_id_seq'), '資格',   NULL, false);

-- 初級-254: guided
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 254, 'choice', 1, 1,
   'guided',
   'The museum offers guided tours every Saturday morning at 10 a.m.（博物館は毎週土曜日の午前10時にガイド付きツアーを提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ガイド付きの', NULL, true),
  (currval('questions_id_seq'), '案内付きの',   NULL, false),
  (currval('questions_id_seq'), '説明付きの',   NULL, false),
  (currval('questions_id_seq'), '付き添いの',   NULL, false);

-- 初級-255: advanced
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 255, 'choice', 1, 1,
   'advanced',
   'The workshop is designed for employees with advanced skills in data analysis.（ワークショップはデータ分析の高度なスキルを持つ従業員向けに設計されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '高度な',     NULL, true),
  (currval('questions_id_seq'), '最先端の',   NULL, false),
  (currval('questions_id_seq'), '先進的な',   NULL, false),
  (currval('questions_id_seq'), '専門的な',   NULL, false);

-- 初級-256: alternative
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 256, 'choice', 1, 1,
   'alternative',
   'If you cannot attend in person, an alternative option is to join online.（直接参加できない場合は、代替手段としてオンラインで参加できます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '代替の',     NULL, true),
  (currval('questions_id_seq'), '別の',       NULL, false),
  (currval('questions_id_seq'), '他の',       NULL, false),
  (currval('questions_id_seq'), '補完的な',   NULL, false);

-- 初級-257: confidence
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 257, 'choice', 1, 1,
   'confidence',
   'Regular training helps employees build confidence in their job skills.（定期的な研修は従業員が職務スキルへの自信を築くのに役立ちます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '自信',   NULL, true),
  (currval('questions_id_seq'), '信頼',   NULL, false),
  (currval('questions_id_seq'), '確信',   NULL, false),
  (currval('questions_id_seq'), '信念',   NULL, false);

-- 初級-258: decade
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 258, 'choice', 1, 1,
   'decade',
   'The company has grown steadily over the past decade.（その会社はここ10年間で着実に成長してきました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '10年間', NULL, true),
  (currval('questions_id_seq'), '5年間',  NULL, false),
  (currval('questions_id_seq'), '世紀',   NULL, false),
  (currval('questions_id_seq'), '半世紀', NULL, false);

-- 初級-259: initial
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 259, 'choice', 1, 1,
   'initial',
   'The initial meeting will be held to discuss the project scope and timeline.（最初の会議はプロジェクトの範囲とスケジュールについて話し合うために開催されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '最初の',   NULL, true),
  (currval('questions_id_seq'), '初期の',   NULL, false),
  (currval('questions_id_seq'), '当初の',   NULL, false),
  (currval('questions_id_seq'), '第一の',   NULL, false);

-- 初級-260: separates
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 260, 'choice', 1, 1,
   'separates',
   'A glass partition separates the meeting room from the open office area.（ガラスの仕切りが会議室とオープンオフィスエリアを分けています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '分ける',   NULL, true),
  (currval('questions_id_seq'), '区別する', NULL, false),
  (currval('questions_id_seq'), '仕分ける', NULL, false),
  (currval('questions_id_seq'), '切り分ける', NULL, false);

-- 初級-261: celebration
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 261, 'choice', 1, 1,
   'celebration',
   'The office celebration for the product launch was a great success.（製品発売のオフィスでの祝賀は大成功でした。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '祝賀',     NULL, true),
  (currval('questions_id_seq'), '記念式典', NULL, false),
  (currval('questions_id_seq'), '表彰式',   NULL, false),
  (currval('questions_id_seq'), '歓迎会',   NULL, false);

-- 初級-262: concern
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 262, 'choice', 1, 1,
   'concern',
   'Please raise any concerns about the project with your team leader.（プロジェクトに関する懸念があればチームリーダーに申し出てください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '懸念',   NULL, true),
  (currval('questions_id_seq'), '問題',   NULL, false),
  (currval('questions_id_seq'), '課題',   NULL, false),
  (currval('questions_id_seq'), '不安',   NULL, false);

-- 初級-263: environments
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 263, 'choice', 1, 1,
   'environments',
   'The company supports employees who work in remote environments.（会社はリモートの環境で働く従業員をサポートしています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '環境',   NULL, true),
  (currval('questions_id_seq'), '状況',   NULL, false),
  (currval('questions_id_seq'), '条件',   NULL, false),
  (currval('questions_id_seq'), '設備',   NULL, false);

-- 初級-264: operates
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 264, 'choice', 1, 1,
   'operates',
   'The company operates 24 hours a day, seven days a week.（その会社は1日24時間、週7日運営しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '運営する', NULL, true),
  (currval('questions_id_seq'), '管理する', NULL, false),
  (currval('questions_id_seq'), '経営する', NULL, false),
  (currval('questions_id_seq'), '実施する', NULL, false);

-- 初級-265: various
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 265, 'choice', 1, 1,
   'various',
   'The company offers various training programs for professional development.（会社はキャリア開発のためにさまざまな研修プログラムを提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'さまざまな', NULL, true),
  (currval('questions_id_seq'), '多様な',     NULL, false),
  (currval('questions_id_seq'), '多くの',     NULL, false),
  (currval('questions_id_seq'), '複数の',     NULL, false);

-- 初級-266: brief
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 266, 'choice', 1, 1,
   'brief',
   'Please give a brief introduction of yourself at the start of the meeting.（会議の始めに簡単に自己紹介をしてください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '簡単な',   NULL, true),
  (currval('questions_id_seq'), '短い',     NULL, false),
  (currval('questions_id_seq'), '簡潔な',   NULL, false),
  (currval('questions_id_seq'), '要約した', NULL, false);

-- 初級-267: full-time
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 267, 'choice', 1, 1,
   'full-time',
   'The company is hiring two full-time customer service representatives.（会社は2名の常勤カスタマーサービス担当者を採用しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '常勤の',         NULL, true),
  (currval('questions_id_seq'), 'パートタイムの', NULL, false),
  (currval('questions_id_seq'), '臨時の',         NULL, false),
  (currval('questions_id_seq'), '契約の',         NULL, false);

-- 初級-268: overall
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 268, 'choice', 1, 1,
   'overall',
   'The overall performance of the team improved significantly this year.（チームの全体的なパフォーマンスは今年大幅に改善されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '全体的な',   NULL, true),
  (currval('questions_id_seq'), '総合的な',   NULL, false),
  (currval('questions_id_seq'), '包括的な',   NULL, false),
  (currval('questions_id_seq'), '一般的な',   NULL, false);

-- 初級-269: achieve
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 269, 'choice', 1, 1,
   'achieve',
   'The sales team worked hard to achieve their annual targets.（営業チームは年間目標を達成するために懸命に取り組みました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '達成する', NULL, true),
  (currval('questions_id_seq'), '実現する', NULL, false),
  (currval('questions_id_seq'), '完成する', NULL, false),
  (currval('questions_id_seq'), '獲得する', NULL, false);

-- 初級-270: basis
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 270, 'choice', 1, 1,
   'basis',
   'The service fee is charged on a monthly basis.（サービス料金は月ごとを基準に請求されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '基準',   NULL, true),
  (currval('questions_id_seq'), '根拠',   NULL, false),
  (currval('questions_id_seq'), '土台',   NULL, false),
  (currval('questions_id_seq'), '原則',   NULL, false);

-- 初級-271: complex
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 271, 'choice', 1, 1,
   'complex',
   'The new tax regulations are complex and require expert guidance.（新しい税務規則は複雑で専門家の指導が必要です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '複雑な',   NULL, true),
  (currval('questions_id_seq'), '難しい',   NULL, false),
  (currval('questions_id_seq'), '高度な',   NULL, false),
  (currval('questions_id_seq'), '多様な',   NULL, false);

-- 初級-272: delighted
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 272, 'choice', 1, 1,
   'delighted',
   'We are delighted to welcome you as a new member of our team.（チームの新メンバーとしてようこそ、と喜んでお伝えします。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '喜んでいる',       NULL, true),
  (currval('questions_id_seq'), '満足している',     NULL, false),
  (currval('questions_id_seq'), '感謝している',     NULL, false),
  (currval('questions_id_seq'), '光栄に思っている', NULL, false);

-- 初級-273: obtain
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 273, 'choice', 1, 1,
   'obtain',
   'You must obtain approval from your manager before taking leave.（休暇を取る前にマネージャーの承認を得なければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '得る',     NULL, true),
  (currval('questions_id_seq'), '獲得する', NULL, false),
  (currval('questions_id_seq'), '確保する', NULL, false),
  (currval('questions_id_seq'), '取得する', NULL, false);

-- 初級-274: honor
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 274, 'choice', 1, 1,
   'honor',
   'It is a great honor to receive this award on behalf of our entire team.（チーム全員を代表してこの賞を受けることは大変な栄誉です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '栄誉',   NULL, true),
  (currval('questions_id_seq'), '表彰',   NULL, false),
  (currval('questions_id_seq'), '賞',     NULL, false),
  (currval('questions_id_seq'), '名誉',   NULL, false);

-- 初級-275: properly
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 275, 'choice', 1, 1,
   'properly',
   'All equipment must be stored properly after each use.（すべての機器は使用後に適切に保管しなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '適切に',   NULL, true),
  (currval('questions_id_seq'), '正確に',   NULL, false),
  (currval('questions_id_seq'), '正しく',   NULL, false),
  (currval('questions_id_seq'), '十分に',   NULL, false);

-- 初級-276: suitable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 276, 'choice', 1, 1,
   'suitable',
   'Please wear suitable attire for the formal dinner event on Friday.（金曜日のフォーマルディナーイベントには適切な服装をお願いします。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '適切な',   NULL, true),
  (currval('questions_id_seq'), '適合した', NULL, false),
  (currval('questions_id_seq'), '適当な',   NULL, false),
  (currval('questions_id_seq'), '相応しい', NULL, false);

-- 初級-277: electronic
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 277, 'choice', 1, 1,
   'electronic',
   'The company has moved to electronic filing for all invoices and receipts.（会社はすべての請求書と領収書の電子保存に移行しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '電子の',     NULL, true),
  (currval('questions_id_seq'), 'デジタルの', NULL, false),
  (currval('questions_id_seq'), '情報の',     NULL, false),
  (currval('questions_id_seq'), 'IT系の',     NULL, false);

-- 初級-278: finalize
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 278, 'choice', 1, 1,
   'finalize',
   'We need to finalize the details of the contract by end of business today.（今日の業務終了までに契約の詳細を最終決定する必要があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '最終決定する', NULL, true),
  (currval('questions_id_seq'), '確定する',     NULL, false),
  (currval('questions_id_seq'), '確認する',     NULL, false),
  (currval('questions_id_seq'), '完成させる',   NULL, false);

-- 初級-279: generous
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 279, 'choice', 1, 1,
   'generous',
   'Thank you for your generous contribution to our annual charity drive.（毎年のチャリティー活動への寛大なご寄付ありがとうございます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '寛大な',     NULL, true),
  (currval('questions_id_seq'), '気前のいい', NULL, false),
  (currval('questions_id_seq'), '思いやりのある', NULL, false),
  (currval('questions_id_seq'), '親切な',     NULL, false);

-- 初級-280: preparation
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 280, 'choice', 1, 1,
   'preparation',
   'Careful preparation is essential for a successful product presentation.（入念な準備が製品プレゼンテーションの成功に不可欠です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '準備',   NULL, true),
  (currval('questions_id_seq'), '計画',   NULL, false),
  (currval('questions_id_seq'), '段取り', NULL, false),
  (currval('questions_id_seq'), '手配',   NULL, false);

-- 初級-281: duty
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 281, 'choice', 1, 1,
   'duty',
   'It is your duty as a team leader to ensure all deadlines are met.（すべての締め切りが守られるようにすることはチームリーダーとしての職務です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '職務',   NULL, true),
  (currval('questions_id_seq'), '義務',   NULL, false),
  (currval('questions_id_seq'), '責任',   NULL, false),
  (currval('questions_id_seq'), '役割',   NULL, false);

-- 初級-282: earn
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 282, 'choice', 1, 1,
   'earn',
   'Members can earn reward points on every purchase made at our stores.（会員は当社の店舗でのすべてのお買い物でポイントを稼ぐことができます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '稼ぐ',     NULL, true),
  (currval('questions_id_seq'), '得る',     NULL, false),
  (currval('questions_id_seq'), '受け取る', NULL, false),
  (currval('questions_id_seq'), '取得する', NULL, false);

-- 初級-283: willing
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 283, 'choice', 1, 1,
   'willing',
   'We are willing to offer flexible working hours to the right candidate.（私たちは適切な候補者にフレックスタイムを提供する用意があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '進んでする', NULL, true),
  (currval('questions_id_seq'), '積極的な',   NULL, false),
  (currval('questions_id_seq'), '意欲的な',   NULL, false),
  (currval('questions_id_seq'), '自発的な',   NULL, false);

-- 初級-284: worth
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 284, 'choice', 1, 1,
   'worth',
   'The seminar is definitely worth attending for networking opportunities.（そのセミナーはネットワーキングの機会のために参加する価値があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '価値がある', NULL, true),
  (currval('questions_id_seq'), '有益な',     NULL, false),
  (currval('questions_id_seq'), '有用な',     NULL, false),
  (currval('questions_id_seq'), '重要な',     NULL, false);

-- 初級-285: fund
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 285, 'choice', 1, 1,
   'fund',
   'The government will fund the construction of a new community center.（政府は新しいコミュニティセンターの建設に資金を提供します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '資金を提供する', NULL, true),
  (currval('questions_id_seq'), '予算を組む',     NULL, false),
  (currval('questions_id_seq'), '財源を確保する', NULL, false),
  (currval('questions_id_seq'), '費用を負担する', NULL, false);

-- 初級-286: overnights
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 286, 'choice', 1, 1,
   'overnights',
   'The package includes two overnights at a five-star hotel in Paris.（そのパッケージにはパリの五つ星ホテルでの2泊が含まれています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '宿泊',       NULL, true),
  (currval('questions_id_seq'), '滞在',       NULL, false),
  (currval('questions_id_seq'), '泊まり',     NULL, false),
  (currval('questions_id_seq'), '宿泊施設',   NULL, false);

-- 初級-287: particularly
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 287, 'choice', 1, 1,
   'particularly',
   'The feedback from clients was particularly positive about our support team.（クライアントからのフィードバックはサポートチームについて特に好意的でした。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '特に',     NULL, true),
  (currval('questions_id_seq'), '主に',     NULL, false),
  (currval('questions_id_seq'), 'とりわけ', NULL, false),
  (currval('questions_id_seq'), '特別に',   NULL, false);

-- 初級-288: aspects
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 288, 'choice', 1, 1,
   'aspects',
   'The report covers all key aspects of the company''s financial performance.（報告書は会社の財務業績のすべての主要な面を網羅しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '面',     NULL, true),
  (currval('questions_id_seq'), '側面',   NULL, false),
  (currval('questions_id_seq'), '要素',   NULL, false),
  (currval('questions_id_seq'), '観点',   NULL, false);

-- 初級-289: hesitate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 289, 'choice', 1, 1,
   'hesitate',
   'Please do not hesitate to contact us if you have any questions.（ご質問がございましたら遠慮なくご連絡ください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ためらう',   NULL, true),
  (currval('questions_id_seq'), '迷う',       NULL, false),
  (currval('questions_id_seq'), '躊躇する',   NULL, false),
  (currval('questions_id_seq'), '遠慮する',   NULL, false);

-- 初級-290: involved
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 290, 'choice', 1, 1,
   'involved',
   'All team members involved in the project will receive a special bonus.（プロジェクトに関与したすべてのチームメンバーは特別ボーナスを受け取ります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '関与した', NULL, true),
  (currval('questions_id_seq'), '参加した', NULL, false),
  (currval('questions_id_seq'), '担当した', NULL, false),
  (currval('questions_id_seq'), '取り組んだ', NULL, false);

-- 初級-291: regularly
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 291, 'choice', 1, 1,
   'regularly',
   'The software is updated regularly to ensure security and performance.（ソフトウェアはセキュリティとパフォーマンスを確保するために定期的に更新されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '定期的に', NULL, true),
  (currval('questions_id_seq'), '継続的に', NULL, false),
  (currval('questions_id_seq'), '常時',     NULL, false),
  (currval('questions_id_seq'), '毎回',     NULL, false);

-- 初級-292: scholarship
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 292, 'choice', 1, 1,
   'scholarship',
   'The company offers a scholarship to support employees seeking further education.（会社は継続教育を希望する従業員を支援するために奨学金を提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '奨学金',   NULL, true),
  (currval('questions_id_seq'), '助成金',   NULL, false),
  (currval('questions_id_seq'), '補助金',   NULL, false),
  (currval('questions_id_seq'), '給付金',   NULL, false);

-- 初級-293: shortly
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 293, 'choice', 1, 1,
   'shortly',
   'The train will depart shortly, so please board immediately.（電車はまもなく出発しますので、すぐにご乗車ください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'まもなく',     NULL, true),
  (currval('questions_id_seq'), 'すぐに',       NULL, false),
  (currval('questions_id_seq'), '間もなく',     NULL, false),
  (currval('questions_id_seq'), '近いうちに',   NULL, false);

-- 初級-294: automobile
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 294, 'choice', 1, 1,
   'automobile',
   'The automobile industry is rapidly shifting toward electric vehicles.（自動車産業は急速に電気自動車へと移行しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '自動車',   NULL, true),
  (currval('questions_id_seq'), '乗り物',   NULL, false),
  (currval('questions_id_seq'), '車両',     NULL, false),
  (currval('questions_id_seq'), '機械',     NULL, false);

-- 初級-295: deposit
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 295, 'choice', 1, 1,
   'deposit',
   'A security deposit of two months'' rent is required when signing the lease.（賃貸契約の署名時に2か月分の家賃の保証金が必要です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '保証金',   NULL, true),
  (currval('questions_id_seq'), '預金',     NULL, false),
  (currval('questions_id_seq'), '頭金',     NULL, false),
  (currval('questions_id_seq'), '積立金',   NULL, false);

-- 初級-296: contain
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 296, 'choice', 1, 1,
   'contain',
   'The package contains all the items listed on the order confirmation.（パッケージには注文確認書に記載されているすべての商品が含まれています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '含む',     NULL, true),
  (currval('questions_id_seq'), '収容する', NULL, false),
  (currval('questions_id_seq'), '含有する', NULL, false),
  (currval('questions_id_seq'), '保有する', NULL, false);

-- 初級-297: content
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 297, 'choice', 1, 1,
   'content',
   'The website content will be updated every week to stay current.（ウェブサイトのコンテンツは最新状態を保つために毎週更新されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'コンテンツ', NULL, true),
  (currval('questions_id_seq'), '情報',       NULL, false),
  (currval('questions_id_seq'), 'データ',     NULL, false),
  (currval('questions_id_seq'), '資料',       NULL, false);

-- 初級-298: proof
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 298, 'choice', 1, 1,
   'proof',
   'Please bring proof of identity when visiting our office for the first time.（初めて当社オフィスを訪問する際は身分証明書をお持ちください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '証明書',   NULL, true),
  (currval('questions_id_seq'), '認証',     NULL, false),
  (currval('questions_id_seq'), '確認書',   NULL, false),
  (currval('questions_id_seq'), '証拠',     NULL, false);

-- 初級-299: affect
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 299, 'choice', 1, 1,
   'affect',
   'Changes in the exchange rate can significantly affect our profit margins.（為替レートの変動は利益率に大きく影響する可能性があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '影響する',   NULL, true),
  (currval('questions_id_seq'), '関係する',   NULL, false),
  (currval('questions_id_seq'), '左右する',   NULL, false),
  (currval('questions_id_seq'), '変える',     NULL, false);

-- 初級-300: recognize
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 300, 'choice', 1, 1,
   'recognize',
   'The award ceremony is held to recognize employees for outstanding performance.（表彰式は優れた業績に対して従業員を認識するために開催されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '認識する', NULL, true),
  (currval('questions_id_seq'), '理解する', NULL, false),
  (currval('questions_id_seq'), '把握する', NULL, false),
  (currval('questions_id_seq'), '確認する', NULL, false);

-- TOEIC L&R -単語集- 初級 Q301-Q350

-- 初級-301: represent
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 301, 'choice', 1, 1,
   'represent',
   'She will represent the company at the international conference.（彼女は国際会議で会社を代表する予定です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '代表する', NULL, true),
  (currval('questions_id_seq'), '報告する', NULL, false),
  (currval('questions_id_seq'), '承認する', NULL, false),
  (currval('questions_id_seq'), '支払う',   NULL, false);

-- 初級-302: transfer
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 302, 'choice', 1, 1,
   'transfer',
   'He was transferred to the Tokyo branch last month.（彼は先月、東京支店に転勤しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '転勤する', NULL, true),
  (currval('questions_id_seq'), '昇進する', NULL, false),
  (currval('questions_id_seq'), '辞職する', NULL, false),
  (currval('questions_id_seq'), '採用される', NULL, false);

-- 初級-303: anniversary
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 303, 'choice', 1, 1,
   'anniversary',
   'The company is celebrating its 50th anniversary this year.（その会社は今年で創業50周年を迎えます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '周年',   NULL, true),
  (currval('questions_id_seq'), '展示会', NULL, false),
  (currval('questions_id_seq'), '締め切り', NULL, false),
  (currval('questions_id_seq'), '表彰式', NULL, false);

-- 初級-304: automatically
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 304, 'choice', 1, 1,
   'automatically',
   'The system automatically sends a confirmation email after purchase.（システムは購入後、自動的に確認メールを送信します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '自動的に', NULL, true),
  (currval('questions_id_seq'), '即座に',   NULL, false),
  (currval('questions_id_seq'), '定期的に', NULL, false),
  (currval('questions_id_seq'), '徐々に',   NULL, false);

-- 初級-305: capacity
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 305, 'choice', 1, 1,
   'capacity',
   'The conference hall has a capacity of 500 people.（会議場の収容人数は500人です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '収容人数', NULL, true),
  (currval('questions_id_seq'), '入場料',   NULL, false),
  (currval('questions_id_seq'), '開催期間', NULL, false),
  (currval('questions_id_seq'), '参加費',   NULL, false);

-- 初級-306: destination
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 306, 'choice', 1, 1,
   'destination',
   'Please enter your travel destination when booking the flight.（フライトを予約する際は、渡航先を入力してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '目的地',   NULL, true),
  (currval('questions_id_seq'), '出発時刻', NULL, false),
  (currval('questions_id_seq'), '搭乗券',   NULL, false),
  (currval('questions_id_seq'), '予約番号', NULL, false);

-- 初級-307: grant
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 307, 'choice', 1, 1,
   'grant',
   'The manager will grant access to the secure database to the new employee.（マネージャーは新入社員に安全なデータベースへのアクセスを付与します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '付与する', NULL, true),
  (currval('questions_id_seq'), '取り消す', NULL, false),
  (currval('questions_id_seq'), '制限する', NULL, false),
  (currval('questions_id_seq'), '確認する', NULL, false);

-- 初級-308: publish
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 308, 'choice', 1, 1,
   'publish',
   'The company plans to publish a new product catalog next month.（その会社は来月、新しい製品カタログを発行する予定です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '発行する', NULL, true),
  (currval('questions_id_seq'), '配布する', NULL, false),
  (currval('questions_id_seq'), '印刷する', NULL, false),
  (currval('questions_id_seq'), '承認する', NULL, false);

-- 初級-309: accompany
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 309, 'choice', 1, 1,
   'accompany',
   'Please accompany the client to the meeting room.（クライアントを会議室まで同行してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '同行する', NULL, true),
  (currval('questions_id_seq'), '出迎える', NULL, false),
  (currval('questions_id_seq'), '紹介する', NULL, false),
  (currval('questions_id_seq'), '調整する', NULL, false);

-- 初級-310: economy
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 310, 'choice', 1, 1,
   'economy',
   'The global economy has shown steady growth over the past year.（世界経済は過去1年間、安定した成長を見せています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '経済',   NULL, true),
  (currval('questions_id_seq'), '政策',   NULL, false),
  (currval('questions_id_seq'), '産業',   NULL, false),
  (currval('questions_id_seq'), '財政',   NULL, false);

-- 初級-311: extremely
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 311, 'choice', 1, 1,
   'extremely',
   'The new product has been extremely popular among young customers.（その新製品は若い顧客の間で非常に人気があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '非常に',   NULL, true),
  (currval('questions_id_seq'), 'ほぼ',     NULL, false),
  (currval('questions_id_seq'), '最終的に', NULL, false),
  (currval('questions_id_seq'), '適度に',   NULL, false);

-- 初級-312: institution
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 312, 'choice', 1, 1,
   'institution',
   'The bank is a well-respected financial institution in the region.（その銀行は地域で高く評価されている金融機関です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '機関',   NULL, true),
  (currval('questions_id_seq'), '企業',   NULL, false),
  (currval('questions_id_seq'), '施設',   NULL, false),
  (currval('questions_id_seq'), '協会',   NULL, false);

-- 初級-313: accurate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 313, 'choice', 1, 1,
   'accurate',
   'Please make sure all figures in the report are accurate.（レポートのすべての数値が正確であることを確認してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '正確な',   NULL, true),
  (currval('questions_id_seq'), '詳細な',   NULL, false),
  (currval('questions_id_seq'), '最新の',   NULL, false),
  (currval('questions_id_seq'), '信頼できる', NULL, false);

-- 初級-314: compete
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 314, 'choice', 1, 1,
   'compete',
   'Several companies are competing to win the government contract.（複数の企業が政府との契約を勝ち取るために競争しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '競争する', NULL, true),
  (currval('questions_id_seq'), '協力する', NULL, false),
  (currval('questions_id_seq'), '交渉する', NULL, false),
  (currval('questions_id_seq'), '提案する', NULL, false);

-- 初級-315: emphasize
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 315, 'choice', 1, 1,
   'emphasize',
   'The manager emphasized the importance of meeting the project deadline.（マネージャーはプロジェクトの締め切りを守ることの重要性を強調しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '強調する', NULL, true),
  (currval('questions_id_seq'), '説明する', NULL, false),
  (currval('questions_id_seq'), '確認する', NULL, false),
  (currval('questions_id_seq'), '記録する', NULL, false);

-- 初級-316: aware
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 316, 'choice', 1, 1,
   'aware',
   'All staff should be aware of the new safety regulations.（すべてのスタッフは新しい安全規制を把握している必要があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '気づいている', NULL, true),
  (currval('questions_id_seq'), '満足している', NULL, false),
  (currval('questions_id_seq'), '責任がある',   NULL, false),
  (currval('questions_id_seq'), '準備ができた', NULL, false);

-- 初級-317: crowded
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 317, 'choice', 1, 1,
   'crowded',
   'The train was crowded during the morning rush hour.（朝のラッシュアワー中、電車は混雑していました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '混雑した', NULL, true),
  (currval('questions_id_seq'), '遅延した', NULL, false),
  (currval('questions_id_seq'), '清潔な',   NULL, false),
  (currval('questions_id_seq'), '快適な',   NULL, false);

-- 初級-318: praise
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 318, 'choice', 1, 1,
   'praise',
   'The director praised the team for completing the project on time.（ディレクターはプロジェクトを期日通りに完了したチームを称賛しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '称賛する', NULL, true),
  (currval('questions_id_seq'), '批判する', NULL, false),
  (currval('questions_id_seq'), '指導する', NULL, false),
  (currval('questions_id_seq'), '激励する', NULL, false);

-- 初級-319: valuable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 319, 'choice', 1, 1,
   'valuable',
   'Customer feedback is valuable information for improving our service.（顧客からのフィードバックはサービスを改善するための貴重な情報です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '貴重な',   NULL, true),
  (currval('questions_id_seq'), '重要な',   NULL, false),
  (currval('questions_id_seq'), '詳細な',   NULL, false),
  (currval('questions_id_seq'), '有益な',   NULL, false);

-- 初級-320: explore
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 320, 'choice', 1, 1,
   'explore',
   'The team will explore new business opportunities in Asia.（チームはアジアでの新たなビジネスチャンスを探索します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '探索する', NULL, true),
  (currval('questions_id_seq'), '展開する', NULL, false),
  (currval('questions_id_seq'), '評価する', NULL, false),
  (currval('questions_id_seq'), '検討する', NULL, false);

-- 初級-321: found
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 321, 'choice', 1, 1,
   'found',
   'The company was founded in 1985 by two engineers.（その会社は1985年に2人のエンジニアによって設立されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '設立する', NULL, true),
  (currval('questions_id_seq'), '合併する', NULL, false),
  (currval('questions_id_seq'), '拡大する', NULL, false),
  (currval('questions_id_seq'), '移転する', NULL, false);

-- 初級-322: function
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 322, 'choice', 1, 1,
   'function',
   'The new software is designed to function on all major operating systems.（新しいソフトウェアはすべての主要なOSで機能するよう設計されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '機能する', NULL, true),
  (currval('questions_id_seq'), '更新する', NULL, false),
  (currval('questions_id_seq'), '接続する', NULL, false),
  (currval('questions_id_seq'), '起動する', NULL, false);

-- 初級-323: impact
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 323, 'choice', 1, 1,
   'impact',
   'The new policy will have a significant impact on daily operations.（新しい方針は日常業務に大きな影響を与えます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '影響',   NULL, true),
  (currval('questions_id_seq'), '結果',   NULL, false),
  (currval('questions_id_seq'), '変化',   NULL, false),
  (currval('questions_id_seq'), '課題',   NULL, false);

-- 初級-324: amazing
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 324, 'choice', 1, 1,
   'amazing',
   'The sales team achieved amazing results in the fourth quarter.（営業チームは第4四半期に素晴らしい成果を達成しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '素晴らしい',   NULL, true),
  (currval('questions_id_seq'), '予想外の',     NULL, false),
  (currval('questions_id_seq'), '継続的な',     NULL, false),
  (currval('questions_id_seq'), '安定した',     NULL, false);

-- 初級-325: assure
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 325, 'choice', 1, 1,
   'assure',
   'I can assure you that the order will be delivered on time.（注文は期日通りにお届けすることをお約束します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '保証する', NULL, true),
  (currval('questions_id_seq'), '確認する', NULL, false),
  (currval('questions_id_seq'), '要求する', NULL, false),
  (currval('questions_id_seq'), '承認する', NULL, false);

-- 初級-326: cooperation
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 326, 'choice', 1, 1,
   'cooperation',
   'We appreciate your cooperation in completing the survey.（アンケートへのご協力に感謝いたします。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '協力',   NULL, true),
  (currval('questions_id_seq'), '参加',   NULL, false),
  (currval('questions_id_seq'), '支援',   NULL, false),
  (currval('questions_id_seq'), '貢献',   NULL, false);

-- 初級-327: popularity
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 327, 'choice', 1, 1,
   'popularity',
   'The popularity of online shopping has increased significantly.（オンラインショッピングの人気が大幅に高まっています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '人気',    NULL, true),
  (currval('questions_id_seq'), '需要',    NULL, false),
  (currval('questions_id_seq'), '評判',    NULL, false),
  (currval('questions_id_seq'), '認知度',  NULL, false);

-- 初級-328: permit
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 328, 'choice', 1, 1,
   'permit',
   'Photography is not permitted inside the museum.（博物館内での写真撮影は許可されていません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '許可する', NULL, true),
  (currval('questions_id_seq'), '禁止する', NULL, false),
  (currval('questions_id_seq'), '制限する', NULL, false),
  (currval('questions_id_seq'), '要求する', NULL, false);

-- 初級-329: solve
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 329, 'choice', 1, 1,
   'solve',
   'The engineering team worked overnight to solve the technical problem.（エンジニアリングチームは技術的な問題を解決するために徹夜で作業しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '解決する', NULL, true),
  (currval('questions_id_seq'), '発見する', NULL, false),
  (currval('questions_id_seq'), '防ぐ',     NULL, false),
  (currval('questions_id_seq'), '報告する', NULL, false);

-- 初級-330: crop
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 330, 'choice', 1, 1,
   'crop',
   'The company specializes in exporting tropical crops to overseas markets.（その会社は熱帯作物を海外市場に輸出することを専門としています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '作物',   NULL, true),
  (currval('questions_id_seq'), '産品',   NULL, false),
  (currval('questions_id_seq'), '資源',   NULL, false),
  (currval('questions_id_seq'), '農地',   NULL, false);

-- 初級-331: neighborhood
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 331, 'choice', 1, 1,
   'neighborhood',
   'The new branch office is located in a busy commercial neighborhood.（新しい支店はにぎやかな商業地区の近隣に位置しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '近隣',   NULL, true),
  (currval('questions_id_seq'), '地区',   NULL, false),
  (currval('questions_id_seq'), '郊外',   NULL, false),
  (currval('questions_id_seq'), '中心部', NULL, false);

-- 初級-332: permanent
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 332, 'choice', 1, 1,
   'permanent',
   'The company is looking to hire a permanent employee for the position.（その会社はそのポジションに正規の従業員を採用しようとしています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '恒久的な', NULL, true),
  (currval('questions_id_seq'), '臨時の',   NULL, false),
  (currval('questions_id_seq'), '新しい',   NULL, false),
  (currval('questions_id_seq'), '熟練した', NULL, false);

-- 初級-333: regret
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 333, 'choice', 1, 1,
   'regret',
   'We regret to inform you that the event has been canceled.（イベントが中止になったことをお知らせすることを残念に思います。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '残念に思う', NULL, true),
  (currval('questions_id_seq'), '案内する',   NULL, false),
  (currval('questions_id_seq'), '通知する',   NULL, false),
  (currval('questions_id_seq'), '延期する',   NULL, false);

-- 初級-334: slightly
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 334, 'choice', 1, 1,
   'slightly',
   'The price of the product has been slightly reduced this month.（今月、製品の価格がわずかに引き下げられました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'わずかに', NULL, true),
  (currval('questions_id_seq'), '大幅に',   NULL, false),
  (currval('questions_id_seq'), '急速に',   NULL, false),
  (currval('questions_id_seq'), '最終的に', NULL, false);

-- 初級-335: complicated
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 335, 'choice', 1, 1,
   'complicated',
   'The approval process can be complicated for first-time applicants.（承認プロセスは初めての申請者にとって複雑になることがあります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '複雑な',       NULL, true),
  (currval('questions_id_seq'), '時間のかかる', NULL, false),
  (currval('questions_id_seq'), '費用のかかる', NULL, false),
  (currval('questions_id_seq'), '不便な',       NULL, false);

-- 初級-336: factor
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 336, 'choice', 1, 1,
   'factor',
   'Customer satisfaction is a key factor in the company''s success.（顧客満足度は会社の成功における重要な要因です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '要因',   NULL, true),
  (currval('questions_id_seq'), '基準',   NULL, false),
  (currval('questions_id_seq'), '目標',   NULL, false),
  (currval('questions_id_seq'), '結果',   NULL, false);

-- 初級-337: favorable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 337, 'choice', 1, 1,
   'favorable',
   'The board received a favorable response to the new proposal.（取締役会は新しい提案に対して好意的な反応を受けました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '好意的な', NULL, true),
  (currval('questions_id_seq'), '詳細な',   NULL, false),
  (currval('questions_id_seq'), '否定的な', NULL, false),
  (currval('questions_id_seq'), '積極的な', NULL, false);

-- 初級-338: guarantee
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 338, 'choice', 1, 1,
   'guarantee',
   'The manufacturer guarantees all products for one year.（メーカーはすべての製品に1年間の保証を提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '保証する', NULL, true),
  (currval('questions_id_seq'), '修理する', NULL, false),
  (currval('questions_id_seq'), '交換する', NULL, false),
  (currval('questions_id_seq'), '販売する', NULL, false);

-- 初級-339: mechanical
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 339, 'choice', 1, 1,
   'mechanical',
   'The technician identified a mechanical issue with the equipment.（技術者は設備の機械的な問題を特定しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '機械的な', NULL, true),
  (currval('questions_id_seq'), '電気的な', NULL, false),
  (currval('questions_id_seq'), '技術的な', NULL, false),
  (currval('questions_id_seq'), '構造的な', NULL, false);

-- 初級-340: priority
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 340, 'choice', 1, 1,
   'priority',
   'Customer safety is our top priority.（顧客の安全が私たちの最優先事項です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '優先事項', NULL, true),
  (currval('questions_id_seq'), '目標',     NULL, false),
  (currval('questions_id_seq'), '方針',     NULL, false),
  (currval('questions_id_seq'), '責任',     NULL, false);

-- 初級-341: relatively
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 341, 'choice', 1, 1,
   'relatively',
   'The new product is relatively affordable compared to competitors.（新製品は競合他社と比較して比較的手頃な価格です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '比較的', NULL, true),
  (currval('questions_id_seq'), '極めて', NULL, false),
  (currval('questions_id_seq'), '特に',   NULL, false),
  (currval('questions_id_seq'), '全体的に', NULL, false);

-- 初級-342: resource
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 342, 'choice', 1, 1,
   'resource',
   'The company is committed to using natural resources responsibly.（その会社は天然資源を責任を持って使用することに取り組んでいます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '資源',   NULL, true),
  (currval('questions_id_seq'), '素材',   NULL, false),
  (currval('questions_id_seq'), '製品',   NULL, false),
  (currval('questions_id_seq'), '設備',   NULL, false);

-- 初級-343: shuttle
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 343, 'choice', 1, 1,
   'shuttle',
   'A free shuttle service runs between the hotel and the airport.（ホテルと空港の間を無料のシャトルサービスが運行しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '定期往復便', NULL, true),
  (currval('questions_id_seq'), '路線バス',   NULL, false),
  (currval('questions_id_seq'), 'タクシー',   NULL, false),
  (currval('questions_id_seq'), '貸し切り車', NULL, false);

-- 初級-344: divide
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 344, 'choice', 1, 1,
   'divide',
   'The project will be divided into three phases.（プロジェクトは3つのフェーズに分割されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '分割する', NULL, true),
  (currval('questions_id_seq'), '統合する', NULL, false),
  (currval('questions_id_seq'), '調整する', NULL, false),
  (currval('questions_id_seq'), '割り当てる', NULL, false);

-- 初級-345: native
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 345, 'choice', 1, 1,
   'native',
   'We are looking for a native speaker to teach business English.（ビジネス英語を教えるネイティブスピーカーを探しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '母国語の',   NULL, true),
  (currval('questions_id_seq'), '経験豊富な', NULL, false),
  (currval('questions_id_seq'), '優秀な',     NULL, false),
  (currval('questions_id_seq'), '専任の',     NULL, false);

-- 初級-346: afford
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 346, 'choice', 1, 1,
   'afford',
   'The company cannot afford to delay the product launch any further.（その会社はこれ以上製品の発売を遅らせる余裕はありません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '余裕がある', NULL, true),
  (currval('questions_id_seq'), '計画する',   NULL, false),
  (currval('questions_id_seq'), '許可する',   NULL, false),
  (currval('questions_id_seq'), '諦める',     NULL, false);

-- 初級-347: income
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 347, 'choice', 1, 1,
   'income',
   'The report shows a steady increase in annual income over five years.（レポートは5年間で年間収入が着実に増加していることを示しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '収入',   NULL, true),
  (currval('questions_id_seq'), '利益',   NULL, false),
  (currval('questions_id_seq'), '予算',   NULL, false),
  (currval('questions_id_seq'), '支出',   NULL, false);

-- 初級-348: occur
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 348, 'choice', 1, 1,
   'occur',
   'The system failure occurred during the scheduled maintenance.（システム障害は定期メンテナンス中に発生しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '起きる',   NULL, true),
  (currval('questions_id_seq'), '続く',     NULL, false),
  (currval('questions_id_seq'), '解決する', NULL, false),
  (currval('questions_id_seq'), '報告される', NULL, false);

-- 初級-349: saving
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 349, 'choice', 1, 1,
   'saving',
   'The new energy system has resulted in significant cost savings.（新しいエネルギーシステムにより、大幅なコスト削減が実現しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '節約',   NULL, true),
  (currval('questions_id_seq'), '増加',   NULL, false),
  (currval('questions_id_seq'), '削減',   NULL, false),
  (currval('questions_id_seq'), '利益',   NULL, false);

-- 初級-350: findings
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 350, 'choice', 1, 1,
   'findings',
   'The team will present its findings at the conference next week.（チームは来週の会議で調査結果を発表します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '調査結果', NULL, true),
  (currval('questions_id_seq'), '提案',     NULL, false),
  (currval('questions_id_seq'), '報告書',   NULL, false),
  (currval('questions_id_seq'), 'データ',   NULL, false);

-- TOEIC L&R -単語集- 初級 Q351-Q400

-- 初級-351: locate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 351, 'choice', 1, 1,
   'locate',
   'We are trying to locate a suitable office space in the city center.（私たちは市の中心部に適切なオフィススペースを探しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '位置を特定する', NULL, true),
  (currval('questions_id_seq'), '確認する',       NULL, false),
  (currval('questions_id_seq'), '評価する',       NULL, false),
  (currval('questions_id_seq'), '選択する',       NULL, false);

-- 初級-352: postpone
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 352, 'choice', 1, 1,
   'postpone',
   'The board meeting was postponed due to the CEO''s illness.（取締役会はCEOの病気により延期されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '延期する', NULL, true),
  (currval('questions_id_seq'), '中止する', NULL, false),
  (currval('questions_id_seq'), '変更する', NULL, false),
  (currval('questions_id_seq'), '短縮する', NULL, false);

-- 初級-353: preserve
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 353, 'choice', 1, 1,
   'preserve',
   'The company is committed to preserving the natural environment.（その会社は自然環境を保全することに取り組んでいます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '保全する', NULL, true),
  (currval('questions_id_seq'), '改善する', NULL, false),
  (currval('questions_id_seq'), '回復する', NULL, false),
  (currval('questions_id_seq'), '管理する', NULL, false);

-- 初級-354: prove
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 354, 'choice', 1, 1,
   'prove',
   'The new approach has proved to be highly effective.（新しいアプローチは非常に効果的であることが証明されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '証明する', NULL, true),
  (currval('questions_id_seq'), '示す',     NULL, false),
  (currval('questions_id_seq'), '達成する', NULL, false),
  (currval('questions_id_seq'), '提案する', NULL, false);

-- 初級-355: exact
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 355, 'choice', 1, 1,
   'exact',
   'Please provide the exact dimensions of the product for shipping.（配送のため、製品の正確な寸法をお知らせください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '正確な',   NULL, true),
  (currval('questions_id_seq'), '詳細な',   NULL, false),
  (currval('questions_id_seq'), '必要な',   NULL, false),
  (currval('questions_id_seq'), '適切な',   NULL, false);

-- 初級-356: gain
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 356, 'choice', 1, 1,
   'gain',
   'The company has gained a strong reputation in the industry.（その会社は業界で強固な評判を得ています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '得る',     NULL, true),
  (currval('questions_id_seq'), '維持する', NULL, false),
  (currval('questions_id_seq'), '確認する', NULL, false),
  (currval('questions_id_seq'), '向上させる', NULL, false);

-- 初級-357: labor
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 357, 'choice', 1, 1,
   'labor',
   'The construction project requires a large amount of skilled labor.（その建設プロジェクトには大量の熟練した労働力が必要です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '労働',   NULL, true),
  (currval('questions_id_seq'), '管理',   NULL, false),
  (currval('questions_id_seq'), '資金',   NULL, false),
  (currval('questions_id_seq'), '設備',   NULL, false);

-- 初級-358: regard
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 358, 'choice', 1, 1,
   'regard',
   'The client is regarded as our most valued partner.（そのクライアントは私たちの最も価値あるパートナーとみなされています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'みなす',   NULL, true),
  (currval('questions_id_seq'), '接する',   NULL, false),
  (currval('questions_id_seq'), '支援する', NULL, false),
  (currval('questions_id_seq'), '紹介する', NULL, false);

-- 初級-359: closely
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 359, 'choice', 1, 1,
   'closely',
   'The team worked closely with the client to understand their needs.（チームはクライアントのニーズを理解するために緊密に連携しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '緊密に',   NULL, true),
  (currval('questions_id_seq'), '慎重に',   NULL, false),
  (currval('questions_id_seq'), '迅速に',   NULL, false),
  (currval('questions_id_seq'), '定期的に', NULL, false);

-- 初級-360: deserve
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 360, 'choice', 1, 1,
   'deserve',
   'The employees deserve recognition for their outstanding work.（従業員は卓越した業績に対して表彰される価値があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '値する',   NULL, true),
  (currval('questions_id_seq'), '求める',   NULL, false),
  (currval('questions_id_seq'), '期待する', NULL, false),
  (currval('questions_id_seq'), '達成する', NULL, false);

-- 初級-361: identify
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 361, 'choice', 1, 1,
   'identify',
   'The manager needs to identify the cause of the production delay.（マネージャーは製造遅延の原因を特定する必要があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '特定する', NULL, true),
  (currval('questions_id_seq'), '解決する', NULL, false),
  (currval('questions_id_seq'), '説明する', NULL, false),
  (currval('questions_id_seq'), '調査する', NULL, false);

-- 初級-362: loyal
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 362, 'choice', 1, 1,
   'loyal',
   'The company rewards its loyal customers with special discounts.（その会社は忠実な顧客に特別割引を提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '忠実な',   NULL, true),
  (currval('questions_id_seq'), '新しい',   NULL, false),
  (currval('questions_id_seq'), '定期的な', NULL, false),
  (currval('questions_id_seq'), '重要な',   NULL, false);

-- 初級-363: promising
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 363, 'choice', 1, 1,
   'promising',
   'The young engineer is showing promising results in her first year.（その若いエンジニアは1年目から有望な成果を示しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '有望な',   NULL, true),
  (currval('questions_id_seq'), '優秀な',   NULL, false),
  (currval('questions_id_seq'), '成功した', NULL, false),
  (currval('questions_id_seq'), '経験豊富な', NULL, false);

-- 初級-364: stress
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 364, 'choice', 1, 1,
   'stress',
   'The CEO stressed the need for innovation in the industry.（CEOは業界における革新の必要性を強調しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '強調する', NULL, true),
  (currval('questions_id_seq'), '説明する', NULL, false),
  (currval('questions_id_seq'), '警告する', NULL, false),
  (currval('questions_id_seq'), '提案する', NULL, false);

-- 初級-365: analyze
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 365, 'choice', 1, 1,
   'analyze',
   'The research team will analyze the data collected from the survey.（研究チームはアンケートから収集したデータを分析します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '分析する', NULL, true),
  (currval('questions_id_seq'), '収集する', NULL, false),
  (currval('questions_id_seq'), '提出する', NULL, false),
  (currval('questions_id_seq'), '解釈する', NULL, false);

-- 初級-366: commission
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 366, 'choice', 1, 1,
   'commission',
   'The sales representative earns a commission on each sale made.（営業担当者は各販売に対して手数料を受け取ります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '手数料',   NULL, true),
  (currval('questions_id_seq'), '給与',     NULL, false),
  (currval('questions_id_seq'), '報奨金',   NULL, false),
  (currval('questions_id_seq'), '割引',     NULL, false);

-- 初級-367: committed
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 367, 'choice', 1, 1,
   'committed',
   'The company is committed to delivering high-quality products.（その会社は高品質な製品を届けることに専念しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '専念した', NULL, true),
  (currval('questions_id_seq'), '迅速な',   NULL, false),
  (currval('questions_id_seq'), '優秀な',   NULL, false),
  (currval('questions_id_seq'), '信頼できる', NULL, false);

-- 初級-368: enable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 368, 'choice', 1, 1,
   'enable',
   'The new software will enable staff to work more efficiently.（新しいソフトウェアはスタッフがより効率的に働くことを可能にします。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '可能にする', NULL, true),
  (currval('questions_id_seq'), '促進する',   NULL, false),
  (currval('questions_id_seq'), '支援する',   NULL, false),
  (currval('questions_id_seq'), '改善する',   NULL, false);

-- 初級-369: enjoyable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 369, 'choice', 1, 1,
   'enjoyable',
   'The company picnic was an enjoyable event for all employees.（会社のピクニックはすべての従業員にとって楽しいイベントでした。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '楽しい',     NULL, true),
  (currval('questions_id_seq'), '記念すべき', NULL, false),
  (currval('questions_id_seq'), '成功した',   NULL, false),
  (currval('questions_id_seq'), '印象的な',   NULL, false);

-- 初級-370: existing
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 370, 'choice', 1, 1,
   'existing',
   'The company plans to upgrade its existing IT infrastructure.（その会社は既存のITインフラをアップグレードする予定です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '既存の',   NULL, true),
  (currval('questions_id_seq'), '新しい',   NULL, false),
  (currval('questions_id_seq'), '古い',     NULL, false),
  (currval('questions_id_seq'), '標準的な', NULL, false);

-- 初級-371: flyer
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 371, 'choice', 1, 1,
   'flyer',
   'Please distribute the flyers to promote the upcoming sale.（来るセールを宣伝するためにチラシを配布してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'チラシ',   NULL, true),
  (currval('questions_id_seq'), 'ポスター', NULL, false),
  (currval('questions_id_seq'), 'カタログ', NULL, false),
  (currval('questions_id_seq'), '看板',     NULL, false);

-- 初級-372: proceed
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 372, 'choice', 1, 1,
   'proceed',
   'Once the contract is signed, we can proceed with the project.（契約書に署名されたら、プロジェクトを進めることができます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '進む',     NULL, true),
  (currval('questions_id_seq'), '開始する', NULL, false),
  (currval('questions_id_seq'), '承認する', NULL, false),
  (currval('questions_id_seq'), '完了する', NULL, false);

-- 初級-373: prevent
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 373, 'choice', 1, 1,
   'prevent',
   'Regular maintenance will help prevent equipment failures.（定期的なメンテナンスは設備の故障を防ぐのに役立ちます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '防ぐ',     NULL, true),
  (currval('questions_id_seq'), '解決する', NULL, false),
  (currval('questions_id_seq'), '減らす',   NULL, false),
  (currval('questions_id_seq'), '報告する', NULL, false);

-- 初級-374: alike
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 374, 'choice', 1, 1,
   'alike',
   'The new policy applies to full-time and part-time employees alike.（新しい方針はフルタイムとパートタイムの従業員に同様に適用されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '同様に',   NULL, true),
  (currval('questions_id_seq'), '同時に',   NULL, false),
  (currval('questions_id_seq'), '一般的に', NULL, false),
  (currval('questions_id_seq'), '直接的に', NULL, false);

-- 初級-375: appoint
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 375, 'choice', 1, 1,
   'appoint',
   'The board has appointed a new director of marketing.（取締役会は新しいマーケティングディレクターを任命しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '任命する', NULL, true),
  (currval('questions_id_seq'), '選出する', NULL, false),
  (currval('questions_id_seq'), '採用する', NULL, false),
  (currval('questions_id_seq'), '推薦する', NULL, false);

-- 初級-376: connection
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 376, 'choice', 1, 1,
   'connection',
   'The company has a strong connection with local suppliers.（その会社は地元のサプライヤーと強いつながりを持っています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'つながり', NULL, true),
  (currval('questions_id_seq'), '契約',     NULL, false),
  (currval('questions_id_seq'), '合意',     NULL, false),
  (currval('questions_id_seq'), '取引',     NULL, false);

-- 初級-377: eager
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 377, 'choice', 1, 1,
   'eager',
   'The new intern is eager to learn about the company''s operations.（新しいインターンは会社の業務について熱心に学ぼうとしています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '熱心な',     NULL, true),
  (currval('questions_id_seq'), '経験豊富な', NULL, false),
  (currval('questions_id_seq'), '優秀な',     NULL, false),
  (currval('questions_id_seq'), '慎重な',     NULL, false);

-- 初級-378: ease
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 378, 'choice', 1, 1,
   'ease',
   'The new process will ease the workload for all team members.（新しいプロセスはすべてのチームメンバーの作業負担を軽減します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '軽減する',   NULL, true),
  (currval('questions_id_seq'), '増加させる', NULL, false),
  (currval('questions_id_seq'), '管理する',   NULL, false),
  (currval('questions_id_seq'), '評価する',   NULL, false);

-- 初級-379: fairly
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 379, 'choice', 1, 1,
   'fairly',
   'The new employee adapted to the team fairly quickly.（新入社員はかなり素早くチームに適応しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'かなり',   NULL, true),
  (currval('questions_id_seq'), '最終的に', NULL, false),
  (currval('questions_id_seq'), '特に',     NULL, false),
  (currval('questions_id_seq'), '徐々に',   NULL, false);

-- 初級-380: absolutely
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 380, 'choice', 1, 1,
   'absolutely',
   'Customer privacy must be absolutely protected at all times.（顧客のプライバシーは常に絶対的に保護されなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '絶対的に', NULL, true),
  (currval('questions_id_seq'), '十分に',   NULL, false),
  (currval('questions_id_seq'), '確実に',   NULL, false),
  (currval('questions_id_seq'), '適切に',   NULL, false);

-- 初級-381: atmosphere
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 381, 'choice', 1, 1,
   'atmosphere',
   'The office has a friendly atmosphere that encourages teamwork.（オフィスはチームワークを促進する友好的な雰囲気があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '雰囲気',   NULL, true),
  (currval('questions_id_seq'), '環境',     NULL, false),
  (currval('questions_id_seq'), '文化',     NULL, false),
  (currval('questions_id_seq'), '方針',     NULL, false);

-- 初級-382: calculate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 382, 'choice', 1, 1,
   'calculate',
   'The accountant will calculate the total cost of the project.（経理担当者はプロジェクトの総費用を計算します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '計算する',   NULL, true),
  (currval('questions_id_seq'), '確認する',   NULL, false),
  (currval('questions_id_seq'), '見積もる',   NULL, false),
  (currval('questions_id_seq'), '記録する',   NULL, false);

-- 初級-383: contrast
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 383, 'choice', 1, 1,
   'contrast',
   'In contrast to last year, sales figures have improved significantly.（昨年とは対照的に、売上高は大幅に改善されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '対照',   NULL, true),
  (currval('questions_id_seq'), '比較',   NULL, false),
  (currval('questions_id_seq'), '変化',   NULL, false),
  (currval('questions_id_seq'), '反省',   NULL, false);

-- 初級-384: monitor
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 384, 'choice', 1, 1,
   'monitor',
   'The manager will monitor the team''s progress on a weekly basis.（マネージャーは週次でチームの進捗を監視します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '監視する', NULL, true),
  (currval('questions_id_seq'), '評価する', NULL, false),
  (currval('questions_id_seq'), '記録する', NULL, false),
  (currval('questions_id_seq'), '指導する', NULL, false);

-- 初級-385: occasionally
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 385, 'choice', 1, 1,
   'occasionally',
   'The team occasionally works overtime to meet project deadlines.（チームはプロジェクトの締め切りに間に合わせるために時々残業します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '時々',     NULL, true),
  (currval('questions_id_seq'), '定期的に', NULL, false),
  (currval('questions_id_seq'), '頻繁に',   NULL, false),
  (currval('questions_id_seq'), '常に',     NULL, false);

-- 初級-386: practical
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 386, 'choice', 1, 1,
   'practical',
   'The training program includes practical exercises for real-world situations.（研修プログラムには実際の状況に向けた実用的な演習が含まれています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '実用的な', NULL, true),
  (currval('questions_id_seq'), '理論的な', NULL, false),
  (currval('questions_id_seq'), '効果的な', NULL, false),
  (currval('questions_id_seq'), '専門的な', NULL, false);

-- 初級-387: serious
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 387, 'choice', 1, 1,
   'serious',
   'The company is taking serious steps to address the safety concern.（その会社は安全上の懸念に対処するための真剣な措置を講じています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '深刻な',   NULL, true),
  (currval('questions_id_seq'), '重要な',   NULL, false),
  (currval('questions_id_seq'), '緊急の',   NULL, false),
  (currval('questions_id_seq'), '特別な',   NULL, false);

-- 初級-388: strength
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 388, 'choice', 1, 1,
   'strength',
   'The company''s main strength is its innovative product design.（会社の主な強みは革新的な製品デザインです。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '強み',   NULL, true),
  (currval('questions_id_seq'), '実績',   NULL, false),
  (currval('questions_id_seq'), '評判',   NULL, false),
  (currval('questions_id_seq'), '能力',   NULL, false);

-- 初級-389: equally
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 389, 'choice', 1, 1,
   'equally',
   'The profits will be divided equally among all shareholders.（利益はすべての株主に等しく分配されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '等しく',   NULL, true),
  (currval('questions_id_seq'), '公平に',   NULL, false),
  (currval('questions_id_seq'), '適切に',   NULL, false),
  (currval('questions_id_seq'), '効率的に', NULL, false);

-- 初級-390: import
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 390, 'choice', 1, 1,
   'import',
   'The company imports raw materials from overseas suppliers.（その会社は海外のサプライヤーから原材料を輸入しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '輸入する', NULL, true),
  (currval('questions_id_seq'), '輸出する', NULL, false),
  (currval('questions_id_seq'), '調達する', NULL, false),
  (currval('questions_id_seq'), '購入する', NULL, false);

-- 初級-391: informal
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 391, 'choice', 1, 1,
   'informal',
   'The team held an informal meeting to discuss the new project.（チームは新しいプロジェクトについて話し合うために非公式な会議を開きました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '非公式な', NULL, true),
  (currval('questions_id_seq'), '緊急の',   NULL, false),
  (currval('questions_id_seq'), '定期的な', NULL, false),
  (currval('questions_id_seq'), '臨時の',   NULL, false);

-- 初級-392: contact
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 392, 'choice', 1, 1,
   'contact',
   'Please contact our customer service team if you have any questions.（ご質問がある場合は、カスタマーサービスチームにご連絡ください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '連絡する', NULL, true),
  (currval('questions_id_seq'), '訪問する', NULL, false),
  (currval('questions_id_seq'), '相談する', NULL, false),
  (currval('questions_id_seq'), '報告する', NULL, false);

-- 初級-393: schedule
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 393, 'choice', 1, 1,
   'schedule',
   'Please check your schedule to confirm the meeting time.（会議の時間を確認するためにご予定をご確認ください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '予定',   NULL, true),
  (currval('questions_id_seq'), '計画',   NULL, false),
  (currval('questions_id_seq'), '議題',   NULL, false),
  (currval('questions_id_seq'), '記録',   NULL, false);

-- 初級-394: forward
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 394, 'choice', 1, 1,
   'forward',
   'Please forward the email to all members of the marketing department.（マーケティング部門の全メンバーにメールを転送してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '転送する', NULL, true),
  (currval('questions_id_seq'), '送信する', NULL, false),
  (currval('questions_id_seq'), '返信する', NULL, false),
  (currval('questions_id_seq'), '確認する', NULL, false);

-- 初級-395: handle
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 395, 'choice', 1, 1,
   'handle',
   'The customer service team is trained to handle complaints professionally.（カスタマーサービスチームはクレームに専門的に対処するよう訓練されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '対処する', NULL, true),
  (currval('questions_id_seq'), '解決する', NULL, false),
  (currval('questions_id_seq'), '管理する', NULL, false),
  (currval('questions_id_seq'), '記録する', NULL, false);

-- 初級-396: reply
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 396, 'choice', 1, 1,
   'reply',
   'Please reply to the email by the end of the business day.（営業日の終わりまでにメールに返信してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '返信する', NULL, true),
  (currval('questions_id_seq'), '送信する', NULL, false),
  (currval('questions_id_seq'), '確認する', NULL, false),
  (currval('questions_id_seq'), '作成する', NULL, false);

-- 初級-397: support
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 397, 'choice', 1, 1,
   'support',
   'The company will support its employees during the transition period.（その会社は移行期間中、従業員を支援します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '支援する', NULL, true),
  (currval('questions_id_seq'), '管理する', NULL, false),
  (currval('questions_id_seq'), '監督する', NULL, false),
  (currval('questions_id_seq'), '評価する', NULL, false);

-- 初級-398: sign
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 398, 'choice', 1, 1,
   'sign',
   'Please sign the contract before the end of the week.（今週末までに契約書に署名してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '署名する', NULL, true),
  (currval('questions_id_seq'), '提出する', NULL, false),
  (currval('questions_id_seq'), '確認する', NULL, false),
  (currval('questions_id_seq'), '承認する', NULL, false);

-- 初級-399: complete
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 399, 'choice', 1, 1,
   'complete',
   'All employees must complete the training course by the end of the month.（すべての従業員は月末までに研修コースを修了しなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '修了する', NULL, true),
  (currval('questions_id_seq'), '提出する', NULL, false),
  (currval('questions_id_seq'), '開始する', NULL, false),
  (currval('questions_id_seq'), '登録する', NULL, false);

-- 初級-400: cover
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (14, NULL, 400, 'choice', 1, 1,
   'cover',
   'The insurance policy covers damage caused by natural disasters.（保険契約は自然災害による損害を補償しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '補償する', NULL, true),
  (currval('questions_id_seq'), '含む',     NULL, false),
  (currval('questions_id_seq'), '適用する', NULL, false),
  (currval('questions_id_seq'), '保護する', NULL, false);


-- ----------------------------------------

-- 中級（section_id=15）

-- TOEIC L&R -単語集- 中級 Q1-Q50

-- 中級-1: lately
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 1, 'choice', 1, 1,
   'lately',
   'Sales have been declining lately, so we need to review our strategy.（最近売上が落ちているので、戦略を見直す必要があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '最近',     NULL, true),
  (currval('questions_id_seq'), 'かつて',   NULL, false),
  (currval('questions_id_seq'), '今後',     NULL, false),
  (currval('questions_id_seq'), 'しばしば', NULL, false);

-- 中級-2: profession
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 2, 'choice', 1, 1,
   'profession',
   'She has worked in the medical profession for over twenty years.（彼女は20年以上医療の職業に就いています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '職業',   NULL, true),
  (currval('questions_id_seq'), '資格',   NULL, false),
  (currval('questions_id_seq'), '能力',   NULL, false),
  (currval('questions_id_seq'), '経験',   NULL, false);

-- 中級-3: supervisor
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 3, 'choice', 1, 1,
   'supervisor',
   'Please get approval from your supervisor before submitting the report.（報告書を提出する前に上司の承認を得てください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '上司',   NULL, true),
  (currval('questions_id_seq'), '同僚',   NULL, false),
  (currval('questions_id_seq'), '顧客',   NULL, false),
  (currval('questions_id_seq'), '部下',   NULL, false);

-- 中級-4: ensure
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 4, 'choice', 1, 1,
   'ensure',
   'Please ensure that all documents are submitted before the deadline.（すべての書類が締め切り前に提出されるよう確実にしてください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '確実にする', NULL, true),
  (currval('questions_id_seq'), '防ぐ',       NULL, false),
  (currval('questions_id_seq'), '中断する',   NULL, false),
  (currval('questions_id_seq'), '取り消す',   NULL, false);

-- 中級-5: submission
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 5, 'choice', 1, 1,
   'submission',
   'The deadline for submission of the application form is this Friday.（申請書の提出期限は今週金曜日です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '提出',     NULL, true),
  (currval('questions_id_seq'), '受領',     NULL, false),
  (currval('questions_id_seq'), '審査',     NULL, false),
  (currval('questions_id_seq'), '取り消し', NULL, false);

-- 中級-6: notify
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 6, 'choice', 1, 1,
   'notify',
   'Please notify us in advance if you need to cancel your reservation.（予約をキャンセルする必要がある場合は、事前にご通知ください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '通知する', NULL, true),
  (currval('questions_id_seq'), '確認する', NULL, false),
  (currval('questions_id_seq'), '却下する', NULL, false),
  (currval('questions_id_seq'), '延期する', NULL, false);

-- 中級-7: definitely
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 7, 'choice', 1, 1,
   'definitely',
   'This is definitely the best option for our project at this stage.（これは間違いなく現段階でのプロジェクトの最善の選択肢です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '確かに',   NULL, true),
  (currval('questions_id_seq'), 'おそらく', NULL, false),
  (currval('questions_id_seq'), 'めったに', NULL, false),
  (currval('questions_id_seq'), 'わずかに', NULL, false);

-- 中級-8: eligible
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 8, 'choice', 1, 1,
   'eligible',
   'Full-time employees are eligible for the company''s health insurance plan.（正社員は会社の健康保険プランの対象となります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '資格のある', NULL, true),
  (currval('questions_id_seq'), '義務的な',   NULL, false),
  (currval('questions_id_seq'), '自発的な',   NULL, false),
  (currval('questions_id_seq'), '不適切な',   NULL, false);

-- 中級-9: paperwork
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 9, 'choice', 1, 1,
   'paperwork',
   'There is a lot of paperwork involved in hiring a new employee.（新しい従業員を採用するには多くの書類仕事が伴います。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '書類仕事', NULL, true),
  (currval('questions_id_seq'), '会議',     NULL, false),
  (currval('questions_id_seq'), '報告書',   NULL, false),
  (currval('questions_id_seq'), '手続き費', NULL, false);

-- 中級-10: complimentary
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 10, 'choice', 1, 1,
   'complimentary',
   'All guests will receive a complimentary welcome drink upon arrival.（全宿泊客は到着時に無料のウェルカムドリンクを受け取ります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '無料の',   NULL, true),
  (currval('questions_id_seq'), '有料の',   NULL, false),
  (currval('questions_id_seq'), '義務的な', NULL, false),
  (currval('questions_id_seq'), '暫定的な', NULL, false);

-- 中級-11: revise
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 11, 'choice', 1, 1,
   'revise',
   'Please revise the proposal based on the client''s feedback.（クライアントのフィードバックに基づいて提案書を修正してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '修正する', NULL, true),
  (currval('questions_id_seq'), '提出する', NULL, false),
  (currval('questions_id_seq'), '確認する', NULL, false),
  (currval('questions_id_seq'), '承認する', NULL, false);

-- 中級-12: track
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 12, 'choice', 1, 1,
   'track',
   'You can track your shipment online using the tracking number.（追跡番号を使ってオンラインで荷物を追跡できます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '追跡する', NULL, true),
  (currval('questions_id_seq'), '配送する', NULL, false),
  (currval('questions_id_seq'), '確認する', NULL, false),
  (currval('questions_id_seq'), '注文する', NULL, false);

-- 中級-13: administrative
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 13, 'choice', 1, 1,
   'administrative',
   'She handles all administrative tasks in the regional office.（彼女は地域オフィスのすべての管理業務を担当しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '管理の',   NULL, true),
  (currval('questions_id_seq'), '財務の',   NULL, false),
  (currval('questions_id_seq'), '技術の',   NULL, false),
  (currval('questions_id_seq'), '営業の',   NULL, false);

-- 中級-14: retail
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 14, 'choice', 1, 1,
   'retail',
   'The company operates more than 50 retail stores across the country.（その会社は全国で50以上の小売店を運営しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '小売',   NULL, true),
  (currval('questions_id_seq'), '卸売',   NULL, false),
  (currval('questions_id_seq'), '製造',   NULL, false),
  (currval('questions_id_seq'), '流通',   NULL, false);

-- 中級-15: inventory
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 15, 'choice', 1, 1,
   'inventory',
   'Please check the inventory levels before placing a new order.（新しい注文をする前に在庫量を確認してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '在庫',   NULL, true),
  (currval('questions_id_seq'), '予算',   NULL, false),
  (currval('questions_id_seq'), '発注書', NULL, false),
  (currval('questions_id_seq'), '配送',   NULL, false);

-- 中級-16: extensive
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 16, 'choice', 1, 1,
   'extensive',
   'The company conducted an extensive survey of customer satisfaction.（その会社は顧客満足度について広範な調査を実施しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '広範な',   NULL, true),
  (currval('questions_id_seq'), '詳細な',   NULL, false),
  (currval('questions_id_seq'), '定期的な', NULL, false),
  (currval('questions_id_seq'), '費用のかかる', NULL, false);

-- 中級-17: promotional
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 17, 'choice', 1, 1,
   'promotional',
   'The company is distributing promotional materials at the trade fair.（その会社は見本市で販促資料を配布しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '販促の',   NULL, true),
  (currval('questions_id_seq'), '割引の',   NULL, false),
  (currval('questions_id_seq'), '新製品の', NULL, false),
  (currval('questions_id_seq'), '限定の',   NULL, false);

-- 中級-18: catering
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 18, 'choice', 1, 1,
   'catering',
   'The catering service will provide meals for all 200 guests at the event.（ケータリングサービスはイベントで200名全員に食事を提供します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '仕出し',   NULL, true),
  (currval('questions_id_seq'), '会場設営', NULL, false),
  (currval('questions_id_seq'), '受付',     NULL, false),
  (currval('questions_id_seq'), '清掃',     NULL, false);

-- 中級-19: wildlife
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 19, 'choice', 1, 1,
   'wildlife',
   'The conservation project aims to protect the local wildlife.（その保全プロジェクトは地域の野生動物を保護することを目的としています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '野生動物', NULL, true),
  (currval('questions_id_seq'), '自然環境', NULL, false),
  (currval('questions_id_seq'), '植物',     NULL, false),
  (currval('questions_id_seq'), '農業',     NULL, false);

-- 中級-20: assign
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 20, 'choice', 1, 1,
   'assign',
   'Each team member was assigned a specific task for the project.（各チームメンバーにプロジェクトの特定のタスクが割り当てられました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '割り当てる', NULL, true),
  (currval('questions_id_seq'), '指示する',   NULL, false),
  (currval('questions_id_seq'), '評価する',   NULL, false),
  (currval('questions_id_seq'), '承認する',   NULL, false);

-- 中級-21: imply
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 21, 'choice', 1, 1,
   'imply',
   'The survey results imply that customers want more flexible options.（調査結果は顧客がより柔軟な選択肢を求めていることを示唆しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '示唆する', NULL, true),
  (currval('questions_id_seq'), '説明する', NULL, false),
  (currval('questions_id_seq'), '予測する', NULL, false),
  (currval('questions_id_seq'), '報告する', NULL, false);

-- 中級-22: banquet
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 22, 'choice', 1, 1,
   'banquet',
   'The annual company banquet will be held at the Grand Hotel this year.（今年の年次社内宴会はグランドホテルで開催されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '宴会',     NULL, true),
  (currval('questions_id_seq'), '会議',     NULL, false),
  (currval('questions_id_seq'), '展示会',   NULL, false),
  (currval('questions_id_seq'), '記念式典', NULL, false);

-- 中級-23: valid
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 23, 'choice', 1, 1,
   'valid',
   'Your membership card is valid for one year from the date of issue.（会員カードは発行日から1年間有効です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '有効な',     NULL, true),
  (currval('questions_id_seq'), '無効の',     NULL, false),
  (currval('questions_id_seq'), '期限切れの', NULL, false),
  (currval('questions_id_seq'), '更新された', NULL, false);

-- 中級-24: affordable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 24, 'choice', 1, 1,
   'affordable',
   'The company offers affordable housing solutions for low-income families.（その会社は低所得世帯向けに手頃な価格の住宅ソリューションを提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '手頃な',   NULL, true),
  (currval('questions_id_seq'), '高級な',   NULL, false),
  (currval('questions_id_seq'), '標準的な', NULL, false),
  (currval('questions_id_seq'), '改良された', NULL, false);

-- 中級-25: renovate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 25, 'choice', 1, 1,
   'renovate',
   'The hotel is planning to renovate its lobby and dining areas next year.（そのホテルは来年ロビーとダイニングエリアを改装する計画です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '改装する', NULL, true),
  (currval('questions_id_seq'), '建設する', NULL, false),
  (currval('questions_id_seq'), '移転する', NULL, false),
  (currval('questions_id_seq'), '解体する', NULL, false);

-- 中級-26: guidelines
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 26, 'choice', 1, 1,
   'guidelines',
   'Please follow the company guidelines when submitting expense reports.（経費報告書を提出する際は会社の指針に従ってください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '指針',   NULL, true),
  (currval('questions_id_seq'), '規制',   NULL, false),
  (currval('questions_id_seq'), '規則',   NULL, false),
  (currval('questions_id_seq'), '命令',   NULL, false);

-- 中級-27: certificate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 27, 'choice', 1, 1,
   'certificate',
   'All participants will receive a certificate of completion at the end of the course.（すべての参加者はコース終了時に修了証明書を受け取ります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '証明書', NULL, true),
  (currval('questions_id_seq'), '許可証', NULL, false),
  (currval('questions_id_seq'), '受領書', NULL, false),
  (currval('questions_id_seq'), '資格',   NULL, false);

-- 中級-28: innovative
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 28, 'choice', 1, 1,
   'innovative',
   'The company is known for its innovative approach to product development.（その会社は製品開発への革新的なアプローチで知られています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '革新的な',   NULL, true),
  (currval('questions_id_seq'), '伝統的な',   NULL, false),
  (currval('questions_id_seq'), '標準的な',   NULL, false),
  (currval('questions_id_seq'), '実用的な',   NULL, false);

-- 中級-29: agenda
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 29, 'choice', 1, 1,
   'agenda',
   'Please review the agenda before attending tomorrow''s meeting.（明日の会議に出席する前に議題を確認してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '議題',   NULL, true),
  (currval('questions_id_seq'), '議事録', NULL, false),
  (currval('questions_id_seq'), '報告書', NULL, false),
  (currval('questions_id_seq'), '日程',   NULL, false);

-- 中級-30: assembly
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 30, 'choice', 1, 1,
   'assembly',
   'The assembly of the new equipment will be completed by end of week.（新しい設備の組み立ては今週末までに完了します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '組み立て', NULL, true),
  (currval('questions_id_seq'), '設置',     NULL, false),
  (currval('questions_id_seq'), '修理',     NULL, false),
  (currval('questions_id_seq'), '検査',     NULL, false);

-- 中級-31: install
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 31, 'choice', 1, 1,
   'install',
   'The technician will install the new software on all office computers.（技術者はすべてのオフィスのコンピューターに新しいソフトウェアを設置します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '設置する', NULL, true),
  (currval('questions_id_seq'), '更新する', NULL, false),
  (currval('questions_id_seq'), '削除する', NULL, false),
  (currval('questions_id_seq'), '操作する', NULL, false);

-- 中級-32: orientation
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 32, 'choice', 1, 1,
   'orientation',
   'All new employees must attend the orientation session on their first day.（すべての新入社員は初日に新人研修に参加しなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '新人研修', NULL, true),
  (currval('questions_id_seq'), '面接',     NULL, false),
  (currval('questions_id_seq'), '評価',     NULL, false),
  (currval('questions_id_seq'), '試験',     NULL, false);

-- 中級-33: renowned
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 33, 'choice', 1, 1,
   'renowned',
   'The restaurant is renowned for its exceptional service and cuisine.（そのレストランは卓越したサービスと料理で著名です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '著名な',     NULL, true),
  (currval('questions_id_seq'), '新進気鋭の', NULL, false),
  (currval('questions_id_seq'), '優秀な',     NULL, false),
  (currval('questions_id_seq'), '経験豊富な', NULL, false);

-- 中級-34: appropriate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 34, 'choice', 1, 1,
   'appropriate',
   'Please make sure your attire is appropriate for the business meeting.（ビジネス会議にふさわしい服装をしてください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '適切な',   NULL, true),
  (currval('questions_id_seq'), '革新的な', NULL, false),
  (currval('questions_id_seq'), '詳細な',   NULL, false),
  (currval('questions_id_seq'), '効率的な', NULL, false);

-- 中級-35: ingredient
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 35, 'choice', 1, 1,
   'ingredient',
   'The restaurant uses only fresh, locally sourced ingredients.（そのレストランは地元で調達した新鮮な材料のみを使用しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '材料',   NULL, true),
  (currval('questions_id_seq'), '製品',   NULL, false),
  (currval('questions_id_seq'), '栄養素', NULL, false),
  (currval('questions_id_seq'), '調味料', NULL, false);

-- 中級-36: storage
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 36, 'choice', 1, 1,
   'storage',
   'The company needs additional storage space for its growing inventory.（その会社は増加する在庫のための追加保管スペースが必要です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '保管',   NULL, true),
  (currval('questions_id_seq'), '配送',   NULL, false),
  (currval('questions_id_seq'), '陳列',   NULL, false),
  (currval('questions_id_seq'), '処分',   NULL, false);

-- 中級-37: beverage
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 37, 'choice', 1, 1,
   'beverage',
   'Complimentary beverages will be served at the welcome reception.（ウェルカムレセプションでは無料の飲み物が提供されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '飲み物', NULL, true),
  (currval('questions_id_seq'), '食事',   NULL, false),
  (currval('questions_id_seq'), '軽食',   NULL, false),
  (currval('questions_id_seq'), 'デザート', NULL, false);

-- 中級-38: prior
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 38, 'choice', 1, 1,
   'prior',
   'Prior approval from the department head is required before placing orders.（注文をする前に部門長の事前承認が必要です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '事前の',   NULL, true),
  (currval('questions_id_seq'), '追加の',   NULL, false),
  (currval('questions_id_seq'), '必要な',   NULL, false),
  (currval('questions_id_seq'), '正式な',   NULL, false);

-- 中級-39: merger
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 39, 'choice', 1, 1,
   'merger',
   'The merger between the two companies was announced last week.（2社間の合併が先週発表されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '合併',   NULL, true),
  (currval('questions_id_seq'), '買収',   NULL, false),
  (currval('questions_id_seq'), '提携',   NULL, false),
  (currval('questions_id_seq'), '分割',   NULL, false);

-- 中級-40: inn
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 40, 'choice', 1, 1,
   'inn',
   'The business travelers stayed at a cozy inn near the conference center.（出張者は会議センターの近くの居心地の良い旅館に泊まりました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '旅館',   NULL, true),
  (currval('questions_id_seq'), 'ロッジ', NULL, false),
  (currval('questions_id_seq'), '別荘',   NULL, false),
  (currval('questions_id_seq'), '寮',     NULL, false);

-- 中級-41: equip
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 41, 'choice', 1, 1,
   'equip',
   'The new office is equipped with the latest technology and facilities.（新しいオフィスには最新技術と設備が備わっています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '備える',   NULL, true),
  (currval('questions_id_seq'), '設置する', NULL, false),
  (currval('questions_id_seq'), '購入する', NULL, false),
  (currval('questions_id_seq'), '管理する', NULL, false);

-- 中級-42: summary
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 42, 'choice', 1, 1,
   'summary',
   'Please provide a summary of the meeting by tomorrow morning.（明朝までに会議の要約をご提供ください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '要約',   NULL, true),
  (currval('questions_id_seq'), '報告書', NULL, false),
  (currval('questions_id_seq'), '議事録', NULL, false),
  (currval('questions_id_seq'), '提案書', NULL, false);

-- 中級-43: lease
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 43, 'choice', 1, 1,
   'lease',
   'The company has signed a five-year lease for the new office building.（その会社は新しいオフィスビルの5年間の賃貸契約を締結しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '賃貸契約', NULL, true),
  (currval('questions_id_seq'), '購入契約', NULL, false),
  (currval('questions_id_seq'), '売買契約', NULL, false),
  (currval('questions_id_seq'), '管理契約', NULL, false);

-- 中級-44: defective
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 44, 'choice', 1, 1,
   'defective',
   'Customers can return any defective products for a full refund.（欠陥のある製品はいつでも全額返金で返品できます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '欠陥のある', NULL, true),
  (currval('questions_id_seq'), '古い',       NULL, false),
  (currval('questions_id_seq'), '破損した',   NULL, false),
  (currval('questions_id_seq'), '期限切れの', NULL, false);

-- 中級-45: quarterly
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 45, 'choice', 1, 1,
   'quarterly',
   'The quarterly sales report will be presented to the board next week.（四半期ごとの売上報告書が来週取締役会に提出されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '四半期ごとの', NULL, true),
  (currval('questions_id_seq'), '月次の',       NULL, false),
  (currval('questions_id_seq'), '年次の',       NULL, false),
  (currval('questions_id_seq'), '毎週の',       NULL, false);

-- 中級-46: extended
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 46, 'choice', 1, 1,
   'extended',
   'The store hours have been extended during the holiday season.（ホリデーシーズン中、営業時間が延長されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '延長された', NULL, true),
  (currval('questions_id_seq'), '短縮された', NULL, false),
  (currval('questions_id_seq'), '変更された', NULL, false),
  (currval('questions_id_seq'), '固定された', NULL, false);

-- 中級-47: architect
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 47, 'choice', 1, 1,
   'architect',
   'The architect presented the design plans for the new headquarters.（建築家は新しい本社の設計図を提示しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '建築家',   NULL, true),
  (currval('questions_id_seq'), 'デザイナー', NULL, false),
  (currval('questions_id_seq'), '施工業者', NULL, false),
  (currval('questions_id_seq'), '測量士',   NULL, false);

-- 中級-48: grocery
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 48, 'choice', 1, 1,
   'grocery',
   'The company operates a chain of grocery stores across the region.（その会社は地域全体で食料品チェーンを運営しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '食料品', NULL, true),
  (currval('questions_id_seq'), '日用品', NULL, false),
  (currval('questions_id_seq'), '衣料品', NULL, false),
  (currval('questions_id_seq'), '薬品',   NULL, false);

-- 中級-49: sculpture
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 49, 'choice', 1, 1,
   'sculpture',
   'A large sculpture created by a local artist is displayed in the lobby.（地元のアーティストが制作した大きな彫刻がロビーに展示されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '彫刻',   NULL, true),
  (currval('questions_id_seq'), '絵画',   NULL, false),
  (currval('questions_id_seq'), '写真',   NULL, false),
  (currval('questions_id_seq'), '工芸品', NULL, false);

-- 中級-50: itinerary
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 50, 'choice', 1, 1,
   'itinerary',
   'Please send me your travel itinerary before the business trip.（出張前に旅程をお送りください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '旅程',   NULL, true),
  (currval('questions_id_seq'), '予算',   NULL, false),
  (currval('questions_id_seq'), '費用',   NULL, false),
  (currval('questions_id_seq'), '日程',   NULL, false);

-- TOEIC L&R -単語集- 中級 Q51-Q100

-- 中級-51: directory
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 51, 'choice', 1, 1,
   'directory',
   'Please check the staff directory to find the correct contact information.（正しい連絡先情報を見つけるためにスタッフ名簿を確認してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '名簿',   NULL, true),
  (currval('questions_id_seq'), '報告書', NULL, false),
  (currval('questions_id_seq'), '議事録', NULL, false),
  (currval('questions_id_seq'), '案内図', NULL, false);

-- 中級-52: expire
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 52, 'choice', 1, 1,
   'expire',
   'Your subscription will expire at the end of this month.（あなたのサブスクリプションは今月末に期限切れになります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '期限切れになる', NULL, true),
  (currval('questions_id_seq'), '更新される',     NULL, false),
  (currval('questions_id_seq'), '開始される',     NULL, false),
  (currval('questions_id_seq'), '延長される',     NULL, false);

-- 中級-53: vendor
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 53, 'choice', 1, 1,
   'vendor',
   'We are looking for a reliable vendor to supply office equipment.（オフィス機器を供給する信頼できる業者を探しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '業者',   NULL, true),
  (currval('questions_id_seq'), '顧客',   NULL, false),
  (currval('questions_id_seq'), '株主',   NULL, false),
  (currval('questions_id_seq'), '担当者', NULL, false);

-- 中級-54: colleague
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 54, 'choice', 1, 1,
   'colleague',
   'She discussed the project proposal with her colleagues over lunch.（彼女は昼食時に同僚たちとプロジェクトの提案について話し合いました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '同僚',   NULL, true),
  (currval('questions_id_seq'), '上司',   NULL, false),
  (currval('questions_id_seq'), '顧客',   NULL, false),
  (currval('questions_id_seq'), '取引先', NULL, false);

-- 中級-55: patron
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 55, 'choice', 1, 1,
   'patron',
   'The restaurant offers a loyalty discount to its regular patrons.（そのレストランは常連客に常連割引を提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '常連客', NULL, true),
  (currval('questions_id_seq'), '新規客', NULL, false),
  (currval('questions_id_seq'), '株主',   NULL, false),
  (currval('questions_id_seq'), '取引先', NULL, false);

-- 中級-56: relocate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 56, 'choice', 1, 1,
   'relocate',
   'The company plans to relocate its headquarters to the city center.（その会社は本社を市の中心部に移転する計画です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '移転する', NULL, true),
  (currval('questions_id_seq'), '拡大する', NULL, false),
  (currval('questions_id_seq'), '統合する', NULL, false),
  (currval('questions_id_seq'), '閉鎖する', NULL, false);

-- 中級-57: tourism
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 57, 'choice', 1, 1,
   'tourism',
   'The local government is investing in tourism to boost the economy.（地方政府は経済を活性化するために観光に投資しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '観光',   NULL, true),
  (currval('questions_id_seq'), '農業',   NULL, false),
  (currval('questions_id_seq'), '貿易',   NULL, false),
  (currval('questions_id_seq'), '製造業', NULL, false);

-- 中級-58: remodel
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 58, 'choice', 1, 1,
   'remodel',
   'The store will be closed next week while it is being remodeled.（店舗は改築工事中のため来週閉店します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '改築する', NULL, true),
  (currval('questions_id_seq'), '建設する', NULL, false),
  (currval('questions_id_seq'), '移転する', NULL, false),
  (currval('questions_id_seq'), '閉鎖する', NULL, false);

-- 中級-59: consumer
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 59, 'choice', 1, 1,
   'consumer',
   'The company conducts research to better understand consumer behavior.（その会社は消費者行動をよりよく理解するための調査を行っています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '消費者', NULL, true),
  (currval('questions_id_seq'), '生産者', NULL, false),
  (currval('questions_id_seq'), '販売者', NULL, false),
  (currval('questions_id_seq'), '投資家', NULL, false);

-- 中級-60: inspect
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 60, 'choice', 1, 1,
   'inspect',
   'A safety officer will inspect the facility every three months.（安全担当者が3ヶ月ごとに施設を検査します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '検査する', NULL, true),
  (currval('questions_id_seq'), '修理する', NULL, false),
  (currval('questions_id_seq'), '管理する', NULL, false),
  (currval('questions_id_seq'), '設置する', NULL, false);

-- 中級-61: numerous
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 61, 'choice', 1, 1,
   'numerous',
   'The company has received numerous awards for its innovative products.（その会社は革新的な製品で多数の賞を受賞しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '多数の',   NULL, true),
  (currval('questions_id_seq'), '少数の',   NULL, false),
  (currval('questions_id_seq'), '特定の',   NULL, false),
  (currval('questions_id_seq'), '重要な',   NULL, false);

-- 中級-62: payroll
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 62, 'choice', 1, 1,
   'payroll',
   'The HR department manages the payroll for all 500 employees.（人事部は500名全従業員の給与管理を担当しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '給与管理', NULL, true),
  (currval('questions_id_seq'), '人事評価', NULL, false),
  (currval('questions_id_seq'), '福利厚生', NULL, false),
  (currval('questions_id_seq'), '採用活動', NULL, false);

-- 中級-63: qualified
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 63, 'choice', 1, 1,
   'qualified',
   'We are looking for a qualified candidate to fill the senior manager position.（シニアマネージャーのポジションに資格のある候補者を探しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '資格のある', NULL, true),
  (currval('questions_id_seq'), '経験豊富な', NULL, false),
  (currval('questions_id_seq'), '意欲的な',   NULL, false),
  (currval('questions_id_seq'), '優秀な',     NULL, false);

-- 中級-64: appliance
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 64, 'choice', 1, 1,
   'appliance',
   'The store sells a wide range of kitchen appliances at competitive prices.（その店舗は競争力のある価格で幅広いキッチン家電を販売しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '家電',   NULL, true),
  (currval('questions_id_seq'), '家具',   NULL, false),
  (currval('questions_id_seq'), '雑貨',   NULL, false),
  (currval('questions_id_seq'), '工具',   NULL, false);

-- 中級-65: competitive
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 65, 'choice', 1, 1,
   'competitive',
   'We offer competitive salaries and excellent benefits to our employees.（私たちは従業員に競争力のある給与と優れた福利厚生を提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '競争力のある', NULL, true),
  (currval('questions_id_seq'), '固定の',       NULL, false),
  (currval('questions_id_seq'), '高い',         NULL, false),
  (currval('questions_id_seq'), '標準的な',     NULL, false);

-- 中級-66: specialize
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 66, 'choice', 1, 1,
   'specialize',
   'Our firm specializes in providing legal services to small businesses.（弊社は中小企業に法律サービスを提供することを専門としています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '専門にする', NULL, true),
  (currval('questions_id_seq'), '拡大する',   NULL, false),
  (currval('questions_id_seq'), '提供する',   NULL, false),
  (currval('questions_id_seq'), '協力する',   NULL, false);

-- 中級-67: questionnaire
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 67, 'choice', 1, 1,
   'questionnaire',
   'Please fill out the questionnaire to help us improve our services.（サービス向上のためにアンケートにご記入ください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'アンケート', NULL, true),
  (currval('questions_id_seq'), '申請書',     NULL, false),
  (currval('questions_id_seq'), '報告書',     NULL, false),
  (currval('questions_id_seq'), '契約書',     NULL, false);

-- 中級-68: approximately
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 68, 'choice', 1, 1,
   'approximately',
   'The renovation project will take approximately three months to complete.（改装プロジェクトはおよそ3ヶ月で完了する予定です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'およそ',   NULL, true),
  (currval('questions_id_seq'), '正確に',   NULL, false),
  (currval('questions_id_seq'), '少なくとも', NULL, false),
  (currval('questions_id_seq'), '最大で',   NULL, false);

-- 中級-69: contribute
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 69, 'choice', 1, 1,
   'contribute',
   'All employees are encouraged to contribute ideas for improving efficiency.（すべての従業員は効率改善のアイデアを貢献するよう奨励されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '貢献する', NULL, true),
  (currval('questions_id_seq'), '提案する', NULL, false),
  (currval('questions_id_seq'), '要求する', NULL, false),
  (currval('questions_id_seq'), '評価する', NULL, false);

-- 中級-70: productivity
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 70, 'choice', 1, 1,
   'productivity',
   'The new software has significantly increased the team''s productivity.（新しいソフトウェアはチームの生産性を大幅に向上させました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '生産性', NULL, true),
  (currval('questions_id_seq'), '効率性', NULL, false),
  (currval('questions_id_seq'), '収益性', NULL, false),
  (currval('questions_id_seq'), '競争力', NULL, false);

-- 中級-71: promptly
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 71, 'choice', 1, 1,
   'promptly',
   'Please respond to customer inquiries promptly to ensure satisfaction.（顧客満足を確保するために顧客のお問い合わせに迅速に対応してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '迅速に',   NULL, true),
  (currval('questions_id_seq'), '丁寧に',   NULL, false),
  (currval('questions_id_seq'), '慎重に',   NULL, false),
  (currval('questions_id_seq'), '定期的に', NULL, false);

-- 中級-72: strategy
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 72, 'choice', 1, 1,
   'strategy',
   'The management team discussed a new marketing strategy for next year.（経営チームは来年の新しいマーケティング戦略について話し合いました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '戦略',   NULL, true),
  (currval('questions_id_seq'), '方針',   NULL, false),
  (currval('questions_id_seq'), '目標',   NULL, false),
  (currval('questions_id_seq'), '計画',   NULL, false);

-- 中級-73: dedicated
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 73, 'choice', 1, 1,
   'dedicated',
   'The award was given to the most dedicated employee of the year.（その賞は今年最も献身的な従業員に授与されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '献身的な', NULL, true),
  (currval('questions_id_seq'), '優秀な',   NULL, false),
  (currval('questions_id_seq'), '経験豊富な', NULL, false),
  (currval('questions_id_seq'), '新しい',   NULL, false);

-- 中級-74: exceptional
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 74, 'choice', 1, 1,
   'exceptional',
   'The hotel is known for providing exceptional service to its guests.（そのホテルはゲストへの卓越したサービスを提供することで知られています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '卓越した', NULL, true),
  (currval('questions_id_seq'), '標準的な', NULL, false),
  (currval('questions_id_seq'), '満足な',   NULL, false),
  (currval('questions_id_seq'), '特別な',   NULL, false);

-- 中級-75: luncheon
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 75, 'choice', 1, 1,
   'luncheon',
   'The annual awards luncheon will be held at the downtown hotel.（年次表彰昼食会は市内中心部のホテルで開催されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '昼食会',   NULL, true),
  (currval('questions_id_seq'), '朝食会',   NULL, false),
  (currval('questions_id_seq'), '夕食会',   NULL, false),
  (currval('questions_id_seq'), '懇親会',   NULL, false);

-- 中級-76: exceed
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 76, 'choice', 1, 1,
   'exceed',
   'The sales team managed to exceed its quarterly target by 15 percent.（営業チームは四半期目標を15%上回ることができました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '超える',   NULL, true),
  (currval('questions_id_seq'), '達成する', NULL, false),
  (currval('questions_id_seq'), '下回る',   NULL, false),
  (currval('questions_id_seq'), '維持する', NULL, false);

-- 中級-77: multiple
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 77, 'choice', 1, 1,
   'multiple',
   'The project involves multiple teams from different departments.（そのプロジェクトは異なる部門の複数のチームが関わっています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '複数の',   NULL, true),
  (currval('questions_id_seq'), '少数の',   NULL, false),
  (currval('questions_id_seq'), '単一の',   NULL, false),
  (currval('questions_id_seq'), '特定の',   NULL, false);

-- 中級-78: specify
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 78, 'choice', 1, 1,
   'specify',
   'Please specify the delivery date when placing your order.（注文時に配達日を指定してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '指定する', NULL, true),
  (currval('questions_id_seq'), '確認する', NULL, false),
  (currval('questions_id_seq'), '変更する', NULL, false),
  (currval('questions_id_seq'), '記入する', NULL, false);

-- 中級-79: venue
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 79, 'choice', 1, 1,
   'venue',
   'We are still searching for the ideal venue for the annual conference.（年次会議の理想的な会場をまだ探しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '会場',   NULL, true),
  (currval('questions_id_seq'), '日程',   NULL, false),
  (currval('questions_id_seq'), '主催者', NULL, false),
  (currval('questions_id_seq'), '費用',   NULL, false);

-- 中級-80: household
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 80, 'choice', 1, 1,
   'household',
   'The survey targeted households with an annual income over $50,000.（調査は年収5万ドル以上の家庭を対象にしていました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '家庭',   NULL, true),
  (currval('questions_id_seq'), '地域',   NULL, false),
  (currval('questions_id_seq'), '企業',   NULL, false),
  (currval('questions_id_seq'), '個人',   NULL, false);

-- 中級-81: evaluate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 81, 'choice', 1, 1,
   'evaluate',
   'The committee will evaluate all applications before the final decision.（委員会は最終決定の前にすべての申請を評価します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '評価する', NULL, true),
  (currval('questions_id_seq'), '承認する', NULL, false),
  (currval('questions_id_seq'), '審査する', NULL, false),
  (currval('questions_id_seq'), '収集する', NULL, false);

-- 中級-82: negotiate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 82, 'choice', 1, 1,
   'negotiate',
   'The purchasing manager will negotiate the contract terms with the supplier.（購買マネージャーはサプライヤーと契約条件を交渉します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '交渉する', NULL, true),
  (currval('questions_id_seq'), '締結する', NULL, false),
  (currval('questions_id_seq'), '確認する', NULL, false),
  (currval('questions_id_seq'), '変更する', NULL, false);

-- 中級-83: booking
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 83, 'choice', 1, 1,
   'booking',
   'Online bookings for the event can be made through our website.（イベントのオンライン予約は当ウェブサイトからできます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '予約',   NULL, true),
  (currval('questions_id_seq'), '申込み', NULL, false),
  (currval('questions_id_seq'), '登録',   NULL, false),
  (currval('questions_id_seq'), '確認',   NULL, false);

-- 中級-84: circulation
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 84, 'choice', 1, 1,
   'circulation',
   'The magazine has a weekly circulation of over one million copies.（その雑誌は週間発行部数が100万部を超えています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '発行部数', NULL, true),
  (currval('questions_id_seq'), '購読者数', NULL, false),
  (currval('questions_id_seq'), '広告収入', NULL, false),
  (currval('questions_id_seq'), '販売数',   NULL, false);

-- 中級-85: completion
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 85, 'choice', 1, 1,
   'completion',
   'Upon completion of the training, participants will receive a certificate.（研修修了後、参加者には証明書が授与されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '完了',   NULL, true),
  (currval('questions_id_seq'), '開始',   NULL, false),
  (currval('questions_id_seq'), '延期',   NULL, false),
  (currval('questions_id_seq'), '中断',   NULL, false);

-- 中級-86: relevant
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 86, 'choice', 1, 1,
   'relevant',
   'Please attach all relevant documents to your application.（申請書にすべての関連書類を添付してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '関連した', NULL, true),
  (currval('questions_id_seq'), '重要な',   NULL, false),
  (currval('questions_id_seq'), '最新の',   NULL, false),
  (currval('questions_id_seq'), '必要な',   NULL, false);

-- 中級-87: through
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 87, 'choice', 1, 1,
   'through',
   'You can contact us through our website or by phone.（ウェブサイトまたは電話でご連絡いただけます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '～を通じて', NULL, true),
  (currval('questions_id_seq'), '～に反して', NULL, false),
  (currval('questions_id_seq'), '～を除いて', NULL, false),
  (currval('questions_id_seq'), '～の代わりに', NULL, false);

-- 中級-88: via
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 88, 'choice', 1, 1,
   'via',
   'The shipment will arrive via air freight by Friday.（その荷物は金曜日までに航空便で届きます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '～経由で', NULL, true),
  (currval('questions_id_seq'), '～に向けて', NULL, false),
  (currval('questions_id_seq'), '～に反して', NULL, false),
  (currval('questions_id_seq'), '～なしで',   NULL, false);

-- 中級-89: workspace
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 89, 'choice', 1, 1,
   'workspace',
   'The new office design provides each employee with a comfortable workspace.（新しいオフィスデザインにより、各従業員に快適な作業スペースが提供されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '作業スペース', NULL, true),
  (currval('questions_id_seq'), '会議室',       NULL, false),
  (currval('questions_id_seq'), '休憩室',       NULL, false),
  (currval('questions_id_seq'), '倉庫',         NULL, false);

-- 中級-90: accommodations
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 90, 'choice', 1, 1,
   'accommodations',
   'The conference package includes accommodations at a nearby hotel.（会議パッケージには近隣ホテルの宿泊施設が含まれています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '宿泊施設', NULL, true),
  (currval('questions_id_seq'), '会議施設', NULL, false),
  (currval('questions_id_seq'), '交通費',   NULL, false),
  (currval('questions_id_seq'), '食事',     NULL, false);

-- 中級-91: flexible
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 91, 'choice', 1, 1,
   'flexible',
   'The company offers flexible working hours to support work-life balance.（その会社はワークライフバランスを支援するために柔軟な勤務時間を提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '柔軟な',   NULL, true),
  (currval('questions_id_seq'), '固定の',   NULL, false),
  (currval('questions_id_seq'), '延長された', NULL, false),
  (currval('questions_id_seq'), '短縮された', NULL, false);

-- 中級-92: predict
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 92, 'choice', 1, 1,
   'predict',
   'Analysts predict that the market will grow significantly next year.（アナリストは来年市場が大幅に成長すると予測しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '予測する', NULL, true),
  (currval('questions_id_seq'), '報告する', NULL, false),
  (currval('questions_id_seq'), '分析する', NULL, false),
  (currval('questions_id_seq'), '確認する', NULL, false);

-- 中級-93: preference
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 93, 'choice', 1, 1,
   'preference',
   'We tailor our services to meet each customer''s individual preferences.（私たちは各顧客の個々の好みに合わせてサービスをカスタマイズしています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '好み',   NULL, true),
  (currval('questions_id_seq'), '要求',   NULL, false),
  (currval('questions_id_seq'), '期待',   NULL, false),
  (currval('questions_id_seq'), '意見',   NULL, false);

-- 中級-94: substantial
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 94, 'choice', 1, 1,
   'substantial',
   'The company has made a substantial investment in renewable energy.（その会社は再生可能エネルギーに相当な投資をしています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '相当な',   NULL, true),
  (currval('questions_id_seq'), '最小限の', NULL, false),
  (currval('questions_id_seq'), '一時的な', NULL, false),
  (currval('questions_id_seq'), '追加の',   NULL, false);

-- 中級-95: accessible
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 95, 'choice', 1, 1,
   'accessible',
   'The building has been designed to be accessible to people with disabilities.（そのビルは障がいのある人がアクセスしやすいよう設計されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'アクセスしやすい', NULL, true),
  (currval('questions_id_seq'), '利用できない',     NULL, false),
  (currval('questions_id_seq'), '快適な',           NULL, false),
  (currval('questions_id_seq'), '安全な',           NULL, false);

-- 中級-96: coverage
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 96, 'choice', 1, 1,
   'coverage',
   'The insurance plan provides full coverage for medical and dental expenses.（その保険プランは医療費と歯科費用を全額補償します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '補償範囲', NULL, true),
  (currval('questions_id_seq'), '保険料',   NULL, false),
  (currval('questions_id_seq'), '給付金',   NULL, false),
  (currval('questions_id_seq'), '免責額',   NULL, false);

-- 中級-97: generate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 97, 'choice', 1, 1,
   'generate',
   'The new marketing campaign is expected to generate significant revenue.（新しいマーケティングキャンペーンは相当な収益を生み出すことが期待されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '生み出す', NULL, true),
  (currval('questions_id_seq'), '削減する', NULL, false),
  (currval('questions_id_seq'), '管理する', NULL, false),
  (currval('questions_id_seq'), '報告する', NULL, false);

-- 中級-98: refreshment
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 98, 'choice', 1, 1,
   'refreshment',
   'Light refreshments will be served during the morning break.（午前の休憩中に軽食が提供されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '軽食',   NULL, true),
  (currval('questions_id_seq'), '食事',   NULL, false),
  (currval('questions_id_seq'), '飲み物', NULL, false),
  (currval('questions_id_seq'), 'デザート', NULL, false);

-- 中級-99: reliable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 99, 'choice', 1, 1,
   'reliable',
   'We need a reliable delivery service that can meet our tight deadlines.（私たちは厳しい締め切りに対応できる信頼できる配送サービスが必要です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '信頼できる', NULL, true),
  (currval('questions_id_seq'), '迅速な',     NULL, false),
  (currval('questions_id_seq'), '低コストの', NULL, false),
  (currval('questions_id_seq'), '柔軟な',     NULL, false);

-- 中級-100: revenue
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 100, 'choice', 1, 1,
   'revenue',
   'The company reported record revenue in the third quarter of this year.（その会社は今年第3四半期に過去最高の収益を報告しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '収益',   NULL, true),
  (currval('questions_id_seq'), '利益',   NULL, false),
  (currval('questions_id_seq'), '売上高', NULL, false),
  (currval('questions_id_seq'), '費用',   NULL, false);

-- TOEIC L&R -単語集- 中級 Q101-Q150

-- 中級-101: fund-raising
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 101, 'choice', 1, 1,
   'fund-raising',
   'The charity organized a fund-raising dinner to support local schools.（その慈善団体は地元の学校を支援するために資金調達ディナーを開催しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '資金調達', NULL, true),
  (currval('questions_id_seq'), '寄付活動', NULL, false),
  (currval('questions_id_seq'), '募集活動', NULL, false),
  (currval('questions_id_seq'), '支援活動', NULL, false);

-- 中級-102: accomplished
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 102, 'choice', 1, 1,
   'accomplished',
   'She is an accomplished engineer with over 15 years of experience.（彼女は15年以上の経験を持つ熟練したエンジニアです。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '熟練した',   NULL, true),
  (currval('questions_id_seq'), '意欲的な',   NULL, false),
  (currval('questions_id_seq'), '新進気鋭の', NULL, false),
  (currval('questions_id_seq'), '著名な',     NULL, false);

-- 中級-103: acquire
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 103, 'choice', 1, 1,
   'acquire',
   'The company plans to acquire a smaller firm to expand its market share.（その会社は市場シェアを拡大するために小規模な企業を取得する計画です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '取得する', NULL, true),
  (currval('questions_id_seq'), '合併する', NULL, false),
  (currval('questions_id_seq'), '設立する', NULL, false),
  (currval('questions_id_seq'), '撤退する', NULL, false);

-- 中級-104: accordingly
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 104, 'choice', 1, 1,
   'accordingly',
   'The schedule has changed, so please adjust your plans accordingly.（スケジュールが変更されたため、それに応じて計画を調整してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'それに応じて', NULL, true),
  (currval('questions_id_seq'), '即座に',       NULL, false),
  (currval('questions_id_seq'), '最終的に',     NULL, false),
  (currval('questions_id_seq'), '事前に',       NULL, false);

-- 中級-105: critic
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 105, 'choice', 1, 1,
   'critic',
   'The new restaurant received excellent reviews from food critics.（その新しいレストランは食評家から優れた評価を受けました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '批評家', NULL, true),
  (currval('questions_id_seq'), '顧客',   NULL, false),
  (currval('questions_id_seq'), '調査員', NULL, false),
  (currval('questions_id_seq'), '記者',   NULL, false);

-- 中級-106: highlight
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 106, 'choice', 1, 1,
   'highlight',
   'The presenter highlighted the key benefits of the new product.（発表者は新製品の主要な利点を強調しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '強調する', NULL, true),
  (currval('questions_id_seq'), '説明する', NULL, false),
  (currval('questions_id_seq'), '報告する', NULL, false),
  (currval('questions_id_seq'), '示す',     NULL, false);

-- 中級-107: profile
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 107, 'choice', 1, 1,
   'profile',
   'Please update your professional profile before the networking event.（ネットワーキングイベントの前に職務プロフィールを更新してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'プロフィール', NULL, true),
  (currval('questions_id_seq'), '履歴書',       NULL, false),
  (currval('questions_id_seq'), '名刺',         NULL, false),
  (currval('questions_id_seq'), '資格証明',     NULL, false);

-- 中級-108: motivate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 108, 'choice', 1, 1,
   'motivate',
   'Good managers know how to motivate their teams to achieve goals.（優れたマネージャーはチームの意欲を引き出して目標を達成させる方法を知っています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '意欲を引き出す', NULL, true),
  (currval('questions_id_seq'), '指導する',       NULL, false),
  (currval('questions_id_seq'), '評価する',       NULL, false),
  (currval('questions_id_seq'), '管理する',       NULL, false);

-- 中級-109: subscription
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 109, 'choice', 1, 1,
   'subscription',
   'A monthly subscription to the service costs $15 per user.（そのサービスの月額定期購読料は1ユーザーあたり15ドルです。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '定期購読', NULL, true),
  (currval('questions_id_seq'), '会員資格', NULL, false),
  (currval('questions_id_seq'), '年会費',   NULL, false),
  (currval('questions_id_seq'), '利用料金', NULL, false);

-- 中級-110: encounter
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 110, 'choice', 1, 1,
   'encounter',
   'Travelers may encounter delays due to the ongoing construction work.（旅行者は進行中の工事により遅延に遭遇することがあります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '遭遇する', NULL, true),
  (currval('questions_id_seq'), '避ける',   NULL, false),
  (currval('questions_id_seq'), '報告する', NULL, false),
  (currval('questions_id_seq'), '解決する', NULL, false);

-- 中級-111: luxury
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 111, 'choice', 1, 1,
   'luxury',
   'The hotel offers luxury suites with stunning views of the ocean.（そのホテルは海の素晴らしい景色を望む高級スイートを提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '高級',   NULL, true),
  (currval('questions_id_seq'), '標準',   NULL, false),
  (currval('questions_id_seq'), '経済的', NULL, false),
  (currval('questions_id_seq'), '限定',   NULL, false);

-- 中級-112: prohibit
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 112, 'choice', 1, 1,
   'prohibit',
   'Smoking is strictly prohibited in all areas of the building.（建物内のすべてのエリアで喫煙は厳しく禁止されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '禁止する', NULL, true),
  (currval('questions_id_seq'), '制限する', NULL, false),
  (currval('questions_id_seq'), '許可する', NULL, false),
  (currval('questions_id_seq'), '奨励する', NULL, false);

-- 中級-113: resolve
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 113, 'choice', 1, 1,
   'resolve',
   'The customer service team worked quickly to resolve the complaint.（カスタマーサービスチームはクレームを解決するために迅速に取り組みました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '解決する', NULL, true),
  (currval('questions_id_seq'), '回避する', NULL, false),
  (currval('questions_id_seq'), '報告する', NULL, false),
  (currval('questions_id_seq'), '調査する', NULL, false);

-- 中級-114: restore
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 114, 'choice', 1, 1,
   'restore',
   'The IT team worked overnight to restore the system after the outage.（ITチームは障害後にシステムを復元するために徹夜で作業しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '復元する', NULL, true),
  (currval('questions_id_seq'), '修理する', NULL, false),
  (currval('questions_id_seq'), '更新する', NULL, false),
  (currval('questions_id_seq'), '設置する', NULL, false);

-- 中級-115: surroundings
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 115, 'choice', 1, 1,
   'surroundings',
   'The resort is set in beautiful natural surroundings near the mountains.（そのリゾートは山の近くの美しい自然の周辺環境に位置しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '周辺環境', NULL, true),
  (currval('questions_id_seq'), '施設',     NULL, false),
  (currval('questions_id_seq'), '景観',     NULL, false),
  (currval('questions_id_seq'), '立地',     NULL, false);

-- 中級-116: alert
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 116, 'choice', 1, 1,
   'alert',
   'Please alert the manager immediately if you notice any security issues.（セキュリティの問題に気づいたらすぐにマネージャーに警告してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '警告する', NULL, true),
  (currval('questions_id_seq'), '報告する', NULL, false),
  (currval('questions_id_seq'), '確認する', NULL, false),
  (currval('questions_id_seq'), '記録する', NULL, false);

-- 中級-117: anticipated
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 117, 'choice', 1, 1,
   'anticipated',
   'The new product launch was highly anticipated by industry experts.（新製品の発売は業界の専門家から非常に期待されていました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '期待された', NULL, true),
  (currval('questions_id_seq'), '驚かれた',   NULL, false),
  (currval('questions_id_seq'), '批判された', NULL, false),
  (currval('questions_id_seq'), '延期された', NULL, false);

-- 中級-118: consistently
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 118, 'choice', 1, 1,
   'consistently',
   'The team has consistently delivered high-quality results over the years.（チームは長年にわたって一貫して高品質な成果を出し続けています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '一貫して',   NULL, true),
  (currval('questions_id_seq'), '時々',       NULL, false),
  (currval('questions_id_seq'), '最近',       NULL, false),
  (currval('questions_id_seq'), 'かろうじて', NULL, false);

-- 中級-119: dairy
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 119, 'choice', 1, 1,
   'dairy',
   'The supermarket has expanded its range of organic dairy products.（そのスーパーマーケットはオーガニック乳製品の品揃えを拡大しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '乳製品',   NULL, true),
  (currval('questions_id_seq'), '農産物',   NULL, false),
  (currval('questions_id_seq'), '冷凍食品', NULL, false),
  (currval('questions_id_seq'), '輸入品',   NULL, false);

-- 中級-120: phase
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 120, 'choice', 1, 1,
   'phase',
   'The construction project will be completed in three phases over two years.（建設プロジェクトは2年間で3つの段階に分けて完了します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '段階',   NULL, true),
  (currval('questions_id_seq'), '工程',   NULL, false),
  (currval('questions_id_seq'), '期間',   NULL, false),
  (currval('questions_id_seq'), '計画',   NULL, false);

-- 中級-121: manuscript
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 121, 'choice', 1, 1,
   'manuscript',
   'The author submitted the final manuscript to the publisher last week.（著者は先週出版社に最終原稿を提出しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '原稿',   NULL, true),
  (currval('questions_id_seq'), '報告書', NULL, false),
  (currval('questions_id_seq'), '企画書', NULL, false),
  (currval('questions_id_seq'), '要約',   NULL, false);

-- 中級-122: overtime
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 122, 'choice', 1, 1,
   'overtime',
   'Employees who work overtime will receive additional compensation.（残業した従業員は追加の報酬を受け取ります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '残業',   NULL, true),
  (currval('questions_id_seq'), '休暇',   NULL, false),
  (currval('questions_id_seq'), '出張',   NULL, false),
  (currval('questions_id_seq'), '研修',   NULL, false);

-- 中級-123: premises
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 123, 'choice', 1, 1,
   'premises',
   'Visitors must sign in at the reception before entering the premises.（訪問者は敷地内に入る前に受付でサインインしなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '敷地',   NULL, true),
  (currval('questions_id_seq'), '建物',   NULL, false),
  (currval('questions_id_seq'), '事務所', NULL, false),
  (currval('questions_id_seq'), '施設',   NULL, false);

-- 中級-124: utility
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 124, 'choice', 1, 1,
   'utility',
   'The monthly rent includes all utility bills such as water and electricity.（月額家賃には水道代と電気代などの公共料金がすべて含まれています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '公共料金', NULL, true),
  (currval('questions_id_seq'), '管理費',   NULL, false),
  (currval('questions_id_seq'), '保証金',   NULL, false),
  (currval('questions_id_seq'), '修繕費',   NULL, false);

-- 中級-125: laundry
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 125, 'choice', 1, 1,
   'laundry',
   'The hotel offers a same-day laundry service for business travelers.（そのホテルはビジネス旅行者向けに当日洗濯サービスを提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '洗濯',   NULL, true),
  (currval('questions_id_seq'), '清掃',   NULL, false),
  (currval('questions_id_seq'), '修繕',   NULL, false),
  (currval('questions_id_seq'), '配送',   NULL, false);

-- 中級-126: enthusiastic
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 126, 'choice', 1, 1,
   'enthusiastic',
   'The staff were enthusiastic about the new company wellness program.（スタッフは新しい会社のウェルネスプログラムについて熱心でした。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '熱心な',   NULL, true),
  (currval('questions_id_seq'), '懐疑的な', NULL, false),
  (currval('questions_id_seq'), '慎重な',   NULL, false),
  (currval('questions_id_seq'), '消極的な', NULL, false);

-- 中級-127: outline
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 127, 'choice', 1, 1,
   'outline',
   'Please prepare a brief outline of your presentation for the committee.（委員会向けにプレゼンテーションの簡単な概要を準備してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '概要',   NULL, true),
  (currval('questions_id_seq'), '詳細',   NULL, false),
  (currval('questions_id_seq'), '結論',   NULL, false),
  (currval('questions_id_seq'), '提案',   NULL, false);

-- 中級-128: packet
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 128, 'choice', 1, 1,
   'packet',
   'Each participant will receive an information packet at the registration desk.（各参加者は受付で情報パケットを受け取ります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '小包',   NULL, true),
  (currval('questions_id_seq'), '封筒',   NULL, false),
  (currval('questions_id_seq'), 'バッグ', NULL, false),
  (currval('questions_id_seq'), '冊子',   NULL, false);

-- 中級-129: retain
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 129, 'choice', 1, 1,
   'retain',
   'The company focuses on strategies to retain its most talented employees.（その会社は最も優秀な従業員を維持するための戦略に注力しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '維持する', NULL, true),
  (currval('questions_id_seq'), '採用する', NULL, false),
  (currval('questions_id_seq'), '評価する', NULL, false),
  (currval('questions_id_seq'), '昇進させる', NULL, false);

-- 中級-130: belongings
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 130, 'choice', 1, 1,
   'belongings',
   'Please take all your belongings when you leave the conference room.（会議室を出る際はすべての所持品をお持ちください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '所持品', NULL, true),
  (currval('questions_id_seq'), '資料',   NULL, false),
  (currval('questions_id_seq'), '荷物',   NULL, false),
  (currval('questions_id_seq'), '書類',   NULL, false);

-- 中級-131: conservation
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 131, 'choice', 1, 1,
   'conservation',
   'The company supports local conservation efforts to protect the forest.（その会社は森林を保護するための地域保全活動を支援しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '保全',   NULL, true),
  (currval('questions_id_seq'), '開発',   NULL, false),
  (currval('questions_id_seq'), '調査',   NULL, false),
  (currval('questions_id_seq'), '管理',   NULL, false);

-- 中級-132: routine
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 132, 'choice', 1, 1,
   'routine',
   'Regular equipment checks are part of our daily safety routine.（定期的な設備点検は日々の安全日課の一部です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '日課',   NULL, true),
  (currval('questions_id_seq'), '規則',   NULL, false),
  (currval('questions_id_seq'), '手順',   NULL, false),
  (currval('questions_id_seq'), '訓練',   NULL, false);

-- 中級-133: urban
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 133, 'choice', 1, 1,
   'urban',
   'The city government launched an urban renewal project in the old district.（市政府は旧市街地で都市再生プロジェクトを開始しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '都市の', NULL, true),
  (currval('questions_id_seq'), '地方の', NULL, false),
  (currval('questions_id_seq'), '郊外の', NULL, false),
  (currval('questions_id_seq'), '工業の', NULL, false);

-- 中級-134: workforce
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 134, 'choice', 1, 1,
   'workforce',
   'The company plans to expand its workforce by 20 percent next year.（その会社は来年、労働力を20%拡大する計画です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '労働力',   NULL, true),
  (currval('questions_id_seq'), '生産能力', NULL, false),
  (currval('questions_id_seq'), '売上高',   NULL, false),
  (currval('questions_id_seq'), '設備',     NULL, false);

-- 中級-135: biography
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 135, 'choice', 1, 1,
   'biography',
   'The founder''s biography will be published to celebrate the company''s 50th anniversary.（創業者の伝記は会社創立50周年を記念して出版される予定です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '伝記',   NULL, true),
  (currval('questions_id_seq'), '自伝',   NULL, false),
  (currval('questions_id_seq'), '歴史書', NULL, false),
  (currval('questions_id_seq'), '報告書', NULL, false);

-- 中級-136: ownership
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 136, 'choice', 1, 1,
   'ownership',
   'The change in ownership did not affect the company''s day-to-day operations.（所有権の変更は会社の日常業務に影響を与えませんでした。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '所有権', NULL, true),
  (currval('questions_id_seq'), '経営権', NULL, false),
  (currval('questions_id_seq'), '株式',   NULL, false),
  (currval('questions_id_seq'), '契約権', NULL, false);

-- 中級-137: pastry
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 137, 'choice', 1, 1,
   'pastry',
   'The bakery is famous for its freshly baked pastries and breads.（そのベーカリーは焼きたてのペストリーとパンで有名です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ペストリー', NULL, true),
  (currval('questions_id_seq'), 'デザート',   NULL, false),
  (currval('questions_id_seq'), '軽食',       NULL, false),
  (currval('questions_id_seq'), 'ケーキ',     NULL, false);

-- 中級-138: tenant
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 138, 'choice', 1, 1,
   'tenant',
   'All tenants are required to give one month''s notice before moving out.（すべての入居者は退去の1ヶ月前に通知することが求められます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '入居者', NULL, true),
  (currval('questions_id_seq'), '大家',   NULL, false),
  (currval('questions_id_seq'), '管理者', NULL, false),
  (currval('questions_id_seq'), '所有者', NULL, false);

-- 中級-139: workload
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 139, 'choice', 1, 1,
   'workload',
   'The manager distributed the workload evenly among team members.（マネージャーは業務量をチームメンバーに均等に分配しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '業務量', NULL, true),
  (currval('questions_id_seq'), '勤務時間', NULL, false),
  (currval('questions_id_seq'), '生産量', NULL, false),
  (currval('questions_id_seq'), '残業時間', NULL, false);

-- 中級-140: sufficient
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 140, 'choice', 1, 1,
   'sufficient',
   'Please ensure there is sufficient time to review the contract before signing.（署名する前に契約書を確認するための十分な時間があることを確認してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '十分な',   NULL, true),
  (currval('questions_id_seq'), '最小限の', NULL, false),
  (currval('questions_id_seq'), '余分な',   NULL, false),
  (currval('questions_id_seq'), '必要な',   NULL, false);

-- 中級-141: characteristic
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 141, 'choice', 1, 1,
   'characteristic',
   'Reliability is a key characteristic we look for in a business partner.（信頼性はビジネスパートナーに求める重要な特徴です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '特徴',   NULL, true),
  (currval('questions_id_seq'), '実績',   NULL, false),
  (currval('questions_id_seq'), '基準',   NULL, false),
  (currval('questions_id_seq'), '条件',   NULL, false);

-- 中級-142: combined
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 142, 'choice', 1, 1,
   'combined',
   'The combined sales of both divisions exceeded the annual target.（両部門の合わせた売上高は年間目標を上回りました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '合わせた', NULL, true),
  (currval('questions_id_seq'), '個別の',   NULL, false),
  (currval('questions_id_seq'), '全体の',   NULL, false),
  (currval('questions_id_seq'), '純粋な',   NULL, false);

-- 中級-143: conclude
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 143, 'choice', 1, 1,
   'conclude',
   'The meeting concluded with a vote on the proposed new policy.（会議は提案された新しい方針についての投票で締めくくられました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '締めくくる', NULL, true),
  (currval('questions_id_seq'), '開始する',   NULL, false),
  (currval('questions_id_seq'), '延期する',   NULL, false),
  (currval('questions_id_seq'), '中断する',   NULL, false);

-- 中級-144: associate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 144, 'choice', 1, 1,
   'associate',
   'He was promoted from sales associate to regional manager last year.（彼は昨年、販売担当者から地域マネージャーに昇進しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '担当者', NULL, true),
  (currval('questions_id_seq'), '管理者', NULL, false),
  (currval('questions_id_seq'), '部下',   NULL, false),
  (currval('questions_id_seq'), '顧問',   NULL, false);

-- 中級-145: conflict
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 145, 'choice', 1, 1,
   'conflict',
   'The scheduling conflict was resolved by moving the meeting to Friday.（スケジュールの対立は会議を金曜日に変更することで解決されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '対立',   NULL, true),
  (currval('questions_id_seq'), '変更',   NULL, false),
  (currval('questions_id_seq'), '中断',   NULL, false),
  (currval('questions_id_seq'), '延期',   NULL, false);

-- 中級-146: investment
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 146, 'choice', 1, 1,
   'investment',
   'The company made a significant investment in research and development.（その会社は研究開発に相当な投資をしました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '投資',   NULL, true),
  (currval('questions_id_seq'), '支出',   NULL, false),
  (currval('questions_id_seq'), '予算',   NULL, false),
  (currval('questions_id_seq'), '収益',   NULL, false);

-- 中級-147: physician
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 147, 'choice', 1, 1,
   'physician',
   'Employees are encouraged to have an annual check-up with their physician.（従業員は毎年かかりつけの医師による健康診断を受けることが奨励されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '医師',   NULL, true),
  (currval('questions_id_seq'), '看護師', NULL, false),
  (currval('questions_id_seq'), '薬剤師', NULL, false),
  (currval('questions_id_seq'), '専門家', NULL, false);

-- 中級-148: token
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 148, 'choice', 1, 1,
   'token',
   'The gift was given as a token of appreciation for years of dedicated service.（その贈り物は長年の献身的なサービスへの感謝のしるしとして贈られました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'しるし',   NULL, true),
  (currval('questions_id_seq'), '報酬',     NULL, false),
  (currval('questions_id_seq'), '証明書',   NULL, false),
  (currval('questions_id_seq'), '記念品',   NULL, false);

-- 中級-149: partial
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 149, 'choice', 1, 1,
   'partial',
   'A partial refund will be issued if you cancel within 48 hours of booking.（予約から48時間以内にキャンセルした場合、部分的な返金が行われます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '部分的な', NULL, true),
  (currval('questions_id_seq'), '全額の',   NULL, false),
  (currval('questions_id_seq'), '追加の',   NULL, false),
  (currval('questions_id_seq'), '最終的な', NULL, false);

-- 中級-150: resume
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 150, 'choice', 1, 1,
   'resume',
   'Please submit your resume and a cover letter to apply for the position.（そのポジションへの応募には履歴書とカバーレターを提出してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '履歴書', NULL, true),
  (currval('questions_id_seq'), '推薦状', NULL, false),
  (currval('questions_id_seq'), '証明書', NULL, false),
  (currval('questions_id_seq'), '企画書', NULL, false);

-- TOEIC L&R -単語集- 中級 Q151-Q200

-- 中級-151: dealership
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 151, 'choice', 1, 1,
   'dealership',
   'The company owns several car dealerships across the region.（その会社は地域全体でいくつかの自動車販売店を所有しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '販売店',   NULL, true),
  (currval('questions_id_seq'), '修理店',   NULL, false),
  (currval('questions_id_seq'), '代理店',   NULL, false),
  (currval('questions_id_seq'), '工場',     NULL, false);

-- 中級-152: garment
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 152, 'choice', 1, 1,
   'garment',
   'The factory produces garments for major fashion brands worldwide.（その工場は世界中の大手ファッションブランドのために衣類を生産しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '衣類',   NULL, true),
  (currval('questions_id_seq'), '布地',   NULL, false),
  (currval('questions_id_seq'), '服飾品', NULL, false),
  (currval('questions_id_seq'), '繊維',   NULL, false);

-- 中級-153: implement
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 153, 'choice', 1, 1,
   'implement',
   'The company will implement the new safety procedures starting next month.（その会社は来月から新しい安全手順を実施します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '実施する', NULL, true),
  (currval('questions_id_seq'), '計画する', NULL, false),
  (currval('questions_id_seq'), '変更する', NULL, false),
  (currval('questions_id_seq'), '確認する', NULL, false);

-- 中級-154: paycheck
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 154, 'choice', 1, 1,
   'paycheck',
   'Employees receive their paycheck on the last business day of each month.（従業員は毎月最終営業日に給料を受け取ります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '給料',   NULL, true),
  (currval('questions_id_seq'), '手当',   NULL, false),
  (currval('questions_id_seq'), '賞与',   NULL, false),
  (currval('questions_id_seq'), '報酬',   NULL, false);

-- 中級-155: recruit
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 155, 'choice', 1, 1,
   'recruit',
   'The company plans to recruit 50 new engineers over the next six months.（その会社は今後6ヶ月で50名の新しいエンジニアを採用する計画です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '採用する', NULL, true),
  (currval('questions_id_seq'), '育成する', NULL, false),
  (currval('questions_id_seq'), '評価する', NULL, false),
  (currval('questions_id_seq'), '解雇する', NULL, false);

-- 中級-156: substitute
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 156, 'choice', 1, 1,
   'substitute',
   'The manager asked her colleague to act as a substitute during her absence.（マネージャーは不在中に同僚に代替として働くよう依頼しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '代替品', NULL, true),
  (currval('questions_id_seq'), '補助者', NULL, false),
  (currval('questions_id_seq'), '担当者', NULL, false),
  (currval('questions_id_seq'), '臨時職員', NULL, false);

-- 中級-157: typically
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 157, 'choice', 1, 1,
   'typically',
   'Deliveries typically arrive within three to five business days.（配送は通常3〜5営業日以内に届きます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '通常',     NULL, true),
  (currval('questions_id_seq'), '必ず',     NULL, false),
  (currval('questions_id_seq'), '場合によっては', NULL, false),
  (currval('questions_id_seq'), '最近',     NULL, false);

-- 中級-158: authorize
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 158, 'choice', 1, 1,
   'authorize',
   'Only the department head is authorized to approve budget changes.（予算変更を承認できるのは部門長のみです。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '承認する', NULL, true),
  (currval('questions_id_seq'), '確認する', NULL, false),
  (currval('questions_id_seq'), '提案する', NULL, false),
  (currval('questions_id_seq'), '拒否する', NULL, false);

-- 中級-159: comparable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 159, 'choice', 1, 1,
   'comparable',
   'Our prices are comparable to those of our main competitors.（私たちの価格は主な競合他社のものと同等です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '同等の',   NULL, true),
  (currval('questions_id_seq'), '優れた',   NULL, false),
  (currval('questions_id_seq'), '低い',     NULL, false),
  (currval('questions_id_seq'), '変動する', NULL, false);

-- 中級-160: faculty
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 160, 'choice', 1, 1,
   'faculty',
   'The university has a distinguished faculty with experts from around the world.（その大学には世界中の専門家からなる著名な教員陣がいます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '教員',   NULL, true),
  (currval('questions_id_seq'), '学生',   NULL, false),
  (currval('questions_id_seq'), '職員',   NULL, false),
  (currval('questions_id_seq'), '研究者', NULL, false);

-- 中級-161: initiative
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 161, 'choice', 1, 1,
   'initiative',
   'The company launched a new initiative to reduce its carbon footprint.（その会社は炭素排出量を削減するための新しい取り組みを始めました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '取り組み', NULL, true),
  (currval('questions_id_seq'), '方針',     NULL, false),
  (currval('questions_id_seq'), '計画',     NULL, false),
  (currval('questions_id_seq'), '目標',     NULL, false);

-- 中級-162: postage
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 162, 'choice', 1, 1,
   'postage',
   'The postage for international packages has increased significantly this year.（今年、国際小包の郵便料金が大幅に上がりました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '郵便料金', NULL, true),
  (currval('questions_id_seq'), '配送料',   NULL, false),
  (currval('questions_id_seq'), '手数料',   NULL, false),
  (currval('questions_id_seq'), '梱包費',   NULL, false);

-- 中級-163: afterwards
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 163, 'choice', 1, 1,
   'afterwards',
   'The meeting will be followed by a reception afterwards.（会議の後にレセプションが続きます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'その後',   NULL, true),
  (currval('questions_id_seq'), '事前に',   NULL, false),
  (currval('questions_id_seq'), '同時に',   NULL, false),
  (currval('questions_id_seq'), '最終的に', NULL, false);

-- 中級-164: aim
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 164, 'choice', 1, 1,
   'aim',
   'The aim of the project is to reduce production costs by 10 percent.（そのプロジェクトの目的は生産コストを10%削減することです。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '目的',   NULL, true),
  (currval('questions_id_seq'), '結果',   NULL, false),
  (currval('questions_id_seq'), '戦略',   NULL, false),
  (currval('questions_id_seq'), '課題',   NULL, false);

-- 中級-165: generally
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 165, 'choice', 1, 1,
   'generally',
   'The office is generally open from 9 a.m. to 6 p.m. on weekdays.（オフィスは一般的に平日の午前9時から午後6時まで開いています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '一般的に', NULL, true),
  (currval('questions_id_seq'), '必ず',     NULL, false),
  (currval('questions_id_seq'), '時々',     NULL, false),
  (currval('questions_id_seq'), '現在',     NULL, false);

-- 中級-166: occupied
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 166, 'choice', 1, 1,
   'occupied',
   'All conference rooms are currently occupied until 3 p.m.（すべての会議室は午後3時まで現在使用中です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '使用中の', NULL, true),
  (currval('questions_id_seq'), '空いている', NULL, false),
  (currval('questions_id_seq'), '予約済みの', NULL, false),
  (currval('questions_id_seq'), '閉鎖中の', NULL, false);

-- 中級-167: solid
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 167, 'choice', 1, 1,
   'solid',
   'The company has built a solid reputation for delivering quality products.（その会社は高品質な製品を届けることで堅固な評判を築いています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '堅固な',   NULL, true),
  (currval('questions_id_seq'), '新しい',   NULL, false),
  (currval('questions_id_seq'), '優れた',   NULL, false),
  (currval('questions_id_seq'), '長期の',   NULL, false);

-- 中級-168: attempt
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 168, 'choice', 1, 1,
   'attempt',
   'The team made several attempts to contact the client without success.（チームはクライアントへの連絡を数回試みましたが成功しませんでした。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '試み',   NULL, true),
  (currval('questions_id_seq'), '要求',   NULL, false),
  (currval('questions_id_seq'), '提案',   NULL, false),
  (currval('questions_id_seq'), '計画',   NULL, false);

-- 中級-169: authority
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 169, 'choice', 1, 1,
   'authority',
   'The branch manager has the authority to approve purchases up to $5,000.（支店長は5,000ドルまでの購入を承認する権限を持っています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '権限',   NULL, true),
  (currval('questions_id_seq'), '責任',   NULL, false),
  (currval('questions_id_seq'), '義務',   NULL, false),
  (currval('questions_id_seq'), '役割',   NULL, false);

-- 中級-170: domestic
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 170, 'choice', 1, 1,
   'domestic',
   'The company focuses primarily on the domestic market for now.（その会社は今のところ主に国内市場に注力しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '国内の',   NULL, true),
  (currval('questions_id_seq'), '海外の',   NULL, false),
  (currval('questions_id_seq'), '地域の',   NULL, false),
  (currval('questions_id_seq'), '新興の',   NULL, false);

-- 中級-171: permission
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 171, 'choice', 1, 1,
   'permission',
   'You need written permission from HR to access the confidential files.（機密ファイルにアクセスするには人事部からの書面による許可が必要です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '許可',   NULL, true),
  (currval('questions_id_seq'), '承認',   NULL, false),
  (currval('questions_id_seq'), '証明',   NULL, false),
  (currval('questions_id_seq'), '要請',   NULL, false);

-- 中級-172: presence
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 172, 'choice', 1, 1,
   'presence',
   'The company is expanding its presence in the Southeast Asian market.（その会社は東南アジア市場でのプレゼンスを拡大しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '存在感', NULL, true),
  (currval('questions_id_seq'), '影響力', NULL, false),
  (currval('questions_id_seq'), '市場占有率', NULL, false),
  (currval('questions_id_seq'), '投資',   NULL, false);

-- 中級-173: rapidly
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 173, 'choice', 1, 1,
   'rapidly',
   'The technology industry is changing rapidly, requiring constant adaptation.（テクノロジー業界は急速に変化しており、絶え間ない適応が必要です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '急速に',   NULL, true),
  (currval('questions_id_seq'), '徐々に',   NULL, false),
  (currval('questions_id_seq'), '着実に',   NULL, false),
  (currval('questions_id_seq'), '最終的に', NULL, false);

-- 中級-174: relief
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 174, 'choice', 1, 1,
   'relief',
   'It was a great relief when the contract was finally signed.（契約がようやく締結されたときは大きな安堵でした。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '安堵',   NULL, true),
  (currval('questions_id_seq'), '達成感', NULL, false),
  (currval('questions_id_seq'), '驚き',   NULL, false),
  (currval('questions_id_seq'), '満足',   NULL, false);

-- 中級-175: reward
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 175, 'choice', 1, 1,
   'reward',
   'Employees who exceed their targets will receive a performance reward.（目標を超えた従業員は業績報酬を受け取ります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '報酬',   NULL, true),
  (currval('questions_id_seq'), '給与',   NULL, false),
  (currval('questions_id_seq'), '昇進',   NULL, false),
  (currval('questions_id_seq'), '手当',   NULL, false);

-- 中級-176: translates
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 176, 'choice', 1, 1,
   'translates',
   'Strong customer loyalty translates into higher long-term revenue.（強い顧客ロイヤルティは長期的な高収益につながります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'につながる', NULL, true),
  (currval('questions_id_seq'), '翻訳する',   NULL, false),
  (currval('questions_id_seq'), '示す',       NULL, false),
  (currval('questions_id_seq'), '変換する',   NULL, false);

-- 中級-177: circumstance
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 177, 'choice', 1, 1,
   'circumstance',
   'Under no circumstance should confidential data be shared externally.（いかなる状況においても機密データを外部に共有してはなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '状況',   NULL, true),
  (currval('questions_id_seq'), '理由',   NULL, false),
  (currval('questions_id_seq'), '条件',   NULL, false),
  (currval('questions_id_seq'), '規則',   NULL, false);

-- 中級-178: contrary
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 178, 'choice', 1, 1,
   'contrary',
   'Contrary to expectations, the new product sold poorly in the first month.（予想に反して、新製品は初月の売れ行きが悪かった。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '反対の',   NULL, true),
  (currval('questions_id_seq'), '一致した', NULL, false),
  (currval('questions_id_seq'), '同様の',   NULL, false),
  (currval('questions_id_seq'), '期待通りの', NULL, false);

-- 中級-179: eventually
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 179, 'choice', 1, 1,
   'eventually',
   'The negotiations were difficult, but they eventually reached an agreement.（交渉は難しかったが、最終的には合意に至りました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '最終的に', NULL, true),
  (currval('questions_id_seq'), '即座に',   NULL, false),
  (currval('questions_id_seq'), '一般的に', NULL, false),
  (currval('questions_id_seq'), '最近',     NULL, false);

-- 中級-180: expose
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 180, 'choice', 1, 1,
   'expose',
   'The investigation exposed serious flaws in the company''s financial reporting.（調査は会社の財務報告における重大な欠陥を明らかにしました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '明らかにする', NULL, true),
  (currval('questions_id_seq'), '調査する',     NULL, false),
  (currval('questions_id_seq'), '報告する',     NULL, false),
  (currval('questions_id_seq'), '修正する',     NULL, false);

-- 中級-181: panel
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 181, 'choice', 1, 1,
   'panel',
   'A panel of experts will evaluate all submitted proposals.（専門家のパネルがすべての提出された提案を評価します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '専門家グループ', NULL, true),
  (currval('questions_id_seq'), '委員会',         NULL, false),
  (currval('questions_id_seq'), '審査員',         NULL, false),
  (currval('questions_id_seq'), '顧問団',         NULL, false);

-- 中級-182: portion
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 182, 'choice', 1, 1,
   'portion',
   'A portion of the company''s profits is donated to local charities each year.（会社の利益の一部は毎年地元の慈善団体に寄付されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '一部',   NULL, true),
  (currval('questions_id_seq'), '大半',   NULL, false),
  (currval('questions_id_seq'), '全体',   NULL, false),
  (currval('questions_id_seq'), '割合',   NULL, false);

-- 中級-183: primary
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 183, 'choice', 1, 1,
   'primary',
   'Customer satisfaction is the primary goal of our service department.（顧客満足は当社サービス部門の主要な目標です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '主要な',   NULL, true),
  (currval('questions_id_seq'), '唯一の',   NULL, false),
  (currval('questions_id_seq'), '最終的な', NULL, false),
  (currval('questions_id_seq'), '共通の',   NULL, false);

-- 中級-184: remark
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 184, 'choice', 1, 1,
   'remark',
   'The CEO''s opening remarks set a positive tone for the annual meeting.（CEOの冒頭の発言は年次総会に前向きな雰囲気をもたらしました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '発言',   NULL, true),
  (currval('questions_id_seq'), '提案',   NULL, false),
  (currval('questions_id_seq'), '報告',   NULL, false),
  (currval('questions_id_seq'), '質問',   NULL, false);

-- 中級-185: timely
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 185, 'choice', 1, 1,
   'timely',
   'Timely delivery is essential to maintaining our client relationships.（時宜を得た配送はクライアント関係を維持するために不可欠です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '時宜を得た', NULL, true),
  (currval('questions_id_seq'), '迅速な',     NULL, false),
  (currval('questions_id_seq'), '確実な',     NULL, false),
  (currval('questions_id_seq'), '低コストの', NULL, false);

-- 中級-186: commonly
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 186, 'choice', 1, 1,
   'commonly',
   'This software is commonly used by financial institutions worldwide.（このソフトウェアは世界中の金融機関で一般的に使用されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '一般的に', NULL, true),
  (currval('questions_id_seq'), '専ら',     NULL, false),
  (currval('questions_id_seq'), '主に',     NULL, false),
  (currval('questions_id_seq'), '時々',     NULL, false);

-- 中級-187: consult
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 187, 'choice', 1, 1,
   'consult',
   'Please consult the user manual before operating the new equipment.（新しい機器を操作する前にユーザーマニュアルを参照してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '相談する', NULL, true),
  (currval('questions_id_seq'), '確認する', NULL, false),
  (currval('questions_id_seq'), '記録する', NULL, false),
  (currval('questions_id_seq'), '従う',     NULL, false);

-- 中級-188: convert
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 188, 'choice', 1, 1,
   'convert',
   'The warehouse will be converted into a modern office space next year.（その倉庫は来年モダンなオフィススペースに変換されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '変換する', NULL, true),
  (currval('questions_id_seq'), '拡張する', NULL, false),
  (currval('questions_id_seq'), '解体する', NULL, false),
  (currval('questions_id_seq'), '移転する', NULL, false);

-- 中級-189: obligation
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 189, 'choice', 1, 1,
   'obligation',
   'There is no obligation to purchase after requesting a free sample.（無料サンプルを請求した後に購入する義務はありません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '義務',   NULL, true),
  (currval('questions_id_seq'), '条件',   NULL, false),
  (currval('questions_id_seq'), '要求',   NULL, false),
  (currval('questions_id_seq'), '約束',   NULL, false);

-- 中級-190: resign
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 190, 'choice', 1, 1,
   'resign',
   'The director announced plans to resign at the end of the fiscal year.（ディレクターは会計年度末に辞任する計画を発表しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '辞任する', NULL, true),
  (currval('questions_id_seq'), '昇進する', NULL, false),
  (currval('questions_id_seq'), '引退する', NULL, false),
  (currval('questions_id_seq'), '転勤する', NULL, false);

-- 中級-191: securely
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 191, 'choice', 1, 1,
   'securely',
   'All customer data must be stored securely to protect privacy.（顧客データはすべてプライバシーを保護するために安全に保管されなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '安全に',   NULL, true),
  (currval('questions_id_seq'), '確実に',   NULL, false),
  (currval('questions_id_seq'), '適切に',   NULL, false),
  (currval('questions_id_seq'), '効率的に', NULL, false);

-- 中級-192: strive
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 192, 'choice', 1, 1,
   'strive',
   'We always strive to provide the best possible service to our customers.（私たちは常にお客様に最善のサービスを提供するよう努力しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '努力する', NULL, true),
  (currval('questions_id_seq'), '目指す',   NULL, false),
  (currval('questions_id_seq'), '保証する', NULL, false),
  (currval('questions_id_seq'), '約束する', NULL, false);

-- 中級-193: timeline
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 193, 'choice', 1, 1,
   'timeline',
   'Please review the project timeline before our meeting tomorrow.（明日の会議の前にプロジェクトのスケジュールを確認してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'スケジュール', NULL, true),
  (currval('questions_id_seq'), '計画書',       NULL, false),
  (currval('questions_id_seq'), '期限',         NULL, false),
  (currval('questions_id_seq'), '工程表',       NULL, false);

-- 中級-194: urge
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 194, 'choice', 1, 1,
   'urge',
   'The manager urged all employees to complete the training by Friday.（マネージャーは全従業員に金曜日までに研修を修了するよう強く勧めました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '強く勧める', NULL, true),
  (currval('questions_id_seq'), '命令する',   NULL, false),
  (currval('questions_id_seq'), '提案する',   NULL, false),
  (currval('questions_id_seq'), '依頼する',   NULL, false);

-- 中級-195: acknowledge
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 195, 'choice', 1, 1,
   'acknowledge',
   'The company acknowledged the error and issued a formal apology.（その会社はミスを認め、正式な謝罪を発表しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '認める',   NULL, true),
  (currval('questions_id_seq'), '修正する', NULL, false),
  (currval('questions_id_seq'), '説明する', NULL, false),
  (currval('questions_id_seq'), '報告する', NULL, false);

-- 中級-196: diverse
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 196, 'choice', 1, 1,
   'diverse',
   'The company values a diverse workforce with different backgrounds and skills.（その会社は異なるバックグラウンドとスキルを持つ多様な労働力を重視しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '多様な',   NULL, true),
  (currval('questions_id_seq'), '経験豊富な', NULL, false),
  (currval('questions_id_seq'), '優秀な',   NULL, false),
  (currval('questions_id_seq'), '国際的な', NULL, false);

-- 中級-197: transaction
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 197, 'choice', 1, 1,
   'transaction',
   'All financial transactions must be recorded in the accounting system.（すべての金融取引は会計システムに記録されなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '取引',   NULL, true),
  (currval('questions_id_seq'), '決済',   NULL, false),
  (currval('questions_id_seq'), '記録',   NULL, false),
  (currval('questions_id_seq'), '報告',   NULL, false);

-- 中級-198: lack
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 198, 'choice', 1, 1,
   'lack',
   'The project was delayed due to a lack of available resources.（プロジェクトは利用可能なリソースの不足により遅延しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '不足',   NULL, true),
  (currval('questions_id_seq'), '問題',   NULL, false),
  (currval('questions_id_seq'), '変更',   NULL, false),
  (currval('questions_id_seq'), '中断',   NULL, false);

-- 中級-199: essential
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 199, 'choice', 1, 1,
   'essential',
   'Strong communication skills are essential for this management position.（このマネジメントポジションには強いコミュニケーションスキルが不可欠です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '不可欠な', NULL, true),
  (currval('questions_id_seq'), '有益な',   NULL, false),
  (currval('questions_id_seq'), '十分な',   NULL, false),
  (currval('questions_id_seq'), '重要な',   NULL, false);

-- 中級-200: majority
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 200, 'choice', 1, 1,
   'majority',
   'The majority of employees preferred the new hybrid working arrangement.（従業員の大多数は新しいハイブリッド勤務の取り決めを好みました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '大多数', NULL, true),
  (currval('questions_id_seq'), '少数',   NULL, false),
  (currval('questions_id_seq'), '半数',   NULL, false),
  (currval('questions_id_seq'), '全員',   NULL, false);

-- TOEIC L&R -単語集- 中級 Q201-Q250

-- 中級-201: observe
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 201, 'choice', 1, 1,
   'observe',
   'Managers should observe workplace safety rules at all times.（マネージャーは常に職場の安全規則を遵守すべきです。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '遵守する', NULL, true),
  (currval('questions_id_seq'), '確認する', NULL, false),
  (currval('questions_id_seq'), '記録する', NULL, false),
  (currval('questions_id_seq'), '報告する', NULL, false);

-- 中級-202: possess
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 202, 'choice', 1, 1,
   'possess',
   'Candidates must possess a valid driver''s license for this delivery position.（この配送職への候補者は有効な運転免許証を所持していなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '所持する', NULL, true),
  (currval('questions_id_seq'), '取得する', NULL, false),
  (currval('questions_id_seq'), '更新する', NULL, false),
  (currval('questions_id_seq'), '提出する', NULL, false);

-- 中級-203: sharply
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 203, 'choice', 1, 1,
   'sharply',
   'Operating costs have risen sharply due to increased fuel prices.（燃料費の上昇により、運営コストが急激に上昇しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '急激に',   NULL, true),
  (currval('questions_id_seq'), '徐々に',   NULL, false),
  (currval('questions_id_seq'), 'わずかに', NULL, false),
  (currval('questions_id_seq'), '継続的に', NULL, false);

-- 中級-204: adjustment
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 204, 'choice', 1, 1,
   'adjustment',
   'Minor adjustments to the schedule were made after the client''s request.（クライアントの要求に応じてスケジュールに小さな調整が加えられました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '調整',   NULL, true),
  (currval('questions_id_seq'), '変更',   NULL, false),
  (currval('questions_id_seq'), '修正',   NULL, false),
  (currval('questions_id_seq'), '延期',   NULL, false);

-- 中級-205: aisle
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 205, 'choice', 1, 1,
   'aisle',
   'The cleaning products are located in aisle 5 of the supermarket.（清掃用品はスーパーマーケットの5番通路にあります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '通路',   NULL, true),
  (currval('questions_id_seq'), '棚',     NULL, false),
  (currval('questions_id_seq'), '売り場', NULL, false),
  (currval('questions_id_seq'), '出口',   NULL, false);

-- 中級-206: capture
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 206, 'choice', 1, 1,
   'capture',
   'The company aims to capture a larger share of the online retail market.（その会社はオンライン小売市場のより大きなシェアを獲得することを目指しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '獲得する', NULL, true),
  (currval('questions_id_seq'), '拡大する', NULL, false),
  (currval('questions_id_seq'), '維持する', NULL, false),
  (currval('questions_id_seq'), '調査する', NULL, false);

-- 中級-207: consist
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 207, 'choice', 1, 1,
   'consist',
   'The project team consists of engineers, designers, and marketing staff.（プロジェクトチームはエンジニア、デザイナー、マーケティングスタッフで構成されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '構成される', NULL, true),
  (currval('questions_id_seq'), '運営される', NULL, false),
  (currval('questions_id_seq'), '設立される', NULL, false),
  (currval('questions_id_seq'), '代表される', NULL, false);

-- 中級-208: desirable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 208, 'choice', 1, 1,
   'desirable',
   'Experience in project management is highly desirable for this role.（このポジションにはプロジェクト管理の経験が非常に望ましいです。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '望ましい', NULL, true),
  (currval('questions_id_seq'), '必須の',   NULL, false),
  (currval('questions_id_seq'), '好ましくない', NULL, false),
  (currval('questions_id_seq'), '追加の',   NULL, false);

-- 中級-209: heavily
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 209, 'choice', 1, 1,
   'heavily',
   'The company has invested heavily in developing its online platform.（その会社はオンラインプラットフォームの開発に大幅に投資しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '大幅に',   NULL, true),
  (currval('questions_id_seq'), 'わずかに', NULL, false),
  (currval('questions_id_seq'), '着実に',   NULL, false),
  (currval('questions_id_seq'), '最近',     NULL, false);

-- 中級-210: investigate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 210, 'choice', 1, 1,
   'investigate',
   'The management team will investigate the cause of the production delay.（経営チームは生産遅延の原因を調査します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '調査する', NULL, true),
  (currval('questions_id_seq'), '解決する', NULL, false),
  (currval('questions_id_seq'), '報告する', NULL, false),
  (currval('questions_id_seq'), '防ぐ',     NULL, false);

-- 中級-211: measurement
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 211, 'choice', 1, 1,
   'measurement',
   'Accurate measurements are essential when ordering custom furniture.（オーダーメイド家具を注文する際は正確な測定が不可欠です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '測定',   NULL, true),
  (currval('questions_id_seq'), '評価',   NULL, false),
  (currval('questions_id_seq'), '数量',   NULL, false),
  (currval('questions_id_seq'), '仕様',   NULL, false);

-- 中級-212: urgent
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 212, 'choice', 1, 1,
   'urgent',
   'There is an urgent need to address the supply chain disruption.（サプライチェーンの混乱に対処する緊急の必要性があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '緊急の',   NULL, true),
  (currval('questions_id_seq'), '重要な',   NULL, false),
  (currval('questions_id_seq'), '深刻な',   NULL, false),
  (currval('questions_id_seq'), '突然の',   NULL, false);

-- 中級-213: checkout
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 213, 'choice', 1, 1,
   'checkout',
   'Hotel checkout time is noon, but early checkout can be arranged.（ホテルのチェックアウト時刻は正午ですが、早朝チェックアウトも手配できます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'チェックアウト', NULL, true),
  (currval('questions_id_seq'), 'チェックイン',   NULL, false),
  (currval('questions_id_seq'), '支払い',         NULL, false),
  (currval('questions_id_seq'), '退室',           NULL, false);

-- 中級-214: dispose
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 214, 'choice', 1, 1,
   'dispose',
   'Please dispose of all confidential documents in the secure shredder.（すべての機密書類は安全なシュレッダーで処分してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '処分する', NULL, true),
  (currval('questions_id_seq'), '保管する', NULL, false),
  (currval('questions_id_seq'), '転送する', NULL, false),
  (currval('questions_id_seq'), '複写する', NULL, false);

-- 中級-215: modify
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 215, 'choice', 1, 1,
   'modify',
   'The design team will modify the product based on customer feedback.（デザインチームは顧客フィードバックに基づいて製品を変更します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '変更する', NULL, true),
  (currval('questions_id_seq'), '廃止する', NULL, false),
  (currval('questions_id_seq'), '設計する', NULL, false),
  (currval('questions_id_seq'), '評価する', NULL, false);

-- 中級-216: outlet
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 216, 'choice', 1, 1,
   'outlet',
   'The brand is expanding its retail outlets to 30 new locations this year.（そのブランドは今年30の新しい場所に小売販売店を拡大しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '販売店', NULL, true),
  (currval('questions_id_seq'), '倉庫',   NULL, false),
  (currval('questions_id_seq'), '支社',   NULL, false),
  (currval('questions_id_seq'), '施設',   NULL, false);

-- 中級-217: prescription
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 217, 'choice', 1, 1,
   'prescription',
   'The company''s health plan covers the cost of prescription medications.（その会社の健康保険プランは処方薬の費用をカバーしています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '処方薬', NULL, true),
  (currval('questions_id_seq'), '診察料', NULL, false),
  (currval('questions_id_seq'), '入院費', NULL, false),
  (currval('questions_id_seq'), '市販薬', NULL, false);

-- 中級-218: situated
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 218, 'choice', 1, 1,
   'situated',
   'The new office is conveniently situated near the main train station.（新しいオフィスは主要な駅の近くに便利に位置しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '位置した',   NULL, true),
  (currval('questions_id_seq'), '建設された', NULL, false),
  (currval('questions_id_seq'), '設計された', NULL, false),
  (currval('questions_id_seq'), '移転した',   NULL, false);

-- 中級-219: surprisingly
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 219, 'choice', 1, 1,
   'surprisingly',
   'The new product sold surprisingly well during its first week.（新製品は発売初週に驚くほどよく売れました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '驚くほど', NULL, true),
  (currval('questions_id_seq'), '予想通り', NULL, false),
  (currval('questions_id_seq'), 'わずかに', NULL, false),
  (currval('questions_id_seq'), '相当に',   NULL, false);

-- 中級-220: transform
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 220, 'choice', 1, 1,
   'transform',
   'The renovation project completely transformed the old warehouse.（改装プロジェクトは古い倉庫を完全に変えました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '変える',   NULL, true),
  (currval('questions_id_seq'), '修理する', NULL, false),
  (currval('questions_id_seq'), '拡大する', NULL, false),
  (currval('questions_id_seq'), '設計する', NULL, false);

-- 中級-221: undergo
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 221, 'choice', 1, 1,
   'undergo',
   'All new employees must undergo a background check before starting work.（すべての新入社員は勤務開始前に身元調査を受けなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '受ける',   NULL, true),
  (currval('questions_id_seq'), '提出する', NULL, false),
  (currval('questions_id_seq'), '完了する', NULL, false),
  (currval('questions_id_seq'), '免除される', NULL, false);

-- 中級-222: blueprint
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 222, 'choice', 1, 1,
   'blueprint',
   'The architect presented the blueprints for the new office building.（建築家は新しいオフィスビルの設計図を提示しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '設計図', NULL, true),
  (currval('questions_id_seq'), '提案書', NULL, false),
  (currval('questions_id_seq'), '報告書', NULL, false),
  (currval('questions_id_seq'), '仕様書', NULL, false);

-- 中級-223: boost
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 223, 'choice', 1, 1,
   'boost',
   'The advertising campaign helped boost sales by 25 percent.（広告キャンペーンは売上を25%高めるのに役立ちました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '高める',   NULL, true),
  (currval('questions_id_seq'), '維持する', NULL, false),
  (currval('questions_id_seq'), '記録する', NULL, false),
  (currval('questions_id_seq'), '削減する', NULL, false);

-- 中級-224: considerably
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 224, 'choice', 1, 1,
   'considerably',
   'The time required for processing has been considerably reduced.（処理に必要な時間がかなり削減されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'かなり',   NULL, true),
  (currval('questions_id_seq'), 'わずかに', NULL, false),
  (currval('questions_id_seq'), '一時的に', NULL, false),
  (currval('questions_id_seq'), '完全に',   NULL, false);

-- 中級-225: eliminate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 225, 'choice', 1, 1,
   'eliminate',
   'The new process helped eliminate unnecessary steps and reduce waste.（新しいプロセスは不要なステップを排除し、無駄を減らすのに役立ちました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '排除する', NULL, true),
  (currval('questions_id_seq'), '削減する', NULL, false),
  (currval('questions_id_seq'), '修正する', NULL, false),
  (currval('questions_id_seq'), '最小化する', NULL, false);

-- 中級-226: exclusively
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 226, 'choice', 1, 1,
   'exclusively',
   'This product is available exclusively through our official website.（この製品は当社の公式ウェブサイトのみで購入できます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '専ら',       NULL, true),
  (currval('questions_id_seq'), '主に',       NULL, false),
  (currval('questions_id_seq'), '一般的に',   NULL, false),
  (currval('questions_id_seq'), '定期的に',   NULL, false);

-- 中級-227: leak
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 227, 'choice', 1, 1,
   'leak',
   'A water leak in the ceiling forced the office to close temporarily.（天井の水漏れによりオフィスは一時的に閉鎖を余儀なくされました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '漏れ',   NULL, true),
  (currval('questions_id_seq'), '故障',   NULL, false),
  (currval('questions_id_seq'), '損傷',   NULL, false),
  (currval('questions_id_seq'), '汚染',   NULL, false);

-- 中級-228: preliminary
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 228, 'choice', 1, 1,
   'preliminary',
   'A preliminary review of the budget will be conducted before the formal meeting.（正式な会議の前に予算の予備審査が行われます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '予備の',   NULL, true),
  (currval('questions_id_seq'), '最終の',   NULL, false),
  (currval('questions_id_seq'), '詳細な',   NULL, false),
  (currval('questions_id_seq'), '緊急の',   NULL, false);

-- 中級-229: sophisticated
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 229, 'choice', 1, 1,
   'sophisticated',
   'The company uses sophisticated software to analyze market trends.（その会社は市場動向を分析するために洗練されたソフトウェアを使用しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '洗練された', NULL, true),
  (currval('questions_id_seq'), '新しい',     NULL, false),
  (currval('questions_id_seq'), '費用のかかる', NULL, false),
  (currval('questions_id_seq'), '使いやすい', NULL, false);

-- 中級-230: statistics
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 230, 'choice', 1, 1,
   'statistics',
   'The latest statistics show a significant increase in online purchases.（最新の統計はオンライン購入の大幅な増加を示しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '統計',   NULL, true),
  (currval('questions_id_seq'), 'データ', NULL, false),
  (currval('questions_id_seq'), '調査',   NULL, false),
  (currval('questions_id_seq'), '指標',   NULL, false);

-- 中級-231: vacant
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 231, 'choice', 1, 1,
   'vacant',
   'There are two vacant positions in the marketing department.（マーケティング部門に2つの空きポジションがあります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '空いている', NULL, true),
  (currval('questions_id_seq'), '埋まっている', NULL, false),
  (currval('questions_id_seq'), '新しい',     NULL, false),
  (currval('questions_id_seq'), '追加の',     NULL, false);

-- 中級-232: evidence
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 232, 'choice', 1, 1,
   'evidence',
   'The report provides strong evidence that customer satisfaction is improving.（そのレポートは顧客満足度が改善しているという強力な証拠を提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '証拠',   NULL, true),
  (currval('questions_id_seq'), 'データ', NULL, false),
  (currval('questions_id_seq'), '証明',   NULL, false),
  (currval('questions_id_seq'), '事実',   NULL, false);

-- 中級-233: excursion
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 233, 'choice', 1, 1,
   'excursion',
   'The conference package includes a half-day cultural excursion.（会議パッケージには半日の文化的小旅行が含まれています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '小旅行', NULL, true),
  (currval('questions_id_seq'), '観光',   NULL, false),
  (currval('questions_id_seq'), '宿泊',   NULL, false),
  (currval('questions_id_seq'), '体験',   NULL, false);

-- 中級-234: influence
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 234, 'choice', 1, 1,
   'influence',
   'Customer reviews greatly influence purchasing decisions online.（顧客レビューはオンラインでの購買決定に大きく影響します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '影響する', NULL, true),
  (currval('questions_id_seq'), '変える',   NULL, false),
  (currval('questions_id_seq'), '支配する', NULL, false),
  (currval('questions_id_seq'), '促進する', NULL, false);

-- 中級-235: ordinary
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 235, 'choice', 1, 1,
   'ordinary',
   'The hotel offers both ordinary rooms and luxury suites.（そのホテルは普通の客室と高級スイートの両方を提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '普通の',   NULL, true),
  (currval('questions_id_seq'), '標準の',   NULL, false),
  (currval('questions_id_seq'), '一般的な', NULL, false),
  (currval('questions_id_seq'), '安い',     NULL, false);

-- 中級-236: reject
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 236, 'choice', 1, 1,
   'reject',
   'The board decided to reject the merger proposal at the annual meeting.（取締役会は年次総会で合併提案を却下することを決定しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '却下する', NULL, true),
  (currval('questions_id_seq'), '承認する', NULL, false),
  (currval('questions_id_seq'), '延期する', NULL, false),
  (currval('questions_id_seq'), '修正する', NULL, false);

-- 中級-237: tailor
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 237, 'choice', 1, 1,
   'tailor',
   'We tailor our services to meet the specific needs of each client.（私たちは各クライアントの特定のニーズに合わせてサービスをカスタマイズしています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '合わせる', NULL, true),
  (currval('questions_id_seq'), '提供する', NULL, false),
  (currval('questions_id_seq'), '設計する', NULL, false),
  (currval('questions_id_seq'), '調整する', NULL, false);

-- 中級-238: assume
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 238, 'choice', 1, 1,
   'assume',
   'Do not assume that all customers are familiar with our return policy.（すべての顧客が返品ポリシーを知っていると想定しないでください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '想定する', NULL, true),
  (currval('questions_id_seq'), '確認する', NULL, false),
  (currval('questions_id_seq'), '期待する', NULL, false),
  (currval('questions_id_seq'), '判断する', NULL, false);

-- 中級-239: engagement
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 239, 'choice', 1, 1,
   'engagement',
   'The company monitors employee engagement through regular surveys.（その会社は定期的な調査を通じて従業員のエンゲージメントを監視しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '関与',   NULL, true),
  (currval('questions_id_seq'), '満足度', NULL, false),
  (currval('questions_id_seq'), '業績',   NULL, false),
  (currval('questions_id_seq'), '参加',   NULL, false);

-- 中級-240: fame
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 240, 'choice', 1, 1,
   'fame',
   'The restaurant''s fame spread quickly due to positive online reviews.（そのレストランの名声はポジティブなオンラインレビューにより急速に広まりました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '名声',   NULL, true),
  (currval('questions_id_seq'), '人気',   NULL, false),
  (currval('questions_id_seq'), '評判',   NULL, false),
  (currval('questions_id_seq'), '知名度', NULL, false);

-- 中級-241: modest
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 241, 'choice', 1, 1,
   'modest',
   'The company made a modest profit in the first year of operation.（その会社は営業初年度に控えめな利益を上げました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '控えめな', NULL, true),
  (currval('questions_id_seq'), '大幅な',   NULL, false),
  (currval('questions_id_seq'), '安定した', NULL, false),
  (currval('questions_id_seq'), '継続的な', NULL, false);

-- 中級-242: patent
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 242, 'choice', 1, 1,
   'patent',
   'The company filed a patent for its newly developed technology.（その会社は新たに開発した技術の特許を申請しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '特許',   NULL, true),
  (currval('questions_id_seq'), '著作権', NULL, false),
  (currval('questions_id_seq'), '登録商標', NULL, false),
  (currval('questions_id_seq'), '認定',   NULL, false);

-- 中級-243: pursue
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 243, 'choice', 1, 1,
   'pursue',
   'The company decided to pursue a new strategy in the Asian market.（その会社はアジア市場で新しい戦略を追求することを決定しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '追求する', NULL, true),
  (currval('questions_id_seq'), '採用する', NULL, false),
  (currval('questions_id_seq'), '調整する', NULL, false),
  (currval('questions_id_seq'), '撤退する', NULL, false);

-- 中級-244: remote
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 244, 'choice', 1, 1,
   'remote',
   'The company introduced remote working options for all office staff.（その会社はすべてのオフィススタッフに遠隔勤務のオプションを導入しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '遠隔の',   NULL, true),
  (currval('questions_id_seq'), '柔軟な',   NULL, false),
  (currval('questions_id_seq'), '時短の',   NULL, false),
  (currval('questions_id_seq'), '在宅の',   NULL, false);

-- 中級-245: reveal
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 245, 'choice', 1, 1,
   'reveal',
   'The annual report revealed a 15 percent increase in overall revenue.（年次報告書は総収益が15%増加したことを明らかにしました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '明らかにする', NULL, true),
  (currval('questions_id_seq'), '発表する',     NULL, false),
  (currval('questions_id_seq'), '確認する',     NULL, false),
  (currval('questions_id_seq'), '説明する',     NULL, false);

-- 中級-246: allowance
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 246, 'choice', 1, 1,
   'allowance',
   'Employees receive a monthly travel allowance to cover commuting costs.（従業員は通勤費をカバーするために月額の交通手当を受け取ります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '手当',   NULL, true),
  (currval('questions_id_seq'), '報酬',   NULL, false),
  (currval('questions_id_seq'), '給与',   NULL, false),
  (currval('questions_id_seq'), '補助',   NULL, false);

-- 中級-247: crucial
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 247, 'choice', 1, 1,
   'crucial',
   'Effective communication is crucial to the success of any project.（効果的なコミュニケーションはあらゆるプロジェクトの成功に不可欠です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '不可欠な', NULL, true),
  (currval('questions_id_seq'), '重要な',   NULL, false),
  (currval('questions_id_seq'), '有益な',   NULL, false),
  (currval('questions_id_seq'), '困難な',   NULL, false);

-- 中級-248: distinguished
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 248, 'choice', 1, 1,
   'distinguished',
   'The company welcomed a distinguished guest speaker at the annual conference.（その会社は年次会議に著名なゲストスピーカーを迎えました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '著名な',   NULL, true),
  (currval('questions_id_seq'), '有能な',   NULL, false),
  (currval('questions_id_seq'), '経験豊富な', NULL, false),
  (currval('questions_id_seq'), '新進の',   NULL, false);

-- 中級-249: disturb
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 249, 'choice', 1, 1,
   'disturb',
   'Please do not disturb others during the conference presentations.（会議のプレゼンテーション中は他の人を妨げないでください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '妨げる',   NULL, true),
  (currval('questions_id_seq'), '注意する', NULL, false),
  (currval('questions_id_seq'), '中断する', NULL, false),
  (currval('questions_id_seq'), '邪魔する', NULL, false);

-- 中級-250: fluent
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 250, 'choice', 1, 1,
   'fluent',
   'Candidates who are fluent in Japanese will be given preference.（日本語が流ちょうな候補者が優先されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '流ちょうな',   NULL, true),
  (currval('questions_id_seq'), '基礎的な',     NULL, false),
  (currval('questions_id_seq'), '会話レベルの', NULL, false),
  (currval('questions_id_seq'), '専門的な',     NULL, false);

-- TOEIC L&R -単語集- 中級 Q251-Q301

-- 中級-251: fulfill
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 251, 'choice', 1, 1,
   'fulfill',
   'The supplier failed to fulfill its contractual obligations on time.（サプライヤーは契約上の義務を期日通りに果たすことができませんでした。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '果たす',   NULL, true),
  (currval('questions_id_seq'), '提出する', NULL, false),
  (currval('questions_id_seq'), '達成する', NULL, false),
  (currval('questions_id_seq'), '遂行する', NULL, false);

-- 中級-252: objective
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 252, 'choice', 1, 1,
   'objective',
   'The primary objective of the campaign is to increase brand awareness.（キャンペーンの主要な目標はブランド認知度を高めることです。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '目標',   NULL, true),
  (currval('questions_id_seq'), '戦略',   NULL, false),
  (currval('questions_id_seq'), '課題',   NULL, false),
  (currval('questions_id_seq'), '方針',   NULL, false);

-- 中級-253: restrict
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 253, 'choice', 1, 1,
   'restrict',
   'Access to the server room is restricted to authorized personnel only.（サーバールームへのアクセスは許可された担当者のみに制限されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '制限する', NULL, true),
  (currval('questions_id_seq'), '禁止する', NULL, false),
  (currval('questions_id_seq'), '管理する', NULL, false),
  (currval('questions_id_seq'), '許可する', NULL, false);

-- 中級-254: steadily
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 254, 'choice', 1, 1,
   'steadily',
   'The company''s market share has been growing steadily for three years.（その会社の市場シェアは3年間着実に成長しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '着実に',   NULL, true),
  (currval('questions_id_seq'), '急速に',   NULL, false),
  (currval('questions_id_seq'), '一時的に', NULL, false),
  (currval('questions_id_seq'), '徐々に',   NULL, false);

-- 中級-255: adequate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 255, 'choice', 1, 1,
   'adequate',
   'Ensure there is adequate lighting in all work areas for safety.（安全のためにすべての作業エリアに十分な照明があることを確認してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '十分な',   NULL, true),
  (currval('questions_id_seq'), '追加の',   NULL, false),
  (currval('questions_id_seq'), '最小限の', NULL, false),
  (currval('questions_id_seq'), '適切な',   NULL, false);

-- 中級-256: assessment
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 256, 'choice', 1, 1,
   'assessment',
   'A performance assessment will be conducted at the end of each quarter.（各四半期末に業績評価が実施されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '評価',   NULL, true),
  (currval('questions_id_seq'), '検査',   NULL, false),
  (currval('questions_id_seq'), '審査',   NULL, false),
  (currval('questions_id_seq'), '報告',   NULL, false);

-- 中級-257: attribute
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 257, 'choice', 1, 1,
   'attribute',
   'Strong leadership is a key attribute for any management position.（強いリーダーシップはどのマネジメントポジションにも重要な特性です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '特性',   NULL, true),
  (currval('questions_id_seq'), '実績',   NULL, false),
  (currval('questions_id_seq'), '条件',   NULL, false),
  (currval('questions_id_seq'), '要件',   NULL, false);

-- 中級-258: beforehand
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 258, 'choice', 1, 1,
   'beforehand',
   'Please confirm your attendance beforehand so we can arrange seating.（座席を手配できるよう事前に出席をご確認ください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '事前に',   NULL, true),
  (currval('questions_id_seq'), 'その後',   NULL, false),
  (currval('questions_id_seq'), '最終的に', NULL, false),
  (currval('questions_id_seq'), 'すぐに',   NULL, false);

-- 中級-259: challenging
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 259, 'choice', 1, 1,
   'challenging',
   'Managing multiple projects simultaneously can be very challenging.（複数のプロジェクトを同時に管理することは非常に困難です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '困難な',   NULL, true),
  (currval('questions_id_seq'), '複雑な',   NULL, false),
  (currval('questions_id_seq'), '時間のかかる', NULL, false),
  (currval('questions_id_seq'), '責任の重い', NULL, false);

-- 中級-260: endeavor
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 260, 'choice', 1, 1,
   'endeavor',
   'We will endeavor to deliver your order within the promised timeframe.（約束した期間内にご注文をお届けするよう努力します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '努力する', NULL, true),
  (currval('questions_id_seq'), '保証する', NULL, false),
  (currval('questions_id_seq'), '約束する', NULL, false),
  (currval('questions_id_seq'), '目指す',   NULL, false);

-- 中級-261: inspiring
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 261, 'choice', 1, 1,
   'inspiring',
   'The keynote speaker delivered an inspiring talk about innovation.（基調講演者はイノベーションについての感動的なスピーチを行いました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '感動的な', NULL, true),
  (currval('questions_id_seq'), '印象的な', NULL, false),
  (currval('questions_id_seq'), '革新的な', NULL, false),
  (currval('questions_id_seq'), '優れた',   NULL, false);

-- 中級-262: remarkable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 262, 'choice', 1, 1,
   'remarkable',
   'The team achieved remarkable results despite limited resources.（チームは限られたリソースにもかかわらず注目すべき成果を上げました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '注目すべき', NULL, true),
  (currval('questions_id_seq'), '予想外の',   NULL, false),
  (currval('questions_id_seq'), '満足な',     NULL, false),
  (currval('questions_id_seq'), '優秀な',     NULL, false);

-- 中級-263: measure
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 263, 'choice', 1, 1,
   'measure',
   'The company implemented strict measures to protect customer data.（その会社は顧客データを保護するための厳格な対策を実施しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '対策',   NULL, true),
  (currval('questions_id_seq'), '規則',   NULL, false),
  (currval('questions_id_seq'), '手順',   NULL, false),
  (currval('questions_id_seq'), '方針',   NULL, false);

-- 中級-264: struggle
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 264, 'choice', 1, 1,
   'struggle',
   'Many small businesses struggle to compete with large corporations.（多くの中小企業は大企業と競争するのに苦労しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '苦労する', NULL, true),
  (currval('questions_id_seq'), '努力する', NULL, false),
  (currval('questions_id_seq'), '失敗する', NULL, false),
  (currval('questions_id_seq'), '挑戦する', NULL, false);

-- 中級-265: wage
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 265, 'choice', 1, 1,
   'wage',
   'The government announced an increase in the minimum wage next year.（政府は来年の最低賃金の引き上げを発表しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '賃金',   NULL, true),
  (currval('questions_id_seq'), '給料',   NULL, false),
  (currval('questions_id_seq'), '報酬',   NULL, false),
  (currval('questions_id_seq'), '手当',   NULL, false);

-- 中級-266: adapt
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 266, 'choice', 1, 1,
   'adapt',
   'Companies must adapt quickly to changes in market conditions.（企業は市場状況の変化に迅速に適応しなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '適応する', NULL, true),
  (currval('questions_id_seq'), '対応する', NULL, false),
  (currval('questions_id_seq'), '変化する', NULL, false),
  (currval('questions_id_seq'), '準備する', NULL, false);

-- 中級-267: ambitious
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 267, 'choice', 1, 1,
   'ambitious',
   'The company set an ambitious target of doubling its revenue in three years.（その会社は3年以内に収益を2倍にするという野心的な目標を設定しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '野心的な',   NULL, true),
  (currval('questions_id_seq'), '現実的な',   NULL, false),
  (currval('questions_id_seq'), '達成可能な', NULL, false),
  (currval('questions_id_seq'), '長期的な',   NULL, false);

-- 中級-268: capable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 268, 'choice', 1, 1,
   'capable',
   'We are looking for a capable individual to lead the new department.（新しい部門を率いる有能な人材を探しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '有能な',     NULL, true),
  (currval('questions_id_seq'), '経験豊富な', NULL, false),
  (currval('questions_id_seq'), '意欲的な',   NULL, false),
  (currval('questions_id_seq'), '熟練した',   NULL, false);

-- 中級-269: consequence
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 269, 'choice', 1, 1,
   'consequence',
   'Failing to meet the deadline could have serious consequences for the project.（締め切りを守れないことはプロジェクトに深刻な結果をもたらす可能性があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '結果',   NULL, true),
  (currval('questions_id_seq'), '影響',   NULL, false),
  (currval('questions_id_seq'), '問題',   NULL, false),
  (currval('questions_id_seq'), '損失',   NULL, false);

-- 中級-270: impose
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 270, 'choice', 1, 1,
   'impose',
   'The new regulation imposes stricter requirements on data privacy.（新しい規制はデータプライバシーに対してより厳格な要件を課しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '課す',     NULL, true),
  (currval('questions_id_seq'), '設定する', NULL, false),
  (currval('questions_id_seq'), '適用する', NULL, false),
  (currval('questions_id_seq'), '変更する', NULL, false);

-- 中級-271: latter
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 271, 'choice', 1, 1,
   'latter',
   'Of the two options presented, the board chose the latter.（提示された2つの選択肢のうち、取締役会は後者を選びました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '後者の', NULL, true),
  (currval('questions_id_seq'), '前者の', NULL, false),
  (currval('questions_id_seq'), '両方の', NULL, false),
  (currval('questions_id_seq'), '最初の', NULL, false);

-- 中級-272: output
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 272, 'choice', 1, 1,
   'output',
   'The factory has increased its daily output by 30 percent this year.（その工場は今年の日次産出量を30%増加させました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '産出量', NULL, true),
  (currval('questions_id_seq'), '売上高', NULL, false),
  (currval('questions_id_seq'), '収益',   NULL, false),
  (currval('questions_id_seq'), '能力',   NULL, false);

-- 中級-273: proudly
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 273, 'choice', 1, 1,
   'proudly',
   'The company proudly announced its 30th anniversary to the public.（その会社は創業30周年を誇りを持って公表しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '誇りを持って', NULL, true),
  (currval('questions_id_seq'), '正式に',       NULL, false),
  (currval('questions_id_seq'), '公式に',       NULL, false),
  (currval('questions_id_seq'), '感謝を込めて', NULL, false);

-- 中級-274: stable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 274, 'choice', 1, 1,
   'stable',
   'The company maintains a stable financial position despite market challenges.（その会社は市場の課題にもかかわらず安定した財務状況を維持しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '安定した', NULL, true),
  (currval('questions_id_seq'), '成長中の', NULL, false),
  (currval('questions_id_seq'), '確固たる', NULL, false),
  (currval('questions_id_seq'), '持続可能な', NULL, false);

-- 中級-275: transition
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 275, 'choice', 1, 1,
   'transition',
   'The company supported employees during the transition to remote work.（その会社は在宅勤務への移行中に従業員を支援しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '移行',   NULL, true),
  (currval('questions_id_seq'), '変化',   NULL, false),
  (currval('questions_id_seq'), '対応',   NULL, false),
  (currval('questions_id_seq'), '調整',   NULL, false);

-- 中級-276: consent
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 276, 'choice', 1, 1,
   'consent',
   'Written consent from the client is required before sharing their data.（クライアントのデータを共有する前に書面による同意が必要です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '同意',   NULL, true),
  (currval('questions_id_seq'), '許可',   NULL, false),
  (currval('questions_id_seq'), '承認',   NULL, false),
  (currval('questions_id_seq'), '契約',   NULL, false);

-- 中級-277: dependable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 277, 'choice', 1, 1,
   'dependable',
   'We are looking for a dependable supplier who can meet our delivery needs.（配送ニーズに応えられる頼りになるサプライヤーを探しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '頼りになる', NULL, true),
  (currval('questions_id_seq'), '効率的な',   NULL, false),
  (currval('questions_id_seq'), '低コストの', NULL, false),
  (currval('questions_id_seq'), '柔軟な',     NULL, false);

-- 中級-278: diligent
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 278, 'choice', 1, 1,
   'diligent',
   'The diligent accountant completed the audit report ahead of schedule.（勤勉な経理担当者は予定より早く監査報告書を完成させました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '勤勉な',   NULL, true),
  (currval('questions_id_seq'), '優秀な',   NULL, false),
  (currval('questions_id_seq'), '経験豊富な', NULL, false),
  (currval('questions_id_seq'), '献身的な', NULL, false);

-- 中級-279: illustrate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 279, 'choice', 1, 1,
   'illustrate',
   'The chart illustrates the steady increase in annual sales over five years.（グラフは5年間の年次売上の着実な増加を説明しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '説明する', NULL, true),
  (currval('questions_id_seq'), '示す',     NULL, false),
  (currval('questions_id_seq'), '記録する', NULL, false),
  (currval('questions_id_seq'), '比較する', NULL, false);

-- 中級-280: independently
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 280, 'choice', 1, 1,
   'independently',
   'She is capable of managing complex projects independently.（彼女は複雑なプロジェクトを独立して管理する能力があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '独立して',   NULL, true),
  (currval('questions_id_seq'), '自主的に',   NULL, false),
  (currval('questions_id_seq'), '効率的に',   NULL, false),
  (currval('questions_id_seq'), '責任を持って', NULL, false);

-- 中級-281: mission
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 281, 'choice', 1, 1,
   'mission',
   'The company''s mission is to provide affordable healthcare for everyone.（その会社の使命は誰もが手頃な医療を受けられるようにすることです。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '使命',   NULL, true),
  (currval('questions_id_seq'), '目標',   NULL, false),
  (currval('questions_id_seq'), '方針',   NULL, false),
  (currval('questions_id_seq'), '理念',   NULL, false);

-- 中級-282: moderate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 282, 'choice', 1, 1,
   'moderate',
   'The sales team achieved moderate growth despite a difficult market.（営業チームは困難な市場にもかかわらず適度な成長を達成しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '適度な',   NULL, true),
  (currval('questions_id_seq'), '大幅な',   NULL, false),
  (currval('questions_id_seq'), '安定した', NULL, false),
  (currval('questions_id_seq'), '継続的な', NULL, false);

-- 中級-283: outlook
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 283, 'choice', 1, 1,
   'outlook',
   'The economic outlook for next year is more positive than expected.（来年の経済見通しは予想よりも前向きです。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '見通し',   NULL, true),
  (currval('questions_id_seq'), '予測',     NULL, false),
  (currval('questions_id_seq'), '見解',     NULL, false),
  (currval('questions_id_seq'), '展望',     NULL, false);

-- 中級-284: precisely
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 284, 'choice', 1, 1,
   'precisely',
   'Please follow the instructions precisely to avoid any errors.（エラーを避けるために指示を正確に従ってください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '正確に',   NULL, true),
  (currval('questions_id_seq'), '慎重に',   NULL, false),
  (currval('questions_id_seq'), '注意深く', NULL, false),
  (currval('questions_id_seq'), '徹底的に', NULL, false);

-- 中級-285: concentrated
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 285, 'choice', 1, 1,
   'concentrated',
   'The company''s sales are concentrated in the metropolitan area.（その会社の売上は大都市圏に集中しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '集中した', NULL, true),
  (currval('questions_id_seq'), '分散した', NULL, false),
  (currval('questions_id_seq'), '限定した', NULL, false),
  (currval('questions_id_seq'), '特化した', NULL, false);

-- 中級-286: ample
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 286, 'choice', 1, 1,
   'ample',
   'There is ample parking space available for all conference attendees.（会議の参加者全員が利用できる十分な駐車スペースがあります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '十分な',   NULL, true),
  (currval('questions_id_seq'), '追加の',   NULL, false),
  (currval('questions_id_seq'), '限られた', NULL, false),
  (currval('questions_id_seq'), '無料の',   NULL, false);

-- 中級-287: asset
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 287, 'choice', 1, 1,
   'asset',
   'Her multilingual ability is a valuable asset to the international team.（彼女の多言語能力は国際チームにとって貴重な資産です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '資産',   NULL, true),
  (currval('questions_id_seq'), '強み',   NULL, false),
  (currval('questions_id_seq'), '能力',   NULL, false),
  (currval('questions_id_seq'), '財産',   NULL, false);

-- 中級-288: controversial
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 288, 'choice', 1, 1,
   'controversial',
   'The new pricing policy proved to be controversial among long-term clients.（新しい価格方針は長期クライアントの間で論争的であることが判明しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '論争的な', NULL, true),
  (currval('questions_id_seq'), '複雑な',   NULL, false),
  (currval('questions_id_seq'), '革新的な', NULL, false),
  (currval('questions_id_seq'), '予想外の', NULL, false);

-- 中級-289: disappointing
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 289, 'choice', 1, 1,
   'disappointing',
   'The quarterly sales figures were disappointing compared to last year.（四半期の売上高は昨年と比べて失望させるものでした。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '失望させる', NULL, true),
  (currval('questions_id_seq'), '予想外の',   NULL, false),
  (currval('questions_id_seq'), '不満足な',   NULL, false),
  (currval('questions_id_seq'), '低い',       NULL, false);

-- 中級-290: instrumental
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 290, 'choice', 1, 1,
   'instrumental',
   'Her leadership was instrumental in achieving the project''s success.（彼女のリーダーシップはプロジェクトの成功に重要な役割を果たしました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '重要な役割を果たす', NULL, true),
  (currval('questions_id_seq'), '不可欠な',           NULL, false),
  (currval('questions_id_seq'), '貢献した',           NULL, false),
  (currval('questions_id_seq'), '決定的な',           NULL, false);

-- 中級-291: interruption
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 291, 'choice', 1, 1,
   'interruption',
   'The system upgrade was completed without any interruption to services.（システムのアップグレードはサービスの中断なしに完了しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '中断',   NULL, true),
  (currval('questions_id_seq'), '遅延',   NULL, false),
  (currval('questions_id_seq'), '停止',   NULL, false),
  (currval('questions_id_seq'), '問題',   NULL, false);

-- 中級-292: perspective
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 292, 'choice', 1, 1,
   'perspective',
   'From a long-term perspective, investing in training pays off significantly.（長期的な視点から見ると、研修への投資は大きな効果をもたらします。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '視点',   NULL, true),
  (currval('questions_id_seq'), '観点',   NULL, false),
  (currval('questions_id_seq'), '見解',   NULL, false),
  (currval('questions_id_seq'), '立場',   NULL, false);

-- 中級-293: scope
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 293, 'choice', 1, 1,
   'scope',
   'Please review the scope of the project before signing the contract.（契約書に署名する前にプロジェクトの範囲を確認してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '範囲',   NULL, true),
  (currval('questions_id_seq'), '目的',   NULL, false),
  (currval('questions_id_seq'), '規模',   NULL, false),
  (currval('questions_id_seq'), '内容',   NULL, false);

-- 中級-294: speculation
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 294, 'choice', 1, 1,
   'speculation',
   'There has been widespread speculation about the company''s future plans.（その会社の将来の計画についての推測が広まっています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '推測',   NULL, true),
  (currval('questions_id_seq'), '報道',   NULL, false),
  (currval('questions_id_seq'), '噂',     NULL, false),
  (currval('questions_id_seq'), '憶測',   NULL, false);

-- 中級-295: supplement
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 295, 'choice', 1, 1,
   'supplement',
   'The company decided to supplement its existing product line with new models.（その会社は新しいモデルで既存の製品ラインを補足することを決定しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '補足する', NULL, true),
  (currval('questions_id_seq'), '追加する', NULL, false),
  (currval('questions_id_seq'), '拡張する', NULL, false),
  (currval('questions_id_seq'), '置き換える', NULL, false);

-- 中級-296: understaffed
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 296, 'choice', 1, 1,
   'understaffed',
   'The department is understaffed and urgently needs three more employees.（その部署は人手不足で、さらに3名の従業員が緊急に必要です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '人手不足の',   NULL, true),
  (currval('questions_id_seq'), '過剰人員の',   NULL, false),
  (currval('questions_id_seq'), '多忙な',       NULL, false),
  (currval('questions_id_seq'), '業務過多の',   NULL, false);

-- 中級-297: rarely
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 297, 'choice', 1, 1,
   'rarely',
   'Customer complaints are rarely received about our after-sales service.（アフターセールスサービスについての顧客からのクレームはめったにありません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'めったにない', NULL, true),
  (currval('questions_id_seq'), '時々',         NULL, false),
  (currval('questions_id_seq'), '通常',         NULL, false),
  (currval('questions_id_seq'), 'ほぼ',         NULL, false);

-- 中級-298: caution
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 298, 'choice', 1, 1,
   'caution',
   'Employees should exercise caution when handling fragile equipment.（精密機器を取り扱う際は従業員が注意を払うべきです。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '注意',   NULL, true),
  (currval('questions_id_seq'), '責任',   NULL, false),
  (currval('questions_id_seq'), '訓練',   NULL, false),
  (currval('questions_id_seq'), '規則',   NULL, false);

-- 中級-299: legislation
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 299, 'choice', 1, 1,
   'legislation',
   'New environmental legislation will take effect at the start of next year.（新しい環境法律が来年の初めから施行されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '法律',   NULL, true),
  (currval('questions_id_seq'), '規制',   NULL, false),
  (currval('questions_id_seq'), '政策',   NULL, false),
  (currval('questions_id_seq'), '条例',   NULL, false);

-- 中級-300: logical
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (15, NULL, 300, 'choice', 1, 1,
   'logical',
   'The manager provided a logical explanation for the budget increase.（マネージャーは予算増加について論理的な説明を提供しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '論理的な',   NULL, true),
  (currval('questions_id_seq'), '詳細な',     NULL, false),
  (currval('questions_id_seq'), '説得力のある', NULL, false),
  (currval('questions_id_seq'), '客観的な',   NULL, false);


-- 上級（section_id=16）
-- ----------------------------------------

-- 上級-1: lumber
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 1, 'choice', 1, 1,
   'lumber',
   'The construction company ordered a large supply of lumber for the new building project.（建設会社は新しい建設プロジェクトのために大量の木材を注文しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '木材', NULL, true),
  (currval('questions_id_seq'), '石材', NULL, false),
  (currval('questions_id_seq'), '金属', NULL, false),
  (currval('questions_id_seq'), '繊維', NULL, false);

-- 上級-2: reverse
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 2, 'choice', 1, 1,
   'reverse',
   'The court decided to reverse the earlier ruling after reviewing new evidence.（裁判所は新たな証拠を検討した後、以前の判決を覆すことを決定しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '覆す',   NULL, true),
  (currval('questions_id_seq'), '承認する', NULL, false),
  (currval('questions_id_seq'), '延長する', NULL, false),
  (currval('questions_id_seq'), '強化する', NULL, false);

-- 上級-3: voluntary
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 3, 'choice', 1, 1,
   'voluntary',
   'Participation in the training session is voluntary, but strongly encouraged.（研修への参加は任意ですが、強く推奨されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '任意の',   NULL, true),
  (currval('questions_id_seq'), '強制的な', NULL, false),
  (currval('questions_id_seq'), '段階的な', NULL, false),
  (currval('questions_id_seq'), '恒久的な', NULL, false);

-- 上級-4: contractors on-site
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 4, 'choice', 1, 1,
   'contractors on-site',
   'All contractors on-site must follow the facility safety guidelines at all times.（現場のすべての請負業者は常に施設の安全ガイドラインに従わなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '現場請負業者', NULL, true),
  (currval('questions_id_seq'), '社内従業員',   NULL, false),
  (currval('questions_id_seq'), '外部顧問',     NULL, false),
  (currval('questions_id_seq'), '派遣社員',     NULL, false);

-- 上級-5: comprehensive
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 5, 'choice', 1, 1,
   'comprehensive',
   'We need a comprehensive plan to address all aspects of the issue.（問題のあらゆる側面に対処するための包括的な計画が必要です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '包括的な', NULL, true),
  (currval('questions_id_seq'), '部分的な', NULL, false),
  (currval('questions_id_seq'), '暫定的な', NULL, false),
  (currval('questions_id_seq'), '簡潔な',   NULL, false);

-- 上級-6: confidential
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 6, 'choice', 1, 1,
   'confidential',
   'All employees must keep client information strictly confidential.（全従業員は顧客情報を厳重に機密として扱わなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '機密の',   NULL, true),
  (currval('questions_id_seq'), '公開の',   NULL, false),
  (currval('questions_id_seq'), '任意の',   NULL, false),
  (currval('questions_id_seq'), '一般的な', NULL, false);

-- 上級-7: expertise
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 7, 'choice', 1, 1,
   'expertise',
   'Her expertise in data analysis was invaluable to the project team.（データ分析における彼女の専門知識はプロジェクトチームに非常に貴重でした。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '専門知識', NULL, true),
  (currval('questions_id_seq'), '経験年数', NULL, false),
  (currval('questions_id_seq'), '資格証明', NULL, false),
  (currval('questions_id_seq'), '業務実績', NULL, false);

-- 上級-8: premier
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 8, 'choice', 1, 1,
   'premier',
   'Tokyo is one of the world''s premier business destinations.（東京は世界有数のビジネス目的地の一つです。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '最高の',   NULL, true),
  (currval('questions_id_seq'), '最後の',   NULL, false),
  (currval('questions_id_seq'), '暫定的な', NULL, false),
  (currval('questions_id_seq'), '一般的な', NULL, false);

-- 上級-9: souvenir
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 9, 'choice', 1, 1,
   'souvenir',
   'She bought several souvenirs for her family at the airport gift shop.（彼女は空港のギフトショップで家族へのお土産をいくつか購入しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '土産品', NULL, true),
  (currval('questions_id_seq'), '備品',   NULL, false),
  (currval('questions_id_seq'), '補助金', NULL, false),
  (currval('questions_id_seq'), '領収書', NULL, false);

-- 上級-10: rafting
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 10, 'choice', 1, 1,
   'rafting',
   'The team-building event included white water rafting on the river.（チームビルディングイベントには川でのラフティングが含まれていました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ラフティング', NULL, true),
  (currval('questions_id_seq'), 'ハイキング',   NULL, false),
  (currval('questions_id_seq'), 'サーフィン',   NULL, false),
  (currval('questions_id_seq'), 'スキー',       NULL, false);

-- 上級-11: compartment
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 11, 'choice', 1, 1,
   'compartment',
   'Please store your luggage in the overhead compartment on the train.（電車内の荷棚に荷物を収納してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '仕切り', NULL, true),
  (currval('questions_id_seq'), '廊下',   NULL, false),
  (currval('questions_id_seq'), '出口',   NULL, false),
  (currval('questions_id_seq'), '受付',   NULL, false);

-- 上級-12: fabric
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 12, 'choice', 1, 1,
   'fabric',
   'The designer carefully selected a durable fabric for the new uniform.（デザイナーは新しいユニフォームのために耐久性のある生地を慎重に選びました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '生地', NULL, true),
  (currval('questions_id_seq'), '染料', NULL, false),
  (currval('questions_id_seq'), '縫い目', NULL, false),
  (currval('questions_id_seq'), '裏地', NULL, false);

-- 上級-13: spacious
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 13, 'choice', 1, 1,
   'spacious',
   'The new office features spacious workstations and comfortable meeting rooms.（新しいオフィスには広々としたワークステーションと快適な会議室があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '広々とした', NULL, true),
  (currval('questions_id_seq'), '狭い',       NULL, false),
  (currval('questions_id_seq'), '暗い',       NULL, false),
  (currval('questions_id_seq'), '古い',       NULL, false);

-- 上級-14: upgrade
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 14, 'choice', 1, 1,
   'upgrade',
   'The company plans to upgrade its computer systems to improve efficiency.（会社は効率を改善するためにコンピューターシステムを改善する予定です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '改善する', NULL, true),
  (currval('questions_id_seq'), '削除する', NULL, false),
  (currval('questions_id_seq'), '制限する', NULL, false),
  (currval('questions_id_seq'), '延期する', NULL, false);

-- 上級-15: showcase
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 15, 'choice', 1, 1,
   'showcase',
   'The trade fair provided an excellent opportunity to showcase new products.（見本市は新製品を展示する絶好の機会を提供しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '展示する', NULL, true),
  (currval('questions_id_seq'), '隠す',     NULL, false),
  (currval('questions_id_seq'), '廃棄する', NULL, false),
  (currval('questions_id_seq'), '保管する', NULL, false);

-- 上級-16: commuter
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 16, 'choice', 1, 1,
   'commuter',
   'The new train service was designed to ease daily travel for commuters.（新しい鉄道サービスは通勤者の毎日の移動を楽にするために設計されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '通勤者', NULL, true),
  (currval('questions_id_seq'), '旅行者', NULL, false),
  (currval('questions_id_seq'), '観光客', NULL, false),
  (currval('questions_id_seq'), '移住者', NULL, false);

-- 上級-17: enhance
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 17, 'choice', 1, 1,
   'enhance',
   'Regular feedback sessions can enhance employee performance and morale.（定期的なフィードバックセッションは従業員のパフォーマンスと士気を高めることができます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '高める', NULL, true),
  (currval('questions_id_seq'), '減らす', NULL, false),
  (currval('questions_id_seq'), '維持する', NULL, false),
  (currval('questions_id_seq'), '廃止する', NULL, false);

-- 上級-18: freight
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 18, 'choice', 1, 1,
   'freight',
   'The freight was shipped by air to ensure timely delivery to the client.（貨物はクライアントへの迅速な配達を確保するために空輸されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '貨物', NULL, true),
  (currval('questions_id_seq'), '旅客', NULL, false),
  (currval('questions_id_seq'), '手荷物', NULL, false),
  (currval('questions_id_seq'), '書類', NULL, false);

-- 上級-19: nominate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 19, 'choice', 1, 1,
   'nominate',
   'The board decided to nominate Mr. Tanaka for the position of CFO.（取締役会は田中氏をCFOの職に指名することを決定しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '指名する', NULL, true),
  (currval('questions_id_seq'), '辞退する', NULL, false),
  (currval('questions_id_seq'), '承認する', NULL, false),
  (currval('questions_id_seq'), '評価する', NULL, false);

-- 上級-20: discontinued
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 20, 'choice', 1, 1,
   'discontinued',
   'The product was discontinued due to low sales and high production costs.（その製品は売上不振と高い製造コストのために廃止されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '廃止された', NULL, true),
  (currval('questions_id_seq'), '更新された', NULL, false),
  (currval('questions_id_seq'), '限定された', NULL, false),
  (currval('questions_id_seq'), '延長された', NULL, false);

-- 上級-21: mentoring
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 21, 'choice', 1, 1,
   'mentoring',
   'The company launched a mentoring program to help new employees adjust to the workplace.（会社は新入社員の職場への適応を助けるためにメンタリングプログラムを開始しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '指導', NULL, true),
  (currval('questions_id_seq'), '監視', NULL, false),
  (currval('questions_id_seq'), '評価', NULL, false),
  (currval('questions_id_seq'), '報告', NULL, false);

-- 上級-22: personalized
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 22, 'choice', 1, 1,
   'personalized',
   'Customers appreciate the personalized service provided at the luxury hotel.（顧客はその高級ホテルで提供される個別のサービスを高く評価しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '個別の',       NULL, true),
  (currval('questions_id_seq'), '標準の',       NULL, false),
  (currval('questions_id_seq'), '共通の',       NULL, false),
  (currval('questions_id_seq'), '簡略化された', NULL, false);

-- 上級-23: pharmacy
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 23, 'choice', 1, 1,
   'pharmacy',
   'The pharmacy on the ground floor is open until nine o''clock in the evening.（1階の薬局は夜9時まで営業しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '薬局',     NULL, true),
  (currval('questions_id_seq'), '診療所',   NULL, false),
  (currval('questions_id_seq'), '病院',     NULL, false),
  (currval('questions_id_seq'), '保険会社', NULL, false);

-- 上級-24: excerpt
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 24, 'choice', 1, 1,
   'excerpt',
   'The newsletter included an excerpt from the CEO''s upcoming book on leadership.（ニュースレターにはリーダーシップに関するCEOの近刊書の抜粋が含まれていました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '抜粋', NULL, true),
  (currval('questions_id_seq'), '要約', NULL, false),
  (currval('questions_id_seq'), '全文', NULL, false),
  (currval('questions_id_seq'), '付録', NULL, false);

-- 上級-25: publicize
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 25, 'choice', 1, 1,
   'publicize',
   'The marketing team will publicize the new product launch across social media channels.（マーケティングチームはソーシャルメディアチャンネルで新製品の発売を宣伝します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '宣伝する',   NULL, true),
  (currval('questions_id_seq'), '秘密にする', NULL, false),
  (currval('questions_id_seq'), '調査する',   NULL, false),
  (currval('questions_id_seq'), '記録する',   NULL, false);

-- 上級-26: tuition
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 26, 'choice', 1, 1,
   'tuition',
   'The company offers to cover tuition for employees pursuing advanced degrees.（会社は上位学位を取得しようとしている従業員の授業料を負担することを提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '授業料', NULL, true),
  (currval('questions_id_seq'), '入学金', NULL, false),
  (currval('questions_id_seq'), '奨学金', NULL, false),
  (currval('questions_id_seq'), '生活費', NULL, false);

-- 上級-27: compliance
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 27, 'choice', 1, 1,
   'compliance',
   'All departments must ensure full compliance with the new data protection regulations.（全部門は新しいデータ保護規制への完全な法令遵守を確保しなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '法令遵守', NULL, true),
  (currval('questions_id_seq'), '違反',     NULL, false),
  (currval('questions_id_seq'), '提案',     NULL, false),
  (currval('questions_id_seq'), '競争',     NULL, false);

-- 上級-28: clarify
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 28, 'choice', 1, 1,
   'clarify',
   'The manager held a meeting to clarify the new safety procedures for all staff.（マネージャーは全スタッフに新しい安全手順を明確にするために会議を開きました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '明確にする', NULL, true),
  (currval('questions_id_seq'), '曖昧にする', NULL, false),
  (currval('questions_id_seq'), '削除する',   NULL, false),
  (currval('questions_id_seq'), '延期する',   NULL, false);

-- 上級-29: municipal
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 29, 'choice', 1, 1,
   'municipal',
   'The municipal government approved a plan to build a new community center.（市の政府はコミュニティセンターの新設計画を承認しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '市の',   NULL, true),
  (currval('questions_id_seq'), '国の',   NULL, false),
  (currval('questions_id_seq'), '民間の', NULL, false),
  (currval('questions_id_seq'), '個人の', NULL, false);

-- 上級-30: respectively
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 30, 'choice', 1, 1,
   'respectively',
   'The first and second prizes were awarded to Ms. Kim and Mr. Lee, respectively.（1位と2位はそれぞれキム氏とリー氏に授与されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'それぞれ', NULL, true),
  (currval('questions_id_seq'), '同様に',   NULL, false),
  (currval('questions_id_seq'), '概して',   NULL, false),
  (currval('questions_id_seq'), '特に',     NULL, false);

-- 上級-31: durable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 31, 'choice', 1, 1,
   'durable',
   'Our products are made from durable materials designed to last for many years.（私たちの製品は何年も続くよう設計された耐久性のある素材で作られています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '耐久性のある', NULL, true),
  (currval('questions_id_seq'), '軽量の',       NULL, false),
  (currval('questions_id_seq'), '安価な',       NULL, false),
  (currval('questions_id_seq'), '一時的な',     NULL, false);

-- 上級-32: landmark
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 32, 'choice', 1, 1,
   'landmark',
   'The historic landmark attracts thousands of tourists to the city every year.（その歴史的な名所は毎年何千人もの観光客を市内に引きつけます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '名所',   NULL, true),
  (currval('questions_id_seq'), '地図',   NULL, false),
  (currval('questions_id_seq'), '目的地', NULL, false),
  (currval('questions_id_seq'), '建設地', NULL, false);

-- 上級-33: portfolio
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 33, 'choice', 1, 1,
   'portfolio',
   'Please submit your portfolio along with your job application form.（応募書類と一緒に作品集を提出してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '作品集', NULL, true),
  (currval('questions_id_seq'), '報告書', NULL, false),
  (currval('questions_id_seq'), '契約書', NULL, false),
  (currval('questions_id_seq'), '名刺',   NULL, false);

-- 上級-34: recipient
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 34, 'choice', 1, 1,
   'recipient',
   'The award recipient gave a heartfelt speech at the annual company ceremony.（年次式典で受賞者は心のこもったスピーチをしました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '受取人', NULL, true),
  (currval('questions_id_seq'), '送付者', NULL, false),
  (currval('questions_id_seq'), '承認者', NULL, false),
  (currval('questions_id_seq'), '監督者', NULL, false);

-- 上級-35: prototype
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 35, 'choice', 1, 1,
   'prototype',
   'Engineers tested the prototype thoroughly before approving mass production.（エンジニアは大量生産を承認する前に試作品を徹底的にテストしました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '試作品',   NULL, true),
  (currval('questions_id_seq'), '最終製品', NULL, false),
  (currval('questions_id_seq'), '設計図',   NULL, false),
  (currval('questions_id_seq'), '部品',     NULL, false);

-- 上級-36: transit
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 36, 'choice', 1, 1,
   'transit',
   'The goods were damaged while in transit and never reached the warehouse.（商品は輸送中に損傷し、倉庫に届くことはありませんでした。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '輸送', NULL, true),
  (currval('questions_id_seq'), '保管', NULL, false),
  (currval('questions_id_seq'), '生産', NULL, false),
  (currval('questions_id_seq'), '販売', NULL, false);

-- 上級-37: verify
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 37, 'choice', 1, 1,
   'verify',
   'Please verify your account details before proceeding with the transaction.（取引を進める前にアカウントの詳細を確認してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '確認する', NULL, true),
  (currval('questions_id_seq'), '無視する', NULL, false),
  (currval('questions_id_seq'), '削除する', NULL, false),
  (currval('questions_id_seq'), '変更する', NULL, false);

-- 上級-38: managerial
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 38, 'choice', 1, 1,
   'managerial',
   'She was promoted to a managerial position after five years of excellent performance.（彼女は5年間の優れたパフォーマンスの後、管理職の職位に昇進しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '管理職の', NULL, true),
  (currval('questions_id_seq'), '技術的な', NULL, false),
  (currval('questions_id_seq'), '事務的な', NULL, false),
  (currval('questions_id_seq'), '一般的な', NULL, false);

-- 上級-39: culinary
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 39, 'choice', 1, 1,
   'culinary',
   'The resort is famous for its exceptional culinary offerings featuring local ingredients.（そのリゾートは地元の食材を使った優れた料理の提供で有名です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '料理の', NULL, true),
  (currval('questions_id_seq'), '音楽の', NULL, false),
  (currval('questions_id_seq'), '農業の', NULL, false),
  (currval('questions_id_seq'), '工業の', NULL, false);

-- 上級-40: attire
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 40, 'choice', 1, 1,
   'attire',
   'Business attire is required for all participants attending the client presentation.（クライアントプレゼンテーションに参加するすべての参加者にはビジネス服装が必要です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '服装', NULL, true),
  (currval('questions_id_seq'), '行動', NULL, false),
  (currval('questions_id_seq'), '資格', NULL, false),
  (currval('questions_id_seq'), '出席', NULL, false);

-- 上級-41: reimburse
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 41, 'choice', 1, 1,
   'reimburse',
   'The company will reimburse all travel expenses incurred during the business trip.（会社は出張中に発生したすべての出張費を払い戻します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '払い戻す', NULL, true),
  (currval('questions_id_seq'), '請求する', NULL, false),
  (currval('questions_id_seq'), '節約する', NULL, false),
  (currval('questions_id_seq'), '投資する', NULL, false);

-- 上級-42: courteous
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 42, 'choice', 1, 1,
   'courteous',
   'All staff are expected to be courteous and helpful to customers at all times.（全スタッフは常に顧客に礼儀正しく親切にすることが求められます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '礼儀正しい', NULL, true),
  (currval('questions_id_seq'), '厳格な',     NULL, false),
  (currval('questions_id_seq'), '無関心な',   NULL, false),
  (currval('questions_id_seq'), '積極的な',   NULL, false);

-- 上級-43: furnished
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 43, 'choice', 1, 1,
   'furnished',
   'The company provides fully furnished apartments for employees transferred overseas.（会社は海外に転勤した従業員のために完全に家具付きのアパートを提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '家具付きの',   NULL, true),
  (currval('questions_id_seq'), '改装済みの',   NULL, false),
  (currval('questions_id_seq'), '空の',         NULL, false),
  (currval('questions_id_seq'), '新築の',       NULL, false);

-- 上級-44: knowledgeable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 44, 'choice', 1, 1,
   'knowledgeable',
   'Our customer service team is highly knowledgeable about all of our product lines.（私たちのカスタマーサービスチームはすべての製品ラインについて非常に知識があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '知識のある',   NULL, true),
  (currval('questions_id_seq'), '経験不足の',   NULL, false),
  (currval('questions_id_seq'), '専任の',       NULL, false),
  (currval('questions_id_seq'), '熱心な',       NULL, false);

-- 上級-45: craftspeople
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 45, 'choice', 1, 1,
   'craftspeople',
   'Skilled craftspeople built each piece of furniture entirely by hand.（熟練した職人が各家具を完全に手作りしました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '職人',   NULL, true),
  (currval('questions_id_seq'), '管理者', NULL, false),
  (currval('questions_id_seq'), '販売員', NULL, false),
  (currval('questions_id_seq'), '設計者', NULL, false);

-- 上級-46: delete
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 46, 'choice', 1, 1,
   'delete',
   'Please delete any outdated files from the shared server to free up storage space.（共有サーバーの空き容量を確保するために古いファイルを削除してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '削除する', NULL, true),
  (currval('questions_id_seq'), '追加する', NULL, false),
  (currval('questions_id_seq'), '保存する', NULL, false),
  (currval('questions_id_seq'), '転送する', NULL, false);

-- 上級-47: emerging
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 47, 'choice', 1, 1,
   'emerging',
   'Investors are showing strong interest in emerging markets in Southeast Asia.（投資家は東南アジアの新興市場に強い関心を示しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '新興の',   NULL, true),
  (currval('questions_id_seq'), '衰退した', NULL, false),
  (currval('questions_id_seq'), '確立した', NULL, false),
  (currval('questions_id_seq'), '国内の',   NULL, false);

-- 上級-48: enroll
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 48, 'choice', 1, 1,
   'enroll',
   'Employees may enroll in the new health insurance plan during the open enrollment period.（従業員はオープン登録期間中に新しい健康保険プランに登録することができます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '登録する', NULL, true),
  (currval('questions_id_seq'), '退会する', NULL, false),
  (currval('questions_id_seq'), '承認する', NULL, false),
  (currval('questions_id_seq'), '更新する', NULL, false);

-- 上級-49: proficiency
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 49, 'choice', 1, 1,
   'proficiency',
   'Applicants must demonstrate proficiency in both English and Japanese to qualify.（応募者は資格を得るために英語と日本語の両方における熟達度を示さなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '熟達度',   NULL, true),
  (currval('questions_id_seq'), '資格',     NULL, false),
  (currval('questions_id_seq'), '経験年数', NULL, false),
  (currval('questions_id_seq'), '教育歴',   NULL, false);

-- 上級-50: scenic
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 50, 'choice', 1, 1,
   'scenic',
   'The scenic route through the mountains is very popular with tourists and cyclists.（山を通る景色の良いルートは観光客とサイクリストに非常に人気があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '景色の良い',     NULL, true),
  (currval('questions_id_seq'), '交通の便が良い', NULL, false),
  (currval('questions_id_seq'), '静かな',         NULL, false),
  (currval('questions_id_seq'), '近代的な',       NULL, false);
-- 上級-51: state-of-the-art
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 51, 'choice', 1, 1,
   'state-of-the-art',
   'The laboratory is equipped with state-of-the-art scientific instruments and technology.（実験室は最先端の科学機器と技術を備えています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '最先端の',   NULL, true),
  (currval('questions_id_seq'), '伝統的な',   NULL, false),
  (currval('questions_id_seq'), '一般的な',   NULL, false),
  (currval('questions_id_seq'), '低価格の',   NULL, false);

-- 上級-52: cuisine
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 52, 'choice', 1, 1,
   'cuisine',
   'The restaurant specializes in authentic French cuisine prepared by a renowned chef.（そのレストランは著名なシェフが作る本格的なフランス料理を専門としています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '料理', NULL, true),
  (currval('questions_id_seq'), '食器', NULL, false),
  (currval('questions_id_seq'), '食材', NULL, false),
  (currval('questions_id_seq'), '食堂', NULL, false);

-- 上級-53: acclaimed
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 53, 'choice', 1, 1,
   'acclaimed',
   'The acclaimed architect designed several award-winning public buildings in the city.（高く評価された建築家は市内にいくつかの受賞歴のある公共建築物を設計しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '高く評価された', NULL, true),
  (currval('questions_id_seq'), '批判された',     NULL, false),
  (currval('questions_id_seq'), '無名の',         NULL, false),
  (currval('questions_id_seq'), '一般的な',       NULL, false);

-- 上級-54: certified
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 54, 'choice', 1, 1,
   'certified',
   'Only certified technicians are allowed to perform maintenance on this equipment.（認定された技術者のみがこの機器のメンテナンスを行うことが許可されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '認定された',   NULL, true),
  (currval('questions_id_seq'), '申請中の',     NULL, false),
  (currval('questions_id_seq'), '廃止された',   NULL, false),
  (currval('questions_id_seq'), '一時的な',     NULL, false);

-- 上級-55: medication
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 55, 'choice', 1, 1,
   'medication',
   'Please consult a doctor before starting any new medication for your condition.（症状に対して新しい薬を服用する前に医師に相談してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '薬',     NULL, true),
  (currval('questions_id_seq'), '診断',   NULL, false),
  (currval('questions_id_seq'), '処方箋', NULL, false),
  (currval('questions_id_seq'), '治療法', NULL, false);

-- 上級-56: overview
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 56, 'choice', 1, 1,
   'overview',
   'The presentation began with a brief overview of the company''s annual performance.（プレゼンテーションは会社の年次業績の概要で始まりました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '概要', NULL, true),
  (currval('questions_id_seq'), '詳細', NULL, false),
  (currval('questions_id_seq'), '結論', NULL, false),
  (currval('questions_id_seq'), '付録', NULL, false);

-- 上級-57: resistant
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 57, 'choice', 1, 1,
   'resistant',
   'This special coating makes the surface water-resistant and much easier to clean.（この特殊コーティングにより表面は耐水性があり、清潔にしやすくなります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '耐性のある',   NULL, true),
  (currval('questions_id_seq'), '敏感な',       NULL, false),
  (currval('questions_id_seq'), '脆弱な',       NULL, false),
  (currval('questions_id_seq'), '適応性のある', NULL, false);

-- 上級-58: superb
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 58, 'choice', 1, 1,
   'superb',
   'The chef received a standing ovation for his superb culinary creations at the gala.（シェフはガラでの素晴らしい料理の創作に対してスタンディングオベーションを受けました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '素晴らしい', NULL, true),
  (currval('questions_id_seq'), '普通の',     NULL, false),
  (currval('questions_id_seq'), '欠陥のある', NULL, false),
  (currval('questions_id_seq'), '平均的な',   NULL, false);

-- 上級-59: array
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 59, 'choice', 1, 1,
   'array',
   'The store offers an impressive array of imported goods from around the world.（その店は世界中からの輸入品の印象的な多種多様な品ぞろえを提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '多種多様な', NULL, true),
  (currval('questions_id_seq'), '限定された', NULL, false),
  (currval('questions_id_seq'), '均一な',     NULL, false),
  (currval('questions_id_seq'), '少数の',     NULL, false);

-- 上級-60: informative
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 60, 'choice', 1, 1,
   'informative',
   'The workshop was highly informative and gave participants valuable industry insights.（ワークショップは非常に有益で、参加者に貴重な業界の知見を与えました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '有益な',       NULL, true),
  (currval('questions_id_seq'), '退屈な',       NULL, false),
  (currval('questions_id_seq'), '誤解を招く',   NULL, false),
  (currval('questions_id_seq'), '不完全な',     NULL, false);

-- 上級-61: nationwide
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 61, 'choice', 1, 1,
   'nationwide',
   'The company launched a nationwide campaign to promote its new product line.（会社は新しい製品ラインを宣伝するために全国的なキャンペーンを開始しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '全国的な',   NULL, true),
  (currval('questions_id_seq'), '地域的な',   NULL, false),
  (currval('questions_id_seq'), '国際的な',   NULL, false),
  (currval('questions_id_seq'), '都市の',     NULL, false);

-- 上級-62: outdated
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 62, 'choice', 1, 1,
   'outdated',
   'The company decided to replace its outdated computer systems with modern equipment.（会社は時代遅れのコンピューターシステムを最新の機器に置き換えることを決定しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '時代遅れの', NULL, true),
  (currval('questions_id_seq'), '最新の',     NULL, false),
  (currval('questions_id_seq'), '革新的な',   NULL, false),
  (currval('questions_id_seq'), '標準的な',   NULL, false);

-- 上級-63: shareholder
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 63, 'choice', 1, 1,
   'shareholder',
   'The annual report was distributed to all shareholders before the general meeting.（年次報告書は総会前にすべての株主に配布されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '株主',   NULL, true),
  (currval('questions_id_seq'), '取締役', NULL, false),
  (currval('questions_id_seq'), '顧客',   NULL, false),
  (currval('questions_id_seq'), '従業員', NULL, false);

-- 上級-64: voucher
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 64, 'choice', 1, 1,
   'voucher',
   'Customers who spend over five thousand yen will receive a voucher for their next visit.（5千円以上お買い上げのお客様は次回ご来店用の割引券を受け取ります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '割引券', NULL, true),
  (currval('questions_id_seq'), '領収書', NULL, false),
  (currval('questions_id_seq'), '請求書', NULL, false),
  (currval('questions_id_seq'), '契約書', NULL, false);

-- 上級-65: adjacent
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 65, 'choice', 1, 1,
   'adjacent',
   'The hotel is adjacent to the convention center, making it very convenient for attendees.（そのホテルはコンベンションセンターに隣接しており、参加者にとって非常に便利です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '隣接した', NULL, true),
  (currval('questions_id_seq'), '離れた',   NULL, false),
  (currval('questions_id_seq'), '向かいの', NULL, false),
  (currval('questions_id_seq'), '地下の',   NULL, false);

-- 上級-66: correspondence
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 66, 'choice', 1, 1,
   'correspondence',
   'All official correspondence should be directed to the company''s legal department.（すべての公式な通信は会社の法務部門に宛ててください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '通信', NULL, true),
  (currval('questions_id_seq'), '会議', NULL, false),
  (currval('questions_id_seq'), '調査', NULL, false),
  (currval('questions_id_seq'), '報告', NULL, false);

-- 上級-67: detergent
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 67, 'choice', 1, 1,
   'detergent',
   'The maintenance team uses industrial-grade detergent to clean the factory floor.（メンテナンスチームは工場の床を清潔にするために工業用洗剤を使用します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '洗剤',   NULL, true),
  (currval('questions_id_seq'), '燃料',   NULL, false),
  (currval('questions_id_seq'), '潤滑油', NULL, false),
  (currval('questions_id_seq'), '接着剤', NULL, false);

-- 上級-68: duration
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 68, 'choice', 1, 1,
   'duration',
   'The contract specifies a minimum duration of one year for all lease agreements.（契約書はすべての賃貸借契約の最低期間を1年と定めています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '期間', NULL, true),
  (currval('questions_id_seq'), '頻度', NULL, false),
  (currval('questions_id_seq'), '費用', NULL, false),
  (currval('questions_id_seq'), '場所', NULL, false);

-- 上級-69: functional
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 69, 'choice', 1, 1,
   'functional',
   'The office renovation focused on creating a more functional workspace for all employees.（オフィスの改装は全従業員のためにより機能的な作業スペースを作ることに重点を置きました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '機能的な',   NULL, true),
  (currval('questions_id_seq'), '装飾的な',   NULL, false),
  (currval('questions_id_seq'), '老朽化した', NULL, false),
  (currval('questions_id_seq'), '故障した',   NULL, false);

-- 上級-70: hands-on
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 70, 'choice', 1, 1,
   'hands-on',
   'New employees receive hands-on training during their first two weeks on the job.（新入社員は最初の2週間の実務中に実践的な研修を受けます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '実践的な', NULL, true),
  (currval('questions_id_seq'), '理論的な', NULL, false),
  (currval('questions_id_seq'), '観察的な', NULL, false),
  (currval('questions_id_seq'), '遠隔の',   NULL, false);

-- 上級-71: intensive
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 71, 'choice', 1, 1,
   'intensive',
   'The intensive language course runs for six weeks and includes daily lessons.（集中語学コースは6週間続き、毎日のレッスンが含まれます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '集中的な',   NULL, true),
  (currval('questions_id_seq'), '散発的な',   NULL, false),
  (currval('questions_id_seq'), '短期的な',   NULL, false),
  (currval('questions_id_seq'), '基礎的な',   NULL, false);

-- 上級-72: last-minute
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 72, 'choice', 1, 1,
   'last-minute',
   'A last-minute cancellation forced the team to reschedule the important presentation.（土壇場のキャンセルにより、チームは重要なプレゼンテーションを再スケジュールすることになりました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '土壇場の',   NULL, true),
  (currval('questions_id_seq'), '事前の',     NULL, false),
  (currval('questions_id_seq'), '定期的な',   NULL, false),
  (currval('questions_id_seq'), '長期的な',   NULL, false);

-- 上級-73: thrilled
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 73, 'choice', 1, 1,
   'thrilled',
   'The staff were thrilled to hear that the company had won the prestigious industry award.（スタッフは会社が権威ある業界賞を受賞したと聞いて興奮しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '興奮した',   NULL, true),
  (currval('questions_id_seq'), '落胆した',   NULL, false),
  (currval('questions_id_seq'), '疲れた',     NULL, false),
  (currval('questions_id_seq'), '安心した',   NULL, false);

-- 上級-74: spectacular
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 74, 'choice', 1, 1,
   'spectacular',
   'Guests enjoyed a spectacular fireworks display during the outdoor anniversary celebration.（ゲストは屋外の記念式典の間に壮観な花火を楽しみました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '壮観な',   NULL, true),
  (currval('questions_id_seq'), '平凡な',   NULL, false),
  (currval('questions_id_seq'), '小規模な', NULL, false),
  (currval('questions_id_seq'), '地味な',   NULL, false);

-- 上級-75: entrepreneur
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 75, 'choice', 1, 1,
   'entrepreneur',
   'The young entrepreneur launched a successful tech startup at the age of twenty-five.（その若い起業家は25歳でテクノロジースタートアップを成功させて立ち上げました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '起業家', NULL, true),
  (currval('questions_id_seq'), '投資家', NULL, false),
  (currval('questions_id_seq'), '管理者', NULL, false),
  (currval('questions_id_seq'), '顧問',   NULL, false);

-- 上級-76: introductory
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 76, 'choice', 1, 1,
   'introductory',
   'The company offers an introductory course for all new employees on their first day.（会社は初日の全新入社員のために入門コースを提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '入門の',     NULL, true),
  (currval('questions_id_seq'), '上級の',     NULL, false),
  (currval('questions_id_seq'), '専門的な',   NULL, false),
  (currval('questions_id_seq'), '最終の',     NULL, false);

-- 上級-77: minimize
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 77, 'choice', 1, 1,
   'minimize',
   'The team worked hard to minimize delays during the critical software migration process.（チームはソフトウェア移行プロセス中の遅延を最小化するために懸命に取り組みました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '最小化する', NULL, true),
  (currval('questions_id_seq'), '最大化する', NULL, false),
  (currval('questions_id_seq'), '標準化する', NULL, false),
  (currval('questions_id_seq'), '維持する',   NULL, false);

-- 上級-78: prestigious
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 78, 'choice', 1, 1,
   'prestigious',
   'Winning the prestigious award significantly raised the company''s profile in the industry.（権威ある賞を受賞することで業界での会社の知名度が大幅に上がりました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '権威ある',   NULL, true),
  (currval('questions_id_seq'), '新興の',     NULL, false),
  (currval('questions_id_seq'), '一般的な',   NULL, false),
  (currval('questions_id_seq'), '低コストの', NULL, false);

-- 上級-79: screening
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 79, 'choice', 1, 1,
   'screening',
   'All candidates will go through a thorough screening process before the final interview.（すべての候補者は最終面接前に徹底的な選考プロセスを受けます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '選考', NULL, true),
  (currval('questions_id_seq'), '採用', NULL, false),
  (currval('questions_id_seq'), '研修', NULL, false),
  (currval('questions_id_seq'), '評価', NULL, false);

-- 上級-80: amenity
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 80, 'choice', 1, 1,
   'amenity',
   'The hotel provides a wide range of amenities, including a gym, spa, and rooftop pool.（そのホテルはジム、スパ、屋上プールを含む幅広い快適な設備を提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '快適な設備', NULL, true),
  (currval('questions_id_seq'), '食事',       NULL, false),
  (currval('questions_id_seq'), '交通',       NULL, false),
  (currval('questions_id_seq'), '警備',       NULL, false);

-- 上級-81: lengthy
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 81, 'choice', 1, 1,
   'lengthy',
   'The lengthy negotiation process finally concluded with a mutually beneficial agreement.（長い交渉プロセスが最終的に相互に有益な合意で終結しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '長い',     NULL, true),
  (currval('questions_id_seq'), '短い',     NULL, false),
  (currval('questions_id_seq'), '複雑な',   NULL, false),
  (currval('questions_id_seq'), '省略された', NULL, false);

-- 上級-82: compensate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 82, 'choice', 1, 1,
   'compensate',
   'The insurance company will compensate clients for any damages caused by the incident.（保険会社は事故によって引き起こされた損害に対してクライアントを補償します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '補償する', NULL, true),
  (currval('questions_id_seq'), '請求する', NULL, false),
  (currval('questions_id_seq'), '評価する', NULL, false),
  (currval('questions_id_seq'), '削減する', NULL, false);

-- 上級-83: misplace
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 83, 'choice', 1, 1,
   'misplace',
   'He was embarrassed to admit that he had misplaced the important contract documents.（彼は重要な契約書類を置き忘れたことを認めるのが恥ずかしかったです。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '置き忘れる', NULL, true),
  (currval('questions_id_seq'), '盗まれる',   NULL, false),
  (currval('questions_id_seq'), '整理する',   NULL, false),
  (currval('questions_id_seq'), '返却する',   NULL, false);

-- 上級-84: notable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 84, 'choice', 1, 1,
   'notable',
   'The conference attracted many notable figures from the world of international finance.（会議は国際金融の世界から多くの著名な人物を集めました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '著名な',   NULL, true),
  (currval('questions_id_seq'), '無名の',   NULL, false),
  (currval('questions_id_seq'), '一時的な', NULL, false),
  (currval('questions_id_seq'), '論争的な', NULL, false);

-- 上級-85: subsidiary
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 85, 'choice', 1, 1,
   'subsidiary',
   'The company opened a new subsidiary in Singapore to expand into Southeast Asian markets.（会社は東南アジア市場に進出するためシンガポールに新しい子会社を開設しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '子会社', NULL, true),
  (currval('questions_id_seq'), '親会社', NULL, false),
  (currval('questions_id_seq'), '提携先', NULL, false),
  (currval('questions_id_seq'), '取引先', NULL, false);

-- 上級-86: authentic
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 86, 'choice', 1, 1,
   'authentic',
   'The restaurant prides itself on serving authentic Japanese cuisine using traditional methods.（そのレストランは伝統的な製法を使った本物の日本料理を提供することを誇りにしています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '本物の',   NULL, true),
  (currval('questions_id_seq'), '偽物の',   NULL, false),
  (currval('questions_id_seq'), '輸入の',   NULL, false),
  (currval('questions_id_seq'), '一般的な', NULL, false);

-- 上級-87: designated
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 87, 'choice', 1, 1,
   'designated',
   'Smoking is only permitted in the designated areas located outside the building.（喫煙は建物外の指定された場所でのみ許可されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '指定された',   NULL, true),
  (currval('questions_id_seq'), '任意の',       NULL, false),
  (currval('questions_id_seq'), '廃止された',   NULL, false),
  (currval('questions_id_seq'), '提案された',   NULL, false);

-- 上級-88: disruption
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 88, 'choice', 1, 1,
   'disruption',
   'The storm caused significant disruption to the city''s transportation network.（嵐は市の交通ネットワークに大きな中断をもたらしました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '中断',   NULL, true),
  (currval('questions_id_seq'), '継続',   NULL, false),
  (currval('questions_id_seq'), '強化',   NULL, false),
  (currval('questions_id_seq'), '改善',   NULL, false);

-- 上級-89: fragile
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 89, 'choice', 1, 1,
   'fragile',
   'Fragile items should be packed with extra padding to prevent damage during shipping.（壊れやすいものは輸送中の損傷を防ぐために余分な緩衝材で梱包する必要があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '壊れやすい', NULL, true),
  (currval('questions_id_seq'), '丈夫な',     NULL, false),
  (currval('questions_id_seq'), '柔軟な',     NULL, false),
  (currval('questions_id_seq'), '重い',       NULL, false);

-- 上級-90: ongoing
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 90, 'choice', 1, 1,
   'ongoing',
   'The company is committed to the ongoing training and development of all its employees.（会社はすべての従業員の継続中の研修と能力開発に取り組んでいます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '継続中の',   NULL, true),
  (currval('questions_id_seq'), '完了した',   NULL, false),
  (currval('questions_id_seq'), '中止された', NULL, false),
  (currval('questions_id_seq'), '計画中の',   NULL, false);

-- 上級-91: periodical
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 91, 'choice', 1, 1,
   'periodical',
   'The library subscribes to dozens of business periodicals from around the world.（図書館は世界中からのビジネス定期刊行物を数十誌購読しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '定期刊行物', NULL, true),
  (currval('questions_id_seq'), '教科書',     NULL, false),
  (currval('questions_id_seq'), '報告書',     NULL, false),
  (currval('questions_id_seq'), '広告',       NULL, false);

-- 上級-92: plumber
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 92, 'choice', 1, 1,
   'plumber',
   'We called a plumber immediately after discovering a leak in the office bathroom.（オフィスのトイレで水漏れを発見した後、すぐに配管工を呼びました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '配管工',     NULL, true),
  (currval('questions_id_seq'), '電気技師',   NULL, false),
  (currval('questions_id_seq'), '大工',       NULL, false),
  (currval('questions_id_seq'), '建設作業員', NULL, false);

-- 上級-93: incur
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 93, 'choice', 1, 1,
   'incur',
   'The project manager warned that delays would incur significant additional costs.（プロジェクトマネージャーは遅延が大幅な追加コストを被ることになると警告しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '被る',     NULL, true),
  (currval('questions_id_seq'), '避ける',   NULL, false),
  (currval('questions_id_seq'), '回収する', NULL, false),
  (currval('questions_id_seq'), '報告する', NULL, false);

-- 上級-94: oversee
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 94, 'choice', 1, 1,
   'oversee',
   'The director was hired to oversee all operations in the newly established branch office.（その取締役は新設された支店のすべての業務を監督するために採用されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '監督する', NULL, true),
  (currval('questions_id_seq'), '無視する', NULL, false),
  (currval('questions_id_seq'), '委任する', NULL, false),
  (currval('questions_id_seq'), '評価する', NULL, false);

-- 上級-95: retrieve
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 95, 'choice', 1, 1,
   'retrieve',
   'She was able to retrieve the deleted files from the company''s backup server.（彼女は会社のバックアップサーバーから削除されたファイルを取り戻すことができました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '取り戻す', NULL, true),
  (currval('questions_id_seq'), '廃棄する', NULL, false),
  (currval('questions_id_seq'), '転送する', NULL, false),
  (currval('questions_id_seq'), '保管する', NULL, false);

-- 上級-96: reunion
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 96, 'choice', 1, 1,
   'reunion',
   'The company organized a reunion dinner for employees who had worked there a decade ago.（会社は10年前に勤務した従業員のための同窓会ディナーを企画しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '同窓会', NULL, true),
  (currval('questions_id_seq'), '入社式', NULL, false),
  (currval('questions_id_seq'), '懇談会', NULL, false),
  (currval('questions_id_seq'), '歓迎会', NULL, false);

-- 上級-97: rigorous
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 97, 'choice', 1, 1,
   'rigorous',
   'The new safety standards require rigorous testing of all products before their release.（新しい安全基準は発売前のすべての製品の厳格なテストを必要とします。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '厳格な',   NULL, true),
  (currval('questions_id_seq'), '緩やかな', NULL, false),
  (currval('questions_id_seq'), '柔軟な',   NULL, false),
  (currval('questions_id_seq'), '一般的な', NULL, false);

-- 上級-98: specification
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 98, 'choice', 1, 1,
   'specification',
   'The engineer reviewed the technical specifications before approving the new product design.（エンジニアは新しい製品デザインを承認する前に技術仕様を確認しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '仕様',   NULL, true),
  (currval('questions_id_seq'), '見積書', NULL, false),
  (currval('questions_id_seq'), '報告書', NULL, false),
  (currval('questions_id_seq'), '契約書', NULL, false);

-- 上級-99: tentative
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 99, 'choice', 1, 1,
   'tentative',
   'We have a tentative schedule for the project, but it may change depending on available resources.（プロジェクトの仮スケジュールはありますが、利用可能なリソースによって変わる可能性があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '仮の',     NULL, true),
  (currval('questions_id_seq'), '確定した', NULL, false),
  (currval('questions_id_seq'), '最終的な', NULL, false),
  (currval('questions_id_seq'), '正式な',   NULL, false);

-- 上級-100: tutorial
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 100, 'choice', 1, 1,
   'tutorial',
   'New users can watch a step-by-step tutorial on how to use the software on our website.（新規ユーザーはウェブサイトでソフトウェアの使い方についての個別指導を視聴できます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '個別指導', NULL, true),
  (currval('questions_id_seq'), '講義',     NULL, false),
  (currval('questions_id_seq'), '試験',     NULL, false),
  (currval('questions_id_seq'), '実習',     NULL, false);
-- 上級-101: apprentice
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 101, 'choice', 1, 1,
   'apprentice',
   'The young apprentice learned the trade under the guidance of an experienced craftsman.（その若い見習いは経験豊富な職人の指導のもとで技術を学びました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '見習い',   NULL, true),
  (currval('questions_id_seq'), '管理者',   NULL, false),
  (currval('questions_id_seq'), '熟練者',   NULL, false),
  (currval('questions_id_seq'), '正社員',   NULL, false);

-- 上級-102: bid
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 102, 'choice', 1, 1,
   'bid',
   'Three companies submitted bids for the construction of the new government building.（3社が新しい政府庁舎の建設に入札しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '入札する', NULL, true),
  (currval('questions_id_seq'), '辞退する', NULL, false),
  (currval('questions_id_seq'), '承認する', NULL, false),
  (currval('questions_id_seq'), '提案する', NULL, false);

-- 上級-103: discard
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 103, 'choice', 1, 1,
   'discard',
   'Employees are required to discard all confidential documents using the secure shredder.（従業員はすべての機密書類を安全なシュレッダーを使って廃棄することが求められます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '廃棄する', NULL, true),
  (currval('questions_id_seq'), '保管する', NULL, false),
  (currval('questions_id_seq'), '修理する', NULL, false),
  (currval('questions_id_seq'), '再利用する', NULL, false);

-- 上級-104: outing
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 104, 'choice', 1, 1,
   'outing',
   'The department organized a team outing to the amusement park to boost morale.（部署は士気を高めるために遊園地へのチーム遠足を企画しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '遠足', NULL, true),
  (currval('questions_id_seq'), '出張', NULL, false),
  (currval('questions_id_seq'), '研修', NULL, false),
  (currval('questions_id_seq'), '式典', NULL, false);

-- 上級-105: overwhelmingly
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 105, 'choice', 1, 1,
   'overwhelmingly',
   'The proposal was overwhelmingly supported by members at the annual shareholders'' meeting.（その提案は年次株主総会で会員から圧倒的に支持されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '圧倒的に', NULL, true),
  (currval('questions_id_seq'), 'わずかに', NULL, false),
  (currval('questions_id_seq'), '均等に',   NULL, false),
  (currval('questions_id_seq'), '徐々に',   NULL, false);

-- 上級-106: proceeds
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 106, 'choice', 1, 1,
   'proceeds',
   'All proceeds from the charity auction will be donated to the local children''s hospital.（チャリティオークションからのすべての収益は地元の小児病院に寄付されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '収益', NULL, true),
  (currval('questions_id_seq'), '費用', NULL, false),
  (currval('questions_id_seq'), '損失', NULL, false),
  (currval('questions_id_seq'), '予算', NULL, false);

-- 上級-107: refrain
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 107, 'choice', 1, 1,
   'refrain',
   'Please refrain from using mobile phones during the conference presentation.（会議のプレゼンテーション中は携帯電話の使用を控えてください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '控える',   NULL, true),
  (currval('questions_id_seq'), '継続する', NULL, false),
  (currval('questions_id_seq'), '要求する', NULL, false),
  (currval('questions_id_seq'), '賛成する', NULL, false);

-- 上級-108: inclement
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 108, 'choice', 1, 1,
   'inclement',
   'The outdoor event was postponed due to inclement weather conditions in the forecast.（屋外イベントは予報での荒れた天候のために延期されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '荒れた',   NULL, true),
  (currval('questions_id_seq'), '晴れた',   NULL, false),
  (currval('questions_id_seq'), '温暖な',   NULL, false),
  (currval('questions_id_seq'), '乾燥した', NULL, false);

-- 上級-109: novice
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 109, 'choice', 1, 1,
   'novice',
   'This cooking class is designed for novices who have never cooked before.（この料理教室はこれまで料理をしたことがない初心者のために設計されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '初心者', NULL, true),
  (currval('questions_id_seq'), '熟練者', NULL, false),
  (currval('questions_id_seq'), '管理者', NULL, false),
  (currval('questions_id_seq'), '専門家', NULL, false);

-- 上級-110: activate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 110, 'choice', 1, 1,
   'activate',
   'Please activate your account by clicking the link sent to your registered email address.（登録済みのメールアドレスに送信されたリンクをクリックしてアカウントを起動してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '起動する', NULL, true),
  (currval('questions_id_seq'), '停止する', NULL, false),
  (currval('questions_id_seq'), '削除する', NULL, false),
  (currval('questions_id_seq'), '変更する', NULL, false);

-- 上級-111: anecdote
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 111, 'choice', 1, 1,
   'anecdote',
   'The CEO began his speech with a humorous anecdote from his early career days.（CEOは初期のキャリア時代のユーモラスな逸話でスピーチを始めました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '逸話', NULL, true),
  (currval('questions_id_seq'), '報告', NULL, false),
  (currval('questions_id_seq'), '記録', NULL, false),
  (currval('questions_id_seq'), '規則', NULL, false);

-- 上級-112: collaboration
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 112, 'choice', 1, 1,
   'collaboration',
   'The product was developed through close collaboration between the engineering and design teams.（その製品はエンジニアリングチームとデザインチームの緊密な協力を通じて開発されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '協力', NULL, true),
  (currval('questions_id_seq'), '競争', NULL, false),
  (currval('questions_id_seq'), '評価', NULL, false),
  (currval('questions_id_seq'), '監視', NULL, false);

-- 上級-113: commemorate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 113, 'choice', 1, 1,
   'commemorate',
   'A special dinner was held to commemorate the company''s fiftieth anniversary.（会社の50周年を記念するために特別ディナーが開催されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '記念する', NULL, true),
  (currval('questions_id_seq'), '廃止する', NULL, false),
  (currval('questions_id_seq'), '批判する', NULL, false),
  (currval('questions_id_seq'), '延期する', NULL, false);

-- 上級-114: duplicate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 114, 'choice', 1, 1,
   'duplicate',
   'Please make sure not to duplicate any existing entries in the customer database.（顧客データベースの既存のエントリを複製しないようにしてください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '複製する', NULL, true),
  (currval('questions_id_seq'), '削除する', NULL, false),
  (currval('questions_id_seq'), '変更する', NULL, false),
  (currval('questions_id_seq'), '保護する', NULL, false);

-- 上級-115: intermission
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 115, 'choice', 1, 1,
   'intermission',
   'Light refreshments will be served in the lobby during the intermission of the performance.（公演の休憩中にロビーで軽食が提供されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '休憩', NULL, true),
  (currval('questions_id_seq'), '開演', NULL, false),
  (currval('questions_id_seq'), '終演', NULL, false),
  (currval('questions_id_seq'), '延長', NULL, false);

-- 上級-116: fertilizer
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 116, 'choice', 1, 1,
   'fertilizer',
   'The farm switched to organic fertilizer to improve the quality of its produce.（農場は農作物の品質を向上させるために有機肥料に切り替えました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '肥料', NULL, true),
  (currval('questions_id_seq'), '農薬', NULL, false),
  (currval('questions_id_seq'), '種子', NULL, false),
  (currval('questions_id_seq'), '土壌', NULL, false);

-- 上級-117: proofread
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 117, 'choice', 1, 1,
   'proofread',
   'All press releases must be carefully proofread before they are distributed to the media.（すべてのプレスリリースはメディアに配布される前に注意深く校正されなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '校正する', NULL, true),
  (currval('questions_id_seq'), '印刷する', NULL, false),
  (currval('questions_id_seq'), '翻訳する', NULL, false),
  (currval('questions_id_seq'), '配布する', NULL, false);

-- 上級-118: solicit
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 118, 'choice', 1, 1,
   'solicit',
   'The sales team was instructed to solicit feedback from existing customers about the service.（営業チームはサービスについて既存顧客から意見を集めるよう指示されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '勧誘する', NULL, true),
  (currval('questions_id_seq'), '拒否する', NULL, false),
  (currval('questions_id_seq'), '評価する', NULL, false),
  (currval('questions_id_seq'), '記録する', NULL, false);

-- 上級-119: unveil
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 119, 'choice', 1, 1,
   'unveil',
   'The company will unveil its latest smartphone model at next month''s technology expo.（会社は来月のテクノロジー博覧会で最新スマートフォンモデルを発表します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '発表する', NULL, true),
  (currval('questions_id_seq'), '撤回する', NULL, false),
  (currval('questions_id_seq'), '延期する', NULL, false),
  (currval('questions_id_seq'), '隠す',     NULL, false);

-- 上級-120: applicable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 120, 'choice', 1, 1,
   'applicable',
   'The discount is only applicable to orders placed before the end of this month.（割引は今月末までに注文された商品にのみ適用可能です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '適用可能な',   NULL, true),
  (currval('questions_id_seq'), '除外された',   NULL, false),
  (currval('questions_id_seq'), '一時的な',     NULL, false),
  (currval('questions_id_seq'), '特定の',       NULL, false);

-- 上級-121: commend
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 121, 'choice', 1, 1,
   'commend',
   'The manager was pleased to commend the team for their exceptional performance this quarter.（マネージャーは今四半期の優れたパフォーマンスに対してチームを褒めることを喜びました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '褒める',   NULL, true),
  (currval('questions_id_seq'), '批判する', NULL, false),
  (currval('questions_id_seq'), '調査する', NULL, false),
  (currval('questions_id_seq'), '無視する', NULL, false);

-- 上級-122: complement
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 122, 'choice', 1, 1,
   'complement',
   'The new software was designed to complement the existing systems already in use.（新しいソフトウェアはすでに使用されている既存システムを補完するよう設計されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '補完する',   NULL, true),
  (currval('questions_id_seq'), '競合する',   NULL, false),
  (currval('questions_id_seq'), '妨げる',     NULL, false),
  (currval('questions_id_seq'), '置き換える', NULL, false);

-- 上級-123: incentive
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 123, 'choice', 1, 1,
   'incentive',
   'The company introduced a performance-based incentive program to motivate its sales team.（会社は営業チームのやる気を引き出すために業績連動型の奨励金プログラムを導入しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '奨励金', NULL, true),
  (currval('questions_id_seq'), '罰金',   NULL, false),
  (currval('questions_id_seq'), '給与',   NULL, false),
  (currval('questions_id_seq'), '手当',   NULL, false);

-- 上級-124: incorporate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 124, 'choice', 1, 1,
   'incorporate',
   'The updated policy will incorporate feedback received from employees across all departments.（更新されたポリシーは全部門の従業員から受け取ったフィードバックを取り入れます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '取り入れる', NULL, true),
  (currval('questions_id_seq'), '排除する',   NULL, false),
  (currval('questions_id_seq'), '延期する',   NULL, false),
  (currval('questions_id_seq'), '記録する',   NULL, false);

-- 上級-125: lapse
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 125, 'choice', 1, 1,
   'lapse',
   'Your membership will lapse at the end of the month unless you renew it promptly.（すぐに更新しない限り、会員資格は月末に失効します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '失効する',   NULL, true),
  (currval('questions_id_seq'), '更新される', NULL, false),
  (currval('questions_id_seq'), '発効する',   NULL, false),
  (currval('questions_id_seq'), '延長される', NULL, false);

-- 上級-126: picturesque
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 126, 'choice', 1, 1,
   'picturesque',
   'The tour guide led the group through a picturesque village nestled in the mountains.（ツアーガイドはグループを山に囲まれた絵のような村へと案内しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '絵のような', NULL, true),
  (currval('questions_id_seq'), '近代的な',   NULL, false),
  (currval('questions_id_seq'), '工業的な',   NULL, false),
  (currval('questions_id_seq'), '平凡な',     NULL, false);

-- 上級-127: prospective
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 127, 'choice', 1, 1,
   'prospective',
   'The open house event was organized to attract prospective buyers to the new development.（オープンハウスイベントは新しい開発に将来の買い手を引きつけるために企画されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '将来の',   NULL, true),
  (currval('questions_id_seq'), '元の',     NULL, false),
  (currval('questions_id_seq'), '現在の',   NULL, false),
  (currval('questions_id_seq'), '退職した', NULL, false);

-- 上級-128: simplify
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 128, 'choice', 1, 1,
   'simplify',
   'The IT department worked to simplify the login process for all employees.（IT部門はすべての従業員のログインプロセスを簡略化するために取り組みました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '簡略化する', NULL, true),
  (currval('questions_id_seq'), '複雑にする', NULL, false),
  (currval('questions_id_seq'), '強化する',   NULL, false),
  (currval('questions_id_seq'), '延長する',   NULL, false);

-- 上級-129: surpass
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 129, 'choice', 1, 1,
   'surpass',
   'The company''s annual revenue surpassed expectations, reaching a record high this year.（会社の年間収益は予想を超え、今年は過去最高を記録しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '超える',   NULL, true),
  (currval('questions_id_seq'), '下回る',   NULL, false),
  (currval('questions_id_seq'), '維持する', NULL, false),
  (currval('questions_id_seq'), '停滞する', NULL, false);

-- 上級-130: surplus
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 130, 'choice', 1, 1,
   'surplus',
   'The warehouse has a surplus of inventory that needs to be sold before the end of the season.（倉庫には季節終了前に販売する必要のある余剰在庫があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '余剰', NULL, true),
  (currval('questions_id_seq'), '不足', NULL, false),
  (currval('questions_id_seq'), '需要', NULL, false),
  (currval('questions_id_seq'), '損失', NULL, false);

-- 上級-131: withstand
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 131, 'choice', 1, 1,
   'withstand',
   'The new building was constructed to withstand earthquakes of magnitude eight or higher.（新しい建物はマグニチュード8以上の地震に耐えるよう建設されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '耐える',   NULL, true),
  (currval('questions_id_seq'), '屈服する', NULL, false),
  (currval('questions_id_seq'), '避ける',   NULL, false),
  (currval('questions_id_seq'), '増加する', NULL, false);

-- 上級-132: advocate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 132, 'choice', 1, 1,
   'advocate',
   'The organization is a strong advocate for workplace diversity and equal opportunities.（その組織は職場の多様性と機会均等の強い支持者です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '支持者',   NULL, true),
  (currval('questions_id_seq'), '反対者',   NULL, false),
  (currval('questions_id_seq'), '監督者',   NULL, false),
  (currval('questions_id_seq'), '競合他社', NULL, false);

-- 上級-133: aspiring
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 133, 'choice', 1, 1,
   'aspiring',
   'The workshop was designed to help aspiring managers develop their leadership skills.（そのワークショップは管理職を志望している人がリーダーシップスキルを身につけるのを助けるよう設計されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '志望している', NULL, true),
  (currval('questions_id_seq'), '引退した',     NULL, false),
  (currval('questions_id_seq'), '在籍中の',     NULL, false),
  (currval('questions_id_seq'), '経験豊富な',   NULL, false);

-- 上級-134: assorted
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 134, 'choice', 1, 1,
   'assorted',
   'The gift basket contained an assorted selection of chocolates, biscuits, and cheese.（ギフトバスケットには各種のチョコレート、ビスケット、チーズが入っていました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '各種の',   NULL, true),
  (currval('questions_id_seq'), '単一の',   NULL, false),
  (currval('questions_id_seq'), '均一な',   NULL, false),
  (currval('questions_id_seq'), '同一の',   NULL, false);

-- 上級-135: credentials
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 135, 'choice', 1, 1,
   'credentials',
   'Applicants are required to submit their academic credentials with the application form.（応募者は応募書類に学術的な資格証明を提出することが求められます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '資格証明', NULL, true),
  (currval('questions_id_seq'), '業務報告', NULL, false),
  (currval('questions_id_seq'), '契約書',   NULL, false),
  (currval('questions_id_seq'), '推薦状',   NULL, false);

-- 上級-136: interoffice
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 136, 'choice', 1, 1,
   'interoffice',
   'The new interoffice messaging system has improved communication between departments.（新しい社内メッセージシステムは部門間のコミュニケーションを改善しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '社内の',   NULL, true),
  (currval('questions_id_seq'), '国際的な', NULL, false),
  (currval('questions_id_seq'), '対外的な', NULL, false),
  (currval('questions_id_seq'), '個人的な', NULL, false);

-- 上級-137: malfunction
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 137, 'choice', 1, 1,
   'malfunction',
   'The payment system began to malfunction during peak hours, causing delays for customers.（決済システムはピーク時間帯に誤動作し始め、顧客に遅延をもたらしました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '誤動作する',       NULL, true),
  (currval('questions_id_seq'), '正常に動作する',   NULL, false),
  (currval('questions_id_seq'), '改善する',         NULL, false),
  (currval('questions_id_seq'), '更新する',         NULL, false);

-- 上級-138: mutually
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 138, 'choice', 1, 1,
   'mutually',
   'The two companies signed a contract that was mutually beneficial to both parties.（2社は両者に相互に有益な契約を締結しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '相互に',   NULL, true),
  (currval('questions_id_seq'), '一方的に', NULL, false),
  (currval('questions_id_seq'), '単独で',   NULL, false),
  (currval('questions_id_seq'), '定期的に', NULL, false);

-- 上級-139: periodically
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 139, 'choice', 1, 1,
   'periodically',
   'All fire extinguishers in the building must be inspected periodically by certified staff.（建物内のすべての消火器は認定スタッフによって定期的に点検されなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '定期的に',   NULL, true),
  (currval('questions_id_seq'), '突発的に',   NULL, false),
  (currval('questions_id_seq'), '一度だけ',   NULL, false),
  (currval('questions_id_seq'), '継続的に',   NULL, false);

-- 上級-140: copyright
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 140, 'choice', 1, 1,
   'copyright',
   'All images on the website are protected by copyright and may not be used without permission.（ウェブサイト上のすべての画像は著作権によって保護されており、許可なく使用することはできません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '著作権', NULL, true),
  (currval('questions_id_seq'), '商標権', NULL, false),
  (currval('questions_id_seq'), '所有権', NULL, false),
  (currval('questions_id_seq'), '使用許可', NULL, false);

-- 上級-141: nutritious
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 141, 'choice', 1, 1,
   'nutritious',
   'The cafeteria aims to provide employees with nutritious and balanced meal options.（食堂は従業員に栄養のあるバランスの取れた食事の選択肢を提供することを目指しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '栄養のある',   NULL, true),
  (currval('questions_id_seq'), '低カロリーの', NULL, false),
  (currval('questions_id_seq'), '美味しい',     NULL, false),
  (currval('questions_id_seq'), '新鮮な',       NULL, false);

-- 上級-142: obstruct
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 142, 'choice', 1, 1,
   'obstruct',
   'Please do not place any items in the aisle as they may obstruct emergency exits.（非常口を妨げる可能性があるため、通路に物を置かないでください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '妨げる',   NULL, true),
  (currval('questions_id_seq'), '支援する', NULL, false),
  (currval('questions_id_seq'), '強化する', NULL, false),
  (currval('questions_id_seq'), '促進する', NULL, false);

-- 上級-143: abundant
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 143, 'choice', 1, 1,
   'abundant',
   'The region is known for its abundant natural resources, including timber and minerals.（その地域は木材や鉱物を含む豊富な天然資源で知られています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '豊富な',   NULL, true),
  (currval('questions_id_seq'), '不足した', NULL, false),
  (currval('questions_id_seq'), '高価な',   NULL, false),
  (currval('questions_id_seq'), '限定的な', NULL, false);

-- 上級-144: agreeable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 144, 'choice', 1, 1,
   'agreeable',
   'The working conditions at the new office were found to be quite agreeable by most staff.（新しいオフィスの労働条件はほとんどのスタッフにとって非常に快いと感じられました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '快い',   NULL, true),
  (currval('questions_id_seq'), '不快な', NULL, false),
  (currval('questions_id_seq'), '厳格な', NULL, false),
  (currval('questions_id_seq'), '複雑な', NULL, false);

-- 上級-145: compromise
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 145, 'choice', 1, 1,
   'compromise',
   'Both parties agreed to compromise in order to reach a satisfactory agreement.（双方は満足のいく合意に達するために妥協することに同意しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '妥協する', NULL, true),
  (currval('questions_id_seq'), '主張する', NULL, false),
  (currval('questions_id_seq'), '拒否する', NULL, false),
  (currval('questions_id_seq'), '強化する', NULL, false);

-- 上級-146: continuous
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 146, 'choice', 1, 1,
   'continuous',
   'The factory operates on a continuous basis to meet the high demand for its products.（工場は製品への高い需要に対応するために継続的に稼働しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '継続的な',   NULL, true),
  (currval('questions_id_seq'), '断続的な',   NULL, false),
  (currval('questions_id_seq'), '一時的な',   NULL, false),
  (currval('questions_id_seq'), '季節的な',   NULL, false);

-- 上級-147: dominant
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 147, 'choice', 1, 1,
   'dominant',
   'The company has maintained a dominant position in the electronics market for over a decade.（その会社は10年以上にわたって電子機器市場で支配的な地位を維持しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '支配的な',   NULL, true),
  (currval('questions_id_seq'), '従属的な',   NULL, false),
  (currval('questions_id_seq'), '平等な',     NULL, false),
  (currval('questions_id_seq'), '新興の',     NULL, false);

-- 上級-148: exhausted
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 148, 'choice', 1, 1,
   'exhausted',
   'The team was exhausted after working long hours to meet the project deadline.（チームはプロジェクトの締め切りに間に合わせるために長時間働いた後、疲れ果てていました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '疲れ果てた', NULL, true),
  (currval('questions_id_seq'), '活力のある', NULL, false),
  (currval('questions_id_seq'), '回復した',   NULL, false),
  (currval('questions_id_seq'), '満足した',   NULL, false);

-- 上級-149: fierce
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 149, 'choice', 1, 1,
   'fierce',
   'There is fierce competition among retailers trying to capture a larger market share.（より大きな市場シェアを獲得しようとする小売業者間では激しい競争があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '激しい',   NULL, true),
  (currval('questions_id_seq'), '穏やかな', NULL, false),
  (currval('questions_id_seq'), '緩やかな', NULL, false),
  (currval('questions_id_seq'), '友好的な', NULL, false);

-- 上級-150: prosperous
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 150, 'choice', 1, 1,
   'prosperous',
   'The city has become one of the most prosperous business hubs in the entire region.（その都市は地域全体で最も繁栄したビジネスハブの一つになりました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '繁栄している', NULL, true),
  (currval('questions_id_seq'), '衰退した',     NULL, false),
  (currval('questions_id_seq'), '困窮した',     NULL, false),
  (currval('questions_id_seq'), '停滞した',     NULL, false);
-- 上級-151: quote
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 151, 'choice', 1, 1,
   'quote',
   'The supplier was asked to quote a price for delivering five hundred units by the end of the month.（サプライヤーは月末までに500ユニットを納品する価格を見積もるよう求められました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '見積もる', NULL, true),
  (currval('questions_id_seq'), '請求する', NULL, false),
  (currval('questions_id_seq'), '支払う',   NULL, false),
  (currval('questions_id_seq'), '割引する', NULL, false);

-- 上級-152: reluctant
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 152, 'choice', 1, 1,
   'reluctant',
   'She was reluctant to accept the promotion because it required relocating to another city.（その昇進を受け入れることに気が進まなかった、なぜなら別の都市への移転が必要だったからです。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '気が進まない', NULL, true),
  (currval('questions_id_seq'), '熱心な',       NULL, false),
  (currval('questions_id_seq'), '積極的な',     NULL, false),
  (currval('questions_id_seq'), '自発的な',     NULL, false);

-- 上級-153: remedy
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 153, 'choice', 1, 1,
   'remedy',
   'Management proposed several remedies to address the decline in customer satisfaction scores.（経営陣は顧客満足度スコアの低下に対処するためにいくつかの改善策を提案しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '改善策', NULL, true),
  (currval('questions_id_seq'), '原因',   NULL, false),
  (currval('questions_id_seq'), '問題',   NULL, false),
  (currval('questions_id_seq'), '悪化',   NULL, false);

-- 上級-154: solely
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 154, 'choice', 1, 1,
   'solely',
   'This parking area is reserved solely for customers of the restaurant on weekends.（この駐車場は週末にはレストランの顧客のみのために確保されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '単独で',   NULL, true),
  (currval('questions_id_seq'), '共同で',   NULL, false),
  (currval('questions_id_seq'), '定期的に', NULL, false),
  (currval('questions_id_seq'), '部分的に', NULL, false);

-- 上級-155: vital
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 155, 'choice', 1, 1,
   'vital',
   'Regular communication between team members is vital to the success of any project.（チームメンバー間の定期的なコミュニケーションはあらゆるプロジェクトの成功に不可欠です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '不可欠な',   NULL, true),
  (currval('questions_id_seq'), '任意の',     NULL, false),
  (currval('questions_id_seq'), '補助的な',   NULL, false),
  (currval('questions_id_seq'), '一時的な',   NULL, false);

-- 上級-156: revitalize
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 156, 'choice', 1, 1,
   'revitalize',
   'The city council approved a plan to revitalize the historic downtown shopping district.（市議会は歴史的なダウンタウンの商店街を活性化する計画を承認しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '活性化する', NULL, true),
  (currval('questions_id_seq'), '停止する',   NULL, false),
  (currval('questions_id_seq'), '縮小する',   NULL, false),
  (currval('questions_id_seq'), '廃止する',   NULL, false);

-- 上級-157: commerce
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 157, 'choice', 1, 1,
   'commerce',
   'The chamber of commerce organized a networking event for local business owners.（商工会議所は地元のビジネスオーナーのためにネットワーキングイベントを企画しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '商業', NULL, true),
  (currval('questions_id_seq'), '農業', NULL, false),
  (currval('questions_id_seq'), '工業', NULL, false),
  (currval('questions_id_seq'), '行政', NULL, false);

-- 上級-158: countless
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 158, 'choice', 1, 1,
   'countless',
   'The new platform has attracted countless users from all over the world since its launch.（その新しいプラットフォームは立ち上げ以来、世界中から無数のユーザーを引きつけています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '無数の',   NULL, true),
  (currval('questions_id_seq'), 'わずかな', NULL, false),
  (currval('questions_id_seq'), '一定の',   NULL, false),
  (currval('questions_id_seq'), '特定の',   NULL, false);

-- 上級-159: devise
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 159, 'choice', 1, 1,
   'devise',
   'The research team was asked to devise a more efficient method for processing the data.（研究チームはデータを処理するためのより効率的な方法を考案するよう求められました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '考案する', NULL, true),
  (currval('questions_id_seq'), '廃棄する', NULL, false),
  (currval('questions_id_seq'), '採用する', NULL, false),
  (currval('questions_id_seq'), '報告する', NULL, false);

-- 上級-160: execute
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 160, 'choice', 1, 1,
   'execute',
   'The project manager has the authority to execute the plan once it receives board approval.（プロジェクトマネージャーは取締役会の承認を得た後、計画を実行する権限を持っています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '実行する', NULL, true),
  (currval('questions_id_seq'), '中止する', NULL, false),
  (currval('questions_id_seq'), '延期する', NULL, false),
  (currval('questions_id_seq'), '撤回する', NULL, false);

-- 上級-161: foster
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 161, 'choice', 1, 1,
   'foster',
   'The manager worked hard to foster a collaborative and positive work environment.（マネージャーは協力的でポジティブな職場環境を促進するために懸命に取り組みました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '促進する', NULL, true),
  (currval('questions_id_seq'), '妨げる',   NULL, false),
  (currval('questions_id_seq'), '廃止する', NULL, false),
  (currval('questions_id_seq'), '評価する', NULL, false);

-- 上級-162: initiate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 162, 'choice', 1, 1,
   'initiate',
   'The HR department will initiate the onboarding process for new hires next Monday.（人事部門は来週月曜日に新入社員のオンボーディングプロセスを開始します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '開始する', NULL, true),
  (currval('questions_id_seq'), '終了する', NULL, false),
  (currval('questions_id_seq'), '延期する', NULL, false),
  (currval('questions_id_seq'), '報告する', NULL, false);

-- 上級-163: insight
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 163, 'choice', 1, 1,
   'insight',
   'The consultant provided valuable insights into the latest trends in the retail industry.（コンサルタントは小売業界の最新トレンドについて貴重な見識を提供しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '見識', NULL, true),
  (currval('questions_id_seq'), '誤解', NULL, false),
  (currval('questions_id_seq'), '概略', NULL, false),
  (currval('questions_id_seq'), '結論', NULL, false);

-- 上級-164: misleading
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 164, 'choice', 1, 1,
   'misleading',
   'The advertisement was found to contain misleading information about the product''s features.（その広告には製品の特徴について誤解を招く情報が含まれていることがわかりました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '誤解を招く', NULL, true),
  (currval('questions_id_seq'), '正確な',     NULL, false),
  (currval('questions_id_seq'), '簡潔な',     NULL, false),
  (currval('questions_id_seq'), '詳細な',     NULL, false);

-- 上級-165: precaution
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 165, 'choice', 1, 1,
   'precaution',
   'Staff should take all necessary precautions when handling chemicals in the laboratory.（スタッフは実験室で化学物質を扱う際に必要なすべての予防策を取る必要があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '予防策', NULL, true),
  (currval('questions_id_seq'), '対処法', NULL, false),
  (currval('questions_id_seq'), '事後策', NULL, false),
  (currval('questions_id_seq'), '規制',   NULL, false);

-- 上級-166: transparent
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 166, 'choice', 1, 1,
   'transparent',
   'The CEO pledged to maintain transparent communication with all shareholders going forward.（CEOは今後すべての株主との透明なコミュニケーションを維持することを約束しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '透明な',   NULL, true),
  (currval('questions_id_seq'), '不透明な', NULL, false),
  (currval('questions_id_seq'), '複雑な',   NULL, false),
  (currval('questions_id_seq'), '曖昧な',   NULL, false);

-- 上級-167: coincide
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 167, 'choice', 1, 1,
   'coincide',
   'The product launch was scheduled to coincide with the start of the holiday shopping season.（製品発売はホリデーショッピングシーズンの開始に一致するようにスケジュールされました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '一致する', NULL, true),
  (currval('questions_id_seq'), '矛盾する', NULL, false),
  (currval('questions_id_seq'), '異なる',   NULL, false),
  (currval('questions_id_seq'), '遅れる',   NULL, false);

-- 上級-168: concise
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 168, 'choice', 1, 1,
   'concise',
   'The manager asked the team to write concise reports that highlight only the key findings.（マネージャーはチームに主要な発見のみを強調した簡潔な報告書を書くよう求めました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '簡潔な',   NULL, true),
  (currval('questions_id_seq'), '冗長な',   NULL, false),
  (currval('questions_id_seq'), '詳細な',   NULL, false),
  (currval('questions_id_seq'), '複雑な',   NULL, false);

-- 上級-169: delegation
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 169, 'choice', 1, 1,
   'delegation',
   'A delegation of executives from the company visited the overseas facility last week.（会社の重役の代表団が先週、海外の施設を訪問しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '代表団',   NULL, true),
  (currval('questions_id_seq'), '組合',     NULL, false),
  (currval('questions_id_seq'), '委員会',   NULL, false),
  (currval('questions_id_seq'), '協議会',   NULL, false);

-- 上級-170: diagnosis
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 170, 'choice', 1, 1,
   'diagnosis',
   'The technician completed a full diagnosis of the machine before recommending any repairs.（技術者は修理を推奨する前に機械の完全な診断を行いました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '診断', NULL, true),
  (currval('questions_id_seq'), '処方', NULL, false),
  (currval('questions_id_seq'), '治療', NULL, false),
  (currval('questions_id_seq'), '手術', NULL, false);

-- 上級-171: enforce
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 171, 'choice', 1, 1,
   'enforce',
   'Security personnel are responsible for enforcing the no-smoking policy throughout the building.（警備員は建物全体での禁煙ポリシーを施行する責任があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '施行する', NULL, true),
  (currval('questions_id_seq'), '廃止する', NULL, false),
  (currval('questions_id_seq'), '提案する', NULL, false),
  (currval('questions_id_seq'), '検討する', NULL, false);

-- 上級-172: hypothesis
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 172, 'choice', 1, 1,
   'hypothesis',
   'The research team developed a hypothesis to explain the unexpected drop in sales figures.（研究チームは売上数字の予想外の落ち込みを説明するために仮説を立てました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '仮説', NULL, true),
  (currval('questions_id_seq'), '結論', NULL, false),
  (currval('questions_id_seq'), '事実', NULL, false),
  (currval('questions_id_seq'), '定理', NULL, false);

-- 上級-173: predecessor
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 173, 'choice', 1, 1,
   'predecessor',
   'The new CEO plans to build on the achievements of her predecessor in expanding overseas.（新しいCEOは海外展開において前任者の成果を土台にする計画を持っています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '前任者', NULL, true),
  (currval('questions_id_seq'), '後任者', NULL, false),
  (currval('questions_id_seq'), '同僚',   NULL, false),
  (currval('questions_id_seq'), '部下',   NULL, false);

-- 上級-174: prominently
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 174, 'choice', 1, 1,
   'prominently',
   'The company''s new logo is displayed prominently at the entrance of every branch office.（会社の新しいロゴはすべての支店の入口に目立って展示されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '目立って',   NULL, true),
  (currval('questions_id_seq'), '控えめに',   NULL, false),
  (currval('questions_id_seq'), 'ひっそりと', NULL, false),
  (currval('questions_id_seq'), '定期的に',   NULL, false);

-- 上級-175: adoption
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 175, 'choice', 1, 1,
   'adoption',
   'The rapid adoption of cloud technology has transformed the way businesses operate.（クラウド技術の急速な採用はビジネスの運営方法を変革しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '採用', NULL, true),
  (currval('questions_id_seq'), '廃止', NULL, false),
  (currval('questions_id_seq'), '拒否', NULL, false),
  (currval('questions_id_seq'), '延期', NULL, false);

-- 上級-176: accelerate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 176, 'choice', 1, 1,
   'accelerate',
   'The new investment is expected to significantly accelerate the company''s growth plans.（新しい投資は会社の成長計画を大幅に加速させることが期待されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '加速する', NULL, true),
  (currval('questions_id_seq'), '減速する', NULL, false),
  (currval('questions_id_seq'), '停止する', NULL, false),
  (currval('questions_id_seq'), '維持する', NULL, false);

-- 上級-177: adhere
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 177, 'choice', 1, 1,
   'adhere',
   'All contractors must adhere to the safety regulations outlined in the project guidelines.（すべての請負業者はプロジェクトガイドラインに概説された安全規制に従わなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '従う',     NULL, true),
  (currval('questions_id_seq'), '無視する', NULL, false),
  (currval('questions_id_seq'), '違反する', NULL, false),
  (currval('questions_id_seq'), '変更する', NULL, false);

-- 上級-178: allocate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 178, 'choice', 1, 1,
   'allocate',
   'The finance team will allocate additional funds to the marketing department this quarter.（財務チームは今四半期にマーケティング部門に追加資金を割り当てます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '割り当てる', NULL, true),
  (currval('questions_id_seq'), '回収する',   NULL, false),
  (currval('questions_id_seq'), '廃棄する',   NULL, false),
  (currval('questions_id_seq'), '削減する',   NULL, false);

-- 上級-179: appraisal
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 179, 'choice', 1, 1,
   'appraisal',
   'Annual performance appraisals are conducted to assess employee achievements and set new goals.（年次業績評価は従業員の成果を評価し、新しい目標を設定するために実施されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '評価', NULL, true),
  (currval('questions_id_seq'), '給与', NULL, false),
  (currval('questions_id_seq'), '契約', NULL, false),
  (currval('questions_id_seq'), '報告', NULL, false);

-- 上級-180: compile
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 180, 'choice', 1, 1,
   'compile',
   'The assistant was asked to compile all customer feedback into a single summary report.（アシスタントはすべての顧客フィードバックを一つのサマリーレポートにまとめるよう求められました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'まとめる', NULL, true),
  (currval('questions_id_seq'), '分散する', NULL, false),
  (currval('questions_id_seq'), '削除する', NULL, false),
  (currval('questions_id_seq'), '転送する', NULL, false);

-- 上級-181: conform
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 181, 'choice', 1, 1,
   'conform',
   'All new products must conform to the international safety standards before they can be sold.（すべての新製品は販売される前に国際安全基準に適合しなければなりません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '適合する', NULL, true),
  (currval('questions_id_seq'), '反発する', NULL, false),
  (currval('questions_id_seq'), '無視する', NULL, false),
  (currval('questions_id_seq'), '変更する', NULL, false);

-- 上級-182: constraint
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 182, 'choice', 1, 1,
   'constraint',
   'Budget constraints forced the team to scale back several aspects of the original plan.（予算の制約によりチームは元の計画のいくつかの側面を縮小することを余儀なくされました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '制約',   NULL, true),
  (currval('questions_id_seq'), '自由',   NULL, false),
  (currval('questions_id_seq'), '権限',   NULL, false),
  (currval('questions_id_seq'), '機会',   NULL, false);

-- 上級-183: distraction
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 183, 'choice', 1, 1,
   'distraction',
   'Loud conversations in the open office were a constant distraction for employees trying to focus.（オープンオフィスでの大声の会話は集中しようとしている従業員にとって常に気散じとなっていました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '気散じ',   NULL, true),
  (currval('questions_id_seq'), '集中',     NULL, false),
  (currval('questions_id_seq'), '動機',     NULL, false),
  (currval('questions_id_seq'), '援助',     NULL, false);

-- 上級-184: facilitate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 184, 'choice', 1, 1,
   'facilitate',
   'The new software is designed to facilitate smoother communication between remote teams.（新しいソフトウェアはリモートチーム間のよりスムーズなコミュニケーションを促進するよう設計されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '促進する', NULL, true),
  (currval('questions_id_seq'), '妨げる',   NULL, false),
  (currval('questions_id_seq'), '評価する', NULL, false),
  (currval('questions_id_seq'), '延期する', NULL, false);

-- 上級-185: integral
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 185, 'choice', 1, 1,
   'integral',
   'Customer feedback is an integral part of the product development and improvement process.（顧客フィードバックは製品開発と改善プロセスの不可欠な部分です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '不可欠な',   NULL, true),
  (currval('questions_id_seq'), '付随的な',   NULL, false),
  (currval('questions_id_seq'), '補完的な',   NULL, false),
  (currval('questions_id_seq'), '独立した',   NULL, false);

-- 上級-186: interact
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 186, 'choice', 1, 1,
   'interact',
   'The training program encourages employees to interact with colleagues from different departments.（研修プログラムは従業員が異なる部門の同僚と交流するよう促しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '交流する', NULL, true),
  (currval('questions_id_seq'), '競争する', NULL, false),
  (currval('questions_id_seq'), '回避する', NULL, false),
  (currval('questions_id_seq'), '無視する', NULL, false);

-- 上級-187: persistence
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 187, 'choice', 1, 1,
   'persistence',
   'The sales team''s persistence in following up with clients led to a major contract win.（クライアントへのフォローアップにおける営業チームの持続性が大きな契約獲得につながりました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '持続性', NULL, true),
  (currval('questions_id_seq'), '柔軟性', NULL, false),
  (currval('questions_id_seq'), '創造性', NULL, false),
  (currval('questions_id_seq'), '効率性', NULL, false);

-- 上級-188: quota
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 188, 'choice', 1, 1,
   'quota',
   'Each sales representative is expected to meet their monthly quota of fifteen new clients.（各営業担当者は15件の新規クライアントという月次の割り当て量を達成することが期待されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '割り当て量', NULL, true),
  (currval('questions_id_seq'), '基準値',     NULL, false),
  (currval('questions_id_seq'), '上限額',     NULL, false),
  (currval('questions_id_seq'), '平均値',     NULL, false);

-- 上級-189: congested
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 189, 'choice', 1, 1,
   'congested',
   'The roads near the stadium were severely congested after the concert ended last night.（コンサートが終了した後、昨夜はスタジアム近くの道路が激しく混雑していました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '混雑した',   NULL, true),
  (currval('questions_id_seq'), '空いている', NULL, false),
  (currval('questions_id_seq'), '整備された', NULL, false),
  (currval('questions_id_seq'), '近代化された', NULL, false);

-- 上級-190: deduct
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 190, 'choice', 1, 1,
   'deduct',
   'The accountant will deduct the travel expenses from the total project cost for tax purposes.（会計士は税務上の目的で出張費をプロジェクト総費用から差し引きます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '差し引く', NULL, true),
  (currval('questions_id_seq'), '追加する', NULL, false),
  (currval('questions_id_seq'), '計算する', NULL, false),
  (currval('questions_id_seq'), '報告する', NULL, false);

-- 上級-191: embrace
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 191, 'choice', 1, 1,
   'embrace',
   'The company encouraged all employees to embrace the new digital transformation strategy.（会社はすべての従業員に新しいデジタルトランスフォーメーション戦略を受け入れるよう促しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '受け入れる', NULL, true),
  (currval('questions_id_seq'), '拒否する',   NULL, false),
  (currval('questions_id_seq'), '無視する',   NULL, false),
  (currval('questions_id_seq'), '批判する',   NULL, false);

-- 上級-192: synthetic
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 192, 'choice', 1, 1,
   'synthetic',
   'The manufacturer replaced natural rubber with a more durable synthetic material.（製造業者は天然ゴムをより耐久性のある合成素材に置き換えました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '合成の',   NULL, true),
  (currval('questions_id_seq'), '天然の',   NULL, false),
  (currval('questions_id_seq'), '有機の',   NULL, false),
  (currval('questions_id_seq'), '純粋な',   NULL, false);

-- 上級-193: terminate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 193, 'choice', 1, 1,
   'terminate',
   'The company decided to terminate the contract with the vendor due to repeated delays.（会社は繰り返す遅延のためベンダーとの契約を終了することを決定しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '終了する', NULL, true),
  (currval('questions_id_seq'), '継続する', NULL, false),
  (currval('questions_id_seq'), '更新する', NULL, false),
  (currval('questions_id_seq'), '延長する', NULL, false);

-- 上級-194: detect
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 194, 'choice', 1, 1,
   'detect',
   'The security system is programmed to detect any unauthorized access to the building.（セキュリティシステムは建物への不正アクセスを検出するようにプログラムされています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '検出する', NULL, true),
  (currval('questions_id_seq'), '無視する', NULL, false),
  (currval('questions_id_seq'), '報告する', NULL, false),
  (currval('questions_id_seq'), '修正する', NULL, false);

-- 上級-195: patiently
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 195, 'choice', 1, 1,
   'patiently',
   'The customer service representative patiently explained the refund policy to the caller.（カスタマーサービス担当者は電話をかけてきた人に払い戻しポリシーを忍耐強く説明しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '忍耐強く', NULL, true),
  (currval('questions_id_seq'), '急いで',   NULL, false),
  (currval('questions_id_seq'), '積極的に', NULL, false),
  (currval('questions_id_seq'), '定期的に', NULL, false);

-- 上級-196: ratio
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 196, 'choice', 1, 1,
   'ratio',
   'The company aims to maintain a favorable debt-to-equity ratio to attract potential investors.（会社は潜在的な投資家を引きつけるために有利な負債資本比率を維持することを目指しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '比率', NULL, true),
  (currval('questions_id_seq'), '合計', NULL, false),
  (currval('questions_id_seq'), '差異', NULL, false),
  (currval('questions_id_seq'), '平均', NULL, false);

-- 上級-197: dietary
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 197, 'choice', 1, 1,
   'dietary',
   'The hotel''s catering team will accommodate any special dietary requirements guests may have.（ホテルのケータリングチームはゲストが持つ特別な食事の要件に対応します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '食事の',   NULL, true),
  (currval('questions_id_seq'), '運動の',   NULL, false),
  (currval('questions_id_seq'), '医療の',   NULL, false),
  (currval('questions_id_seq'), '美容の',   NULL, false);

-- 上級-198: intentionally
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 198, 'choice', 1, 1,
   'intentionally',
   'The employee did not intentionally share the confidential information with outside parties.（その従業員は意図的に機密情報を外部の関係者と共有したわけではありませんでした。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '意図的に', NULL, true),
  (currval('questions_id_seq'), '偶然に',   NULL, false),
  (currval('questions_id_seq'), '定期的に', NULL, false),
  (currval('questions_id_seq'), '慎重に',   NULL, false);

-- 上級-199: persuasive
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 199, 'choice', 1, 1,
   'persuasive',
   'The sales representative gave a persuasive presentation that convinced the client to sign.（営業担当者はクライアントに署名を説得する説得力のあるプレゼンテーションをしました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '説得力のある', NULL, true),
  (currval('questions_id_seq'), '曖昧な',       NULL, false),
  (currval('questions_id_seq'), '否定的な',     NULL, false),
  (currval('questions_id_seq'), '一方的な',     NULL, false);

-- 上級-200: subsequent
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 200, 'choice', 1, 1,
   'subsequent',
   'The initial meeting went well, and subsequent discussions led to a formal partnership agreement.（最初の会議はうまくいき、後続の議論が正式なパートナーシップ協定につながりました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '後続の',   NULL, true),
  (currval('questions_id_seq'), '以前の',   NULL, false),
  (currval('questions_id_seq'), '同時の',   NULL, false),
  (currval('questions_id_seq'), '独立した', NULL, false);
-- 上級-201: thoughtfully
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 201, 'choice', 1, 1,
   'thoughtfully',
   'The manager thoughtfully considered each employee''s feedback before making the final decision.（マネージャーは最終決定を下す前に各従業員のフィードバックを思慮深く検討しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '思慮深く', NULL, true),
  (currval('questions_id_seq'), '軽率に',   NULL, false),
  (currval('questions_id_seq'), '急いで',   NULL, false),
  (currval('questions_id_seq'), '無関心に', NULL, false);

-- 上級-202: abridged
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 202, 'choice', 1, 1,
   'abridged',
   'An abridged version of the annual report was prepared for distribution to all staff members.（年次報告書の要約された版がすべてのスタッフへの配布用に作成されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '要約された',   NULL, true),
  (currval('questions_id_seq'), '完全版の',     NULL, false),
  (currval('questions_id_seq'), '翻訳された',   NULL, false),
  (currval('questions_id_seq'), '改訂された',   NULL, false);

-- 上級-203: carpool
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 203, 'choice', 1, 1,
   'carpool',
   'Many employees choose to carpool to reduce commuting costs and their carbon footprint.（多くの従業員は通勤費とカーボンフットプリントを削減するために相乗りすることを選んでいます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '相乗りする', NULL, true),
  (currval('questions_id_seq'), '送迎する',   NULL, false),
  (currval('questions_id_seq'), '配車する',   NULL, false),
  (currval('questions_id_seq'), '貸し切る',   NULL, false);

-- 上級-204: compatible
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 204, 'choice', 1, 1,
   'compatible',
   'Please make sure the new software is compatible with the existing operating system.（新しいソフトウェアが既存のオペレーティングシステムと互換性があることを確認してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '互換性のある', NULL, true),
  (currval('questions_id_seq'), '専用の',       NULL, false),
  (currval('questions_id_seq'), '独立した',     NULL, false),
  (currval('questions_id_seq'), '非対応の',     NULL, false);

-- 上級-205: endorse
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 205, 'choice', 1, 1,
   'endorse',
   'Several prominent athletes have agreed to endorse the company''s new line of sports equipment.（いくつかの著名なアスリートが会社の新しいスポーツ用品ラインを支持することに同意しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '支持する', NULL, true),
  (currval('questions_id_seq'), '反対する', NULL, false),
  (currval('questions_id_seq'), '評価する', NULL, false),
  (currval('questions_id_seq'), '批判する', NULL, false);

-- 上級-206: explicit
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 206, 'choice', 1, 1,
   'explicit',
   'The contract contains explicit instructions about the terms and conditions of the agreement.（契約書には合意の条件に関する明確な指示が含まれています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '明確な',   NULL, true),
  (currval('questions_id_seq'), '暗黙の',   NULL, false),
  (currval('questions_id_seq'), '複雑な',   NULL, false),
  (currval('questions_id_seq'), '曖昧な',   NULL, false);

-- 上級-207: keenly
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 207, 'choice', 1, 1,
   'keenly',
   'The investors are keenly interested in learning more about the company''s expansion plans.（投資家たちは会社の拡大計画についてさらに詳しく知ることに熱心に興味を持っています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '熱心に',   NULL, true),
  (currval('questions_id_seq'), '無関心に', NULL, false),
  (currval('questions_id_seq'), '消極的に', NULL, false),
  (currval('questions_id_seq'), '穏やかに', NULL, false);

-- 上級-208: plaque
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 208, 'choice', 1, 1,
   'plaque',
   'A commemorative plaque was installed at the entrance of the building to honor its founders.（建物の創設者を称えるために入口に記念の表彰板が設置されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '表彰板', NULL, true),
  (currval('questions_id_seq'), '賞状',   NULL, false),
  (currval('questions_id_seq'), '盾',     NULL, false),
  (currval('questions_id_seq'), '賞金',   NULL, false);

-- 上級-209: dilute
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 209, 'choice', 1, 1,
   'dilute',
   'Always dilute the cleaning solution with water before applying it to the surface.（表面に塗布する前に必ず洗浄液を水で希釈してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '希釈する', NULL, true),
  (currval('questions_id_seq'), '濃縮する', NULL, false),
  (currval('questions_id_seq'), '加熱する', NULL, false),
  (currval('questions_id_seq'), '混合する', NULL, false);

-- 上級-210: exempt
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 210, 'choice', 1, 1,
   'exempt',
   'Nonprofit organizations are often exempt from certain local and national taxes.（非営利団体は特定の地方税や国税が免除されることが多いです。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '免除された',     NULL, true),
  (currval('questions_id_seq'), '義務付けられた', NULL, false),
  (currval('questions_id_seq'), '罰せられた',     NULL, false),
  (currval('questions_id_seq'), '制限された',     NULL, false);

-- 上級-211: centerpiece
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 211, 'choice', 1, 1,
   'centerpiece',
   'The new product line is the centerpiece of the company''s strategy for market expansion.（新しい製品ラインは市場拡大に向けた会社の戦略の目玉です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '目玉',   NULL, true),
  (currval('questions_id_seq'), '装飾',   NULL, false),
  (currval('questions_id_seq'), '背景',   NULL, false),
  (currval('questions_id_seq'), '補足',   NULL, false);

-- 上級-212: oversight
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 212, 'choice', 1, 1,
   'oversight',
   'The board of directors has overall oversight of all major financial decisions in the company.（取締役会は会社のすべての主要な財務上の決定の全体的な監督を行っています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '監督',   NULL, true),
  (currval('questions_id_seq'), '放任',   NULL, false),
  (currval('questions_id_seq'), '委任',   NULL, false),
  (currval('questions_id_seq'), '無関心', NULL, false);

-- 上級-213: privileged
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 213, 'choice', 1, 1,
   'privileged',
   'Only privileged members of the executive committee have access to this classified information.（幹部委員会の特権のあるメンバーのみがこの機密情報にアクセスできます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '特権のある', NULL, true),
  (currval('questions_id_seq'), '制限された', NULL, false),
  (currval('questions_id_seq'), '平等な',     NULL, false),
  (currval('questions_id_seq'), '一般的な',   NULL, false);

-- 上級-214: recur
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 214, 'choice', 1, 1,
   'recur',
   'We need to identify the root cause of the problem to prevent it from recurring in the future.（将来の再発を防ぐために問題の根本原因を特定する必要があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '再発する',   NULL, true),
  (currval('questions_id_seq'), '解消する',   NULL, false),
  (currval('questions_id_seq'), '初めて起きる', NULL, false),
  (currval('questions_id_seq'), '予防する',   NULL, false);

-- 上級-215: skeptical
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 215, 'choice', 1, 1,
   'skeptical',
   'Some investors remain skeptical about the long-term viability of the new business model.（一部の投資家は新しいビジネスモデルの長期的な実行可能性について懐疑的なままです。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '懐疑的な', NULL, true),
  (currval('questions_id_seq'), '楽観的な', NULL, false),
  (currval('questions_id_seq'), '積極的な', NULL, false),
  (currval('questions_id_seq'), '信頼する', NULL, false);

-- 上級-216: sustainable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 216, 'choice', 1, 1,
   'sustainable',
   'The company has committed to using only sustainable packaging materials by next year.（会社は来年までに持続可能な包装材料のみを使用することを約束しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '持続可能な', NULL, true),
  (currval('questions_id_seq'), '一時的な',   NULL, false),
  (currval('questions_id_seq'), '非効率な',   NULL, false),
  (currval('questions_id_seq'), '廃棄される', NULL, false);

-- 上級-217: artifact
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 217, 'choice', 1, 1,
   'artifact',
   'The museum acquired a rare artifact from the ancient trading civilization on display.（博物館は展示されている古代の交易文明からの珍しい人工物を取得しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '人工物', NULL, true),
  (currval('questions_id_seq'), '天然物', NULL, false),
  (currval('questions_id_seq'), '生物',   NULL, false),
  (currval('questions_id_seq'), '地形',   NULL, false);

-- 上級-218: keynote
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 218, 'choice', 1, 1,
   'keynote',
   'The industry conference will open with a keynote speech from a leading technology innovator.（業界会議は主要なテクノロジー革新者による基調演説で開幕します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '基調', NULL, true),
  (currval('questions_id_seq'), '議事録', NULL, false),
  (currval('questions_id_seq'), '結論',   NULL, false),
  (currval('questions_id_seq'), '序論',   NULL, false);

-- 上級-219: breathtaking
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 219, 'choice', 1, 1,
   'breathtaking',
   'The conference venue offers breathtaking views of the harbor and the surrounding mountains.（会議場は港と周囲の山々の息をのむような景色を提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '息をのむような', NULL, true),
  (currval('questions_id_seq'), '退屈な',         NULL, false),
  (currval('questions_id_seq'), '普通の',         NULL, false),
  (currval('questions_id_seq'), '失望させる',     NULL, false);

-- 上級-220: cubicle
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 220, 'choice', 1, 1,
   'cubicle',
   'Each employee has their own cubicle equipped with a computer and a direct phone line.（各従業員はコンピューターと専用電話回線が備えられた自分の仕切られた作業スペースを持っています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '仕切られた作業スペース', NULL, true),
  (currval('questions_id_seq'), '会議室',                 NULL, false),
  (currval('questions_id_seq'), '休憩室',                 NULL, false),
  (currval('questions_id_seq'), '倉庫',                   NULL, false);

-- 上級-221: outage
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 221, 'choice', 1, 1,
   'outage',
   'A power outage disrupted operations at the data center for several hours yesterday afternoon.（停電により昨日の午後、データセンターの業務が数時間中断されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '停電',   NULL, true),
  (currval('questions_id_seq'), '節電',   NULL, false),
  (currval('questions_id_seq'), '過負荷', NULL, false),
  (currval('questions_id_seq'), '電力供給', NULL, false);

-- 上級-222: perishable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 222, 'choice', 1, 1,
   'perishable',
   'Perishable goods must be stored in refrigerated units to maintain their freshness and quality.（腐りやすい食品は鮮度と品質を維持するために冷蔵ユニットに保管する必要があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '腐りやすい',   NULL, true),
  (currval('questions_id_seq'), '保存のきく',   NULL, false),
  (currval('questions_id_seq'), '冷凍可能な',   NULL, false),
  (currval('questions_id_seq'), '乾燥した',     NULL, false);

-- 上級-223: avid
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 223, 'choice', 1, 1,
   'avid',
   'The company newsletter is read by avid followers who are always eager to learn more.（会社のニュースレターはいつも熱心に知識を求める熱心な読者に読まれています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '熱心な',   NULL, true),
  (currval('questions_id_seq'), '無関心な', NULL, false),
  (currval('questions_id_seq'), '消極的な', NULL, false),
  (currval('questions_id_seq'), '疲れた',   NULL, false);

-- 上級-224: detour
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 224, 'choice', 1, 1,
   'detour',
   'Drivers are advised to detour via the highway due to road works in the city center.（市内中心部の道路工事のため、ドライバーは高速道路を経由して迂回するよう勧められています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '迂回する', NULL, true),
  (currval('questions_id_seq'), '直進する', NULL, false),
  (currval('questions_id_seq'), '停車する', NULL, false),
  (currval('questions_id_seq'), '引き返す', NULL, false);

-- 上級-225: expedite
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 225, 'choice', 1, 1,
   'expedite',
   'Please expedite the processing of these orders as the client needs them by Friday morning.（クライアントが金曜日の朝までにこれらの注文を必要としているため、処理を促進してください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '促進する', NULL, true),
  (currval('questions_id_seq'), '遅らせる', NULL, false),
  (currval('questions_id_seq'), '中止する', NULL, false),
  (currval('questions_id_seq'), '評価する', NULL, false);

-- 上級-226: vicinity
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 226, 'choice', 1, 1,
   'vicinity',
   'There are several well-reviewed restaurants in the vicinity of the conference hotel.（会議ホテルの近辺には評判の良いレストランがいくつかあります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '近辺',   NULL, true),
  (currval('questions_id_seq'), '遠方',   NULL, false),
  (currval('questions_id_seq'), '中心地', NULL, false),
  (currval('questions_id_seq'), '郊外',   NULL, false);

-- 上級-227: affiliated
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 227, 'choice', 1, 1,
   'affiliated',
   'The hotel is affiliated with an international chain and offers consistent quality worldwide.（そのホテルは国際的なチェーンと提携しており、世界中で一貫した品質を提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '提携した', NULL, true),
  (currval('questions_id_seq'), '独立した', NULL, false),
  (currval('questions_id_seq'), '競合する', NULL, false),
  (currval('questions_id_seq'), '廃業した', NULL, false);

-- 上級-228: definitive
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 228, 'choice', 1, 1,
   'definitive',
   'The committee will issue a definitive statement on the matter by the end of the week.（委員会は週末までにその件に関する最終的な声明を発表します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '最終的な', NULL, true),
  (currval('questions_id_seq'), '暫定的な', NULL, false),
  (currval('questions_id_seq'), '仮の',     NULL, false),
  (currval('questions_id_seq'), '部分的な', NULL, false);

-- 上級-229: demolish
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 229, 'choice', 1, 1,
   'demolish',
   'The old warehouse will be demolished next month to make way for the new office complex.（古い倉庫は来月、新しいオフィス複合施設のために取り壊されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '取り壊す', NULL, true),
  (currval('questions_id_seq'), '建設する', NULL, false),
  (currval('questions_id_seq'), '修繕する', NULL, false),
  (currval('questions_id_seq'), '保存する', NULL, false);

-- 上級-230: feasible
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 230, 'choice', 1, 1,
   'feasible',
   'The engineering team confirmed that the proposed design changes were technically feasible.（エンジニアリングチームは提案されたデザイン変更が技術的に実行可能であることを確認しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '実行可能な',   NULL, true),
  (currval('questions_id_seq'), '不可能な',     NULL, false),
  (currval('questions_id_seq'), '危険な',       NULL, false),
  (currval('questions_id_seq'), '費用のかかる', NULL, false);

-- 上級-231: inaugural
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 231, 'choice', 1, 1,
   'inaugural',
   'The company held its inaugural awards ceremony to recognize outstanding employee contributions.（会社は優れた従業員の貢献を表彰するために初の授賞式を開催しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '初の',     NULL, true),
  (currval('questions_id_seq'), '最後の',   NULL, false),
  (currval('questions_id_seq'), '年次の',   NULL, false),
  (currval('questions_id_seq'), '定期的な', NULL, false);

-- 上級-232: installment
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 232, 'choice', 1, 1,
   'installment',
   'The equipment can be purchased with an installment plan spread over twenty-four months.（機器は24ヶ月に分散された分割払いプランで購入することができます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '分割払い', NULL, true),
  (currval('questions_id_seq'), '一括払い', NULL, false),
  (currval('questions_id_seq'), '前払い',   NULL, false),
  (currval('questions_id_seq'), '延滞払い', NULL, false);

-- 上級-233: redeemable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 233, 'choice', 1, 1,
   'redeemable',
   'The points accumulated on your loyalty card are redeemable for discounts on future purchases.（ロイヤルティカードで積み立てたポイントは将来の購入割引と交換可能です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '交換可能な',   NULL, true),
  (currval('questions_id_seq'), '無効の',       NULL, false),
  (currval('questions_id_seq'), '期限切れの',   NULL, false),
  (currval('questions_id_seq'), '返金不可の',   NULL, false);

-- 上級-234: streamline
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 234, 'choice', 1, 1,
   'streamline',
   'The company hired consultants to help streamline its operations and reduce overhead costs.（会社は業務を合理化し間接費を削減するのを助けるコンサルタントを雇いました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '合理化する', NULL, true),
  (currval('questions_id_seq'), '複雑にする', NULL, false),
  (currval('questions_id_seq'), '拡大する',   NULL, false),
  (currval('questions_id_seq'), '維持する',   NULL, false);

-- 上級-235: insulation
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 235, 'choice', 1, 1,
   'insulation',
   'The building''s insulation was upgraded to improve energy efficiency and reduce heating costs.（建物の断熱材はエネルギー効率を改善し暖房費を削減するためにアップグレードされました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '断熱', NULL, true),
  (currval('questions_id_seq'), '換気', NULL, false),
  (currval('questions_id_seq'), '採光', NULL, false),
  (currval('questions_id_seq'), '防音', NULL, false);

-- 上級-236: intact
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 236, 'choice', 1, 1,
   'intact',
   'Fortunately, all of the documents arrived intact despite the rough handling during transit.（幸いなことに、輸送中の乱暴な取り扱いにもかかわらず、すべての書類は損なわれていない状態で届きました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '損なわれていない', NULL, true),
  (currval('questions_id_seq'), '破損した',         NULL, false),
  (currval('questions_id_seq'), '紛失した',         NULL, false),
  (currval('questions_id_seq'), '変更された',       NULL, false);

-- 上級-237: occupancy
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 237, 'choice', 1, 1,
   'occupancy',
   'The hotel reported a high occupancy rate of ninety percent during the summer holiday season.（ホテルは夏の休暇シーズン中に90パーセントという高い占有率を報告しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '占有', NULL, true),
  (currval('questions_id_seq'), '空室', NULL, false),
  (currval('questions_id_seq'), '転居', NULL, false),
  (currval('questions_id_seq'), '改装', NULL, false);

-- 上級-238: turnover
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 238, 'choice', 1, 1,
   'turnover',
   'High employee turnover has become a major challenge for companies in the hospitality sector.（高い従業員の離職率はホスピタリティ業界の企業にとって大きな課題になっています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '離職率', NULL, true),
  (currval('questions_id_seq'), '採用率', NULL, false),
  (currval('questions_id_seq'), '昇進率', NULL, false),
  (currval('questions_id_seq'), '出勤率', NULL, false);

-- 上級-239: unanimous
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 239, 'choice', 1, 1,
   'unanimous',
   'The board reached a unanimous decision to approve the merger with the overseas company.（取締役会は海外企業との合併を承認する全員一致の決定に達しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '全員一致の',   NULL, true),
  (currval('questions_id_seq'), '分裂した',     NULL, false),
  (currval('questions_id_seq'), '多数決の',     NULL, false),
  (currval('questions_id_seq'), '一部反対の',   NULL, false);

-- 上級-240: deteriorate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 240, 'choice', 1, 1,
   'deteriorate',
   'The quality of the product began to deteriorate after the switch to cheaper materials.（安価な素材への切り替え後、製品の品質が悪化し始めました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '悪化する', NULL, true),
  (currval('questions_id_seq'), '改善する', NULL, false),
  (currval('questions_id_seq'), '維持する', NULL, false),
  (currval('questions_id_seq'), '安定する', NULL, false);

-- 上級-241: sturdy
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 241, 'choice', 1, 1,
   'sturdy',
   'The product is packaged in a sturdy box to ensure it arrives safely without any damage.（製品は損傷なく安全に到着するよう頑丈な箱に梱包されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '頑丈な',     NULL, true),
  (currval('questions_id_seq'), '壊れやすい', NULL, false),
  (currval('questions_id_seq'), '軽量の',     NULL, false),
  (currval('questions_id_seq'), '薄い',       NULL, false);

-- 上級-242: adverse
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 242, 'choice', 1, 1,
   'adverse',
   'The new regulations may have adverse effects on small businesses in the retail sector.（新しい規制は小売部門の中小企業に不利な影響を及ぼす可能性があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '不利な',   NULL, true),
  (currval('questions_id_seq'), '有利な',   NULL, false),
  (currval('questions_id_seq'), '中立的な', NULL, false),
  (currval('questions_id_seq'), '想定された', NULL, false);

-- 上級-243: bearer
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 243, 'choice', 1, 1,
   'bearer',
   'The bearer of this voucher is entitled to a complimentary meal at any participating restaurant.（このバウチャーの持参人はいずれの参加レストランでも無料の食事を受ける権利があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '持参人', NULL, true),
  (currval('questions_id_seq'), '送付者', NULL, false),
  (currval('questions_id_seq'), '保証人', NULL, false),
  (currval('questions_id_seq'), '発行者', NULL, false);

-- 上級-244: unprecedented
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 244, 'choice', 1, 1,
   'unprecedented',
   'The company achieved an unprecedented level of growth in its first year of operation.（会社は操業初年度に前例のないレベルの成長を達成しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '前例のない', NULL, true),
  (currval('questions_id_seq'), '一般的な',   NULL, false),
  (currval('questions_id_seq'), '定期的な',   NULL, false),
  (currval('questions_id_seq'), '伝統的な',   NULL, false);

-- 上級-245: botanical
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 245, 'choice', 1, 1,
   'botanical',
   'The company hosted a team event at the botanical garden located near the city center.（会社は市内中心部近くにある植物園でチームイベントを開催しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '植物の', NULL, true),
  (currval('questions_id_seq'), '動物の', NULL, false),
  (currval('questions_id_seq'), '鉱物の', NULL, false),
  (currval('questions_id_seq'), '人工の', NULL, false);

-- 上級-246: commensurate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 246, 'choice', 1, 1,
   'commensurate',
   'The salary offered for the position is commensurate with the level of experience required.（その職位のために提示された給与は必要とされる経験のレベルと釣り合っています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '釣り合った',   NULL, true),
  (currval('questions_id_seq'), '不均衡な',     NULL, false),
  (currval('questions_id_seq'), '独立した',     NULL, false),
  (currval('questions_id_seq'), '固定された',   NULL, false);

-- 上級-247: consecutive
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 247, 'choice', 1, 1,
   'consecutive',
   'The company reported strong earnings for the fifth consecutive quarter in a row.（会社は5四半期連続して好調な収益を報告しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '連続した',   NULL, true),
  (currval('questions_id_seq'), '断続的な',   NULL, false),
  (currval('questions_id_seq'), '交互の',     NULL, false),
  (currval('questions_id_seq'), '不規則な',   NULL, false);

-- 上級-248: deliberation
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 248, 'choice', 1, 1,
   'deliberation',
   'After careful deliberation, the committee voted in favor of the proposed budget increase.（慎重な熟慮の後、委員会は提案された予算増加に賛成票を投じました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '熟慮', NULL, true),
  (currval('questions_id_seq'), '即決', NULL, false),
  (currval('questions_id_seq'), '衝動', NULL, false),
  (currval('questions_id_seq'), '命令', NULL, false);

-- 上級-249: discreetly
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 249, 'choice', 1, 1,
   'discreetly',
   'The manager handled the sensitive personnel matter discreetly to protect the employee''s privacy.（マネージャーは従業員のプライバシーを守るために繊細な人事案件を慎重に処理しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '慎重に',   NULL, true),
  (currval('questions_id_seq'), '大胆に',   NULL, false),
  (currval('questions_id_seq'), '軽率に',   NULL, false),
  (currval('questions_id_seq'), '公然と',   NULL, false);

-- 上級-250: entail
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 250, 'choice', 1, 1,
   'entail',
   'The new role will entail significant travel and regular meetings with international clients.（新しい役職は大幅な出張と国際的なクライアントとの定期的な会議を伴います。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '伴う',     NULL, true),
  (currval('questions_id_seq'), '除外する', NULL, false),
  (currval('questions_id_seq'), '回避する', NULL, false),
  (currval('questions_id_seq'), '軽減する', NULL, false);
-- 上級-251: fluctuation
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 251, 'choice', 1, 1,
   'fluctuation',
   'The financial report highlighted significant fluctuations in the exchange rate last quarter.（財務報告書は先四半期の為替レートの大きな変動を強調しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '変動', NULL, true),
  (currval('questions_id_seq'), '安定', NULL, false),
  (currval('questions_id_seq'), '固定', NULL, false),
  (currval('questions_id_seq'), '停止', NULL, false);

-- 上級-252: foremost
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 252, 'choice', 1, 1,
   'foremost',
   'Customer satisfaction is the foremost priority for every member of our service team.（顧客満足度は私たちのサービスチームのすべてのメンバーにとって最も重要な優先事項です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '最も重要な', NULL, true),
  (currval('questions_id_seq'), '最後の',     NULL, false),
  (currval('questions_id_seq'), '二番目の',   NULL, false),
  (currval('questions_id_seq'), '一般的な',   NULL, false);

-- 上級-253: imperative
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 253, 'choice', 1, 1,
   'imperative',
   'It is imperative that all staff complete the cybersecurity training before the deadline.（全スタッフが期限前にサイバーセキュリティ研修を完了することが必須です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '必須の',   NULL, true),
  (currval('questions_id_seq'), '任意の',   NULL, false),
  (currval('questions_id_seq'), '推奨の',   NULL, false),
  (currval('questions_id_seq'), '一時的な', NULL, false);

-- 上級-254: mandatory
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 254, 'choice', 1, 1,
   'mandatory',
   'Attendance at the annual safety briefing is mandatory for all employees without exception.（年次安全ブリーフィングへの出席は例外なくすべての従業員に義務的です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '義務的な',     NULL, true),
  (currval('questions_id_seq'), '自由選択の',   NULL, false),
  (currval('questions_id_seq'), '推奨される',   NULL, false),
  (currval('questions_id_seq'), '一時的な',     NULL, false);

-- 上級-255: meticulously
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 255, 'choice', 1, 1,
   'meticulously',
   'The auditors meticulously reviewed every financial record submitted by the company.（監査員は会社が提出したすべての財務記録を細心に確認しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '細心に',     NULL, true),
  (currval('questions_id_seq'), 'おおざっぱに', NULL, false),
  (currval('questions_id_seq'), '急いで',     NULL, false),
  (currval('questions_id_seq'), '無計画に',   NULL, false);

-- 上級-256: outreach
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 256, 'choice', 1, 1,
   'outreach',
   'The nonprofit organization launched an outreach program to assist low-income families in the community.（非営利団体は地域の低所得家庭を支援するための支援活動プログラムを開始しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '支援活動', NULL, true),
  (currval('questions_id_seq'), '収益活動', NULL, false),
  (currval('questions_id_seq'), '内部活動', NULL, false),
  (currval('questions_id_seq'), '規制活動', NULL, false);

-- 上級-257: tenure
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 257, 'choice', 1, 1,
   'tenure',
   'During his tenure as director, the company expanded into three new international markets.（取締役としての在職期間中、会社は3つの新しい国際市場に進出しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '在職期間', NULL, true),
  (currval('questions_id_seq'), '試用期間', NULL, false),
  (currval('questions_id_seq'), '休暇期間', NULL, false),
  (currval('questions_id_seq'), '研修期間', NULL, false);

-- 上級-258: versatile
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 258, 'choice', 1, 1,
   'versatile',
   'The new software is versatile enough to be used across multiple departments and industries.（新しいソフトウェアは複数の部門や業界で使用できるほど多才です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '多才な',   NULL, true),
  (currval('questions_id_seq'), '専門的な', NULL, false),
  (currval('questions_id_seq'), '一分野の', NULL, false),
  (currval('questions_id_seq'), '未経験な', NULL, false);

-- 上級-259: alleviate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 259, 'choice', 1, 1,
   'alleviate',
   'The company introduced flexible working hours to alleviate the stress of long commutes.（会社は長い通勤のストレスを軽減するためにフレックスタイム制を導入しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '軽減する',   NULL, true),
  (currval('questions_id_seq'), '悪化させる', NULL, false),
  (currval('questions_id_seq'), '維持する',   NULL, false),
  (currval('questions_id_seq'), '増大させる', NULL, false);

-- 上級-260: exemplary
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 260, 'choice', 1, 1,
   'exemplary',
   'The employee received a bonus for her exemplary performance throughout the fiscal year.（その従業員は会計年度を通じた模範的なパフォーマンスに対してボーナスを受け取りました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '模範的な',   NULL, true),
  (currval('questions_id_seq'), '平均的な',   NULL, false),
  (currval('questions_id_seq'), '問題のある', NULL, false),
  (currval('questions_id_seq'), '一般的な',   NULL, false);

-- 上級-261: gala
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 261, 'choice', 1, 1,
   'gala',
   'The annual charity gala raised over one million dollars for the local children''s foundation.（年次チャリティ祭典は地元の子供財団のために100万ドル以上を集めました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '祭典',   NULL, true),
  (currval('questions_id_seq'), '展覧会', NULL, false),
  (currval('questions_id_seq'), '会議',   NULL, false),
  (currval('questions_id_seq'), '研修会', NULL, false);

-- 上級-262: mural
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 262, 'choice', 1, 1,
   'mural',
   'A large mural depicting the city''s history was painted on the exterior of the new library.（市の歴史を描いた大きな壁画が新しい図書館の外壁に描かれました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '壁画',   NULL, true),
  (currval('questions_id_seq'), '彫刻',   NULL, false),
  (currval('questions_id_seq'), '絵画',   NULL, false),
  (currval('questions_id_seq'), '版画',   NULL, false);

-- 上級-263: proprietor
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 263, 'choice', 1, 1,
   'proprietor',
   'The proprietor of the small bakery has been serving the local community for over thirty years.（その小さなパン屋の経営者は30年以上にわたって地域社会にサービスを提供しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '経営者', NULL, true),
  (currval('questions_id_seq'), '従業員', NULL, false),
  (currval('questions_id_seq'), '顧客',   NULL, false),
  (currval('questions_id_seq'), '投資家', NULL, false);

-- 上級-264: stagnant
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 264, 'choice', 1, 1,
   'stagnant',
   'Sales have been stagnant for the past two quarters and the management is seeking new strategies.（過去2四半期にわたって売上が停滞しており、経営陣は新しい戦略を模索しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '停滞した',   NULL, true),
  (currval('questions_id_seq'), '成長中の',   NULL, false),
  (currval('questions_id_seq'), '安定した',   NULL, false),
  (currval('questions_id_seq'), '活発な',     NULL, false);

-- 上級-265: stringent
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 265, 'choice', 1, 1,
   'stringent',
   'The food manufacturing industry is subject to stringent health and safety regulations.（食品製造業界は厳しい健康と安全に関する規制の対象となっています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '厳しい',   NULL, true),
  (currval('questions_id_seq'), '緩やかな', NULL, false),
  (currval('questions_id_seq'), '柔軟な',   NULL, false),
  (currval('questions_id_seq'), '穏やかな', NULL, false);

-- 上級-266: testimonial
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 266, 'choice', 1, 1,
   'testimonial',
   'The company''s website features several customer testimonials praising the quality of service.（会社のウェブサイトにはサービスの品質を称賛するいくつかの顧客推薦状が掲載されています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '推薦状', NULL, true),
  (currval('questions_id_seq'), '契約書', NULL, false),
  (currval('questions_id_seq'), '報告書', NULL, false),
  (currval('questions_id_seq'), '請求書', NULL, false);

-- 上級-267: turnout
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 267, 'choice', 1, 1,
   'turnout',
   'The event coordinator was pleased with the high turnout at the annual business conference.（イベントコーディネーターは年次ビジネス会議への高い参加者数に満足しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '参加者数', NULL, true),
  (currval('questions_id_seq'), '欠席者数', NULL, false),
  (currval('questions_id_seq'), '応募者数', NULL, false),
  (currval('questions_id_seq'), '収益',     NULL, false);

-- 上級-268: waive
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 268, 'choice', 1, 1,
   'waive',
   'The bank agreed to waive the transaction fee for long-term premium account holders.（銀行は長期のプレミアムアカウント保有者の取引手数料を放棄することに同意しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '放棄する', NULL, true),
  (currval('questions_id_seq'), '主張する', NULL, false),
  (currval('questions_id_seq'), '延長する', NULL, false),
  (currval('questions_id_seq'), '提出する', NULL, false);

-- 上級-269: faucet
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 269, 'choice', 1, 1,
   'faucet',
   'The facilities manager reported a leaking faucet in the third-floor restroom.（施設マネージャーは3階のトイレの水漏れする蛇口を報告しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '蛇口',   NULL, true),
  (currval('questions_id_seq'), '排水口', NULL, false),
  (currval('questions_id_seq'), '配管',   NULL, false),
  (currval('questions_id_seq'), 'シャワー', NULL, false);

-- 上級-270: amendment
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 270, 'choice', 1, 1,
   'amendment',
   'The board voted to approve an amendment to the company''s existing travel expense policy.（取締役会は会社の既存の出張費ポリシーへの修正案を承認するための投票を行いました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '修正案', NULL, true),
  (currval('questions_id_seq'), '原案',   NULL, false),
  (currval('questions_id_seq'), '廃案',   NULL, false),
  (currval('questions_id_seq'), '最終案', NULL, false);

-- 上級-271: anonymous
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 271, 'choice', 1, 1,
   'anonymous',
   'The company introduced an anonymous feedback system to encourage honest employee responses.（会社は誠実な従業員の意見を促すために匿名のフィードバックシステムを導入しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '匿名の',   NULL, true),
  (currval('questions_id_seq'), '有名な',   NULL, false),
  (currval('questions_id_seq'), '記名の',   NULL, false),
  (currval('questions_id_seq'), '公式の',   NULL, false);

-- 上級-272: fraud
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 272, 'choice', 1, 1,
   'fraud',
   'The company reported the suspected fraud to the relevant authorities for investigation.（会社は調査のために疑われる詐欺を関係当局に報告しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '詐欺', NULL, true),
  (currval('questions_id_seq'), '失敗', NULL, false),
  (currval('questions_id_seq'), '誤解', NULL, false),
  (currval('questions_id_seq'), '苦情', NULL, false);

-- 上級-273: liable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 273, 'choice', 1, 1,
   'liable',
   'The company may be liable for damages if the product is found to have a manufacturing defect.（製品に製造上の欠陥があることが判明した場合、会社は損害に対して責任があるかもしれません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '責任がある', NULL, true),
  (currval('questions_id_seq'), '免除された', NULL, false),
  (currval('questions_id_seq'), '無関係な',   NULL, false),
  (currval('questions_id_seq'), '任意の',     NULL, false);

-- 上級-274: considerate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 274, 'choice', 1, 1,
   'considerate',
   'It is important for all team members to be considerate of each other''s working preferences.（すべてのチームメンバーがお互いの作業の好みについて思いやりを持つことが重要です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '思いやりのある', NULL, true),
  (currval('questions_id_seq'), '冷淡な',         NULL, false),
  (currval('questions_id_seq'), '厳格な',         NULL, false),
  (currval('questions_id_seq'), '無関心な',       NULL, false);

-- 上級-275: consolidate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 275, 'choice', 1, 1,
   'consolidate',
   'The firm decided to consolidate its three regional offices into one central headquarters.（会社は3つの地域オフィスを1つの中央本部に統合することを決定しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '統合する', NULL, true),
  (currval('questions_id_seq'), '分散する', NULL, false),
  (currval('questions_id_seq'), '廃止する', NULL, false),
  (currval('questions_id_seq'), '延期する', NULL, false);

-- 上級-276: vigorous
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 276, 'choice', 1, 1,
   'vigorous',
   'The CEO launched a vigorous campaign to attract new investors to the company''s expansion plan.（CEOは会社の拡大計画に新しい投資家を引きつけるための精力的なキャンペーンを開始しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '精力的な', NULL, true),
  (currval('questions_id_seq'), '穏やかな', NULL, false),
  (currval('questions_id_seq'), '疲れた',   NULL, false),
  (currval('questions_id_seq'), '受動的な', NULL, false);

-- 上級-277: retreat
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 277, 'choice', 1, 1,
   'retreat',
   'The company organized a two-day management retreat to discuss the new five-year strategy.（会社は新しい5年戦略を議論するために2日間の経営幹部研修合宿を企画しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '撤退する', NULL, true),
  (currval('questions_id_seq'), '前進する', NULL, false),
  (currval('questions_id_seq'), '主張する', NULL, false),
  (currval('questions_id_seq'), '強化する', NULL, false);

-- 上級-278: custodian
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 278, 'choice', 1, 1,
   'custodian',
   'The custodian ensured all floors were cleaned and the building was secured before closing.（管理人は閉館前にすべての床が清掃され建物が施錠されていることを確認しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '管理人', NULL, true),
  (currval('questions_id_seq'), '利用者', NULL, false),
  (currval('questions_id_seq'), '所有者', NULL, false),
  (currval('questions_id_seq'), '設計者', NULL, false);

-- 上級-279: forge
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 279, 'choice', 1, 1,
   'forge',
   'The suspect was arrested for attempting to forge official government documents.（容疑者は公式な政府文書を偽造しようとしたために逮捕されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '偽造する', NULL, true),
  (currval('questions_id_seq'), '承認する', NULL, false),
  (currval('questions_id_seq'), '保管する', NULL, false),
  (currval('questions_id_seq'), '廃棄する', NULL, false);

-- 上級-280: impending
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 280, 'choice', 1, 1,
   'impending',
   'Staff were informed about the impending reorganization of the sales department next month.（スタッフは来月の営業部門の差し迫った再編成について知らされました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '差し迫った',   NULL, true),
  (currval('questions_id_seq'), '遠い将来の',   NULL, false),
  (currval('questions_id_seq'), '完了した',     NULL, false),
  (currval('questions_id_seq'), '予定にない',   NULL, false);

-- 上級-281: itemize
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 281, 'choice', 1, 1,
   'itemize',
   'Please itemize all expenses on the claim form before submitting it to the finance department.（財務部門に提出する前に申請書にすべての費用を箇条書きにしてください。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '箇条書きにする', NULL, true),
  (currval('questions_id_seq'), '要約する',       NULL, false),
  (currval('questions_id_seq'), '削除する',       NULL, false),
  (currval('questions_id_seq'), '統合する',       NULL, false);

-- 上級-282: liaison
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 282, 'choice', 1, 1,
   'liaison',
   'The project manager acts as a liaison between the development team and the client.（プロジェクトマネージャーは開発チームとクライアントの間の連絡係として機能しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '連絡係', NULL, true),
  (currval('questions_id_seq'), '監督者', NULL, false),
  (currval('questions_id_seq'), '評価者', NULL, false),
  (currval('questions_id_seq'), '調査員', NULL, false);

-- 上級-283: objectionable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 283, 'choice', 1, 1,
   'objectionable',
   'The manager asked staff to avoid using objectionable language in all workplace communications.（マネージャーはスタッフにすべての職場コミュニケーションで不快な言葉を避けるよう求めました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '不快な',   NULL, true),
  (currval('questions_id_seq'), '快い',     NULL, false),
  (currval('questions_id_seq'), '中立的な', NULL, false),
  (currval('questions_id_seq'), '許容できる', NULL, false);

-- 上級-284: repave
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 284, 'choice', 1, 1,
   'repave',
   'The city plans to repave the main road through the business district next summer.（市は来夏にビジネス地区を通る主要道路を舗装し直す計画を持っています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '舗装し直す', NULL, true),
  (currval('questions_id_seq'), '解体する',   NULL, false),
  (currval('questions_id_seq'), '拡張する',   NULL, false),
  (currval('questions_id_seq'), '清掃する',   NULL, false);

-- 上級-285: shortcoming
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 285, 'choice', 1, 1,
   'shortcoming',
   'The annual review identified several shortcomings in the current inventory management system.（年次レビューでは現在の在庫管理システムのいくつかの欠点が特定されました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '欠点',   NULL, true),
  (currval('questions_id_seq'), '強み',   NULL, false),
  (currval('questions_id_seq'), '特徴',   NULL, false),
  (currval('questions_id_seq'), '成果',   NULL, false);

-- 上級-286: viable
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 286, 'choice', 1, 1,
   'viable',
   'The research team presented a viable solution that could be implemented within the budget.（研究チームは予算内で実施できる実行可能な解決策を提示しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '実行可能な',   NULL, true),
  (currval('questions_id_seq'), '非現実的な',   NULL, false),
  (currval('questions_id_seq'), '危険な',       NULL, false),
  (currval('questions_id_seq'), '費用のかかる', NULL, false);

-- 上級-287: memorabilia
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 287, 'choice', 1, 1,
   'memorabilia',
   'The gift shop sells a wide range of sports memorabilia signed by famous athletes.（ギフトショップでは有名なアスリートがサインした幅広い種類のスポーツ記念品を販売しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '記念品', NULL, true),
  (currval('questions_id_seq'), '装飾品', NULL, false),
  (currval('questions_id_seq'), '日用品', NULL, false),
  (currval('questions_id_seq'), '収集品', NULL, false);

-- 上級-288: deplete
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 288, 'choice', 1, 1,
   'deplete',
   'Continued overuse of natural resources will eventually deplete them beyond recovery.（天然資源の継続的な過剰使用は最終的に回復不可能なまでにそれらを消耗させます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '消耗する', NULL, true),
  (currval('questions_id_seq'), '補充する', NULL, false),
  (currval('questions_id_seq'), '節約する', NULL, false),
  (currval('questions_id_seq'), '増加させる', NULL, false);

-- 上級-289: jeopardy
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 289, 'choice', 1, 1,
   'jeopardy',
   'The delayed shipment could put the entire project timeline in jeopardy if not resolved quickly.（遅れた出荷は迅速に解決されない場合、プロジェクト全体のタイムラインを危険にさらす可能性があります。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '危険', NULL, true),
  (currval('questions_id_seq'), '機会', NULL, false),
  (currval('questions_id_seq'), '利益', NULL, false),
  (currval('questions_id_seq'), '進歩', NULL, false);

-- 上級-290: nominal
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 290, 'choice', 1, 1,
   'nominal',
   'There is a nominal fee for attending the seminar, which covers the cost of refreshments.（セミナーへの参加には軽食費を賄う名目上の料金が必要です。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '名目上の',   NULL, true),
  (currval('questions_id_seq'), '実質的な',   NULL, false),
  (currval('questions_id_seq'), '正式な',     NULL, false),
  (currval('questions_id_seq'), '固定された', NULL, false);

-- 上級-291: deviate
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 291, 'choice', 1, 1,
   'deviate',
   'Staff are not permitted to deviate from the standard operating procedures without approval.（スタッフは承認なしに標準的な操作手順から逸脱することは許可されていません。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '逸脱する', NULL, true),
  (currval('questions_id_seq'), '従う',     NULL, false),
  (currval('questions_id_seq'), '改善する', NULL, false),
  (currval('questions_id_seq'), '達成する', NULL, false);

-- 上級-292: forfeit
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 292, 'choice', 1, 1,
   'forfeit',
   'Employees who fail to return equipment will forfeit their security deposit upon departure.（機器を返却しない従業員は退職時にセキュリティデポジットが没収されます。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '没収される', NULL, true),
  (currval('questions_id_seq'), '保持する',   NULL, false),
  (currval('questions_id_seq'), '増やす',     NULL, false),
  (currval('questions_id_seq'), '回収する',   NULL, false);

-- 上級-293: bolster
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 293, 'choice', 1, 1,
   'bolster',
   'The company hired additional staff to bolster its customer support team during peak season.（会社はピークシーズン中にカスタマーサポートチームを強化するために追加スタッフを雇いました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '強化する', NULL, true),
  (currval('questions_id_seq'), '弱める',   NULL, false),
  (currval('questions_id_seq'), '廃止する', NULL, false),
  (currval('questions_id_seq'), '削減する', NULL, false);

-- 上級-294: optimal
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 294, 'choice', 1, 1,
   'optimal',
   'The engineering team worked to identify the optimal configuration for maximum performance.（エンジニアリングチームは最大のパフォーマンスのための最適な構成を特定するために取り組みました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '最適な',   NULL, true),
  (currval('questions_id_seq'), '最低限の', NULL, false),
  (currval('questions_id_seq'), '標準的な', NULL, false),
  (currval('questions_id_seq'), '一時的な', NULL, false);

-- 上級-295: purveyor
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 295, 'choice', 1, 1,
   'purveyor',
   'The hotel has partnered with a local purveyor of organic produce to supply its kitchen.（ホテルはキッチンへの供給のために地元の有機農産物の供給者と提携しています。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '供給者',   NULL, true),
  (currval('questions_id_seq'), '購入者',   NULL, false),
  (currval('questions_id_seq'), '競合他社', NULL, false),
  (currval('questions_id_seq'), '流通業者', NULL, false);

-- 上級-296: raffle
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 296, 'choice', 1, 1,
   'raffle',
   'The company held a raffle at the end of the year-end party with exciting prizes for winners.（会社は年末パーティーの最後に勝者のための素晴らしい景品付きの抽選を行いました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '抽選', NULL, true),
  (currval('questions_id_seq'), '競売', NULL, false),
  (currval('questions_id_seq'), '投票', NULL, false),
  (currval('questions_id_seq'), '公募', NULL, false);

-- 上級-297: ventilation
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 297, 'choice', 1, 1,
   'ventilation',
   'The facility manager checked that the ventilation system was working properly before the event.（施設マネージャーはイベント前に換気システムが正常に機能していることを確認しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '換気', NULL, true),
  (currval('questions_id_seq'), '採光', NULL, false),
  (currval('questions_id_seq'), '暖房', NULL, false),
  (currval('questions_id_seq'), '冷房', NULL, false);

-- 上級-298: unwavering
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 298, 'choice', 1, 1,
   'unwavering',
   'The team showed unwavering commitment to delivering the project on time and within budget.（チームはプロジェクトを期限内に予算内で納品するという揺るぎない取り組みを示しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '揺るぎない', NULL, true),
  (currval('questions_id_seq'), '不安定な',   NULL, false),
  (currval('questions_id_seq'), '変動する',   NULL, false),
  (currval('questions_id_seq'), '柔軟な',     NULL, false);

-- 上級-299: exponentially
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 299, 'choice', 1, 1,
   'exponentially',
   'The number of online shoppers has grown exponentially over the past decade worldwide.（過去10年間で世界中のオンラインショッパーの数は指数関数的に増加しました。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '指数関数的に', NULL, true),
  (currval('questions_id_seq'), '徐々に',       NULL, false),
  (currval('questions_id_seq'), '一定に',       NULL, false),
  (currval('questions_id_seq'), 'わずかに',     NULL, false);

-- 上級-300: scrutinize
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (16, NULL, 300, 'choice', 1, 1,
   'scrutinize',
   'The auditors will scrutinize all financial records submitted during the quarterly review.（監査員は四半期レビュー中に提出されたすべての財務記録を精査します。）',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '精査する', NULL, true),
  (currval('questions_id_seq'), '無視する', NULL, false),
  (currval('questions_id_seq'), '要約する', NULL, false),
  (currval('questions_id_seq'), '承認する', NULL, false);
