-- user_answers に user_question_id カラムを追加（mixed モード対応）
-- question_id は exam questions 用、user_question_id は user_questions 用

ALTER TABLE user_answers ALTER COLUMN question_id DROP NOT NULL;

ALTER TABLE user_answers
  ADD COLUMN user_question_id BIGINT REFERENCES user_questions(id) ON DELETE CASCADE;

CREATE INDEX idx_user_answers_user_question_id ON user_answers(user_question_id);
