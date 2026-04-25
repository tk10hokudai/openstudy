-- ============================================
-- Phase 6: ユーザー作成問題テーブル
-- ============================================

-- user_questions（ユーザーが作成した問題）
CREATE TABLE user_questions (
  id              BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  user_id         UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  collection_id   BIGINT NOT NULL REFERENCES user_collections(id) ON DELETE CASCADE,
  question_number INTEGER NOT NULL,
  question_type   TEXT NOT NULL DEFAULT 'choice_single',
  category        TEXT NOT NULL,
  body_text       TEXT NOT NULL,
  explanation     TEXT,
  created_at      TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX idx_user_questions_collection_id ON user_questions(collection_id);
CREATE INDEX idx_user_questions_user_id ON user_questions(user_id);

-- user_question_choices（ユーザー作成問題の選択肢）
CREATE TABLE user_question_choices (
  id          BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  question_id BIGINT NOT NULL REFERENCES user_questions(id) ON DELETE CASCADE,
  choice_text TEXT NOT NULL,
  is_correct  BOOLEAN NOT NULL DEFAULT FALSE,
  sort_order  INTEGER NOT NULL
);

CREATE INDEX idx_user_question_choices_question_id ON user_question_choices(question_id);

-- RLS 有効化
ALTER TABLE user_questions ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_question_choices ENABLE ROW LEVEL SECURITY;

-- user_questions ポリシー（自分のデータのみ）
CREATE POLICY "ユーザー問題読み取り" ON user_questions FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY "ユーザー問題作成" ON user_questions FOR INSERT WITH CHECK (auth.uid() = user_id);
CREATE POLICY "ユーザー問題更新" ON user_questions FOR UPDATE USING (auth.uid() = user_id);
CREATE POLICY "ユーザー問題削除" ON user_questions FOR DELETE USING (auth.uid() = user_id);

-- user_question_choices ポリシー（question 経由で所有者チェック）
CREATE POLICY "ユーザー選択肢読み取り" ON user_question_choices FOR SELECT
  USING (EXISTS (
    SELECT 1 FROM user_questions
    WHERE user_questions.id = user_question_choices.question_id
      AND user_questions.user_id = auth.uid()
  ));
CREATE POLICY "ユーザー選択肢作成" ON user_question_choices FOR INSERT
  WITH CHECK (EXISTS (
    SELECT 1 FROM user_questions
    WHERE user_questions.id = user_question_choices.question_id
      AND user_questions.user_id = auth.uid()
  ));
CREATE POLICY "ユーザー選択肢削除" ON user_question_choices FOR DELETE
  USING (EXISTS (
    SELECT 1 FROM user_questions
    WHERE user_questions.id = user_question_choices.question_id
      AND user_questions.user_id = auth.uid()
  ));
