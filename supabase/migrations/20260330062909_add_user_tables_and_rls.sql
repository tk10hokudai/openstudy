-- ============================================
-- Phase 3: ユーザー進捗テーブル + RLS
-- ============================================

-- ============================================
-- 1. ユーザー進捗テーブル
-- ============================================

-- セッションモード
CREATE TYPE session_mode AS ENUM ('normal', 'random', 'favorites_only', 'retry_wrong');
CREATE TYPE session_status AS ENUM ('in_progress', 'completed');

-- sessions（演習セッション）
CREATE TABLE sessions (
  id          BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  user_id     UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  exam_id     BIGINT NOT NULL REFERENCES exams(id) ON DELETE CASCADE,
  section_id  BIGINT REFERENCES exam_sections(id) ON DELETE CASCADE,
  mode        session_mode NOT NULL DEFAULT 'normal',
  status      session_status NOT NULL DEFAULT 'in_progress',
  current_question_order INTEGER NOT NULL DEFAULT 0,
  question_ids BIGINT[] DEFAULT '{}',
  group_ids    BIGINT[] DEFAULT '{}',
  created_at  TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- user_answers（回答履歴）
CREATE TABLE user_answers (
  id          BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  session_id  BIGINT NOT NULL REFERENCES sessions(id) ON DELETE CASCADE,
  question_id BIGINT NOT NULL REFERENCES questions(id) ON DELETE CASCADE,
  is_correct  BOOLEAN NOT NULL,
  user_input  TEXT
);

-- user_favorites（お気に入り）
CREATE TABLE user_favorites (
  id          BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  user_id     UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  question_id BIGINT NOT NULL REFERENCES questions(id) ON DELETE CASCADE,
  UNIQUE(user_id, question_id)
);

-- exam_bookmarks（試験ブックマーク）
CREATE TABLE exam_bookmarks (
  id          BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  user_id     UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  exam_id     BIGINT NOT NULL REFERENCES exams(id) ON DELETE CASCADE,
  UNIQUE(user_id, exam_id)
);

-- インデックス
CREATE INDEX idx_sessions_user_id ON sessions(user_id);
CREATE INDEX idx_sessions_exam_id ON sessions(exam_id);
CREATE INDEX idx_user_answers_session_id ON user_answers(session_id);
CREATE INDEX idx_user_favorites_user_id ON user_favorites(user_id);
CREATE INDEX idx_exam_bookmarks_user_id ON exam_bookmarks(user_id);

-- ============================================
-- 2. RLS 有効化
-- ============================================

ALTER TABLE exams ENABLE ROW LEVEL SECURITY;
ALTER TABLE exam_sections ENABLE ROW LEVEL SECURITY;
ALTER TABLE question_groups ENABLE ROW LEVEL SECURITY;
ALTER TABLE questions ENABLE ROW LEVEL SECURITY;
ALTER TABLE choices ENABLE ROW LEVEL SECURITY;
ALTER TABLE sessions ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_answers ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_favorites ENABLE ROW LEVEL SECURITY;
ALTER TABLE exam_bookmarks ENABLE ROW LEVEL SECURITY;

-- ============================================
-- 3. RLS ポリシー
-- ============================================

-- 問題データ: 誰でも読める（ログイン不要）
CREATE POLICY "問題データは誰でも読める" ON exams FOR SELECT USING (true);
CREATE POLICY "セクションは誰でも読める" ON exam_sections FOR SELECT USING (true);
CREATE POLICY "グループは誰でも読める" ON question_groups FOR SELECT USING (true);
CREATE POLICY "問題は誰でも読める" ON questions FOR SELECT USING (true);
CREATE POLICY "選択肢は誰でも読める" ON choices FOR SELECT USING (true);

-- sessions: 自分のデータのみ
CREATE POLICY "セッション読み取り" ON sessions FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY "セッション作成" ON sessions FOR INSERT WITH CHECK (auth.uid() = user_id);
CREATE POLICY "セッション更新" ON sessions FOR UPDATE USING (auth.uid() = user_id);
CREATE POLICY "セッション削除" ON sessions FOR DELETE USING (auth.uid() = user_id);

-- user_answers: セッション経由で自分のデータのみ
CREATE POLICY "回答読み取り" ON user_answers FOR SELECT
  USING (EXISTS (SELECT 1 FROM sessions WHERE sessions.id = user_answers.session_id AND sessions.user_id = auth.uid()));
CREATE POLICY "回答作成" ON user_answers FOR INSERT
  WITH CHECK (EXISTS (SELECT 1 FROM sessions WHERE sessions.id = user_answers.session_id AND sessions.user_id = auth.uid()));

-- user_favorites: 自分のデータのみ
CREATE POLICY "お気に入り読み取り" ON user_favorites FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY "お気に入り追加" ON user_favorites FOR INSERT WITH CHECK (auth.uid() = user_id);
CREATE POLICY "お気に入り削除" ON user_favorites FOR DELETE USING (auth.uid() = user_id);

-- exam_bookmarks: 自分のデータのみ
CREATE POLICY "ブックマーク読み取り" ON exam_bookmarks FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY "ブックマーク追加" ON exam_bookmarks FOR INSERT WITH CHECK (auth.uid() = user_id);
CREATE POLICY "ブックマーク削除" ON exam_bookmarks FOR DELETE USING (auth.uid() = user_id);