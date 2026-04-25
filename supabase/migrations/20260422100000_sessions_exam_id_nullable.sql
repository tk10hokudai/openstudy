-- sessions.exam_id を nullable にする（ユーザー作成問題集の中断データに exam_id が不要なため）
ALTER TABLE sessions ALTER COLUMN exam_id DROP NOT NULL;
