-- Part 3・Part 4 の音声ファイルパスをファイル名に合わせて修正
UPDATE question_groups SET audio_url = '/audio/toeic_part3_q1.mp3' WHERE id = 1;
UPDATE question_groups SET audio_url = '/audio/toeic_part4_q1.mp3' WHERE id = 2;
