-- choices に音声読み上げ台本を保存する列を追加
-- TOEIC Part 1/2 では choice_text に "(A)"/"(B)"/"(C)"/"(D)" のみ格納し、
-- 実際に読み上げられる文章をこの列に保存する。
-- アプリの選択肢表示には使用しないが、音声生成・字幕表示・データ管理に利用できる。
ALTER TABLE choices ADD COLUMN transcript TEXT;
