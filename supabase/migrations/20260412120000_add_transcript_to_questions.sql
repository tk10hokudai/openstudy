-- questions に音声読み上げ台本を保存する列を追加
-- 主に TOEIC Part 2 の読み上げ問題文を記録するために使用する。
-- アプリの問題表示には使用しないが、音声生成・字幕表示・データ管理に利用できる。
ALTER TABLE questions ADD COLUMN transcript TEXT;

-- TOEIC Part 1/2 は問題文を表示しないため body_text を NULL 許容に変更する
ALTER TABLE questions ALTER COLUMN body_text DROP NOT NULL;
