-- ============================================
-- UI大幅変更: スキーマ変更
-- ============================================

-- 1. exam_sections に question_count カラム追加
ALTER TABLE exam_sections ADD COLUMN IF NOT EXISTS question_count INTEGER;

-- 2. user_favorites テーブル廃止
DROP TABLE IF EXISTS user_favorites;

-- 3. user_collections テーブル追加
CREATE TABLE user_collections (
  id          BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  user_id     UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  title       TEXT NOT NULL,
  created_at  TIMESTAMPTZ NOT NULL DEFAULT now()
);
CREATE INDEX idx_user_collections_user_id ON user_collections(user_id);

-- 4. user_collection_items テーブル追加
CREATE TABLE user_collection_items (
  id            BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  collection_id BIGINT NOT NULL REFERENCES user_collections(id) ON DELETE CASCADE,
  question_id   BIGINT NOT NULL REFERENCES questions(id) ON DELETE CASCADE,
  added_at      TIMESTAMPTZ NOT NULL DEFAULT now(),
  UNIQUE(collection_id, question_id)
);
CREATE INDEX idx_user_collection_items_collection_id ON user_collection_items(collection_id);

-- 5. RLS 有効化 + ポリシー
ALTER TABLE user_collections ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_collection_items ENABLE ROW LEVEL SECURITY;

CREATE POLICY "問題集読み取り" ON user_collections FOR SELECT USING (auth.uid() = user_id);
CREATE POLICY "問題集作成" ON user_collections FOR INSERT WITH CHECK (auth.uid() = user_id);
CREATE POLICY "問題集更新" ON user_collections FOR UPDATE USING (auth.uid() = user_id);
CREATE POLICY "問題集削除" ON user_collections FOR DELETE USING (auth.uid() = user_id);

CREATE POLICY "問題集アイテム読み取り" ON user_collection_items FOR SELECT
  USING (EXISTS (SELECT 1 FROM user_collections WHERE user_collections.id = user_collection_items.collection_id AND user_collections.user_id = auth.uid()));
CREATE POLICY "問題集アイテム追加" ON user_collection_items FOR INSERT
  WITH CHECK (EXISTS (SELECT 1 FROM user_collections WHERE user_collections.id = user_collection_items.collection_id AND user_collections.user_id = auth.uid()));
CREATE POLICY "問題集アイテム削除" ON user_collection_items FOR DELETE
  USING (EXISTS (SELECT 1 FROM user_collections WHERE user_collections.id = user_collection_items.collection_id AND user_collections.user_id = auth.uid()));