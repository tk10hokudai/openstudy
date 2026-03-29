-- ============================================
-- OpenStudy Phase 1: 初期スキーマ
-- ============================================

-- Enum型の定義
CREATE TYPE question_type AS ENUM (
  'choice',        -- 選択式
  'text',          -- 記述式・穴埋め
  'image_choice',  -- 画像選択式
  'multi_blanks',  -- 複数穴埋め
  'essay'          -- 自由記述（自己採点）
);

CREATE TYPE scoring_rule AS ENUM (
  'all_or_nothing'  -- グループ全問正解で得点
);

-- ============================================
-- 1. 試験マスターと階層構造
-- ============================================

-- exams（試験・資格マスター）
CREATE TABLE exams (
  id          BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  title       TEXT NOT NULL,
  category    TEXT NOT NULL,
  description TEXT,
  created_at  TIMESTAMPTZ NOT NULL DEFAULT now()
);

-- exam_sections（階層構造テーブル）
CREATE TABLE exam_sections (
  id                BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  exam_id           BIGINT NOT NULL REFERENCES exams(id) ON DELETE CASCADE,
  parent_section_id BIGINT REFERENCES exam_sections(id) ON DELETE CASCADE,
  title             TEXT NOT NULL,
  order_index       INTEGER NOT NULL DEFAULT 0,
  pass_threshold    INTEGER
);

-- ============================================
-- 2. 問題データ
-- ============================================

-- question_groups（グループ問題用 ― Phase 1では未使用）
CREATE TABLE question_groups (
  id           BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  section_id   BIGINT NOT NULL REFERENCES exam_sections(id) ON DELETE CASCADE,
  group_text   TEXT,
  audio_url    TEXT,
  image_url    TEXT,
  score        INTEGER,
  scoring_rule scoring_rule
);

-- questions（個別設問）
CREATE TABLE questions (
  id              BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  section_id      BIGINT REFERENCES exam_sections(id) ON DELETE CASCADE,
  group_id        BIGINT REFERENCES question_groups(id) ON DELETE CASCADE,
  question_number INTEGER NOT NULL,
  question_type   question_type NOT NULL DEFAULT 'choice',
  max_selections  INTEGER NOT NULL DEFAULT 1,
  score           INTEGER NOT NULL DEFAULT 1,
  body_text       TEXT NOT NULL,
  explanation     TEXT NOT NULL DEFAULT '',
  audio_url       TEXT,
  image_url       TEXT,
  correct_answers JSONB,
  CONSTRAINT question_belongs_to_one_parent CHECK (
    (section_id IS NOT NULL AND group_id IS NULL) OR
    (section_id IS NULL AND group_id IS NOT NULL)
  )
);

-- choices（選択肢）
CREATE TABLE choices (
  id          BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  question_id BIGINT NOT NULL REFERENCES questions(id) ON DELETE CASCADE,
  choice_text TEXT,
  image_url   TEXT,
  is_correct  BOOLEAN NOT NULL DEFAULT false
);

-- ============================================
-- インデックス（検索パフォーマンス用）
-- ============================================
CREATE INDEX idx_exam_sections_exam_id ON exam_sections(exam_id);
CREATE INDEX idx_questions_section_id ON questions(section_id);
CREATE INDEX idx_questions_group_id ON questions(group_id);
CREATE INDEX idx_choices_question_id ON choices(question_id);
