-- exam_sections に選択肢シャッフル可否フラグを追加
-- デフォルトは TRUE（シャッフルあり）
-- TOEIC L&R Part 1–7（section_id 3–11, exam_id=2）のみ FALSE に設定

ALTER TABLE exam_sections
  ADD COLUMN shuffle_choices BOOLEAN NOT NULL DEFAULT TRUE;

-- TOEIC L&R 本体（exam_id=2）のセクションはすべてシャッフル不可
UPDATE exam_sections
  SET shuffle_choices = FALSE
  WHERE exam_id = 2;
