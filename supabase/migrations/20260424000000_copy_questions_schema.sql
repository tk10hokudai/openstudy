-- ============================================
-- user_questions にコピー問題用カラムを追加
-- ============================================

-- カテゴリをNULL許容に（コピー問題はカテゴリなし）
ALTER TABLE user_questions ALTER COLUMN category DROP NOT NULL;

-- 問題コピー用カラム追加
ALTER TABLE user_questions ADD COLUMN IF NOT EXISTS audio_url      TEXT;
ALTER TABLE user_questions ADD COLUMN IF NOT EXISTS image_url      TEXT;
ALTER TABLE user_questions ADD COLUMN IF NOT EXISTS max_selections INTEGER NOT NULL DEFAULT 1;
ALTER TABLE user_questions ADD COLUMN IF NOT EXISTS score          INTEGER NOT NULL DEFAULT 1;
ALTER TABLE user_questions ADD COLUMN IF NOT EXISTS correct_answers TEXT;

-- user_question_choices に image_url 追加
ALTER TABLE user_question_choices ADD COLUMN IF NOT EXISTS image_url TEXT;

-- user_collection_items を廃止（データごと削除）
DROP TABLE IF EXISTS user_collection_items CASCADE;
