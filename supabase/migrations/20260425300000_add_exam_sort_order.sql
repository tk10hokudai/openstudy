-- exams テーブルに sort_order 列を追加（五十音・アルファベット順）
ALTER TABLE exams ADD COLUMN sort_order INTEGER NOT NULL DEFAULT 99;

UPDATE exams SET sort_order = 1 WHERE id = 1; -- 基本情報技術者試験
UPDATE exams SET sort_order = 2 WHERE id = 5; -- 基本情報技術者試験【用語集】
UPDATE exams SET sort_order = 3 WHERE id = 6; -- プログラミング言語【python】
UPDATE exams SET sort_order = 4 WHERE id = 3; -- SPI試験
UPDATE exams SET sort_order = 5 WHERE id = 2; -- TOEIC L&R
UPDATE exams SET sort_order = 6 WHERE id = 4; -- TOEIC L&R【単語集】
