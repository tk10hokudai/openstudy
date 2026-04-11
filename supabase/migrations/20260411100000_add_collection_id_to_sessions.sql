-- sessions テーブルに collection_id を追加
-- コレクション演習の中断データをコレクションと紐付けるため

ALTER TABLE sessions ADD COLUMN IF NOT EXISTS collection_id BIGINT REFERENCES user_collections(id) ON DELETE CASCADE;
CREATE INDEX IF NOT EXISTS idx_sessions_collection_id ON sessions(collection_id);
