-- ユーザーの問題ごとの Bad/Good 評価とメモを保存するテーブル
CREATE TABLE user_question_feedback (
  id          BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  user_id     UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  question_id BIGINT NOT NULL REFERENCES questions(id) ON DELETE CASCADE,
  rating      TEXT CHECK (rating IN ('bad', 'good')),
  comment     TEXT,
  updated_at  TIMESTAMPTZ NOT NULL DEFAULT now(),
  UNIQUE (user_id, question_id)
);

CREATE INDEX idx_user_question_feedback_user_id ON user_question_feedback(user_id);
CREATE INDEX idx_user_question_feedback_question_id ON user_question_feedback(question_id);

ALTER TABLE user_question_feedback ENABLE ROW LEVEL SECURITY;

CREATE POLICY "自分のフィードバックのみ操作可能" ON user_question_feedback
  FOR ALL USING (auth.uid() = user_id);
