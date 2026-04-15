-- question_groups に音声読み上げ台本を保存する列を追加
-- 主に TOEIC Part 3 / Part 4 の会話・トーク文を記録するために使用する。
-- アプリの問題表示には使用しないが、音声生成・字幕表示・データ管理に利用できる。
ALTER TABLE question_groups ADD COLUMN transcript TEXT;
