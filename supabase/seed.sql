-- ============================================
-- OpenStudy Phase 1: シードデータ
-- 基本情報技術者試験 科目A（10問）
-- ============================================

-- 試験マスター
INSERT INTO exams (title, category, description)
VALUES ('基本情報技術者試験', 'IT系', '情報処理推進機構(IPA)が実施する国家試験。ITエンジニアの基礎知識を問う。');

-- セクション（科目A）
INSERT INTO exam_sections (exam_id, parent_section_id, title, order_index)
VALUES (1, NULL, '科目A', 1);

-- ============================================
-- 問題と選択肢（10問）
-- ============================================

-- Q1: 2進数
INSERT INTO questions (section_id, question_number, question_type, body_text, explanation)
VALUES (1, 1, 'choice',
  '8ビットの2進数 01011010 を10進数に変換したものはどれか。',
  '各桁の重みを計算する。0+64+0+16+8+0+2+0 = 90');
INSERT INTO choices (question_id, choice_text, is_correct) VALUES
  (1, '82',  false),
  (1, '86',  false),
  (1, '90',  true),
  (1, '94',  false);

-- Q2: 論理演算
INSERT INTO questions (section_id, question_number, question_type, body_text, explanation)
VALUES (1, 2, 'choice',
  'A = 1, B = 0 のとき、A AND B の結果はどれか。',
  'AND演算は両方が1のときのみ1を返す。A=1, B=0 なので結果は0。');
INSERT INTO choices (question_id, choice_text, is_correct) VALUES
  (2, '0',    true),
  (2, '1',    false),
  (2, 'A',    false),
  (2, 'B',    false);

-- Q3: OSの役割
INSERT INTO questions (section_id, question_number, question_type, body_text, explanation)
VALUES (1, 3, 'choice',
  'OSの主な役割として、最も適切なものはどれか。',
  'OSはハードウェアとアプリケーションの間に位置し、資源管理やプロセス管理などを行う。');
INSERT INTO choices (question_id, choice_text, is_correct) VALUES
  (3, 'Webページの作成を支援する',                    false),
  (3, 'ハードウェア資源の管理とプログラムの実行制御を行う', true),
  (3, 'ウイルスの検出と駆除を行う',                    false),
  (3, 'データベースの設計を支援する',                   false);

-- Q4: RAID
INSERT INTO questions (section_id, question_number, question_type, body_text, explanation)
VALUES (1, 4, 'choice',
  'RAID1の説明として、正しいものはどれか。',
  'RAID1はミラーリングとも呼ばれ、同じデータを2台のディスクに書き込むことで信頼性を高める。');
INSERT INTO choices (question_id, choice_text, is_correct) VALUES
  (4, 'データを分割して複数のディスクに書き込む',          false),
  (4, '同じデータを2台のディスクに書き込む',              true),
  (4, 'パリティ情報を付加してデータを分散する',            false),
  (4, 'ディスクを連結して1台の大きなディスクとして使う',     false);

-- Q5: TCP/IP
INSERT INTO questions (section_id, question_number, question_type, body_text, explanation)
VALUES (1, 5, 'choice',
  'TCP/IPのトランスポート層のプロトコルはどれか。',
  'TCPとUDPはトランスポート層のプロトコルである。HTTPはアプリケーション層、IPはネットワーク層。');
INSERT INTO choices (question_id, choice_text, is_correct) VALUES
  (5, 'HTTP',  false),
  (5, 'IP',    false),
  (5, 'TCP',   true),
  (5, 'SMTP',  false);

-- Q6: SQLのSELECT
INSERT INTO questions (section_id, question_number, question_type, body_text, explanation)
VALUES (1, 6, 'choice',
  'SQLにおいて、テーブルからデータを取得するために使用する文はどれか。',
  'SELECTはデータの取得、INSERTは挿入、UPDATEは更新、DELETEは削除に使用する。');
INSERT INTO choices (question_id, choice_text, is_correct) VALUES
  (6, 'INSERT',  false),
  (6, 'UPDATE',  false),
  (6, 'DELETE',  false),
  (6, 'SELECT',  true);

-- Q7: 公開鍵暗号
INSERT INTO questions (section_id, question_number, question_type, body_text, explanation)
VALUES (1, 7, 'choice',
  '公開鍵暗号方式の説明として、正しいものはどれか。',
  '公開鍵暗号方式では、暗号化と復号に異なる鍵（公開鍵と秘密鍵）を使用する。');
INSERT INTO choices (question_id, choice_text, is_correct) VALUES
  (7, '暗号化と復号に同じ鍵を使用する',                          false),
  (7, '暗号化と復号に異なる鍵を使用する',                         true),
  (7, '鍵を使用せずにデータを暗号化する',                         false),
  (7, '送信者と受信者が事前に同じ鍵を共有する必要がある',            false);

-- Q8: ウォーターフォールモデル
INSERT INTO questions (section_id, question_number, question_type, body_text, explanation)
VALUES (1, 8, 'choice',
  'ウォーターフォールモデルの特徴として、最も適切なものはどれか。',
  'ウォーターフォールモデルは、各工程を順番に進め、原則として前の工程には戻らない開発手法である。');
INSERT INTO choices (question_id, choice_text, is_correct) VALUES
  (8, '短い反復サイクルで開発を進める',                  false),
  (8, '各工程を順番に進め、原則として前の工程に戻らない',   true),
  (8, 'プロトタイプを繰り返し作成して要件を確認する',       false),
  (8, 'ペアプログラミングを必須とする',                   false);

-- Q9: IPアドレス
INSERT INTO questions (section_id, question_number, question_type, body_text, explanation)
VALUES (1, 9, 'choice',
  'IPv4アドレスのビット数はどれか。',
  'IPv4アドレスは32ビット（4オクテット）で構成される。IPv6は128ビット。');
INSERT INTO choices (question_id, choice_text, is_correct) VALUES
  (9, '8ビット',   false),
  (9, '16ビット',  false),
  (9, '32ビット',  true),
  (9, '64ビット',  false);

-- Q10: スタックのデータ構造
INSERT INTO questions (section_id, question_number, question_type, body_text, explanation)
VALUES (1, 10, 'choice',
  'データ構造のうち、後に入れたデータを先に取り出す（LIFO）方式のものはどれか。',
  'スタックはLIFO（Last In, First Out）方式。キューはFIFO（First In, First Out）方式。');
INSERT INTO choices (question_id, choice_text, is_correct) VALUES
  (10, 'キュー',         false),
  (10, 'スタック',       true),
  (10, 'リスト',         false),
  (10, 'ヒープ',         false);
