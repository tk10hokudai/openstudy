-- ============================================
-- 基本情報技術者試験
-- section_id: 1=科目A, 2=科目B
--
-- 問題を追加するときはこのファイルの末尾に追記する
-- 書き方:
--   INSERT INTO questions (...) VALUES (section_id, NULL, 次の連番, ...);
--   INSERT INTO choices (question_id, ...) VALUES (currval('questions_id_seq'), ...);
-- ============================================

-- ----------------------------------------
-- 科目A（section_id=1）
-- ----------------------------------------

-- A-1: 主キーの説明
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 1, 'choice', 1, 1,
   '関係データベースにおいて、主キーの説明として最も適切なものはどれか。',
   '主キーは、テーブル内の各行（レコード）を一意に識別するための列または列の組み合わせである。NULL値は許容されず、重複も許されない。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'テーブル内の各行を一意に識別するためのキー',   NULL, true),
  (currval('questions_id_seq'), 'テーブル間の関連を定義するために使用するキー', NULL, false),
  (currval('questions_id_seq'), '検索速度を向上させるために設定するキー',       NULL, false),
  (currval('questions_id_seq'), 'データの暗号化に使用するキー',                 NULL, false);

-- ----------------------------------------
-- 科目A：ネットワーク（A-2〜A-3）
-- ----------------------------------------

-- A-2: OSI参照モデルのトランスポート層
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 2, 'choice', 1, 1,
   'OSI参照モデルにおいて、エンドツーエンドの通信品質を保証し、データの順序制御や再送制御を担当する層はどれか。',
   'トランスポート層（第4層）はエンドツーエンドの信頼性を保証する。TCP（コネクション型、再送あり）や UDP（コネクションレス型）がこの層のプロトコル。ネットワーク層（第3層）はルーティング、データリンク層（第2層）はフレーム転送を担当。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'トランスポート層',   NULL, true),
  (currval('questions_id_seq'), 'ネットワーク層',     NULL, false),
  (currval('questions_id_seq'), 'セッション層',       NULL, false),
  (currval('questions_id_seq'), 'データリンク層',     NULL, false);

-- A-3: サブネットマスクとネットワークアドレス
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 3, 'choice', 1, 1,
   'IPアドレス 192.168.1.50 にサブネットマスク 255.255.255.0 を適用したとき、ネットワークアドレスはどれか。',
   '192.168.1.50 と 255.255.255.0 のビット AND 演算を行う。第4オクテット: 50 AND 0 = 0。よってネットワークアドレスは 192.168.1.0。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '192.168.1.0',   NULL, true),
  (currval('questions_id_seq'), '192.168.0.0',   NULL, false),
  (currval('questions_id_seq'), '192.168.1.1',   NULL, false),
  (currval('questions_id_seq'), '192.168.1.255', NULL, false);

-- ----------------------------------------
-- 科目A：ハードウェア・コンピュータ構成（A-4〜A-6）
-- ----------------------------------------

-- A-4: クロック周波数とMIPS
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 4, 'choice', 1, 1,
   'クロック周波数が 2GHz のCPUで、1命令の実行に平均4クロック必要な場合、1秒間に実行できる命令数は何百万回（MIPS）か。',
   '2GHz = 2×10⁹ クロック/秒。命令数/秒 = 2×10⁹ ÷ 4 = 5×10⁸ = 500 MIPS。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '500', NULL, true),
  (currval('questions_id_seq'), '100', NULL, false),
  (currval('questions_id_seq'), '250', NULL, false),
  (currval('questions_id_seq'), '800', NULL, false);

-- A-5: キャッシュメモリの役割
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 5, 'choice', 1, 1,
   'キャッシュメモリに関する記述として最も適切なものはどれか。',
   'キャッシュメモリはCPUと主記憶（RAM）の速度差を緩和するための高速メモリ。主記憶より容量は小さいが高速であり、揮発性（電源を切るとデータが消える）。補助記憶装置（HDD/SSD）ではない。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'CPUと主記憶の速度差を緩和するための高速メモリである',              NULL, true),
  (currval('questions_id_seq'), '主記憶より容量が大きく低速なメモリである',                         NULL, false),
  (currval('questions_id_seq'), 'データを永続的に保存するための補助記憶装置の一種である',           NULL, false),
  (currval('questions_id_seq'), '電源を切ってもデータが消えない不揮発性メモリである',               NULL, false);

-- A-6: 2の補数表現
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 6, 'choice', 1, 1,
   '8ビットの2の補数表現で、10進数 −7 を表す2進数はどれか。',
   '7 = 00000111₂。ビット反転 → 11111000₂。+1 → 11111001₂。よって −7 = 11111001₂。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '11111001', NULL, true),
  (currval('questions_id_seq'), '10000111', NULL, false),
  (currval('questions_id_seq'), '11111000', NULL, false),
  (currval('questions_id_seq'), '11111010', NULL, false);

-- ----------------------------------------
-- 科目A：データベース（A-7〜A-9）
-- ----------------------------------------

-- A-7: 第2正規形の条件
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 7, 'choice', 1, 1,
   '関係データベースの第2正規形（2NF）の条件として正しいものはどれか。',
   '第2正規形は「第1正規形を満たし、かつすべての非キー属性が主キー全体に完全関数従属している」状態。部分関数従属（複合主キーの一部にしか従属しない属性がある）を排除する。第3正規形は推移的関数従属を排除する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '第1正規形であり、すべての非キー属性が主キー全体に完全関数従属している', NULL, true),
  (currval('questions_id_seq'), 'すべての列がNULL値を含まない',                                           NULL, false),
  (currval('questions_id_seq'), '第2正規形であり、推移的関数従属が存在しない',                           NULL, false),
  (currval('questions_id_seq'), '繰り返しグループが存在しない',                                           NULL, false);

-- A-8: SQLのOR条件と集合
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 8, 'choice', 1, 1,
   '10行のデータをもつテーブル「商品」がある。カテゴリが「食品」の行が4件、価格が1000以上の行が6件、両方を満たす行が2件のとき、次のSQLで取得される行数はいくつか。
SELECT * FROM 商品 WHERE カテゴリ = ''食品'' OR 価格 >= 1000;',
   'OR条件は集合の和集合。|A∪B| = |A| + |B| − |A∩B| = 4 + 6 − 2 = 8行。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '8',  NULL, true),
  (currval('questions_id_seq'), '4',  NULL, false),
  (currval('questions_id_seq'), '6',  NULL, false),
  (currval('questions_id_seq'), '10', NULL, false);

-- A-9: 関係代数の射影と選択
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 9, 'choice', 1, 1,
   '関係代数の「射影（projection）」操作の説明として正しいものはどれか。',
   '射影（π）は指定した列のみを取り出す操作。重複行は除去される。条件を満たす行を抽出するのは「選択（σ）」。2つの関係を結合するのは「結合（⋈）」。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '指定した列のみを取り出す操作（重複行を除く）',               NULL, true),
  (currval('questions_id_seq'), '条件を満たす行を取り出す操作',                               NULL, false),
  (currval('questions_id_seq'), '2つの関係を共通の列で結合する操作',                         NULL, false),
  (currval('questions_id_seq'), '2つの関係のすべての行の組み合わせを生成する操作',           NULL, false);

-- ----------------------------------------
-- 科目A：システム信頼性・ソフトウェア開発（A-10〜A-12）
-- ----------------------------------------

-- A-10: 稼働率の計算式
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 10, 'choice', 1, 1,
   'システムの稼働率（アベイラビリティ）を表す計算式として正しいものはどれか。
ここで MTBF は平均故障間隔（Mean Time Between Failures）、MTTR は平均修復時間（Mean Time To Repair）とする。',
   '稼働率 = MTBF ÷ (MTBF + MTTR)。MTBFが大きく（故障しにくく）、MTTRが小さい（すぐ修復できる）ほど稼働率は高くなる。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'MTBF ÷ (MTBF + MTTR)',       NULL, true),
  (currval('questions_id_seq'), 'MTTR ÷ (MTBF + MTTR)',       NULL, false),
  (currval('questions_id_seq'), 'MTBF ÷ MTTR',                NULL, false),
  (currval('questions_id_seq'), '(MTBF − MTTR) ÷ MTBF',       NULL, false);

-- A-11: ウォーターフォールモデルの特徴
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 11, 'choice', 1, 1,
   'ウォーターフォールモデルの説明として最も適切なものはどれか。',
   'ウォーターフォールモデルは要件定義→設計→実装→テスト→運用の各工程を順番に進め、原則として前工程に戻らない開発手法。変更要求への対応が難しい反面、進捗管理がしやすいという特徴がある。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '要件定義から保守まで各工程を順番に進め、前工程に戻らない手法',   NULL, true),
  (currval('questions_id_seq'), '短いサイクルを繰り返しながら段階的に開発を進める手法',             NULL, false),
  (currval('questions_id_seq'), 'ユーザが参加してプロトタイプを繰り返し評価する開発手法',           NULL, false),
  (currval('questions_id_seq'), '機能をコンポーネント単位で独立して開発する手法',                   NULL, false);

-- A-12: クロスサイトスクリプティング（XSS）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 12, 'choice', 1, 1,
   'クロスサイトスクリプティング（XSS）攻撃の説明として最も適切なものはどれか。',
   'XSSはWebアプリケーションの脆弱性を利用して、攻撃者が悪意のあるスクリプトをページに埋め込み、閲覧者のブラウザ上で実行させる攻撃。Cookieの窃取やフィッシング誘導に悪用される。対策はエスケープ処理やContent Security Policy（CSP）。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '悪意のあるスクリプトをWebページに埋め込み、閲覧者のブラウザ上で実行させる攻撃', NULL, true),
  (currval('questions_id_seq'), '大量のリクエストを送りつけてサービスを停止させる攻撃',                           NULL, false),
  (currval('questions_id_seq'), 'データベースへの不正なSQL文を入力して情報を窃取する攻撃',                       NULL, false),
  (currval('questions_id_seq'), '中間者攻撃によってSSL証明書を偽造する攻撃',                                     NULL, false);

-- ----------------------------------------
-- 科目A：データ構造・アルゴリズム・ストラテジ（A-13〜A-15）
-- ----------------------------------------

-- A-13: スタックとキューの違い
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 13, 'choice', 1, 1,
   'スタックとキューのデータ取り出し方式の組み合わせとして正しいものはどれか。',
   'スタックは後入れ先出し（LIFO: Last In First Out）、キューは先入れ先出し（FIFO: First In First Out）。スタックは関数呼び出しの管理などに、キューは処理待ち行列などに使われる。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'スタック: LIFO　　キュー: FIFO', NULL, true),
  (currval('questions_id_seq'), 'スタック: FIFO　　キュー: LIFO', NULL, false),
  (currval('questions_id_seq'), 'スタック: FIFO　　キュー: FIFO', NULL, false),
  (currval('questions_id_seq'), 'スタック: LIFO　　キュー: LIFO', NULL, false);

-- A-14: 2進数から16進数への変換
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 14, 'choice', 1, 1,
   '2進数 11010110 を16進数に変換したものはどれか。',
   '4ビットずつ区切る: 1101 | 0110。1101₂ = 13 = D₁₆、0110₂ = 6 = 6₁₆。よって D6₁₆。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'D6', NULL, true),
  (currval('questions_id_seq'), 'B6', NULL, false),
  (currval('questions_id_seq'), 'C6', NULL, false),
  (currval('questions_id_seq'), 'E6', NULL, false);

-- A-15: SLAの説明
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 15, 'choice', 1, 1,
   'SLA（Service Level Agreement）の説明として最も適切なものはどれか。',
   'SLAはサービス提供者と利用者の間で、提供するサービスの品質（稼働率・応答時間・サポート対応時間など）を定めた合意文書。達成できない場合のペナルティも記載されることがある。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'サービス提供者と利用者の間でサービス品質を定めた合意文書',   NULL, true),
  (currval('questions_id_seq'), 'システム開発の各工程と担当者を記載した計画書',                 NULL, false),
  (currval('questions_id_seq'), 'ソフトウェアのライセンス条件を規定した文書',                 NULL, false),
  (currval('questions_id_seq'), '情報セキュリティポリシーを定めた社内規程',                   NULL, false);

-- ----------------------------------------
-- 科目A：ハードウェア・OS（A-16〜A-19）
-- ----------------------------------------

-- A-16: RAIDの種類
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 16, 'choice', 1, 1,
   'RAID1 の説明として最も適切なものはどれか。',
   'RAID1（ミラーリング）は同じデータを2台以上のディスクに同時に書き込む方式。1台が故障してもデータを維持できる。RAID0はストライピング（高速・冗長性なし）、RAID5はパリティ分散（3台以上、1台故障まで耐える）。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '同じデータを複数のディスクに同時に書き込み、冗長性を確保する方式',           NULL, true),
  (currval('questions_id_seq'), 'データを複数のディスクに分散して書き込み、高速化する方式',                     NULL, false),
  (currval('questions_id_seq'), 'パリティ情報を分散させ、1台の故障に耐える方式',                             NULL, false),
  (currval('questions_id_seq'), 'データを圧縮しながらディスクに書き込む方式',                                 NULL, false);

-- A-17: デッドロックの説明
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 17, 'choice', 1, 1,
   'OSにおけるデッドロックの説明として最も適切なものはどれか。',
   'デッドロックは複数のプロセスが互いに相手が保持するリソースの解放を永遠に待ち続け、どのプロセスも実行を進められなくなった状態。回避策としてリソース獲得順序の統一などがある。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '複数のプロセスが互いに相手の保持するリソースの解放を待ち続ける状態',         NULL, true),
  (currval('questions_id_seq'), 'プロセスが長時間CPUを占有し続ける状態',                                       NULL, false),
  (currval('questions_id_seq'), 'メモリ不足によってプロセスが起動できない状態',                               NULL, false),
  (currval('questions_id_seq'), 'ディスクへの書き込みが完了するまでCPUが停止する状態',                       NULL, false);

-- A-18: 仮想記憶のページング方式
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 18, 'choice', 1, 1,
   '仮想記憶のページング方式に関する説明として最も適切なものはどれか。',
   'ページング方式は主記憶と仮想記憶を固定長（ページ）単位で管理する手法。プログラムの実行に必要なページだけを主記憶に読み込み（デマンドページング）、不足時はページフォルトが発生する。セグメンテーションは可変長単位での管理。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '主記憶と仮想記憶を固定長のページ単位で管理し、必要なページだけ読み込む方式', NULL, true),
  (currval('questions_id_seq'), '主記憶を可変長のブロックに分割してプログラムを管理する方式',               NULL, false),
  (currval('questions_id_seq'), 'プログラム全体をあらかじめ主記憶に読み込んでから実行する方式',             NULL, false),
  (currval('questions_id_seq'), '物理アドレスをプログラム内に直接記述する方式',                             NULL, false);

-- A-19: OSのプロセス状態遷移
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 19, 'choice', 1, 1,
   'OSにおけるプロセスの状態遷移で、「実行可能状態」から「実行状態」への遷移を引き起こすイベントはどれか。',
   'ディスパッチ（dispatch）はOSのスケジューラが実行可能状態のプロセスにCPUを割り当てること。入出力完了は待機状態→実行可能状態、入出力要求は実行状態→待機状態への遷移。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'スケジューラによるCPUの割り当て（ディスパッチ）', NULL, true),
  (currval('questions_id_seq'), '入出力処理の完了',                           NULL, false),
  (currval('questions_id_seq'), '入出力処理の要求',                           NULL, false),
  (currval('questions_id_seq'), 'プロセスの終了',                             NULL, false);

-- ----------------------------------------
-- 科目A：ネットワーク（A-20〜A-21）
-- ----------------------------------------

-- A-20: DNSの役割
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 20, 'choice', 1, 1,
   'DNS（Domain Name System）の説明として最も適切なものはどれか。',
   'DNSはドメイン名（例: example.com）とIPアドレスを対応づける仕組み。名前解決を行うサーバをDNSサーバという。DHCPはIPアドレスの動的割り当て、HTTPはWeb転送、SMTPはメール転送プロトコル。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ドメイン名とIPアドレスを対応させる名前解決の仕組み',               NULL, true),
  (currval('questions_id_seq'), 'ネットワーク上の機器にIPアドレスを動的に割り当てるプロトコル',     NULL, false),
  (currval('questions_id_seq'), 'Webページのデータをサーバとクライアントでやりとりするプロトコル', NULL, false),
  (currval('questions_id_seq'), '電子メールをサーバ間で転送するプロトコル',                         NULL, false);

-- A-21: HTTPSの説明
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 21, 'choice', 1, 1,
   'HTTPS の説明として最も適切なものはどれか。',
   'HTTPSはHTTPをTLS（Transport Layer Security）によって暗号化したプロトコル。通信内容の盗聴・改ざん防止とサーバ認証を提供する。ポート番号は443番を使用する（HTTPは80番）。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'HTTPをTLS/SSLで暗号化して通信するプロトコル',             NULL, true),
  (currval('questions_id_seq'), 'HTMLファイルを圧縮して高速転送するプロトコル',             NULL, false),
  (currval('questions_id_seq'), 'ファイルをサーバとクライアント間で転送するプロトコル',     NULL, false),
  (currval('questions_id_seq'), 'ネットワーク機器の管理情報を収集するプロトコル',           NULL, false);

-- ----------------------------------------
-- 科目A：データベース（A-22〜A-24）
-- ----------------------------------------

-- A-22: トランザクションの原子性
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 22, 'choice', 1, 1,
   'トランザクションのACID特性のうち、「トランザクション内の処理はすべて完了するか、すべて取り消されるかのどちらかになる」という性質を何というか。',
   '原子性（Atomicity）はトランザクションが「全か無か」で処理されることを保証する。一貫性（Consistency）はDB整合性の保持、独立性（Isolation）は他トランザクションからの隔離、永続性（Durability）はコミット後の永続化を保証する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '原子性（Atomicity）',     NULL, true),
  (currval('questions_id_seq'), '一貫性（Consistency）',   NULL, false),
  (currval('questions_id_seq'), '独立性（Isolation）',     NULL, false),
  (currval('questions_id_seq'), '永続性（Durability）',    NULL, false);

-- A-23: SQL GROUP BY と HAVING
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 23, 'choice', 1, 1,
   '次の SQL を実行したとき、取得される内容として最も適切なものはどれか。
SELECT 部署ID, COUNT(*) AS 人数 FROM 社員
GROUP BY 部署ID HAVING COUNT(*) >= 5;',
   'GROUP BY で部署ごとに集計し、HAVING でグループに対する条件（社員数5人以上）を絞り込む。HAVING は集計後のフィルタリングに使用し、WHERE は集計前の行に対して使用する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '社員数が5人以上の部署IDとその社員数を取得する',           NULL, true),
  (currval('questions_id_seq'), 'すべての部署IDと社員の合計数を1行で取得する',             NULL, false),
  (currval('questions_id_seq'), '社員IDが5以上の社員が所属する部署を取得する',             NULL, false),
  (currval('questions_id_seq'), '社員数が5人未満の部署IDとその社員数を取得する',           NULL, false);

-- A-24: SQLのUPDATE文
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 24, 'choice', 1, 1,
   '次の SQL を実行した結果として最も適切なものはどれか。
UPDATE 社員 SET 給与 = 給与 * 1.1 WHERE 部署ID = ''10'';',
   'UPDATE 文は既存レコードの値を更新する。WHERE 句で部署ID=''10'' に絞り込み、その行の給与列を1.1倍に更新する。新しいレコードの挿入は INSERT、削除は DELETE。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '部署IDが10のすべての社員の給与を1.1倍に更新する',         NULL, true),
  (currval('questions_id_seq'), '部署IDが10の社員レコードをすべて削除する',                 NULL, false),
  (currval('questions_id_seq'), '部署IDが10の社員データを新しく挿入する',                   NULL, false),
  (currval('questions_id_seq'), '部署IDが10に属する社員の人数を取得する',                   NULL, false);

-- ----------------------------------------
-- 科目A：セキュリティ（A-25〜A-27）
-- ----------------------------------------

-- A-25: ブルートフォース攻撃
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 25, 'choice', 1, 1,
   'パスワードに対するブルートフォース（総当たり）攻撃の説明として最も適切なものはどれか。',
   'ブルートフォース攻撃は考えられるすべての文字列の組み合わせを試してパスワードを特定しようとする攻撃。アカウントロックアウトが有効な対策。パスワードリスト攻撃は他サービスで漏洩した認証情報を使い回す攻撃で別物。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'パスワードとして考えられる文字列の組み合わせをすべて試行する攻撃',             NULL, true),
  (currval('questions_id_seq'), 'フィッシングサイトでユーザーにパスワードを入力させる攻撃',                     NULL, false),
  (currval('questions_id_seq'), '他のサービスで漏洩したIDとパスワードの組み合わせをそのまま試す攻撃',           NULL, false),
  (currval('questions_id_seq'), 'ネットワークを盗聴してパスワードのハッシュ値を入手する攻撃',                   NULL, false);

-- A-26: 情報セキュリティの完全性
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 26, 'choice', 1, 1,
   '情報セキュリティの3要素（CIA）のうち「完全性（Integrity）」の説明として最も適切なものはどれか。',
   '完全性（Integrity）は情報が正確であり、許可なく改ざんされていないことを保証する性質。機密性（Confidentiality）は不正アクセスからの保護、可用性（Availability）は必要なときに利用できることを指す。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '情報が正確であり、許可なく改ざんされていない性質',         NULL, true),
  (currval('questions_id_seq'), '許可された利用者だけが情報にアクセスできる性質',           NULL, false),
  (currval('questions_id_seq'), '許可された利用者が必要なときに情報を利用できる性質',       NULL, false),
  (currval('questions_id_seq'), '情報の発信者が後から送信を否定できない性質',               NULL, false);

-- A-27: 不正のトライアングル（内部不正）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 27, 'choice', 1, 1,
   '内部不正を引き起こす要因を説明した「不正のトライアングル」を構成する3要素として正しい組み合わせはどれか。',
   '不正のトライアングルは「動機（不満・利益目的など）」「機会（内部アクセス権など、不正できる環境）」「正当化（自分を納得させる理由）」の3要素で構成される。3要素が揃うと内部不正が起きやすくなるとされる。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '動機・機会・正当化',             NULL, true),
  (currval('questions_id_seq'), '脅威・脆弱性・リスク',           NULL, false),
  (currval('questions_id_seq'), '機密性・完全性・可用性',         NULL, false),
  (currval('questions_id_seq'), '予防・検知・対応',               NULL, false);

-- ----------------------------------------
-- 科目A：アルゴリズム・データ構造（A-28〜A-30）
-- ----------------------------------------

-- A-28: 線形探索の計算量
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 28, 'choice', 1, 1,
   '整列されていないn個のデータから目的のデータを線形探索する場合の最悪計算量はどれか。',
   '線形探索は先頭から順に1つずつ比較する。最悪の場合（目的データが末尾にあるか存在しない場合）はn回の比較が必要なので O(n)。二分探索は O(log n)、ハッシュ探索は平均 O(1)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(n)',      NULL, true),
  (currval('questions_id_seq'), 'O(1)',      NULL, false),
  (currval('questions_id_seq'), 'O(log n)',  NULL, false),
  (currval('questions_id_seq'), 'O(n²)',     NULL, false);

-- A-29: バブルソートの計算量
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 29, 'choice', 1, 1,
   'バブルソートの最悪計算量はどれか。',
   'バブルソートはn個の要素をソートするとき、最大で n×(n-1)/2 回の比較が必要。計算量は O(n²)。クイックソートの平均計算量は O(n log n)、ヒープソートは常に O(n log n)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(n²)',      NULL, true),
  (currval('questions_id_seq'), 'O(n)',       NULL, false),
  (currval('questions_id_seq'), 'O(n log n)', NULL, false),
  (currval('questions_id_seq'), 'O(2ⁿ)',      NULL, false);

-- A-30: 排他的論理和（XOR）ゲート
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 30, 'choice', 1, 1,
   '2入力の排他的論理和（XOR）ゲートにおいて、入力 A=1、B=1 のときの出力はどれか。',
   'XOR（排他的論理和）は入力が「異なる」ときに1、「同じ」ときに0を出力する。A=1・B=1 は「同じ」なので出力は0。A=0・B=1 や A=1・B=0 のときは出力が1になる。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '0', NULL, true),
  (currval('questions_id_seq'), '1', NULL, false),
  (currval('questions_id_seq'), '入力Aと同じ値', NULL, false),
  (currval('questions_id_seq'), '不定',           NULL, false);

-- ----------------------------------------
-- 科目A：システム開発・プロジェクト管理（A-31〜A-33）
-- ----------------------------------------

-- A-31: アジャイル開発のスプリント
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 31, 'choice', 1, 1,
   'スクラム（Scrum）開発における「スプリント」の説明として最も適切なものはどれか。',
   'スプリントはスクラムの中核となる短期間（通常1〜4週間）の反復開発サイクル。各スプリント終了時に動作するソフトウェアの増分を提供する。プロダクトバックログは開発機能の優先順位付きリスト、デイリースクラムは毎日の短時間ミーティング。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '短期間（1〜4週間）の繰り返し開発サイクル',                     NULL, true),
  (currval('questions_id_seq'), '開発チームが毎日行う15分程度の進捗確認ミーティング',           NULL, false),
  (currval('questions_id_seq'), '開発する機能を優先順位付けして管理するリスト',                 NULL, false),
  (currval('questions_id_seq'), 'テスト工程のみを集中して行うフェーズ',                         NULL, false);

-- A-32: ブラックボックステスト
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 32, 'choice', 1, 1,
   'プログラムの内部構造を考慮せず、入力と出力の関係だけに基づいてテストを行う手法はどれか。',
   'ブラックボックステストはプログラムの内部実装を知らずに、仕様書に基づいて入出力の正しさを検証する手法。同値分割・境界値分析などの技法がある。ホワイトボックステストはプログラム内部のロジックを考慮してテストする。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ブラックボックステスト',   NULL, true),
  (currval('questions_id_seq'), 'ホワイトボックステスト',   NULL, false),
  (currval('questions_id_seq'), '回帰テスト',               NULL, false),
  (currval('questions_id_seq'), '単体テスト',               NULL, false);

-- A-33: クリティカルパス
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 33, 'choice', 1, 1,
   'プロジェクト管理における「クリティカルパス」の説明として最も適切なものはどれか。',
   'クリティカルパスはプロジェクト完了までの作業経路のうち最も時間がかかる経路。クリティカルパス上の作業が遅れると、プロジェクト全体の完了日が遅れる。PERT図などで分析される。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'プロジェクト完了までの最長経路であり、遅延するとプロジェクト全体が遅れる', NULL, true),
  (currval('questions_id_seq'), 'プロジェクトのコストを管理するための主要な作業の集合',               NULL, false),
  (currval('questions_id_seq'), 'プロジェクトのリスクが最も高い作業の集合',                           NULL, false),
  (currval('questions_id_seq'), '最も優先度の高いタスクを並べた作業リスト',                           NULL, false);

-- ----------------------------------------
-- 科目A：ストラテジ・マネジメント（A-34〜A-35）
-- ----------------------------------------

-- A-34: ITガバナンスの説明
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 34, 'choice', 1, 1,
   'ITガバナンスの説明として最も適切なものはどれか。',
   'ITガバナンスは経営目標の達成に向けてITを戦略的に活用するための組織的な統制・管理の仕組み。経営者・取締役会が主体となりITの方向性・リスク・資源配分を監督する。ISO/IEC 38500 が国際標準として存在する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '経営目標の達成に向けてITを戦略的に活用するための組織的な統制の仕組み',   NULL, true),
  (currval('questions_id_seq'), 'システム開発プロジェクトの進捗と品質を管理する担当者の活動',               NULL, false),
  (currval('questions_id_seq'), 'ネットワークのセキュリティリスクを技術的に管理する手法',                 NULL, false),
  (currval('questions_id_seq'), 'ソフトウェアの欠陥を発見・修正するためのテストプロセス',               NULL, false);

-- A-35: PDCA サイクル
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 35, 'choice', 1, 1,
   'PDCAサイクルの「C」が表すフェーズの説明として最も適切なものはどれか。',
   'PDCAサイクルは Plan（計画）→ Do（実行）→ Check（評価・点検）→ Act（改善）の繰り返しによる継続的改善の手法。「C」は Check であり、実行結果を計画と比較して評価・点検するフェーズ。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '実行結果を計画と比較して評価・点検するフェーズ',     NULL, true),
  (currval('questions_id_seq'), '目標や手順を設定するフェーズ',                       NULL, false),
  (currval('questions_id_seq'), '計画に従って実際に業務を行うフェーズ',               NULL, false),
  (currval('questions_id_seq'), '評価結果をもとに改善策を実施するフェーズ',           NULL, false);

-- ----------------------------------------
-- 科目A：ネットワーク（A-36〜A-37）
-- ----------------------------------------

-- A-36: TCPとUDPの違い
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 36, 'choice', 1, 1,
   'TCP と UDP を比較した説明として正しいものはどれか。',
   'TCPはコネクション型プロトコルで、3ウェイハンドシェイクによる接続確立・順序制御・再送制御によって信頼性を保証する。UDPはコネクションレス型で制御オーバーヘッドが少なく、リアルタイム通信（映像・音声）や DNS クエリに適する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'TCPはコネクション型で信頼性が高く、UDPはコネクションレス型で低オーバーヘッドである', NULL, true),
  (currval('questions_id_seq'), 'TCPはコネクションレス型で信頼性が低く、UDPはコネクション型で信頼性が高い',     NULL, false),
  (currval('questions_id_seq'), 'TCPとUDPはともにコネクションレス型で機能に差はない',                           NULL, false),
  (currval('questions_id_seq'), 'TCPはリアルタイム通信に適し、UDPはファイル転送の信頼性確保に適している',       NULL, false);

-- A-37: NATの役割
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 37, 'choice', 1, 1,
   'NAT（Network Address Translation）の説明として最も適切なものはどれか。',
   'NATはプライベートIPアドレスとグローバルIPアドレスを相互に変換する技術。グローバルIPアドレスの節約や内部ネットワークの隠蔽に使われる。1つのグローバルIPを複数のプライベートIPで共有する方式は NAPT（IP マスカレード）とも呼ばれる。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'プライベートIPアドレスとグローバルIPアドレスを相互に変換する技術', NULL, true),
  (currval('questions_id_seq'), 'ドメイン名をIPアドレスに変換する仕組み',                           NULL, false),
  (currval('questions_id_seq'), 'データを暗号化して安全に送受信するプロトコル',                     NULL, false),
  (currval('questions_id_seq'), 'ネットワーク機器のIPアドレスを自動設定する技術',                   NULL, false);

-- ----------------------------------------
-- 科目A：ハードウェア（A-38〜A-39）
-- ----------------------------------------

-- A-38: 磁気ディスクのアクセス時間
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 38, 'choice', 1, 1,
   '磁気ディスク装置のアクセス時間を構成する要素の組み合わせとして正しいものはどれか。',
   'アクセス時間 = シーク時間（磁気ヘッドを目的トラックに移動する時間）＋ 回転待ち時間（目的セクタがヘッドの下に来るまで待つ時間）＋ データ転送時間（データを読み書きする時間）。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'シーク時間・回転待ち時間・データ転送時間',         NULL, true),
  (currval('questions_id_seq'), 'シーク時間・パリティ計算時間・データ転送時間',     NULL, false),
  (currval('questions_id_seq'), 'キャッシュ読込時間・回転待ち時間・データ転送時間', NULL, false),
  (currval('questions_id_seq'), 'シーク時間・コンパイル時間・データ転送時間',       NULL, false);

-- A-39: セマフォによる排他制御
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 39, 'choice', 1, 1,
   'セマフォ（Semaphore）の説明として最も適切なものはどれか。',
   'セマフォは複数のプロセスやスレッドが共有資源にアクセスする際の排他制御・同期に使う機構。P操作（wait/down）で値を減らし0未満になれば待機、V操作（signal/up）で値を増やし待機プロセスを解放する。ミューテックスは相互排他専用の二値セマフォ。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'プロセス間の共有資源へのアクセスを制御するための同期機構',       NULL, true),
  (currval('questions_id_seq'), 'プロセスの実行順序を決定するスケジューリングアルゴリズム',       NULL, false),
  (currval('questions_id_seq'), 'メモリを仮想化してアドレス空間を拡張する技術',                   NULL, false),
  (currval('questions_id_seq'), '複数のCPUコアで並列処理を実現するための技術',                   NULL, false);

-- ----------------------------------------
-- 科目A：データベース（A-40〜A-43）
-- ----------------------------------------

-- A-40: 外部キーの説明
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 40, 'choice', 1, 1,
   '関係データベースにおける外部キー（外来キー）の説明として最も適切なものはどれか。',
   '外部キーは別テーブルの主キーを参照することでテーブル間の関連（参照整合性）を定義するキー。外部キー制約を設定すると、参照先に存在しない値の挿入や参照元が残るままの削除を防止できる。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '別テーブルの主キーを参照しテーブル間の参照整合性を保つキー',     NULL, true),
  (currval('questions_id_seq'), 'テーブル内の各行を一意に識別するためのキー',                     NULL, false),
  (currval('questions_id_seq'), 'データ検索速度を向上させるために設定するキー',                   NULL, false),
  (currval('questions_id_seq'), '暗号化されたデータを復号するために使用するキー',                 NULL, false);

-- A-41: インデックスの役割
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 41, 'choice', 1, 1,
   'データベースのインデックス（索引）に関する記述として最も適切なものはどれか。',
   'インデックスはデータ検索を高速化するためのデータ構造（主にB木やハッシュ）。検索は高速になるが、挿入・更新・削除時にインデックスの更新も必要なためオーバーヘッドが生じる。カーディナリティが高い列（値の種類が多い列）に設定すると効果的。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'データの検索速度を向上させるためのデータ構造',                   NULL, true),
  (currval('questions_id_seq'), 'テーブルのデータ整合性を保証する制約',                           NULL, false),
  (currval('questions_id_seq'), '複数のテーブルを論理的に結合して一つのテーブルのように扱う仕組み', NULL, false),
  (currval('questions_id_seq'), 'テーブルのバックアップを自動的に作成する機能',                   NULL, false);

-- A-42: SQL DELETE文
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 42, 'choice', 1, 1,
   '次の SQL を実行した結果として最も適切なものはどれか。
DELETE FROM 商品 WHERE 在庫数 = 0;',
   'DELETE 文は条件を満たす行をテーブルから削除する。WHERE 在庫数=0 により在庫が0の商品レコードがすべて削除される。テーブル構造自体は残る（DROP TABLE と異なる）。値を0に更新するのは UPDATE 文。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '在庫数が0の商品レコードをすべて削除する',                     NULL, true),
  (currval('questions_id_seq'), '在庫数が0より大きい商品レコードをすべて削除する',             NULL, false),
  (currval('questions_id_seq'), '在庫数列の値をすべて0に更新する',                             NULL, false),
  (currval('questions_id_seq'), '在庫数列自体をテーブルから削除する',                           NULL, false);

-- A-43: ビューの説明
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 43, 'choice', 1, 1,
   'データベースにおける「ビュー（View）」の説明として最も適切なものはどれか。',
   'ビューはSELECT文の結果を仮想的なテーブルとして定義したもの。実データを持たず、参照時にSELECT文が実行される。アクセス制御（特定列・行だけ公開）や複雑なクエリの簡略化に利用される。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'SELECT文の結果を仮想的なテーブルとして定義したもの',               NULL, true),
  (currval('questions_id_seq'), 'テーブルのデータを物理的にコピーして保存したもの',                 NULL, false),
  (currval('questions_id_seq'), 'テーブルの主キーを管理するための特殊なデータ構造',               NULL, false),
  (currval('questions_id_seq'), 'トランザクションのロールバック情報を保存する領域',               NULL, false);

-- ----------------------------------------
-- 科目A：セキュリティ（A-44〜A-47）
-- ----------------------------------------

-- A-44: CSRF攻撃
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 44, 'choice', 1, 1,
   'CSRF（Cross-Site Request Forgery）攻撃の説明として最も適切なものはどれか。',
   'CSRFはログイン済みユーザーを騙して意図しないリクエスト（送金・パスワード変更など）をWebアプリに送信させる攻撃。対策はトークンによる検証やSameSite Cookie属性。XSSはスクリプト埋め込み攻撃、SQLiはSQL文注入攻撃で別物。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '認証済みユーザーを騙して意図しないリクエストをWebアプリに送信させる攻撃',   NULL, true),
  (currval('questions_id_seq'), '悪意のあるスクリプトをWebページに埋め込み閲覧者のブラウザ上で実行させる攻撃', NULL, false),
  (currval('questions_id_seq'), '不正なSQL文を入力してデータベースの情報を窃取する攻撃',                     NULL, false),
  (currval('questions_id_seq'), '大量のリクエストを送りつけてサービスを停止させる攻撃',                       NULL, false);

-- A-45: 多要素認証
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 45, 'choice', 1, 1,
   '多要素認証（MFA）として適切な組み合わせはどれか。
ここで認証要素は「知識（知っていること）」「所持（持っているもの）」「生体（身体的特徴）」の3種類とする。',
   '多要素認証は異なる種類の認証要素を2つ以上組み合わせる。「パスワード（知識）＋スマートフォンへのOTP（所持）」は知識と所持の組み合わせで多要素認証。同種（パスワード2つ等）の組み合わせは単一要素認証。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'パスワードとスマートフォンへのワンタイムパスワード（知識＋所持）',           NULL, true),
  (currval('questions_id_seq'), 'パスワードと秘密の質問（ともに「知識」要素）',                               NULL, false),
  (currval('questions_id_seq'), '異なる2種類のパスワードの入力（ともに「知識」要素）',                       NULL, false),
  (currval('questions_id_seq'), '利用者IDとパスワードの入力（ともに「知識」要素）',                           NULL, false);

-- A-46: ゼロデイ攻撃
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 46, 'choice', 1, 1,
   'ゼロデイ攻撃の説明として最も適切なものはどれか。',
   'ゼロデイ攻撃はセキュリティパッチが公開される前（対策がゼロの日）の脆弱性を悪用した攻撃。パッチ適用で防げないため、IDS/IPSやホワイトリスト型の対策が有効。CVEに登録された既知の脆弱性への攻撃とは異なる。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'セキュリティパッチが公開される前の未知の脆弱性を悪用した攻撃',     NULL, true),
  (currval('questions_id_seq'), '深夜0時から早朝にかけて行われるサイバー攻撃',                       NULL, false),
  (currval('questions_id_seq'), 'ゼロトラストモデルに基づいて設計された侵入手法',                   NULL, false),
  (currval('questions_id_seq'), '初回アクセス時に認証情報を窃取するフィッシング攻撃',               NULL, false);

-- A-47: 不正アクセスのソーシャルエンジニアリング
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 47, 'choice', 1, 1,
   'ソーシャルエンジニアリングの説明として最も適切なものはどれか。',
   'ソーシャルエンジニアリングは技術的な手段によらず、人間の心理や行動の隙をついて機密情報を入手する手法。代表例は電話でのなりすまし、ショルダーハッキング（画面の盗み見）、ごみ箱あさり（トラッシング）など。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '人間の心理や行動の隙をついて機密情報を入手する非技術的な攻撃手法',             NULL, true),
  (currval('questions_id_seq'), 'ソフトウェアの脆弱性を利用してシステムに侵入する技術的攻撃手法',               NULL, false),
  (currval('questions_id_seq'), 'ネットワークのパケットを盗聴して情報を収集する手法',                           NULL, false),
  (currval('questions_id_seq'), '大量の無効なデータを送りつけてシステムをダウンさせる攻撃',                     NULL, false);

-- ----------------------------------------
-- 科目A：アルゴリズム・データ構造（A-48〜A-49）
-- ----------------------------------------

-- A-48: 二分探索木の性質
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 48, 'choice', 1, 1,
   '二分探索木（Binary Search Tree）の性質として正しいものはどれか。',
   '二分探索木では各ノードについて「左部分木のすべてのキーはノードのキーより小さい」「右部分木のすべてのキーはノードのキーより大きい」という性質を持つ。中順（inorder）走査で昇順出力ができる。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '各ノードの左部分木のすべての値はそのノードの値より小さい',                   NULL, true),
  (currval('questions_id_seq'), '各ノードの左部分木のすべての値はそのノードの値より大きい',                   NULL, false),
  (currval('questions_id_seq'), 'すべてのノードは必ず2つの子ノードを持つ',                                   NULL, false),
  (currval('questions_id_seq'), '木の深さは常に log₂n になる',                                               NULL, false);

-- A-49: 再帰アルゴリズム
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 49, 'choice', 1, 1,
   '再帰アルゴリズムの説明として最も適切なものはどれか。',
   '再帰アルゴリズムは関数が自分自身を呼び出すことで問題を解決する手法。無限ループを防ぐためのベースケース（終了条件）が必要。ハノイの塔・階乗計算・木構造の探索などに使われる。呼び出しはスタックで管理される。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '関数が自分自身を呼び出すことで問題を段階的に解決するアルゴリズム',         NULL, true),
  (currval('questions_id_seq'), '同じ処理を一定回数繰り返す反復（ループ）処理',                             NULL, false),
  (currval('questions_id_seq'), '複数の関数が並列に実行される並行処理',                                     NULL, false),
  (currval('questions_id_seq'), 'データを複数のスレッドで同時にソートするアルゴリズム',                     NULL, false);

-- ----------------------------------------
-- 科目A：システム開発（A-50〜A-51）
-- ----------------------------------------

-- A-50: ウォークスルー
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 50, 'choice', 1, 1,
   'ソフトウェアレビュー手法の一つである「ウォークスルー」の説明として最も適切なものはどれか。',
   'ウォークスルーは成果物の作成者が参加者に対してコードや設計書の内容を順を追って説明し、問題点を発見するレビュー手法。インスペクションはモデレータが進行し厳密な手順で行う。どちらも静的テストの一種。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '作成者が参加者に成果物の内容を説明しながら問題を発見するレビュー手法',     NULL, true),
  (currval('questions_id_seq'), '完成したシステムを本番と同等の環境で動作確認するテスト',                   NULL, false),
  (currval('questions_id_seq'), 'テスト自動化ツールを使ってコードの品質を自動検証する手法',                 NULL, false),
  (currval('questions_id_seq'), 'コードの行数や複雑度を数値で計測するメトリクス収集手法',                   NULL, false);

-- A-51: 結合テスト
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 51, 'choice', 1, 1,
   '個々のモジュールを組み合わせてインターフェースや連携の正しさを確認するテストはどれか。',
   '結合テスト（インテグレーションテスト）はモジュール間のインターフェースや連携が正しく機能するかを確認する。単体テストは個々のモジュール単体の動作確認、システムテストはシステム全体の要件充足確認、受け入れテストはユーザが行う最終確認。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '結合テスト（インテグレーションテスト）', NULL, true),
  (currval('questions_id_seq'), '単体テスト（ユニットテスト）',   NULL, false),
  (currval('questions_id_seq'), 'システムテスト',                 NULL, false),
  (currval('questions_id_seq'), '受け入れテスト（UAT）',         NULL, false);

-- ----------------------------------------
-- 科目A：ストラテジ・マネジメント（A-52〜A-55）
-- ----------------------------------------

-- A-52: BCP（事業継続計画）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 52, 'choice', 1, 1,
   'BCP（Business Continuity Plan：事業継続計画）の説明として最も適切なものはどれか。',
   'BCPは災害・事故・サイバー攻撃などが発生した場合でも重要な業務を継続または早期に復旧させるための計画。目標復旧時間（RTO）や目標復旧時点（RPO）を定める。BCM（事業継続管理）はBCPを継続的に維持・改善するプロセス。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '災害や障害が発生した場合でも重要業務を継続・早期復旧させるための計画',     NULL, true),
  (currval('questions_id_seq'), '新規事業を立ち上げるための市場分析と実行計画書',                           NULL, false),
  (currval('questions_id_seq'), '年度ごとの事業予算と収支を管理するための計画書',                           NULL, false),
  (currval('questions_id_seq'), '情報システムの開発・運用スケジュールを管理する計画書',                     NULL, false);

-- A-53: SWOT分析の「O」
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 53, 'choice', 1, 1,
   'SWOT分析における「O」が表すものはどれか。',
   'SWOTはStrengths（強み）・Weaknesses（弱み）・Opportunities（機会）・Threats（脅威）の頭文字。「O」はOpportunities（機会）で外部環境から生まれる事業拡大などのビジネスチャンス。S・WはＩ内部環境、O・Tは外部環境の分析。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '外部環境から生まれるビジネス上の機会（Opportunities）', NULL, true),
  (currval('questions_id_seq'), '組織の内部的な強み（Strengths）',               NULL, false),
  (currval('questions_id_seq'), '組織の内部的な弱み（Weaknesses）',               NULL, false),
  (currval('questions_id_seq'), '外部環境から生じる脅威（Threats）',             NULL, false);

-- A-54: SaaS の説明
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 54, 'choice', 1, 1,
   'クラウドコンピューティングのサービスモデルのうち、SaaS（Software as a Service）の説明として最も適切なものはどれか。',
   'SaaSはインターネット経由でアプリケーションソフトウェアをサービスとして提供するモデル。利用者はインストールなしにWebブラウザ等で利用できる。IaaSは仮想化インフラの提供、PaaSはアプリ開発環境の提供。例: Gmail、Microsoft 365。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'インターネット経由でアプリケーションソフトウェアをサービスとして提供するモデル', NULL, true),
  (currval('questions_id_seq'), '仮想化されたサーバ・ストレージなどのインフラをサービスとして提供するモデル', NULL, false),
  (currval('questions_id_seq'), 'アプリケーション開発・実行環境をサービスとして提供するモデル',               NULL, false),
  (currval('questions_id_seq'), 'ネットワーク回線帯域をサービスとして提供するモデル',                         NULL, false);

-- A-55: 機械学習の教師あり学習
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 55, 'choice', 1, 1,
   '機械学習における「教師あり学習」の説明として最も適切なものはどれか。',
   '教師あり学習は正解ラベル付きの訓練データを用いてモデルを学習させる手法。分類（スパムフィルタ等）や回帰（価格予測等）に使われる。教師なし学習はラベルなしデータのパターン発見、強化学習は報酬を最大化する行動を学習する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '正解ラベル付きの訓練データを用いてモデルを学習させる手法',                 NULL, true),
  (currval('questions_id_seq'), 'ラベルなしのデータからパターンや構造を自動的に発見する手法',               NULL, false),
  (currval('questions_id_seq'), '試行錯誤を繰り返して報酬を最大化する行動を学習させる手法',                 NULL, false),
  (currval('questions_id_seq'), '複数のモデルの予測を組み合わせて精度を向上させる手法',                     NULL, false);

-- ----------------------------------------
-- 科目A：ネットワーク（A-56〜A-57）
-- ----------------------------------------

-- A-56: VPNの説明
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 56, 'choice', 1, 1,
   'VPN（Virtual Private Network）の説明として最も適切なものはどれか。',
   'VPNはインターネット上に仮想的な専用線（トンネル）を構築し、暗号化によって安全に通信する技術。拠点間接続やリモートワーク環境でよく使われる。IPsecやSSL/TLSなどのプロトコルで実現する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'インターネット上に仮想的な専用線を構築し安全に通信する技術',               NULL, true),
  (currval('questions_id_seq'), '複数のサーバに処理を分散させて負荷を均等化する技術',                       NULL, false),
  (currval('questions_id_seq'), 'データを複数のディスクに分散保存して耐障害性を高める技術',                 NULL, false),
  (currval('questions_id_seq'), '物理サーバを複数の仮想サーバに分割して利用できる技術',                     NULL, false);

-- A-57: パケットフィルタリング型ファイアウォール
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 57, 'choice', 1, 1,
   'パケットフィルタリング型ファイアウォールがアクセス制御の判断に使用する情報として正しいものはどれか。',
   'パケットフィルタリング型ファイアウォールはIPアドレス（送信元・宛先）とポート番号、プロトコル種別（TCP/UDP）を基にパケットの通過可否を判断する。アプリケーション層の内容を検査するのはアプリケーションゲートウェイ型やWAF。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'IPアドレスとポート番号およびプロトコル種別',           NULL, true),
  (currval('questions_id_seq'), 'HTTPリクエストのボディとURLパラメータ',               NULL, false),
  (currval('questions_id_seq'), 'ユーザーの認証情報とセッション状態',                   NULL, false),
  (currval('questions_id_seq'), 'データの暗号化方式と証明書の有効期限',                 NULL, false);

-- ----------------------------------------
-- 科目A：ハードウェア・OS（A-58〜A-61）
-- ----------------------------------------

-- A-58: CPUの命令実行サイクル
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 58, 'choice', 1, 1,
   'CPUが命令を実行する基本的なサイクルの順序として正しいものはどれか。',
   '命令実行サイクルはフェッチ（命令をメモリから取得）→ デコード（命令を解読）→ 実行（演算・処理）の順。現代のCPUはパイプライン処理でこれらを並列化して高速化している。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'フェッチ → デコード → 実行', NULL, true),
  (currval('questions_id_seq'), 'デコード → フェッチ → 実行', NULL, false),
  (currval('questions_id_seq'), '実行 → フェッチ → デコード', NULL, false),
  (currval('questions_id_seq'), 'フェッチ → 実行 → デコード', NULL, false);

-- A-59: ド・モルガンの法則
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 59, 'choice', 1, 1,
   'ド・モルガンの法則として正しいものはどれか。ここで「¬」は否定、「∧」は論理積（AND）、「∨」は論理和（OR）を表す。',
   'ド・モルガンの法則: ¬(A∧B) = ¬A∨¬B（ANDの否定はORで結んだ各否定に等しい）、¬(A∨B) = ¬A∧¬B（ORの否定はANDで結んだ各否定に等しい）。論理回路設計や条件式の変換に利用される。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '¬(A∧B) = ¬A∨¬B', NULL, true),
  (currval('questions_id_seq'), '¬(A∧B) = ¬A∧¬B', NULL, false),
  (currval('questions_id_seq'), '¬(A∧B) = A∨B',    NULL, false),
  (currval('questions_id_seq'), '¬(A∧B) = A∧B',    NULL, false);

-- A-60: スプーリングの説明
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (1, NULL, 60, 'choice', 1, 1,
   'スプーリング（Spooling）の説明として最も適切なものはどれか。',
   'スプーリングはCPUと低速な入出力装置（プリンタなど）の速度差を吸収するため、入出力データをいったん磁気ディスク等のバッファに蓄積し、入出力装置の処理とCPU処理を非同期に行う技術。プリントスプーラが代表例。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '入出力データをいったんバッファに蓄え、CPU処理と入出力処理を非同期に行う技術', NULL, true),
  (currval('questions_id_seq'), 'CPUと主記憶の速度差を緩和するために高速メモリを介在させる技術',           NULL, false),
  (currval('questions_id_seq'), 'プロセスを仮想的に複数のCPUで並列実行する技術',                           NULL, false),
  (currval('questions_id_seq'), 'メモリ上のデータをディスクに自動保存してデータ損失を防ぐ技術',           NULL, false);

-- ここに科目Aの問題を追加していく（question_number を +1 ずつ増やす）


-- ----------------------------------------
-- 科目B（section_id=2）
-- ----------------------------------------

-- B-1: 擬似コード（奇数の合計）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 1, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 x の値はいくつになるか。

整数型: x ← 0
整数型: i
for (i を 1 から 5 まで 1 ずつ増やす)
    if (i mod 2 = 1)
        x ← x + i
    endif
endfor',
   'i=1: 1は奇数なので x=0+1=1。i=2: 偶数なのでスキップ。i=3: 奇数なので x=1+3=4。i=4: 偶数なのでスキップ。i=5: 奇数なので x=4+5=9。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '9',  NULL, true),
  (currval('questions_id_seq'), '6',  NULL, false),
  (currval('questions_id_seq'), '15', NULL, false),
  (currval('questions_id_seq'), '25', NULL, false);

-- ----------------------------------------
-- 科目B：擬似コードトレース（B-2〜B-20）
-- ----------------------------------------

-- B-2: ネストしたforループのカウンタ
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 2, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

整数型: count ← 0
整数型: i, j
for (i を 1 から 3 まで 1 ずつ増やす)
    for (j を 1 から i まで 1 ずつ増やす)
        count ← count + 1
    endfor
endfor',
   'i=1のとき j は1回ループ（count=1）、i=2のとき j は2回ループ（count=3）、i=3のとき j は3回ループ（count=6）。合計 1+2+3=6。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '6',  NULL, true),
  (currval('questions_id_seq'), '5',  NULL, false),
  (currval('questions_id_seq'), '9',  NULL, false),
  (currval('questions_id_seq'), '12', NULL, false);

-- B-3: while ループ終了後の変数値
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 3, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 n の値はいくつになるか。

整数型: n ← 1
while (n < 100)
    n ← n × 2
endwhile',
   'n の変化: 1→2→4→8→16→32→64→128。128 ≥ 100 となりループ終了。n=128。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '128', NULL, true),
  (currval('questions_id_seq'), '64',  NULL, false),
  (currval('questions_id_seq'), '100', NULL, false),
  (currval('questions_id_seq'), '256', NULL, false);

-- B-4: 配列の最大値探索
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 4, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 max の値はいくつになるか。
配列 arr の要素は arr[1]=3, arr[2]=7, arr[3]=2, arr[4]=9, arr[5]=5 とする。

整数型: max ← arr[1]
整数型: i
for (i を 2 から 5 まで 1 ずつ増やす)
    if (arr[i] > max)
        max ← arr[i]
    endif
endfor',
   'max=3 から開始。arr[2]=7>3 → max=7、arr[3]=2<7 → 変化なし、arr[4]=9>7 → max=9、arr[5]=5<9 → 変化なし。最終的に max=9。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '9', NULL, true),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '7', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false);

-- B-5: 線形探索関数の戻り値
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 5, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。
配列 arr の要素は arr[1]=5, arr[2]=3, arr[3]=8, arr[4]=1, arr[5]=9 とする。

○整数型: linearSearch(整数型: arr[], 整数型: n, 整数型: target)
    整数型: i
    for (i を 1 から n まで 1 ずつ増やす)
        if (arr[i] = target)
            return i
        endif
    endfor
    return 0

整数型: result ← linearSearch(arr, 5, 8)',
   'i=1: arr[1]=5≠8、i=2: arr[2]=3≠8、i=3: arr[3]=8=8 → return 3。result=3。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '3', NULL, true),
  (currval('questions_id_seq'), '1', NULL, false),
  (currval('questions_id_seq'), '2', NULL, false),
  (currval('questions_id_seq'), '0', NULL, false);

-- B-6: スワップ後の配列要素
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 6, 'choice', 1, 1,
   '次の擬似コードを実行したとき、arr[1] の値はいくつになるか。
配列 arr の要素は arr[1]=10, arr[2]=20, arr[3]=30 とする。

整数型: temp
temp ← arr[1]
arr[1] ← arr[3]
arr[3] ← temp',
   'temp=arr[1]=10、arr[1]=arr[3]=30、arr[3]=temp=10。結果 arr={30,20,10}、arr[1]=30。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '30', NULL, true),
  (currval('questions_id_seq'), '10', NULL, false),
  (currval('questions_id_seq'), '20', NULL, false),
  (currval('questions_id_seq'), '0',  NULL, false);

-- B-7: 奇数の二乗の和
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 7, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 s の値はいくつになるか。

整数型: s ← 0
整数型: i
for (i を 1 から 5 まで 1 ずつ増やす)
    if (i mod 2 ≠ 0)
        s ← s + i × i
    endif
endfor',
   '奇数 i=1,3,5 のとき処理される。s = 1²+3²+5² = 1+9+25 = 35。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '35', NULL, true),
  (currval('questions_id_seq'), '25', NULL, false),
  (currval('questions_id_seq'), '30', NULL, false),
  (currval('questions_id_seq'), '55', NULL, false);

-- B-8: 3の倍数のカウント
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 8, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

整数型: count ← 0
整数型: x ← 10
while (x > 0)
    if (x mod 3 = 0)
        count ← count + 1
    endif
    x ← x - 1
endwhile',
   'x が 10 から 1 まで減少するとき、3 で割り切れる値は 9, 6, 3 の 3 個。count=3。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '3', NULL, true),
  (currval('questions_id_seq'), '2', NULL, false),
  (currval('questions_id_seq'), '4', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false);

-- B-9: 再帰関数（フィボナッチ数列）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 9, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 x の値はいくつになるか。

○整数型: fib(整数型: n)
    if (n ≦ 1)
        return n
    endif
    return fib(n - 1) + fib(n - 2)

整数型: x ← fib(6)',
   'fib(0)=0, fib(1)=1, fib(2)=1, fib(3)=2, fib(4)=3, fib(5)=5, fib(6)=8。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '8',  NULL, true),
  (currval('questions_id_seq'), '5',  NULL, false),
  (currval('questions_id_seq'), '13', NULL, false),
  (currval('questions_id_seq'), '6',  NULL, false);

-- B-10: スタック操作後のa+b
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 10, 'choice', 1, 1,
   '空のスタック S に対して次の操作を行う。変数 a と b の合計 a+b の値はいくつになるか。

S.push(1)
S.push(2)
S.push(3)
整数型: a ← S.pop()
S.push(4)
整数型: b ← S.pop()',
   'push(1)(2)(3) 後スタックは[1,2,3]（後入れ先出し）。a=pop()=3、push(4) 後[1,2,4]、b=pop()=4。a+b=3+4=7。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '7', NULL, true),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '6', NULL, false),
  (currval('questions_id_seq'), '8', NULL, false);

-- B-11: キュー操作後の次の取り出し要素
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 11, 'choice', 1, 1,
   '空のキュー Q に対して次の操作を行う。この後 Q.dequeue() を実行したとき、取り出される値はどれか。

Q.enqueue("A")
Q.enqueue("B")
Q.enqueue("C")
文字列型: x ← Q.dequeue()
Q.enqueue("D")
文字列型: y ← Q.dequeue()',
   'enqueue A,B,C 後キューは[A,B,C]（先入れ先出し）。x=dequeue()=A → [B,C]、enqueue D → [B,C,D]、y=dequeue()=B → [C,D]。次の dequeue は C。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '"C"', NULL, true),
  (currval('questions_id_seq'), '"A"', NULL, false),
  (currval('questions_id_seq'), '"B"', NULL, false),
  (currval('questions_id_seq'), '"D"', NULL, false);

-- B-12: 再帰関数（階乗）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 12, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

○整数型: fact(整数型: n)
    if (n = 0)
        return 1
    endif
    return n × fact(n - 1)

整数型: result ← fact(5)',
   'fact(5)=5×fact(4)=5×4×fact(3)=...=5×4×3×2×1×1=120。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '120', NULL, true),
  (currval('questions_id_seq'), '24',  NULL, false),
  (currval('questions_id_seq'), '60',  NULL, false),
  (currval('questions_id_seq'), '720', NULL, false);

-- B-13: 二分探索の比較回数
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 13, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。
配列 arr は arr[1]=2, arr[2]=4, arr[3]=6, arr[4]=8, arr[5]=10, arr[6]=12, arr[7]=14, arr[8]=16 とする。

整数型: target ← 12
整数型: low ← 1
整数型: high ← 8
整数型: count ← 0
整数型: mid
while (low ≦ high)
    mid ← (low + high) ÷ 2
    count ← count + 1
    if (arr[mid] = target)
        break
    elseif (arr[mid] < target)
        low ← mid + 1
    else
        high ← mid - 1
    endif
endwhile',
   '1回目: mid=(1+8)÷2=4, arr[4]=8<12 → low=5, count=1。2回目: mid=(5+8)÷2=6, arr[6]=12=12 → break, count=2。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '2', NULL, true),
  (currval('questions_id_seq'), '1', NULL, false),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '4', NULL, false);

-- B-14: バブルソート1回目のパス後の配列要素
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 14, 'choice', 1, 1,
   '次の擬似コードを実行したとき、arr[3] の値はいくつになるか。
配列 arr の初期値は arr[1]=5, arr[2]=3, arr[3]=8, arr[4]=1, arr[5]=9 とする。

整数型: temp
整数型: i
for (i を 1 から 4 まで 1 ずつ増やす)
    if (arr[i] > arr[i + 1])
        temp ← arr[i]
        arr[i] ← arr[i + 1]
        arr[i + 1] ← temp
    endif
endfor',
   'i=1: 5>3 → swap → {3,5,8,1,9}。i=2: 5<8 → なし。i=3: 8>1 → swap → {3,5,1,8,9}。i=4: 8<9 → なし。arr[3]=1。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '1', NULL, true),
  (currval('questions_id_seq'), '8', NULL, false),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false);

-- B-15: 選択ソートの最小値インデックス
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 15, 'choice', 1, 1,
   '次の擬似コードで i=1 のとき、変数 min_idx の値はいくつになるか。
配列 arr は arr[1]=4, arr[2]=2, arr[3]=7, arr[4]=1, arr[5]=5 とする。

整数型: i ← 1
整数型: min_idx ← i
整数型: j
for (j を i + 1 から 5 まで 1 ずつ増やす)
    if (arr[j] < arr[min_idx])
        min_idx ← j
    endif
endfor',
   'min_idx=1(arr[1]=4)から開始。j=2: arr[2]=2<4 → min_idx=2。j=3: arr[3]=7>2 → なし。j=4: arr[4]=1<2 → min_idx=4。j=5: arr[5]=5>1 → なし。min_idx=4。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '4', NULL, true),
  (currval('questions_id_seq'), '1', NULL, false),
  (currval('questions_id_seq'), '2', NULL, false),
  (currval('questions_id_seq'), '3', NULL, false);

-- B-16: 多重条件分岐（成績判定）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 16, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 grade に設定される値はどれか。

整数型: score ← 75
文字列型: grade
if (score ≧ 90)
    grade ← "A"
elseif (score ≧ 70)
    grade ← "B"
elseif (score ≧ 50)
    grade ← "C"
else
    grade ← "D"
endif',
   'score=75。75≥90 は偽。75≥70 は真 → grade="B"。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '"B"', NULL, true),
  (currval('questions_id_seq'), '"A"', NULL, false),
  (currval('questions_id_seq'), '"C"', NULL, false),
  (currval('questions_id_seq'), '"D"', NULL, false);

-- ----------------------------------------
-- 科目B：セキュリティ（B-21〜B-25）
-- ----------------------------------------

-- B-21: 対称鍵暗号の説明
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 21, 'choice', 1, 1,
   '対称鍵暗号（共通鍵暗号）の説明として最も適切なものはどれか。',
   '対称鍵暗号は、暗号化と復号に同じ鍵（共通鍵）を使う方式。処理速度が速い反面、鍵の安全な配送が課題となる。代表例は AES。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '暗号化と復号で同じ鍵を使う方式',                           NULL, true),
  (currval('questions_id_seq'), '暗号化と復号で異なる鍵を使う方式',                         NULL, false),
  (currval('questions_id_seq'), '公開鍵で暗号化し、秘密鍵で復号する方式',                   NULL, false),
  (currval('questions_id_seq'), '鍵を使わずにデータを変換する方式',                         NULL, false);

-- B-22: デジタル署名で使う鍵
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 22, 'choice', 1, 1,
   'デジタル署名において、送信者がメッセージに署名するときに使う鍵として正しいものはどれか。',
   'デジタル署名では、送信者が自身の「秘密鍵」で署名を作成し、受信者が送信者の「公開鍵」で署名を検証する。これにより送信者の本人確認と改ざん検知が可能になる。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '送信者の秘密鍵',   NULL, true),
  (currval('questions_id_seq'), '送信者の公開鍵',   NULL, false),
  (currval('questions_id_seq'), '受信者の公開鍵',   NULL, false),
  (currval('questions_id_seq'), '受信者の秘密鍵',   NULL, false);

-- B-23: ハッシュ関数の特徴
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 23, 'choice', 1, 1,
   'ハッシュ関数の特徴として最も適切なものはどれか。',
   'ハッシュ関数は任意長のデータから固定長のハッシュ値を生成する一方向関数。ハッシュ値から元のデータを復元することは計算上困難（一方向性）。同じ入力からは常に同じハッシュ値が得られる。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '任意長のデータから固定長のハッシュ値を生成する',           NULL, true),
  (currval('questions_id_seq'), 'ハッシュ値から元のデータを容易に復元できる',               NULL, false),
  (currval('questions_id_seq'), '同じ入力に対して異なるハッシュ値が生成される',             NULL, false),
  (currval('questions_id_seq'), '暗号化と復号に異なる鍵を必要とする',                       NULL, false);

-- B-24: SQLインジェクション対策
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 24, 'choice', 1, 1,
   'Webアプリケーションにおける SQLインジェクション攻撃への対策として最も適切なものはどれか。',
   'SQLインジェクション対策として最も効果的なのは、プレースホルダ（バインド変数）を使ったパラメータ化クエリの利用。ユーザ入力をSQL文に直接埋め込まず、値として安全に渡すことで攻撃を防ぐ。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'プレースホルダを使ったパラメータ化クエリを利用する',       NULL, true),
  (currval('questions_id_seq'), 'ユーザ入力をそのまま SQL 文に文字列連結する',             NULL, false),
  (currval('questions_id_seq'), 'データベースへの接続をHTTPSに変更する',                   NULL, false),
  (currval('questions_id_seq'), '入力文字数を制限する',                                     NULL, false);

-- ----------------------------------------
-- 科目A：データ構造・アルゴリズム（A-61〜A-75）
-- ----------------------------------------

-- A-61: スタックの特性
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 61, 'choice', 1, 1, 'スタック（Stack）のデータ操作の原則として正しいものはどれか。', 'スタックはLIFO（Last In First Out）構造。最後に追加したデータが最初に取り出される。プッシュで積み上げ、ポップで取り出す。再帰呼び出しやブラウザの戻る機能などに活用される。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'LIFO（後入れ先出し）', NULL, true),
  (currval('questions_id_seq'), 'FIFO（先入れ先出し）', NULL, false),
  (currval('questions_id_seq'), '優先度の高い順に取り出す', NULL, false),
  (currval('questions_id_seq'), 'ランダムな順序で取り出す', NULL, false);

-- A-62: キューの特性
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 62, 'choice', 1, 1, 'キュー（Queue）のデータ操作の原則として正しいものはどれか。', 'キューはFIFO（First In First Out）構造。最初に追加したデータが最初に取り出される。エンキューで追加、デキューで取り出す。印刷スプールやタスクキューなどに活用される。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'FIFO（先入れ先出し）', NULL, true),
  (currval('questions_id_seq'), 'LIFO（後入れ先出し）', NULL, false),
  (currval('questions_id_seq'), '優先度の低い順に取り出す', NULL, false),
  (currval('questions_id_seq'), '中央の要素から取り出す', NULL, false);

-- A-63: 二分探索の計算量
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 63, 'choice', 1, 1, 'n個のソート済みデータに対して二分探索を行う際の最悪計算量はどれか。', '二分探索は探索のたびにデータを半分に絞り込む。最悪でlog₂n回の比較で完了するためO(log n)となる。線形探索はO(n)。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(log n)', NULL, true),
  (currval('questions_id_seq'), 'O(n)', NULL, false),
  (currval('questions_id_seq'), 'O(n²)', NULL, false),
  (currval('questions_id_seq'), 'O(1)', NULL, false);

-- A-64: バブルソートの計算量
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 64, 'choice', 1, 1, 'バブルソートのn個のデータに対する平均・最悪の計算量として正しいものはどれか。', 'バブルソートは隣接要素を比較・交換を繰り返す。n-1回のパスで各パスにn-i回の比較が必要。平均・最悪ともにO(n²)。実装は単純だが大規模データには非効率。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(n²)', NULL, true),
  (currval('questions_id_seq'), 'O(n log n)', NULL, false),
  (currval('questions_id_seq'), 'O(log n)', NULL, false),
  (currval('questions_id_seq'), 'O(n)', NULL, false);

-- A-65: クイックソートの平均計算量
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 65, 'choice', 1, 1, 'クイックソートの平均的な計算量として正しいものはどれか。', 'クイックソートはピボットを選び、それより小さい・大きいグループに分割して再帰的にソートする。平均O(n log n)。ただし最悪（常に最小・最大をピボット選択）はO(n²)。実用上は最速クラス。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(n log n)', NULL, true),
  (currval('questions_id_seq'), 'O(n²)', NULL, false),
  (currval('questions_id_seq'), 'O(n)', NULL, false),
  (currval('questions_id_seq'), 'O(log n)', NULL, false);

-- A-66: 連結リストの特徴
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 66, 'choice', 1, 1, '連結リスト（リンクトリスト）の特徴として最も適切なものはどれか。', '連結リストは各ノードがデータと次のノードへのポインタを持つ構造。任意位置への挿入・削除がO(1)（ポインタ付け替えのみ）。一方ランダムアクセスはO(n)（先頭から辿る必要がある）。配列はランダムアクセスO(1)だが挿入・削除はO(n)。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '任意位置への挿入・削除が効率的だが、ランダムアクセスは苦手', NULL, true),
  (currval('questions_id_seq'), 'ランダムアクセスが効率的だが、挿入・削除に時間がかかる', NULL, false),
  (currval('questions_id_seq'), '挿入・削除・ランダムアクセスすべてO(1)で行える', NULL, false),
  (currval('questions_id_seq'), '常にソート済み状態を維持する', NULL, false);

-- A-67: ハッシュ表の探索
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 67, 'choice', 1, 1, 'ハッシュ表を用いた探索の平均的な計算量として正しいものはどれか。', 'ハッシュ表はキーをハッシュ関数で変換して格納位置を決める。衝突が少ない場合、探索・挿入・削除の平均計算量はO(1)。ただし衝突が多発すると最悪O(n)に劣化する。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(1)', NULL, true),
  (currval('questions_id_seq'), 'O(log n)', NULL, false),
  (currval('questions_id_seq'), 'O(n)', NULL, false),
  (currval('questions_id_seq'), 'O(n log n)', NULL, false);

-- A-68: 前順走査
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 68, 'choice', 1, 1, '二分木の前順（preorder）走査でノードを訪問する順序として正しいものはどれか。', '前順（preorder）は「根→左部分木→右部分木」の順で訪問。中順（inorder）は「左→根→右」、後順（postorder）は「左→右→根」。前順はコピーや式木の前置記法変換に使われる。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '根 → 左部分木 → 右部分木', NULL, true),
  (currval('questions_id_seq'), '左部分木 → 根 → 右部分木', NULL, false),
  (currval('questions_id_seq'), '左部分木 → 右部分木 → 根', NULL, false),
  (currval('questions_id_seq'), '右部分木 → 根 → 左部分木', NULL, false);

-- A-69: 二分探索木
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 69, 'choice', 1, 1, '二分探索木（Binary Search Tree）の性質として正しいものはどれか。', '二分探索木では各ノードについて「左部分木のすべてのノード値 < 根の値 < 右部分木のすべてのノード値」が成立する。中順走査で昇順のデータを得られる。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '左部分木のすべての値は根より小さく、右部分木のすべての値は根より大きい', NULL, true),
  (currval('questions_id_seq'), '左部分木のすべての値は根より大きく、右部分木のすべての値は根より小さい', NULL, false),
  (currval('questions_id_seq'), '根の値が木全体の最大値となる', NULL, false),
  (currval('questions_id_seq'), '各ノードの子は必ず2つ存在する', NULL, false);

-- A-70: マージソート
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 70, 'choice', 1, 1, 'マージソートの特徴として最も適切なものはどれか。', 'マージソートは分割統治法に基づくソート。データを半分ずつに分割し再帰的にソートした後、ソート済みの2つの列をマージ（併合）する。最良・平均・最悪いずれもO(n log n)で安定ソート。追加メモリO(n)が必要。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '最良・平均・最悪いずれもO(n log n)の安定ソート', NULL, true),
  (currval('questions_id_seq'), '最悪計算量がO(n²)になる場合がある不安定ソート', NULL, false),
  (currval('questions_id_seq'), 'インプレースで動作し追加メモリを必要としない', NULL, false),
  (currval('questions_id_seq'), '隣接要素を比較・交換する単純な手法', NULL, false);

-- A-71: 再帰アルゴリズム
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 71, 'choice', 1, 1, '再帰アルゴリズムの説明として最も適切なものはどれか。', '再帰とは関数が自分自身を呼び出す手法。再帰呼び出しはスタックに積まれる。基底条件（終了条件）がないと無限ループになる。階乗・フィボナッチ・木の走査などに適する。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '関数が自分自身を呼び出すことで問題を解く手法', NULL, true),
  (currval('questions_id_seq'), '複数のスレッドが並列に実行される処理方式', NULL, false),
  (currval('questions_id_seq'), '処理を繰り返すためにwhileループを使う手法', NULL, false),
  (currval('questions_id_seq'), '問題を逐次的に解くことで答えを求める手法', NULL, false);

-- A-72: グラフの隣接行列
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 72, 'choice', 1, 1, 'グラフを隣接行列で表現する場合の説明として正しいものはどれか。', '隣接行列はn×nの2次元配列でグラフを表す。[i][j]=1なら頂点iとjの間に辺がある。辺の存在確認はO(1)だが空間計算量はO(n²)。辺が少ない疎グラフには隣接リストの方が効率的。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'n×nの行列で頂点間の辺の有無を表し、辺の確認がO(1)できる', NULL, true),
  (currval('questions_id_seq'), '各頂点に接続する頂点のリストを保持し空間効率が高い', NULL, false),
  (currval('questions_id_seq'), '辺の数に比例したO(E)の空間しか使わない', NULL, false),
  (currval('questions_id_seq'), 'スタックを使って深さ優先探索を実現する方法', NULL, false);

-- A-73: 動的計画法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 73, 'choice', 1, 1, '動的計画法（Dynamic Programming）の説明として最も適切なものはどれか。', '動的計画法は問題を部分問題に分割し、部分問題の解をメモ（表）に保存して再利用することで計算量を削減するアルゴリズム設計手法。フィボナッチ数列・最短経路・ナップサック問題などに応用される。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '部分問題の解をメモして再利用し、計算量を削減する手法', NULL, true),
  (currval('questions_id_seq'), 'データを分割して並列処理し結果を統合する手法', NULL, false),
  (currval('questions_id_seq'), '解の候補をすべて生成して最適解を選ぶ手法', NULL, false),
  (currval('questions_id_seq'), '乱数を利用して近似解を求める手法', NULL, false);

-- A-74: ヒープ
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 74, 'choice', 1, 1, '最大ヒープ（Max-Heap）の性質として正しいものはどれか。', '最大ヒープは「親ノードの値 ≥ 子ノードの値」が成立する完全二分木。根が最大値となる。最小値の取得はO(n)かかる。ヒープを使ったヒープソートはO(n log n)でインプレース動作。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '根ノードが最大値であり、各親ノードは子ノード以上の値を持つ', NULL, true),
  (currval('questions_id_seq'), '根ノードが最小値であり、各親ノードは子ノード以下の値を持つ', NULL, false),
  (currval('questions_id_seq'), '中順走査で昇順のデータが得られる', NULL, false),
  (currval('questions_id_seq'), '任意のノードへのアクセスがO(log n)で行える', NULL, false);

-- A-75: 逆ポーランド記法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 75, 'choice', 1, 1, '逆ポーランド記法（後置記法）で「3 4 + 2 *」と表された式を評価した結果はどれか。', '逆ポーランド記法はスタックを用いて評価する。3と4をプッシュ、+で7。7と2をプッシュ、*で14。式は(3+4)×2=14。括弧不要で計算機に適した記法。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '14', NULL, true),
  (currval('questions_id_seq'), '10', NULL, false),
  (currval('questions_id_seq'), '11', NULL, false),
  (currval('questions_id_seq'), '24', NULL, false);

-- ----------------------------------------
-- 科目A：OS・ソフトウェア（A-76〜A-90）
-- ----------------------------------------

-- A-76: プロセスとスレッド
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 76, 'choice', 1, 1, 'プロセスとスレッドの関係について正しいものはどれか。', 'プロセスはOSが資源管理する実行単位でメモリ空間・ファイルハンドルを持つ。スレッドはプロセス内の実行単位でプロセスのメモリ空間を共有する。1プロセスに複数スレッドを持てる（マルチスレッド）。コンテキストスイッチのコストはスレッド間の方が小さい。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '1つのプロセスは複数のスレッドを含むことができ、スレッドはプロセスのメモリを共有する', NULL, true),
  (currval('questions_id_seq'), 'スレッドはプロセスとは独立したメモリ空間を持つ', NULL, false),
  (currval('questions_id_seq'), '1つのプロセスは必ず1つのスレッドしか持てない', NULL, false),
  (currval('questions_id_seq'), 'プロセス間通信はスレッド間通信より高速である', NULL, false);

-- A-77: ページング
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 77, 'choice', 1, 1, '仮想記憶のページング方式に関する説明として正しいものはどれか。', 'ページングは仮想アドレス空間を固定長のページに分割し、物理メモリのページフレームに対応させる。必要なページだけ物理メモリに配置し（オンデマンドページング）不要なページはディスクに退避。ページフォルト発生時にディスクから読み込む。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'プログラムを固定長のページに分割し、必要なページだけ物理メモリに配置する', NULL, true),
  (currval('questions_id_seq'), 'プログラム全体を連続した物理メモリ領域に配置する方式', NULL, false),
  (currval('questions_id_seq'), 'セグメント単位でメモリを管理し可変長の領域を割り当てる', NULL, false),
  (currval('questions_id_seq'), 'キャッシュメモリを仮想化してアクセスを高速化する技術', NULL, false);

-- A-78: デッドロックの条件
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 78, 'choice', 1, 1, 'デッドロックが発生するための4条件に含まれないものはどれか。', 'デッドロックの4条件（コフマン条件）は①相互排除②占有と待機③非横取り④循環待機。一つでも除去するとデッドロックを防げる。「複数CPUコアの使用」はデッドロック条件に含まれない。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'プロセスが複数のCPUコアを同時使用している', NULL, true),
  (currval('questions_id_seq'), '資源を排他的に使用する（相互排除）', NULL, false),
  (currval('questions_id_seq'), '資源を保持したまま他の資源を待つ（占有と待機）', NULL, false),
  (currval('questions_id_seq'), 'プロセスが循環的に資源を待ち合う（循環待機）', NULL, false);

-- A-79: ラウンドロビン
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 79, 'choice', 1, 1, 'ラウンドロビンスケジューリングの説明として正しいものはどれか。', 'ラウンドロビンは各プロセスに一定時間（タイムクォンタム）ずつCPUを割り当てる方式。時間内に終わらなければ待ちキューの末尾に戻る。公平性が高く対話型システムに適する。タイムクォンタムが小さすぎるとコンテキストスイッチ過多になる。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '各プロセスに一定時間ずつCPUを割り当て順番に実行する方式', NULL, true),
  (currval('questions_id_seq'), '優先度の高いプロセスを常に優先してCPUを割り当てる方式', NULL, false),
  (currval('questions_id_seq'), 'CPU到着順にプロセスを処理する非プリエンプション方式', NULL, false),
  (currval('questions_id_seq'), '残り実行時間が最短のプロセスを優先する方式', NULL, false);

-- A-80: ガベージコレクション
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 80, 'choice', 1, 1, 'ガベージコレクション（GC）の説明として最も適切なものはどれか。', 'ガベージコレクションはプログラムが使用しなくなったメモリ領域を自動的に検出・解放する仕組み。JavaやPythonなどに実装される。開発者がメモリ解放を明示的に行う必要がなくなるが、GC実行時に一時的なパフォーマンス低下が起きる場合がある。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '使われなくなったメモリを自動的に検出・解放する仕組み', NULL, true),
  (currval('questions_id_seq'), 'メモリへのアクセスを高速化するキャッシュ管理機能', NULL, false),
  (currval('questions_id_seq'), '不正なメモリアクセスを検出してプログラムを停止する機能', NULL, false),
  (currval('questions_id_seq'), 'メモリを圧縮してフラグメンテーションを解消する処理', NULL, false);

-- A-81: コンパイラとインタープリタ
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 81, 'choice', 1, 1, 'コンパイラとインタープリタの違いとして正しいものはどれか。', 'コンパイラはソースコード全体を機械語に変換してから実行する。実行速度が速いが変換時間がかかる。インタープリタはソースコードを1行ずつ解析・実行する。変換なしで即実行できるが実行速度は遅い。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'コンパイラはソース全体を機械語に変換してから実行し、インタープリタは1行ずつ解析・実行する', NULL, true),
  (currval('questions_id_seq'), 'コンパイラは1行ずつ解析・実行し、インタープリタはソース全体を変換してから実行する', NULL, false),
  (currval('questions_id_seq'), 'コンパイラとインタープリタはどちらも実行速度に差はない', NULL, false),
  (currval('questions_id_seq'), 'コンパイラはOSのカーネルで動作し、インタープリタはユーザ空間で動作する', NULL, false);

-- A-82: 割り込み処理
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 82, 'choice', 1, 1, 'CPUの割り込み処理の説明として正しいものはどれか。', '割り込みはCPUが現在実行中の処理を中断し特定の処理（割り込みハンドラ）に切り替える機構。ハードウェア割り込み（I/O完了・タイマ）とソフトウェア割り込み（システムコール・例外）がある。割り込みハンドラ完了後に元の処理を再開する。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '現在の処理を中断して特定の処理ルーチンに切り替え、終了後に元の処理を再開する機構', NULL, true),
  (currval('questions_id_seq'), 'CPUが複数のプロセスを同時並行に実行するための機能', NULL, false),
  (currval('questions_id_seq'), 'メモリへのアクセス権限を検査して不正アクセスを防ぐ機能', NULL, false),
  (currval('questions_id_seq'), 'プロセスの優先度を動的に変更するスケジューリング機能', NULL, false);

-- A-83: スラッシング
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 83, 'choice', 1, 1, 'スラッシング（Thrashing）の説明として最も適切なものはどれか。', 'スラッシングは仮想記憶においてページの入れ替え（ページイン・ページアウト）が頻発し実際の処理がほとんど進まない状態。物理メモリが不足しているときに起きやすい。ワーキングセット法による必要ページの確保が対策。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ページの入れ替えが頻発して実際の処理が進まない状態', NULL, true),
  (currval('questions_id_seq'), 'プロセスが互いに資源を待ち合って処理が停止する状態', NULL, false),
  (currval('questions_id_seq'), 'メモリが断片化して連続した空き領域が確保できない状態', NULL, false),
  (currval('questions_id_seq'), 'CPUの利用率が100%になり新しいプロセスを実行できない状態', NULL, false);

-- A-84: スプーリング
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 84, 'choice', 1, 1, 'スプーリング（Spooling）の説明として正しいものはどれか。', 'スプーリングは低速な入出力装置（プリンタなど）との間でデータをいったんディスクに蓄え、CPUと入出力装置が独立して処理できるようにする技術。プリンタスプーラが典型例。CPUの稼働率向上が目的。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'CPUと低速な入出力装置の間でデータを一時的にディスクに蓄えて処理効率を上げる技術', NULL, true),
  (currval('questions_id_seq'), 'データを圧縮して保存することでストレージ容量を節約する技術', NULL, false),
  (currval('questions_id_seq'), '複数のCPUでデータを並列に処理する技術', NULL, false),
  (currval('questions_id_seq'), 'メモリ上のデータを高速キャッシュに転送する技術', NULL, false);

-- A-85: ミドルウェア
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 85, 'choice', 1, 1, 'ミドルウェアの説明として最も適切なものはどれか。', 'ミドルウェアはOSとアプリケーションの中間に位置するソフトウェア。DBMS・Webサーバ・メッセージキューなどが代表例。アプリケーション開発者がOSの低レベル処理を意識せずに開発できるよう共通機能を提供する。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'OSとアプリケーションの間に位置し、共通機能を提供するソフトウェア', NULL, true),
  (currval('questions_id_seq'), 'ハードウェアを直接制御するカーネルの一部', NULL, false),
  (currval('questions_id_seq'), 'ユーザが直接操作するGUIアプリケーション', NULL, false),
  (currval('questions_id_seq'), 'ネットワーク機器のファームウェア', NULL, false);

-- A-86: リアルタイムOS
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 86, 'choice', 1, 1, 'リアルタイムOS（RTOS）の特徴として正しいものはどれか。', 'リアルタイムOSは決められた時間内（デッドライン）に処理を完了することを保証するOS。産業機械・自動車制御・医療機器などに使われる。ハードリアルタイム（絶対的期限保証）とソフトリアルタイム（確率的保証）がある。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '決められた期限内に処理完了を保証することを重視したOS', NULL, true),
  (currval('questions_id_seq'), '汎用的な処理を高スループットで行うことを重視したOS', NULL, false),
  (currval('questions_id_seq'), 'GUIを提供してユーザ操作性を最大化したOS', NULL, false),
  (currval('questions_id_seq'), '複数ユーザが同時にログインして使えるマルチユーザOS', NULL, false);

-- A-87: コンテナ型仮想化
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 87, 'choice', 1, 1, 'コンテナ型仮想化とハイパーバイザ型仮想化の違いとして正しいものはどれか。', 'ハイパーバイザ型はゲストOSを丸ごと仮想化しOSレベルで隔離。コンテナ型はホストOSのカーネルを共有しアプリケーション環境のみ隔離する。コンテナは起動が速くオーバーヘッドが少ない。Dockerはコンテナ型の代表例。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'コンテナ型はホストOSのカーネルを共有し、ハイパーバイザ型はゲストOSを完全に仮想化する', NULL, true),
  (currval('questions_id_seq'), 'ハイパーバイザ型はホストOSのカーネルを共有し、コンテナ型はゲストOSを完全に仮想化する', NULL, false),
  (currval('questions_id_seq'), 'コンテナ型とハイパーバイザ型はともにゲストOSを完全に仮想化する', NULL, false),
  (currval('questions_id_seq'), 'コンテナ型はハイパーバイザ型より起動に時間がかかる', NULL, false);

-- A-88: ジャーナリングファイルシステム
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 88, 'choice', 1, 1, 'ジャーナリングファイルシステムの説明として最も適切なものはどれか。', 'ジャーナリングファイルシステムはファイル変更前にジャーナル（ログ）に操作内容を記録し、障害発生時にジャーナルを参照してファイルシステムの整合性を速やかに回復する仕組み。ext4・NTFS・HFS+などが採用。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '変更操作をログに記録し、障害発生時に素早く整合性を回復できるファイルシステム', NULL, true),
  (currval('questions_id_seq'), 'データを暗号化して保存することでセキュリティを確保するファイルシステム', NULL, false),
  (currval('questions_id_seq'), '複数のディスクにデータを分散して冗長性を確保するファイルシステム', NULL, false),
  (currval('questions_id_seq'), 'ファイルを圧縮して保存しディスク容量を節約するファイルシステム', NULL, false);

-- A-89: API
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 89, 'choice', 1, 1, 'API（Application Programming Interface）の説明として正しいものはどれか。', 'APIはアプリケーション間や、アプリケーションとOS・ライブラリ間で機能を利用するためのインタフェース仕様。関数の名前・引数・戻り値・呼び出し方法を定義する。Web APIはHTTP経由で外部サービスの機能を利用するインタフェース。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ソフトウェア同士が機能を呼び出し合うためのインタフェース仕様', NULL, true),
  (currval('questions_id_seq'), 'ハードウェアとOSの間でデータをやり取りするインタフェース', NULL, false),
  (currval('questions_id_seq'), 'ユーザがコンピュータを操作するためのグラフィカルな画面', NULL, false),
  (currval('questions_id_seq'), 'ネットワーク上でデータを暗号化して通信するプロトコル', NULL, false);

-- A-90: カーネルの種類
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 90, 'choice', 1, 1, 'モノリシックカーネルとマイクロカーネルの違いとして正しいものはどれか。', 'モノリシックカーネルはOS機能（プロセス管理・メモリ管理・デバイスドライバなど）すべてをカーネル空間に実装。高速だがカーネル肥大化のリスクがある。マイクロカーネルは最小限の機能のみカーネルに残し残りをユーザ空間で動かす。安定性は高いが通信オーバーヘッドがある。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'モノリシックカーネルはOS機能をカーネル空間に集約し、マイクロカーネルは最小機能のみカーネルに置く', NULL, true),
  (currval('questions_id_seq'), 'マイクロカーネルはOS機能をカーネル空間に集約し、モノリシックカーネルは最小機能のみカーネルに置く', NULL, false),
  (currval('questions_id_seq'), 'どちらも同じ構造で性能の違いのみである', NULL, false),
  (currval('questions_id_seq'), 'マイクロカーネルはモノリシックカーネルより実行速度が速い', NULL, false);

-- ----------------------------------------
-- 科目A：セキュリティ（A-91〜A-110）
-- ----------------------------------------

-- A-91: 対称鍵暗号
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 91, 'choice', 1, 1, '対称鍵暗号（共通鍵暗号）の特徴として正しいものはどれか。', '対称鍵暗号は暗号化と復号に同じ鍵を使う方式。処理速度が速く大量データの暗号化に適する。AES・DESが代表例。欠点は鍵の配送問題（安全に鍵を共有する手段が必要）。公開鍵暗号は暗号化・復号に異なる鍵を使う。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '暗号化と復号に同じ鍵を使い処理速度が速い', NULL, true),
  (currval('questions_id_seq'), '暗号化と復号に異なる鍵を使いセキュリティが高い', NULL, false),
  (currval('questions_id_seq'), '鍵を公開するため鍵配送の問題が生じない', NULL, false),
  (currval('questions_id_seq'), 'デジタル署名の生成にのみ使用される', NULL, false);

-- A-92: 公開鍵暗号
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 92, 'choice', 1, 1, '公開鍵暗号（非対称鍵暗号）を使ってAさんがBさんに秘密のメッセージを送る場合、暗号化に使う鍵はどれか。', '公開鍵暗号では送信者はBさんの公開鍵で暗号化し、受信者Bさんは自分の秘密鍵で復号する。公開鍵は誰でも利用可能。秘密鍵は所有者のみが持つ。メッセージの秘密保持には受信者の公開鍵を使う。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'Bさんの公開鍵', NULL, true),
  (currval('questions_id_seq'), 'Bさんの秘密鍵', NULL, false),
  (currval('questions_id_seq'), 'Aさんの公開鍵', NULL, false),
  (currval('questions_id_seq'), 'Aさんの秘密鍵', NULL, false);

-- A-93: デジタル署名
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 93, 'choice', 1, 1, 'デジタル署名においてAさんが署名を生成するとき使う鍵はどれか。', 'デジタル署名はAさんが自分の秘密鍵でメッセージ（のハッシュ）を暗号化して署名を生成する。受信者はAさんの公開鍵で署名を復号し、メッセージのハッシュ値と一致するか検証する。送信者の否認防止と完全性確認に使われる。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'Aさんの秘密鍵', NULL, true),
  (currval('questions_id_seq'), 'Aさんの公開鍵', NULL, false),
  (currval('questions_id_seq'), '受信者の公開鍵', NULL, false),
  (currval('questions_id_seq'), '受信者の秘密鍵', NULL, false);

-- A-94: PKI（公開鍵基盤）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 94, 'choice', 1, 1, 'PKI（Public Key Infrastructure）におけるデジタル証明書の役割として正しいものはどれか。', 'デジタル証明書は認証局（CA）が公開鍵と所有者の身元情報に署名することで、公開鍵が正当な所有者のものであることを証明する。PKIはCA・証明書・失効リスト（CRL）からなる信頼の基盤。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '公開鍵と所有者の対応関係を認証局が保証する', NULL, true),
  (currval('questions_id_seq'), '通信データを暗号化して盗聴を防ぐ', NULL, false),
  (currval('questions_id_seq'), 'パスワードをハッシュ化して安全に保管する', NULL, false),
  (currval('questions_id_seq'), 'ネットワーク上の不正アクセスを検知する', NULL, false);

-- A-95: TLS/SSL
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 95, 'choice', 1, 1, 'TLS（Transport Layer Security）の説明として正しいものはどれか。', 'TLSはネットワーク通信を暗号化し、盗聴・改ざん・なりすましを防ぐプロトコル。SSLの後継。HTTPSはHTTPをTLSで保護したもの。公開鍵暗号で鍵交換し対称鍵暗号で通信内容を暗号化するハイブリッド方式。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ネットワーク通信を暗号化し盗聴・改ざん・なりすましを防ぐプロトコル', NULL, true),
  (currval('questions_id_seq'), 'ファイルをディスク上で暗号化して保管するための規格', NULL, false),
  (currval('questions_id_seq'), 'メールの送受信を高速化するプロトコル', NULL, false),
  (currval('questions_id_seq'), 'ルータ間のルーティング情報を交換するプロトコル', NULL, false);

-- A-96: SQLインジェクション
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 96, 'choice', 1, 1, 'SQLインジェクション攻撃の説明として正しいものはどれか。', 'SQLインジェクションはWebアプリのフォームなどにSQL文の断片を入力し、意図しないSQL命令を実行させる攻撃。データの不正取得・改ざん・削除が可能。プレースホルダ（パラメータ化クエリ）使用が最も効果的な対策。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '入力値にSQL文を埋め込み、意図しないデータベース操作を実行させる攻撃', NULL, true),
  (currval('questions_id_seq'), 'Webページにスクリプトを埋め込み、閲覧者のブラウザで実行させる攻撃', NULL, false),
  (currval('questions_id_seq'), '偽のWebサイトに誘導してログイン情報を盗む攻撃', NULL, false),
  (currval('questions_id_seq'), '大量のリクエストを送りつけてサービスを停止させる攻撃', NULL, false);

-- A-97: XSS（クロスサイトスクリプティング）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 97, 'choice', 1, 1, 'クロスサイトスクリプティング（XSS）の説明として正しいものはどれか。', 'XSSは攻撃者がWebページに悪意のあるスクリプトを埋め込み、そのページを閲覧したユーザのブラウザで実行させる攻撃。セッションクッキー盗難・フィッシング・ページ改ざんなどが可能。入力値のエスケープ・CSPヘッダが対策。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'Webページに埋め込まれたスクリプトを閲覧者のブラウザで実行させる攻撃', NULL, true),
  (currval('questions_id_seq'), 'データベースに不正なSQL文を実行させる攻撃', NULL, false),
  (currval('questions_id_seq'), 'ネットワークを盗聴して通信内容を傍受する攻撃', NULL, false),
  (currval('questions_id_seq'), 'ログイン画面に大量のパスワードを試行する攻撃', NULL, false);

-- A-98: CSRF
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 98, 'choice', 1, 1, 'CSRF（Cross-Site Request Forgery）攻撃の説明として正しいものはどれか。', 'CSRFはユーザが意図しないHTTPリクエストを正規サイトに送信させる攻撃。ログイン済みのユーザが悪意あるページを閲覧すると、そのユーザの権限で不正操作が実行される。CSRFトークンの利用が対策。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ログイン済みユーザに意図しないリクエストを正規サイトへ送信させる攻撃', NULL, true),
  (currval('questions_id_seq'), 'Webページに悪意のあるスクリプトを埋め込み閲覧者のブラウザで実行する攻撃', NULL, false),
  (currval('questions_id_seq'), 'ネットワーク通信を傍受して認証情報を盗む攻撃', NULL, false),
  (currval('questions_id_seq'), 'DNSキャッシュを汚染して偽サイトに誘導する攻撃', NULL, false);

-- A-99: DoS攻撃
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 99, 'choice', 1, 1, 'DDoS攻撃（Distributed Denial of Service）の説明として正しいものはどれか。', 'DDoSは多数のコンピュータ（多くはマルウェア感染したボットネット）から標的のサーバやネットワークに大量のリクエストを一斉送信し、サービスを停止させる攻撃。単一機器からのDoS攻撃より対処が困難。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '多数のコンピュータから大量のリクエストを送り、サービスを停止させる攻撃', NULL, true),
  (currval('questions_id_seq'), '単一のコンピュータからサーバに不正ログインを試みる攻撃', NULL, false),
  (currval('questions_id_seq'), '通信を傍受してセッション情報を盗む攻撃', NULL, false),
  (currval('questions_id_seq'), '正規ユーザになりすましてデータを改ざんする攻撃', NULL, false);

-- A-100: ソーシャルエンジニアリング
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 100, 'choice', 1, 1, 'ソーシャルエンジニアリングの説明として最も適切なものはどれか。', 'ソーシャルエンジニアリングは技術的な手段によらず、人間の心理・行動の隙を突いて情報を入手する攻撃手法。なりすまし電話・ショルダーハッキング（のぞき見）・ゴミ箱あさりなどが代表例。技術的対策だけでは防げない。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '人間の心理や行動の隙を突いて情報を不正に入手する攻撃手法', NULL, true),
  (currval('questions_id_seq'), 'ネットワークに侵入してシステムを不正操作する技術的攻撃', NULL, false),
  (currval('questions_id_seq'), 'マルウェアを使ってデータを暗号化し身代金を要求する攻撃', NULL, false),
  (currval('questions_id_seq'), 'パスワードをすべての組み合わせで試す総当たり攻撃', NULL, false);

-- A-101: ファイアウォール
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 101, 'choice', 1, 1, 'パケットフィルタリング型ファイアウォールの説明として正しいものはどれか。', 'パケットフィルタリング型ファイアウォールはIPアドレス・ポート番号・プロトコルに基づいてパケットの通過可否を判断する。高速だが通信の内容（アプリケーション層）は検査しない。アプリケーション層を検査するのはアプリケーションゲートウェイ型。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'IPアドレス・ポート番号・プロトコルに基づいてパケットの通過可否を判断する', NULL, true),
  (currval('questions_id_seq'), '通信内容（アプリケーション層）を解析して不正な通信を遮断する', NULL, false),
  (currval('questions_id_seq'), 'ウイルスのパターンを照合してマルウェアを検出する', NULL, false),
  (currval('questions_id_seq'), 'ユーザの認証情報を検証してアクセス制御を行う', NULL, false);

-- A-102: IDS・IPS
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 102, 'choice', 1, 1, 'IDS（侵入検知システム）とIPS（侵入防止システム）の違いとして正しいものはどれか。', 'IDSはネットワークやホストへの不正アクセスを検知して管理者に通知するが、自動的な遮断は行わない。IPSはIDSの機能に加え不正と判断した通信を自動的に遮断する。IPSはIDSの発展形で能動的に防御する。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'IDSは不正を検知して通知するだけで、IPSは不正通信を自動的に遮断する', NULL, true),
  (currval('questions_id_seq'), 'IPSは不正を検知して通知するだけで、IDSは不正通信を自動的に遮断する', NULL, false),
  (currval('questions_id_seq'), 'IDSとIPSはともに自動遮断する機能を持つ', NULL, false),
  (currval('questions_id_seq'), 'IDSとIPSはともに検知のみで遮断機能は持たない', NULL, false);

-- A-103: DMZ
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 103, 'choice', 1, 1, 'ネットワーク構成におけるDMZ（非武装地帯）の説明として正しいものはどれか。', 'DMZはインターネットと内部ネットワークの間に設ける中間ネットワーク領域。WebサーバやメールサーバなどインターネットからアクセスされるサーバをDMZに置き、内部ネットワークを保護する。外部からDMZへのアクセスは許可するが内部ネットワークへの直接アクセスは禁止する。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'インターネットと内部ネットワークの間に設ける中間ネットワーク領域', NULL, true),
  (currval('questions_id_seq'), '内部ネットワークを完全に隔離する専用の暗号化通信網', NULL, false),
  (currval('questions_id_seq'), '外部からのすべてのアクセスを遮断するファイアウォールの別称', NULL, false),
  (currval('questions_id_seq'), '無線LANのセキュリティを強化するための認証エリア', NULL, false);

-- A-104: VPN
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 104, 'choice', 1, 1, 'VPN（Virtual Private Network）の説明として最も適切なものはどれか。', 'VPNはインターネットなどの公衆ネットワーク上に仮想的なプライベートネットワークを構築する技術。通信を暗号化しトンネリングすることで、専用回線のような安全な通信を実現する。テレワーク時の社内ネットワーク接続などに使われる。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '公衆ネットワーク上に暗号化された仮想的なプライベートネットワークを構築する技術', NULL, true),
  (currval('questions_id_seq'), '複数の物理サーバを1台の仮想サーバとして管理する技術', NULL, false),
  (currval('questions_id_seq'), 'DNSを使ってドメイン名をIPアドレスに変換する仕組み', NULL, false),
  (currval('questions_id_seq'), 'ファイアウォールで外部からのアクセスを完全に遮断する技術', NULL, false);

-- A-105: ハッシュ関数の特性
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 105, 'choice', 1, 1, 'セキュリティ用途で使われるハッシュ関数の性質として正しいものはどれか。', 'ハッシュ関数は任意長の入力から固定長のハッシュ値を生成する一方向関数。ハッシュ値から元データを復元することは計算上困難（一方向性）。わずかな入力変化で大きくハッシュ値が変わる（雪崩効果）。異なる入力から同じハッシュ値（衝突）が生じにくい。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '一方向性があり、ハッシュ値から元のデータを復元することは困難', NULL, true),
  (currval('questions_id_seq'), '秘密鍵と公開鍵を使って可逆的に暗号化・復号できる', NULL, false),
  (currval('questions_id_seq'), '同じ入力でも実行ごとに異なるハッシュ値が生成される', NULL, false),
  (currval('questions_id_seq'), 'ハッシュ値から元のデータを容易に復元できる', NULL, false);

-- A-106: AES
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 106, 'choice', 1, 1, 'AES（Advanced Encryption Standard）の説明として正しいものはどれか。', 'AESは米国標準の対称鍵ブロック暗号。鍵長128・192・256ビットを選択可能。DESの後継として2001年に標準化。高速で安全性が高く、現在最も広く使われる対称鍵暗号。WPA2の暗号化やSSL/TLSでも採用。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '128・192・256ビットの鍵長を持つ現在最も広く使われる対称鍵ブロック暗号', NULL, true),
  (currval('questions_id_seq'), '公開鍵と秘密鍵のペアを使う非対称鍵暗号', NULL, false),
  (currval('questions_id_seq'), 'デジタル署名専用の暗号アルゴリズム', NULL, false),
  (currval('questions_id_seq'), 'MD5の後継として開発されたハッシュ関数', NULL, false);

-- A-107: 情報セキュリティの3要素
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 107, 'choice', 1, 1, '情報セキュリティのCIAトライアドの「可用性（Availability）」の説明として正しいものはどれか。', 'CIAトライアド：機密性（Confidentiality）＝許可された者のみがアクセスできる、完全性（Integrity）＝情報が正確で改ざんされていない、可用性（Availability）＝必要なときにシステムや情報へアクセスできる。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '許可された利用者が必要なときにシステムや情報を利用できる状態を維持すること', NULL, true),
  (currval('questions_id_seq'), '情報が正確であり、不正に改ざんされていないことを保証すること', NULL, false),
  (currval('questions_id_seq'), '許可された者だけが情報にアクセスできるよう制限すること', NULL, false),
  (currval('questions_id_seq'), '情報の送受信者が後から否定できないようにすること', NULL, false);

-- A-108: リスクアセスメント
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 108, 'choice', 1, 1, '情報セキュリティにおけるリスクアセスメントの手順として正しいものはどれか。', 'リスクアセスメントはリスク特定→リスク分析→リスク評価の順に実施する。リスク特定で脅威・脆弱性・情報資産を洗い出し、リスク分析で発生可能性・影響度を評価、リスク評価でリスク対応の優先度を決定する。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'リスク特定 → リスク分析 → リスク評価', NULL, true),
  (currval('questions_id_seq'), 'リスク評価 → リスク特定 → リスク分析', NULL, false),
  (currval('questions_id_seq'), 'リスク分析 → リスク評価 → リスク特定', NULL, false),
  (currval('questions_id_seq'), 'リスク評価 → リスク分析 → リスク特定', NULL, false);

-- A-109: ゼロトラストセキュリティ
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 109, 'choice', 1, 1, 'ゼロトラストセキュリティモデルの基本的な考え方として正しいものはどれか。', 'ゼロトラストは「信頼しない、常に検証する（Never Trust, Always Verify）」を原則とするセキュリティモデル。従来の境界防御（内部は安全）とは異なり、内部ネットワークのユーザ・デバイスも常に認証・認可・検証を行う。テレワーク普及で注目される。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '内部ネットワークも含めすべてのアクセスを常に検証し、信頼しない前提で管理する', NULL, true),
  (currval('questions_id_seq'), '内部ネットワークは安全と見なし、外部からのアクセスのみ厳格に検査する', NULL, false),
  (currval('questions_id_seq'), 'VPNで通信を暗号化すれば内外を問わず安全とする考え方', NULL, false),
  (currval('questions_id_seq'), 'ファイアウォールで境界を守れば内部は自由にアクセスできる考え方', NULL, false);

-- A-110: マルウェアの種類
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 110, 'choice', 1, 1, 'ランサムウェア（Ransomware）の説明として正しいものはどれか。', 'ランサムウェアは感染したコンピュータのファイルを暗号化し、復号のための身代金（Ransom）を要求するマルウェア。バックアップの定期取得・OSパッチ適用・怪しいメール添付ファイルを開かないことが対策。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ファイルを暗号化して使用不能にし、復号の代わりに身代金を要求するマルウェア', NULL, true),
  (currval('questions_id_seq'), '感染したコンピュータを踏み台にしてDDoS攻撃に利用するマルウェア', NULL, false),
  (currval('questions_id_seq'), 'ユーザの操作を記録してキーストロークやパスワードを盗むマルウェア', NULL, false),
  (currval('questions_id_seq'), 'ウイルスに見せかけた正規ソフトウェアのふりをする不正プログラム', NULL, false);

-- ----------------------------------------
-- 科目A：データベース（A-111〜A-120）
-- ----------------------------------------

-- A-111: 第1正規形
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 111, 'choice', 1, 1, 'データベースの正規化における第1正規形の条件として正しいものはどれか。', '第1正規形（1NF）はすべての属性が原子値（繰り返し項目・複数値を持たない）であること。つまりセル内に複数の値を格納しないこと。たとえば「電話番号」列に複数の電話番号を入れてはいけない。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'すべての属性が繰り返しのない原子値であること', NULL, true),
  (currval('questions_id_seq'), '非キー属性が主キーに完全関数従属していること', NULL, false),
  (currval('questions_id_seq'), '非キー属性間に推移的関数従属がないこと', NULL, false),
  (currval('questions_id_seq'), 'すべての決定項が候補キーであること', NULL, false);

-- A-112: 第2正規形
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 112, 'choice', 1, 1, 'データベースの正規化における第2正規形の条件として正しいものはどれか。', '第2正規形（2NF）は第1正規形を満たした上で、すべての非キー属性が主キー全体に完全関数従属していること。複合主キーの一部にだけ依存する「部分関数従属」を排除する。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '第1正規形を満たし、すべての非キー属性が主キー全体に完全関数従属している', NULL, true),
  (currval('questions_id_seq'), '第1正規形を満たし、非キー属性間に推移的従属がない', NULL, false),
  (currval('questions_id_seq'), 'すべての属性が繰り返しのない原子値である', NULL, false),
  (currval('questions_id_seq'), '第3正規形を満たし、すべての決定項が候補キーである', NULL, false);

-- A-113: トランザクションのACID特性
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 113, 'choice', 1, 1, 'データベーストランザクションのACID特性のうち「原子性（Atomicity）」の説明として正しいものはどれか。', 'ACID特性：原子性（Atomicity）=トランザクションは完全に実行されるか全く実行されないかのどちらか、一貫性（Consistency）=整合性維持、独立性（Isolation）=トランザクション間の干渉なし、耐久性（Durability）=コミット結果の永続化。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'トランザクションはすべて実行されるか、まったく実行されないかのどちらかである', NULL, true),
  (currval('questions_id_seq'), 'トランザクション実行中はほかのトランザクションから隔離される', NULL, false),
  (currval('questions_id_seq'), 'コミット後のデータは障害が発生しても失われない', NULL, false),
  (currval('questions_id_seq'), 'トランザクション実行前後でデータの整合性が保たれる', NULL, false);

-- A-114: デッドロック（DB）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 114, 'choice', 1, 1, 'データベースにおけるデッドロックの対処法として適切なものはどれか。', 'DBのデッドロック対処法：①予防（資源の順序付け・一括ロック取得）②検出・回復（デッドロック検出後にトランザクションの一方をロールバック）③タイムアウト（一定時間ロック待ちのトランザクションを強制ロールバック）がある。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'デッドロックを検出したらトランザクションの一方をロールバックして解消する', NULL, true),
  (currval('questions_id_seq'), 'デッドロックが発生したらシステム全体を再起動する', NULL, false),
  (currval('questions_id_seq'), 'すべてのトランザクションを逐次実行してデッドロックを根絶する', NULL, false),
  (currval('questions_id_seq'), 'ロックを一切使用しないでデッドロックを防ぐ', NULL, false);

-- A-115: SQL GROUP BY
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 115, 'choice', 1, 1, 'SQL文「SELECT 部署ID, COUNT(*) FROM 社員 GROUP BY 部署ID HAVING COUNT(*) >= 5」の結果として正しいものはどれか。', 'GROUP BYで部署IDごとにグループ化し、COUNT(*)で各部署の社員数を集計。HAVINGは集計後の条件指定でCOUNT(*)>=5の部署のみ表示する。WHEREはグループ化前の行に対する条件。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '社員数が5人以上の部署IDとその社員数の一覧', NULL, true),
  (currval('questions_id_seq'), '社員IDが5以上の社員の部署ID一覧', NULL, false),
  (currval('questions_id_seq'), '社員数が5人未満の部署IDとその社員数の一覧', NULL, false),
  (currval('questions_id_seq'), 'すべての部署の社員数の合計', NULL, false);

-- A-116: ビューの特徴
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 116, 'choice', 1, 1, 'データベースのビュー（View）の説明として正しいものはどれか。', 'ビューはSELECT文の結果に名前をつけた仮想テーブル。実データは基底テーブルに格納される。アクセス制御（不要なカラムを隠す）、複雑なSELECTの再利用、論理的なデータ独立性の実現に活用される。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'SELECT文の結果に名前をつけた仮想テーブルで、実データは基底テーブルに存在する', NULL, true),
  (currval('questions_id_seq'), '物理的にデータを格納する独立したテーブル', NULL, false),
  (currval('questions_id_seq'), 'データを一時的にメモリに保持するキャッシュ構造', NULL, false),
  (currval('questions_id_seq'), 'テーブル間の関係を定義する外部キー制約のこと', NULL, false);

-- A-117: インデックス
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 117, 'choice', 1, 1, 'データベースのインデックス（索引）に関する記述として適切なものはどれか。', 'インデックスはSELECTクエリの検索速度を向上させるが、INSERT・UPDATE・DELETEのたびにインデックスも更新されるため更新処理は遅くなる。また追加のディスク領域が必要。頻繁に検索されるカラムや結合条件に使うカラムに設定する。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '検索速度は向上するが、データ更新時のオーバーヘッドが増える', NULL, true),
  (currval('questions_id_seq'), '検索・更新・挿入・削除すべての処理速度が向上する', NULL, false),
  (currval('questions_id_seq'), 'データの整合性を保証するための制約機能', NULL, false),
  (currval('questions_id_seq'), 'テーブル間の関係を定義してJOINを可能にする機能', NULL, false);

-- A-118: 関係代数（結合）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 118, 'choice', 1, 1, 'SQL における INNER JOIN（内結合）の説明として正しいものはどれか。', 'INNER JOINは結合条件を満たす行だけを抽出する。どちらかのテーブルにのみ存在する行は結果に含まれない。LEFT JOINは左テーブルのすべての行を含み、右テーブルに一致がなければNULL。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '結合条件を満たす両テーブルの行のみを返す', NULL, true),
  (currval('questions_id_seq'), '左テーブルのすべての行と、右テーブルの一致する行を返す', NULL, false),
  (currval('questions_id_seq'), '両テーブルのすべての行を返し、一致しない部分はNULLとする', NULL, false),
  (currval('questions_id_seq'), '両テーブルの直積（すべての組み合わせ）を返す', NULL, false);

-- A-119: NoSQL
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 119, 'choice', 1, 1, 'NoSQLデータベースの特徴として正しいものはどれか。', 'NoSQLはRelational DBの制約を緩め、スケールアウト・柔軟なスキーマ・高速な読み書きを実現する。キーバリュー型・ドキュメント型・列指向型・グラフ型などがある。一般にACID特性より可用性・分断耐性を優先（BASE特性）。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'スキーマが柔軟で水平スケールに優れるが、完全なACID特性を持たない場合がある', NULL, true),
  (currval('questions_id_seq'), '厳格なACID特性を持ち、大規模なトランザクション処理に最適', NULL, false),
  (currval('questions_id_seq'), 'テーブルと外部キーで関係を表現するリレーショナルモデルを採用', NULL, false),
  (currval('questions_id_seq'), 'SQLのみで操作でき、標準化されたインタフェースを持つ', NULL, false);

-- A-120: E-R図
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 120, 'choice', 1, 1, 'E-R図（実体関連図）の構成要素として正しい組み合わせはどれか。', 'E-R図はエンティティ（実体・四角）・属性（楕円）・関連（リレーションシップ・ひし形）・カーディナリティ（1対多など）で構成される。データベース設計の概念モデルを表現するために使われる。', NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'エンティティ・属性・リレーションシップ', NULL, true),
  (currval('questions_id_seq'), 'クラス・メソッド・継承', NULL, false),
  (currval('questions_id_seq'), 'プロセス・データストア・データフロー', NULL, false),
  (currval('questions_id_seq'), 'アクター・ユースケース・関連', NULL, false);
-- ----------------------------------------
-- 科目A（section_id=1）Q121〜Q200
-- ----------------------------------------

-- ----------------------------------------
-- ネットワーク（Q121〜Q135）
-- ----------------------------------------

-- Q121: DHCPの役割
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 121, 'choice', 1, 1,
  'DHCPの役割として最も適切なものはどれか。',
  'DHCPはDynamic Host Configuration Protocolの略で，ネットワークに接続した機器に対してIPアドレスやサブネットマスクなどのネットワーク設定情報を自動的に割り当てるプロトコルである。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'IPアドレスを動的に割り当てる', NULL, true),
  (currval('questions_id_seq'), 'ドメイン名をIPアドレスに変換する', NULL, false),
  (currval('questions_id_seq'), 'メールを転送する', NULL, false),
  (currval('questions_id_seq'), 'Webページを配信する', NULL, false);

-- Q122: DNSの機能
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 122, 'choice', 1, 1,
  'DNSが提供する主な機能はどれか。',
  'DNS（Domain Name System）はドメイン名とIPアドレスを相互に変換する名前解決のためのシステムである。人間が覚えやすいドメイン名（例: www.example.com）を機器が通信で使うIPアドレスに変換する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ドメイン名をIPアドレスに変換する', NULL, true),
  (currval('questions_id_seq'), 'IPアドレスを動的に割り当てる', NULL, false),
  (currval('questions_id_seq'), 'パケットを暗号化して送信する', NULL, false),
  (currval('questions_id_seq'), 'ネットワーク機器間の経路を選択する', NULL, false);

-- Q123: HTTPSで使用されるプロトコル
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 123, 'choice', 1, 1,
  'HTTPSの通信を暗号化するために使われるプロトコルはどれか。',
  'HTTPSはHTTPにTLS（Transport Layer Security）による暗号化を組み合わせたプロトコルである。以前はSSL（Secure Sockets Layer）が使われていたが，現在はTLSが標準である。TLSにより通信内容の盗聴・改ざんを防止できる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'TLS', NULL, true),
  (currval('questions_id_seq'), 'FTP', NULL, false),
  (currval('questions_id_seq'), 'SMTP', NULL, false),
  (currval('questions_id_seq'), 'UDP', NULL, false);

-- Q124: ルーターとスイッチの違い
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 124, 'choice', 1, 1,
  'ルーターの主な機能として最も適切なものはどれか。',
  'ルーターはネットワーク層（OSI第3層）で動作し，異なるネットワーク間のパケット転送（ルーティング）を行う機器である。宛先IPアドレスを基にルーティングテーブルを参照して，最適な経路へパケットを転送する。スイッチはMACアドレスを基に同一ネットワーク内での転送を行う。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '異なるネットワーク間のパケット転送', NULL, true),
  (currval('questions_id_seq'), '同一ネットワーク内のフレーム転送', NULL, false),
  (currval('questions_id_seq'), '電気信号の増幅', NULL, false),
  (currval('questions_id_seq'), 'MACアドレスの割り当て', NULL, false);

-- Q125: VLANの説明
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 125, 'choice', 1, 1,
  'VLANの説明として最も適切なものはどれか。',
  'VLAN（Virtual LAN）は，物理的なネットワーク構成を変えることなく，スイッチの設定でネットワークを論理的に分割する技術である。セキュリティ向上や通信の最適化，管理の容易化などの目的で使われる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'スイッチで論理的にネットワークを分割する技術', NULL, true),
  (currval('questions_id_seq'), '複数のIPアドレスを1つに変換する技術', NULL, false),
  (currval('questions_id_seq'), '無線LANのセキュリティ規格', NULL, false),
  (currval('questions_id_seq'), '物理的な距離を延長するための中継技術', NULL, false);

-- Q126: NATの機能
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 126, 'choice', 1, 1,
  'NAT（Network Address Translation）の主な目的はどれか。',
  'NATはプライベートIPアドレスとグローバルIPアドレスを相互に変換する技術である。これにより，インターネット上でユニークなグローバルIPアドレスが限られていても，社内では多数のプライベートIPアドレスを利用できる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'プライベートIPアドレスとグローバルIPアドレスを変換する', NULL, true),
  (currval('questions_id_seq'), 'IPアドレスを暗号化する', NULL, false),
  (currval('questions_id_seq'), 'MACアドレスをIPアドレスに変換する', NULL, false),
  (currval('questions_id_seq'), 'ドメイン名をIPアドレスに変換する', NULL, false);

-- Q127: TCPとUDPの違い
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 127, 'choice', 1, 1,
  'TCPの特徴として最も適切なものはどれか。',
  'TCPはコネクション型プロトコルで，3ウェイハンドシェイクで接続を確立し，順序制御・再送制御・フロー制御などによって信頼性の高い通信を実現する。UDPはコネクションレス型で信頼性の保証はないが，オーバーヘッドが小さく高速な通信が可能。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'コネクション確立後に信頼性の高い通信を行う', NULL, true),
  (currval('questions_id_seq'), 'コネクションレスで高速に通信する', NULL, false),
  (currval('questions_id_seq'), 'IPアドレスの変換を担当する', NULL, false),
  (currval('questions_id_seq'), 'MACアドレスを基にフレームを転送する', NULL, false);

-- Q128: 無線LANのセキュリティ規格
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 128, 'choice', 1, 1,
  '現在最も安全とされる無線LANの暗号化規格はどれか。',
  'WPA3は2018年にWi-Fi Allianceが策定した無線LANの最新セキュリティ規格で，WEP→WPA→WPA2→WPA3と進化してきた。WEPは脆弱性が発見され廃止推奨，WPA2は現在も広く使われているが，WPA3がより高い安全性を提供する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'WPA3', NULL, true),
  (currval('questions_id_seq'), 'WEP', NULL, false),
  (currval('questions_id_seq'), 'WPA', NULL, false),
  (currval('questions_id_seq'), 'SSID', NULL, false);

-- Q129: IPv6の特徴
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 129, 'choice', 1, 1,
  'IPv6の特徴として最も適切なものはどれか。',
  'IPv6はIPv4のアドレス枯渇問題を解決するために開発された次世代IPプロトコルである。128ビットのアドレス長を持ち，IPv4の32ビットと比較して膨大な数のアドレスを利用できる。また，IPsecの標準サポート，QoSの改善なども特徴。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '128ビットのアドレス長を持つ', NULL, true),
  (currval('questions_id_seq'), '32ビットのアドレス長を持つ', NULL, false),
  (currval('questions_id_seq'), 'サブネットマスクが不要になる', NULL, false),
  (currval('questions_id_seq'), 'MACアドレスを廃止する', NULL, false);

-- Q130: FTPの用途
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 130, 'choice', 1, 1,
  'FTP（File Transfer Protocol）の主な用途はどれか。',
  'FTPはネットワーク上でファイルを転送するためのプロトコルである。クライアントからサーバーへのファイルアップロードや，サーバーからクライアントへのダウンロードに使用される。ただし，通信内容が平文であるため，現在はSFTPやFTPSが推奨される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ファイルを転送する', NULL, true),
  (currval('questions_id_seq'), 'メールを送受信する', NULL, false),
  (currval('questions_id_seq'), 'Webページを表示する', NULL, false),
  (currval('questions_id_seq'), 'IPアドレスを割り当てる', NULL, false);

-- Q131: OSI参照モデルの第3層
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 131, 'choice', 1, 1,
  'OSI参照モデルのネットワーク層（第3層）で使われるアドレスはどれか。',
  'OSI参照モデルのネットワーク層（第3層）はIPアドレスを使って異なるネットワーク間のルーティングを担当する。データリンク層（第2層）はMACアドレスを使って同一ネットワーク内の通信を制御する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'IPアドレス', NULL, true),
  (currval('questions_id_seq'), 'MACアドレス', NULL, false),
  (currval('questions_id_seq'), 'ポート番号', NULL, false),
  (currval('questions_id_seq'), 'ドメイン名', NULL, false);

-- Q132: サブネットマスクの役割
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 132, 'choice', 1, 1,
  'サブネットマスクの役割として最も適切なものはどれか。',
  'サブネットマスクはIPアドレスのネットワーク部とホスト部を区別するために使われる値である。例えばIPアドレス192.168.1.100とサブネットマスク255.255.255.0がある場合，192.168.1がネットワーク部，100がホスト部となる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'IPアドレスのネットワーク部とホスト部を区別する', NULL, true),
  (currval('questions_id_seq'), 'MACアドレスをIPアドレスに変換する', NULL, false),
  (currval('questions_id_seq'), '暗号化キーとして使用する', NULL, false),
  (currval('questions_id_seq'), 'ポート番号のフィルタリングに使う', NULL, false);

-- Q133: ファイアウォールの機能
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 133, 'choice', 1, 1,
  'ファイアウォールの主な機能はどれか。',
  'ファイアウォールはネットワークの境界に設置し，設定されたルール（ポリシー）に基づいてパケットの通過を許可または拒否するセキュリティ機器・ソフトウェアである。不正アクセスや攻撃パケットをフィルタリングしてネットワークを保護する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ルールに基づいてパケットの通過を制御する', NULL, true),
  (currval('questions_id_seq'), '通信内容を暗号化する', NULL, false),
  (currval('questions_id_seq'), 'ウイルスをリアルタイムで除去する', NULL, false),
  (currval('questions_id_seq'), 'IPアドレスを動的に割り当てる', NULL, false);

-- Q134: SMTPの用途
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 134, 'choice', 1, 1,
  'SMTPが使われる場面として最も適切なものはどれか。',
  'SMTP（Simple Mail Transfer Protocol）はメールを送信するためのプロトコルである。メールクライアントからメールサーバーへの送信や，サーバー間でのメール転送に使われる。メールの受信にはPOP3やIMAPが使われる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'メールを送信する', NULL, true),
  (currval('questions_id_seq'), 'メールを受信する', NULL, false),
  (currval('questions_id_seq'), 'Webページを取得する', NULL, false),
  (currval('questions_id_seq'), 'ファイルを転送する', NULL, false);

-- Q135: プロキシサーバーの役割
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 135, 'choice', 1, 1,
  'プロキシサーバーの役割として最も適切なものはどれか。',
  'プロキシサーバーはクライアントとインターネットの中間に位置し，クライアントの代理としてリクエストを送受信する。これにより，Webコンテンツのキャッシュによるアクセス高速化，URLフィルタリングによるアクセス制御，クライアントIPアドレスの隠蔽などが実現できる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'クライアントの代理としてWebアクセスを中継する', NULL, true),
  (currval('questions_id_seq'), 'IPアドレスを暗号化する', NULL, false),
  (currval('questions_id_seq'), 'メールを配送する', NULL, false),
  (currval('questions_id_seq'), 'ネットワーク機器に電源を供給する', NULL, false);

-- ----------------------------------------
-- プログラミング基礎（Q136〜Q145）
-- ----------------------------------------

-- Q136: オブジェクト指向のカプセル化
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 136, 'choice', 1, 1,
  'オブジェクト指向のカプセル化の説明として最も適切なものはどれか。',
  'カプセル化とはオブジェクトのデータ（属性）と処理（メソッド）を一つにまとめ，外部から直接アクセスできないようにする概念である。データはprivateで隠蔽し，publicなメソッド（getter/setter）を通じてのみアクセスさせることで，データの整合性を保ち，実装の詳細を隠蔽できる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'データと処理をまとめ，外部からの直接アクセスを制限する', NULL, true),
  (currval('questions_id_seq'), '親クラスの性質を子クラスが引き継ぐ', NULL, false),
  (currval('questions_id_seq'), '同じメソッド名で異なる処理を実装する', NULL, false),
  (currval('questions_id_seq'), 'クラスを基にインスタンスを生成する', NULL, false);

-- Q137: 継承の説明
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 137, 'choice', 1, 1,
  'オブジェクト指向の継承の説明として最も適切なものはどれか。',
  '継承とは，既存のクラス（スーパークラス・親クラス）の属性やメソッドを新しいクラス（サブクラス・子クラス）が引き継ぐ仕組みである。コードの再利用性を高め，既存クラスを拡張して機能を追加したり，一部を上書き（オーバーライド）することができる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '親クラスの属性やメソッドを子クラスが引き継ぐ', NULL, true),
  (currval('questions_id_seq'), 'データと処理を一つにまとめて隠蔽する', NULL, false),
  (currval('questions_id_seq'), '同名のメソッドで異なる動作をさせる', NULL, false),
  (currval('questions_id_seq'), 'インスタンスを複数生成する', NULL, false);

-- Q138: ポリモーフィズムの説明
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 138, 'choice', 1, 1,
  'ポリモーフィズム（多態性）の説明として最も適切なものはどれか。',
  'ポリモーフィズムとは，同じインタフェース（メソッド名）で異なる動作を実現する仕組みである。例えば，動物クラスのsound()メソッドを犬はワン，猫はニャンと異なる実装にできる。これにより，型に依存しない汎用的なプログラムが書きやすくなる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '同じメソッド名で異なる動作を実現する', NULL, true),
  (currval('questions_id_seq'), '親クラスの機能を子クラスに引き継がせる', NULL, false),
  (currval('questions_id_seq'), 'データを外部から隠蔽する', NULL, false),
  (currval('questions_id_seq'), 'クラスから複数のインスタンスを生成する', NULL, false);

-- Q139: スタックとキューの違い
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 139, 'choice', 1, 1,
  'スタックのデータ取り出し方式として正しいものはどれか。',
  'スタックはLIFO（Last In, First Out：後入れ先出し）方式で，最後に格納したデータを最初に取り出す構造である。pushで積み上げ，popで取り出す。一方，キューはFIFO（First In, First Out：先入れ先出し）方式で，最初に格納したデータを最初に取り出す。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'LIFO（後入れ先出し）', NULL, true),
  (currval('questions_id_seq'), 'FIFO（先入れ先出し）', NULL, false),
  (currval('questions_id_seq'), '優先度の高い順', NULL, false),
  (currval('questions_id_seq'), 'ランダム', NULL, false);

-- Q140: 再帰呼び出しの特徴
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 140, 'choice', 1, 1,
  '再帰呼び出しの説明として最も適切なものはどれか。',
  '再帰（再帰呼び出し）とは，関数やプロシージャが自分自身を呼び出す処理のことである。再帰を使う際は無限ループを防ぐための終了条件（基底ケース）が必須。階乗計算やフィボナッチ数列，木構造の探索などに有効。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '関数が自分自身を呼び出す処理', NULL, true),
  (currval('questions_id_seq'), '関数を繰り返し呼び出すループ処理', NULL, false),
  (currval('questions_id_seq'), '複数の関数を並列に呼び出す処理', NULL, false),
  (currval('questions_id_seq'), '例外が発生した場合に別の処理を呼び出す機構', NULL, false);

-- Q141: 例外処理の目的
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 141, 'choice', 1, 1,
  'プログラムにおける例外処理の目的として最も適切なものはどれか。',
  '例外処理はプログラム実行中に発生した異常な状態（例外）を捕捉し，適切な処理を行うための仕組みである。try-catch構文などを使い，ゼロ除算やファイル未存在などの異常を検出して安全に回復または終了させることができる。プログラムの異常終了を防ぎ，ユーザーに適切なエラーメッセージを提示できる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '実行時の異常を捕捉して適切に対処する', NULL, true),
  (currval('questions_id_seq'), 'プログラムの処理速度を向上させる', NULL, false),
  (currval('questions_id_seq'), 'コードの重複を排除する', NULL, false),
  (currval('questions_id_seq'), 'データを暗号化する', NULL, false);

-- Q142: ビット演算（AND）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 142, 'choice', 1, 1,
  '10進数の12と10のAND演算の結果（10進数）はどれか。なお，12は2進数で1100，10は2進数で1010である。',
  '12(1100) AND 10(1010) の各ビット：1AND1=1, 1AND0=0, 0AND1=0, 0AND0=0 → 1000(2進)= 8(10進)。AND演算は両方が1のビットのみ1になる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '8', NULL, true),
  (currval('questions_id_seq'), '14', NULL, false),
  (currval('questions_id_seq'), '22', NULL, false),
  (currval('questions_id_seq'), '2', NULL, false);

-- Q143: 変数のスコープ
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 143, 'choice', 1, 1,
  'ローカル変数の説明として最も適切なものはどれか。',
  'ローカル変数は特定の関数やブロック内でのみ有効な変数である。その関数が終了すると変数は消滅する。一方，グローバル変数はプログラム全体で参照・変更できる変数であり，どこからでもアクセスできる。ローカル変数を使うことで変数の衝突を防ぎ，副作用を減らせる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '定義された関数やブロック内でのみ有効な変数', NULL, true),
  (currval('questions_id_seq'), 'プログラム全体で参照できる変数', NULL, false),
  (currval('questions_id_seq'), '変更できない定数', NULL, false),
  (currval('questions_id_seq'), 'クラスのメンバとして定義された変数', NULL, false);

-- Q144: アルゴリズムの計算量（O記法）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 144, 'choice', 1, 1,
  '線形探索アルゴリズムの平均時間計算量として正しいものはどれか。',
  '線形探索は配列の先頭から順番に目的の値を探す単純なアルゴリズムである。データ数n個に対して，平均的にn/2回，最悪n回の比較が必要なため，時間計算量はO(n)となる。二分探索はO(log n)，ハッシュ探索はO(1)が期待できる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(n)', NULL, true),
  (currval('questions_id_seq'), 'O(log n)', NULL, false),
  (currval('questions_id_seq'), 'O(1)', NULL, false),
  (currval('questions_id_seq'), 'O(n²)', NULL, false);

-- Q145: デザインパターン（シングルトン）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 145, 'choice', 1, 1,
  'シングルトンパターンの説明として最も適切なものはどれか。',
  'シングルトンパターンはGoFのデザインパターンの一つで，クラスのインスタンスが必ず1つしか存在しないことを保証する設計パターンである。データベース接続やロガーなど，システム全体で1つだけ存在すべきオブジェクトに使用される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'クラスのインスタンスを1つだけに制限する', NULL, true),
  (currval('questions_id_seq'), 'オブジェクト生成の手順を定義する', NULL, false),
  (currval('questions_id_seq'), '異なるインタフェースのクラスを橋渡しする', NULL, false),
  (currval('questions_id_seq'), 'オブジェクトの状態変化を通知する', NULL, false);

-- ----------------------------------------
-- システム開発・設計（Q146〜Q160）
-- ----------------------------------------

-- Q146: ウォーターフォールモデルの特徴
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 146, 'choice', 1, 1,
  'ウォーターフォールモデルの特徴として最も適切なものはどれか。',
  'ウォーターフォールモデルは要件定義→設計→実装→テスト→運用と順番に各フェーズを実施し，原則として前のフェーズに戻らない開発モデルである。各フェーズの成果物が明確で進捗管理がしやすいが，要件変更への対応が困難なデメリットがある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '各フェーズを順番に実施し前のフェーズには原則戻らない', NULL, true),
  (currval('questions_id_seq'), '短い反復サイクルで開発を繰り返す', NULL, false),
  (currval('questions_id_seq'), '動作するプロトタイプを早期に作成して確認する', NULL, false),
  (currval('questions_id_seq'), 'スパイラル状に段階的に完成度を高める', NULL, false);

-- Q147: アジャイル開発の特徴
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 147, 'choice', 1, 1,
  'アジャイル開発の特徴として最も適切なものはどれか。',
  'アジャイル開発は短い反復（イテレーション/スプリント）サイクルで開発・テスト・フィードバックを繰り返し，変化への対応と顧客価値の早期提供を重視する開発手法の総称である。スクラムやXPなどの具体的な手法がある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '短い反復サイクルで開発とフィードバックを繰り返す', NULL, true),
  (currval('questions_id_seq'), '全フェーズを計画してから順番に実施する', NULL, false),
  (currval('questions_id_seq'), 'プロトタイプを作成してから本開発に入る', NULL, false),
  (currval('questions_id_seq'), 'システムを複数のサブシステムに分割して並行開発する', NULL, false);

-- Q148: ブラックボックステスト
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 148, 'choice', 1, 1,
  'ブラックボックステストの説明として最も適切なものはどれか。',
  'ブラックボックステストはプログラムの内部構造を考慮せず，入力と出力の関係（仕様）に基づいてテストを行う手法である。テスト担当者は内部実装を知らなくてもテスト可能。同値分割や境界値分析がよく使われる技法。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '内部構造を考慮せず入出力の仕様に基づいてテストする', NULL, true),
  (currval('questions_id_seq'), 'ソースコードを確認しながら全命令網羅を目指す', NULL, false),
  (currval('questions_id_seq'), '開発者自身がコードをレビューする', NULL, false),
  (currval('questions_id_seq'), '本番環境と同等の環境でテストする', NULL, false);

-- Q149: ホワイトボックステスト
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 149, 'choice', 1, 1,
  'ホワイトボックステストの説明として最も適切なものはどれか。',
  'ホワイトボックステストはプログラムの内部構造（ソースコード）を把握した上で，命令網羅・分岐網羅などを基準にテストケースを設計する手法である。命令網羅（C0），分岐網羅（C1），条件網羅（C2）など複数のカバレッジ基準がある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '内部構造を把握してカバレッジ基準でテストを設計する', NULL, true),
  (currval('questions_id_seq'), '入出力の仕様のみに基づいてテストケースを設計する', NULL, false),
  (currval('questions_id_seq'), 'ユーザーの立場から操作性をテストする', NULL, false),
  (currval('questions_id_seq'), '負荷をかけてシステムの限界を確認する', NULL, false);

-- Q150: UMLのクラス図
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 150, 'choice', 1, 1,
  'UMLのクラス図で表現するものとして最も適切なものはどれか。',
  'UMLのクラス図はシステムの静的な構造を表し，クラス（属性とメソッド），クラス間の関係（継承，集約，関連など）を図示する。設計フェーズでオブジェクト指向設計を文書化するために広く使われる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'クラスとクラス間の関係による静的構造', NULL, true),
  (currval('questions_id_seq'), 'ユーザーとシステムの相互作用の流れ', NULL, false),
  (currval('questions_id_seq'), 'オブジェクトの状態遷移', NULL, false),
  (currval('questions_id_seq'), '時系列に沿ったオブジェクト間のメッセージ交換', NULL, false);

-- Q151: 要件定義の目的
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 151, 'choice', 1, 1,
  'システム開発における要件定義の目的として最も適切なものはどれか。',
  '要件定義はシステムが満たすべき機能・性能・制約などの要件を利害関係者と合意してまとめる工程である。開発する「何を作るか」を明確化し，後続の設計・実装の基礎となる。要件定義の質が最終的なシステムの品質に大きく影響する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'システムが満たすべき機能・性能・制約を明確化する', NULL, true),
  (currval('questions_id_seq'), 'プログラムのバグを検出して修正する', NULL, false),
  (currval('questions_id_seq'), 'データベースの論理設計を行う', NULL, false),
  (currval('questions_id_seq'), 'システムを本番環境に展開する', NULL, false);

-- Q152: ソフトウェアの品質特性（ISO/IEC 25010）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 152, 'choice', 1, 1,
  'ISO/IEC 25010で定義されるソフトウェア品質特性のうち，「指定された条件で使用するとき，明示・暗示された必要性を満たす機能を提供する度合い」を表すものはどれか。',
  'ISO/IEC 25010（旧SQuaRE）のソフトウェア品質特性において，機能適合性は「必要性を満たす機能を提供する度合い」を意味する。他には，性能効率性，互換性，使用性，信頼性，セキュリティ，保守性，移植性などの特性がある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '機能適合性', NULL, true),
  (currval('questions_id_seq'), '信頼性', NULL, false),
  (currval('questions_id_seq'), '保守性', NULL, false),
  (currval('questions_id_seq'), '移植性', NULL, false);

-- Q153: デバッグとテストの違い
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 153, 'choice', 1, 1,
  'デバッグの説明として最も適切なものはどれか。',
  'デバッグとはプログラムのバグ（欠陥）の原因を特定して修正する作業である。テストはバグの存在を検出するプロセスであり，デバッグはバグの原因究明と修正に特化する。デバッグツール（デバッガ）を使ってステップ実行や変数監視を行う。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'バグの原因を特定して修正する作業', NULL, true),
  (currval('questions_id_seq'), 'プログラムに欠陥がないか確認する作業', NULL, false),
  (currval('questions_id_seq'), 'プログラムの性能を測定する作業', NULL, false),
  (currval('questions_id_seq'), 'コードの重複を排除してリファクタリングする作業', NULL, false);

-- Q154: リバースエンジニアリング
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 154, 'choice', 1, 1,
  'リバースエンジニアリングの説明として最も適切なものはどれか。',
  'リバースエンジニアリングとは，完成品（実行ファイル・製品など）を分析して内部構造や仕様を明らかにする技術・プロセスである。既存システムの仕様書が失われた場合の再設計，マルウェア解析，競合製品の調査などに使われる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '完成品を分析して内部構造や仕様を明らかにする', NULL, true),
  (currval('questions_id_seq'), '設計書からプログラムを自動生成する', NULL, false),
  (currval('questions_id_seq'), 'テスト結果から仕様書を更新する', NULL, false),
  (currval('questions_id_seq'), 'ソースコードから実行ファイルを生成する', NULL, false);

-- Q155: レビューの種類（ウォークスルー）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 155, 'choice', 1, 1,
  'ウォークスルーの説明として最も適切なものはどれか。',
  'ウォークスルーは成果物の作成者が主体となって，参加者に対して成果物を説明・検討するレビュー手法である。作成者が進行役を担い，欠陥を見つけることより理解共有を目的とする。インスペクションは独立したモデレータが進行し，より厳格な欠陥摘出を目的とする。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '成果物の作成者が主体となって参加者に説明・検討するレビュー', NULL, true),
  (currval('questions_id_seq'), '独立したモデレータが進行する厳格な欠陥摘出レビュー', NULL, false),
  (currval('questions_id_seq'), '自動化ツールを使ってコードを静的解析する', NULL, false),
  (currval('questions_id_seq'), '本番環境で実際にテストを行う受入テスト', NULL, false);

-- Q156: バージョン管理の目的
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 156, 'choice', 1, 1,
  'バージョン管理システム（例: Git）の主な目的として最も適切なものはどれか。',
  'バージョン管理システムは，ファイルの変更履歴を記録・管理し，特定のバージョンへの復元や複数人での並行開発を支援するシステムである。Gitはその代表例で，ブランチによる並行作業，変更履歴の追跡，マージによる統合機能を提供する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '変更履歴を記録して過去のバージョンに戻せるようにする', NULL, true),
  (currval('questions_id_seq'), 'プログラムのコンパイルを自動化する', NULL, false),
  (currval('questions_id_seq'), 'コードの実行速度を最適化する', NULL, false),
  (currval('questions_id_seq'), 'テストを自動実行する', NULL, false);

-- Q157: CI/CDの説明
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 157, 'choice', 1, 1,
  'CI（継続的インテグレーション）の説明として最も適切なものはどれか。',
  'CI（Continuous Integration）は，開発者がコードをリポジトリに統合するたびに，自動的にビルド・テストを実行して問題を早期に検出するプラクティスである。CD（Continuous Delivery/Deployment）は，そこからさらに本番環境への自動デプロイまでを含む。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'コードをリポジトリに統合するたびに自動でビルド・テストを実行する', NULL, true),
  (currval('questions_id_seq'), 'ソフトウェアを本番環境に自動デプロイする', NULL, false),
  (currval('questions_id_seq'), '要件を継続的に見直して更新する', NULL, false),
  (currval('questions_id_seq'), 'システムの性能を継続的に監視する', NULL, false);

-- Q158: システムのRPO・RTO
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 158, 'choice', 1, 1,
  'RTO（Recovery Time Objective）の説明として最も適切なものはどれか。',
  'RTO（目標復旧時間）とは，障害発生からシステムを復旧させるまでに許容される最大時間である。RPO（Recovery Point Objective：目標復旧時点）は，どの時点のデータまで復旧させるかの目標値。両方ともBCP（事業継続計画）やDR（ディザスタリカバリ）計画の重要な指標。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '障害発生からシステムを復旧させるまでの許容最大時間', NULL, true),
  (currval('questions_id_seq'), 'どの時点のデータまで復旧するかの目標値', NULL, false),
  (currval('questions_id_seq'), 'システムが正常稼働している割合の目標値', NULL, false),
  (currval('questions_id_seq'), '障害が発生する前に検知できる最短時間', NULL, false);

-- Q159: DFD（データフロー図）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 159, 'choice', 1, 1,
  'DFD（データフロー図）で表現されるものとして最も適切なものはどれか。',
  'DFD（Data Flow Diagram）はシステム内のデータの流れを表す図である。プロセス（処理），データフロー（データの流れ），データストア（データの保存場所），外部エンティティ（システム外部との入出力）の4つの要素で構成される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'システム内のデータの流れと処理', NULL, true),
  (currval('questions_id_seq'), 'クラスとクラス間の静的な関係', NULL, false),
  (currval('questions_id_seq'), 'プロセスの状態遷移', NULL, false),
  (currval('questions_id_seq'), 'ユーザーとシステムの相互作用の手順', NULL, false);

-- Q160: リファクタリング
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 160, 'choice', 1, 1,
  'リファクタリングの説明として最も適切なものはどれか。',
  'リファクタリングとは，外部から見たプログラムの動作（機能）を変えずに，内部構造（コードの品質・可読性・保守性）を改善する作業である。コードの重複排除，命名改善，メソッドの分割などが典型例。デバッグや機能追加とは異なり，動作の変更を伴わない点が特徴。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '動作を変えずにコードの内部構造を改善する', NULL, true),
  (currval('questions_id_seq'), 'バグを見つけて修正する', NULL, false),
  (currval('questions_id_seq'), '新しい機能を追加する', NULL, false),
  (currval('questions_id_seq'), 'テストケースを追加して品質を高める', NULL, false);

-- ----------------------------------------
-- マネジメント（Q161〜Q175）
-- ----------------------------------------

-- Q161: WBSの説明
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 161, 'choice', 1, 1,
  'WBS（Work Breakdown Structure）の説明として最も適切なものはどれか。',
  'WBSはプロジェクトの作業を階層的に分解して管理可能な単位にまとめた構造図である。プロジェクト全体の作業範囲を把握し，スケジュール計画・コスト見積もり・担当者アサインなどの基礎として使われる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'プロジェクトの作業を階層的に分解した構造図', NULL, true),
  (currval('questions_id_seq'), 'プロジェクトのスケジュールをバーで表した図', NULL, false),
  (currval('questions_id_seq'), '作業の依存関係を矢印で表したネットワーク図', NULL, false),
  (currval('questions_id_seq'), 'リスクを確率と影響度で評価したマトリクス', NULL, false);

-- Q162: ガントチャートの用途
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 162, 'choice', 1, 1,
  'ガントチャートの説明として最も適切なものはどれか。',
  'ガントチャートはプロジェクトのスケジュール管理に使われる図で，横軸に時間，縦軸にタスクを取り，各タスクの期間を横棒（バー）で表現する。進捗状況の把握が直感的にできるが，タスク間の依存関係の表現が苦手という特徴がある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'タスクの期間を横棒で表すスケジュール管理図', NULL, true),
  (currval('questions_id_seq'), '作業を階層的に分解した構造図', NULL, false),
  (currval('questions_id_seq'), '作業の依存関係と所要時間を矢印で示すネットワーク図', NULL, false),
  (currval('questions_id_seq'), 'コストの予実差異を折れ線グラフで示す図', NULL, false);

-- Q163: クリティカルパス
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 163, 'choice', 1, 1,
  'プロジェクト管理におけるクリティカルパスの説明として最も適切なものはどれか。',
  'クリティカルパスはプロジェクトのネットワーク図（PERT図）において，最も所要時間が長い経路（作業経路）である。この経路上の作業が1つでも遅延するとプロジェクト全体の完了が遅れる。クリティカルパス上の作業にはバッファ（余裕時間＝フロート）がない。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'プロジェクト完了までの最長経路であり遅延が許されない作業の連鎖', NULL, true),
  (currval('questions_id_seq'), '最も短時間で完了できる最適な作業順序', NULL, false),
  (currval('questions_id_seq'), 'コストが最も高くなる作業の経路', NULL, false),
  (currval('questions_id_seq'), '品質上で最も重要な作業の経路', NULL, false);

-- Q164: ITILの概要
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 164, 'choice', 1, 1,
  'ITILの説明として最も適切なものはどれか。',
  'ITIL（IT Infrastructure Library）はITサービスマネジメントのベストプラクティスをまとめたフレームワークである。英国政府機関が開発し，ITサービスの設計・移行・運用・改善などのプロセスを体系化している。サービスデスクやインシデント管理，変更管理などのプロセスを定義している。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ITサービスマネジメントのベストプラクティス集', NULL, true),
  (currval('questions_id_seq'), 'ソフトウェア開発プロセスの成熟度モデル', NULL, false),
  (currval('questions_id_seq'), 'セキュリティ管理の国際標準', NULL, false),
  (currval('questions_id_seq'), 'プロジェクト管理のナレッジ体系', NULL, false);

-- Q165: SLAの説明
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 165, 'choice', 1, 1,
  'SLA（サービスレベルアグリーメント）の説明として最も適切なものはどれか。',
  'SLAはサービス提供者と顧客の間で，サービス品質（可用性・応答時間・サポート対応時間など）の目標値と責任範囲を定めた合意文書である。SLAに違反した場合のペナルティや，各指標の測定方法なども明記される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'サービス品質の目標と責任範囲を定めた合意文書', NULL, true),
  (currval('questions_id_seq'), 'システムの稼働率を保証する技術的な設計書', NULL, false),
  (currval('questions_id_seq'), 'セキュリティポリシーを定めた規約', NULL, false),
  (currval('questions_id_seq'), 'プロジェクトの要件を定めた仕様書', NULL, false);

-- Q166: リスクマネジメントの手順
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 166, 'choice', 1, 1,
  'プロジェクトのリスクマネジメントにおいて，リスク対応策として「リスクの発生確率や影響を下げる対策を講じる」ことを何というか。',
  'リスク対応策には主に4種類ある。①回避：リスクの原因を除去してリスク自体をなくす，②軽減（低減）：リスクの発生確率や影響度を下げる，③転嫁（移転）：保険や外部委託でリスクを他者に移す，④受容：対策を講じずリスクを受け入れる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'リスクの軽減（低減）', NULL, true),
  (currval('questions_id_seq'), 'リスクの回避', NULL, false),
  (currval('questions_id_seq'), 'リスクの転嫁', NULL, false),
  (currval('questions_id_seq'), 'リスクの受容', NULL, false);

-- Q167: PMBOKの説明
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 167, 'choice', 1, 1,
  'PMBOKの説明として最も適切なものはどれか。',
  'PMBOK（Project Management Body of Knowledge）は，PMI（Project Management Institute）が整理したプロジェクトマネジメントの知識体系（標準的なガイド）である。スコープ管理，スケジュール管理，コスト管理，品質管理などの知識エリアが定義されている。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'PMIが整理したプロジェクトマネジメントの知識体系', NULL, true),
  (currval('questions_id_seq'), 'ITサービスマネジメントのベストプラクティス集', NULL, false),
  (currval('questions_id_seq'), 'ソフトウェア開発プロセスの国際標準', NULL, false),
  (currval('questions_id_seq'), '情報セキュリティ管理の規格', NULL, false);

-- Q168: EVM（アーンドバリュー管理）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 168, 'choice', 1, 1,
  'EVM（アーンドバリュー管理）で，計画値（PV）に対して実績値（EV）が下回っている場合，プロジェクトはどのような状態か。',
  'EVMはプロジェクトのスケジュールとコストを数値で管理する手法。EV（Earned Value：完成した作業の計画コスト）がPV（Planned Value：計画上のコスト）を下回る場合，スケジュールが遅れている状態（SV＜0）を示す。EV<ACならコスト超過（CV＜0）。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'スケジュールが遅延している', NULL, true),
  (currval('questions_id_seq'), 'コストが超過している', NULL, false),
  (currval('questions_id_seq'), 'スケジュールが前倒しである', NULL, false),
  (currval('questions_id_seq'), 'コストが予算を下回っている', NULL, false);

-- Q169: SLM（サービスレベル管理）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 169, 'choice', 1, 1,
  'インシデント管理の目的として最も適切なものはどれか。',
  'インシデント管理の目的は，ITサービスの中断や品質低下を引き起こすインシデント（障害）に対して，できるだけ迅速にサービスを復旧させることである。根本原因の特定・解決は「問題管理」の役割であり，インシデント管理はあくまで早期復旧を優先する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'できるだけ迅速にサービスを復旧させる', NULL, true),
  (currval('questions_id_seq'), 'インシデントの根本原因を特定して恒久対策を行う', NULL, false),
  (currval('questions_id_seq'), '変更によるリスクを評価してサービスを安全に変更する', NULL, false),
  (currval('questions_id_seq'), 'サービスレベルの合意を顧客と結ぶ', NULL, false);

-- Q170: コスト見積り手法（ファンクションポイント法）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 170, 'choice', 1, 1,
  'ファンクションポイント法の説明として最も適切なものはどれか。',
  'ファンクションポイント法はシステムの機能（入力，出力，照会，ファイル，インタフェース）の数と複雑度を基に開発規模を見積もる手法である。プログラム言語や実装技術に依存せず，ユーザー視点で規模を測定できる。ソースコード行数（LOC）ベースの見積りとは異なるアプローチ。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'システムの機能数と複雑度を基に開発規模を見積もる', NULL, true),
  (currval('questions_id_seq'), 'ソースコードの行数から開発工数を見積もる', NULL, false),
  (currval('questions_id_seq'), '類似プロジェクトの実績を参考に見積もる', NULL, false),
  (currval('questions_id_seq'), '専門家の経験と勘に基づいて見積もる', NULL, false);

-- Q171: ステークホルダー管理
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 171, 'choice', 1, 1,
  'プロジェクトマネジメントにおけるステークホルダーの説明として最も適切なものはどれか。',
  'ステークホルダーはプロジェクトに関係し，その成果や進行によって影響を受けるまたは与えるすべての人・組織のことである。発注者，エンドユーザー，プロジェクトチームメンバー，経営陣，規制機関などが含まれる。ステークホルダー管理はプロジェクト成功の重要な要素。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'プロジェクトに影響を受けるまたは与えるすべての関係者', NULL, true),
  (currval('questions_id_seq'), 'プロジェクトチームのメンバーのみ', NULL, false),
  (currval('questions_id_seq'), 'システムの直接利用者のみ', NULL, false),
  (currval('questions_id_seq'), 'プロジェクトの予算を管理する責任者のみ', NULL, false);

-- Q172: QCD管理
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 172, 'choice', 1, 1,
  'プロジェクト管理における「QCD」が表すものとして正しいものはどれか。',
  'QCDはプロジェクト（および製品）管理の三大要素を表す略語で，Quality（品質），Cost（コスト），Delivery（納期・スケジュール）の頭文字である。プロジェクトマネジメントではこの3つをバランスよく管理することが重要とされる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '品質・コスト・納期', NULL, true),
  (currval('questions_id_seq'), '品質・能力・設計', NULL, false),
  (currval('questions_id_seq'), '定量・制御・開発', NULL, false),
  (currval('questions_id_seq'), '品質・変更・配備', NULL, false);

-- Q173: デスマーチの意味
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 173, 'choice', 1, 1,
  'ITプロジェクトにおける「デスマーチ」の説明として最も適切なものはどれか。',
  'デスマーチ（Death March）は，非現実的なスケジュールや要件・リソース不足などにより，プロジェクトメンバーが過剰な残業や高ストレス状態を強いられる，失敗が目に見えている状態のプロジェクトを指す。Edward Yourdonが著書で提唱した概念。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '非現実的な計画で過剰労働が生じる失敗プロジェクト', NULL, true),
  (currval('questions_id_seq'), '開発チームが全員退職してしまったプロジェクト', NULL, false),
  (currval('questions_id_seq'), '本番稼働後に重大なバグが発見されたプロジェクト', NULL, false),
  (currval('questions_id_seq'), '予算が底をついてキャンセルされたプロジェクト', NULL, false);

-- Q174: アウトソーシングのメリット
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 174, 'choice', 1, 1,
  'IT業務のアウトソーシングの主なメリットとして最も適切なものはどれか。',
  'アウトソーシングは特定の業務を外部の専門会社に委託することで，コアビジネスへの集中，専門的なスキルの活用，固定費の変動費化，リソース確保の柔軟性向上などのメリットがある。一方でセキュリティリスクや依存度の増大などのデメリットもある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'コアビジネスへの集中と専門性の活用', NULL, true),
  (currval('questions_id_seq'), '情報漏洩リスクの完全排除', NULL, false),
  (currval('questions_id_seq'), '外部への依存度を下げてコントロールを強化できる', NULL, false),
  (currval('questions_id_seq'), 'システムの内製化によるコスト削減', NULL, false);

-- Q175: OJT（オン・ザ・ジョブ・トレーニング）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 175, 'choice', 1, 1,
  'OJT（On the Job Training）の説明として最も適切なものはどれか。',
  'OJTは職場で実際の業務を通じて行う教育・訓練方法である。実務の中でスキルや知識を習得できるため，実践的な能力育成に効果的。Off-JT（Off the Job Training）は業務を離れて研修施設や外部セミナーで行う教育方法。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '実際の業務を通じて職場で行う教育訓練', NULL, true),
  (currval('questions_id_seq'), '業務を離れて研修施設で行う集合教育', NULL, false),
  (currval('questions_id_seq'), 'eラーニングを使った自己学習', NULL, false),
  (currval('questions_id_seq'), '外部の専門家を招いて実施するセミナー', NULL, false);

-- ----------------------------------------
-- ストラテジ・法務（Q176〜Q200）
-- ----------------------------------------

-- Q176: SWOT分析
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 176, 'choice', 1, 1,
  'SWOT分析の4つの要素として正しいものはどれか。',
  'SWOT分析は，Strengths（強み），Weaknesses（弱み），Opportunities（機会），Threats（脅威）の4要素で組織の内部・外部環境を整理する経営分析フレームワーク。内部要因（S・W）と外部要因（O・T）を組み合わせて戦略立案に活用する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '強み・弱み・機会・脅威', NULL, true),
  (currval('questions_id_seq'), '戦略・実行・評価・改善', NULL, false),
  (currval('questions_id_seq'), '製品・価格・流通・販促', NULL, false),
  (currval('questions_id_seq'), '安全・速度・品質・コスト', NULL, false);

-- Q177: BSC（バランスト・スコアカード）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 177, 'choice', 1, 1,
  'BSC（バランスト・スコアカード）の4つの視点として正しいものはどれか。',
  'BSC（Balanced Scorecard）はKaplanとNortonが提唱した戦略的業績管理フレームワークで，財務の視点，顧客の視点，内部ビジネスプロセスの視点，学習と成長の視点の4つで組織のパフォーマンスを多角的に測定・管理する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '財務・顧客・内部プロセス・学習と成長', NULL, true),
  (currval('questions_id_seq'), '強み・弱み・機会・脅威', NULL, false),
  (currval('questions_id_seq'), '製品・価格・流通・販促', NULL, false),
  (currval('questions_id_seq'), 'ヒト・モノ・カネ・情報', NULL, false);

-- Q178: CRMの説明
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 178, 'choice', 1, 1,
  'CRM（Customer Relationship Management）の説明として最も適切なものはどれか。',
  'CRMは顧客情報を一元管理し，顧客との関係性を改善・強化することで顧客満足度向上や売上拡大を実現する経営手法およびシステムである。営業活動，マーケティング，カスタマーサポートなどを統合的に管理する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '顧客情報を管理して顧客との関係を強化する手法', NULL, true),
  (currval('questions_id_seq'), '企業の資源（ヒト・モノ・カネ）を統合管理するシステム', NULL, false),
  (currval('questions_id_seq'), '供給チェーン全体を最適化する管理手法', NULL, false),
  (currval('questions_id_seq'), '知識を組織内で共有・活用する管理手法', NULL, false);

-- Q179: ERPの説明
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 179, 'choice', 1, 1,
  'ERP（Enterprise Resource Planning）の説明として最も適切なものはどれか。',
  'ERPは企業の基幹業務（財務・人事・生産・在庫・販売など）を統合した情報システムである。従来はシステムが部門ごとに分散していたが，ERPは一元的なデータ管理でリアルタイム情報共有や業務効率化を実現する。SAP，Oracle ERPなどが代表的な製品。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '企業の基幹業務を統合的に管理する情報システム', NULL, true),
  (currval('questions_id_seq'), '顧客との関係を管理するシステム', NULL, false),
  (currval('questions_id_seq'), '供給チェーンを管理するシステム', NULL, false),
  (currval('questions_id_seq'), '製造工程を管理するシステム', NULL, false);

-- Q180: SCMの説明
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 180, 'choice', 1, 1,
  'SCM（Supply Chain Management）の説明として最も適切なものはどれか。',
  'SCMは原材料調達から製造・流通・販売・顧客への配送までの供給チェーン全体を可視化・最適化する管理手法である。在庫削減，リードタイム短縮，コスト削減などを実現する。情報技術を活用してサプライヤーと連携する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '原材料から顧客までの供給チェーン全体を最適化する手法', NULL, true),
  (currval('questions_id_seq'), '顧客情報を一元管理して関係を強化する手法', NULL, false),
  (currval('questions_id_seq'), '企業の基幹業務を統合管理するシステム', NULL, false),
  (currval('questions_id_seq'), '知識を組織内で蓄積・共有する手法', NULL, false);

-- Q181: 著作権法における保護対象
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 181, 'choice', 1, 1,
  '著作権法の保護対象として最も適切なものはどれか。',
  '著作権法は思想・感情を創作的に表現したものを保護する。プログラム（ソースコード）は著作権で保護される著作物である。一方，アルゴリズムや技術的アイデア自体は著作権の保護対象外（特許法の対象になりうる）。データベースも一定条件のもとで著作権保護を受ける。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'プログラム（ソースコード）', NULL, true),
  (currval('questions_id_seq'), 'アルゴリズムのアイデア自体', NULL, false),
  (currval('questions_id_seq'), 'プログラミング言語の文法', NULL, false),
  (currval('questions_id_seq'), 'プログラムの機能・効果', NULL, false);

-- Q182: 個人情報保護法の定義
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 182, 'choice', 1, 1,
  '個人情報保護法において「個人情報」として定義されるものはどれか。',
  '個人情報とは生存する個人に関する情報であって，氏名，生年月日，住所，顔画像など，特定の個人を識別できる情報を指す。マイナンバー，パスポート番号なども「個人識別符号」として個人情報に該当する。氏名のみでも特定個人を識別できれば個人情報に該当する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '特定の個人を識別できる情報', NULL, true),
  (currval('questions_id_seq'), '秘密にしなければならないすべての情報', NULL, false),
  (currval('questions_id_seq'), '企業が保有するすべての顧客データ', NULL, false),
  (currval('questions_id_seq'), '他人に知られると損害が生じる情報', NULL, false);

-- Q183: 不正競争防止法の営業秘密
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 183, 'choice', 1, 1,
  '不正競争防止法における「営業秘密」の要件として正しいものはどれか。',
  '営業秘密として保護されるためには，①秘密管理性（秘密として管理されていること），②有用性（事業活動に有用な情報であること），③非公知性（公然と知られていないこと），の3要件をすべて満たす必要がある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '秘密管理性・有用性・非公知性の3要件を満たすもの', NULL, true),
  (currval('questions_id_seq'), '特許登録された技術情報', NULL, false),
  (currval('questions_id_seq'), '役員会議で決定されたすべての情報', NULL, false),
  (currval('questions_id_seq'), '著作権で保護されたプログラム', NULL, false);

-- Q184: 特許権と著作権の違い
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 184, 'choice', 1, 1,
  '特許権と著作権の違いとして最も適切なものはどれか。',
  '特許権は技術的なアイデア（発明）を保護し，出願・審査・登録が必要で，保護期間は出願から原則20年。著作権は思想・感情の表現を保護し，創作と同時に自動的に発生（登録不要），保護期間は著作者の死後70年。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '特許権は登録が必要だが著作権は創作時に自動発生する', NULL, true),
  (currval('questions_id_seq'), '特許権は表現を保護し著作権はアイデアを保護する', NULL, false),
  (currval('questions_id_seq'), '特許権の保護期間は著作者の死後70年である', NULL, false),
  (currval('questions_id_seq'), '著作権は特許庁への登録が必要である', NULL, false);

-- Q185: 労働者派遣法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 185, 'choice', 1, 1,
  '労働者派遣と請負の違いとして最も適切なものはどれか。',
  '労働者派遣では，派遣先企業が派遣労働者に直接指揮命令を行う。請負（委託）では，受注者が自社の労働者を自己の指揮命令下で作業させ，発注者は直接指揮命令できない（偽装請負は違法）。IT業界では準委任契約も多用される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '派遣は派遣先が指揮命令し，請負は受注者が自社で管理する', NULL, true),
  (currval('questions_id_seq'), '派遣は請負より法的規制が少ない', NULL, false),
  (currval('questions_id_seq'), '請負では発注者が直接作業者に指示できる', NULL, false),
  (currval('questions_id_seq'), '派遣と請負の法的責任は同一である', NULL, false);

-- Q186: グリーンIT
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 186, 'choice', 1, 1,
  'グリーンITの説明として最も適切なものはどれか。',
  'グリーンITとはIT機器・システムの省エネ化（Green of IT）や，ITを活用して他分野のCO2排出削減・環境問題の解決（Green by IT）を目指す取り組みの総称である。データセンターの電力効率化（PUE改善），クラウド活用，仮想化技術などがその例。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'IT機器の省エネ化やITによる環境問題解決への取り組み', NULL, true),
  (currval('questions_id_seq'), '自然エネルギーのみで動作するITシステムの開発', NULL, false),
  (currval('questions_id_seq'), '農業分野に特化したITシステムの総称', NULL, false),
  (currval('questions_id_seq'), 'ソフトウェアのバグを環境に例えて説明する概念', NULL, false);

-- Q187: デジタルトランスフォーメーション（DX）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 187, 'choice', 1, 1,
  'DX（デジタルトランスフォーメーション）の説明として最も適切なものはどれか。',
  'DXはデジタル技術を活用してビジネスモデルや業務プロセス，組織文化を変革し，競争上の優位性を確立する取り組みである。単なるIT化（業務の電子化）とは異なり，デジタル技術による事業モデルの根本的変革を指す。経済産業省も推進する重要な経営課題。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'デジタル技術でビジネスモデルや組織を根本から変革する取り組み', NULL, true),
  (currval('questions_id_seq'), '紙の書類をデジタルデータに変換する作業', NULL, false),
  (currval('questions_id_seq'), '社員全員にデジタルスキルを習得させる教育プログラム', NULL, false),
  (currval('questions_id_seq'), 'システムをクラウドに移行するプロジェクト', NULL, false);

-- Q188: IoTの説明
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 188, 'choice', 1, 1,
  'IoT（Internet of Things）の説明として最も適切なものはどれか。',
  'IoTは様々なモノ（センサ，家電，機械，車など）をインターネットに接続し，データを収集・活用する仕組みである。センサから得たデータをクラウドで分析して製造業の予防保全，スマートホーム，スマートシティなどに活用される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '様々なモノをインターネットに接続してデータを活用する仕組み', NULL, true),
  (currval('questions_id_seq'), 'インターネットを通じてソフトウェアをサービスとして提供する', NULL, false),
  (currval('questions_id_seq'), 'AI技術を使って人間と対話するシステム', NULL, false),
  (currval('questions_id_seq'), '人間の知能をコンピュータで再現する技術', NULL, false);

-- Q189: AIの機械学習
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 189, 'choice', 1, 1,
  '機械学習の説明として最も適切なものはどれか。',
  '機械学習はデータからアルゴリズムがパターンやルールを自動的に学習する人工知能の手法である。人間が明示的にルールを書かなくても，大量のデータを与えることでモデルが予測・判断できるようになる。教師あり学習，教師なし学習，強化学習などの種類がある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'データから自動的にパターンやルールを学習するAI手法', NULL, true),
  (currval('questions_id_seq'), '人間が記述したルールに従って動作するプログラム', NULL, false),
  (currval('questions_id_seq'), 'コンピュータが自然言語で人間と対話する技術', NULL, false),
  (currval('questions_id_seq'), 'センサデータをリアルタイムで処理する技術', NULL, false);

-- Q190: クラウドコンピューティングのサービスモデル（IaaS）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 190, 'choice', 1, 1,
  'クラウドサービスのIaaS（Infrastructure as a Service）の説明として最も適切なものはどれか。',
  'IaaSはサーバ，ストレージ，ネットワークなどのITインフラをインターネット経由でサービスとして提供するクラウドモデルである。利用者はOSやミドルウェア，アプリケーションを自由に選んで構築できる。AWS EC2，Azure VMなどが代表例。PaaSはプラットフォーム，SaaSはソフトウェアを提供する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'サーバやネットワークなどのITインフラをサービスとして提供する', NULL, true),
  (currval('questions_id_seq'), 'OSやミドルウェアを含む開発環境をサービスとして提供する', NULL, false),
  (currval('questions_id_seq'), 'アプリケーションをインターネット経由で提供する', NULL, false),
  (currval('questions_id_seq'), 'セキュリティ管理をサービスとして提供する', NULL, false);

-- Q191: フィンテック（FinTech）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 191, 'choice', 1, 1,
  'フィンテック（FinTech）の説明として最も適切なものはどれか。',
  'FinTechはFinance（金融）とTechnology（技術）を組み合わせた造語で，ITを活用した新しい金融サービスや技術の総称である。モバイル決済，クラウドファンディング，ロボアドバイザー，仮想通貨・ブロックチェーンなどがFinTechの具体例。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'IT技術を活用した新しい金融サービスや技術の総称', NULL, true),
  (currval('questions_id_seq'), '金融機関向けのセキュリティ規格', NULL, false),
  (currval('questions_id_seq'), '金融データを分析するビジネスインテリジェンス', NULL, false),
  (currval('questions_id_seq'), '金融業界のシステム開発を担うIT企業', NULL, false);

-- Q192: ビッグデータの特徴（3V）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 192, 'choice', 1, 1,
  'ビッグデータの特徴を表す「3V」として正しいものはどれか。',
  'ビッグデータの特徴は3Vで表される。Volume（量：大量のデータ），Variety（多様性：構造化・非構造化など様々な形式），Velocity（速度：リアルタイムで生成・更新されるデータ）の3つである。これらにVeracity（正確性）を加えて4Vとする場合もある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'Volume（量）・Variety（多様性）・Velocity（速度）', NULL, true),
  (currval('questions_id_seq'), '量・質・速度', NULL, false),
  (currval('questions_id_seq'), '可視性・検証性・価値', NULL, false),
  (currval('questions_id_seq'), '容量・版・可変性', NULL, false);

-- Q193: e-ラーニングのメリット
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 193, 'choice', 1, 1,
  'e-ラーニングの主なメリットとして最も適切なものはどれか。',
  'e-ラーニングはインターネットやコンピュータを活用した学習形式で，時間や場所を選ばずに学習できる柔軟性が最大のメリットである。一方，学習者の自己管理が必要で，モチベーション維持が課題となることが多い。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '時間・場所を問わず自分のペースで学習できる', NULL, true),
  (currval('questions_id_seq'), '講師との双方向コミュニケーションが容易', NULL, false),
  (currval('questions_id_seq'), 'グループワークや演習が充実している', NULL, false),
  (currval('questions_id_seq'), 'インターネット接続が不要で場所を選ばない', NULL, false);

-- Q194: SDGs（持続可能な開発目標）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 194, 'choice', 1, 1,
  'SDGs（持続可能な開発目標）の説明として最も適切なものはどれか。',
  'SDGsは2015年の国連サミットで採択された2030年までの国際目標で，「誰一人取り残さない」を基本理念に17のゴールと169のターゲットで構成される。貧困の撲滅，気候変動への対応，ジェンダー平等など持続可能な世界を実現するための目標。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '2030年を目標とした17の国際的な持続可能な開発目標', NULL, true),
  (currval('questions_id_seq'), 'IT企業が策定した情報技術の標準化目標', NULL, false),
  (currval('questions_id_seq'), '各国政府が独自に設定する国家発展目標', NULL, false),
  (currval('questions_id_seq'), 'ISO（国際標準化機構）が定めた環境規格', NULL, false);

-- Q195: コーポレートガバナンスの説明
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 195, 'choice', 1, 1,
  'コーポレートガバナンス（企業統治）の説明として最も適切なものはどれか。',
  'コーポレートガバナンスとは，株主・経営者・従業員・取引先・社会などのステークホルダーに対して，企業が適正に経営されるよう内部統制・透明性・説明責任を確保する仕組みである。経営の健全性・効率性・透明性を高めることを目的とする。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '企業が適正に経営されるよう内部統制・透明性を確保する仕組み', NULL, true),
  (currval('questions_id_seq'), '企業が策定するCSR（社会的責任）活動の計画', NULL, false),
  (currval('questions_id_seq'), '役員報酬の決定プロセスを定めた規則', NULL, false),
  (currval('questions_id_seq'), '企業がM&Aを行う際の手続きと基準', NULL, false);

-- Q196: プラットフォームビジネス
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 196, 'choice', 1, 1,
  'プラットフォームビジネスの説明として最も適切なものはどれか。',
  'プラットフォームビジネスは複数の利用者グループをつなぐ基盤（プラットフォーム）を提供するビジネスモデルである。利用者が増えるほどネットワーク効果で価値が高まる特性がある。Amazonマーケットプレイス，Uber，Airbnbなどが代表例。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '複数の利用者グループをつなぐ基盤を提供するビジネスモデル', NULL, true),
  (currval('questions_id_seq'), 'クラウド上でソフトウェアを提供するビジネスモデル', NULL, false),
  (currval('questions_id_seq'), '自社製品をサブスクリプションで販売するビジネスモデル', NULL, false),
  (currval('questions_id_seq'), 'フリーミアムで無料ユーザーを有料に転換するビジネスモデル', NULL, false);

-- Q197: BPR（ビジネスプロセス・リエンジニアリング）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 197, 'choice', 1, 1,
  'BPR（Business Process Reengineering）の説明として最も適切なものはどれか。',
  'BPRはビジネスプロセスを根本から再設計・再構築することで，コスト・品質・スピード・サービスなどを劇的に改善する経営手法である。マイケル・ハマーとジェームズ・チャンピーが提唱。既存の業務の改善（カイゼン）ではなく，ゼロベースでの再設計が特徴。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ビジネスプロセスを根本から再設計して劇的に改善する手法', NULL, true),
  (currval('questions_id_seq'), '既存の業務を少しずつ改善する継続的改善活動', NULL, false),
  (currval('questions_id_seq'), 'ビジネス上のリスクを分析・評価する手法', NULL, false),
  (currval('questions_id_seq'), '業績評価指標を設定して管理するフレームワーク', NULL, false);

-- Q198: PPM（プロダクト・ポートフォリオ・マネジメント）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 198, 'choice', 1, 1,
  'PPM（プロダクト・ポートフォリオ・マネジメント）のマトリクスにおいて，「市場成長率が高く，市場占有率が低い」ポジションを何というか。',
  'PPMはBCGが提唱した事業ポートフォリオ分析で，市場成長率と市場占有率を軸に4象限に分類する。「花形（Star）」：高成長・高シェア，「金のなる木（Cash Cow）」：低成長・高シェア，「問題児（Problem Child）」：高成長・低シェア，「負け犬（Dog）」：低成長・低シェアと呼ばれる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '問題児（Problem Child）', NULL, true),
  (currval('questions_id_seq'), '花形（Star）', NULL, false),
  (currval('questions_id_seq'), '金のなる木（Cash Cow）', NULL, false),
  (currval('questions_id_seq'), '負け犬（Dog）', NULL, false);

-- Q199: コンプライアンスの説明
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 199, 'choice', 1, 1,
  'コンプライアンス（法令遵守）の説明として最も適切なものはどれか。',
  'コンプライアンスとは企業や組織が法令，規則，規制，社会的規範などを遵守して事業活動を行うことである。法令違反だけでなく，倫理的・社会的な規範への対応も含まれる。コンプライアンス違反は法的制裁や社会的信用の失墜につながる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '法令や社会的規範を遵守して事業活動を行うこと', NULL, true),
  (currval('questions_id_seq'), '企業の社会的責任活動（CSR）を推進すること', NULL, false),
  (currval('questions_id_seq'), '企業の情報資産を適切に管理すること', NULL, false),
  (currval('questions_id_seq'), '経営目標を達成するための内部統制を整備すること', NULL, false);

-- Q200: PDCAサイクル
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 200, 'choice', 1, 1,
  'PDCAサイクルにおいてActの次に来るフェーズはどれか。',
  'PDCAサイクルはPlan（計画）→Do（実行）→Check（評価・確認）→Act（改善）の4段階を繰り返すことで継続的改善を実現するフレームワークである。Actで得た改善策を次のPlan（計画）に反映させてサイクルを継続する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'Plan（計画）', NULL, true),
  (currval('questions_id_seq'), 'Do（実行）', NULL, false),
  (currval('questions_id_seq'), 'Check（評価）', NULL, false),
  (currval('questions_id_seq'), '新しいActの実施', NULL, false);
-- ----------------------------------------
-- 科目A（section_id=1）Q201〜Q250
-- ----------------------------------------

-- ----------------------------------------
-- コンピュータアーキテクチャ・ハードウェア（Q201〜Q215）
-- ----------------------------------------

-- Q201: CPUのパイプライン処理
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 201, 'choice', 1, 1,
  'CPUのパイプライン処理の説明として最も適切なものはどれか。',
  'パイプライン処理とは，命令の実行を複数のステージ（フェッチ・デコード・実行・書き戻しなど）に分割し，各ステージを並列に重ねて実行することで処理速度を向上させる技術である。水の流れになぞらえてパイプラインと呼ばれる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '命令の実行を複数のステージに分割して並列処理する技術', NULL, true),
  (currval('questions_id_seq'), '複数のCPUコアで同時に異なる処理を実行する技術', NULL, false),
  (currval('questions_id_seq'), 'CPUの動作クロック周波数を動的に変更する技術', NULL, false),
  (currval('questions_id_seq'), 'キャッシュメモリを階層化して高速化する技術', NULL, false);

-- Q202: キャッシュメモリの役割
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 202, 'choice', 1, 1,
  'キャッシュメモリを設置する主な目的はどれか。',
  'キャッシュメモリはCPUと主記憶装置の速度差を埋めるために設置される高速な記憶装置である。CPUが頻繁にアクセスするデータや命令を一時的に蓄えることで，主記憶装置へのアクセス回数を減らし，処理速度を向上させる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'CPUと主記憶装置の速度差を補い処理速度を向上させる', NULL, true),
  (currval('questions_id_seq'), '大量のデータを長期間保存する', NULL, false),
  (currval('questions_id_seq'), 'プログラムを永続的に記憶する', NULL, false),
  (currval('questions_id_seq'), '電源が切れてもデータを保持する', NULL, false);

-- Q203: DRAMとSRAMの違い
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 203, 'choice', 1, 1,
  'SRAMとDRAMの比較として最も適切なものはどれか。',
  'SRAMはフリップフロップ回路で構成され，リフレッシュ不要で高速だがコストが高い。キャッシュメモリに使われる。DRAMはコンデンサで構成され，リフレッシュが必要で低速だが大容量で安価。主記憶装置（メインメモリ）に使われる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'SRAMはリフレッシュ不要で高速，DRAMはリフレッシュが必要で低速', NULL, true),
  (currval('questions_id_seq'), 'SRAMはリフレッシュが必要で低速，DRAMはリフレッシュ不要で高速', NULL, false),
  (currval('questions_id_seq'), 'SRAMもDRAMもリフレッシュが不要である', NULL, false),
  (currval('questions_id_seq'), 'SRAMは主記憶装置，DRAMはキャッシュメモリに使われる', NULL, false);

-- Q204: RAIDの種類（RAID1）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 204, 'choice', 1, 1,
  'RAID1（ミラーリング）の説明として最も適切なものはどれか。',
  'RAID1はミラーリングとも呼ばれ，同じデータを2台以上のドライブに同時に書き込む方式である。1台が故障しても他のドライブからデータを読み出せるため冗長性が高い。ただし記憶容量の実効値はドライブ1台分しか使えない。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '同じデータを複数のドライブに同時書き込みして冗長性を確保する', NULL, true),
  (currval('questions_id_seq'), 'データを複数のドライブに分散して書き込み速度を向上させる', NULL, false),
  (currval('questions_id_seq'), 'パリティ情報を使って1台の故障から復旧できる', NULL, false),
  (currval('questions_id_seq'), '読み書き速度と冗長性を両立するためデータとパリティを分散する', NULL, false);

-- Q205: RAIDの種類（RAID5）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 205, 'choice', 1, 1,
  'RAID5の特徴として最も適切なものはどれか。',
  'RAID5はデータとパリティ（誤り訂正情報）を複数のドライブに分散して記録する方式である。3台以上のドライブが必要で，1台が故障してもパリティから復元できる。RAID1と比べて容量の使用効率が良い。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'データとパリティを複数ドライブに分散し1台故障まで復旧可能', NULL, true),
  (currval('questions_id_seq'), 'データを2台のドライブにミラーリングする', NULL, false),
  (currval('questions_id_seq'), '複数ドライブにデータを分散するだけで冗長性はない', NULL, false),
  (currval('questions_id_seq'), '2台故障まで復旧できる二重パリティ方式', NULL, false);

-- Q206: 補数表現（2の補数）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 206, 'choice', 1, 1,
  '8ビットの2の補数表現で−1を表したものはどれか。',
  '2の補数は元の数のビットを全反転（1の補数）して1を加えた値。−1の場合，+1は00000001，ビット全反転で11111110，+1して11111111となる。8ビットの2の補数表現では11111111が−1を表す。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '11111111', NULL, true),
  (currval('questions_id_seq'), '10000001', NULL, false),
  (currval('questions_id_seq'), '10000000', NULL, false),
  (currval('questions_id_seq'), '01111111', NULL, false);

-- Q207: 浮動小数点数の特徴
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 207, 'choice', 1, 1,
  'コンピュータの浮動小数点数に関する説明として最も適切なものはどれか。',
  '浮動小数点数は符号部・指数部・仮数部で構成され，広い範囲の実数を表現できる。しかし有効桁数に限りがあるため，演算結果に丸め誤差が生じることがある。例えば0.1+0.2≠0.3になる現象がこれに当たる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '有効桁数の制限により丸め誤差が生じることがある', NULL, true),
  (currval('questions_id_seq'), '整数と同様に完全に正確な演算ができる', NULL, false),
  (currval('questions_id_seq'), '固定小数点数より常に精度が高い', NULL, false),
  (currval('questions_id_seq'), '2進数では小数を表現できない', NULL, false);

-- Q208: CPUのクロック周波数
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 208, 'choice', 1, 1,
  'CPUのクロック周波数の説明として最も適切なものはどれか。',
  'クロック周波数はCPUが1秒間に処理できるクロック（信号の周期）の数を表す単位で，Hz（ヘルツ）で表す。一般に周波数が高いほどCPUの処理速度は速くなるが，発熱も増える。現在は数GHz（ギガヘルツ）が一般的。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'CPUが1秒間に処理するクロック数を表す', NULL, true),
  (currval('questions_id_seq'), 'CPUが同時に実行できる命令の数を表す', NULL, false),
  (currval('questions_id_seq'), 'CPUが扱える最大メモリ量を表す', NULL, false),
  (currval('questions_id_seq'), 'CPUのキャッシュメモリの容量を表す', NULL, false);

-- Q209: 割り込み処理
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 209, 'choice', 1, 1,
  'CPUの割り込み処理の説明として最も適切なものはどれか。',
  '割り込みとは，実行中のプログラムを一時中断し，割り込み要因に対応した処理（割り込みハンドラ）を実行する仕組みである。I/Oデバイスからの入力，タイマ，プログラム例外などが割り込み要因となる。割り込み後は元のプログラムに復帰する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '実行中のプログラムを一時中断して別の処理を行い復帰する仕組み', NULL, true),
  (currval('questions_id_seq'), '複数のプロセスを交互に切り替えて並行実行する仕組み', NULL, false),
  (currval('questions_id_seq'), 'プログラムをCPUのキャッシュに先読みする仕組み', NULL, false),
  (currval('questions_id_seq'), 'CPU内のレジスタを高速に切り替える仕組み', NULL, false);

-- Q210: DMA（直接メモリアクセス）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 210, 'choice', 1, 1,
  'DMA（Direct Memory Access）の説明として最も適切なものはどれか。',
  'DMAはI/Oデバイスと主記憶装置の間でCPUを介さずにデータを転送する仕組みである。DMAコントローラが転送を担当するため，CPUは転送完了まで他の処理を実行でき，システム全体の処理効率が向上する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'CPUを介さずにI/Oデバイスと主記憶装置間でデータを転送する', NULL, true),
  (currval('questions_id_seq'), 'CPUがI/Oデバイスを直接制御してデータを転送する', NULL, false),
  (currval('questions_id_seq'), '主記憶装置のデータをキャッシュに先読みする', NULL, false),
  (currval('questions_id_seq'), '複数のCPUが同一メモリを共有する仕組み', NULL, false);

-- Q211: 仮想記憶（ページング）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 211, 'choice', 1, 1,
  'ページング方式の仮想記憶の説明として最も適切なものはどれか。',
  'ページング方式は，プログラムやデータを固定長の「ページ」に分割し，必要なページだけを主記憶装置に読み込む仮想記憶の実現方式である。主記憶に存在しないページにアクセスするとページフォルトが発生し，補助記憶からページが読み込まれる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'プログラムを固定長のページに分割し必要なページのみ主記憶に置く', NULL, true),
  (currval('questions_id_seq'), 'プログラムを可変長のセグメントに分割して管理する', NULL, false),
  (currval('questions_id_seq'), '主記憶全体を1つのプログラムが独占使用する', NULL, false),
  (currval('questions_id_seq'), 'キャッシュメモリを仮想的に拡張する仕組み', NULL, false);

-- Q212: スループットとレイテンシ
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 212, 'choice', 1, 1,
  'スループットの説明として最も適切なものはどれか。',
  'スループットとは単位時間あたりに処理できるデータ量や処理件数を表す指標である。レイテンシ（遅延時間）は1つの処理が完了するまでの時間を表す。ネットワークでは帯域幅（スループット）と遅延（レイテンシ）の両方がパフォーマンスの重要な指標となる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '単位時間あたりに処理できるデータ量や件数', NULL, true),
  (currval('questions_id_seq'), '1つの処理が完了するまでにかかる時間', NULL, false),
  (currval('questions_id_seq'), 'CPUの稼働率の割合', NULL, false),
  (currval('questions_id_seq'), 'システムが連続して稼働できる平均時間', NULL, false);

-- Q213: 磁気ディスクのアクセス時間
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 213, 'choice', 1, 1,
  '磁気ディスクのアクセス時間の構成要素として正しいものはどれか。',
  '磁気ディスクのアクセス時間は，シーク時間（ヘッドを目的のトラックに移動する時間）＋回転待ち時間（目的のセクタが来るまで待つ時間）＋データ転送時間（データを読み書きする時間）の合計で表される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'シーク時間＋回転待ち時間＋データ転送時間', NULL, true),
  (currval('questions_id_seq'), 'クロック周期×命令数', NULL, false),
  (currval('questions_id_seq'), 'メモリアクセス時間＋バス転送時間', NULL, false),
  (currval('questions_id_seq'), 'キャッシュヒット時間＋ミス時間', NULL, false);

-- Q214: SSDの特徴
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 214, 'choice', 1, 1,
  'SSD（Solid State Drive）の特徴として最も適切なものはどれか。',
  'SSDはNAND型フラッシュメモリを記録媒体とする補助記憶装置である。HDDと比べて，①機械的駆動部品がないため衝撃に強い，②シーク時間・回転待ち時間がなくアクセスが高速，③消費電力が少ない，という特徴がある。書き換え回数に上限がある点はデメリット。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '機械的部品がなく衝撃に強くアクセスが高速', NULL, true),
  (currval('questions_id_seq'), '磁気ディスクを使用するためデータが消えにくい', NULL, false),
  (currval('questions_id_seq'), 'HDDより大容量で安価', NULL, false),
  (currval('questions_id_seq'), '書き換え回数に制限がなく長寿命', NULL, false);

-- Q215: バスの役割
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 215, 'choice', 1, 1,
  'コンピュータのバス（bus）の役割として最も適切なものはどれか。',
  'バスはCPU・主記憶装置・I/Oデバイスなどのコンピュータ構成要素間でデータやアドレス，制御信号をやり取りするための共有通信路である。データバス，アドレスバス，制御バスの3種類がある。バス幅（ビット数）が広いほど一度に転送できるデータ量が増える。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'コンピュータ構成要素間でデータや信号を転送する共有通信路', NULL, true),
  (currval('questions_id_seq'), 'CPUの演算を行う回路', NULL, false),
  (currval('questions_id_seq'), 'プログラムを記憶する装置', NULL, false),
  (currval('questions_id_seq'), 'ネットワークへの接続インタフェース', NULL, false);

-- ----------------------------------------
-- データベース応用（Q216〜Q230）
-- ----------------------------------------

-- Q216: SQL JOIN の種類
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 216, 'choice', 1, 1,
  'SQLのINNER JOINの説明として最も適切なものはどれか。',
  'INNER JOINは2つのテーブルを結合する際，両方のテーブルに一致するレコードのみを返す。LEFT JOINは左テーブルのすべてのレコードと右テーブルの一致するレコードを返す（右テーブルに一致しない場合はNULL）。RIGHT JOINはその逆。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '両方のテーブルに一致するレコードのみを返す', NULL, true),
  (currval('questions_id_seq'), '左テーブルのすべてのレコードを返す', NULL, false),
  (currval('questions_id_seq'), '両テーブルのすべてのレコードを返す', NULL, false),
  (currval('questions_id_seq'), '右テーブルのすべてのレコードを返す', NULL, false);

-- Q217: 第1正規形
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 217, 'choice', 1, 1,
  'データベースの第1正規形の条件として最も適切なものはどれか。',
  '第1正規形（1NF）はリレーショナルデータベースの正規化の第1段階で，「すべての属性が原子値（分割不可能な単一の値）である」という条件を満たすことが必要。繰り返し項目や複数値を持つ列を排除する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'すべての属性が原子値（分割不可能な単一値）であること', NULL, true),
  (currval('questions_id_seq'), '主キーに対して非キー属性が完全関数従属であること', NULL, false),
  (currval('questions_id_seq'), '推移的関数従属が存在しないこと', NULL, false),
  (currval('questions_id_seq'), '多値従属性が存在しないこと', NULL, false);

-- Q218: トランザクションのACID特性
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 218, 'choice', 1, 1,
  'トランザクションのACID特性における「原子性（Atomicity）」の説明として最も適切なものはどれか。',
  'ACID特性：A（原子性）はトランザクション内の操作がすべて完了するかすべて未実施かのどちらかになること（部分的な実行は許されない），C（一貫性）はトランザクション前後でデータの整合性が保たれること，I（独立性）は複数トランザクションが互いに干渉しないこと，D（永続性）はコミット後のデータが失われないこと。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'トランザクションの操作がすべて完了するかすべて未実施かのどちらか', NULL, true),
  (currval('questions_id_seq'), 'トランザクション前後でデータの整合性が保たれること', NULL, false),
  (currval('questions_id_seq'), '複数のトランザクションが互いに干渉しないこと', NULL, false),
  (currval('questions_id_seq'), 'コミット後のデータが永続的に保存されること', NULL, false);

-- Q219: デッドロック
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 219, 'choice', 1, 1,
  'データベースのデッドロックの説明として最も適切なものはどれか。',
  'デッドロックとは，複数のトランザクションが互いに相手が保持するリソースのロック解放を待ち続け，どちらも処理を進められなくなる状態である。例えばトランザクションAがリソース1をロックしてリソース2を待ち，トランザクションBがリソース2をロックしてリソース1を待つ場合に発生する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '複数のトランザクションが互いのロック解放を待ち合って停止する状態', NULL, true),
  (currval('questions_id_seq'), 'トランザクションがロールバックされてデータが消える状態', NULL, false),
  (currval('questions_id_seq'), 'データベースの容量が満杯になって書き込めない状態', NULL, false),
  (currval('questions_id_seq'), 'インデックスが壊れてクエリが遅くなる状態', NULL, false);

-- Q220: SQLのGROUP BY
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 220, 'choice', 1, 1,
  'SQLのGROUP BY句の説明として最も適切なものはどれか。',
  'GROUP BY句は指定した列の値ごとにレコードをグループ化し，集計関数（COUNT，SUM，AVG，MAX，MINなど）と組み合わせてグループごとの集計を行うために使う。HAVING句はGROUP BYの結果に条件を指定するために使い，WHERE句はGROUP BY前の行に条件を指定する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '指定した列の値ごとにレコードをグループ化して集計する', NULL, true),
  (currval('questions_id_seq'), 'テーブルを結合するために使う', NULL, false),
  (currval('questions_id_seq'), '検索結果を並び替えるために使う', NULL, false),
  (currval('questions_id_seq'), '重複レコードを排除するために使う', NULL, false);

-- Q221: インデックスの効果
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 221, 'choice', 1, 1,
  'データベースのインデックスを設定する主な目的はどれか。',
  'インデックス（索引）はデータの検索速度を向上させるために設定する。本の索引と同様，インデックスがあることで全データを走査せずに目的データを素早く見つけられる。ただし，インデックスの維持にストレージが必要で，INSERT/UPDATE/DELETEの速度は若干低下する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'データの検索速度を向上させる', NULL, true),
  (currval('questions_id_seq'), 'データの更新速度を向上させる', NULL, false),
  (currval('questions_id_seq'), 'データの重複を防止する', NULL, false),
  (currval('questions_id_seq'), 'データの暗号化を行う', NULL, false);

-- Q222: ビュー（VIEW）の説明
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 222, 'choice', 1, 1,
  'データベースのビュー（VIEW）の説明として最も適切なものはどれか。',
  'ビューは1つ以上のテーブルへのSELECT文を定義した仮想テーブルである。実データを持たずに定義のみを保存する。アクセス制御（特定の列や行のみ見せる），複雑なクエリの簡略化，データの独立性確保などに活用される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'SELECT文を定義した仮想テーブルで実データは持たない', NULL, true),
  (currval('questions_id_seq'), 'データをバックアップするための複製テーブル', NULL, false),
  (currval('questions_id_seq'), '実データを格納する通常のテーブル', NULL, false),
  (currval('questions_id_seq'), 'テーブル間の外部キー制約を定義するもの', NULL, false);

-- Q223: ストアドプロシージャ
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 223, 'choice', 1, 1,
  'ストアドプロシージャの説明として最も適切なものはどれか。',
  'ストアドプロシージャはデータベースサーバー内に保存されたSQL文や制御構文（IF，LOOPなど）をまとめた手続きである。クライアントからプロシージャ名を呼び出すだけで実行でき，ネットワーク通信の削減，処理の再利用，セキュリティ向上などのメリットがある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'データベースサーバー内に保存されたSQL手続き', NULL, true),
  (currval('questions_id_seq'), 'クライアント側に保存されたSQL文のテンプレート', NULL, false),
  (currval('questions_id_seq'), 'データベースのバックアップを取る手順', NULL, false),
  (currval('questions_id_seq'), 'テーブル間の整合性を保つトリガー', NULL, false);

-- Q224: E-R図の説明
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 224, 'choice', 1, 1,
  'E-R図（エンティティ-リレーションシップ図）の説明として最も適切なものはどれか。',
  'E-R図はデータベース設計で使われる図で，エンティティ（実体・テーブルに対応）とリレーションシップ（エンティティ間の関連）をグラフィカルに表現する。1対多，多対多などの関係を記号で表し，概念データモデルとして活用される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'エンティティとその関係を図で表すデータベース設計ツール', NULL, true),
  (currval('questions_id_seq'), 'データの流れを矢印で表す設計図', NULL, false),
  (currval('questions_id_seq'), 'クラスとクラス間の継承関係を表す図', NULL, false),
  (currval('questions_id_seq'), 'プログラムの処理フローを表す図', NULL, false);

-- Q225: NULL値の扱い
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 225, 'choice', 1, 1,
  'SQLにおけるNULL値の扱いとして正しいものはどれか。',
  'NULLは「値が存在しない・未知」を表す特殊な状態であり，0や空文字列とは異なる。NULLを含む比較演算はほとんどの場合NULLを返す（例：NULL = NULL はTRUEではなくNULL）。NULLかどうかの判定にはIS NULL / IS NOT NULLを使う。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'NULLの判定にはIS NULL / IS NOT NULLを使う', NULL, true),
  (currval('questions_id_seq'), 'NULL = NULLはTRUEになる', NULL, false),
  (currval('questions_id_seq'), 'NULLは0と同じ値として扱われる', NULL, false),
  (currval('questions_id_seq'), 'NULL + 1は1になる', NULL, false);

-- Q226: データウェアハウス
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 226, 'choice', 1, 1,
  'データウェアハウスの説明として最も適切なものはどれか。',
  'データウェアハウスは，業務システムから収集した大量のデータを分析・意思決定のために整理・統合して蓄積するデータベースである。OLAP（オンライン分析処理）やBI（ビジネスインテリジェンス）ツールと組み合わせてデータ分析に活用される。OLTPのトランザクション処理とは異なる目的で設計される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '分析・意思決定用に業務データを統合して蓄積するデータベース', NULL, true),
  (currval('questions_id_seq'), '日常業務のトランザクション処理に使うデータベース', NULL, false),
  (currval('questions_id_seq'), 'データのバックアップを保管するストレージシステム', NULL, false),
  (currval('questions_id_seq'), 'リアルタイムにデータを処理するストリーミングシステム', NULL, false);

-- Q227: NoSQLデータベース
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 227, 'choice', 1, 1,
  'NoSQLデータベースの特徴として最も適切なものはどれか。',
  'NoSQLはリレーショナルデータベース（RDB）以外のデータベースの総称で，スキーマレス（固定のスキーマが不要），水平スケーリングが容易，大量データや高速アクセスに対応などの特徴がある。キー・バリュー型，ドキュメント型，グラフ型などの種類がある。RDBのACIDよりもBASEという考え方を採用することが多い。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'スキーマレスで水平スケーリングが容易な非RDB型データベース', NULL, true),
  (currval('questions_id_seq'), 'RDBをネットワーク経由で分散管理するデータベース', NULL, false),
  (currval('questions_id_seq'), 'SQL文を使わずグラフィカルに操作するデータベース', NULL, false),
  (currval('questions_id_seq'), 'すべてのデータをメモリ上に保持するデータベース', NULL, false);

-- Q228: SQLのサブクエリ
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 228, 'choice', 1, 1,
  'SQLのサブクエリ（副問い合わせ）の説明として最も適切なものはどれか。',
  'サブクエリはSELECT文の中にネストされた別のSELECT文である。WHERE句，FROM句，SELECT句の中に記述でき，外側のクエリが内側のクエリの結果を使って処理を行う。相関サブクエリでは外側のクエリの列を参照できる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'SELECT文の中にネストされた別のSELECT文', NULL, true),
  (currval('questions_id_seq'), '複数のテーブルを結合するためのJOIN構文', NULL, false),
  (currval('questions_id_seq'), 'データを集計するための集計関数', NULL, false),
  (currval('questions_id_seq'), 'テーブルの定義を変更するDDL文', NULL, false);

-- Q229: 外部キー制約
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 229, 'choice', 1, 1,
  '外部キー制約の説明として最も適切なものはどれか。',
  '外部キー制約は，あるテーブルの列の値が，参照先テーブルの主キーに存在する値のみであることを保証する制約である。参照整合性を維持するために使われ，親テーブルに存在しない値を子テーブルに挿入することや，子テーブルから参照されている親テーブルのレコードを削除することができなくなる（制約による）。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '参照先テーブルの主キーに存在する値のみを許可する制約', NULL, true),
  (currval('questions_id_seq'), '列の値が一意であることを保証する制約', NULL, false),
  (currval('questions_id_seq'), '列の値がNULLでないことを保証する制約', NULL, false),
  (currval('questions_id_seq'), '列の値が特定の範囲内であることを保証する制約', NULL, false);

-- Q230: データマイニング
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 230, 'choice', 1, 1,
  'データマイニングの説明として最も適切なものはどれか。',
  'データマイニングは大量のデータから統計的手法や機械学習を用いて，有用なパターン・相関・知識を発見する技術である。小売業のPOSデータからの購買パターン分析，金融の不正検知，医療診断支援などに活用される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '大量データから統計的手法で有用なパターンや知識を発見する', NULL, true),
  (currval('questions_id_seq'), 'データを複数のサーバーに分散して保存する技術', NULL, false),
  (currval('questions_id_seq'), 'データベースのバックアップを効率的に行う技術', NULL, false),
  (currval('questions_id_seq'), 'データの暗号化と復号を高速に行う技術', NULL, false);

-- ----------------------------------------
-- セキュリティ応用（Q231〜Q245）
-- ----------------------------------------

-- Q231: PKI（公開鍵基盤）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 231, 'choice', 1, 1,
  'PKI（Public Key Infrastructure）の説明として最も適切なものはどれか。',
  'PKIは公開鍵暗号を利用するためのインフラで，認証局（CA）が公開鍵の正当性を証明するデジタル証明書を発行・管理する仕組みである。デジタル証明書により，公開鍵が本人のものであることを第三者機関が保証する。TLS/SSLでのWebサイト認証に広く使われる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '認証局がデジタル証明書を発行して公開鍵の正当性を保証するインフラ', NULL, true),
  (currval('questions_id_seq'), '共通鍵を安全に配送するためのプロトコル', NULL, false),
  (currval('questions_id_seq'), 'ネットワーク上の通信を暗号化するソフトウェア', NULL, false),
  (currval('questions_id_seq'), 'パスワードを安全に管理するシステム', NULL, false);

-- Q232: デジタル署名の目的
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 232, 'choice', 1, 1,
  'デジタル署名が提供するセキュリティ機能として最も適切なものはどれか。',
  'デジタル署名は送信者の秘密鍵でメッセージのハッシュ値を暗号化（署名）し，受信者が送信者の公開鍵で復号・照合することで，①真正性（送信者が本人であること），②完全性（データが改ざんされていないこと），③否認防止（送信した事実を否定できないこと）を実現する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '真正性・完全性・否認防止を提供する', NULL, true),
  (currval('questions_id_seq'), '通信内容の機密性（盗聴防止）を提供する', NULL, false),
  (currval('questions_id_seq'), 'ファイルを高速に暗号化する', NULL, false),
  (currval('questions_id_seq'), 'パスワードを安全にハッシュ化する', NULL, false);

-- Q233: ハッシュ関数の特性
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 233, 'choice', 1, 1,
  '暗号学的ハッシュ関数が満たすべき性質として最も適切なものはどれか。',
  '暗号学的ハッシュ関数は，①一方向性（ハッシュ値から元データを復元できない），②衝突耐性（同じハッシュ値を持つ異なるデータを見つけにくい），③固定長出力，④入力が少し変わると出力が大きく変わる（雪崩効果），という特性を持つ。SHA-256やSHA-3などが現在広く使われる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '一方向性（ハッシュ値から元データを復元できない）', NULL, true),
  (currval('questions_id_seq'), '可逆性（ハッシュ値から元データを復元できる）', NULL, false),
  (currval('questions_id_seq'), '出力長が入力長に比例して変化する', NULL, false),
  (currval('questions_id_seq'), '同じ入力に対して毎回異なる出力を返す', NULL, false);

-- Q234: フィッシング攻撃
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 234, 'choice', 1, 1,
  'フィッシング攻撃の説明として最も適切なものはどれか。',
  'フィッシングは，銀行・ECサイトなどの正規サービスを装った偽のメールやWebサイトで，ユーザーのID・パスワード・クレジットカード番号などの機密情報を騙し取る攻撃手法である。スピアフィッシングは特定の個人・組織を標的にした高度なフィッシング。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '正規サービスを装って機密情報を騙し取る攻撃', NULL, true),
  (currval('questions_id_seq'), 'WebサイトのURLに悪意あるスクリプトを埋め込む攻撃', NULL, false),
  (currval('questions_id_seq'), 'パスワードをすべて試す総当たり攻撃', NULL, false),
  (currval('questions_id_seq'), 'ネットワーク通信を盗み見る攻撃', NULL, false);

-- Q235: 不正アクセス対策（多要素認証）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 235, 'choice', 1, 1,
  '多要素認証（MFA）の説明として最も適切なものはどれか。',
  '多要素認証は，認証の3要素（知識：パスワードなど，所持：スマートフォン・トークンなど，生体：指紋・顔など）のうち2つ以上を組み合わせる認証方式である。パスワード漏洩だけではログインできないため，セキュリティが大幅に向上する。2要素認証（2FA）は多要素認証の一種。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '知識・所持・生体など複数の認証要素を組み合わせる方式', NULL, true),
  (currval('questions_id_seq'), '複数のパスワードを順番に入力する認証方式', NULL, false),
  (currval('questions_id_seq'), '複数のユーザーが同時にログインを試みる認証方式', NULL, false),
  (currval('questions_id_seq'), '1回だけ使える使い捨てパスワードを使う方式', NULL, false);

-- Q236: ゼロデイ攻撃
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 236, 'choice', 1, 1,
  'ゼロデイ攻撃の説明として最も適切なものはどれか。',
  'ゼロデイ攻撃とは，ソフトウェアの脆弱性が発見されてから，ベンダーがセキュリティパッチを提供するまでの間（ゼロデイ：対応0日）に，その脆弱性を悪用する攻撃である。パッチ未提供なため，通常のパッチ適用では防御できない。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'パッチ未提供の脆弱性を発見直後に悪用する攻撃', NULL, true),
  (currval('questions_id_seq'), '毎日繰り返してパスワードを試す攻撃', NULL, false),
  (currval('questions_id_seq'), '0バイトのパケットを送りつけてシステムをダウンさせる攻撃', NULL, false),
  (currval('questions_id_seq'), '初日から継続的に行われる持続的標的型攻撃', NULL, false);

-- Q237: VPN（仮想プライベートネットワーク）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 237, 'choice', 1, 1,
  'VPN（Virtual Private Network）の主な目的はどれか。',
  'VPNはインターネットなどの公共ネットワーク上に暗号化された仮想的な専用線（トンネル）を構築する技術である。リモートワーカーが社内ネットワークに安全に接続したり，拠点間を安価に接続したりするために使われる。暗号化により盗聴・改ざんを防止する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '公共ネットワーク上に暗号化された仮想専用線を構築する', NULL, true),
  (currval('questions_id_seq'), 'ネットワークを物理的に分離して安全性を高める', NULL, false),
  (currval('questions_id_seq'), 'ウイルスをリアルタイムで検知・除去する', NULL, false),
  (currval('questions_id_seq'), '不正なパケットをフィルタリングする', NULL, false);

-- Q238: 情報セキュリティの3要素（CIA）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 238, 'choice', 1, 1,
  '情報セキュリティの3要素「CIA」の組み合わせとして正しいものはどれか。',
  '情報セキュリティの3要素はC（Confidentiality：機密性）＝許可された者だけがアクセスできること，I（Integrity：完全性）＝情報が正確・完全であること，A（Availability：可用性）＝必要な時に利用できること，の3つである。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '機密性・完全性・可用性', NULL, true),
  (currval('questions_id_seq'), '機密性・認証性・否認防止', NULL, false),
  (currval('questions_id_seq'), '暗号化・完全性・冗長性', NULL, false),
  (currval('questions_id_seq'), '機密性・一貫性・アクセス制御', NULL, false);

-- Q239: ランサムウェア
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 239, 'choice', 1, 1,
  'ランサムウェアの説明として最も適切なものはどれか。',
  'ランサムウェアはファイルやシステムを暗号化してアクセス不能にし，復号鍵と引き換えに身代金（ransom）を要求するマルウェアである。感染経路はメールの添付ファイル，悪意あるWebサイト，リモートデスクトップの脆弱性などがある。定期バックアップが有効な対策。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ファイルを暗号化して復号と引き換えに金銭を要求するマルウェア', NULL, true),
  (currval('questions_id_seq'), '感染したコンピュータを遠隔操作するマルウェア', NULL, false),
  (currval('questions_id_seq'), '大量のパケットを送りつけてサービスを妨害するマルウェア', NULL, false),
  (currval('questions_id_seq'), 'ユーザーの操作を記録して盗む間諜ソフトウェア', NULL, false);

-- Q240: SQLインジェクションの対策
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 240, 'choice', 1, 1,
  'SQLインジェクション攻撃の対策として最も効果的なものはどれか。',
  'SQLインジェクション対策として最も有効なのはプレースホルダ（バインド変数）を使ったパラメータ化クエリの使用である。ユーザー入力をSQL文に直接連結せず，パラメータとして渡すことで，入力内容がSQL命令として解釈されなくなる。入力値の検証やエスケープ処理も有効な対策。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'プレースホルダを使ったパラメータ化クエリを使用する', NULL, true),
  (currval('questions_id_seq'), 'データベースへの接続をHTTPSに変更する', NULL, false),
  (currval('questions_id_seq'), 'ファイアウォールを設置してポートをブロックする', NULL, false),
  (currval('questions_id_seq'), 'データベースのパスワードを長くする', NULL, false);

-- Q241: WAF（Webアプリケーションファイアウォール）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 241, 'choice', 1, 1,
  'WAF（Web Application Firewall）の説明として最も適切なものはどれか。',
  'WAFはWebアプリケーションへの攻撃（SQLインジェクション，XSS，CSRFなど）を検知・ブロックするセキュリティ機器・サービスである。通常のファイアウォールがポートやプロトコルレベルでフィルタリングするのに対し，WAFはHTTPリクエスト/レスポンスの内容を解析してアプリケーション層の攻撃を防ぐ。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'Webアプリケーションへの攻撃をHTTPレベルで検知・ブロックする', NULL, true),
  (currval('questions_id_seq'), 'ネットワーク全体のトラフィックを監視するセキュリティ機器', NULL, false),
  (currval('questions_id_seq'), 'ウイルスをリアルタイムに検知・駆除するソフトウェア', NULL, false),
  (currval('questions_id_seq'), 'ポート番号でパケットをフィルタリングするファイアウォール', NULL, false);

-- Q242: セキュリティ監査ログ
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 242, 'choice', 1, 1,
  'セキュリティ監査ログを記録する主な目的はどれか。',
  'セキュリティ監査ログはシステムへのアクセス，操作，イベントの記録であり，①不正アクセスや異常の事後調査，②攻撃の証拠保全（フォレンジック），③コンプライアンス要件の充足，④セキュリティインシデントの早期検知などに活用される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '不正アクセスの調査・証拠保全・異常検知のため', NULL, true),
  (currval('questions_id_seq'), 'システムのパフォーマンスを向上させるため', NULL, false),
  (currval('questions_id_seq'), 'データのバックアップを効率化するため', NULL, false),
  (currval('questions_id_seq'), 'ネットワークの帯域幅を削減するため', NULL, false);

-- Q243: 標的型攻撃（APT）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 243, 'choice', 1, 1,
  '標的型攻撃（APT：Advanced Persistent Threat）の特徴として最も適切なものはどれか。',
  'APTは特定の組織・個人を長期間にわたって執拗に攻撃する高度な持続的脅威である。メール攻撃，脆弱性悪用，侵入後の横展開など複数の手法を組み合わせ，機密情報窃取・妨害工作などを目的とする。国家レベルの攻撃者が行うことも多い。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '特定の組織を長期間・複数手法で執拗に狙う高度な攻撃', NULL, true),
  (currval('questions_id_seq'), '不特定多数に一斉送信するスパムメール攻撃', NULL, false),
  (currval('questions_id_seq'), '大量のリクエストでサービスを停止させる攻撃', NULL, false),
  (currval('questions_id_seq'), '公開されたツールで自動的に行う脆弱性スキャン', NULL, false);

-- Q244: ペネトレーションテスト
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 244, 'choice', 1, 1,
  'ペネトレーションテスト（侵入テスト）の説明として最も適切なものはどれか。',
  'ペネトレーションテストは，実際の攻撃者の手法を模倣してシステムやネットワークへの侵入を試み，セキュリティの弱点（脆弱性）を発見する評価手法である。事前に権限を得た上で実施し，発見した脆弱性の修正・対策に役立てる。脆弱性スキャンより深い評価が可能。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '実際の攻撃を模倣してシステムの脆弱性を発見する評価手法', NULL, true),
  (currval('questions_id_seq'), 'ソースコードを静的に解析して脆弱性を見つける手法', NULL, false),
  (currval('questions_id_seq'), 'セキュリティポリシーの文書を審査する監査手法', NULL, false),
  (currval('questions_id_seq'), 'ファイアウォールの設定を自動的に最適化する手法', NULL, false);

-- Q245: インシデントレスポンス
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 245, 'choice', 1, 1,
  'セキュリティインシデント発生時の対応手順として最も適切なものはどれか。',
  'インシデントレスポンスの基本的な流れは，①検知・識別（インシデントの発見と分類），②封じ込め（被害の拡大防止），③根絶（原因の除去），④復旧（システムの正常化），⑤事後分析（再発防止策の立案），の順で行う。初動で証拠を保全することも重要。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '検知→封じ込め→根絶→復旧→事後分析の順で対応する', NULL, true),
  (currval('questions_id_seq'), '復旧を最優先してからインシデントを調査する', NULL, false),
  (currval('questions_id_seq'), 'まずシステム全体をシャットダウンしてから原因を調べる', NULL, false),
  (currval('questions_id_seq'), 'ベンダーに連絡してから社内対応を開始する', NULL, false);

-- ----------------------------------------
-- アルゴリズム応用（Q246〜Q250）
-- ----------------------------------------

-- Q246: バブルソートの特徴
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 246, 'choice', 1, 1,
  'バブルソートの時間計算量（最悪の場合）として正しいものはどれか。',
  'バブルソートは隣接する要素を比較・交換を繰り返してデータを整列する単純なアルゴリズムである。n個のデータに対してn-1回のパスが必要で，各パスでn-1回の比較を行うため，最悪・平均計算量はO(n²)。ほぼ整列済みのデータに対する最良計算量はO(n)。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(n²)', NULL, true),
  (currval('questions_id_seq'), 'O(n log n)', NULL, false),
  (currval('questions_id_seq'), 'O(n)', NULL, false),
  (currval('questions_id_seq'), 'O(log n)', NULL, false);

-- Q247: クイックソートの特徴
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 247, 'choice', 1, 1,
  'クイックソートの平均時間計算量として正しいものはどれか。',
  'クイックソートはピボットを選んでデータを2分割し，再帰的に整列する分割統治法のアルゴリズムである。平均計算量はO(n log n)で実用的に高速。ただし最悪ケース（ピボットの選択が悪い場合）はO(n²)になる。マージソートは常にO(n log n)だが追加のメモリが必要。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(n log n)', NULL, true),
  (currval('questions_id_seq'), 'O(n²)', NULL, false),
  (currval('questions_id_seq'), 'O(n)', NULL, false),
  (currval('questions_id_seq'), 'O(1)', NULL, false);

-- Q248: 二分探索木
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 248, 'choice', 1, 1,
  '二分探索木（BST）の性質として最も適切なものはどれか。',
  '二分探索木は各ノードについて「左の子孫の値＜ノードの値＜右の子孫の値」という制約を満たす二分木である。探索・挿入・削除が平均O(log n)で行える。ただし偏ったデータでは最悪O(n)になるため，AVL木や赤黒木などの平衡二分木が使われることもある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '左の子孫の値＜ノードの値＜右の子孫の値という制約を持つ木', NULL, true),
  (currval('questions_id_seq'), '全ノードの値が等しい二分木', NULL, false),
  (currval('questions_id_seq'), '葉のみに値を持つ二分木', NULL, false),
  (currval('questions_id_seq'), '高さが常に一定に保たれる完全二分木', NULL, false);

-- Q249: ハッシュテーブルの特徴
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 249, 'choice', 1, 1,
  'ハッシュテーブルの平均的な探索の時間計算量として正しいものはどれか。',
  'ハッシュテーブルはハッシュ関数でキーをインデックスに変換し，配列に格納するデータ構造。衝突がない理想的な場合，探索・挿入・削除の平均計算量はO(1)。衝突（同じインデックスへの複数キーの割り当て）が多いと性能が低下する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(1)', NULL, true),
  (currval('questions_id_seq'), 'O(n)', NULL, false),
  (currval('questions_id_seq'), 'O(log n)', NULL, false),
  (currval('questions_id_seq'), 'O(n²)', NULL, false);

-- Q250: グラフの深さ優先探索（DFS）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 250, 'choice', 1, 1,
  '深さ優先探索（DFS）の説明として最も適切なものはどれか。',
  '深さ優先探索（DFS：Depth First Search）はグラフ・木の探索で，一方向に進める限り深く進み，進めなくなったら戻って別の経路を探索するアルゴリズムである。スタックまたは再帰で実装する。幅優先探索（BFS）はキューを使い，近い節点から順番に探索する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '進める限り深く進み行き詰まったら戻る探索法', NULL, true),
  (currval('questions_id_seq'), '近い節点から順番に広く探索する探索法', NULL, false),
  (currval('questions_id_seq'), 'ランダムに節点を選んで探索する方法', NULL, false),
  (currval('questions_id_seq'), '最小コストの経路を優先して探索する方法', NULL, false);
-- ----------------------------------------
-- 科目A（section_id=1）Q251〜Q300
-- ----------------------------------------

-- ----------------------------------------
-- システム構成・信頼性（Q251〜Q265）
-- ----------------------------------------

-- Q251: システムの可用性（稼働率）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 251, 'choice', 1, 1,
  'システムの稼働率を表す計算式として正しいものはどれか。',
  '稼働率 = MTBF ÷（MTBF + MTTR）。MTBF（Mean Time Between Failures：平均故障間隔）は故障から次の故障までの平均稼働時間，MTTR（Mean Time To Repair：平均修復時間）は故障の修復にかかる平均時間。稼働率が高いほど可用性が高い。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'MTBF ÷（MTBF＋MTTR）', NULL, true),
  (currval('questions_id_seq'), 'MTTR ÷（MTBF＋MTTR）', NULL, false),
  (currval('questions_id_seq'), 'MTBF ÷ MTTR', NULL, false),
  (currval('questions_id_seq'), 'MTTR ÷ MTBF', NULL, false);

-- Q252: 直列接続システムの稼働率
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 252, 'choice', 1, 1,
  'それぞれ稼働率0.9の装置2台を直列接続したシステムの稼働率はどれか。',
  '直列接続（どちらか1台が故障するとシステムが停止）の場合，全体の稼働率は各装置の稼働率の積。0.9×0.9 = 0.81。並列接続（1台が故障しても他が動作）の場合は1−（1−0.9）×（1−0.9）= 1−0.01 = 0.99。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '0.81', NULL, true),
  (currval('questions_id_seq'), '0.99', NULL, false),
  (currval('questions_id_seq'), '0.90', NULL, false),
  (currval('questions_id_seq'), '0.95', NULL, false);

-- Q253: 並列接続システムの稼働率
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 253, 'choice', 1, 1,
  'それぞれ稼働率0.9の装置2台を並列接続したシステムの稼働率はどれか。',
  '並列接続の稼働率 = 1−（1−0.9）×（1−0.9）= 1−0.1×0.1 = 1−0.01 = 0.99。並列接続では少なくとも1台が動作していればシステムは稼働するため，稼働率が向上する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '0.99', NULL, true),
  (currval('questions_id_seq'), '0.81', NULL, false),
  (currval('questions_id_seq'), '0.90', NULL, false),
  (currval('questions_id_seq'), '0.95', NULL, false);

-- Q254: フォールトトレランスの説明
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 254, 'choice', 1, 1,
  'フォールトトレランス（fault tolerance）の説明として最も適切なものはどれか。',
  'フォールトトレランスとは，システムの一部が故障してもシステム全体として稼働し続ける（機能を継続できる）設計・仕組みのことである。冗長化（二重化）やフェイルオーバーが代表的な実現手段。フォールトアボイダンスは故障そのものを防ぐ（高品質・高信頼部品の使用）アプローチ。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '一部が故障してもシステム全体として動作を継続できる設計', NULL, true),
  (currval('questions_id_seq'), '故障そのものが発生しないよう品質を高める設計', NULL, false),
  (currval('questions_id_seq'), '故障時に自動的にシステムを安全に停止させる設計', NULL, false),
  (currval('questions_id_seq'), '故障の影響を最小限にとどめて迅速に復旧する手順', NULL, false);

-- Q255: ホットスタンバイとコールドスタンバイ
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 255, 'choice', 1, 1,
  'ホットスタンバイの説明として最も適切なものはどれか。',
  'ホットスタンバイは待機系が常に稼働状態（電源ON・同期済み）で，主系が故障した場合に瞬時に切り替わる冗長構成。コールドスタンバイは待機系が停止状態で，起動・設定が必要なため切り替えに時間がかかる。ウォームスタンバイはその中間（起動済みだが一部の初期化が必要）。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '待機系が常に稼働状態で故障時に瞬時に切り替わる構成', NULL, true),
  (currval('questions_id_seq'), '待機系が停止状態で故障時に起動して切り替わる構成', NULL, false),
  (currval('questions_id_seq'), '主系と待機系が交互に稼働する構成', NULL, false),
  (currval('questions_id_seq'), '1台のサーバーで仮想的に2系統を実現する構成', NULL, false);

-- Q256: バックアップの種類（フル・差分・増分）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 256, 'choice', 1, 1,
  '差分バックアップの説明として最も適切なものはどれか。',
  '差分バックアップは前回のフルバックアップ以降に変更されたデータをバックアップする方式。増分バックアップは前回のバックアップ（フルまたは増分）以降に変更されたデータのみをバックアップする。差分はバックアップ量が増分より多いが，復元が早い（フル＋直近差分の2回で復元）。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '前回のフルバックアップ以降に変更されたデータをバックアップする', NULL, true),
  (currval('questions_id_seq'), 'すべてのデータをバックアップする', NULL, false),
  (currval('questions_id_seq'), '前回のバックアップ以降に変更されたデータのみをバックアップする', NULL, false),
  (currval('questions_id_seq'), 'ランダムに選んだファイルをバックアップする', NULL, false);

-- Q257: ロードバランサの役割
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 257, 'choice', 1, 1,
  'ロードバランサの主な役割として最も適切なものはどれか。',
  'ロードバランサは複数のサーバーへの負荷（トラフィック）を分散させる装置・ソフトウェアである。これにより単一サーバーへの集中を防ぎ，処理能力の向上（スケールアウト）と可用性の向上（1台故障しても他のサーバーで継続）を実現する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '複数のサーバーに処理を分散させて可用性と性能を向上させる', NULL, true),
  (currval('questions_id_seq'), 'サーバーの処理速度をリアルタイムで監視する', NULL, false),
  (currval('questions_id_seq'), 'ネットワークのパケットを暗号化して転送する', NULL, false),
  (currval('questions_id_seq'), 'サーバーのデータをリアルタイムに複製する', NULL, false);

-- Q258: クラスタリング
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 258, 'choice', 1, 1,
  'サーバクラスタリングの説明として最も適切なものはどれか。',
  'サーバクラスタリングは複数のサーバーをグループ（クラスター）として連携させ，1台のサーバーとして機能させる技術である。高可用性クラスター（HA）は障害時の自動フェイルオーバーで可用性を高め，HPC（高性能計算）クラスターは処理能力を結合して計算速度を向上させる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '複数のサーバーを連携させて可用性や処理性能を向上させる技術', NULL, true),
  (currval('questions_id_seq'), 'ストレージを複数ドライブに分散するRAID技術', NULL, false),
  (currval('questions_id_seq'), '1台のサーバーを複数の仮想サーバーに分割する技術', NULL, false),
  (currval('questions_id_seq'), 'サーバーのCPU使用率を自動的に制御する技術', NULL, false);

-- Q259: 仮想化技術（ハイパーバイザー）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 259, 'choice', 1, 1,
  'ハイパーバイザー型仮想化の説明として最も適切なものはどれか。',
  'ハイパーバイザー型仮想化はハードウェア上に直接ハイパーバイザーを動作させ，その上で複数の仮想マシン（VM）を実行する方式。ホスト型仮想化はホストOSの上にハイパーバイザーが動く方式でオーバーヘッドが大きい。コンテナ型仮想化はOSカーネルを共有し軽量。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ハードウェア上に直接ハイパーバイザーを動かし複数VMを実行する', NULL, true),
  (currval('questions_id_seq'), 'ホストOS上でハイパーバイザーを動かしVMを実行する', NULL, false),
  (currval('questions_id_seq'), 'OSカーネルを共有して軽量な実行環境を提供する', NULL, false),
  (currval('questions_id_seq'), '複数のCPUを並列に動作させて処理速度を向上させる', NULL, false);

-- Q260: コンテナ技術（Docker）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 260, 'choice', 1, 1,
  'コンテナ型仮想化の特徴として最も適切なものはどれか。',
  'コンテナ型仮想化（Dockerなど）はホストOSのカーネルを共有しながら，アプリケーションの実行環境をプロセスレベルで分離する技術。VMより軽量・高速に起動でき，ポータビリティが高い（環境差異を吸収）。ただし，同一OSカーネルを共有するためVM比でセキュリティ分離が弱い面もある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ホストOSのカーネルを共有して軽量・高速に実行環境を分離する', NULL, true),
  (currval('questions_id_seq'), '専用のゲストOSを持つ完全な仮想マシンを提供する', NULL, false),
  (currval('questions_id_seq'), 'ハードウェアを直接制御して性能を最大化する', NULL, false),
  (currval('questions_id_seq'), '複数のデータセンターを1つのシステムとして管理する', NULL, false);

-- Q261: マイクロサービスアーキテクチャ
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 261, 'choice', 1, 1,
  'マイクロサービスアーキテクチャの特徴として最も適切なものはどれか。',
  'マイクロサービスアーキテクチャは，アプリケーションを小さな独立したサービスに分割し，それぞれをAPIで連携させる設計手法である。各サービスは独立してデプロイ・スケール・更新できる。モノリシックアーキテクチャは全機能を単一のアプリケーションに統合する方式。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'アプリケーションを小さな独立したサービスに分割してAPIで連携させる', NULL, true),
  (currval('questions_id_seq'), 'すべての機能を1つのアプリケーションに統合する', NULL, false),
  (currval('questions_id_seq'), 'マイクロプロセッサを使って処理を高速化する', NULL, false),
  (currval('questions_id_seq'), '最小限のOSでサービスを動作させる軽量化設計', NULL, false);

-- Q262: ディザスタリカバリ（DR）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 262, 'choice', 1, 1,
  'ディザスタリカバリ（DR）の主な目的として最も適切なものはどれか。',
  'ディザスタリカバリは地震・火災・洪水などの大規模災害やサイバー攻撃によりシステムが被災した際に，業務を再開するための計画・仕組みである。DRサイト（代替サイト）への切り替えやデータ復旧手順を事前に整備しておく。BCP（事業継続計画）の一部。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '大規模障害・災害後にシステムや業務を復旧させること', NULL, true),
  (currval('questions_id_seq'), '日常的な障害を自動検知して修復すること', NULL, false),
  (currval('questions_id_seq'), 'データを定期的にバックアップすること', NULL, false),
  (currval('questions_id_seq'), 'システムのセキュリティ脆弱性を排除すること', NULL, false);

-- Q263: SaaS・PaaS・IaaSの比較
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 263, 'choice', 1, 1,
  'SaaS（Software as a Service）の説明として最も適切なものはどれか。',
  'SaaSはソフトウェアをインターネット経由でサービスとして提供するクラウドモデル。ユーザーはインストール不要でブラウザからアプリを使える。Gmail，Salesforce，Microsoft 365などが代表例。IaaSはインフラ，PaaSは開発プラットフォームを提供する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ソフトウェアをインターネット経由でサービスとして提供する', NULL, true),
  (currval('questions_id_seq'), 'サーバやネットワークのインフラをサービスとして提供する', NULL, false),
  (currval('questions_id_seq'), 'アプリケーション開発環境をサービスとして提供する', NULL, false),
  (currval('questions_id_seq'), 'セキュリティ管理をクラウドで代行するサービス', NULL, false);

-- Q264: オンプレミスとクラウドの比較
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 264, 'choice', 1, 1,
  'クラウドコンピューティングのメリットとして最も適切なものはどれか。',
  'クラウドコンピューティングのメリットとして，①初期投資不要（従量課金），②スケーラビリティ（需要に応じたリソース変更が容易），③地理的な冗長性，④最新技術へのアクセスなどが挙げられる。デメリットとしてはインターネット依存，セキュリティ懸念，カスタマイズの制限などがある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '初期投資不要でスケーラビリティが高い', NULL, true),
  (currval('questions_id_seq'), 'インターネットなしでも常に利用できる', NULL, false),
  (currval('questions_id_seq'), 'オンプレミスより常にコストが低い', NULL, false),
  (currval('questions_id_seq'), 'すべての要件に対応できる完全なカスタマイズが可能', NULL, false);

-- Q265: ジョブスケジューラ
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 265, 'choice', 1, 1,
  'ジョブスケジューラの役割として最も適切なものはどれか。',
  'ジョブスケジューラは，定められた時刻や条件に従って，バッチ処理（ジョブ）を自動的に起動・実行管理するシステムソフトウェアである。依存関係のあるジョブの実行順序の制御，異常終了時のアラートや再実行なども担う。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '定められた時刻や条件でバッチ処理を自動実行・管理する', NULL, true),
  (currval('questions_id_seq'), 'CPUのスレッド優先度を動的に制御する', NULL, false),
  (currval('questions_id_seq'), 'ネットワークのトラフィックを監視してルーティングを最適化する', NULL, false),
  (currval('questions_id_seq'), 'データベースのトランザクションを管理する', NULL, false);

-- ----------------------------------------
-- OS・ソフトウェア応用（Q266〜Q280）
-- ----------------------------------------

-- Q266: プロセスとスレッドの違い
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 266, 'choice', 1, 1,
  'スレッドとプロセスの違いとして最も適切なものはどれか。',
  'プロセスはOSから独立したメモリ空間・リソースが割り当てられた実行単位。スレッドはプロセス内で並列に実行される軽量な実行単位で，同一プロセス内のスレッドはメモリ空間・リソースを共有する。スレッド間の切り替えはプロセス間切り替えよりコストが低い。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'スレッドはプロセス内でメモリを共有して並列実行される軽量な単位', NULL, true),
  (currval('questions_id_seq'), 'スレッドはプロセスより多くのメモリを使用する', NULL, false),
  (currval('questions_id_seq'), 'プロセスはスレッドより粒度が小さい実行単位', NULL, false),
  (currval('questions_id_seq'), 'スレッドはプロセスと異なる独立したメモリ空間を持つ', NULL, false);

-- Q267: OSのスケジューリング（ラウンドロビン）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 267, 'choice', 1, 1,
  'ラウンドロビンスケジューリングの説明として最も適切なものはどれか。',
  'ラウンドロビンスケジューリングは各プロセスに一定時間（タイムクォンタム）ずつCPU時間を順番に割り当てる方式である。時分割処理の基本的な方式で，どのプロセスも公平にCPUを使える。プリエンプション（強制切り替え）を使う。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '各プロセスに一定時間ずつCPUを順番に割り当てる方式', NULL, true),
  (currval('questions_id_seq'), '優先度の高いプロセスに優先してCPUを割り当てる方式', NULL, false),
  (currval('questions_id_seq'), '最短の処理時間のプロセスを優先する方式', NULL, false),
  (currval('questions_id_seq'), '到着順にCPUを割り当てて処理完了まで占有する方式', NULL, false);

-- Q268: ファイルシステムの役割
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 268, 'choice', 1, 1,
  'ファイルシステムの役割として最も適切なものはどれか。',
  'ファイルシステムはストレージデバイス上にファイルとディレクトリの階層構造を管理するOSの機能である。ファイルのデータがどのブロックに格納されているかを管理し，ファイルの作成・読み書き・削除を効率的に行う。FAT，NTFS，ext4などが代表的なファイルシステム。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ストレージ上のファイルとディレクトリを管理する', NULL, true),
  (currval('questions_id_seq'), 'ネットワーク上のファイル転送を管理する', NULL, false),
  (currval('questions_id_seq'), 'プロセス間のデータ通信を管理する', NULL, false),
  (currval('questions_id_seq'), 'メモリ上のデータを圧縮・管理する', NULL, false);

-- Q269: ミドルウェアの役割
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 269, 'choice', 1, 1,
  'ミドルウェアの説明として最も適切なものはどれか。',
  'ミドルウェアはOSとアプリケーションソフトウェアの中間に位置するソフトウェアで，アプリケーションに共通的な機能（データベースアクセス，通信，認証など）を提供する。Webサーバー，アプリケーションサーバー，DBMSなどがミドルウェアに分類される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'OSとアプリケーションの中間でアプリに共通機能を提供するソフトウェア', NULL, true),
  (currval('questions_id_seq'), 'ハードウェアを制御する低レベルなソフトウェア', NULL, false),
  (currval('questions_id_seq'), 'ユーザーが直接使う業務用アプリケーション', NULL, false),
  (currval('questions_id_seq'), 'ネットワーク通信を管理するプロトコル', NULL, false);

-- Q270: API（アプリケーションプログラミングインタフェース）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 270, 'choice', 1, 1,
  'APIの説明として最も適切なものはどれか。',
  'API（Application Programming Interface）はソフトウェア同士が機能・データを共有するためのインタフェース（接続規約）である。WebAPIはHTTPでデータをやり取りする仕組みで，JSON/XMLを使って外部サービスの機能を呼び出せる。天気予報サービスの提供や地図機能の組み込みなどに活用される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ソフトウェア同士が機能・データを共有するためのインタフェース', NULL, true),
  (currval('questions_id_seq'), 'ユーザーがOSと対話するためのグラフィカルな画面', NULL, false),
  (currval('questions_id_seq'), 'アプリケーションを配布・インストールする仕組み', NULL, false),
  (currval('questions_id_seq'), 'プログラムの開発環境（IDE）のこと', NULL, false);

-- Q271: オープンソースソフトウェア（OSS）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 271, 'choice', 1, 1,
  'オープンソースソフトウェア（OSS）の説明として最も適切なものはどれか。',
  'OSSはソースコードが公開されており，一定のライセンス条件のもとで自由に使用・修正・再配布できるソフトウェアである。Linux，Apache，MySQL，Pythonなどが代表例。フリーソフトウェアと混同されることがあるが，OSSは「オープンであること」，フリーは「自由（freedom）であること」に重点がある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ソースコードが公開されて自由に使用・修正・再配布できるソフトウェア', NULL, true),
  (currval('questions_id_seq'), '無料で提供されるすべてのソフトウェア', NULL, false),
  (currval('questions_id_seq'), '政府が開発して公開するソフトウェア', NULL, false),
  (currval('questions_id_seq'), '商用ライセンスなしで使えるシェアウェア', NULL, false);

-- Q272: ソフトウェアライセンスの種類
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 272, 'choice', 1, 1,
  'コピーレフトライセンス（GPL等）の特徴として最も適切なものはどれか。',
  'コピーレフトはOSSライセンスの考え方で，GPLが代表例。GLP等コピーレフトライセンスのソフトウェアを改変・組み込んで配布する場合，派生物も同じライセンスで公開しなければならない「感染性」がある。MITライセンスやApacheライセンスはよりゆるく，商用ソフトへの組み込みも比較的自由。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '派生物も同じライセンスで公開することを求める感染性がある', NULL, true),
  (currval('questions_id_seq'), '商用利用を禁止する', NULL, false),
  (currval('questions_id_seq'), '改変・再配布を完全に禁止する', NULL, false),
  (currval('questions_id_seq'), '派生物を独自ライセンスで自由に公開できる', NULL, false);

-- Q273: シェルとカーネルの違い
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 273, 'choice', 1, 1,
  'OSのカーネルの説明として最も適切なものはどれか。',
  'カーネルはOSの核心部分で，ハードウェアを直接管理する（CPU・メモリ・I/O制御，プロセス管理，ファイルシステム管理など）。シェルはユーザーとカーネルの仲介役で，コマンドを受け付けてカーネルの機能を呼び出すインタフェース（Bash，PowerShellなど）。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ハードウェアを直接管理するOSの核心部分', NULL, true),
  (currval('questions_id_seq'), 'ユーザーとOSの仲介をするコマンドインタフェース', NULL, false),
  (currval('questions_id_seq'), 'アプリケーションに共通機能を提供するソフトウェア', NULL, false),
  (currval('questions_id_seq'), 'ネットワーク通信を制御するOS機能', NULL, false);

-- Q274: マルチタスキングの説明
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 274, 'choice', 1, 1,
  'プリエンプティブマルチタスキングの説明として最も適切なものはどれか。',
  'プリエンプティブマルチタスキングはOSがタイマ割り込みにより強制的にプロセスを切り替えるマルチタスク方式。プロセスが意図的にCPUを解放しなくても一定時間で切り替わるため，1つのプロセスがCPUを独占する事態を防ぐ。ノンプリエンプティブ（協調的）マルチタスキングはプロセスが自発的に制御を渡す方式。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'OSが強制的にプロセスを切り替えてCPUの独占を防ぐ方式', NULL, true),
  (currval('questions_id_seq'), 'プロセスが自発的にCPUを解放して切り替わる方式', NULL, false),
  (currval('questions_id_seq'), '複数のCPUコアで同時に複数プロセスを実行する方式', NULL, false),
  (currval('questions_id_seq'), 'プロセスの優先度に従ってCPUを割り当てる方式', NULL, false);

-- Q275: ガベージコレクション
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 275, 'choice', 1, 1,
  'ガベージコレクション（GC）の説明として最も適切なものはどれか。',
  'ガベージコレクションは，プログラムが使用しなくなったメモリ領域を自動的に検出・解放する仕組みである。JavaやPython，C#などの言語で採用されており，メモリリークの防止に役立つ。一方，GCのタイミングにより処理が一時停止するオーバーヘッドがある。C/C++ではプログラマが手動でメモリを管理する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '使用済みのメモリ領域を自動的に解放する仕組み', NULL, true),
  (currval('questions_id_seq'), 'メモリへの書き込みを圧縮してメモリを節約する仕組み', NULL, false),
  (currval('questions_id_seq'), 'メモリのエラーを自動修正する仕組み', NULL, false),
  (currval('questions_id_seq'), '不要なプロセスを自動終了させる仕組み', NULL, false);

-- ----------------------------------------
-- 情報処理一般・その他（Q276〜Q300）
-- ----------------------------------------

-- Q276: 符号化（エンコード）の目的
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 276, 'choice', 1, 1,
  'Base64エンコードの主な用途として最も適切なものはどれか。',
  'Base64はバイナリデータ（画像・ファイルなど）をテキスト（ASCII文字）で表現するエンコード方式である。メール添付やHTTPなどテキストしか扱えない環境でバイナリデータを転送する際に使われる。暗号化ではないため，デコードすれば元データに戻せる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'バイナリデータをテキスト形式に変換して転送できるようにする', NULL, true),
  (currval('questions_id_seq'), 'データを暗号化してセキュリティを高める', NULL, false),
  (currval('questions_id_seq'), 'データを圧縮してサイズを小さくする', NULL, false),
  (currval('questions_id_seq'), 'データのエラーを訂正するための符号を付加する', NULL, false);

-- Q277: 文字コード（Unicode）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 277, 'choice', 1, 1,
  'Unicodeの説明として最も適切なものはどれか。',
  'Unicodeは世界中の文字を単一の文字コード体系で表現するための国際標準規格である。ASCIIは英数字のみ，Shift-JISは日本語対応だが日本語専用，Unicodeは世界中の言語・記号を統一的に扱える。UTF-8，UTF-16などの符号化方式がある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '世界中の文字を統一して表現する国際標準の文字コード体系', NULL, true),
  (currval('questions_id_seq'), '英数字のみを扱う7ビットの文字コード', NULL, false),
  (currval('questions_id_seq'), '日本語専用の文字コード規格', NULL, false),
  (currval('questions_id_seq'), '中国語・韓国語のみに対応した文字コード', NULL, false);

-- Q278: 情報量の単位（ビット・バイト）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 278, 'choice', 1, 1,
  '1バイトで表現できる値の範囲（符号なし整数）として正しいものはどれか。',
  '1バイト=8ビットで，符号なし整数は2⁸=256通りの値（0〜255）を表現できる。符号あり（2の補数）では−128〜127の範囲になる。2バイト（16ビット）では0〜65535（符号なし）または−32768〜32767（符号あり）。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '0〜255', NULL, true),
  (currval('questions_id_seq'), '0〜127', NULL, false),
  (currval('questions_id_seq'), '0〜1023', NULL, false),
  (currval('questions_id_seq'), '0〜65535', NULL, false);

-- Q279: プログラム言語の分類（コンパイル型・インタープリタ型）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 279, 'choice', 1, 1,
  'コンパイル型言語とインタープリタ型言語の違いとして最も適切なものはどれか。',
  'コンパイル型言語（C，C++，Javaなど）は実行前にソースコード全体を機械語に変換（コンパイル）してから実行するため，実行速度が速い。インタープリタ型言語（Python，Rubyなど）はソースコードを1行ずつ解釈しながら実行するため，デバッグが容易だが一般的にコンパイル型より遅い。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'コンパイル型は事前に全体を変換してから実行，インタープリタ型は逐次解釈実行', NULL, true),
  (currval('questions_id_seq'), 'コンパイル型は実行時に変換，インタープリタ型は事前に全体を変換', NULL, false),
  (currval('questions_id_seq'), 'コンパイル型はOSに依存しない，インタープリタ型はOSに依存する', NULL, false),
  (currval('questions_id_seq'), 'コンパイル型は遅く，インタープリタ型は高速', NULL, false);

-- Q280: UMLのシーケンス図
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 280, 'choice', 1, 1,
  'UMLのシーケンス図で表現するものとして最も適切なものはどれか。',
  'シーケンス図はオブジェクト間のメッセージ交換を時系列（縦軸）に沿って表現するUMLの動的図である。特定のユースケースやシナリオにおけるオブジェクト間の相互作用の流れを可視化するために使う。クラス図は静的構造，アクティビティ図は処理フロー，状態遷移図は状態変化を表す。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '時系列に沿ったオブジェクト間のメッセージ交換の流れ', NULL, true),
  (currval('questions_id_seq'), 'クラスとクラス間の静的な関係', NULL, false),
  (currval('questions_id_seq'), 'オブジェクトの状態とその遷移', NULL, false),
  (currval('questions_id_seq'), '処理の流れと分岐・並列を表したフロー', NULL, false);

-- Q281: テスト駆動開発（TDD）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 281, 'choice', 1, 1,
  'テスト駆動開発（TDD：Test-Driven Development）の開発サイクルとして正しいものはどれか。',
  'TDDは①失敗するテストコードを書く（Red），②テストが通るだけの最小限の実装をする（Green），③コードをリファクタリングする（Refactor），というサイクルを繰り返す開発手法である。テストを先に書くことで設計の改善や品質向上につながる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'テスト作成→実装→リファクタリングのサイクルを繰り返す', NULL, true),
  (currval('questions_id_seq'), '実装→テスト→デプロイのサイクルを繰り返す', NULL, false),
  (currval('questions_id_seq'), '設計→実装→テストの順で行う', NULL, false),
  (currval('questions_id_seq'), 'コードレビュー→テスト→デプロイの順で行う', NULL, false);

-- Q282: コードレビューの目的
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 282, 'choice', 1, 1,
  'コードレビューの主な目的として最も適切なものはどれか。',
  'コードレビューは他の開発者がソースコードを確認し，バグ・設計上の問題・セキュリティ上の問題・可読性の低さなどを発見・修正する工程である。品質向上，チームメンバー間での知識共有，コーディング標準の遵守確認などの効果がある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'バグや設計上の問題を早期に発見して品質を向上させる', NULL, true),
  (currval('questions_id_seq'), 'コードを自動的に最適化してパフォーマンスを向上させる', NULL, false),
  (currval('questions_id_seq'), 'コードの行数を減らして開発コストを削減する', NULL, false),
  (currval('questions_id_seq'), 'コードのバックアップを作成する', NULL, false);

-- Q283: デザインパターン（ファクトリメソッド）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 283, 'choice', 1, 1,
  'ファクトリメソッドパターンの説明として最も適切なものはどれか。',
  'ファクトリメソッドパターンはオブジェクトの生成をサブクラスに委ねる設計パターンである。スーパークラスはオブジェクト生成のインタフェースを定義し，具体的なオブジェクトの生成は各サブクラスが担う。これにより生成するオブジェクトの型を変更する際に呼び出し側のコードを変更しなくて済む。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'オブジェクト生成をサブクラスに委ねる設計パターン', NULL, true),
  (currval('questions_id_seq'), 'クラスのインスタンスを1つだけに制限する設計パターン', NULL, false),
  (currval('questions_id_seq'), '互いに依存するオブジェクト群をまとめて生成する設計パターン', NULL, false),
  (currval('questions_id_seq'), 'オブジェクトをコピーして新しいインスタンスを作る設計パターン', NULL, false);

-- Q284: MVCアーキテクチャ
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 284, 'choice', 1, 1,
  'MVCアーキテクチャのModel（モデル）の役割として最も適切なものはどれか。',
  'MVCはModel（データ・ビジネスロジック）・View（表示・UI）・Controller（ユーザー入力の処理と仲介）に分離するアーキテクチャパターン。Modelはデータの管理とビジネスロジックを担い，Viewに直接依存しない。これにより各コンポーネントの独立性が高まり，保守性が向上する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'データの管理とビジネスロジックの処理', NULL, true),
  (currval('questions_id_seq'), 'ユーザーへの表示を担当する', NULL, false),
  (currval('questions_id_seq'), 'ユーザー入力を受け取りModelとViewを調整する', NULL, false),
  (currval('questions_id_seq'), 'データベースとの接続を管理する', NULL, false);

-- Q285: 正規表現の利用
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 285, 'choice', 1, 1,
  '正規表現の主な用途として最も適切なものはどれか。',
  '正規表現（Regular Expression）はテキストのパターンを記述するための形式言語である。文字列の検索，バリデーション（メールアドレスや電話番号の形式チェック），テキスト変換・抽出などに広く使われる。プログラミング言語や多くのテキストエディタでサポートされている。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '文字列のパターンマッチングや検索・置換に使う', NULL, true),
  (currval('questions_id_seq'), '数値を正規化（標準化）して演算する', NULL, false),
  (currval('questions_id_seq'), 'データベースの正規形を表現する', NULL, false),
  (currval('questions_id_seq'), 'ネットワークのルーティングルールを記述する', NULL, false);

-- Q286: Webアプリケーションの3層アーキテクチャ
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 286, 'choice', 1, 1,
  'Webアプリケーションの3層アーキテクチャにおいて，ビジネスロジックを担当する層はどれか。',
  '3層アーキテクチャはプレゼンテーション層（ブラウザ・UI）・ビジネスロジック層（アプリケーションサーバー：業務ルール処理）・データ層（データベース：データ管理）の3つに分離する構成。各層を分離することで変更の影響を限定でき，保守性・スケーラビリティが向上する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'アプリケーション層（ビジネスロジック層）', NULL, true),
  (currval('questions_id_seq'), 'プレゼンテーション層', NULL, false),
  (currval('questions_id_seq'), 'データ層', NULL, false),
  (currval('questions_id_seq'), 'ネットワーク層', NULL, false);

-- Q287: ITガバナンスの説明
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 287, 'choice', 1, 1,
  'ITガバナンスの説明として最も適切なものはどれか。',
  'ITガバナンスは企業がITを活用して経営目標を達成するための意思決定の仕組みと管理体制である。IT投資の優先付け，リスク管理，IT部門と経営陣の調整などを含む。COBIT（Control Objectives for Information and Related Technologies）などのフレームワークが活用される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ITを経営目標達成に活用するための意思決定と管理体制', NULL, true),
  (currval('questions_id_seq'), 'IT部門の日常的な運用業務を管理する手法', NULL, false),
  (currval('questions_id_seq'), 'セキュリティインシデントを管理する組織体制', NULL, false),
  (currval('questions_id_seq'), 'ソフトウェア開発プロジェクトを管理する手法', NULL, false);

-- Q288: ICT活用（テレワーク）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 288, 'choice', 1, 1,
  'テレワークを安全に実施するための技術として最も適切なものはどれか。',
  'テレワーク時に社内ネットワークへ安全にアクセスするにはVPN（仮想プライベートネットワーク）が有効。VPNにより通信が暗号化され，公衆回線を通じても社内と同等のセキュリティを確保できる。合わせて多要素認証の導入やエンドポイント管理（MDM）も重要な対策。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'VPNによる暗号化通信', NULL, true),
  (currval('questions_id_seq'), 'FTPによるファイル転送', NULL, false),
  (currval('questions_id_seq'), 'SMTPによるメール送受信', NULL, false),
  (currval('questions_id_seq'), 'DHCPによるIPアドレス自動割り当て', NULL, false);

-- Q289: ブロックチェーンの特徴
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 289, 'choice', 1, 1,
  'ブロックチェーンの特徴として最も適切なものはどれか。',
  'ブロックチェーンはトランザクションデータをブロックに格納し，ハッシュ値で連鎖させた分散型台帳技術である。データは複数のノードに分散して保持され，改ざんには膨大な計算が必要なため耐改ざん性が高い。仮想通貨（ビットコインなど）のほか，スマートコントラクトやサプライチェーン管理に活用される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '分散型台帳で改ざんが困難なデータ管理技術', NULL, true),
  (currval('questions_id_seq'), '中央集権的に管理されるデータベース', NULL, false),
  (currval('questions_id_seq'), 'データを暗号化してクラウドに保存するサービス', NULL, false),
  (currval('questions_id_seq'), 'トランザクションを高速に処理するためのキャッシュ技術', NULL, false);

-- Q290: データ収集（Web API）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 290, 'choice', 1, 1,
  'REST APIの説明として最も適切なものはどれか。',
  'REST（Representational State Transfer）APIはHTTPメソッド（GET・POST・PUT・DELETEなど）を使ってリソースを操作するWebAPIの設計スタイルである。ステートレス（サーバーがセッション状態を保持しない），URIでリソースを特定，JSONやXMLでデータをやり取りするのが特徴。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'HTTPメソッドでリソースを操作するWebAPIの設計スタイル', NULL, true),
  (currval('questions_id_seq'), 'XMLを使ってWebサービスを呼び出す規格', NULL, false),
  (currval('questions_id_seq'), 'データベースを直接操作するSQL規格', NULL, false),
  (currval('questions_id_seq'), 'リモートからプログラムの関数を呼び出す技術', NULL, false);

-- Q291: システム監査
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 291, 'choice', 1, 1,
  'システム監査の目的として最も適切なものはどれか。',
  'システム監査とは，情報システムに係るリスクのコントロールが適切に整備・運用されているかを独立した第三者（システム監査人）が評価して，改善勧告を行う活動である。情報システムの信頼性・安全性・効率性の向上を目的とする。情報処理安全確保支援士（登録セキスペ）が関わる分野でもある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '情報システムのリスクコントロールの適切性を独立した立場で評価する', NULL, true),
  (currval('questions_id_seq'), 'システムの性能を測定してボトルネックを特定する', NULL, false),
  (currval('questions_id_seq'), 'システム開発プロジェクトの進捗を管理する', NULL, false),
  (currval('questions_id_seq'), 'セキュリティインシデントに対応する手順を整備する', NULL, false);

-- Q292: 電子政府・マイナンバー
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 292, 'choice', 1, 1,
  'マイナンバー制度の説明として最も適切なものはどれか。',
  'マイナンバー（個人番号）制度は，住民票を有するすべての人に12桁の番号を付番し，社会保障・税・災害対策の分野での行政手続きを効率化するための制度である。マイナンバーの利用・提供は法律で定められた目的に限定され，不正利用は厳しく罰せられる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '行政手続きの効率化のため住民全員に付番する個人識別番号制度', NULL, true),
  (currval('questions_id_seq'), 'クレジットカード決済に必要な認証番号', NULL, false),
  (currval('questions_id_seq'), '企業が従業員を識別するための社員番号制度', NULL, false),
  (currval('questions_id_seq'), '医療機関が患者を識別するための番号制度', NULL, false);

-- Q293: 情報リテラシー
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 293, 'choice', 1, 1,
  '情報リテラシーの説明として最も適切なものはどれか。',
  '情報リテラシーとは，情報を適切に収集・評価・活用・発信するための知識・能力・態度の総体である。コンピュータやインターネットを使いこなすスキル（ICTリテラシー）だけでなく，情報の真偽を見極める批判的思考，著作権・プライバシーへの配慮なども含まれる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '情報を適切に収集・評価・活用・発信するための知識と能力', NULL, true),
  (currval('questions_id_seq'), 'プログラミング言語を使いこなすスキル', NULL, false),
  (currval('questions_id_seq'), 'インターネットを高速で使いこなすスキル', NULL, false),
  (currval('questions_id_seq'), '情報システムを設計・開発する技術的能力', NULL, false);

-- Q294: プロセス改善（CMMI）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 294, 'choice', 1, 1,
  'CMMIの説明として最も適切なものはどれか。',
  'CMMI（Capability Maturity Model Integration）はソフトウェア開発プロセスの成熟度を5段階（初期・管理された・定義された・定量的に管理された・最適化）で評価するモデルである。組織のプロセス改善の指針として使われる。ITILはITサービス管理，PMBOKはプロジェクト管理の知識体系。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ソフトウェア開発プロセスの成熟度を5段階で評価するモデル', NULL, true),
  (currval('questions_id_seq'), 'ITサービスマネジメントのベストプラクティス集', NULL, false),
  (currval('questions_id_seq'), 'プロジェクトマネジメントの知識体系', NULL, false),
  (currval('questions_id_seq'), '情報セキュリティ管理の国際規格', NULL, false);

-- Q295: XMLとJSONの比較
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 295, 'choice', 1, 1,
  'JSONの特徴として最も適切なものはどれか。',
  'JSON（JavaScript Object Notation）はテキストベースの軽量データ交換フォーマットで，JavaScriptの構文に基づく。XMLよりも記述が簡潔で，WebAPIのデータ形式として広く使われる。人間が読みやすく，ほとんどのプログラミング言語でパース（解析）ライブラリが提供されている。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '軽量で読みやすいテキストベースのデータ交換フォーマット', NULL, true),
  (currval('questions_id_seq'), '画像・音声データを格納するバイナリフォーマット', NULL, false),
  (currval('questions_id_seq'), 'データベースのテーブル定義を記述する言語', NULL, false),
  (currval('questions_id_seq'), 'Webページのスタイルを定義する言語', NULL, false);

-- Q296: ICカードの仕組み
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 296, 'choice', 1, 1,
  'ICカードの説明として最も適切なものはどれか。',
  'ICカードは集積回路（IC）チップを内蔵したカードで，CPUとメモリを持ち，データの記憶・演算・認証処理ができる。磁気カードより記憶容量が大きく，耐偽造性が高い。接触型（端子を差し込む）と非接触型（近づけるだけで通信）がある。クレジットカードやマイナンバーカードなどに使われる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'CPUとメモリを持つICチップを内蔵した高機能・高耐偽造性のカード', NULL, true),
  (currval('questions_id_seq'), '磁気ストライプにデータを記録するカード', NULL, false),
  (currval('questions_id_seq'), 'バーコードをカードに印刷して情報を記録するカード', NULL, false),
  (currval('questions_id_seq'), 'QRコードでデータを記録するカード', NULL, false);

-- Q297: UX（ユーザーエクスペリエンス）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 297, 'choice', 1, 1,
  'UX（User Experience）の説明として最も適切なものはどれか。',
  'UXはユーザーがある製品・サービスを通じて得る全体的な体験・印象・感情のことである。単に使いやすさ（ユーザビリティ）にとどまらず，サービスの価値提供から前後を含む一連の体験全体を指す。UIはユーザーインタフェース（操作画面など）の設計であり，UXのひとつの要素。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ユーザーが製品・サービスを通じて得る全体的な体験', NULL, true),
  (currval('questions_id_seq'), 'ユーザーが操作する画面・インタフェースの設計', NULL, false),
  (currval('questions_id_seq'), 'ユーザーの個人情報を保護する仕組み', NULL, false),
  (currval('questions_id_seq'), 'ユーザーの行動を分析する技術', NULL, false);

-- Q298: アクセシビリティ
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 298, 'choice', 1, 1,
  'Webアクセシビリティの説明として最も適切なものはどれか。',
  'Webアクセシビリティとは，障害のある人や高齢者を含む多様なユーザーがWebサイト・Webアプリケーションを利用できるようにすることである。W3CのWCAG（Web Content Accessibility Guidelines）がガイドラインとして広く参照される。スクリーンリーダー対応，文字サイズ変更対応などが具体的な取り組み。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '障害者や高齢者を含む多様なユーザーが利用できるWebの実現', NULL, true),
  (currval('questions_id_seq'), 'Webサイトへの不正アクセスを防ぐセキュリティ対策', NULL, false),
  (currval('questions_id_seq'), 'Webページの表示速度を向上させる技術', NULL, false),
  (currval('questions_id_seq'), 'モバイルデバイスでWebを最適表示する技術', NULL, false);

-- Q299: 情報システムの調達（RFP）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 299, 'choice', 1, 1,
  'RFP（提案依頼書）の説明として最も適切なものはどれか。',
  'RFP（Request For Proposal）はシステムの調達を検討している組織が，ベンダーに対してシステム要件・目的・予算・スケジュールなどを記載して提案を依頼する文書である。ベンダーはRFPを基に提案書（プロポーザル）を作成・提出する。RFIは情報提供依頼書，RFQは見積依頼書。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'システム調達時に要件等を示してベンダーに提案を依頼する文書', NULL, true),
  (currval('questions_id_seq'), 'ベンダーが発注者に提出するシステム設計書', NULL, false),
  (currval('questions_id_seq'), 'システムの保守・運用手順を定めたマニュアル', NULL, false),
  (currval('questions_id_seq'), 'システム開発の見積金額のみを記載した文書', NULL, false);

-- Q300: 情報処理推進機構（IPA）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 300, 'choice', 1, 1,
  'IPA（情報処理推進機構）の主な役割として最も適切なものはどれか。',
  'IPAは経済産業省所管の独立行政法人で，ITに関する①情報処理技術者試験・情報処理安全確保支援士試験の実施，②サイバーセキュリティ対策の推進（脆弱性情報の収集・公表），③ITスキル標準の整備，④ソフトウェア工学の推進などを主な業務とする。基本情報技術者試験もIPAが実施する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '情報処理技術者試験の実施とサイバーセキュリティ対策の推進', NULL, true),
  (currval('questions_id_seq'), 'インターネットドメインの管理と割り当て', NULL, false),
  (currval('questions_id_seq'), 'ITベンチャー企業への投資・育成支援', NULL, false),
  (currval('questions_id_seq'), '国内のIT製品の品質認証と検査', NULL, false);
-- ----------------------------------------
-- 科目A（section_id=1）Q301〜Q350
-- ----------------------------------------

-- ----------------------------------------
-- 論理回路・数学基礎（Q301〜Q315）
-- ----------------------------------------

-- Q301: 論理演算（OR）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 301, 'choice', 1, 1,
  '2進数の論理演算において，A=1，B=0 のとき，A OR B の結果はどれか。',
  'OR演算（論理和）は，どちらか一方が1であれば1を返す。A=1，B=0 の場合，1 OR 0 = 1 となる。AND演算（論理積）は両方が1のとき1，XOR演算（排他的論理和）は異なるとき1となる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '1', NULL, true),
  (currval('questions_id_seq'), '0', NULL, false),
  (currval('questions_id_seq'), '不定', NULL, false),
  (currval('questions_id_seq'), '2', NULL, false);

-- Q302: 論理演算（XOR）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 302, 'choice', 1, 1,
  '2進数の論理演算において，A=1，B=1 のとき，A XOR B の結果はどれか。',
  'XOR（排他的論理和）は，2つの入力が異なるとき1，同じとき0を返す。A=1，B=1 の場合，同じ値なので 1 XOR 1 = 0 となる。A=1，B=0 または A=0，B=1 の場合は1になる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '0', NULL, true),
  (currval('questions_id_seq'), '1', NULL, false),
  (currval('questions_id_seq'), '2', NULL, false),
  (currval('questions_id_seq'), '不定', NULL, false);

-- Q303: 2進数から10進数への変換
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 303, 'choice', 1, 1,
  '2進数の 1011 を10進数に変換した値はどれか。',
  '2進数 1011 は右から順に 2⁰=1，2¹=2，2²=4，2³=8 の重みを持つ。1011 = 1×8 + 0×4 + 1×2 + 1×1 = 8 + 0 + 2 + 1 = 11 となる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '11', NULL, true),
  (currval('questions_id_seq'), '9', NULL, false),
  (currval('questions_id_seq'), '13', NULL, false),
  (currval('questions_id_seq'), '7', NULL, false);

-- Q304: 16進数から2進数への変換
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 304, 'choice', 1, 1,
  '16進数の A を2進数で表したものはどれか。',
  '16進数の各桁は4ビットの2進数に対応する。A は10進数で10であり，2進数では 1010 となる（8+2=10）。16進数 F は10進数15，2進数 1111 に相当する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '1010', NULL, true),
  (currval('questions_id_seq'), '1001', NULL, false),
  (currval('questions_id_seq'), '1100', NULL, false),
  (currval('questions_id_seq'), '1111', NULL, false);

-- Q305: 論理回路（半加算器）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 305, 'choice', 1, 1,
  '半加算器の説明として最も適切なものはどれか。',
  '半加算器は2つの1ビット入力（A，B）を加算し，和（Sum）と桁上がり（Carry）を出力する回路である。Sum = A XOR B，Carry = A AND B で構成される。全加算器は下位からの桁上がり入力も考慮した回路。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '2つの1ビット入力を加算して和と桁上がりを出力する回路', NULL, true),
  (currval('questions_id_seq'), '2進数を10進数に変換する回路', NULL, false),
  (currval('questions_id_seq'), '下位からの桁上がりを含む3ビット加算回路', NULL, false),
  (currval('questions_id_seq'), '2進数の減算を行う回路', NULL, false);

-- Q306: フリップフロップ
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 306, 'choice', 1, 1,
  'フリップフロップの説明として最も適切なものはどれか。',
  'フリップフロップは1ビットの情報を記憶できる順序回路の基本素子である。入力信号とクロック信号によって状態が変化し，電源が供給されている間は状態を保持できる。SRAMの記憶素子として使われる。D型，SR型，JK型などの種類がある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '1ビットの情報を記憶できる順序回路の基本素子', NULL, true),
  (currval('questions_id_seq'), '複数の入力論理演算を同時に行う組み合わせ回路', NULL, false),
  (currval('questions_id_seq'), 'アナログ信号をデジタル信号に変換する回路', NULL, false),
  (currval('questions_id_seq'), '2進数の加算を行う算術演算回路', NULL, false);

-- Q307: シフト演算
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 307, 'choice', 1, 1,
  '2進数 0010（10進数で2）を左に1ビットシフトした結果を10進数で表したものはどれか。',
  '左シフトはビット列を左方向に移動し，右端に0を補充する操作。2進数 0010 を1ビット左シフトすると 0100 となり，10進数では4になる。左に1ビットシフトすることは2倍に相当し，右に1ビットシフトすることは2で割る（符号なし）操作に相当する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '4', NULL, true),
  (currval('questions_id_seq'), '1', NULL, false),
  (currval('questions_id_seq'), '8', NULL, false),
  (currval('questions_id_seq'), '3', NULL, false);

-- Q308: 誤り検出（パリティビット）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 308, 'choice', 1, 1,
  'パリティビットによる誤り検出の説明として最も適切なものはどれか。',
  'パリティビットはデータの1のビット数が偶数（偶数パリティ）または奇数（奇数パリティ）になるよう付加する1ビットの誤り検出符号。1ビットの誤りは検出できるが，訂正はできない。2ビット同時の誤りは検出不可。CRCはより強力な誤り検出方式。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '1ビットの誤りを検出できるが訂正はできない', NULL, true),
  (currval('questions_id_seq'), '1ビットの誤りを検出して自動訂正できる', NULL, false),
  (currval('questions_id_seq'), '複数ビットの誤りをすべて検出できる', NULL, false),
  (currval('questions_id_seq'), '誤りを検出も訂正もできない', NULL, false);

-- Q309: 誤り訂正（ハミング符号）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 309, 'choice', 1, 1,
  'ハミング符号の説明として最も適切なものはどれか。',
  'ハミング符号は誤り訂正符号の一種で，複数のパリティビットを付加することで1ビットの誤りを検出するだけでなく，どのビットが誤っているかを特定して自動訂正できる。ECC（Error Correction Code）メモリなどに使用される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '1ビットの誤りを検出して自動訂正できる誤り訂正符号', NULL, true),
  (currval('questions_id_seq'), '1ビットのみ検出できるが訂正はできない誤り検出符号', NULL, false),
  (currval('questions_id_seq'), 'データを圧縮してサイズを削減する符号化方式', NULL, false),
  (currval('questions_id_seq'), '暗号化のために使用する符号化方式', NULL, false);

-- Q310: 情報量（エントロピー）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 310, 'choice', 1, 1,
  '公平なコイン投げ（表・裏が等確率）の結果がもつ情報量は何ビットか。',
  '情報量は I = −log₂(p) で定義される。公平なコインは表・裏が各1/2の確率なので，情報量 = −log₂(1/2) = 1ビット。4択問題（各1/4）なら −log₂(1/4) = 2ビット。情報量はどれほど不確かな情報かを示す指標。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '1ビット', NULL, true),
  (currval('questions_id_seq'), '2ビット', NULL, false),
  (currval('questions_id_seq'), '0.5ビット', NULL, false),
  (currval('questions_id_seq'), '4ビット', NULL, false);

-- Q311: 10進数から2進数への変換
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 311, 'choice', 1, 1,
  '10進数の 13 を2進数で表したものはどれか。',
  '13を2で繰り返し割る：13÷2=6余1，6÷2=3余0，3÷2=1余1，1÷2=0余1。余りを下から読むと 1101。確認：1×8+1×4+0×2+1×1 = 8+4+0+1 = 13。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '1101', NULL, true),
  (currval('questions_id_seq'), '1011', NULL, false),
  (currval('questions_id_seq'), '1110', NULL, false),
  (currval('questions_id_seq'), '1001', NULL, false);

-- Q312: 補数による減算
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 312, 'choice', 1, 1,
  'コンピュータが減算を実現する一般的な方法として最も適切なものはどれか。',
  'コンピュータは減算を，引く数の2の補数を求めて加算することで実現する。A − B = A +（Bの2の補数）。2の補数はビット全反転に1を加えた値。これにより加算器だけで減算も実現でき，回路を単純化できる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '引く数の2の補数を求めて加算する', NULL, true),
  (currval('questions_id_seq'), '引く数の1の補数を求めて加算する', NULL, false),
  (currval('questions_id_seq'), '別の減算専用回路を使って計算する', NULL, false),
  (currval('questions_id_seq'), 'ソフトウェアのみで処理して回路は使わない', NULL, false);

-- Q313: 論理ゲート（NOT）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 313, 'choice', 1, 1,
  'NOT ゲートの動作として正しいものはどれか。',
  'NOTゲート（インバータ）は入力の論理値を反転して出力する。入力が1なら出力は0，入力が0なら出力は1となる。NANDゲートはAND後にNOT，NORゲートはOR後にNOTをかけたもの。NANDとNORは機能的完全性を持ち，これだけで他のすべての論理ゲートを実現できる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '入力の論理値を反転して出力する', NULL, true),
  (currval('questions_id_seq'), '2つの入力の論理積を出力する', NULL, false),
  (currval('questions_id_seq'), '2つの入力の論理和を出力する', NULL, false),
  (currval('questions_id_seq'), '2つの入力が異なるとき1を出力する', NULL, false);

-- Q314: 浮動小数点の丸め誤差
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 314, 'choice', 1, 1,
  'コンピュータで 0.1 + 0.2 を計算すると 0.3 にならない理由として最も適切なものはどれか。',
  '0.1 や 0.2 は2進数では無限小数になり，有限ビット数で正確に表現できない。そのため浮動小数点数では近似値が格納され，加算結果に丸め誤差が生じる。これは IEEE 754 規格の浮動小数点数の性質であり，金融計算などでは注意が必要（10進固定小数点型を使うなど）。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '0.1・0.2が2進数では無限小数になり正確に表現できないため', NULL, true),
  (currval('questions_id_seq'), 'CPUの演算回路に設計上のバグがあるため', NULL, false),
  (currval('questions_id_seq'), '10進数の加算には特殊な命令が必要なため', NULL, false),
  (currval('questions_id_seq'), 'オペレーティングシステムが演算を丸めるため', NULL, false);

-- Q315: 8進数から10進数への変換
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 315, 'choice', 1, 1,
  '8進数の 17 を10進数に変換した値はどれか。',
  '8進数 17 は 1×8¹ + 7×8⁰ = 8 + 7 = 15（10進数）。8進数の各桁は8の累乗に相当する。8進数は3ビットの2進数グループに対応し，0〜7の数字のみを使う。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '15', NULL, true),
  (currval('questions_id_seq'), '17', NULL, false),
  (currval('questions_id_seq'), '23', NULL, false),
  (currval('questions_id_seq'), '9', NULL, false);

-- ----------------------------------------
-- ネットワーク応用（Q316〜Q330）
-- ----------------------------------------

-- Q316: HTTPのステータスコード
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 316, 'choice', 1, 1,
  'HTTPステータスコード 404 の意味として正しいものはどれか。',
  'HTTPステータスコードは3桁の数字でレスポンスの結果を示す。200はOK（成功），301はMoved Permanently（恒久的転送），400はBad Request（クライアントエラー），404はNot Found（リソースが存在しない），500はInternal Server Error（サーバー内部エラー）を意味する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'リクエストされたリソースが存在しない', NULL, true),
  (currval('questions_id_seq'), 'リクエストの処理に成功した', NULL, false),
  (currval('questions_id_seq'), 'サーバー内部でエラーが発生した', NULL, false),
  (currval('questions_id_seq'), 'リクエストの権限がない', NULL, false);

-- Q317: IPアドレスのクラス
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 317, 'choice', 1, 1,
  'プライベートIPアドレスの範囲として正しいものはどれか。',
  'RFC 1918で定義されたプライベートIPアドレス範囲は3つ：クラスA（10.0.0.0〜10.255.255.255），クラスB（172.16.0.0〜172.31.255.255），クラスC（192.168.0.0〜192.168.255.255）。インターネット上でルーティングされず，NAT経由でインターネットに接続する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '10.0.0.0〜10.255.255.255（クラスA相当）などRFC1918で定義された範囲', NULL, true),
  (currval('questions_id_seq'), '1.0.0.0〜126.255.255.255', NULL, false),
  (currval('questions_id_seq'), '224.0.0.0〜239.255.255.255', NULL, false),
  (currval('questions_id_seq'), '240.0.0.0〜255.255.255.255', NULL, false);

-- Q318: ARPの役割
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 318, 'choice', 1, 1,
  'ARP（Address Resolution Protocol）の役割として最も適切なものはどれか。',
  'ARPはIPアドレスからMACアドレスを取得するプロトコルである。同一ネットワーク内で通信する際，宛先のMACアドレスが不明な場合にARPリクエスト（ブロードキャスト）を送信し，対象機器からARPリプライでMACアドレスを取得する。逆にMACアドレスからIPアドレスを取得するのはRARP（RARP）。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'IPアドレスからMACアドレスを取得する', NULL, true),
  (currval('questions_id_seq'), 'MACアドレスからIPアドレスを取得する', NULL, false),
  (currval('questions_id_seq'), 'ドメイン名からIPアドレスを取得する', NULL, false),
  (currval('questions_id_seq'), 'IPアドレスを動的に割り当てる', NULL, false);

-- Q319: ICMP（pingの仕組み）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 319, 'choice', 1, 1,
  'ping コマンドが使用するプロトコルとして正しいものはどれか。',
  'pingはICMP（Internet Control Message Protocol）のEcho Request/Replyを使って，ネットワークの疎通確認や往復遅延時間（RTT）を測定するコマンドである。ICMPはIPと同じネットワーク層のプロトコルで，エラー通知や診断に使われる。TCPやUDPとは異なり，ポート番号を使わない。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ICMP', NULL, true),
  (currval('questions_id_seq'), 'TCP', NULL, false),
  (currval('questions_id_seq'), 'UDP', NULL, false),
  (currval('questions_id_seq'), 'HTTP', NULL, false);

-- Q320: ポート番号とサービス
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 320, 'choice', 1, 1,
  'HTTPSサービスが標準で使用するポート番号として正しいものはどれか。',
  '主要なポート番号：HTTP=80，HTTPS=443，FTP（データ）=20，FTP（制御）=21，SSH=22，SMTP=25，DNS=53，POP3=110，IMAP=143。ウェルノウンポートは0〜1023番で，予約されたサービスに割り当てられている。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '443', NULL, true),
  (currval('questions_id_seq'), '80', NULL, false),
  (currval('questions_id_seq'), '8080', NULL, false),
  (currval('questions_id_seq'), '8443', NULL, false);

-- Q321: CDN（コンテンツデリバリネットワーク）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 321, 'choice', 1, 1,
  'CDN（Content Delivery Network）の説明として最も適切なものはどれか。',
  'CDNは地理的に分散した多数のサーバー（エッジサーバー）にコンテンツをキャッシュし，ユーザーの近くにあるサーバーからコンテンツを配信するインフラである。応答時間の短縮，オリジンサーバーの負荷軽減，可用性向上などの効果がある。動画配信や静的コンテンツ配信に広く使われる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ユーザーの近くにあるサーバーからコンテンツを配信するインフラ', NULL, true),
  (currval('questions_id_seq'), 'コンテンツを暗号化して安全に保存するサービス', NULL, false),
  (currval('questions_id_seq'), '複数のWebサーバーを1台に集約する技術', NULL, false),
  (currval('questions_id_seq'), 'Webコンテンツをリアルタイムに更新する仕組み', NULL, false);

-- Q322: マルチキャストの説明
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 322, 'choice', 1, 1,
  'ネットワーク通信のマルチキャストの説明として最も適切なものはどれか。',
  'マルチキャストは，特定のグループに属する複数の受信者に対して1回の送信で同時にデータを届ける通信方式である。1対1のユニキャスト，全員へのブロードキャストの中間的な方式。動画ストリーミングの配信など帯域を効率化したい用途に使われる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '特定のグループの複数受信者に1回の送信でデータを届ける', NULL, true),
  (currval('questions_id_seq'), '1対1でデータを送る通信方式', NULL, false),
  (currval('questions_id_seq'), 'ネットワーク上の全ての機器にデータを送る通信方式', NULL, false),
  (currval('questions_id_seq'), 'データを複数経路に分割して送る通信方式', NULL, false);

-- Q323: QoS（Quality of Service）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 323, 'choice', 1, 1,
  'ネットワークにおけるQoS（Quality of Service）の説明として最も適切なものはどれか。',
  'QoSはネットワーク上のトラフィックに優先順位を付け，帯域幅・遅延・ジッタ・パケットロスなどのサービス品質を保証する技術・仕組みである。VoIPや動画会議など遅延に敏感なリアルタイム通信を優先させ，品質を確保する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'トラフィックに優先順位を付けてサービス品質を確保する技術', NULL, true),
  (currval('questions_id_seq'), 'ネットワークのセキュリティを保証する技術', NULL, false),
  (currval('questions_id_seq'), 'ネットワーク機器の稼働率を高める技術', NULL, false),
  (currval('questions_id_seq'), 'ネットワークの物理的な品質（ケーブルなど）を管理する', NULL, false);

-- Q324: HTTPクッキー
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 324, 'choice', 1, 1,
  'Webブラウザのクッキー（Cookie）の説明として最も適切なものはどれか。',
  'クッキーはWebサーバーがブラウザに保存させる小さなデータで，セッション管理（ログイン状態の保持），ユーザー設定の保存，トラッキングなどに使われる。HTTPはステートレスなプロトコルのため，クッキーでセッションを維持する。HttpOnly属性でJSからのアクセスを防ぎ，Secure属性でHTTPS通信時のみ送信される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'Webサーバーがブラウザに保存させるセッション管理などに使うデータ', NULL, true),
  (currval('questions_id_seq'), 'ブラウザが自動的に生成するIPアドレスの別名', NULL, false),
  (currval('questions_id_seq'), 'Webページのキャッシュを管理するファイル', NULL, false),
  (currval('questions_id_seq'), 'ユーザーのパスワードを暗号化して保存するもの', NULL, false);

-- Q325: WebSocketの説明
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 325, 'choice', 1, 1,
  'WebSocketの説明として最も適切なものはどれか。',
  'WebSocketはHTTPのハンドシェイクで接続を確立した後，双方向の全二重通信を行うプロトコルである。サーバーからクライアントへのプッシュ通知が可能で，チャット，リアルタイム更新，オンラインゲームなどに活用される。通常のHTTPはクライアントがリクエストしなければサーバーから送信できない。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'HTTPから接続を確立してサーバー・クライアント間で双方向通信するプロトコル', NULL, true),
  (currval('questions_id_seq'), 'Webコンテンツを圧縮して転送するプロトコル', NULL, false),
  (currval('questions_id_seq'), 'WebサーバーとDBサーバーを接続するプロトコル', NULL, false),
  (currval('questions_id_seq'), 'WebページをSSLで暗号化するプロトコル', NULL, false);

-- Q326: SDN（Software Defined Networking）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 326, 'choice', 1, 1,
  'SDN（Software Defined Networking）の説明として最も適切なものはどれか。',
  'SDNはネットワークの制御プレーン（制御機能）とデータプレーン（転送機能）を分離し，ソフトウェア（コントローラ）によりネットワーク全体を集中制御する概念である。従来の機器ごとの個別設定から，プログラムによる柔軟・迅速なネットワーク管理が可能になる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '制御機能と転送機能を分離してソフトウェアでネットワークを集中制御する', NULL, true),
  (currval('questions_id_seq'), '物理配線をソフトウェアで仮想的に構成する技術', NULL, false),
  (currval('questions_id_seq'), 'ネットワーク機器をAIで自動管理する技術', NULL, false),
  (currval('questions_id_seq'), 'クラウド上でネットワークを構築する技術', NULL, false);

-- Q327: ポートスキャン
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 327, 'choice', 1, 1,
  'ポートスキャンの説明として最も適切なものはどれか。',
  'ポートスキャンはターゲットのホストに対してTCP/UDPの各ポートへ接続を試み，どのポートが開いている（サービスが稼働している）かを調べる行為である。セキュリティ診断や攻撃準備の偵察に使われる。不正に行うと不正アクセス禁止法に抵触する可能性がある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ホストのどのポートが開いているかを調べること', NULL, true),
  (currval('questions_id_seq'), 'ネットワーク上の通信内容を盗み見ること', NULL, false),
  (currval('questions_id_seq'), 'ルーターのルーティングテーブルを書き換えること', NULL, false),
  (currval('questions_id_seq'), 'サービスに大量のリクエストを送ること', NULL, false);

-- Q328: DNSキャッシュポイズニング
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 328, 'choice', 1, 1,
  'DNSキャッシュポイズニング攻撃の説明として最も適切なものはどれか。',
  'DNSキャッシュポイズニングはDNSキャッシュサーバーに偽の名前解決情報を注入し，正規のドメインに対して攻撃者のサーバーへ誘導する攻撃である。ユーザーが正しいURLを入力しても偽サイトに誘導されるため，フィッシングや情報窃取に利用される。DNSSECで対策できる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'DNSキャッシュに偽の名前解決情報を注入して偽サイトへ誘導する攻撃', NULL, true),
  (currval('questions_id_seq'), 'DNSサーバーに大量のクエリを送ってダウンさせる攻撃', NULL, false),
  (currval('questions_id_seq'), 'DNSサーバーの管理者パスワードを盗む攻撃', NULL, false),
  (currval('questions_id_seq'), 'DNSの通信を暗号化して傍受する攻撃', NULL, false);

-- Q329: メールセキュリティ（SPF・DKIM）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 329, 'choice', 1, 1,
  'メールのなりすまし対策として使われるSPFの説明として最も適切なものはどれか。',
  'SPF（Sender Policy Framework）は，メールの送信元ドメインのDNSにそのドメインから送信を許可するメールサーバーのIPアドレスを登録し，受信側がそれを照合することで送信元のなりすましを検出する仕組みである。DKIMはデジタル署名でメールの完全性を保証，DMARCはSPF・DKIMを統合管理する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '送信ドメインが許可するメールサーバーIPをDNSに登録してなりすましを検出する', NULL, true),
  (currval('questions_id_seq'), 'メール本文をデジタル署名で改ざんを検出する仕組み', NULL, false),
  (currval('questions_id_seq'), 'メールを暗号化してTLS送信する仕組み', NULL, false),
  (currval('questions_id_seq'), 'スパムメールをAIで自動分類する技術', NULL, false);

-- Q330: ゼロトラストネットワーク
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 330, 'choice', 1, 1,
  'ゼロトラストセキュリティモデルの基本的な考え方として最も適切なものはどれか。',
  'ゼロトラストは「デフォルトでは何も信頼しない（Never Trust, Always Verify）」というセキュリティモデルで，社内ネットワーク内にいるからといって信頼せず，すべてのアクセスを常に検証・認証する考え方である。テレワークの普及やクラウド利用の増加を背景に注目されている。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'すべてのアクセスを常に検証・認証し何も暗黙に信頼しない', NULL, true),
  (currval('questions_id_seq'), '社内ネットワーク内の通信は信頼して外部のみを検証する', NULL, false),
  (currval('questions_id_seq'), 'VPNで接続した端末は常に信頼して通信を許可する', NULL, false),
  (currval('questions_id_seq'), '管理者アカウントのみを信頼して他は制限する', NULL, false);

-- ----------------------------------------
-- AI・新技術（Q331〜Q345）
-- ----------------------------------------

-- Q331: ディープラーニングの特徴
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 331, 'choice', 1, 1,
  'ディープラーニング（深層学習）の説明として最も適切なものはどれか。',
  'ディープラーニングは多数の層（レイヤー）からなるニューラルネットワークを使った機械学習手法である。大量データから特徴量を自動的に学習でき，画像認識，音声認識，自然言語処理などで高い精度を実現している。従来の機械学習では人間が特徴量を設計する必要があったが，ディープラーニングではこれを自動化できる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '多数の層からなるニューラルネットワークで特徴量を自動学習する手法', NULL, true),
  (currval('questions_id_seq'), '人間が設計したルールに基づいて判断するAI手法', NULL, false),
  (currval('questions_id_seq'), '遺伝的アルゴリズムを使って最適解を探索する手法', NULL, false),
  (currval('questions_id_seq'), 'データを統計的に分析してパターンを発見する手法', NULL, false);

-- Q332: 教師あり学習と教師なし学習
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 332, 'choice', 1, 1,
  'クラスタリングが属する機械学習の種類として最も適切なものはどれか。',
  'クラスタリングは正解ラベルなしのデータを類似したグループ（クラスタ）に自動分類する手法で，教師なし学習に分類される。教師あり学習はラベル付きデータで学習する（分類・回帰）。強化学習はエージェントが環境との相互作用で報酬を最大化するよう学習する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '教師なし学習', NULL, true),
  (currval('questions_id_seq'), '教師あり学習', NULL, false),
  (currval('questions_id_seq'), '強化学習', NULL, false),
  (currval('questions_id_seq'), '転移学習', NULL, false);

-- Q333: 自然言語処理（NLP）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 333, 'choice', 1, 1,
  'チャットボットなどに使われる自然言語処理（NLP）の説明として最も適切なものはどれか。',
  '自然言語処理（NLP：Natural Language Processing）は人間が日常使う言語（自然言語）をコンピュータで処理・理解する技術分野。テキスト分類，感情分析，機械翻訳，質問応答，文章生成などのタスクがある。近年はTransformerアーキテクチャを使った大規模言語モデル（LLM）が高性能を実現している。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '人間が使う言語をコンピュータで処理・理解する技術', NULL, true),
  (currval('questions_id_seq'), '画像から物体を認識するAI技術', NULL, false),
  (currval('questions_id_seq'), 'ロボットの動作を制御するAI技術', NULL, false),
  (currval('questions_id_seq'), '音楽を自動生成するAI技術', NULL, false);

-- Q334: 強化学習
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 334, 'choice', 1, 1,
  '強化学習の説明として最も適切なものはどれか。',
  '強化学習はエージェントが環境と相互作用しながら，報酬を最大化する行動方針（ポリシー）を学習するアプローチである。囲碁・将棋のゲームAI，ロボットの自律制御，資源管理の最適化などに活用される。教師あり・なし学習とは異なる第3のカテゴリ。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'エージェントが報酬を最大化する行動方針を環境との相互作用で学習する', NULL, true),
  (currval('questions_id_seq'), 'ラベル付きデータを使ってモデルを学習する', NULL, false),
  (currval('questions_id_seq'), 'ラベルなしデータからパターンを発見する', NULL, false),
  (currval('questions_id_seq'), '事前学習済みモデルを別のタスクに適用する', NULL, false);

-- Q335: 過学習（オーバーフィッティング）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 335, 'choice', 1, 1,
  '機械学習における過学習（オーバーフィッティング）の説明として最も適切なものはどれか。',
  '過学習はモデルが訓練データに過剰に適合し，未知データ（テストデータ）に対しての精度が低下する状態。モデルの複雑さが高すぎる場合や訓練データが少ない場合に起きやすい。対策として，正則化，ドロップアウト，データ拡張，早期停止，交差検証などがある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '訓練データに過剰適合して未知データへの精度が低下する状態', NULL, true),
  (currval('questions_id_seq'), 'モデルが単純すぎて訓練データにも適合できない状態', NULL, false),
  (currval('questions_id_seq'), '学習率が高すぎて損失関数が収束しない状態', NULL, false),
  (currval('questions_id_seq'), 'データの偏りによってモデルが偏った予測をする状態', NULL, false);

-- Q336: 生成AI（Generative AI）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 336, 'choice', 1, 1,
  '生成AI（Generative AI）の説明として最も適切なものはどれか。',
  '生成AIは文章・画像・音声・コードなど新しいコンテンツを生成する能力を持つAIの総称。GPTなどの大規模言語モデル（LLM），画像生成モデル（Stable Diffusion，DALL-Eなど）が代表例。トレーニングデータのパターンを学習して新しいコンテンツを出力する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '文章・画像などの新しいコンテンツを自動生成するAI', NULL, true),
  (currval('questions_id_seq'), '既存データからパターンを分類・予測するだけのAI', NULL, false),
  (currval('questions_id_seq'), 'ロボットの物理的な動作を制御するAI', NULL, false),
  (currval('questions_id_seq'), 'データベースのクエリを最適化するAI', NULL, false);

-- Q337: AIの倫理（AIガバナンス）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 337, 'choice', 1, 1,
  'AIシステムの公平性（Fairness）が問題になる主な原因として最も適切なものはどれか。',
  'AIの公平性問題の主な原因はトレーニングデータの偏り（バイアス）である。過去の差別的な判断を含むデータで学習すると，AIも同様の偏った判断をする（例：採用AIが性別や人種で差別する）。AI倫理では，公平性，透明性，説明可能性，プライバシー保護などが重要な要素として議論されている。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'トレーニングデータに含まれる偏り（バイアス）', NULL, true),
  (currval('questions_id_seq'), 'AIモデルの計算量が多すぎること', NULL, false),
  (currval('questions_id_seq'), 'インターネット接続が不安定であること', NULL, false),
  (currval('questions_id_seq'), 'AIの処理速度が遅すぎること', NULL, false);

-- Q338: エッジコンピューティング
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 338, 'choice', 1, 1,
  'エッジコンピューティングの説明として最も適切なものはどれか。',
  'エッジコンピューティングはデータが生成されるデバイスや基地局など，ネットワークの「エッジ（端）」に近い場所でデータ処理を行う分散コンピューティングの形態。クラウドへの通信遅延を削減し，リアルタイム処理が可能になる。自動運転，工場の製造ライン監視，IoTデバイス管理などに有効。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'データが生成される端末・基地局に近い場所で処理を行う分散コンピューティング', NULL, true),
  (currval('questions_id_seq'), 'クラウドの中心（コア）で集中処理する方式', NULL, false),
  (currval('questions_id_seq'), 'ネットワークの境界（境界ルーター）でセキュリティ処理を行う方式', NULL, false),
  (currval('questions_id_seq'), '複数のクラウドを組み合わせてマルチクラウド構成にする方式', NULL, false);

-- Q339: 量子コンピュータ
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 339, 'choice', 1, 1,
  '量子コンピュータの特徴として最も適切なものはどれか。',
  '量子コンピュータは量子力学の重ね合わせ・もつれなどの性質を使った計算機で，量子ビット（qubit）を使う。古典コンピュータが苦手な特定の問題（最適化，素因数分解，量子シミュレーションなど）を指数的に高速で解くポテンシャルを持つ。現在はまだ誤り訂正など技術的課題が多い。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '量子力学の重ね合わせを利用して特定の問題を高速に解くコンピュータ', NULL, true),
  (currval('questions_id_seq'), '複数のCPUコアを使って並列計算を行うスーパーコンピュータ', NULL, false),
  (currval('questions_id_seq'), '光の性質を使ってデータを処理する光コンピュータ', NULL, false),
  (currval('questions_id_seq'), '人間の脳を模倣したニューロモーフィックチップを使うコンピュータ', NULL, false);

-- Q340: RPA（ロボティック・プロセス・オートメーション）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 340, 'choice', 1, 1,
  'RPA（Robotic Process Automation）の説明として最も適切なものはどれか。',
  'RPAはソフトウェアロボットが人間のコンピュータ操作（データ入力，コピー&ペースト，Web操作など）を模倣して定型業務を自動化する技術である。プログラミング不要または少ないコーディングで実装でき，データ転記，請求書処理，レポート作成などの繰り返し業務の効率化に活用される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ソフトウェアロボットが人間のコンピュータ操作を模倣して業務を自動化する', NULL, true),
  (currval('questions_id_seq'), '物理的なロボットを使って製造ラインを自動化する', NULL, false),
  (currval('questions_id_seq'), 'AIが人間の判断を完全に代替してビジネスを運営する', NULL, false),
  (currval('questions_id_seq'), '機械学習で業務データを分析してレポートを作成する', NULL, false);

-- Q341: デジタルツイン
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 341, 'choice', 1, 1,
  'デジタルツインの説明として最も適切なものはどれか。',
  'デジタルツインは物理的な機械・製品・設備などのリアルタイムのデータを収集し，デジタル空間に忠実な仮想モデル（ツイン＝双子）を作成する技術。仮想モデルで故障予測・性能最適化・設計改善のシミュレーションを行い，物理世界へフィードバックする。製造業，インフラ管理，都市計画などで活用。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '物理的な実体のリアルタイムデータを使ってデジタル空間に仮想モデルを構築する技術', NULL, true),
  (currval('questions_id_seq'), '同一のソフトウェアを2台のサーバーで冗長化する技術', NULL, false),
  (currval('questions_id_seq'), 'データベースを2か所に同期複製する技術', NULL, false),
  (currval('questions_id_seq'), 'ユーザーの行動をAIが予測して先読みする技術', NULL, false);

-- Q342: XR（拡張現実・仮想現実）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 342, 'choice', 1, 1,
  'AR（拡張現実）の説明として最も適切なものはどれか。',
  'AR（Augmented Reality：拡張現実）は現実の視野に仮想情報を重ねて表示する技術。スマートフォンのカメラ映像にナビや商品情報を重ねる用途などがある。VR（Virtual Reality：仮想現実）は完全に仮想の空間に没入する技術。MR（Mixed Reality：複合現実）は現実と仮想が相互作用する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '現実の視野に仮想情報を重ねて表示する技術', NULL, true),
  (currval('questions_id_seq'), '完全に仮想の空間に没入して体験する技術', NULL, false),
  (currval('questions_id_seq'), '現実と仮想が相互に影響し合う複合的な技術', NULL, false),
  (currval('questions_id_seq'), 'AIが現実の映像を解析して危険を検知する技術', NULL, false);

-- Q343: 5G通信の特徴
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 343, 'choice', 1, 1,
  '5G（第5世代移動通信システム）の特徴として最も適切なものはどれか。',
  '5Gは4Gと比べて，①超高速（最大20Gbps程度），②超低遅延（1ms程度），③多数同時接続（100万デバイス/km²）が特徴。自動運転，遠隔医療，スマートファクトリー，IoTの大規模展開などへの活用が期待される。ミリ波帯を使うため高速だが通信距離が短い特性がある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '超高速・超低遅延・多数同時接続を特徴とする移動通信規格', NULL, true),
  (currval('questions_id_seq'), '4Gの5倍程度の速度と広いカバレッジを特徴とする', NULL, false),
  (currval('questions_id_seq'), '音声通話専用に最適化された第5世代通信規格', NULL, false),
  (currval('questions_id_seq'), 'WiFiとBluetoothを統合した第5世代通信規格', NULL, false);

-- Q344: APIエコノミー
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 344, 'choice', 1, 1,
  'APIエコノミーの説明として最も適切なものはどれか。',
  'APIエコノミーは企業がAPIを通じてサービス・データ・機能を外部に公開し，他社サービスと連携・相互活用することで新たなビジネス価値を創出する経済圏のこと。SNSのログイン連携，地図API，決済API，天気APIなど，様々なAPIが組み合わさってサービスを構成する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'APIを通じてサービスを外部公開・連携して新たな価値を生む経済圏', NULL, true),
  (currval('questions_id_seq'), 'APIの開発コストを削減するための経済的な手法', NULL, false),
  (currval('questions_id_seq'), 'APIの品質を評価する業界の経済基準', NULL, false),
  (currval('questions_id_seq'), 'APIを規制して安全に管理するための法律・規制体系', NULL, false);

-- Q345: データ活用（オープンデータ）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 345, 'choice', 1, 1,
  'オープンデータの説明として最も適切なものはどれか。',
  'オープンデータとは，誰でも自由に利用・加工・再配布できるよう公開されたデータのことである。政府・自治体が統計データや地理情報を公開する「行政オープンデータ」が代表的。二次利用可能なライセンス，機械可読形式での提供などが条件となる。イノベーション促進や行政の透明化が期待される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '誰でも自由に利用・加工・再配布できるよう公開されたデータ', NULL, true),
  (currval('questions_id_seq'), 'インターネット上で誰でも閲覧できるWebページのデータ', NULL, false),
  (currval('questions_id_seq'), '企業が社員に公開する社内データベース', NULL, false),
  (currval('questions_id_seq'), '暗号化を解除して閲覧できるようにしたデータ', NULL, false);

-- ----------------------------------------
-- プロジェクト管理・開発手法応用（Q346〜Q350）
-- ----------------------------------------

-- Q346: スクラムの役割（プロダクトオーナー）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 346, 'choice', 1, 1,
  'スクラムにおけるプロダクトオーナーの主な役割として最も適切なものはどれか。',
  'スクラムの3つの役割：プロダクトオーナー（プロダクトバックログの管理・優先順位付け，ビジネス価値の最大化），スクラムマスター（スクラムの進行支援・障害排除，チームが機能するよう支援），開発チーム（実際の開発作業）。プロダクトオーナーは何を作るかを決め，スクラムマスターはどう進めるかを支援する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'プロダクトバックログを管理して開発の優先順位を決める', NULL, true),
  (currval('questions_id_seq'), 'スクラムプロセスを支援して障害を取り除く', NULL, false),
  (currval('questions_id_seq'), '実際のコーディングやテストを行う', NULL, false),
  (currval('questions_id_seq'), 'プロジェクトの予算と契約を管理する', NULL, false);

-- Q347: カンバンの説明
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 347, 'choice', 1, 1,
  'カンバン（Kanban）ボードの説明として最も適切なものはどれか。',
  'カンバンボードは作業項目（タスク）を列（「未着手」「進行中」「完了」など）に分けて視覚化するツール。WIP制限（Work In Progress：作業中タスクの上限）を設けて，仕掛かり作業の増加を防ぎ，フローを最適化する。スクラムのスプリントと異なり，継続的な流れで作業を管理する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'タスクの状態を視覚化してWIP制限でフローを最適化するツール', NULL, true),
  (currval('questions_id_seq'), 'プロジェクトのスケジュールを棒グラフで管理するツール', NULL, false),
  (currval('questions_id_seq'), 'ソースコードのバージョンを管理するツール', NULL, false),
  (currval('questions_id_seq'), 'バグを登録・追跡するためのチケット管理ツール', NULL, false);

-- Q348: デブオプス（DevOps）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 348, 'choice', 1, 1,
  'DevOpsの説明として最も適切なものはどれか。',
  'DevOpsは開発（Development）と運用（Operations）の連携・協力を強化し，ソフトウェアの開発・テスト・デプロイを自動化して，高品質なソフトウェアを迅速かつ継続的に提供する文化・手法・ツールセットの総称。CI/CDパイプライン，IaC（Infrastructure as Code），自動化テストなどが中心的な手法。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '開発と運用が連携してソフトウェアを継続的・迅速に提供する文化と手法', NULL, true),
  (currval('questions_id_seq'), '開発チームが運用業務も兼任するチーム体制', NULL, false),
  (currval('questions_id_seq'), '開発環境と本番環境を完全に同一にする技術', NULL, false),
  (currval('questions_id_seq'), '開発者がデータベースの運用も担当する手法', NULL, false);

-- Q349: フィーチャーフラグ
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 349, 'choice', 1, 1,
  'フィーチャーフラグ（機能フラグ）の説明として最も適切なものはどれか。',
  'フィーチャーフラグはコードのデプロイと機能のリリースを分離する技術で，フラグ（設定値）のON/OFFで機能を動的に有効・無効にできる。新機能を一部ユーザーのみに公開（A/Bテスト），本番環境で安全にテスト，問題発生時の即座の無効化などに活用される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'コードのデプロイと機能のリリースを分離してフラグで機能を制御する技術', NULL, true),
  (currval('questions_id_seq'), 'ソースコードの変更履歴にタグを付ける技術', NULL, false),
  (currval('questions_id_seq'), 'UIのボタン・フラグアイコンのデザインパターン', NULL, false),
  (currval('questions_id_seq'), 'プログラムの処理分岐をフラグ変数で制御する基本的な手法', NULL, false);

-- Q350: ペアプログラミング
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 350, 'choice', 1, 1,
  'ペアプログラミングの説明として最も適切なものはどれか。',
  'ペアプログラミングはXP（エクストリームプログラミング）のプラクティスの一つで，2人の開発者が1台のコンピュータを使い，ドライバー（コードを書く人）とナビゲーター（レビューしながら指示する人）を交互に担当しながら開発する手法。コード品質向上，知識共有，バグ早期発見などの効果がある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '2人がドライバーとナビゲーターを交互に担当して共同でコードを書く手法', NULL, true),
  (currval('questions_id_seq'), '2人のプログラマがそれぞれ同じ機能を別々に実装して比較する手法', NULL, false),
  (currval('questions_id_seq'), 'ペアでコードレビューを行う非同期のレビュー手法', NULL, false),
  (currval('questions_id_seq'), 'プログラマとテスターがペアになって同時に開発とテストを行う手法', NULL, false);
-- ----------------------------------------
-- 科目A（section_id=1）Q351〜Q400
-- ----------------------------------------

-- ----------------------------------------
-- 法務・コンプライアンス応用（Q351〜Q365）
-- ----------------------------------------

-- Q351: 不正アクセス禁止法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 351, 'choice', 1, 1,
  '不正アクセス禁止法で禁止されている行為として最も適切なものはどれか。',
  '不正アクセス禁止法（正式名：不正アクセス行為の禁止等に関する法律）は，他人のIDとパスワードを使ったログイン，セキュリティホールを利用した不正侵入，フィッシングによる認証情報の不正取得などを禁止する。これらは認証を突破した「不正アクセス行為」として処罰対象となる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '他人のIDとパスワードを使って無断でシステムにログインする行為', NULL, true),
  (currval('questions_id_seq'), '自社のサーバーにアクセス制限を設ける行為', NULL, false),
  (currval('questions_id_seq'), '公開されているWebサイトのHTMLを閲覧する行為', NULL, false),
  (currval('questions_id_seq'), '自分のアカウントで正規のサービスを利用する行為', NULL, false);

-- Q352: 電子署名法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 352, 'choice', 1, 1,
  '電子署名法の目的として最も適切なものはどれか。',
  '電子署名法（電子署名及び認証業務に関する法律）は，電磁的記録（電子文書）に付された電子署名が本人による署名・押印と同等の法的効力を持つことを定め，電子取引の法的有効性を確保する法律。電子契約，電子申請などに根拠を与える。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '電子署名が本人の署名・押印と同等の法的効力を持つことを定める', NULL, true),
  (currval('questions_id_seq'), 'インターネット上の電子商取引を規制する', NULL, false),
  (currval('questions_id_seq'), 'デジタル証明書の技術仕様を規定する', NULL, false),
  (currval('questions_id_seq'), '電子メールの暗号化方式を標準化する', NULL, false);

-- Q353: サイバーセキュリティ基本法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 353, 'choice', 1, 1,
  'サイバーセキュリティ基本法の説明として最も適切なものはどれか。',
  'サイバーセキュリティ基本法（2014年成立）は，サイバーセキュリティに関する施策を総合的・効果的に推進するための基本的な枠組みを定めた法律。内閣サイバーセキュリティセンター（NISC）の設置根拠となり，国・地方公共団体・重要インフラ事業者などの責務を規定する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'サイバーセキュリティ施策の基本方針と関係者の責務を定めた法律', NULL, true),
  (currval('questions_id_seq'), 'ハッキング行為を刑事罰の対象とする法律', NULL, false),
  (currval('questions_id_seq'), '個人情報のサイバー攻撃からの保護を定めた法律', NULL, false),
  (currval('questions_id_seq'), 'ウイルス作成・配布を禁止する法律', NULL, false);

-- Q354: 刑法におけるウイルス作成罪
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 354, 'choice', 1, 1,
  '不正指令電磁的記録作成罪（いわゆるウイルス作成罪）が規定されている法律はどれか。',
  '不正指令電磁的記録に関する罪は，2011年の刑法改正で新設された。コンピュータウイルス・マルウェアの作成・提供・供用・取得・保管を処罰する規定。意図に反する動作をさせる目的でのプログラムの作成・配布などが対象。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '刑法', NULL, true),
  (currval('questions_id_seq'), '不正アクセス禁止法', NULL, false),
  (currval('questions_id_seq'), '個人情報保護法', NULL, false),
  (currval('questions_id_seq'), 'サイバーセキュリティ基本法', NULL, false);

-- Q355: 産業財産権の種類
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 355, 'choice', 1, 1,
  '産業財産権（工業所有権）に含まれないものはどれか。',
  '産業財産権は特許権（発明），実用新案権（考案），意匠権（デザイン），商標権（マーク・ブランド）の4種類で，特許庁に出願・登録が必要。著作権は著作物の創作と同時に自動発生する「知的財産権」の一種だが，産業財産権には含まれない。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '著作権', NULL, true),
  (currval('questions_id_seq'), '特許権', NULL, false),
  (currval('questions_id_seq'), '実用新案権', NULL, false),
  (currval('questions_id_seq'), '商標権', NULL, false);

-- Q356: 個人情報保護法の義務（利用目的）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 356, 'choice', 1, 1,
  '個人情報保護法において，個人情報取扱事業者が守らなければならない義務として最も適切なものはどれか。',
  '個人情報保護法の主な義務：①利用目的の特定・公表，②目的外利用の禁止，③本人の同意なく第三者提供禁止，④安全管理措置，⑤本人からの開示・訂正・削除・利用停止請求への対応，⑥個人情報漏洩時の報告・通知義務（2022年改正）など。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '個人情報の利用目的を特定して本人に通知・公表する', NULL, true),
  (currval('questions_id_seq'), 'すべての個人情報を暗号化して保存する', NULL, false),
  (currval('questions_id_seq'), '個人情報の収集を原則禁止する', NULL, false),
  (currval('questions_id_seq'), '個人情報は収集後1年以内に削除する', NULL, false);

-- Q357: 労働基準法と情報システム
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 357, 'choice', 1, 1,
  '裁量労働制の説明として最も適切なものはどれか。',
  '裁量労働制は実際の労働時間にかかわらず，あらかじめ定めた「みなし労働時間」が働いたものとみなす制度。業務の遂行方法や時間配分を労働者の裁量に委ねる。デザイナー，システムエンジニア，研究者など，業務の性質上労働時間の管理が馴染みにくい職種に適用される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '実際の労働時間にかかわらずみなし労働時間が適用される制度', NULL, true),
  (currval('questions_id_seq'), '残業代が一切発生しない制度', NULL, false),
  (currval('questions_id_seq'), 'テレワーク専用の労働時間管理制度', NULL, false),
  (currval('questions_id_seq'), '所定時間内に業務を完結させれば帰宅できる制度', NULL, false);

-- Q358: 独占禁止法とIT
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 358, 'choice', 1, 1,
  '独占禁止法で規制される行為として最も適切なものはどれか。',
  '独占禁止法（私的独占の禁止及び公正取引の確保に関する法律）はカルテル（価格協定など），私的独占，不公正な取引方法などを禁止し，公正な競争を確保する法律。IT業界では，プラットフォーム企業の優越的地位の乱用や，競合他社の排除行為なども規制対象となる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '競合他社と価格を事前に取り決めるカルテル行為', NULL, true),
  (currval('questions_id_seq'), '自社製品の価格を自由に設定する行為', NULL, false),
  (currval('questions_id_seq'), '法人を設立して新規事業を開始する行為', NULL, false),
  (currval('questions_id_seq'), '自社のシェアを高めるための品質向上活動', NULL, false);

-- Q359: 下請法（下請代金支払遅延等防止法）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 359, 'choice', 1, 1,
  '下請代金支払遅延等防止法（下請法）の目的として最も適切なものはどれか。',
  '下請法は親事業者と下請事業者の取引において，親事業者による不当な下請代金の不払い・遅延，不当返品，買いたたきなどを禁止し，下請事業者を保護する法律。IT業界の外注・委託開発にも適用される。親事業者は発注内容・代金・支払期日を記載した書面を交付する義務がある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '下請事業者に対する不当な扱いを禁止して保護する', NULL, true),
  (currval('questions_id_seq'), '下請事業者の品質基準を統一化する', NULL, false),
  (currval('questions_id_seq'), '下請事業者の設立・廃業を管理する', NULL, false),
  (currval('questions_id_seq'), '下請事業者の労働条件を規制する', NULL, false);

-- Q360: 消費者契約法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 360, 'choice', 1, 1,
  '消費者契約法において，消費者が契約を取り消せる場合として最も適切なものはどれか。',
  '消費者契約法は事業者と消費者の間の情報格差・交渉力格差を是正し，消費者を保護する法律。不実告知（事実と異なることを告げた），断定的判断の提供（不確かなことを確実と言った），不退去・退去妨害などにより消費者が誤認・困惑して契約した場合，契約を取り消せる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '事業者が不実告知をして消費者が誤認した場合', NULL, true),
  (currval('questions_id_seq'), '商品の価格が予想より高かった場合', NULL, false),
  (currval('questions_id_seq'), '消費者が自由な意思で契約した場合', NULL, false),
  (currval('questions_id_seq'), '契約後に同じ商品がより安く販売された場合', NULL, false);

-- Q361: プロバイダ責任制限法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 361, 'choice', 1, 1,
  'プロバイダ責任制限法の目的として最も適切なものはどれか。',
  'プロバイダ責任制限法（特定電気通信役務提供者の損害賠償責任の制限及び発信者情報の開示に関する法律）は，インターネット上の情報流通によりプロバイダが負う損害賠償責任の範囲を明確化し，被害者が発信者情報の開示を請求できる手続きを定めた法律。誹謗中傷の投稿者特定などに活用される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'プロバイダの損害賠償責任の範囲と発信者情報開示手続きを定める', NULL, true),
  (currval('questions_id_seq'), 'インターネットサービスの価格を規制する', NULL, false),
  (currval('questions_id_seq'), 'インターネット通信の速度基準を定める', NULL, false),
  (currval('questions_id_seq'), 'プロバイダへの不正アクセスを罰する', NULL, false);

-- Q362: GDPRの概要
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 362, 'choice', 1, 1,
  'GDPR（General Data Protection Regulation）の説明として最も適切なものはどれか。',
  'GDPRはEU（欧州連合）が2018年に施行した個人データ保護の規則。EU域内の個人データを取り扱う企業はEU域外（日本企業を含む）でも適用対象。データ主体の権利（忘れられる権利，データポータビリティ権など），違反時の多額の制裁金（売上の4%または2000万ユーロの高い方）が特徴。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'EU域内の個人データ保護を定めた規則で日本企業も対象になりうる', NULL, true),
  (currval('questions_id_seq'), '米国が定めた個人データ保護の連邦法', NULL, false),
  (currval('questions_id_seq'), 'ISO（国際標準化機構）が定めた個人情報管理規格', NULL, false),
  (currval('questions_id_seq'), '国連が定めたインターネット上のプライバシー条約', NULL, false);

-- Q363: SOX法（内部統制）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 363, 'choice', 1, 1,
  'J-SOX（日本版SOX法・金融商品取引法）において企業に求められることとして最も適切なものはどれか。',
  'J-SOXは2008年施行。上場企業等に財務報告に係る内部統制の整備・評価・報告を義務付ける。「内部統制報告書」と「内部統制監査報告書」の提出が必要。IT全般統制（ITシステムの管理），業務プロセス統制の評価が重要。財務諸表の信頼性確保と不正防止が目的。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '財務報告に係る内部統制を整備・評価・報告すること', NULL, true),
  (currval('questions_id_seq'), '全社員のセキュリティ教育を年1回以上実施すること', NULL, false),
  (currval('questions_id_seq'), '個人情報の取り扱いについて第三者認証を取得すること', NULL, false),
  (currval('questions_id_seq'), '情報システムの災害対策計画を作成すること', NULL, false);

-- Q364: OECDプライバシー8原則
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 364, 'choice', 1, 1,
  'OECDプライバシーガイドラインの8原則の一つ「目的明確化の原則」の説明として最も適切なものはどれか。',
  'OECDプライバシー8原則：①収集制限，②データ内容，③目的明確化（収集目的を明確にして目的達成後は別目的で利用しない），④利用制限，⑤安全保護，⑥公開，⑦個人参加，⑧責任。日本の個人情報保護法の基礎となっており，GDPRなど各国の個人情報法制に影響を与えた。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '個人データの収集目的を明確にして，その目的以外には利用しない', NULL, true),
  (currval('questions_id_seq'), '収集する個人データは最小限にとどめる', NULL, false),
  (currval('questions_id_seq'), '個人データへの不正アクセスを防ぐ安全対策を講じる', NULL, false),
  (currval('questions_id_seq'), '本人が自己のデータを確認・訂正できる権利を保障する', NULL, false);

-- Q365: 特定商取引法とインターネット取引
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 365, 'choice', 1, 1,
  '特定商取引法のインターネット通販（通信販売）に関する規定として最も適切なものはどれか。',
  '特定商取引法はインターネット通販（通信販売）における事業者の表示義務（販売価格，支払方法，返品条件など）と誇大広告の禁止を定める。通信販売にはクーリングオフは適用されないが，事業者が返品特約を表示していない場合は商品到着後8日以内の返品が可能。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '販売価格・支払方法・返品条件などの表示義務と誇大広告禁止を定める', NULL, true),
  (currval('questions_id_seq'), 'インターネット通販にはクーリングオフが必ず適用される', NULL, false),
  (currval('questions_id_seq'), '個人間の中古品売買も特定商取引法の規制対象となる', NULL, false),
  (currval('questions_id_seq'), 'インターネット通販の価格には上限規制がある', NULL, false);

-- ----------------------------------------
-- 品質管理・統計・その他（Q366〜Q400）
-- ----------------------------------------

-- Q366: QC七つ道具（パレート図）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 366, 'choice', 1, 1,
  'パレート図の説明として最も適切なものはどれか。',
  'パレート図はQC七つ道具の一つで，不良・欠陥・苦情などの項目を件数の多い順に棒グラフで並べ，累積比率を折れ線で示した図。重点管理すべき問題（全体の8割を占める2割の要因）を視覚的に特定するために使う。パレートの法則（80:20の法則）に基づく。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '問題を件数順に棒グラフで並べ累積比率で重点項目を特定する図', NULL, true),
  (currval('questions_id_seq'), '2つの特性値の相関関係を点で表した図', NULL, false),
  (currval('questions_id_seq'), 'データのばらつきを度数分布として表した図', NULL, false),
  (currval('questions_id_seq'), '原因と結果の関係を魚の骨の形で表した図', NULL, false);

-- Q367: QC七つ道具（特性要因図）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 367, 'choice', 1, 1,
  '特性要因図（フィッシュボーン図）の説明として最も適切なものはどれか。',
  '特性要因図は結果（特性）に影響する原因（要因）を系統的に整理した図で，魚の骨のような形をしている（フィッシュボーン図，石川ダイアグラムとも呼ぶ）。品質問題の原因分析や改善活動で使われる。4M（Man・Machine・Material・Method）などの主因から詳細な要因を枝分かれして記述する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '結果に影響する原因を魚の骨の形で系統的に整理した図', NULL, true),
  (currval('questions_id_seq'), '不良件数を重要度順に並べて重点管理項目を特定する図', NULL, false),
  (currval('questions_id_seq'), 'データの分布を棒グラフで表したヒストグラム', NULL, false),
  (currval('questions_id_seq'), '管理限界線を設けてプロセスの安定性を監視する図', NULL, false);

-- Q368: 管理図（コントロールチャート）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 368, 'choice', 1, 1,
  '管理図（コントロールチャート）の説明として最も適切なものはどれか。',
  '管理図はプロセスの品質特性値の時系列変化を折れ線グラフで表し，上方管理限界（UCL）・下方管理限界（LCL）・中心線（CL）を設けて，プロセスが統計的に安定しているかを監視するQC七つ道具の一つ。管理限界を超えた点や傾向が見られれば異常と判断し原因を調査する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '管理限界線を設けてプロセスの安定性を時系列で監視する図', NULL, true),
  (currval('questions_id_seq'), '問題の原因を重要度順に並べた図', NULL, false),
  (currval('questions_id_seq'), '2つの変数の相関関係を散布図で表した図', NULL, false),
  (currval('questions_id_seq'), 'プロセスの手順を流れ図で表した図', NULL, false);

-- Q369: 散布図と相関
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 369, 'choice', 1, 1,
  '散布図において，点が右上がりに集まっている場合，2つの変数の関係として最も適切なものはどれか。',
  '散布図は2つの変数の関係を点で表した図。点が右上がりに集まると「正の相関」（一方が増えると他方も増える），右下がりなら「負の相関」（一方が増えると他方は減る），散らばっていれば「相関なし」。相関係数が1に近いほど強い正の相関，−1に近いほど強い負の相関。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '正の相関関係がある', NULL, true),
  (currval('questions_id_seq'), '負の相関関係がある', NULL, false),
  (currval('questions_id_seq'), '相関関係がない', NULL, false),
  (currval('questions_id_seq'), '因果関係がある', NULL, false);

-- Q370: 平均・中央値・最頻値
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 370, 'choice', 1, 1,
  '5つのデータ「3, 7, 5, 7, 3」の中央値（メジアン）はどれか。',
  '中央値はデータを昇順に並べたとき真ん中に位置する値。5つのデータを昇順に並べると「3, 3, 5, 7, 7」。5個（奇数）なので3番目の値が中央値 → 5。平均値は（3+7+5+7+3）÷5 = 25÷5 = 5。最頻値は最も多く出る値 → 3と7（両方2回）。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '5', NULL, true),
  (currval('questions_id_seq'), '7', NULL, false),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '4', NULL, false);

-- Q371: 標準偏差の意味
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 371, 'choice', 1, 1,
  '標準偏差の説明として最も適切なものはどれか。',
  '標準偏差はデータのばらつきを表す統計量で，各データと平均値の差（偏差）を2乗した値の平均（分散）の正の平方根。標準偏差が大きいほどデータのばらつきが大きく，小さいほど平均に集中している。品質管理やシステムの性能評価などで使われる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'データのばらつき具合を表す統計量', NULL, true),
  (currval('questions_id_seq'), 'データの合計をデータ数で割った値', NULL, false),
  (currval('questions_id_seq'), 'データを昇順に並べたときの中央の値', NULL, false),
  (currval('questions_id_seq'), 'データの最大値と最小値の差', NULL, false);

-- Q372: サンプリングの種類
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 372, 'choice', 1, 1,
  '無作為（ランダム）サンプリングの利点として最も適切なものはどれか。',
  '無作為サンプリングは全データから偏りなくランダムに標本を抽出する方法。母集団を代表する標本が得られやすく，統計的推測（母集団全体の推定・仮説検定）の信頼性が高い。一方，層化抽出法はグループ（層）ごとにサンプリングして均等性を高める手法。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '母集団を代表する標本が得られやすく統計的推測の信頼性が高い', NULL, true),
  (currval('questions_id_seq'), '収集コストが最も低い', NULL, false),
  (currval('questions_id_seq'), '必ず母集団と同じ分布になる', NULL, false),
  (currval('questions_id_seq'), '少ないデータで精度の高い結果が得られる', NULL, false);

-- Q373: プロセス能力指数（Cp）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 373, 'choice', 1, 1,
  'プロセス能力指数（Cp）が1.33以上の場合，プロセスはどのような状態といえるか。',
  'プロセス能力指数Cpは規格幅/（6×標準偏差）で計算する。Cp<1は能力不足（不良品が多い），Cp=1は境界，Cp≥1.33は十分な能力があり品質が安定している状態（一般的な合格基準），Cp≥1.67は非常に高い能力。製造業や品質管理でプロセスの安定性評価に使われる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '品質が安定していてプロセス能力が十分な状態', NULL, true),
  (currval('questions_id_seq'), 'プロセス能力が不足していて改善が必要な状態', NULL, false),
  (currval('questions_id_seq'), 'プロセスが管理限界を超えた異常な状態', NULL, false),
  (currval('questions_id_seq'), 'データが正規分布に従っていない状態', NULL, false);

-- Q374: システムテストの種類（負荷テスト）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 374, 'choice', 1, 1,
  '負荷テスト（ロードテスト）の目的として最も適切なものはどれか。',
  '負荷テストは想定される最大同時ユーザー数や処理量でシステムを動作させ，性能（応答時間・スループット）や安定性を確認するテストである。ストレステストは限界を超える負荷をかけてシステムの破綻点を探す。パフォーマンステストは性能全般を測定する総称として使われることもある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '想定最大負荷下でのシステムの性能と安定性を確認する', NULL, true),
  (currval('questions_id_seq'), 'バグを検出してコードの欠陥を修正する', NULL, false),
  (currval('questions_id_seq'), 'セキュリティの脆弱性を発見する', NULL, false),
  (currval('questions_id_seq'), 'ユーザーの使いやすさを評価する', NULL, false);

-- Q375: 受入テスト（UAT）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 375, 'choice', 1, 1,
  '受入テスト（UAT：User Acceptance Testing）の説明として最も適切なものはどれか。',
  '受入テストはシステムを本番環境（または本番相当環境）に導入する前に，発注者・エンドユーザーが実際に操作して要件を満たしているかを確認するテストである。開発側ではなくユーザー側が主体となって実施し，システムを正式に受け入れるかどうかの判断基準となる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ユーザーが要件を満たしているか確認して本番導入の可否を判断するテスト', NULL, true),
  (currval('questions_id_seq'), '開発者がコードの内部品質を確認するテスト', NULL, false),
  (currval('questions_id_seq'), '自動化ツールで全ての機能をテストするリグレッションテスト', NULL, false),
  (currval('questions_id_seq'), '隣接モジュール間のインタフェースを確認するテスト', NULL, false);

-- Q376: アクティビティ図（UML）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 376, 'choice', 1, 1,
  'UMLのアクティビティ図が表現するものとして最も適切なものはどれか。',
  'UMLのアクティビティ図は業務プロセスやアルゴリズムの処理フロー（開始→処理→条件分岐→並行処理→終了）を表現する動的図。フローチャートに似ているが，並行処理（フォーク・ジョイン）も表現できる。ユースケース図はユーザーとシステムの相互作用，状態機械図は状態遷移を表す。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '処理の流れと条件分岐・並行処理を表したフロー', NULL, true),
  (currval('questions_id_seq'), 'ユーザーとシステムの相互作用の概要', NULL, false),
  (currval('questions_id_seq'), 'クラスとクラス間の静的な関係', NULL, false),
  (currval('questions_id_seq'), 'オブジェクトの状態と状態遷移', NULL, false);

-- Q377: ユースケース図
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 377, 'choice', 1, 1,
  'UMLのユースケース図が表現するものとして最も適切なものはどれか。',
  'ユースケース図はシステムの外部アクター（ユーザー・外部システムなど）とシステムが提供する機能（ユースケース）の関係を表す図。要件定義フェーズで「誰が」「何をする」かを整理するために使われる。システムの境界を楕円形のユースケースと人型のアクターで表現する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'アクターとシステムが提供する機能（ユースケース）の関係', NULL, true),
  (currval('questions_id_seq'), 'クラスとその関係を表す静的な構造', NULL, false),
  (currval('questions_id_seq'), '処理の流れと分岐を表すフロー', NULL, false),
  (currval('questions_id_seq'), 'オブジェクト間のメッセージ交換を時系列で表す', NULL, false);

-- Q378: ソフトウェアメトリクス
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 378, 'choice', 1, 1,
  'ソフトウェアの循環的複雑度（マクケーブの複雑度）が高い場合に予想される問題として最も適切なものはどれか。',
  '循環的複雑度（CC）はプログラムの分岐（if/while/forなど）の数で複雑さを計測するメトリクス。CCが高いとテストすべきパスが多く，テストが困難になり，バグが生まれやすくなる。一般にCC≤10が目安とされる。複雑度が高いコードはリファクタリングで分割することが推奨される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'テストが困難になりバグが生まれやすい', NULL, true),
  (currval('questions_id_seq'), '実行速度が低下する', NULL, false),
  (currval('questions_id_seq'), 'メモリ消費量が増大する', NULL, false),
  (currval('questions_id_seq'), 'コンパイルエラーが増える', NULL, false);

-- Q379: エラープルーフ（ポカヨケ）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 379, 'choice', 1, 1,
  'ポカヨケ（エラープルーフィング）の説明として最も適切なものはどれか。',
  'ポカヨケはトヨタ生産方式（TPS）から生まれた概念で，人為的なミスが発生しても不良品が次工程に流れないよう，機械的・物理的な仕組みで誤りを防ぐ設計思想。IT分野では，入力フォームのバリデーション，型システム（型安全），ワンウェイ設計（逆向きに接続できない設計）などがポカヨケに相当する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '人為的ミスが起きても不良が発生しないよう仕組みで防ぐ設計', NULL, true),
  (currval('questions_id_seq'), '作業者のミスを発見した際に作業を停止させる仕組み', NULL, false),
  (currval('questions_id_seq'), 'ミスを犯した作業者を教育・訓練する手法', NULL, false),
  (currval('questions_id_seq'), 'ミスの発生を統計的に予測する品質管理手法', NULL, false);

-- Q380: サービスデスクの役割
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 380, 'choice', 1, 1,
  'ITILにおけるサービスデスクの主な役割として最も適切なものはどれか。',
  'サービスデスクはITILにおいてユーザーとITサービスプロバイダの単一の窓口（SPOC：Single Point of Contact）として機能する。インシデントの受付・記録・初期対応，サービスリクエストの処理，ユーザーへの情報提供などを担う。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ユーザーとITサービス間の単一窓口としてインシデント等を受付・対応する', NULL, true),
  (currval('questions_id_seq'), 'システムのセキュリティ監視とインシデント対応を行う', NULL, false),
  (currval('questions_id_seq'), 'ITインフラの設計・構築を担当する', NULL, false),
  (currval('questions_id_seq'), 'ソフトウェアの開発・テストを担当する', NULL, false);

-- Q381: 変更管理（ITIL）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 381, 'choice', 1, 1,
  'ITILの変更管理プロセスの目的として最も適切なものはどれか。',
  'ITIL変更管理はITインフラやサービスへの変更（ソフトウェア更新，設定変更，ハードウェア交換など）を，リスクを最小化しながら効率的に実施するためのプロセス。変更の申請，影響評価，承認，実施，事後レビューのサイクルを管理する。変更によるインシデント防止が主な目的。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '変更によるリスクを最小化しながら効率的に変更を実施する', NULL, true),
  (currval('questions_id_seq'), '障害から迅速にサービスを復旧させる', NULL, false),
  (currval('questions_id_seq'), '問題の根本原因を特定して恒久対策を行う', NULL, false),
  (currval('questions_id_seq'), '新しいサービスの要件を収集・定義する', NULL, false);

-- Q382: ナレッジ管理
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 382, 'choice', 1, 1,
  'ナレッジ管理（KM：Knowledge Management）の目的として最も適切なものはどれか。',
  'ナレッジ管理は組織内の知識（業務ノウハウ，経験，情報など）を体系的に収集・蓄積・共有・活用することで，組織の競争力向上や問題解決の効率化を図る取り組み。暗黙知（個人の経験に蓄積）を形式知（文書化された知識）に変換する「SECIモデル」が有名。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '組織内の知識を収集・蓄積・共有・活用して競争力を高める', NULL, true),
  (currval('questions_id_seq'), '組織内の機密情報を外部から保護する', NULL, false),
  (currval('questions_id_seq'), 'データベースの知識を使って高度な検索を行う', NULL, false),
  (currval('questions_id_seq'), 'AIに社内知識を学習させて業務を自動化する', NULL, false);

-- Q383: プロダクトライフサイクル
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 383, 'choice', 1, 1,
  'プロダクトライフサイクルの「成長期」の特徴として最も適切なものはどれか。',
  'プロダクトライフサイクルは導入期→成長期→成熟期→衰退期の4段階。成長期は売上が急増し，競合他社が市場に参入してくる段階。収益性が向上し，市場でのシェア拡大が重要課題になる。導入期は売上が少なく投資が必要，成熟期は売上が安定し競争が激化，衰退期は売上が下降する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '売上が急増し競合他社が市場に参入してくる段階', NULL, true),
  (currval('questions_id_seq'), '新製品が市場に投入され認知度が低い段階', NULL, false),
  (currval('questions_id_seq'), '売上が安定して競争が激しくなる段階', NULL, false),
  (currval('questions_id_seq'), '売上が下降して撤退を検討する段階', NULL, false);

-- Q384: イノベーションの普及理論
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 384, 'choice', 1, 1,
  'イノベーター理論における「アーリーアダプター」の説明として最も適切なものはどれか。',
  'イノベーター理論（エベレット・ロジャース）は採用者を5段階に分類。イノベーター（革新者：2.5%）は最初に試みる人，アーリーアダプター（初期採用者：13.5%）はオピニオンリーダーで製品の評判を広める影響力がある，アーリーマジョリティ（前期多数採用者：34%），レイトマジョリティ（後期多数採用者：34%），ラガード（遅滞者：16%）。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'オピニオンリーダーとして製品の評判を広める初期採用者', NULL, true),
  (currval('questions_id_seq'), '最も早く新製品を試みる革新者', NULL, false),
  (currval('questions_id_seq'), '多数の人が使い始めてから採用する前期多数派', NULL, false),
  (currval('questions_id_seq'), '最後まで新技術を採用しない遅滞者', NULL, false);

-- Q385: M&A（企業合併・買収）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 385, 'choice', 1, 1,
  'IT業界でM&Aが行われる主な目的として最も適切なものはどれか。',
  'IT企業のM&Aの主な目的：①技術・特許の獲得，②優秀な人材の獲得（Acqui-hire），③市場シェアの拡大，④新規市場・分野への参入，⑤競合の排除。大手IT企業が新興スタートアップを買収して技術・ユーザーを取り込む事例が多い。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '技術・特許・人材の獲得や市場シェア拡大のため', NULL, true),
  (currval('questions_id_seq'), '企業の財務状況を悪化させるため', NULL, false),
  (currval('questions_id_seq'), '従業員数を削減して人件費を下げるため', NULL, false),
  (currval('questions_id_seq'), '競合他社の製品を市場から排除するため', NULL, false);

-- Q386: SLA違反時のペナルティ（SLO）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 386, 'choice', 1, 1,
  'SLO（Service Level Objective）の説明として最も適切なものはどれか。',
  'SLOはSLA（サービスレベルアグリーメント）の中で定める個別の数値目標（例：可用性99.9%，応答時間200ms以内など）。SLAは契約文書全体，SLOはその中の個別指標，SLI（Service Level Indicator）は実際に計測した値。GoogleのSREでよく使われる概念。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'SLAの中で定められた個別のサービス品質数値目標', NULL, true),
  (currval('questions_id_seq'), 'サービス品質の合意文書全体のこと', NULL, false),
  (currval('questions_id_seq'), '実際に計測したサービス品質の指標値', NULL, false),
  (currval('questions_id_seq'), 'SLA違反時に発生するペナルティ金額', NULL, false);

-- Q387: オブジェクト指向設計（SOLID原則）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 387, 'choice', 1, 1,
  'SOLID原則の「単一責任の原則（SRP）」の説明として最も適切なものはどれか。',
  'SOLID原則はオブジェクト指向設計の5つの指針。S（SRP：単一責任の原則）：クラスは変更する理由が1つだけであるべき＝1つの責任のみを持つべき。O（OCP：開放・閉鎖の原則），L（LSP：リスコフの置換原則），I（ISP：インタフェース分離の原則），D（DIP：依存関係逆転の原則）。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'クラスは1つの責任のみを持ち変更理由が1つだけであるべき', NULL, true),
  (currval('questions_id_seq'), 'クラスは拡張に開かれ変更に閉じているべき', NULL, false),
  (currval('questions_id_seq'), '上位クラスは下位クラスで置き換え可能であるべき', NULL, false),
  (currval('questions_id_seq'), '具体的な実装ではなく抽象に依存すべき', NULL, false);

-- Q388: クラウドネイティブ
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 388, 'choice', 1, 1,
  'クラウドネイティブアプリケーションの特徴として最も適切なものはどれか。',
  'クラウドネイティブはクラウド環境を最大限に活用するために設計・構築されたアプリケーションの考え方。マイクロサービス，コンテナ化，動的オーケストレーション（Kubernetes），CI/CD，スケーラビリティ，可観測性などを組み合わせて，回復力・スケーラビリティ・俊敏性を実現する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'コンテナ・マイクロサービス・CI/CDを活用してクラウドの利点を最大化する設計', NULL, true),
  (currval('questions_id_seq'), '既存のオンプレミスシステムをそのままクラウドに移行したもの', NULL, false),
  (currval('questions_id_seq'), 'クラウド上に専用サーバーを立てて単独で動作するアプリ', NULL, false),
  (currval('questions_id_seq'), 'クラウドベンダーが提供するSaaSアプリケーション全般', NULL, false);

-- Q389: サーバーレスコンピューティング
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 389, 'choice', 1, 1,
  'サーバーレスコンピューティング（FaaS）の説明として最も適切なものはどれか。',
  'サーバーレス（FaaS：Function as a Service）は開発者がサーバーの管理・運用を意識せず，関数（Function）単位でコードをデプロイ・実行できるクラウドサービス。イベント発生時にのみ実行され，実行時間に応じた従量課金。AWS Lambda，Azure Functionsが代表例。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'サーバー管理不要で関数単位でコードをデプロイ・従量課金で実行する', NULL, true),
  (currval('questions_id_seq'), 'サーバーの物理的な設置が不要なコロケーションサービス', NULL, false),
  (currval('questions_id_seq'), 'クラウド上の仮想マシンをオンデマンドで利用するサービス', NULL, false),
  (currval('questions_id_seq'), 'サーバーを自動的に複数台に増やすオートスケーリング機能', NULL, false);

-- Q390: マルチクラウド戦略
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 390, 'choice', 1, 1,
  'マルチクラウド戦略の主な目的として最も適切なものはどれか。',
  'マルチクラウドは複数のクラウドサービスプロバイダ（AWS，Azure，GCPなど）を組み合わせて使う戦略。ベンダーロックイン（特定業者への依存）の回避，コスト最適化（サービスごとに最適なベンダーを選択），可用性向上（複数クラウドに分散），各プロバイダの得意機能の活用などが目的。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ベンダーロックイン回避とコスト最適化・可用性向上のため', NULL, true),
  (currval('questions_id_seq'), '1社のクラウドに完全に移行してコストを下げるため', NULL, false),
  (currval('questions_id_seq'), 'すべての処理をオンプレミスに戻すための準備をするため', NULL, false),
  (currval('questions_id_seq'), '複数のクラウド企業を統合するM&Aを行うため', NULL, false);

-- Q391: 情報システム部門の役割
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 391, 'choice', 1, 1,
  'CIO（最高情報責任者）の主な役割として最も適切なものはどれか。',
  'CIO（Chief Information Officer）は企業の情報戦略・IT戦略を立案・推進する最高情報責任者。IT投資の意思決定，情報システム部門の統括，デジタルトランスフォーメーション推進，ITガバナンスの整備などを担う。CEO（最高経営責任者），CFO（最高財務責任者），CISO（最高情報セキュリティ責任者）と共に経営トップチームを構成する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '企業のIT戦略立案と情報システム部門の統括', NULL, true),
  (currval('questions_id_seq'), '企業全体の経営方針と事業戦略の決定', NULL, false),
  (currval('questions_id_seq'), '財務・会計・資金調達の管理', NULL, false),
  (currval('questions_id_seq'), '情報セキュリティ施策の立案・推進', NULL, false);

-- Q392: ITコスト最適化
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 392, 'choice', 1, 1,
  'ITコストをTCO（総所有コスト）で評価する目的として最も適切なものはどれか。',
  'TCO（Total Cost of Ownership）はシステムの取得・導入コストだけでなく，運用・保守・廃棄までのライフサイクル全体のコストを総合的に把握する指標。初期導入コストが低くても運用コストが高ければ総コストが高くなる。IT投資の意思決定（クラウド vs オンプレミスなど）でよく使われる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '導入から廃棄までのライフサイクル全体のコストを把握して比較する', NULL, true),
  (currval('questions_id_seq'), '初期導入コストのみを比較して最安値のシステムを選ぶ', NULL, false),
  (currval('questions_id_seq'), '月々の運用コストだけを管理する', NULL, false),
  (currval('questions_id_seq'), 'IT部門の人件費のみを最適化する', NULL, false);

-- Q393: アジャイルのベロシティ
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 393, 'choice', 1, 1,
  'スクラムにおけるベロシティ（Velocity）の説明として最も適切なものはどれか。',
  'ベロシティはスクラムで1スプリント内にチームが完了できる作業量（ストーリーポイント数）を表す指標。過去スプリントのベロシティを基に，次スプリントの計画や残作業の見積もりに使う。チームの生産性を計測する指標だが，他チームとの比較には使えない（チームによってポイントの重みが異なる）。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '1スプリントでチームが完了できる作業量の指標', NULL, true),
  (currval('questions_id_seq'), 'スプリントレビューで顧客から得られる満足度スコア', NULL, false),
  (currval('questions_id_seq'), 'チームメンバーの作業時間の合計', NULL, false),
  (currval('questions_id_seq'), 'リリースまでに残っているバグの数', NULL, false);

-- Q394: テクニカルデット（技術的負債）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 394, 'choice', 1, 1,
  'テクニカルデット（技術的負債）の説明として最も適切なものはどれか。',
  'テクニカルデットはコードの品質・設計を犠牲にした短期的な解決策（コピー&ペースト，場当たり的な修正など）を積み重ねることで将来の開発・保守が困難になる状態を「負債」に例えた概念。蓄積すると機能追加コストや障害リスクが増大する。定期的なリファクタリングで解消する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '短期的解決策の積み重ねで将来の保守・開発が困難になること', NULL, true),
  (currval('questions_id_seq'), 'IT機器の老朽化による修繕費用', NULL, false),
  (currval('questions_id_seq'), '開発プロジェクトの予算超過分', NULL, false),
  (currval('questions_id_seq'), '未払いのソフトウェアライセンス費用', NULL, false);

-- Q395: アクセシビリティ指針（WCAG）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 395, 'choice', 1, 1,
  'WCAG（Web Content Accessibility Guidelines）の4つの原則として正しいものはどれか。',
  'WCAGはW3Cが策定したWebコンテンツのアクセシビリティガイドライン。4原則：知覚可能（Perceivable），操作可能（Operable），理解可能（Understandable），堅牢（Robust）の頭文字をとりPOURとも呼ぶ。これらの原則に基づいた基準をA・AA・AAAの3段階で規定する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '知覚可能・操作可能・理解可能・堅牢', NULL, true),
  (currval('questions_id_seq'), '表示・入力・処理・出力', NULL, false),
  (currval('questions_id_seq'), '安全・速度・品質・コスト', NULL, false),
  (currval('questions_id_seq'), '機密性・完全性・可用性・説明責任', NULL, false);

-- Q396: 事業継続計画（BCP）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 396, 'choice', 1, 1,
  'BCP（Business Continuity Plan：事業継続計画）の説明として最も適切なものはどれか。',
  'BCPは大規模災害・システム障害・テロなどの緊急事態が発生した際に，重要な業務を中断させず，または早期に再開するための計画書。復旧目標時間（RTO）・復旧目標時点（RPO）を定め，代替手段・連絡体制・訓練計画などを含む。BCPを継続的に管理・維持する活動をBCM（Business Continuity Management）という。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '緊急事態発生時に重要業務を継続・早期再開するための計画', NULL, true),
  (currval('questions_id_seq'), '日常のシステム障害に対応するための運用手順書', NULL, false),
  (currval('questions_id_seq'), '企業の長期的な経営ビジョンを示す計画書', NULL, false),
  (currval('questions_id_seq'), '財務リスクを管理するための財務計画', NULL, false);

-- Q397: クリティカルシンキング
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 397, 'choice', 1, 1,
  'クリティカルシンキング（批判的思考）の説明として最も適切なものはどれか。',
  'クリティカルシンキングは物事を主観・感情・権威に流されず，論理と証拠に基づいて客観的・批判的に分析・評価・判断する思考スキル。IT業界では要件の妥当性検証，課題の根本原因分析，情報の信頼性評価などに活用される。デザインシンキングは共感に基づくユーザー中心の問題解決手法。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '論理と証拠に基づいて客観的・批判的に分析・評価・判断する思考', NULL, true),
  (currval('questions_id_seq'), '既存の枠組みにとらわれず自由に発想する創造的な思考', NULL, false),
  (currval('questions_id_seq'), 'ユーザーへの共感を出発点にした問題解決アプローチ', NULL, false),
  (currval('questions_id_seq'), '複数の視点から物事を同時に考えるラテラルシンキング', NULL, false);

-- Q398: デジタルフォレンジック
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 398, 'choice', 1, 1,
  'デジタルフォレンジックの説明として最も適切なものはどれか。',
  'デジタルフォレンジックは，サイバー犯罪・インシデント調査において，コンピュータ・スマートフォン・ネットワーク機器などのデジタルデータを科学的手法で収集・保全・解析して証拠を明らかにする技術・手法の総称。証拠の完全性（改ざん禁止）を保つために，ハッシュ値での検証・チェーンオブカストディの維持が重要。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'サイバー犯罪・インシデント調査でデジタル証拠を科学的に収集・解析する技術', NULL, true),
  (currval('questions_id_seq'), 'デジタル機器を法的に廃棄・処分する手続き', NULL, false),
  (currval('questions_id_seq'), 'デジタルデータを長期保存・アーカイブする技術', NULL, false),
  (currval('questions_id_seq'), 'コンピュータウイルスを分析して除去する技術', NULL, false);

-- Q399: サイバーレジリエンス
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 399, 'choice', 1, 1,
  'サイバーレジリエンスの説明として最も適切なものはどれか。',
  'サイバーレジリエンスはサイバー攻撃・障害を完全に防ぐことよりも，攻撃・障害が発生した際にも業務を継続し，被害を最小限にとどめ，迅速に復旧・適応できる能力・体制を指す。Prevent（防御）だけでなく，Detect（検知），Respond（対応），Recover（回復）のサイクル全体を重視する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '攻撃・障害発生時に業務継続・迅速回復できる能力と体制', NULL, true),
  (currval('questions_id_seq'), 'サイバー攻撃を100%防ぐための完全なセキュリティ対策', NULL, false),
  (currval('questions_id_seq'), 'サイバー保険に加入して被害コストをカバーする仕組み', NULL, false),
  (currval('questions_id_seq'), 'サイバー攻撃を発見したら即座にシステムを停止する仕組み', NULL, false);

-- Q400: 情報セキュリティマネジメントシステム（ISMS）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 400, 'choice', 1, 1,
  'ISO/IEC 27001で定められているISMS（情報セキュリティマネジメントシステム）の説明として最も適切なものはどれか。',
  'ISMS（Information Security Management System）はISO/IEC 27001に基づく情報セキュリティのマネジメントシステムの枠組み。リスクアセスメント・管理策の実施・モニタリング・PDCAサイクルによる継続的改善を体系化する。第三者認証（ISMS認証）を取得することで，組織の情報セキュリティへの取り組みを対外的に証明できる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ISO 27001に基づくリスク管理とPDCAで情報セキュリティを体系的に管理する枠組み', NULL, true),
  (currval('questions_id_seq'), '政府が定めた情報システムの安全基準', NULL, false),
  (currval('questions_id_seq'), 'ウイルス対策ソフトの品質を認証する制度', NULL, false),
  (currval('questions_id_seq'), 'クラウドサービスのセキュリティを評価する国際規格', NULL, false);
-- ----------------------------------------
-- 科目A（section_id=1）Q401〜Q450
-- ----------------------------------------

-- ----------------------------------------
-- データ構造・アルゴリズム応用（Q401〜Q415）
-- ----------------------------------------

-- Q401: 動的計画法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 401, 'choice', 1, 1,
  '動的計画法（Dynamic Programming）の説明として最も適切なものはどれか。',
  '動的計画法は問題を小さな部分問題に分割し，各部分問題の解を記憶（メモ化）して再利用することで計算量を削減するアルゴリズム設計手法。フィボナッチ数列の高速計算，最長共通部分列，ナップサック問題などに有効。重複する部分問題が存在し，最適部分構造を持つ問題に適用できる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '部分問題の解を記憶して再利用することで計算量を削減する手法', NULL, true),
  (currval('questions_id_seq'), '問題をより小さな独立した部分に分割して並列で解く手法', NULL, false),
  (currval('questions_id_seq'), '各ステップで最良の選択をする貪欲法', NULL, false),
  (currval('questions_id_seq'), '乱数を使って近似解を求めるモンテカルロ法', NULL, false);

-- Q402: 貪欲法（グリーディ法）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 402, 'choice', 1, 1,
  '貪欲法（Greedy Algorithm）の説明として最も適切なものはどれか。',
  '貪欲法は各ステップで局所的に最良の選択をすることで全体の最適解を目指すアルゴリズム設計手法。コイン問題，最小全域木（クラスカル法，プリム法），ハフマン符号などに使われる。動的計画法と異なり過去の選択を振り返らない。すべての問題で最適解が得られるわけではない。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '各ステップで局所的に最良の選択をすることで最適解を目指す手法', NULL, true),
  (currval('questions_id_seq'), '部分問題の解を記憶して再利用することで効率化する手法', NULL, false),
  (currval('questions_id_seq'), '問題を分割して再帰的に解いて結合する分割統治法', NULL, false),
  (currval('questions_id_seq'), 'すべての候補を試して最良解を探す全探索法', NULL, false);

-- Q403: ダイクストラ法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 403, 'choice', 1, 1,
  'ダイクストラ法の説明として最も適切なものはどれか。',
  'ダイクストラ法は重みのあるグラフにおいて，単一始点から全ノードへの最短経路を求めるアルゴリズム。優先度付きキューを使って未確定ノードの中から最短距離のノードを順番に確定していく。辺の重みが非負の場合に正確な解が得られる。負の辺がある場合はベルマン・フォード法を使う。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '重み付きグラフで単一始点から全ノードへの最短経路を求めるアルゴリズム', NULL, true),
  (currval('questions_id_seq'), '有向グラフのトポロジカルソートを行うアルゴリズム', NULL, false),
  (currval('questions_id_seq'), 'グラフの最小全域木を求めるアルゴリズム', NULL, false),
  (currval('questions_id_seq'), 'グラフの全連結成分を検出するアルゴリズム', NULL, false);

-- Q404: マージソートの特徴
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 404, 'choice', 1, 1,
  'マージソートの特徴として最も適切なものはどれか。',
  'マージソートは配列を半分に分割し，それぞれをソートして結合する分割統治法のアルゴリズム。最悪・平均・最良いずれもO(n log n)の安定した計算量。安定ソート（同じ値の要素の相対順序が保たれる）。ただしO(n)の追加メモリが必要。クイックソートはO(n log n)平均だが最悪O(n²)でインプレースソートが可能。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '最悪・平均・最良すべてO(n log n)の安定した計算量を持つ安定ソート', NULL, true),
  (currval('questions_id_seq'), 'O(n log n)平均だが最悪O(n²)になることがある不安定ソート', NULL, false),
  (currval('questions_id_seq'), '隣接要素を比較・交換するO(n²)の単純なソート', NULL, false),
  (currval('questions_id_seq'), '追加メモリ不要でO(n log n)を実現するヒープソート', NULL, false);

-- Q405: ヒープデータ構造
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 405, 'choice', 1, 1,
  '最小ヒープ（Min-Heap）の性質として正しいものはどれか。',
  '最小ヒープは親ノードの値が常に子ノードの値以下になる完全二分木。根ノードに最小値が格納される。最小値の取得はO(1)，挿入・削除はO(log n)。優先度付きキューの実装に使われる。最大ヒープは逆に親が子以上であり，根に最大値が格納される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '親ノードの値が常に子ノードの値以下で根に最小値がある', NULL, true),
  (currval('questions_id_seq'), '親ノードの値が常に子ノードの値以上で根に最大値がある', NULL, false),
  (currval('questions_id_seq'), '左の子が右の子より常に小さい二分木', NULL, false),
  (currval('questions_id_seq'), '葉ノードにのみ値を持つ完全二分木', NULL, false);

-- Q406: グラフの表現（隣接リスト・隣接行列）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 406, 'choice', 1, 1,
  'グラフの隣接リスト表現が隣接行列表現より有利なケースとして最も適切なものはどれか。',
  '隣接行列はn×nの2次元配列でエッジの有無をO(1)で確認できるが，O(n²)の空間が必要。隣接リストは各頂点に接続するエッジのリストを持ち，O(V+E)の空間で済む。辺の数が少ないスパースグラフ（疎なグラフ）では隣接リストの方がメモリ効率が良い。密なグラフ（エッジが多い）では隣接行列が有利。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'エッジの数が少ないスパースグラフでメモリ効率が良い', NULL, true),
  (currval('questions_id_seq'), 'エッジの有無をO(1)で確認できる', NULL, false),
  (currval('questions_id_seq'), 'エッジの数が多い密なグラフで空間効率が良い', NULL, false),
  (currval('questions_id_seq'), '全頂点ペアの最短経路計算に適している', NULL, false);

-- Q407: B木（B-Tree）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 407, 'choice', 1, 1,
  'データベースのインデックスにB木（B-Tree）やB+木が使われる主な理由として最も適切なものはどれか。',
  'B木・B+木は自己平衡木で，ディスクI/Oを最小化するよう設計されている。1ノードに多数のキーを格納でき，木の高さを低く保てるため，少ないディスクアクセスで検索・挿入・削除が可能。データベースのような2次記憶装置アクセスが多い環境に最適。B+木は葉ノードを連結リストで繋いで範囲検索を効率化する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ディスクI/Oを最小化するよう設計されており少ないアクセスで検索できる', NULL, true),
  (currval('questions_id_seq'), 'メモリ上の探索に最適化されているため', NULL, false),
  (currval('questions_id_seq'), '文字列の検索に特化したデータ構造のため', NULL, false),
  (currval('questions_id_seq'), '挿入・削除のみに特化した高速なデータ構造のため', NULL, false);

-- Q408: 文字列探索（KMP法）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 408, 'choice', 1, 1,
  'KMP（Knuth-Morris-Pratt）法の説明として最も適切なものはどれか。',
  'KMP法は文字列検索アルゴリズムで，パターン文字列の部分一致情報（失敗関数）を事前に計算し，不一致が起きたときにパターンを最大限スキップして次の比較位置を決める。O(n+m)（n=テキスト長，m=パターン長）の高速な文字列検索が可能。単純な文字列探索はO(n×m)。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'パターンの部分一致情報を事前計算してO(n+m)で文字列検索する', NULL, true),
  (currval('questions_id_seq'), '文字列を二分探索するアルゴリズム', NULL, false),
  (currval('questions_id_seq'), 'ハッシュ関数を使ってO(1)で文字列を検索するアルゴリズム', NULL, false),
  (currval('questions_id_seq'), '正規表現をNFAに変換して文字列を検索するアルゴリズム', NULL, false);

-- Q409: オートマトン（有限状態機械）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 409, 'choice', 1, 1,
  '有限オートマトン（有限状態機械）の説明として最も適切なものはどれか。',
  '有限オートマトンは有限個の状態を持ち，入力記号に従って状態遷移する計算モデル。正規言語を認識するのに用いられ，正規表現の実装やレキシカル解析（字句解析）の基礎となる。DFA（決定性有限オートマトン）は各状態・入力に対して遷移先が唯一，NFA（非決定性）は複数の遷移先がありうる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '有限個の状態を持ち入力に応じて状態遷移する計算モデル', NULL, true),
  (currval('questions_id_seq'), '無限のテープメモリを持つ万能計算モデル', NULL, false),
  (currval('questions_id_seq'), 'スタックを使って文脈自由言語を認識する計算モデル', NULL, false),
  (currval('questions_id_seq'), '並列に複数の処理を行うマルチスレッドモデル', NULL, false);

-- Q410: P問題とNP問題
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 410, 'choice', 1, 1,
  'NP問題の説明として最も適切なものはどれか。',
  'NP問題は与えられた解が正しいかどうかを多項式時間で検証できる問題のクラス（Nondeterministic Polynomial time）。P問題は多項式時間で解ける問題。NP困難はNPの中でも特に難しい問題群。P≠NPかはコンピュータ科学最大の未解決問題の一つ。巡回セールスマン問題，整数計画問題などが代表的なNP困難問題。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '解が正しいかどうかを多項式時間で検証できる問題のクラス', NULL, true),
  (currval('questions_id_seq'), '多項式時間で解くことができる問題のクラス', NULL, false),
  (currval('questions_id_seq'), 'どんな計算機でも解くことができない問題のクラス', NULL, false),
  (currval('questions_id_seq'), '指数時間で解ける問題のクラス', NULL, false);

-- Q411: 再帰とメモ化（トップダウン動的計画法）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 411, 'choice', 1, 1,
  'メモ化（Memoization）の説明として最も適切なものはどれか。',
  'メモ化は再帰的な計算で，同じ引数に対する計算結果をキャッシュして再利用する最適化技術。動的計画法のトップダウンアプローチとも呼ばれる。フィボナッチ数列の計算がO(2^n)からO(n)に改善される典型例。ボトムアップ動的計画法（テーブルを下から埋める）と対比される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '再帰計算の結果をキャッシュして同じ計算の繰り返しを防ぐ技術', NULL, true),
  (currval('questions_id_seq'), '関数をメモリに常駐させて高速に呼び出す技術', NULL, false),
  (currval('questions_id_seq'), '計算結果をファイルに保存して再起動後も利用する技術', NULL, false),
  (currval('questions_id_seq'), '変数を定数に置き換えてコードを最適化する技術', NULL, false);

-- Q412: トポロジカルソート
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 412, 'choice', 1, 1,
  'トポロジカルソートを適用できる条件として正しいものはどれか。',
  'トポロジカルソートは有向非巡回グラフ（DAG：Directed Acyclic Graph）に適用できる。辺の方向に沿ってすべての頂点を線形に並べる操作。コンパイル時の依存関係解決，プロジェクトタスクの実行順序決定などに使われる。閉路（サイクル）があるグラフには適用できない。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '閉路のない有向グラフ（DAG）にのみ適用できる', NULL, true),
  (currval('questions_id_seq'), '無向グラフにのみ適用できる', NULL, false),
  (currval('questions_id_seq'), '閉路がある有向グラフに適用できる', NULL, false),
  (currval('questions_id_seq'), '重み付きグラフにのみ適用できる', NULL, false);

-- Q413: 計算量の比較
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 413, 'choice', 1, 1,
  '計算量 O(1)，O(log n)，O(n)，O(n log n)，O(n²) を小さい順に並べたものはどれか。',
  'O記法による計算量の大小：O(1) < O(log n) < O(n) < O(n log n) < O(n²)。n=1000のとき，O(1)=1，O(log n)≈10，O(n)=1000，O(n log n)≈10000，O(n²)=1,000,000。アルゴリズム選択では計算量の小さいものが一般に高速。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(1) < O(log n) < O(n) < O(n log n) < O(n²)', NULL, true),
  (currval('questions_id_seq'), 'O(1) < O(n) < O(log n) < O(n log n) < O(n²)', NULL, false),
  (currval('questions_id_seq'), 'O(log n) < O(1) < O(n) < O(n²) < O(n log n)', NULL, false),
  (currval('questions_id_seq'), 'O(1) < O(log n) < O(n log n) < O(n) < O(n²)', NULL, false);

-- Q414: 連結リストの特徴
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 414, 'choice', 1, 1,
  '連結リスト（Linked List）の配列に対する利点として最も適切なものはどれか。',
  '連結リストは各要素がデータとポインタ（次要素への参照）を持つデータ構造。先頭・末尾への挿入・削除がO(1)（ポインタ変更のみ）で行える。配列は先頭への挿入がO(n)（要素のシフトが必要）。一方，配列はインデックスによるランダムアクセスがO(1)だが，連結リストはO(n)。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '先頭・末尾への要素の挿入・削除がO(1)で行える', NULL, true),
  (currval('questions_id_seq'), 'インデックスによるランダムアクセスがO(1)で行える', NULL, false),
  (currval('questions_id_seq'), 'キャッシュ効率が高く局所性に優れる', NULL, false),
  (currval('questions_id_seq'), '使用メモリが配列より少ない', NULL, false);

-- Q415: 正規表現の基本記号
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 415, 'choice', 1, 1,
  '正規表現で「1文字以上の数字」を表すパターンとして正しいものはどれか。',
  '正規表現の基本記号：\d は数字（[0-9]と同義），+ は直前のパターンが1回以上，* は0回以上，? は0回か1回，^ は行頭，$ は行末。よって「1文字以上の数字」は \d+ と表現する。\d* は0個以上の数字，\d{3} はちょうど3桁の数字。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '\d+', NULL, true),
  (currval('questions_id_seq'), '\d*', NULL, false),
  (currval('questions_id_seq'), '\d?', NULL, false),
  (currval('questions_id_seq'), '\d{1}', NULL, false);

-- ----------------------------------------
-- コンピュータシステム・アーキテクチャ応用（Q416〜Q430）
-- ----------------------------------------

-- Q416: CISC と RISC の比較
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 416, 'choice', 1, 1,
  'RISC（Reduced Instruction Set Computer）の特徴として最も適切なものはどれか。',
  'RISCは命令セットを少数の単純な命令に絞り，すべての命令を1クロックで実行できるよう設計した命令セットアーキテクチャ。パイプライン処理との相性が良く高速化を実現。ARM，MIPS，RISC-Vが代表例。CISCは複雑な命令を持つ（x86など），1命令で多くの処理ができるがクロックが複数かかる場合がある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '命令数を絞り単純な命令を高速に実行できる設計', NULL, true),
  (currval('questions_id_seq'), '複雑な命令を多数持ち1命令で多くの処理をする設計', NULL, false),
  (currval('questions_id_seq'), '量子ビットを使った次世代CPU設計', NULL, false),
  (currval('questions_id_seq'), '並列処理専用に設計されたGPUアーキテクチャ', NULL, false);

-- Q417: マルチコアプロセッサ
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 417, 'choice', 1, 1,
  'マルチコアプロセッサの説明として最も適切なものはどれか。',
  'マルチコアプロセッサは1つの物理チップ上に複数のCPUコアを搭載したプロセッサ。各コアが独立して命令を実行でき，マルチスレッドプログラムで並列処理が可能。クロック周波数向上の限界（発熱・消費電力問題）に対応するために採用された。コア数が増えてもソフトウェアが並列化されていないと性能向上は限定的。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '1チップに複数のCPUコアを搭載して並列処理を実現するプロセッサ', NULL, true),
  (currval('questions_id_seq'), '複数のCPUチップを1つの基板に搭載したシステム', NULL, false),
  (currval('questions_id_seq'), 'クロック周波数を動的に変化させるプロセッサ', NULL, false),
  (currval('questions_id_seq'), '仮想的に複数のコアをシミュレートするソフトウェア技術', NULL, false);

-- Q418: アムダールの法則
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 418, 'choice', 1, 1,
  'アムダールの法則が示すことの説明として最も適切なものはどれか。',
  'アムダールの法則はプロセッサ数を増やしても，並列化できない部分がある限り性能向上に限界があることを示す。並列化可能な割合をpとすると，理論上の最大速度向上比は 1/((1-p) + p/N)（Nはプロセッサ数）。並列化できない部分が20%あれば，いくらプロセッサを増やしても最大5倍までしか速くならない。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '並列化できない部分があると性能向上に上限があること', NULL, true),
  (currval('questions_id_seq'), 'プロセッサ数に比例して性能が向上すること', NULL, false),
  (currval('questions_id_seq'), 'クロック周波数を2倍にすると性能が2倍になること', NULL, false),
  (currval('questions_id_seq'), 'キャッシュ容量を増やすと常に性能が向上すること', NULL, false);

-- Q419: 命令パイプラインの危険（ハザード）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 419, 'choice', 1, 1,
  'パイプラインのデータハザードの説明として最も適切なものはどれか。',
  'パイプラインハザードには3種類ある。データハザードは前の命令の結果を次の命令が参照するため生じる依存関係の問題（例：ADD命令の結果をSUB命令が使う場合）。制御ハザードは分岐命令で次に実行する命令が確定しない問題。構造ハザードは同じハードウェアリソースを複数の命令が同時に使う問題。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '前の命令の結果を次の命令が必要とすることで生じる依存関係の問題', NULL, true),
  (currval('questions_id_seq'), '分岐命令で次に実行する命令が確定しない問題', NULL, false),
  (currval('questions_id_seq'), '同じハードウェアリソースを複数命令が同時使用する問題', NULL, false),
  (currval('questions_id_seq'), 'キャッシュミスによりメモリアクセスが遅延する問題', NULL, false);

-- Q420: GPUの特徴
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 420, 'choice', 1, 1,
  'GPU（Graphics Processing Unit）の特徴として最も適切なものはどれか。',
  'GPUはもともとグラフィックス処理のために開発されたプロセッサで，数千〜数万の小さなコアを持ち，単純な演算を大量に並列実行することが得意。ディープラーニングの学習（行列演算の並列化），科学計算，マイニングなどに広く活用されるようになった（GPGPU）。CPUは複雑な逐次処理が得意。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '多数の小さなコアで単純な演算を大量に並列実行することが得意', NULL, true),
  (currval('questions_id_seq'), '複雑な逐次処理を高速に実行することが得意', NULL, false),
  (currval('questions_id_seq'), '少数の高性能コアで複雑な命令を処理することが得意', NULL, false),
  (currval('questions_id_seq'), '主記憶装置としてデータを長期保存することが得意', NULL, false);

-- Q421: 組み込みシステムの特徴
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 421, 'choice', 1, 1,
  '組み込みシステムの特徴として最も適切なものはどれか。',
  '組み込みシステムは特定の機能を実現するために機器に内蔵されたコンピュータシステムで，家電・自動車・医療機器・産業機器などに使われる。リアルタイム性（決められた時間内に処理する），省電力，限られたリソース（メモリ・CPU）での動作，高信頼性が要求される。RTOSが使われることが多い。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '特定機能のために機器に内蔵されリアルタイム性・省電力が求められる', NULL, true),
  (currval('questions_id_seq'), '汎用的な処理を行うためにユーザーが自由に使えるシステム', NULL, false),
  (currval('questions_id_seq'), 'インターネットに常時接続して外部からソフトウェアを受信するシステム', NULL, false),
  (currval('questions_id_seq'), '大量のデータを処理するためのサーバー専用システム', NULL, false);

-- Q422: リアルタイムOS（RTOS）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 422, 'choice', 1, 1,
  'リアルタイムOS（RTOS）の説明として最も適切なものはどれか。',
  'RTOSは決められた時間内（デッドライン）に処理を完了することを保証するOSである。ハードリアルタイム（デッドラインを絶対に守る：医療機器・航空制御）とソフトリアルタイム（デッドライン超過が許容される：動画再生）がある。タスクのスケジューリングが優先度に基づき決定論的に行われる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '決められた時間内に処理を完了することを保証するOS', NULL, true),
  (currval('questions_id_seq'), 'リアルタイムにインターネットと同期するOSの総称', NULL, false),
  (currval('questions_id_seq'), '映像・音声のリアルタイム処理に特化したOS', NULL, false),
  (currval('questions_id_seq'), '複数のユーザーが同時利用できる汎用OS', NULL, false);

-- Q423: 命令セットアーキテクチャ（ISA）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 423, 'choice', 1, 1,
  '命令セットアーキテクチャ（ISA）の説明として最も適切なものはどれか。',
  'ISAはプロセッサが実行できる命令の集合，アドレッシングモード，レジスタ構成，データ型などを定義するハードウェアとソフトウェアの境界面の仕様。x86（32ビット），x86-64（64ビット），ARM，RISC-Vなどが代表的なISA。同じISAに対応するソフトウェアは（バイナリレベルで）異なるISAの実装のCPU上でも動作する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'プロセッサが実行できる命令の集合と仕様を定義したハード・ソフトの境界', NULL, true),
  (currval('questions_id_seq'), 'CPUの物理的な回路設計と製造プロセスの仕様', NULL, false),
  (currval('questions_id_seq'), 'プログラミング言語の文法と意味論の定義', NULL, false),
  (currval('questions_id_seq'), 'OSとアプリケーション間のシステムコールの仕様', NULL, false);

-- Q424: ユニファイドメモリアーキテクチャ（UMA）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 424, 'choice', 1, 1,
  'SoC（System on Chip）の説明として最も適切なものはどれか。',
  'SoCはCPU，GPU，メモリコントローラ，無線通信，I/Oなど複数の機能を1つのチップに集積した集積回路。スマートフォン（Apple A・Snapdragonなど），組み込み機器に広く使われる。チップ間の配線が短くなるため消費電力・遅延が削減できる。コンポーネントを個別チップで揃える方式より高性能・省スペース。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'CPU・GPU・通信などの複数機能を1チップに集積した回路', NULL, true),
  (currval('questions_id_seq'), 'CPUとメモリを同一パッケージに収めたモジュール', NULL, false),
  (currval('questions_id_seq'), 'ソフトウェアで定義されるネットワーク用チップ', NULL, false),
  (currval('questions_id_seq'), '複数のCPUコアを1チップに集積したマルチコアプロセッサ', NULL, false);

-- Q425: 消費電力と性能トレードオフ
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 425, 'choice', 1, 1,
  'DVFS（Dynamic Voltage and Frequency Scaling）の説明として最も適切なものはどれか。',
  'DVFSはCPUの動作電圧と動作周波数を負荷に応じて動的に変化させて消費電力を削減する技術。処理が軽い時は電圧・周波数を下げてエネルギーを節約し，重い処理のときは上げてパフォーマンスを確保する。スマートフォン・ノートPCなど電池駆動デバイスで広く使われる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'CPUの電圧と周波数を負荷に応じて動的に変化させて省電力化する技術', NULL, true),
  (currval('questions_id_seq'), 'メモリの電圧を自動調整してデータを保護する技術', NULL, false),
  (currval('questions_id_seq'), 'ネットワーク帯域を動的に割り当てる技術', NULL, false),
  (currval('questions_id_seq'), '仮想マシンのリソースを動的に割り当てる技術', NULL, false);

-- Q426: コンパイラの動作
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 426, 'choice', 1, 1,
  'コンパイラが行う最適化として最も適切なものはどれか。',
  'コンパイラは字句解析→構文解析→意味解析→最適化→コード生成の順に処理する。最適化では，定数畳み込み（コンパイル時に定数式を計算），デッドコード除去（実行されないコードを除去），ループ展開（ループのオーバーヘッド削減），インライン展開（関数呼び出しをコード展開）などを行い，生成コードの実行速度や容量を改善する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '実行速度・コードサイズを改善するため定数畳み込みやデッドコード除去を行う', NULL, true),
  (currval('questions_id_seq'), 'プログラムを実行しながら誤りを検出して自動修正する', NULL, false),
  (currval('questions_id_seq'), 'ソースコードを仮想マシン上で直接実行する', NULL, false),
  (currval('questions_id_seq'), 'プログラムの実行履歴を記録してデバッグを支援する', NULL, false);

-- Q427: ガベージコレクションの種類
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 427, 'choice', 1, 1,
  '参照カウント方式のガベージコレクションの問題点として最も適切なものはどれか。',
  '参照カウント方式はオブジェクトへの参照数を記録し，0になったときに解放するGCの実装方式。実装が単純でオブジェクト解放のタイミングが予測可能。しかし循環参照（A→BかつB→A）の場合，互いの参照カウントが0にならず解放できないメモリリークが発生する。これがマーク&スイープ方式が必要な理由の一つ。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '循環参照があるとメモリが解放されないリークが発生する', NULL, true),
  (currval('questions_id_seq'), 'プログラムの実行を完全停止させるSTW（Stop The World）が発生する', NULL, false),
  (currval('questions_id_seq'), '参照カウントの更新にスレッドセーフな処理が不要', NULL, false),
  (currval('questions_id_seq'), '使用メモリの断片化（フラグメンテーション）が深刻になる', NULL, false);

-- Q428: 仮想化のオーバーヘッド
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 428, 'choice', 1, 1,
  'コンテナ型仮想化が仮想マシン（VM）より一般的にオーバーヘッドが小さい主な理由はどれか。',
  'コンテナはホストOSのカーネルを直接共有するため，ゲストOSを丸ごと起動する必要がなく，起動が速く（秒単位vs分単位）メモリ消費も少ない。VMは完全なゲストOSとハードウェアのエミュレーション層が必要でオーバーヘッドが大きい。コンテナはプロセス分離のみで実現するため軽量。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ゲストOSが不要でホストOSのカーネルを直接共有するため', NULL, true),
  (currval('questions_id_seq'), 'ハードウェアの仮想化支援機能を使わないため', NULL, false),
  (currval('questions_id_seq'), 'コンテナは1つのプロセスしか実行できないため', NULL, false),
  (currval('questions_id_seq'), 'コンテナはメモリを使わない方式で動作するため', NULL, false);

-- Q429: メモリ管理（ページング vs セグメンテーション）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 429, 'choice', 1, 1,
  'セグメンテーション方式のメモリ管理の特徴として最も適切なものはどれか。',
  'セグメンテーションはプログラムをコード・データ・スタックなど論理的な単位（セグメント）に分割して管理する方式。セグメントは可変長で，プログラムの論理構造に沿った管理が可能。ただし可変長のため外部断片化が生じやすい。ページングは固定長で内部断片化が生じやすいが外部断片化は生じない。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'プログラムを可変長の論理単位（コード・データ・スタックなど）に分割して管理する', NULL, true),
  (currval('questions_id_seq'), 'プログラムを固定長のページに分割して管理する', NULL, false),
  (currval('questions_id_seq'), 'プログラム全体を連続した物理メモリ領域に配置する', NULL, false),
  (currval('questions_id_seq'), 'キャッシュメモリを論理的に分割して管理する', NULL, false);

-- Q430: コンピュータの入出力方式
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 430, 'choice', 1, 1,
  'メモリマップドI/Oの説明として最も適切なものはどれか。',
  'メモリマップドI/OはI/Oデバイスのレジスタを主記憶装置のアドレス空間にマッピングして，メモリアクセス命令でI/Oを制御する方式。専用のI/O命令が不要で，C言語などでポインタでアクセスできる。組み込みシステムで広く使われる。専用I/O命令（IN/OUT）を使う方式はポートマップドI/Oと呼ぶ。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'I/Oデバイスのレジスタをメモリアドレス空間にマッピングして制御する', NULL, true),
  (currval('questions_id_seq'), 'DMAコントローラがI/OデバイスとメモリをCPUなしに転送する', NULL, false),
  (currval('questions_id_seq'), 'I/Oデバイス専用の命令（IN/OUT命令）でI/Oを制御する', NULL, false),
  (currval('questions_id_seq'), '割り込みでI/Oの完了をCPUに通知する方式', NULL, false);

-- ----------------------------------------
-- ソフトウェア工学・設計応用（Q431〜Q445）
-- ----------------------------------------

-- Q431: ドメイン駆動設計（DDD）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 431, 'choice', 1, 1,
  'ドメイン駆動設計（DDD：Domain-Driven Design）の中心的な考え方として最も適切なものはどれか。',
  'DDDはソフトウェアの設計をビジネスの問題領域（ドメイン）を中心に行うアプローチ。ドメインの専門家と開発者が共通言語（ユビキタス言語）を使い，ドメインの概念をコードに直接反映させる。エンティティ，値オブジェクト，集約，リポジトリ，サービスなどの設計要素で構成される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ビジネスの問題領域を中心に設計しドメインの概念をコードに反映させる', NULL, true),
  (currval('questions_id_seq'), 'データベースのテーブル設計を中心にシステムを構築する', NULL, false),
  (currval('questions_id_seq'), 'UIのデザインを最初に決めてから設計を進める', NULL, false),
  (currval('questions_id_seq'), '外部APIの設計を最優先してシステムを構築する', NULL, false);

-- Q432: イベント駆動アーキテクチャ
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 432, 'choice', 1, 1,
  'イベント駆動アーキテクチャの説明として最も適切なものはどれか。',
  'イベント駆動アーキテクチャはコンポーネントがイベント（状態変化の通知）を発行し，それに関心を持つコンポーネントが非同期に反応する設計パターン。コンポーネント間の疎結合を実現し，スケーラビリティと柔軟性が高い。Apache Kafka，RabbitMQなどのメッセージブローカーを使う実装が多い。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'コンポーネントがイベントを発行し関心を持つ側が非同期に反応する設計', NULL, true),
  (currval('questions_id_seq'), 'ユーザーのクリックなどUI操作にのみ反応するGUIの設計', NULL, false),
  (currval('questions_id_seq'), 'センサーからのデータをリアルタイム処理する設計', NULL, false),
  (currval('questions_id_seq'), 'カレンダーに設定した時刻にバッチ処理を実行する設計', NULL, false);

-- Q433: ヘキサゴナルアーキテクチャ（ポートとアダプター）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 433, 'choice', 1, 1,
  'ヘキサゴナルアーキテクチャ（ポート＆アダプターパターン）の主な目的として最も適切なものはどれか。',
  'ヘキサゴナルアーキテクチャはアリスター・コックバーンが提唱したアーキテクチャパターン。ビジネスロジック（コア）を外部システム（DB・UI・外部API）から分離し，ポート（インタフェース）とアダプター（具体的な実装）で接続する。コアを独立してテストでき，外部実装の変更が容易になる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ビジネスロジックを外部システムから分離して独立してテスト可能にする', NULL, true),
  (currval('questions_id_seq'), '六角形のUIコンポーネントを使ったデザインシステム', NULL, false),
  (currval('questions_id_seq'), 'ネットワークの六つのレイヤーを定義するモデル', NULL, false),
  (currval('questions_id_seq'), '六つのマイクロサービスに分割する標準的な構成', NULL, false);

-- Q434: フィーチャー駆動開発（FDD）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 434, 'choice', 1, 1,
  'クリーンアーキテクチャの主な特徴として最も適切なものはどれか。',
  'クリーンアーキテクチャ（Robert C. Martin提唱）はエンティティ→ユースケース→インタフェースアダプター→フレームワーク&ドライバーの同心円状の層構造で，依存関係は常に内側（ビジネスルール）に向かう設計。フレームワーク・DB・UIに依存しないビジネスロジックを実現し，テスト容易性と独立性を高める。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '依存関係を内側のビジネスルールに向けてフレームワーク非依存を実現する層構造', NULL, true),
  (currval('questions_id_seq'), 'フレームワークの機能を最大限活用してコードを最小化する設計', NULL, false),
  (currval('questions_id_seq'), 'UIとビジネスロジックを単一のレイヤーに統合するシンプルな設計', NULL, false),
  (currval('questions_id_seq'), 'モジュールをすべて同一レイヤーに配置するフラットな設計', NULL, false);

-- Q435: テスト技法（境界値分析）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 435, 'choice', 1, 1,
  '入力値が1〜100の範囲を受け付けるシステムで，境界値分析に基づいてテストすべき値として最も適切なものはどれか。',
  '境界値分析は同値分割の境界付近に欠陥が多いという経験に基づき，境界値とその前後をテストする技法。1〜100の場合，境界値は1，100，境界外は0，101。テストケース：0（境界外），1（境界値），100（境界値），101（境界外）。内部の値（例：50）は同値分割で1つ選べばよい。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '0, 1, 100, 101', NULL, true),
  (currval('questions_id_seq'), '1, 50, 100', NULL, false),
  (currval('questions_id_seq'), '0, 50, 101', NULL, false),
  (currval('questions_id_seq'), '1, 2, 99, 100', NULL, false);

-- Q436: モックとスタブの違い
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 436, 'choice', 1, 1,
  'テストにおけるモック（Mock）の説明として最も適切なものはどれか。',
  'スタブは依存コンポーネントを模倣して定義済みのデータを返すだけのテスト代替品（状態の検証）。モックはスタブの機能に加え，正しく呼び出されたかどうか（呼び出し回数，引数など）を検証できる。テストダブルの総称にはモック，スタブ，スパイ，フェイク，ダミーが含まれる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '依存コンポーネントを模倣しつつ呼び出しの正しさも検証できるオブジェクト', NULL, true),
  (currval('questions_id_seq'), '定義済みのデータを返すだけの単純なテスト代替品', NULL, false),
  (currval('questions_id_seq'), '実際のコンポーネントの代わりに本番相当の動作をする代替品', NULL, false),
  (currval('questions_id_seq'), '引数の受け取りと呼び出しを記録するだけで検証しない代替品', NULL, false);

-- Q437: 継続的デリバリー vs 継続的デプロイメント
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 437, 'choice', 1, 1,
  '継続的デリバリー（CD：Continuous Delivery）と継続的デプロイメント（Continuous Deployment）の違いとして最も適切なものはどれか。',
  '継続的デリバリーはコードが常にリリース可能な状態に保たれ，本番デプロイは人間の承認が必要な状態。継続的デプロイメントは承認なしにすべてのコード変更が自動で本番環境にデプロイされる。どちらもCI（継続的インテグレーション）の後段プロセス。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '継続的デリバリーは人間の承認後にデプロイ，継続的デプロイメントは自動でデプロイ', NULL, true),
  (currval('questions_id_seq'), '継続的デリバリーは自動デプロイ，継続的デプロイメントは手動デプロイ', NULL, false),
  (currval('questions_id_seq'), '両者は同じ意味で互換的に使われる', NULL, false),
  (currval('questions_id_seq'), '継続的デリバリーはテスト自動化，継続的デプロイメントはビルド自動化', NULL, false);

-- Q438: Infrastructure as Code（IaC）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 438, 'choice', 1, 1,
  'IaC（Infrastructure as Code）の主なメリットとして最も適切なものはどれか。',
  'IaCはサーバー・ネットワーク・データベースなどのインフラ構成をコード（テキストファイル）で記述し，バージョン管理・自動化・再現性のある環境構築を実現する手法。Terraform，AWS CloudFormation，Ansibleが代表例。手動設定ミスの排除，環境の再現性，スケーリングの自動化が主なメリット。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'インフラ構成をコードで管理して再現性・自動化・バージョン管理を実現する', NULL, true),
  (currval('questions_id_seq'), 'コードを実行せずにインフラを自動構築する', NULL, false),
  (currval('questions_id_seq'), 'ハードウェアを自動購入・納品するシステム', NULL, false),
  (currval('questions_id_seq'), 'インフラの費用をコードの行数に基づいて計算する', NULL, false);

-- Q439: オブザーバビリティ（可観測性）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 439, 'choice', 1, 1,
  'システムのオブザーバビリティ（可観測性）の3つの柱として正しいものはどれか。',
  'オブザーバビリティはシステムの内部状態を外部から観測・把握できる能力。3つの柱：①メトリクス（数値的な性能指標：レスポンスタイム・エラー率など），②ログ（時系列のイベント記録），③トレース（リクエストがシステムをどう流れたかの追跡）。分散システムの運用・デバッグに重要。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'メトリクス・ログ・トレース', NULL, true),
  (currval('questions_id_seq'), 'CPU・メモリ・ディスク', NULL, false),
  (currval('questions_id_seq'), '監視・通知・修復', NULL, false),
  (currval('questions_id_seq'), '可用性・信頼性・保守性', NULL, false);

-- Q440: セキュアコーディング
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 440, 'choice', 1, 1,
  'セキュアコーディングの原則として最も適切なものはどれか。',
  'セキュアコーディングの主要原則：①入力値を信頼しない（すべての入力を検証・サニタイズ），②最小権限の原則（必要最低限の権限のみ付与），③多層防御（単一の防御に頼らない），④エラー情報を外部に漏らさない（詳細なエラーメッセージをユーザーに表示しない），⑤デフォルト拒否（明示的に許可したもの以外は拒否）。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '入力値を信頼せず検証する・最小権限・デフォルト拒否などの原則', NULL, true),
  (currval('questions_id_seq'), 'すべての入力をそのまま処理してパフォーマンスを優先する', NULL, false),
  (currval('questions_id_seq'), '詳細なエラーメッセージを表示してデバッグを容易にする', NULL, false),
  (currval('questions_id_seq'), '管理者権限でアプリを動作させて設定変更を容易にする', NULL, false);

-- Q441: アクセシビリティ設計（ユニバーサルデザイン）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 441, 'choice', 1, 1,
  'ユニバーサルデザインの7原則の一つ「公平な使用」の説明として最も適切なものはどれか。',
  'ユニバーサルデザイン7原則：①公平な使用（すべての人が同じ方法または同等の方法で使える），②使用の柔軟性，③単純で直感的な使用，④感知できる情報，⑤ミスへの寛大さ，⑥低い身体的努力，⑦アクセスと使用のためのサイズと空間。ロン・メイスが提唱。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'すべての人が同じまたは同等の方法で使えるよう設計する', NULL, true),
  (currval('questions_id_seq'), '使用方法を多様な個人の好みに合わせて選択できるようにする', NULL, false),
  (currval('questions_id_seq'), '事前知識や言語能力に関わらず理解・使用できるようにする', NULL, false),
  (currval('questions_id_seq'), '誤った操作による危険や悪影響を最小化する', NULL, false);

-- Q442: SOAとマイクロサービスの比較
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 442, 'choice', 1, 1,
  'SOA（Service-Oriented Architecture）とマイクロサービスアーキテクチャの主な違いとして最も適切なものはどれか。',
  'SOAは企業全体のビジネス機能を再利用可能なサービスとして提供するアーキテクチャで，ESB（Enterprise Service Bus）による中央集権的な通信が特徴。マイクロサービスはさらに細かい独立したサービスに分割し，直接APIで疎結合に通信，独立したデプロイを重視する。マイクロサービスはSOAの進化系と言われることもある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'SOAはESBによる集中制御，マイクロサービスは独立した疎結合サービスの直接通信', NULL, true),
  (currval('questions_id_seq'), 'SOAはクラウド専用，マイクロサービスはオンプレミス専用', NULL, false),
  (currval('questions_id_seq'), 'SOAは小粒度，マイクロサービスは大粒度のサービス分割', NULL, false),
  (currval('questions_id_seq'), '両者はまったく同じアーキテクチャパターンの別名', NULL, false);

-- Q443: デプロイ戦略（ブルーグリーンデプロイ）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 443, 'choice', 1, 1,
  'ブルーグリーンデプロイメントの説明として最も適切なものはどれか。',
  'ブルーグリーンデプロイメントは2つの同一環境（ブルー：現行，グリーン：新バージョン）を用意し，ルーターの切り替えのみでデプロイするリリース戦略。瞬時の切り替えとロールバックが可能でダウンタイムが最小限。ただし2倍のリソースが必要。カナリアリリースは段階的にトラフィックを新バージョンに移行する方式。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '現行と新バージョンの2環境を用意してルーター切り替えのみでデプロイする', NULL, true),
  (currval('questions_id_seq'), '新機能を一部ユーザーに段階的に公開して問題がなければ全体に展開する', NULL, false),
  (currval('questions_id_seq'), 'サーバーを1台ずつ順番に更新しながらダウンタイムなしでデプロイする', NULL, false),
  (currval('questions_id_seq'), 'テスト環境でのみデプロイして本番への反映を遅らせる戦略', NULL, false);

-- Q444: SRE（サイトリライアビリティエンジニアリング）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 444, 'choice', 1, 1,
  'SRE（Site Reliability Engineering）の説明として最も適切なものはどれか。',
  'SREはGoogleが提唱したシステム信頼性を高めるエンジニアリング手法。ソフトウェアエンジニアリングの手法を運用問題に適用する。SLO（サービスレベル目標）・エラーバジェット（許容エラー量）・自動化による運用作業の削減（トイル削減）などが核心概念。DevOpsと相補的な関係にある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ソフトウェアエンジニアリングの手法で運用問題を解決しシステム信頼性を高める', NULL, true),
  (currval('questions_id_seq'), 'Webサイトの表示速度を改善するフロントエンドの技術', NULL, false),
  (currval('questions_id_seq'), 'セキュリティエンジニアがシステムの脆弱性を評価する手法', NULL, false),
  (currval('questions_id_seq'), '自動化ツールを使ってシステムの構成管理を行う手法', NULL, false);

-- Q445: アーキテクチャ評価手法（ATAM）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 445, 'choice', 1, 1,
  'ソフトウェアアーキテクチャのトレードオフ分析として行われることの説明として最も適切なものはどれか。',
  'アーキテクチャ設計では品質特性（パフォーマンス，セキュリティ，可用性，保守性など）間にトレードオフが生じる。例えばセキュリティ強化は応答速度低下につながりうる，可用性のための冗長化はコスト増につながる，といった関係。ATAM（Architecture Tradeoff Analysis Method）などの手法でこれらを明示的に分析して意思決定する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '複数の品質特性の間の得失（トレードオフ）を明示的に分析して設計を決定する', NULL, true),
  (currval('questions_id_seq'), '最も安価なアーキテクチャを選択する意思決定', NULL, false),
  (currval('questions_id_seq'), '最新のフレームワークを採用することでリスクを最小化する', NULL, false),
  (currval('questions_id_seq'), '開発チームが最も得意な技術でアーキテクチャを設計する', NULL, false);
-- ----------------------------------------
-- 科目A（section_id=1）Q446〜Q500
-- ----------------------------------------

-- Q446: 経営戦略フレームワーク（SWOT分析）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 446, 'choice', 1, 1,
  'SWOT分析において，外部環境の機会（Opportunity）に分類される事象として最も適切なものはどれか。',
  'SWOT分析では，Strength（強み）・Weakness（弱み）が内部環境，Opportunity（機会）・Threat（脅威）が外部環境に対応する。市場の新規開拓余地や規制緩和など，組織の外部で自社にプラスとなる変化が機会に該当する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '新興国市場における需要の急拡大', NULL, true),
  (currval('questions_id_seq'), '競合他社と比較した際の自社製品品質の優位性', NULL, false),
  (currval('questions_id_seq'), '既存システムの老朽化による保守コストの増大', NULL, false),
  (currval('questions_id_seq'), '強力な競合新製品の市場投入', NULL, false);

-- Q447: IT投資評価（ROI）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 447, 'choice', 1, 1,
  'IT投資の費用対効果を測る指標であるROI（Return on Investment）の計算式として適切なものはどれか。',
  'ROI＝（投資利益 ÷ 投資額）× 100（%）。投資によって得られた利益を投資額で割ったもので，値が高いほど投資効率が良い。NPVやIRRと並びIT投資評価でよく使われる指標である。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '（投資利益 ÷ 投資額）× 100', NULL, true),
  (currval('questions_id_seq'), '投資額 ÷ 年間コスト削減額', NULL, false),
  (currval('questions_id_seq'), '（売上高 − 固定費）÷ 変動費', NULL, false),
  (currval('questions_id_seq'), '（現在価値 − 投資額）× 割引率', NULL, false);

-- Q448: ソフトウェア調達（RFP）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 448, 'choice', 1, 1,
  'ITシステムの外部調達における RFP（Request For Proposal）の主な目的として最も適切なものはどれか。',
  'RFP（提案依頼書）は，発注者がベンダーに対してシステムの要件・条件を提示し，具体的な提案書の提出を求める文書である。これにより複数ベンダーから提案を収集し，比較・評価して最適なベンダーを選定できる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ベンダーに要件を提示して提案書の提出を求めること', NULL, true),
  (currval('questions_id_seq'), 'システム開発の詳細設計書を作成すること', NULL, false),
  (currval('questions_id_seq'), '開発完了後の検収基準を定めること', NULL, false),
  (currval('questions_id_seq'), 'プロジェクト全体のWBSを策定すること', NULL, false);

-- Q449: プロジェクト管理（クリティカルパス）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 449, 'choice', 1, 1,
  'プロジェクトのクリティカルパスについての説明として最も適切なものはどれか。',
  'クリティカルパスとは，プロジェクト完了までの工程の中で，余裕時間（フロート）がゼロの作業を連ねた最長経路である。クリティカルパス上の作業が遅延するとプロジェクト全体が遅延するため，重点管理対象となる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'フロートがゼロの作業を結ぶプロジェクトの最長経路', NULL, true),
  (currval('questions_id_seq'), '最もコストが高い作業を結んだ経路', NULL, false),
  (currval('questions_id_seq'), '並列実行される作業の中で最短の経路', NULL, false),
  (currval('questions_id_seq'), 'リスクが最も高い作業を順番に並べた経路', NULL, false);

-- Q450: コスト見積もり手法（ファンクションポイント法）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 450, 'choice', 1, 1,
  'ソフトウェア規模の見積もり手法であるファンクションポイント法の特徴として最も適切なものはどれか。',
  'ファンクションポイント（FP）法は，ユーザーの視点から機能の複雑さ（入力・出力・照会・内部ファイル・外部インタフェース）を計測してソフトウェア規模を見積もる手法である。プログラム言語に依存しない点が特徴。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ユーザー視点の機能複雑さからソフトウェア規模を見積もる', NULL, true),
  (currval('questions_id_seq'), 'ソースコードの行数（LOC）を基に開発工数を算出する', NULL, false),
  (currval('questions_id_seq'), '過去の類似プロジェクトのデータを統計的に分析する', NULL, false),
  (currval('questions_id_seq'), '専門家の経験と直感で規模を予測するボトムアップ手法', NULL, false);

-- Q451: 暗号化技術（楕円曲線暗号）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 451, 'choice', 1, 1,
  '楕円曲線暗号（ECC）がRSA暗号と比較して優れているとされる点として最も適切なものはどれか。',
  '楕円曲線暗号は，RSAと同等のセキュリティ強度を，より短い鍵長で実現できる。例えばRSAの2048ビット相当のセキュリティがECCでは224ビット程度で達成可能であり，モバイルや組み込み機器など計算リソースが限られた環境で特に有効。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '同等のセキュリティ強度をより短い鍵長で実現できる', NULL, true),
  (currval('questions_id_seq'), '共通鍵暗号のため鍵配送問題が発生しない', NULL, false),
  (currval('questions_id_seq'), '量子コンピュータに対して無条件に安全である', NULL, false),
  (currval('questions_id_seq'), 'ハッシュ値を使うため複合化が不要である', NULL, false);

-- Q452: 暗号化技術（ハイブリッド暗号）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 452, 'choice', 1, 1,
  'TLSで使われるハイブリッド暗号方式の仕組みとして最も適切なものはどれか。',
  'ハイブリッド暗号は，公開鍵暗号で共通鍵を安全に交換し，実際のデータは高速な共通鍵暗号で暗号化する方式。TLSでは鍵交換（RSAやDHE）で生成したセッション鍵をAES等の共通鍵暗号で使用し，速度と安全性を両立する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '公開鍵暗号で共通鍵を交換し，データは共通鍵暗号で暗号化する', NULL, true),
  (currval('questions_id_seq'), '全データを公開鍵暗号で暗号化し，秘密鍵で復号する', NULL, false),
  (currval('questions_id_seq'), '送受信者が同じ鍵を事前に共有して全通信を暗号化する', NULL, false),
  (currval('questions_id_seq'), 'ハッシュ関数と公開鍵暗号を交互に適用してデータを保護する', NULL, false);

-- Q453: ネットワークプロトコル（TCP/UDP）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 453, 'choice', 1, 1,
  'UDP（User Datagram Protocol）を使用することが適切なアプリケーションの例として最も適切なものはどれか。',
  'UDPはコネクションレスで信頼性保証がないが，低遅延・低オーバヘッドで通信できる。リアルタイム性が重要でパケット損失よりも遅延の方が問題になるビデオ会議・音声通話・ライブストリーミング・DNSなどで使われる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'リアルタイムのビデオ会議システム', NULL, true),
  (currval('questions_id_seq'), 'ファイルのFTP転送', NULL, false),
  (currval('questions_id_seq'), 'HTTPによるWebページ閲覧', NULL, false),
  (currval('questions_id_seq'), 'メールのSMTP送信', NULL, false);

-- Q454: ネットワークプロトコル（VPN）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 454, 'choice', 1, 1,
  'IPsecのトンネルモードにおけるパケット処理の説明として最も適切なものはどれか。',
  'IPsecのトンネルモードでは，元のIPパケット全体（IPヘッダを含む）を暗号化し，新しいIPヘッダでカプセル化する。これによりゲートウェイ間の通信を保護し，内部ネットワークのIPアドレスを隠蔽できる。サイト間VPNで主に使用される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '元のIPパケット全体を暗号化し新しいIPヘッダでカプセル化する', NULL, true),
  (currval('questions_id_seq'), 'IPヘッダはそのままでペイロード部分だけを暗号化する', NULL, false),
  (currval('questions_id_seq'), 'TCPヘッダのポート番号をランダムに書き換えて通信を秘匿する', NULL, false),
  (currval('questions_id_seq'), 'MACアドレスを暗号化してレイヤ2レベルでデータを保護する', NULL, false);

-- Q455: ネットワーク（BGPとAS）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 455, 'choice', 1, 1,
  'インターネットのルーティングで使われるBGP（Border Gateway Protocol）の説明として最も適切なものはどれか。',
  'BGPはAS（Autonomous System：自律システム）間でルーティング情報を交換するエクステリアゲートウェイプロトコル（EGP）である。ISP間や大規模ネットワーク間の経路制御に使われ，インターネットの基幹ルーティングを支える。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'AS間でルーティング情報を交換するエクステリアゲートウェイプロトコル', NULL, true),
  (currval('questions_id_seq'), '同一LAN内でMACアドレスとIPアドレスを対応付けるプロトコル', NULL, false),
  (currval('questions_id_seq'), 'AS内部でのリンクコスト最小経路を計算するインテリアプロトコル', NULL, false),
  (currval('questions_id_seq'), '物理層の信号形式と伝送速度を規定する通信規格', NULL, false);

-- Q456: プログラミングパラダイム（関数型プログラミング）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 456, 'choice', 1, 1,
  '関数型プログラミングの特徴として最も適切なものはどれか。',
  '関数型プログラミングでは，副作用のない純粋関数と不変データを用いる。同じ引数には常に同じ結果を返す参照透明性が保たれるため，テストや並列処理が容易になる。HaskellやElixir，ScalaやJavaScriptの関数的スタイルが代表例。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '副作用のない純粋関数と不変データを基本とする', NULL, true),
  (currval('questions_id_seq'), 'クラスと継承を中心にデータと処理をカプセル化する', NULL, false),
  (currval('questions_id_seq'), '命令の実行順序を厳密に制御して状態を更新する', NULL, false),
  (currval('questions_id_seq'), 'データベースの論理的関係をクエリで宣言的に表現する', NULL, false);

-- Q457: プログラミングパラダイム（オブジェクト指向・ポリモーフィズム）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 457, 'choice', 1, 1,
  'オブジェクト指向のポリモーフィズム（多態性）の説明として最も適切なものはどれか。',
  'ポリモーフィズムとは，同じインタフェース（メソッド名）に対して，オブジェクトの型に応じて異なる動作を実現する性質。例えば draw() メソッドを Circle と Rectangle で異なる実装にすると，型を意識せず同一の呼び出しで異なる描画を行える。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '同じインタフェースに対してオブジェクトの型ごとに異なる動作をする', NULL, true),
  (currval('questions_id_seq'), 'データと処理を一つのオブジェクトにまとめて外部から隠蔽する', NULL, false),
  (currval('questions_id_seq'), '親クラスのプロパティとメソッドを子クラスが引き継ぐ仕組み', NULL, false),
  (currval('questions_id_seq'), '実行時に動的にオブジェクトをメモリに確保する仕組み', NULL, false);

-- Q458: プログラミング言語（インタプリタとJIT）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 458, 'choice', 1, 1,
  'JIT（Just-In-Time）コンパイルの説明として最も適切なものはどれか。',
  'JITコンパイルはプログラムの実行時に，頻繁に実行されるコード部分をネイティブ機械語にコンパイルして実行速度を高める技術。JavaのHotSpot VMやJavaScriptのV8エンジンが採用しており，純粋インタプリタよりも高速に動作する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '実行時に頻繁に使われるコードを機械語にコンパイルして高速化する', NULL, true),
  (currval('questions_id_seq'), 'ソースコードを実行前にすべて機械語に変換して実行ファイルを生成する', NULL, false),
  (currval('questions_id_seq'), 'ソースコードを1行ずつ解釈しながら実行する方式', NULL, false),
  (currval('questions_id_seq'), '中間コードを仮想マシン上で解釈実行するバイトコード方式', NULL, false);

-- Q459: データサイエンス（回帰分析）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 459, 'choice', 1, 1,
  '重回帰分析の説明として最も適切なものはどれか。',
  '重回帰分析は，複数の独立変数（説明変数）を用いて1つの従属変数（目的変数）の値を予測する統計手法。例えば「気温・曜日・イベント有無」から「売上」を予測するモデルを構築できる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '複数の説明変数から1つの目的変数を予測する統計手法', NULL, true),
  (currval('questions_id_seq'), 'データを複数のグループに分類する教師なし学習の手法', NULL, false),
  (currval('questions_id_seq'), '時系列データの季節変動・トレンドを分解する手法', NULL, false),
  (currval('questions_id_seq'), '2変数間の関連の強さを−1〜1で表す指標', NULL, false);

-- Q460: データサイエンス（正規化とスケーリング）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 460, 'choice', 1, 1,
  '機械学習の前処理として行う「標準化（standardization）」の説明として最も適切なものはどれか。',
  '標準化は，各特徴量から平均を引いて標準偏差で割り，平均0・分散1の分布に変換する処理（z-スコア変換）。これにより値のスケールが異なる特徴量をそろえ，勾配降下法の収束や距離ベースのモデルの精度を向上させる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'データを平均0・分散1になるよう変換する処理', NULL, true),
  (currval('questions_id_seq'), 'データを0〜1の範囲に線形変換する処理', NULL, false),
  (currval('questions_id_seq'), '欠損値を平均値や中央値で補完する処理', NULL, false),
  (currval('questions_id_seq'), '外れ値を除去してデータを正規分布に近づける処理', NULL, false);

-- Q461: セキュリティ（OAuth 2.0）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 461, 'choice', 1, 1,
  'OAuth 2.0における「アクセストークン」の役割として最も適切なものはどれか。',
  'OAuth 2.0では，リソースオーナー（ユーザー）がサードパーティアプリに権限を委譲する際にアクセストークンを発行する。アプリはこのトークンを使ってAPIにアクセスし，ユーザーのパスワードを直接扱わずに必要なリソースにアクセスできる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ユーザーのパスワードを渡さずにAPIアクセス権を委譲するための証明書', NULL, true),
  (currval('questions_id_seq'), 'ユーザーのパスワードをハッシュ化して保存したもの', NULL, false),
  (currval('questions_id_seq'), 'サーバーとクライアントの通信を暗号化する共通鍵', NULL, false),
  (currval('questions_id_seq'), 'ユーザーの本人確認を行うデジタル証明書', NULL, false);

-- Q462: セキュリティ（WAF）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 462, 'choice', 1, 1,
  'WAF（Web Application Firewall）の主な役割として最も適切なものはどれか。',
  'WAFはHTTPレベルでWebアプリケーションへの攻撃（SQLインジェクション，XSS，CSRFなど）を検出・ブロックするセキュリティ機器。通常のファイアウォールはポート・プロトコル制御が主であり，アプリ層の攻撃は防げないため，WAFで補完する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'SQLインジェクションやXSSなどWebアプリ層の攻撃を検出・遮断する', NULL, true),
  (currval('questions_id_seq'), 'ネットワーク層でIPアドレスとポートを基にパケットをフィルタする', NULL, false),
  (currval('questions_id_seq'), 'マルウェアを検知してエンドポイントを保護するソフトウェア', NULL, false),
  (currval('questions_id_seq'), 'メール本文のスパムと添付ファイルのウイルスを検査するシステム', NULL, false);

-- Q463: セキュリティ（ペネトレーションテスト）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 463, 'choice', 1, 1,
  'ペネトレーションテスト（侵入テスト）の説明として最も適切なものはどれか。',
  'ペネトレーションテストは，セキュリティ専門家が実際の攻撃者と同様の手法でシステムへの侵入を試み，脆弱性を発見する評価手法。事前に許可を得て行う点が不正アクセスと異なる。脆弱性スキャンと違い，脆弱性を実際に悪用して侵入可能かを確認する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '許可を得た専門家が実際の攻撃手法でシステムへの侵入を試みる評価', NULL, true),
  (currval('questions_id_seq'), '既知の脆弱性情報をもとにシステムを自動スキャンして一覧化する', NULL, false),
  (currval('questions_id_seq'), 'ソースコードを静的に解析してバグや脆弱性を検出する手法', NULL, false),
  (currval('questions_id_seq'), '本番環境のログを監視して不審なアクセスを検知するシステム', NULL, false);

-- Q464: データベース（NoSQLのCAP定理）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 464, 'choice', 1, 1,
  'CAP定理において，分散データベースが同時に保証できないとされる3つの性質の組み合わせとして正しいものはどれか。',
  'CAP定理は，分散システムにおいてConsistency（一貫性）・Availability（可用性）・Partition tolerance（ネットワーク分断耐性）の3つを同時にすべて満たすことはできず，いずれか2つしか保証できないことを示す定理。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '一貫性・可用性・ネットワーク分断耐性', NULL, true),
  (currval('questions_id_seq'), '原子性・一貫性・独立性', NULL, false),
  (currval('questions_id_seq'), '可用性・耐障害性・スケーラビリティ', NULL, false),
  (currval('questions_id_seq'), '一貫性・持続性・独立性', NULL, false);

-- Q465: データベース（トランザクション分離レベル）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 465, 'choice', 1, 1,
  'データベースのトランザクション分離レベル「REPEATABLE READ」で防止できる異常現象として最も適切なものはどれか。',
  'REPEATABLE READでは，同一トランザクション内で同じ行を再読み取りしても結果が変わらない（Dirty Read・Non-repeatable Readを防止）。ただしPhantom Read（新たな行の出現）は発生し得る。これはMySQLのInnoDBのデフォルト分離レベルである。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '同一トランザクション内での同じ行の再読み取り結果が変わるNon-repeatable Read', NULL, true),
  (currval('questions_id_seq'), '他トランザクションが挿入した行が再クエリで出現するPhantom Read', NULL, false),
  (currval('questions_id_seq'), 'コミット前のデータを別トランザクションが読み取るDirty Read', NULL, false),
  (currval('questions_id_seq'), '2つのトランザクションが互いのロックを待ち続けるデッドロック', NULL, false);

-- Q466: データベース（インデックス設計）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 466, 'choice', 1, 1,
  'リレーショナルデータベースにおけるインデックスの説明として誤っているものはどれか。',
  'インデックスはSELECT（検索）の速度を向上させるが，INSERT・UPDATE・DELETEの際にインデックスの更新も必要になるため，書き込み性能は低下する。また，インデックス自体がディスク容量を消費するため，不必要なインデックスは避けるべき。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'インデックスを追加するとINSERTやUPDATEの性能が向上する', NULL, true),
  (currval('questions_id_seq'), 'B-treeインデックスは範囲検索（BETWEEN）に有効である', NULL, false),
  (currval('questions_id_seq'), '主キーには自動的にユニークインデックスが作成される', NULL, false),
  (currval('questions_id_seq'), 'カーディナリティが高い列はインデックスの効果が出やすい', NULL, false);

-- Q467: OS（仮想記憶とページ置換）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 467, 'choice', 1, 1,
  'ページ置換アルゴリズムのLRU（Least Recently Used）の説明として最も適切なものはどれか。',
  'LRUは最も長い間参照されていないページを置換対象とするアルゴリズム。局所参照性の原理（直近で使われたデータは近い将来も使われやすい）に基づいており，OPT（最適）に近い性能を持つ。実装コストが高いためClockアルゴリズムで近似することが多い。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '最も長い間参照されていないページを置換するアルゴリズム', NULL, true),
  (currval('questions_id_seq'), '最初にメモリに読み込まれたページを最初に置換するアルゴリズム', NULL, false),
  (currval('questions_id_seq'), '将来最も長く参照されないページを置換する最適アルゴリズム', NULL, false),
  (currval('questions_id_seq'), '参照頻度が最も低いページを置換するアルゴリズム', NULL, false);

-- Q468: OS（スケジューリング・優先度逆転）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 468, 'choice', 1, 1,
  'リアルタイムOSにおける「優先度逆転」問題の説明として最も適切なものはどれか。',
  '優先度逆転は，低優先度タスクがミューテックスを保持しているため，そのロックを待つ高優先度タスクが実行できない状態。さらに中優先度タスクが低優先度タスクを横取りすると，高優先度タスクがさらに待たされる。優先度継承プロトコルで対処する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '低優先度タスクが保持するロックを高優先度タスクが待つ状態', NULL, true),
  (currval('questions_id_seq'), '高優先度タスクが割り込んで低優先度タスクのCPUを奪う状態', NULL, false),
  (currval('questions_id_seq'), '複数タスクが互いのロック解放を待ちデッドロックする状態', NULL, false),
  (currval('questions_id_seq'), 'タスクの優先度が動的に上下してスケジューリングが不安定になる状態', NULL, false);

-- Q469: ソフトウェア工学（テスト技法・境界値）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 469, 'choice', 1, 1,
  '入力値が1以上100以下の整数を受け付ける仕様に対して，境界値分析で選ぶべきテストケースとして最も適切なものはどれか。',
  '境界値分析では，有効値の境界とその外側1つを選ぶ。1以上100以下なら境界は1と100，無効値境界は0と101。したがって0・1・100・101がテストケースとなる。等価クラス分割の境界に着目してバグが多い境界付近を重点テストする手法。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '0, 1, 100, 101', NULL, true),
  (currval('questions_id_seq'), '1, 50, 100', NULL, false),
  (currval('questions_id_seq'), '-1, 0, 50, 100, 101', NULL, false),
  (currval('questions_id_seq'), '1, 2, 99, 100', NULL, false);

-- Q470: ソフトウェア工学（ホワイトボックステスト）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 470, 'choice', 1, 1,
  'ホワイトボックステストのC1カバレッジ（分岐カバレッジ）の説明として最も適切なものはどれか。',
  'C1（分岐カバレッジ）は，すべての分岐（条件式の真・偽の両パス）を少なくとも1回実行することを目標とする網羅基準。C0（命令カバレッジ：全命令を実行）より厳しく，C2（条件カバレッジ）より緩い基準。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'すべての分岐の真・偽の両パスを少なくとも1回実行する基準', NULL, true),
  (currval('questions_id_seq'), 'すべての命令を少なくとも1回実行する基準', NULL, false),
  (currval('questions_id_seq'), '条件式のすべての組み合わせを網羅する基準', NULL, false),
  (currval('questions_id_seq'), '全実行パスをすべて網羅する最も厳格な基準', NULL, false);

-- Q471: プロジェクト管理（EVM）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 471, 'choice', 1, 1,
  'アーンドバリューマネジメント（EVM）においてSPI（Schedule Performance Index）が1.0未満であることが示す状況として最も適切なものはどれか。',
  'SPI＝EV（出来高）÷PV（計画価値）。SPI＜1.0はEV＜PV，つまり計画より進捗が遅い（スケジュール遅延）を意味する。一方CPI（コスト効率指数）＜1.0はコスト超過を示す。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'プロジェクトの進捗が計画より遅れている', NULL, true),
  (currval('questions_id_seq'), 'プロジェクトのコストが予算を超過している', NULL, false),
  (currval('questions_id_seq'), 'プロジェクトの品質が基準を下回っている', NULL, false),
  (currval('questions_id_seq'), 'プロジェクトのスコープが当初計画を超過している', NULL, false);

-- Q472: システム開発手法（ユーザーストーリー）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 472, 'choice', 1, 1,
  'アジャイル開発におけるユーザーストーリーの形式として最も適切なものはどれか。',
  'ユーザーストーリーは「〔役割〕として，〔機能〕が欲しい，なぜなら〔理由・価値〕だから」という形式で記述する。開発者視点でなくユーザーの価値を起点に要件を表現することで，ビジネス価値と開発の優先度を結びつける。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '「〔役割〕として，〔機能〕が欲しい，なぜなら〔理由〕だから」', NULL, true),
  (currval('questions_id_seq'), '「機能名：〔説明〕，入力：〔データ〕，出力：〔結果〕」', NULL, false),
  (currval('questions_id_seq'), '「〔システム〕は〔条件〕のとき〔動作〕しなければならない」', NULL, false),
  (currval('questions_id_seq'), '「ユースケース名，アクター，前提条件，主シナリオ，代替シナリオ」', NULL, false);

-- Q473: システム開発手法（CI/CDパイプライン）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 473, 'choice', 1, 1,
  'CI/CDパイプラインの一般的な実行ステップの順序として最も適切なものはどれか。',
  'CI/CDパイプラインは，コードのプッシュをトリガーに①ビルド②テスト③静的解析/品質チェック④ステージング環境へのデプロイ⑤承認後に本番デプロイ という順序で自動実行されることが多い。早期フィードバックのためビルド・テストを最初に実施する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ビルド → テスト → 品質チェック → ステージングデプロイ → 本番デプロイ', NULL, true),
  (currval('questions_id_seq'), '本番デプロイ → テスト → ビルド → ステージングデプロイ → 承認', NULL, false),
  (currval('questions_id_seq'), 'テスト → ビルド → 本番デプロイ → ステージングデプロイ → 承認', NULL, false),
  (currval('questions_id_seq'), '静的解析 → 本番デプロイ → ビルド → テスト → ステージングデプロイ', NULL, false);

-- Q474: コンピュータアーキテクチャ（キャッシュコヒーレンシ）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 474, 'choice', 1, 1,
  'マルチコアプロセッサにおける「キャッシュコヒーレンシ」が必要とされる理由として最も適切なものはどれか。',
  'マルチコアでは各コアが独自のキャッシュを持つため，同じメモリアドレスのデータが複数のコアのキャッシュに存在し得る。一方のコアがデータを更新すると他のコアのキャッシュが古い値を持つ（キャッシュ不一致）ため，コヒーレンシプロトコル（MESI等）で一貫性を保つ必要がある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '複数コアのキャッシュ間でデータの一貫性を保つため', NULL, true),
  (currval('questions_id_seq'), 'キャッシュのヒット率を最大化してメモリアクセスを高速化するため', NULL, false),
  (currval('questions_id_seq'), 'プロセス間でメモリ領域を分離して保護するため', NULL, false),
  (currval('questions_id_seq'), 'TLBのフラッシュ頻度を減らしてコンテキストスイッチを高速化するため', NULL, false);

-- Q475: コンピュータアーキテクチャ（分岐予測）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 475, 'choice', 1, 1,
  'パイプラインプロセッサにおける「分岐予測」の目的として最も適切なものはどれか。',
  '分岐命令（if/loop等）でどちらの分岐が取られるかが確定する前に，次の命令のフェッチ・デコードを続けるためには予測が必要。予測が外れると（分岐ミス予測）パイプラインをフラッシュして再実行するペナルティが生じる。動的分岐予測（履歴ベース）で予測精度を高める。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '分岐命令の結果が確定する前にパイプラインを止めずに処理を継続するため', NULL, true),
  (currval('questions_id_seq'), '投機実行によりセキュリティ脆弱性が生じないようにするため', NULL, false),
  (currval('questions_id_seq'), 'キャッシュミス時のメモリアクセス遅延を隠蔽するため', NULL, false),
  (currval('questions_id_seq'), 'マルチスレッド処理でスレッド間のデータ競合を回避するため', NULL, false);

-- Q476: アルゴリズム（ハッシュテーブルの衝突解決）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 476, 'choice', 1, 1,
  'ハッシュテーブルの衝突解決手法である「オープンアドレス法（開番地法）」の説明として最も適切なものはどれか。',
  'オープンアドレス法では，衝突が発生した場合に別のバケット（線形探索・二次探索・ダブルハッシュ等の規則で）を探して格納する。チェイン法（各バケットにリストを持つ）と対比され，メモリ効率は高いが負荷率が上がると性能劣化が著しい。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '衝突時に別のバケット位置を探して格納する手法', NULL, true),
  (currval('questions_id_seq'), '各バケットにリストを持ち衝突した要素をリストに連結する手法', NULL, false),
  (currval('questions_id_seq'), '衝突率が高くなったらハッシュ関数自体を変えて再ハッシュする手法', NULL, false),
  (currval('questions_id_seq'), '衝突した要素を別テーブルに移動して管理する分離チェイン法', NULL, false);

-- Q477: アルゴリズム（グラフ・BFSとDFS）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 477, 'choice', 1, 1,
  '幅優先探索（BFS）が深さ優先探索（DFS）より適している用途として最も適切なものはどれか。',
  'BFSはスタート頂点から近い頂点から順に探索するため，重みなしグラフにおける最短経路探索（ホップ数最小）に適している。DFSはスタックを使い深く潜る探索で，サイクル検出・トポロジカルソート・迷路探索などに適する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '重みなしグラフでの最短経路（最小ホップ数）探索', NULL, true),
  (currval('questions_id_seq'), '有向グラフのサイクル検出', NULL, false),
  (currval('questions_id_seq'), 'DAGのトポロジカルソート', NULL, false),
  (currval('questions_id_seq'), '再帰的なバックトラッキングを用いた組み合わせ探索', NULL, false);

-- Q478: 論理回路（フリップフロップとクロック）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 478, 'choice', 1, 1,
  'D型フリップフロップの動作として最も適切なものはどれか。',
  'D型フリップフロップは，クロック信号の立ち上がりエッジ（または立ち下がりエッジ）でD入力の値をラッチし，Q出力に保持する。次のクロックエッジまでQ出力は変化しない。1ビットのデータ記憶や同期回路の基本要素として広く使われる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'クロックのエッジでD入力の値をQ出力に取り込み保持する', NULL, true),
  (currval('questions_id_seq'), 'S入力でセット，R入力でリセットして状態を保持する', NULL, false),
  (currval('questions_id_seq'), 'クロックのたびにQ出力を反転（トグル）する', NULL, false),
  (currval('questions_id_seq'), 'J=1,K=0でセット，J=0,K=1でリセット，J=K=1でトグルする', NULL, false);

-- Q479: 数学基礎（排他的論理和の応用）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 479, 'choice', 1, 1,
  'XOR（排他的論理和）演算の性質として最も適切なものはどれか。',
  'XOR（A⊕B）の主な性質：①A⊕A＝0（自分自身とXORすると0），②A⊕0＝A（0とXORすると自分），③A⊕B＝B⊕A（交換法則），④（A⊕B）⊕B＝A（可逆性）。この可逆性から暗号化・RAID5のパリティ計算などに利用される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '同じ値を2回XORすると元の値に戻る（可逆性）', NULL, true),
  (currval('questions_id_seq'), 'どちらかが1なら結果は1になる（OR等価）', NULL, false),
  (currval('questions_id_seq'), '両方が1のときのみ結果は1になる（AND等価）', NULL, false),
  (currval('questions_id_seq'), '結果はどちらかの入力に依存せず常に一定である', NULL, false);

-- Q480: 情報倫理・コンプライアンス（AIガバナンス）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 480, 'choice', 1, 1,
  'AI利用における「説明可能性（Explainability）」が重要とされる理由として最も適切なものはどれか。',
  'AIの判断が人間に理解できない（ブラックボックス）場合，誤り・差別・不公正な結果が起きても原因特定・改善・責任追跡が困難になる。医療診断・与信・採用などハイリスクな意思決定では，AIの判断根拠を説明できる透明性が法的・倫理的に求められる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'AIの判断根拠を人間が理解・検証・改善できるようにするため', NULL, true),
  (currval('questions_id_seq'), 'AIモデルの推論速度を向上させて応答時間を短縮するため', NULL, false),
  (currval('questions_id_seq'), 'AIの学習データ量を削減してストレージコストを低減するため', NULL, false),
  (currval('questions_id_seq'), 'AIを量子コンピュータ上で動作させるための前提条件を満たすため', NULL, false);

-- Q481: ネットワーク（IPv6の特徴）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 481, 'choice', 1, 1,
  'IPv6がIPv4と比較して改善された点として最も適切なものはどれか。',
  'IPv6の主な改善点：①アドレス空間を32bitから128bitに拡張（枯渇問題を解決），②IPsecをオプションでなく標準仕様に組み込み，③ヘッダを簡素化して処理効率を向上，④ステートレスアドレス自動設定（SLAAC）でアドレス自動割り当てをサポート，⑤NATが原則不要。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'アドレス空間を128ビットに拡張してアドレス枯渇問題を解決した', NULL, true),
  (currval('questions_id_seq'), 'TCPの代わりにUDPを標準プロトコルとして採用した', NULL, false),
  (currval('questions_id_seq'), 'パケット転送速度を向上させるため経路表を廃止した', NULL, false),
  (currval('questions_id_seq'), 'プライベートアドレスを廃止してNATを必須とした', NULL, false);

-- Q482: ネットワーク（VLAN）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 482, 'choice', 1, 1,
  'VLAN（Virtual LAN）を導入する主なメリットとして最も適切なものはどれか。',
  'VLANは物理的な接続と独立して論理的なネットワーク分割を実現する技術。同一スイッチ内でも部門・セキュリティレベル別にブロードキャストドメインを分割でき，セキュリティ向上・ネットワーク管理の柔軟性・帯域の有効活用が図れる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '物理配線を変えずに論理的なネットワーク分割ができる', NULL, true),
  (currval('questions_id_seq'), '通信速度を物理的なケーブル容量以上に向上できる', NULL, false),
  (currval('questions_id_seq'), 'インターネットへの接続をVPN不要で暗号化できる', NULL, false),
  (currval('questions_id_seq'), 'MACアドレスを動的に割り当てて管理を自動化できる', NULL, false);

-- Q483: セキュリティ（SIEM）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 483, 'choice', 1, 1,
  'SIEM（Security Information and Event Management）システムの主な機能として最も適切なものはどれか。',
  'SIEMは組織内の複数のシステム・デバイスからセキュリティログ・イベントを一元収集し，リアルタイムに相関分析してサイバー攻撃や異常を検知するプラットフォーム。インシデント対応の優先度付けと証跡管理にも活用される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '複数システムのログを一元収集し相関分析してセキュリティ脅威を検知する', NULL, true),
  (currval('questions_id_seq'), 'エンドポイントのウイルスをリアルタイムにスキャンして駆除する', NULL, false),
  (currval('questions_id_seq'), '脆弱性スキャンで発見した脆弱性にパッチを自動適用する', NULL, false),
  (currval('questions_id_seq'), 'Webアプリへの不正リクエストをHTTPレベルで検出・遮断する', NULL, false);

-- Q484: セキュリティ（フィッシング対策）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 484, 'choice', 1, 1,
  'フィッシング攻撃に対する技術的対策として最も適切なものはどれか。',
  'DMARCは，SPFとDKIMを組み合わせてメール送信ドメインを認証し，なりすましメールを検出・拒否できるプロトコル。フィッシングで悪用されるドメインのなりすましを技術的に防止する効果が高い。MFA（多要素認証）は資格情報漏洩後の不正ログインを防ぐ補完対策。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'DMARC/DKIM/SPFによるメール送信ドメイン認証の導入', NULL, true),
  (currval('questions_id_seq'), 'WebサーバへのWAF導入によるSQLインジェクション防止', NULL, false),
  (currval('questions_id_seq'), 'ネットワーク機器のファームウェアを最新版に更新する', NULL, false),
  (currval('questions_id_seq'), 'ファイルサーバのアクセス権限を最小権限の原則で設定する', NULL, false);

-- Q485: システム設計（マイクロサービス間通信）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 485, 'choice', 1, 1,
  'マイクロサービスアーキテクチャにおいてサービス間通信にメッセージキュー（非同期メッセージング）を使う主なメリットとして最も適切なものはどれか。',
  'メッセージキューを使った非同期通信では，送信側と受信側が直接接続されないため，一方が停止しても他方に影響が及ばない（疎結合）。処理速度の違いもキューが緩衝するため，負荷スパイクへの耐性も高まる。一方でデータの整合性管理が複雑になる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'サービス間が疎結合になり一方の障害が他方に直接影響しない', NULL, true),
  (currval('questions_id_seq'), '全サービスで強い一貫性（Strong Consistency）を実現できる', NULL, false),
  (currval('questions_id_seq'), 'サービス間のレイテンシが同期呼び出しより常に低くなる', NULL, false),
  (currval('questions_id_seq'), '障害発生時の自動ロールバックが容易になる', NULL, false);

-- Q486: システム設計（APIゲートウェイ）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 486, 'choice', 1, 1,
  'マイクロサービスアーキテクチャにおけるAPIゲートウェイの役割として最も適切なものはどれか。',
  'APIゲートウェイはクライアントとマイクロサービス群の間に位置し，認証・認可・レート制限・ロードバランシング・ログ・リクエストルーティングを一元管理するエントリポイント。クライアントが個々のマイクロサービスのアドレスを知る必要がなくなる（BFF: Backend for Frontendパターンも参照）。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'クライアントリクエストを受け付け認証・ルーティング等を一元管理する', NULL, true),
  (currval('questions_id_seq'), 'マイクロサービス間の非同期メッセージを仲介するブローカー', NULL, false),
  (currval('questions_id_seq'), 'サービスの健全性を監視して自動的にスケールアウトを行う', NULL, false),
  (currval('questions_id_seq'), 'データベースのコネクションプールを管理してクエリを最適化する', NULL, false);

-- Q487: OS・ソフトウェア（コンテナオーケストレーション）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 487, 'choice', 1, 1,
  'Kubernetesにおける「Pod」の説明として最も適切なものはどれか。',
  'PodはKubernetesの最小デプロイ単位で，1つ以上のコンテナをまとめたグループ。同一Pod内のコンテナはネットワーク名前空間（IPアドレス・ポート）とストレージボリュームを共有する。Podは通常DeploymentやStatefulSetで管理され，障害時に自動的に再起動される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'Kubernetesの最小デプロイ単位で1つ以上のコンテナをまとめたグループ', NULL, true),
  (currval('questions_id_seq'), '複数のWorkerノードを管理するKubernetesの制御面コンポーネント', NULL, false),
  (currval('questions_id_seq'), 'コンテナイメージを保存・配布するためのレジストリサービス', NULL, false),
  (currval('questions_id_seq'), 'サービスへのトラフィックを分散するロードバランサーリソース', NULL, false);

-- Q488: データベース（グラフデータベース）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 488, 'choice', 1, 1,
  'グラフデータベースが特に適しているユースケースとして最も適切なものはどれか。',
  'グラフデータベース（Neo4j等）は，ノード（エンティティ）とエッジ（関係）を直接格納し，複雑な多対多の関係の探索（ソーシャルグラフ・推薦・不正検出・知識グラフ）に強い。RDBでは多段JOINが必要なところを，グラフ走査で高速に処理できる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ソーシャルネットワークの友人関係や推薦エンジンの関係探索', NULL, true),
  (currval('questions_id_seq'), '大量のセンサーデータの時系列集計と可視化', NULL, false),
  (currval('questions_id_seq'), 'キャッシュとしてKVデータを高速にメモリ読み書きする', NULL, false),
  (currval('questions_id_seq'), '全文検索のインデックスと転置インデックスの管理', NULL, false);

-- Q489: 情報システム（ERPシステム）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 489, 'choice', 1, 1,
  'ERP（Enterprise Resource Planning）システムの主な特徴として最も適切なものはどれか。',
  'ERPは，企業の財務・人事・製造・物流・販売などの基幹業務データを一元的に管理し，部門間でリアルタイムに共有するシステム。個別システムのサイロ化を解消し，経営意思決定に必要なデータを統合的に参照できる。SAP・Oracle ERPが代表例。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '財務・人事・製造など基幹業務データを一元管理・統合するシステム', NULL, true),
  (currval('questions_id_seq'), '顧客との関係を管理し営業活動や顧客サポートを支援するシステム', NULL, false),
  (currval('questions_id_seq'), 'サプライチェーン全体の需要予測と在庫最適化を行うシステム', NULL, false),
  (currval('questions_id_seq'), 'Webサイトのコンテンツ作成・公開・管理を行うシステム', NULL, false);

-- Q490: 情報システム（デジタルトランスフォーメーション）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 490, 'choice', 1, 1,
  '経済産業省が定義するDX（デジタルトランスフォーメーション）の本質として最も適切なものはどれか。',
  'DXとはデジタル技術を活用してビジネスモデル・業務プロセス・組織文化を変革し，競争優位を確立することを指す。「デジタル化（Digitization）」や「電子化（Digitalization）」にとどまらず，企業と社会のあり方を変えることが本質。経産省のDXレポートで2025年の崖問題として警告された。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'デジタル技術でビジネスモデル・組織を変革し競争優位を確立すること', NULL, true),
  (currval('questions_id_seq'), '紙の業務書類をPDFやExcelに置き換えてペーパーレス化すること', NULL, false),
  (currval('questions_id_seq'), '既存の基幹システムを最新のクラウドサービスに移行すること', NULL, false),
  (currval('questions_id_seq'), 'AIやビッグデータを活用して業務の自動化・省力化を進めること', NULL, false);

-- Q491: プロジェクト管理（リスク管理）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 491, 'choice', 1, 1,
  'プロジェクトリスクへの対応戦略の一つである「リスクの転嫁（Transfer）」の例として最も適切なものはどれか。',
  'リスク転嫁は，リスクの影響を第三者に移転させる戦略。プロジェクトの保険加入や，SLAで障害時のペナルティをベンダー負担にする契約がこれに該当する。回避（リスク要因排除），軽減（発生確率・影響低減），受容（リスクをそのまま受け入れる）と並ぶ4つの対応戦略の1つ。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '障害発生時の損失を補償する保険に加入する', NULL, true),
  (currval('questions_id_seq'), 'リスクの発生確率を下げるための対策を実施する', NULL, false),
  (currval('questions_id_seq'), 'リスクが顕在化した際のコンティンジェンシープランを策定する', NULL, false),
  (currval('questions_id_seq'), 'リスクの原因となる技術の採用をやめて代替手段に変更する', NULL, false);

-- Q492: 品質管理（SLA）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 492, 'choice', 1, 1,
  'SLA（Service Level Agreement）に含まれる「可用性99.9%」が示すシステムの年間ダウンタイムとして最も近いものはどれか。',
  '年間時間＝365×24＝8760時間。ダウンタイム＝8760×(1-0.999)＝8760×0.001≒8.76時間≒約8時間46分（9時間未満）。99.9%は"スリーナイン"と呼ばれ，月あたり約43分のダウンタイムが許容される水準。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '約8.76時間', NULL, true),
  (currval('questions_id_seq'), '約52.6分', NULL, false),
  (currval('questions_id_seq'), '約87.6時間', NULL, false),
  (currval('questions_id_seq'), '約5.26分', NULL, false);

-- Q493: 情報処理（文字コード・UTF-8）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 493, 'choice', 1, 1,
  'UTF-8における日本語の漢字1文字が使用するバイト数として最も適切なものはどれか。',
  'UTF-8は可変長エンコーディングで，ASCII（U+0000〜U+007F）は1バイト，ラテン拡張等は2バイト，日本語の仮名・漢字（U+0800〜U+FFFF）は3バイト，サロゲートペアを使う文字（絵文字等）は4バイトで表現する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '3バイト', NULL, true),
  (currval('questions_id_seq'), '2バイト', NULL, false),
  (currval('questions_id_seq'), '4バイト', NULL, false),
  (currval('questions_id_seq'), '1バイト', NULL, false);

-- Q494: 情報処理（誤り訂正・CRC）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 494, 'choice', 1, 1,
  'CRC（巡回冗長検査）の説明として最も適切なものはどれか。',
  'CRCはデータを生成多項式で割った余りを誤り検出コードとして付加する方式。受信側が同じ演算を行い，余りが一致すれば正常と判断する。誤りの検出はできるが訂正はできない（訂正には誤り訂正符号が必要）。イーサネットフレームやZIPファイルで使われる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '生成多項式による割り算の余りを利用して誤りを検出する方式', NULL, true),
  (currval('questions_id_seq'), '複数ビットの誤りを自動的に検出して訂正できる符号方式', NULL, false),
  (currval('questions_id_seq'), 'データを転送するたびに奇数パリティで1ビットの誤りを検出する', NULL, false),
  (currval('questions_id_seq'), '送信データのハッシュ値を比較して改ざんを検知する方式', NULL, false);

-- Q495: コンピュータシステム（クラウドサービスモデル）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 495, 'choice', 1, 1,
  'PaaS（Platform as a Service）の説明として最も適切なものはどれか。',
  'PaaSはアプリケーションを開発・実行するためのプラットフォーム（OS・ミドルウェア・実行環境・データベース）をクラウドで提供するサービス。利用者はアプリコードの開発に集中でき，インフラ管理が不要。Google App Engine・Heroku・Azure App Serviceが代表例。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'アプリ開発・実行環境（OS・ミドルウェア）をクラウドで提供するサービス', NULL, true),
  (currval('questions_id_seq'), '仮想サーバ・ストレージ等のインフラをクラウドで提供するサービス', NULL, false),
  (currval('questions_id_seq'), '業務アプリケーション（メール・CRM等）をそのまま利用できるサービス', NULL, false),
  (currval('questions_id_seq'), 'ユーザーのデータをクラウド上に保存・共有するストレージサービス', NULL, false);

-- Q496: コンピュータシステム（サーバーレス）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 496, 'choice', 1, 1,
  'サーバーレスコンピューティング（FaaS）の特徴として最も適切なものはどれか。',
  'FaaS（Function as a Service）は，関数単位でコードを実行するサーバーレス形態。イベント（HTTPリクエスト・キューメッセージ等）をトリガーに関数が起動し，実行時間分のみ課金される。サーバーのプロビジョニング・管理が不要で，スケーリングも自動。AWS Lambda・Cloud Functions・Azure Functionsが代表例。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'イベント駆動で関数を実行し実行時間のみ課金されスケーリングが自動', NULL, true),
  (currval('questions_id_seq'), '専用の物理サーバーを占有してパフォーマンスを保証する方式', NULL, false),
  (currval('questions_id_seq'), '仮想マシンを常時起動して任意のアプリを実行できる環境', NULL, false),
  (currval('questions_id_seq'), 'コンテナを起動して複数のマイクロサービスを同一ホストで実行する方式', NULL, false);

-- Q497: ソフトウェア工学（リファクタリング）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 497, 'choice', 1, 1,
  'リファクタリングの定義として最も適切なものはどれか。',
  'リファクタリングは，外部から見た振る舞い（機能）を変えずにコードの内部構造（可読性・保守性・拡張性）を改善する作業。重複コードの排除・メソッド分割・命名改善などが代表的な手法。テストが十分ある状態で行うことが前提。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '外部の振る舞いを変えずにコードの内部構造を改善する作業', NULL, true),
  (currval('questions_id_seq'), '既存コードに新しい機能を追加する開発作業', NULL, false),
  (currval('questions_id_seq'), 'バグを修正して正しい動作に戻す修正作業', NULL, false),
  (currval('questions_id_seq'), 'ソフトウェアを旧バージョンと互換性を保ちながら再設計する作業', NULL, false);

-- Q498: 法務（ソフトウェアライセンス・コピーレフト）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 498, 'choice', 1, 1,
  'GNU GPL（General Public License）のコピーレフト条項の説明として最も適切なものはどれか。',
  'コピーレフトとは，GPLソフトウェアを改変・配布する場合，派生物も同じGPLで公開しなければならないという条項。これにより自由なソフトウェアの「連鎖的な自由」が維持される。商用製品に組み込む場合はソースコード開示義務が生じるため注意が必要。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'GPLソフトウェアの改変・配布物も同じGPLで公開しなければならない', NULL, true),
  (currval('questions_id_seq'), 'ソースコードを公開すれば商用利用や改変を自由に行える', NULL, false),
  (currval('questions_id_seq'), '著作権を放棄してパブリックドメインとして公開する仕組み', NULL, false),
  (currval('questions_id_seq'), 'ソフトウェアを複数台のサーバーにインストールすることを禁止する条項', NULL, false);

-- Q499: 開発手法（ドキュメント管理・アーキテクチャ決定記録）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 499, 'choice', 1, 1,
  'ADR（Architecture Decision Record）の目的として最も適切なものはどれか。',
  'ADRはアーキテクチャ上の重要な決定事項（なぜその技術を選んだか，代替案と棄却理由，トレードオフなど）を記録したドキュメント。時間が経っても「なぜこうなったか」を理解できるようにし，同じ議論の繰り返しを防ぐ。コードリポジトリ内に保管されることが多い。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'アーキテクチャ上の重要な決定とその理由・代替案を記録すること', NULL, true),
  (currval('questions_id_seq'), 'システムの運用手順や障害対応フローを文書化すること', NULL, false),
  (currval('questions_id_seq'), 'APIの仕様（エンドポイント・リクエスト・レスポンス）を記述すること', NULL, false),
  (currval('questions_id_seq'), 'テスト計画とテストケースを管理するためのドキュメント', NULL, false);

-- Q500: 総合（情報処理試験の意義と資格活用）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 500, 'choice', 1, 1,
  '基本情報技術者試験（FE）の位置づけとして最も適切なものはどれか。',
  '基本情報技術者試験はIPAが実施する国家試験（情報処理技術者試験）の一区分。IT人材として基礎的な知識・技能（科目A：知識問題，科目B：アルゴリズム・情報セキュリティ）を認定する。応用情報技術者試験の前提資格として位置づけられ，IT企業での新入社員・学生が多く受験する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'IPAが実施するITエンジニアの基礎的な知識・技能を認定する国家試験', NULL, true),
  (currval('questions_id_seq'), 'プロジェクトマネジメントの国際資格PMPの日本版相当試験', NULL, false),
  (currval('questions_id_seq'), 'セキュリティ専門家向けのCISSPに相当する高度な資格試験', NULL, false),
  (currval('questions_id_seq'), 'ネットワーク機器ベンダーが認定するCCNAと同等の民間資格試験', NULL, false);
-- ----------------------------------------
-- 科目A（section_id=1）Q501〜Q550
-- ----------------------------------------

-- Q501: データ構造（スタックの応用・括弧対応検査）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 501, 'choice', 1, 1,
  '文字列中の括弧の対応を検査するアルゴリズムでスタックを利用する理由として最も適切なものはどれか。',
  'スタックは後入れ先出し（LIFO）のデータ構造。括弧対応検査では開き括弧をスタックに積み，閉じ括弧が出たときに直近の開き括弧（スタックの先頭）と照合する。入れ子構造の正しい対応関係はLIFO操作で自然に表現できるため，スタックが適している。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '入れ子の括弧は直近に開いたものを最初に閉じるLIFO構造で表現できるから', NULL, true),
  (currval('questions_id_seq'), '括弧を左から右へ順番に処理するFIFO操作が必要だから', NULL, false),
  (currval('questions_id_seq'), '括弧の種類を優先度付きで管理するためヒープが適しているから', NULL, false),
  (currval('questions_id_seq'), '文字列を逆順にソートしてから照合する必要があるから', NULL, false);

-- Q502: データ構造（キューの応用・BFS）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 502, 'choice', 1, 1,
  '幅優先探索（BFS）の実装でキュー（Queue）を使う理由として最も適切なものはどれか。',
  'BFSはスタート頂点から近い頂点（ホップ数が少ない）から順に探索する。訪問順をFIFO（先入れ先出し）で管理することで，同じ距離の頂点を先に処理してから次の距離の頂点に進むことができる。スタックを使うと深さ優先探索（DFS）になる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '先に追加した頂点から処理するFIFO操作でホップ数順に探索できるから', NULL, true),
  (currval('questions_id_seq'), '後に追加した頂点から処理するLIFO操作で深く探索できるから', NULL, false),
  (currval('questions_id_seq'), '探索済み頂点を優先度順に取り出すため優先度キューが必要だから', NULL, false),
  (currval('questions_id_seq'), 'グラフの全辺を並べ替えてコスト順に処理するため配列が適しているから', NULL, false);

-- Q503: データ構造（二分探索木の性質）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 503, 'choice', 1, 1,
  '二分探索木（BST）において，ノードを中順（in-order）でたどったときに得られる値の列として最も適切なものはどれか。',
  '二分探索木のin-order走査（左部分木→ルート→右部分木）は，BSTの性質（左子<ルート<右子）から，ノードの値を昇順に列挙する。これを利用してBSTを整列済みリストに変換したり，ソート済み出力を得ることができる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '昇順に整列された値の列', NULL, true),
  (currval('questions_id_seq'), '降順に整列された値の列', NULL, false),
  (currval('questions_id_seq'), '挿入した順番と同じ値の列', NULL, false),
  (currval('questions_id_seq'), 'ルートから葉へのパス順の値の列', NULL, false);

-- Q504: アルゴリズム（バブルソートの計算量）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 504, 'choice', 1, 1,
  'バブルソートの最悪時間計算量として最も適切なものはどれか。',
  'バブルソートはn個の要素に対して外側ループn-1回・内側ループ最大n-1回の比較交換を行うため，最悪・平均ともO(n²)。ただし入力が既にソート済みの場合（最良），比較のみで交換なしなのでO(n)になる（最適化バブルソートの場合）。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(n²)', NULL, true),
  (currval('questions_id_seq'), 'O(n log n)', NULL, false),
  (currval('questions_id_seq'), 'O(n)', NULL, false),
  (currval('questions_id_seq'), 'O(log n)', NULL, false);

-- Q505: アルゴリズム（動的計画法・ナップサック問題）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 505, 'choice', 1, 1,
  '0/1ナップサック問題を動的計画法で解く際の時間計算量として最も適切なものはどれか（nを品物数，Wをナップサックの容量とする）。',
  '0/1ナップサック問題のDP解法は，dp[i][w]（i番目までの品物でナップサック容量wの最大価値）を求める2次元テーブルを埋める。テーブルサイズはn×W，各セルO(1)で更新するため総計算量はO(nW)（疑似多項式時間）。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(nW)', NULL, true),
  (currval('questions_id_seq'), 'O(n²)', NULL, false),
  (currval('questions_id_seq'), 'O(2ⁿ)', NULL, false),
  (currval('questions_id_seq'), 'O(n log W)', NULL, false);

-- Q506: アルゴリズム（クイックソートの特性）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 506, 'choice', 1, 1,
  'クイックソートの最悪時間計算量が O(n²) になる条件として最も適切なものはどれか。',
  'クイックソートはピボットを選んで分割・再帰する。ピボットが毎回最小値または最大値（すなわち既にソート済みまたは逆順）になると，分割が1:n-1に偏り，再帰の深さがn回になる。このとき比較回数はn+(n-1)+…+1=O(n²)となる。ランダムピボットや中央値の中央値で回避できる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ピボットが常に最小値または最大値になるとき（既にソート済みの入力など）', NULL, true),
  (currval('questions_id_seq'), 'ピボットが常に中央値になるとき', NULL, false),
  (currval('questions_id_seq'), '入力がランダムな順序のとき', NULL, false),
  (currval('questions_id_seq'), '入力に重複した要素が多く含まれるとき', NULL, false);

-- Q507: コンピュータアーキテクチャ（命令セット・CISC vs RISC詳細）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 507, 'choice', 1, 1,
  'CISC（Complex Instruction Set Computer）の特徴として最も適切なものはどれか。',
  'CISCは複雑な命令を多数持ち，1命令で複雑な操作（メモリ間演算など）を実行できる。マイクロコードで実装されるためハードウェアが複雑になる。x86アーキテクチャが代表例。一方RISCは単純な命令セットでパイプライン効率を高め，ロード/ストアアーキテクチャを採用する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '複雑な命令を多数持ち1命令で複雑な操作を実行できる', NULL, true),
  (currval('questions_id_seq'), '命令セットを単純化しロード/ストア命令のみでメモリアクセスする', NULL, false),
  (currval('questions_id_seq'), 'すべての命令が1クロックで実行できるように設計されている', NULL, false),
  (currval('questions_id_seq'), 'レジスタ数を最小限にしてチップ面積を削減する設計思想', NULL, false);

-- Q508: コンピュータアーキテクチャ（記憶階層）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 508, 'choice', 1, 1,
  'コンピュータの記憶階層において，アクセス速度が最も速い記憶装置はどれか。',
  '記憶階層はアクセス速度の速い順に，レジスタ > L1キャッシュ > L2キャッシュ > L3キャッシュ > 主記憶（RAM）> SSD/HDD > 磁気テープ。速いほど容量が小さくコストが高い。局所参照性（時間的・空間的）を利用してキャッシュへのヒット率を高める。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'レジスタ', NULL, true),
  (currval('questions_id_seq'), 'L1キャッシュ', NULL, false),
  (currval('questions_id_seq'), '主記憶（RAM）', NULL, false),
  (currval('questions_id_seq'), 'SSDストレージ', NULL, false);

-- Q509: コンピュータアーキテクチャ（仮想化・ハイパーバイザー型）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 509, 'choice', 1, 1,
  'ハイパーバイザー型仮想化（Type 1）とホスト型仮想化（Type 2）の違いとして最も適切なものはどれか。',
  'Type 1（ベアメタル型）はハイパーバイザーがハードウェア上に直接動作し，複数のゲストOSを管理する（VMware ESXi・Hyper-V・KVMなど）。Type 2はホストOS上でハイパーバイザーが動作し（VirtualBox・VMware Workstationなど），性能オーバーヘッドが大きいが導入が容易。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'Type 1はハードウェア直上で動作し，Type 2はホストOS上で動作する', NULL, true),
  (currval('questions_id_seq'), 'Type 1はコンテナ型，Type 2はVM型の仮想化を指す', NULL, false),
  (currval('questions_id_seq'), 'Type 1はソフトウェアエミュレーション，Type 2はハードウェア支援を使う', NULL, false),
  (currval('questions_id_seq'), 'Type 1はLinuxのみ，Type 2はWindowsのみ対応する仮想化方式', NULL, false);

-- Q510: コンピュータアーキテクチャ（入出力制御・DMA詳細）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 510, 'choice', 1, 1,
  'DMA（Direct Memory Access）転送が完了したことをCPUに通知する方法として最も適切なものはどれか。',
  'DMAコントローラはデータ転送完了後，CPUに対して割り込み（Interrupt）を発行して転送完了を通知する。CPUはDMA転送中に別処理を実行でき，割り込みを受けてDMA転送結果の処理に移る。これによりCPUが逐一転送を監視するポーリングより効率が高い。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'DMAコントローラがCPUに対して割り込みを発行する', NULL, true),
  (currval('questions_id_seq'), 'CPUが定期的にDMAレジスタをポーリングして完了を確認する', NULL, false),
  (currval('questions_id_seq'), 'DMAコントローラがバスを占有したままCPUの次命令を待つ', NULL, false),
  (currval('questions_id_seq'), 'OSのデバイスドライバがタイムアウトまで待機して完了を判定する', NULL, false);

-- Q511: データベース（SQL・サブクエリとCORELATED）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 511, 'choice', 1, 1,
  'SQLの相関サブクエリ（correlated subquery）の説明として最も適切なものはどれか。',
  '相関サブクエリは外側クエリの各行に対してサブクエリが実行され，外側クエリの値（列）を参照する。例えば「自分の部門の平均給与より高い社員を抽出」する際に使う。通常のサブクエリは一度だけ実行されるが，相関サブクエリは外側クエリの行数分だけ実行されるため大テーブルでは性能注意。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '外側クエリの各行に対してサブクエリが実行され外側クエリの値を参照する', NULL, true),
  (currval('questions_id_seq'), '外側クエリとは独立して一度だけ実行されるサブクエリ', NULL, false),
  (currval('questions_id_seq'), '複数のテーブルを結合するJOIN句の代替として使うサブクエリ', NULL, false),
  (currval('questions_id_seq'), 'GROUP BYと組み合わせて集計結果を絞り込むHAVING句のこと', NULL, false);

-- Q512: データベース（SQL・WINDOW関数）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 512, 'choice', 1, 1,
  'SQLのウィンドウ関数（OVER句）の特徴として最も適切なものはどれか。',
  'ウィンドウ関数はOVER句で定義したパーティション・順序に基づき，各行に対して集計値（累積合計・移動平均・順位など）を計算する。GROUP BYと異なり行を集約せず，各行を保持したまま集計値を付加できる。ROW_NUMBER()・RANK()・SUM() OVER()などが代表例。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '行を集約せず各行を保持したまま集計値（累積和・順位等）を付加する', NULL, true),
  (currval('questions_id_seq'), 'GROUP BYと同じく行をグループにまとめて1行に集約する', NULL, false),
  (currval('questions_id_seq'), 'テーブル間の結合条件をON句の代わりに記述する構文', NULL, false),
  (currval('questions_id_seq'), 'INDEXを使わず全行スキャンで集計を行う特殊な構文', NULL, false);

-- Q513: データベース（正規化・第3正規形）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 513, 'choice', 1, 1,
  '第3正規形（3NF）の条件として最も適切なものはどれか。',
  '第3正規形は第2正規形を満たし，かつ非キー属性間に推移的関数従属性がないこと。例えば「学生ID→学科コード→学科名」の場合，学科名は学生IDに推移的に依存するため3NFを満たさない。学科コード→学科名を別テーブルに分離して解消する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '第2正規形を満たし非キー属性間の推移的関数従属性がないこと', NULL, true),
  (currval('questions_id_seq'), '第1正規形を満たし部分関数従属性をすべて除去したこと', NULL, false),
  (currval('questions_id_seq'), 'すべての属性がひとつの候補キーにのみ関数従属していること', NULL, false),
  (currval('questions_id_seq'), '多値従属性と結合従属性が存在しないこと', NULL, false);

-- Q514: データベース（トランザクション・2相コミット）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 514, 'choice', 1, 1,
  '分散データベースにおける2相コミット（2PC）プロトコルの目的として最も適切なものはどれか。',
  '2相コミットは，複数のデータベースノードにまたがるトランザクションをすべてコミットするか全員ロールバックするか（原子性）を保証するプロトコル。第1相（投票フェーズ）で各ノードが「コミット可能か」を報告し，第2相（コミットフェーズ）でコーディネーターが決定を通知する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '複数ノードにまたがるトランザクションの原子性（全コミット or 全ロールバック）を保証する', NULL, true),
  (currval('questions_id_seq'), '2つのデータベースを非同期でレプリケーションして可用性を高める', NULL, false),
  (currval('questions_id_seq'), '読み取りと書き込みを2つのノードに分散して性能を向上させる', NULL, false),
  (currval('questions_id_seq'), 'デッドロックを2段階のロック順序で防止するプロトコル', NULL, false);

-- Q515: セキュリティ（PKI・証明書失効）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 515, 'choice', 1, 1,
  'PKIにおける証明書失効の確認手段としてOCSP（Online Certificate Status Protocol）を使う利点として最も適切なものはどれか。',
  'OCSPはリアルタイムで証明書の有効性を問い合わせるプロトコル。CRL（証明書失効リスト）はファイル全体のダウンロードが必要でサイズが大きくなりがちだが，OCSPは対象証明書の状態のみ応答するため通信量が少なく，最新状態をリアルタイムに確認できる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'CRLより通信量が少なく証明書1件の状態をリアルタイムに確認できる', NULL, true),
  (currval('questions_id_seq'), 'クライアントがCRLファイル全体をキャッシュして高速に参照できる', NULL, false),
  (currval('questions_id_seq'), '証明書の秘密鍵をCAに預けることで安全に保管できる', NULL, false),
  (currval('questions_id_seq'), '自己署名証明書を使って認証局なしで証明書を発行できる', NULL, false);

-- Q516: セキュリティ（マルウェア・ランサムウェア対策）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 516, 'choice', 1, 1,
  'ランサムウェア被害からの復旧に最も効果的な事前対策として最も適切なものはどれか。',
  'ランサムウェアに感染するとファイルが暗号化され，復号キー提供の代わりに身代金を要求される。身代金を払っても復号できる保証はない。最も確実な復旧手段はオフライン（または別環境）の定期バックアップからの復元。バックアップがネットワーク接続されているとランサムウェアに感染するリスクがある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ネットワークから切り離したオフラインバックアップを定期的に取得する', NULL, true),
  (currval('questions_id_seq'), 'ウイルス対策ソフトを導入してリアルタイムスキャンを有効にする', NULL, false),
  (currval('questions_id_seq'), 'ファイアウォールを設定して外部からの侵入を防ぐ', NULL, false),
  (currval('questions_id_seq'), '全社員にセキュリティ研修を実施してフィッシングメールへの注意を促す', NULL, false);

-- Q517: セキュリティ（CSRF対策）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 517, 'choice', 1, 1,
  'クロスサイトリクエストフォージェリ（CSRF）攻撃への対策として最も適切なものはどれか。',
  'CSRFは認証済みユーザーを騙して意図しないリクエストを送信させる攻撃。対策としてサーバーがランダムなトークン（CSRFトークン）をフォームに埋め込み，リクエスト受信時にトークンを検証する方法が有効。正規サイトのフォームからのみ正しいトークンが送信される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'フォームにCSRFトークンを埋め込みサーバー側でトークンを検証する', NULL, true),
  (currval('questions_id_seq'), '入力値をエスケープ処理してスクリプトの埋め込みを防止する', NULL, false),
  (currval('questions_id_seq'), 'SQLのプレースホルダを使って不正なクエリの実行を防ぐ', NULL, false),
  (currval('questions_id_seq'), 'HTTPSを使って通信を暗号化してデータの盗聴を防ぐ', NULL, false);

-- Q518: セキュリティ（ゼロデイ攻撃）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 518, 'choice', 1, 1,
  'ゼロデイ攻撃（Zero-day attack）の説明として最も適切なものはどれか。',
  'ゼロデイ攻撃は，ソフトウェアの脆弱性が公表・修正パッチ適用前に行われる攻撃。「ゼロデイ」はパッチが公開されてから0日目（つまり修正前）であることを意味する。ベンダーが脆弱性を把握していない場合はパッチが存在せず，ウイルス対策ソフトも検知できないことがある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '修正パッチが提供される前の脆弱性を悪用した攻撃', NULL, true),
  (currval('questions_id_seq'), '同じ脆弱性を0回利用して痕跡を残さずに侵入する攻撃', NULL, false),
  (currval('questions_id_seq'), '攻撃開始から0秒でシステムを停止させるDDoS攻撃の一種', NULL, false),
  (currval('questions_id_seq'), 'ウイルス定義ファイルが0日間更新されていない状態を狙う攻撃', NULL, false);

-- Q519: ネットワーク（HTTPSとTLSハンドシェイク）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 519, 'choice', 1, 1,
  'TLSハンドシェイクで行われる処理の説明として最も適切なものはどれか。',
  'TLSハンドシェイクでは①クライアントがサポートする暗号スイートを提示，②サーバーが証明書を送信，③クライアントが証明書を検証，④鍵交換（DH/RSA）でセッション鍵を生成，⑤以降の通信をセッション鍵（共通鍵暗号）で暗号化する。認証・鍵交換・暗号化方式の合意を行う。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'サーバー証明書の検証と共通鍵（セッション鍵）の安全な交換を行う', NULL, true),
  (currval('questions_id_seq'), 'クライアントの生体認証情報をサーバーに送信して本人確認を行う', NULL, false),
  (currval('questions_id_seq'), 'パスワードをハッシュ化してサーバーに送信し認証する', NULL, false),
  (currval('questions_id_seq'), 'サーバーのIPアドレスとポート番号をクライアントに通知する', NULL, false);

-- Q520: ネットワーク（NATとNAPT）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 520, 'choice', 1, 1,
  'NAPT（Network Address Port Translation）がNATと異なる点として最も適切なものはどれか。',
  'NAPTはIPアドレスに加えてポート番号も変換する。これにより複数のプライベートIPアドレスの端末が1つのグローバルIPアドレスを共有してインターネットに接続できる（IPマスカレードとも呼ばれる）。NATはIPアドレスのみを変換するため1対1の対応が基本。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'IPアドレスに加えポート番号も変換し複数端末が1グローバルIPを共有できる', NULL, true),
  (currval('questions_id_seq'), 'IPアドレスのみを変換し1対1でプライベートとグローバルを対応させる', NULL, false),
  (currval('questions_id_seq'), 'MACアドレスとIPアドレスを相互変換してルーティングを行う', NULL, false),
  (currval('questions_id_seq'), 'DNSのホスト名をIPアドレスに変換してアドレス解決を行う', NULL, false);

-- Q521: ネットワーク（WANとMPLS）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 521, 'choice', 1, 1,
  'MPLS（Multiprotocol Label Switching）の説明として最も適切なものはどれか。',
  'MPLSはIPアドレスではなく短いラベルを使ってパケットを高速転送する技術。ラベルによって事前に経路（LSP: Label Switched Path）が決まるため，ルーターがIPルーティングテーブルを毎回参照せずに転送できる。QoSのトラフィック制御やVPN（MPLS-VPN）にも利用される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'IPアドレスでなくラベルを使ってパケットを高速転送する技術', NULL, true),
  (currval('questions_id_seq'), '無線LANの周波数チャネルを動的に割り当てる技術', NULL, false),
  (currval('questions_id_seq'), '複数のISPをまたいで経路情報を交換するルーティングプロトコル', NULL, false),
  (currval('questions_id_seq'), 'パケットを暗号化してインターネット上に仮想的な専用線を作る技術', NULL, false);

-- Q522: OS（プロセス間通信・パイプとソケット）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 522, 'choice', 1, 1,
  'UNIXのパイプ（pipe）によるプロセス間通信の特徴として最も適切なものはどれか。',
  'パイプは一方向のFIFOチャネルで，あるプロセスの標準出力を別プロセスの標準入力に接続する。無名パイプは親子プロセス間，名前付きパイプ（FIFO）は無関係なプロセス間でも使用可能。データはバイトストリームで渡され，メッセージ境界は保持されない。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '一方向FIFOチャネルで一方の標準出力を他方の標準入力に接続する', NULL, true),
  (currval('questions_id_seq'), 'プロセス間でメモリ領域を共有してデータをやり取りする仕組み', NULL, false),
  (currval('questions_id_seq'), 'プロセスが互いにシグナルを送受信してイベントを通知する仕組み', NULL, false),
  (currval('questions_id_seq'), 'ネットワーク越しにプロセス間でメッセージを交換する仕組み', NULL, false);

-- Q523: OS（デッドロック条件・コフマン条件）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 523, 'choice', 1, 1,
  'デッドロックが発生するための必要条件（コフマン条件）に含まれないものはどれか。',
  'コフマンの4条件：①相互排除（資源は一度に1プロセスのみ使用），②占有かつ待機（資源を保持しながら他資源を待つ），③非横取り（保持資源は強制的に解放されない），④循環待機（プロセスが循環的に資源を待つ）。これら4条件が同時に成立するとデッドロックが発生する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'プロセスが保持する資源を使い切ったら即座に解放すること', NULL, true),
  (currval('questions_id_seq'), '資源は一度に1つのプロセスのみが使用できること', NULL, false),
  (currval('questions_id_seq'), 'プロセスが資源を保持しながら他の資源を待つこと', NULL, false),
  (currval('questions_id_seq'), 'プロセスが循環的に互いの保持資源を待つ関係があること', NULL, false);

-- Q524: OS（ファイルシステム・inode）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 524, 'choice', 1, 1,
  'UNIXファイルシステムにおけるinode（インデックスノード）に格納される情報として最も適切なものはどれか。',
  'inodeはファイルのメタデータ（パーミッション・所有者・タイムスタンプ・ファイルサイズ・データブロックへのポインタ）を格納する構造体。ファイル名はinodeに含まれず，ディレクトリエントリが「ファイル名→inode番号」の対応を管理する。これによりハードリンク（複数のファイル名が同じinodeを参照）が実現される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'パーミッション・所有者・データブロックへのポインタ（ファイル名は含まない）', NULL, true),
  (currval('questions_id_seq'), 'ファイル名・作成者・コンテンツの全データ', NULL, false),
  (currval('questions_id_seq'), 'ディレクトリ構造とファイル名のみを格納するテーブル', NULL, false),
  (currval('questions_id_seq'), 'ファイルの暗号化キーとアクセスログ', NULL, false);

-- Q525: 開発手法（ユースケース図）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 525, 'choice', 1, 1,
  'UMLのユースケース図で「<<extend>>」関係の説明として最も適切なものはどれか。',
  '<<extend>>は，ある条件が成立したときに限り基本ユースケースの特定ポイント（拡張ポイント）に追加される振る舞いを表す。<<include>>が必ず実行される共通処理を表すのと対照的に，<<extend>>は条件付き・オプションの拡張を表す。例：「注文する」を基本として，エラー時に「エラー処理をする」が<<extend>>する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '特定の条件が成立した場合に限り基本ユースケースに追加される振る舞い', NULL, true),
  (currval('questions_id_seq'), '基本ユースケースが必ず呼び出す共通の振る舞いを分離したもの', NULL, false),
  (currval('questions_id_seq'), 'アクターが別のアクターの権限を継承することを示す関係', NULL, false),
  (currval('questions_id_seq'), '2つのユースケースが互いに依存しないことを示す独立関係', NULL, false);

-- Q526: 開発手法（要件定義・非機能要件）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 526, 'choice', 1, 1,
  '非機能要件に分類されるものとして最も適切なものはどれか。',
  '非機能要件はシステムの「何を行うか」（機能要件）ではなく，「どのように行うか」の品質・制約を規定する。可用性・性能・セキュリティ・スケーラビリティ・保守性・移植性などが含まれる。一方，「商品を検索できる」「注文を確定できる」などは機能要件。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'システムが同時接続1000ユーザーでも3秒以内に応答すること', NULL, true),
  (currval('questions_id_seq'), 'ユーザーが商品をカートに追加できること', NULL, false),
  (currval('questions_id_seq'), '管理者がユーザーアカウントを削除できること', NULL, false),
  (currval('questions_id_seq'), 'システムがクレジットカード決済を受け付けること', NULL, false);

-- Q527: 開発手法（ソフトウェアメトリクス・コード行数）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 527, 'choice', 1, 1,
  'ソフトウェアメトリクスのひとつである循環的複雑度（サイクロマティック複雑度）が高い場合に想定される問題として最も適切なものはどれか。',
  '循環的複雑度（McCabe複雑度）はプログラムの制御フローグラフの複雑さを表し，分岐（if/for/while/caseなど）の数に比例する。値が高いほど独立した実行パスが多く，テストケース数が増え，バグ混入リスクが高まる。一般にV(G)≤10を目安にリファクタリングを検討する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'テストケース数の増加とバグ混入リスクの上昇', NULL, true),
  (currval('questions_id_seq'), 'コンパイル時間の増大とビルドの失敗リスク', NULL, false),
  (currval('questions_id_seq'), 'メモリ使用量の増大と実行速度の低下', NULL, false),
  (currval('questions_id_seq'), 'データベースクエリの応答時間の増大', NULL, false);

-- Q528: 品質管理（テスト工程・システムテスト）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 528, 'choice', 1, 1,
  'ソフトウェア開発において，システムテストで確認する主な内容として最も適切なものはどれか。',
  'システムテストは統合テスト後に行われ，システム全体として要件（機能・性能・セキュリティ・信頼性など）を満たすかを確認する。単体テストはモジュール単体，結合テストはモジュール間インタフェース，受入テスト（UAT）はユーザーが業務要件を検証する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'システム全体として機能・性能・セキュリティ等の要件を満たすかの確認', NULL, true),
  (currval('questions_id_seq'), '個々のモジュール（関数・クラス）が仕様どおり動作するかの確認', NULL, false),
  (currval('questions_id_seq'), 'ユーザーが実際の業務シナリオで要件を満たすかを検証する確認', NULL, false),
  (currval('questions_id_seq'), 'モジュール間のインタフェースと呼び出し関係が正しいかの確認', NULL, false);

-- Q529: 品質管理（信頼度成長曲線）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 529, 'choice', 1, 1,
  'ソフトウェア信頼度成長曲線（SRGM）の主な用途として最も適切なものはどれか。',
  'ソフトウェア信頼度成長曲線（ゴンペルツ曲線・対数ポアソンモデルなど）は，テスト中に発見される累積バグ数の推移を数学的にモデル化し，残存バグ数の推定とリリース時期の判断に活用する。バグ発見率が収束していれば品質が安定していると判断できる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '累積バグ数の推移から残存バグ数を推定しリリース時期を判断する', NULL, true),
  (currval('questions_id_seq'), 'プロジェクトのコスト超過リスクを数値化してスコア管理する', NULL, false),
  (currval('questions_id_seq'), '開発者ごとのコーディング速度を比較して生産性を評価する', NULL, false),
  (currval('questions_id_seq'), 'テストケース数とコードカバレッジの相関を分析する', NULL, false);

-- Q530: システム構成（負荷分散・L4/L7ロードバランサ）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 530, 'choice', 1, 1,
  'L7（アプリケーション層）ロードバランサがL4（トランスポート層）ロードバランサより優れている点として最も適切なものはどれか。',
  'L7ロードバランサはHTTPヘッダ・URL・Cookieなどのアプリケーション情報を参照して振り分けを行う（コンテンツベースルーティング）。例えばURLパスに応じて異なるバックエンドサーバーへルーティング，特定Cookieを持つユーザーを同一サーバーへ（セッションアフィニティ）などが可能。L4はIPとポートのみで判断する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'HTTPヘッダやURLなどアプリ情報に基づいたコンテンツベースルーティングが可能', NULL, true),
  (currval('questions_id_seq'), 'UDP通信をTCPより優先して転送できる', NULL, false),
  (currval('questions_id_seq'), 'OSI参照モデルの物理層レベルで通信を分散できる', NULL, false),
  (currval('questions_id_seq'), 'MACアドレスを変換して複数のサーバーを1つに見せる', NULL, false);

-- Q531: システム構成（CDNの仕組み）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 531, 'choice', 1, 1,
  'CDN（Content Delivery Network）がWebサイトの応答速度を向上させる主な仕組みとして最も適切なものはどれか。',
  'CDNはエッジサーバーを世界各地に分散配置し，ユーザーに地理的に近いサーバーから静的コンテンツ（画像・CSS・JS等）を配信する。これによりオリジンサーバーへのアクセスを減らしてレイテンシを削減し，オリジンの負荷も低減する。DNSでユーザーを最寄りエッジに誘導する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '地理的に近いエッジサーバーからコンテンツを配信してレイテンシを削減する', NULL, true),
  (currval('questions_id_seq'), 'オリジンサーバーのCPUをクラスタリングして処理能力を向上させる', NULL, false),
  (currval('questions_id_seq'), 'データベースクエリをキャッシュして繰り返しの問い合わせを削減する', NULL, false),
  (currval('questions_id_seq'), 'HTTPリクエストをまとめてバッチ送信して通信効率を高める', NULL, false);

-- Q532: 情報処理（浮動小数点数・IEEE 754）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 532, 'choice', 1, 1,
  'IEEE 754単精度浮動小数点数（32bit）の構成として最も適切なものはどれか。',
  'IEEE 754単精度（float）は32bit：符号部1bit，指数部8bit，仮数部（mantissa）23bit。倍精度（double）は64bit：符号1bit，指数11bit，仮数52bit。指数部にはバイアス（単精度は127）を加えた値を格納し，仮数部には暗黙の先頭1bitを除いた小数部分を格納する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '符号1bit・指数部8bit・仮数部23bit', NULL, true),
  (currval('questions_id_seq'), '符号1bit・指数部11bit・仮数部20bit', NULL, false),
  (currval('questions_id_seq'), '符号2bit・指数部8bit・仮数部22bit', NULL, false),
  (currval('questions_id_seq'), '符号1bit・指数部7bit・仮数部24bit', NULL, false);

-- Q533: 情報処理（論理演算・ド・モルガンの法則）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 533, 'choice', 1, 1,
  'ド・モルガンの法則 NOT(A AND B) = ? として最も適切なものはどれか。',
  'ド・モルガンの法則：NOT(A AND B)＝NOT(A) OR NOT(B)，NOT(A OR B)＝NOT(A) AND NOT(B)。論理回路設計やプログラムの条件式変換に使われる。例：「AかつBでない」を「Aでないまたはbでない」に変換して回路を最適化できる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'NOT(A) OR NOT(B)', NULL, true),
  (currval('questions_id_seq'), 'NOT(A) AND NOT(B)', NULL, false),
  (currval('questions_id_seq'), 'A OR B', NULL, false),
  (currval('questions_id_seq'), 'NOT(A OR B)', NULL, false);

-- Q534: 情報処理（16進数・2進数変換）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 534, 'choice', 1, 1,
  '16進数の「2F」を10進数に変換した値として最も適切なものはどれか。',
  '16進数→10進数：2F(16)＝2×16¹＋F×16⁰＝2×16＋15×1＝32＋15＝47(10)。F(16)＝15(10)。各桁を16の累乗で重み付けして合計する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '47', NULL, true),
  (currval('questions_id_seq'), '29', NULL, false),
  (currval('questions_id_seq'), '63', NULL, false),
  (currval('questions_id_seq'), '31', NULL, false);

-- Q535: 情報処理（基数変換・8進数）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 535, 'choice', 1, 1,
  '10進数の100を2進数に変換した値として最も適切なものはどれか。',
  '100÷2=50余0，50÷2=25余0，25÷2=12余1，12÷2=6余0，6÷2=3余0，3÷2=1余1，1÷2=0余1。余りを下から読むと1100100(2)。確認：64+32+4=100。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '1100100', NULL, true),
  (currval('questions_id_seq'), '1010100', NULL, false),
  (currval('questions_id_seq'), '1100010', NULL, false),
  (currval('questions_id_seq'), '1110100', NULL, false);

-- Q536: 経営情報（SCM・サプライチェーン管理）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 536, 'choice', 1, 1,
  'SCM（Supply Chain Management）の主な目的として最も適切なものはどれか。',
  'SCMは原材料の調達から製造・物流・販売・顧客への納品までのサプライチェーン全体を統合的に管理し，在庫の最適化・リードタイム短縮・コスト削減を図る取り組み。需要予測の共有・受発注の電子化（EDI）・ジャストインタイム生産との連携などが含まれる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '調達から納品までのサプライチェーン全体を統合管理して在庫・コストを最適化する', NULL, true),
  (currval('questions_id_seq'), '顧客との関係を管理し営業活動や顧客満足度を向上させる', NULL, false),
  (currval('questions_id_seq'), '企業の財務・人事・製造などの基幹業務データを一元管理する', NULL, false),
  (currval('questions_id_seq'), '製品開発プロセスを短縮してタイムトゥマーケットを改善する', NULL, false);

-- Q537: 経営情報（KPIとKGI）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 537, 'choice', 1, 1,
  'KPI（Key Performance Indicator）とKGI（Key Goal Indicator）の関係として最も適切なものはどれか。',
  'KGIは最終的な目標（例：年間売上10億円）を表し，KPIはKGI達成に向けた中間プロセスの指標（例：月間新規顧客獲得数・成約率・訪問件数）を表す。KPIを日々管理することでKGI達成の進捗を把握し，早期に課題を発見して施策を調整できる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'KGIが最終目標を示し，KPIはKGI達成のための中間プロセス指標', NULL, true),
  (currval('questions_id_seq'), 'KPIが最終目標を示し，KGIはKPI達成のための個別施策指標', NULL, false),
  (currval('questions_id_seq'), 'KGIとKPIはどちらも同義で，どちらを使っても同じ意味を持つ', NULL, false),
  (currval('questions_id_seq'), 'KGIは財務指標，KPIは非財務指標として明確に区別される', NULL, false);

-- Q538: 経営情報（ITガバナンス・COBIT）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 538, 'choice', 1, 1,
  'ITガバナンスの国際フレームワークCOBIT（Control Objectives for Information and related Technology）の主な目的として最も適切なものはどれか。',
  'COBITはISACAが策定したITガバナンス・管理のフレームワーク。経営目標とIT目標を整合させ，IT関連リスク管理・統制・コンプライアンスを体系化する。SOX法対応や内部統制の整備にも活用される。最新版はCOBIT 2019。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'IT目標を経営目標と整合させリスク管理・統制・コンプライアンスを体系化する', NULL, true),
  (currval('questions_id_seq'), 'ITシステムの開発プロセスを標準化してソフトウェア品質を向上させる', NULL, false),
  (currval('questions_id_seq'), 'クラウドサービスのセキュリティ基準を定める国際標準規格', NULL, false),
  (currval('questions_id_seq'), 'ネットワーク機器の設定標準とセキュリティポリシーを定める指針', NULL, false);

-- Q539: 法務（著作権・プログラムの著作権）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 539, 'choice', 1, 1,
  'ソフトウェア（プログラム）の著作権に関する説明として最も適切なものはどれか。',
  'プログラムは著作権法で「著作物」として保護される（第10条）。法人の従業員が職務として作成したプログラムは，原則として法人が著作者（職務著作）となる。プログラムのアイデアやアルゴリズム自体は著作権で保護されないが，具体的なソースコードは保護対象。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '従業員が職務で作成したプログラムの著作権は原則として法人に帰属する', NULL, true),
  (currval('questions_id_seq'), 'プログラムのアルゴリズム・アイデアも著作権で保護される', NULL, false),
  (currval('questions_id_seq'), 'プログラムの著作権は特許庁への登録を経て初めて効力が発生する', NULL, false),
  (currval('questions_id_seq'), 'フリーソフトウェアは著作権を放棄しているため自由に改変・配布できる', NULL, false);

-- Q540: 法務（個人情報保護法・要配慮個人情報）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 540, 'choice', 1, 1,
  '個人情報保護法における「要配慮個人情報」に該当するものとして最も適切なものはどれか。',
  '要配慮個人情報は，不当な差別・偏見・不利益が生じないよう特に慎重な取扱いが必要な情報。具体的には人種・信条・社会的身分・病歴・犯罪歴・障害・健康診断結果などが該当する。取得には原則として本人の同意が必要で，第三者提供にはオプトアウトが使えない。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '病歴や健康診断の結果', NULL, true),
  (currval('questions_id_seq'), '氏名と生年月日の組み合わせ', NULL, false),
  (currval('questions_id_seq'), '勤務先の会社名と役職', NULL, false),
  (currval('questions_id_seq'), '趣味や好きな食べ物の情報', NULL, false);

-- Q541: 法務（不正競争防止法・営業秘密）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 541, 'choice', 1, 1,
  '不正競争防止法における「営業秘密」として保護されるための要件として最も適切なものはどれか。',
  '不正競争防止法の営業秘密は①秘密管理性（秘密として管理されていること），②有用性（事業活動に有用な技術・営業上の情報），③非公知性（公然と知られていないこと）の3つを満たす必要がある。これを満たさない情報は保護の対象外。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '秘密管理性・有用性・非公知性の3要件をすべて満たすこと', NULL, true),
  (currval('questions_id_seq'), '特許庁への登録と公開が完了していること', NULL, false),
  (currval('questions_id_seq'), '社内規則で「機密」と明記されているだけで保護される', NULL, false),
  (currval('questions_id_seq'), '外部に一度も開示されていない情報であれば自動的に保護される', NULL, false);

-- Q542: AI・機械学習（交差検証）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 542, 'choice', 1, 1,
  'k分割交差検証（k-fold cross validation）の目的として最も適切なものはどれか。',
  'k分割交差検証はデータをk個に分割し，1つを検証用・残りを学習用として学習・評価をk回繰り返し，評価スコアの平均を汎化性能の推定値とする手法。データが少ない場合でも安定した性能評価ができ，過学習の検出にも有効。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'データを分割して複数回評価し汎化性能を安定的に推定する', NULL, true),
  (currval('questions_id_seq'), 'モデルの学習速度を向上させてトレーニング時間を短縮する', NULL, false),
  (currval('questions_id_seq'), 'ハイパーパラメータを自動探索して最適値を見つける', NULL, false),
  (currval('questions_id_seq'), '複数のモデルを並列学習させてアンサンブルを作成する', NULL, false);

-- Q543: AI・機械学習（特徴量エンジニアリング）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 543, 'choice', 1, 1,
  '機械学習における「特徴量エンジニアリング」の説明として最も適切なものはどれか。',
  '特徴量エンジニアリングは，生データからモデルの精度向上に役立つ特徴量を作成・選択・変換する作業。例として，日時データから曜日・時間帯・祝日フラグを生成する，テキストからTF-IDFベクトルを作る，カテゴリ変数をOne-hotエンコーディングするなどがある。モデルの精度を大きく左右する重要なプロセス。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '生データからモデルの精度向上に役立つ特徴量を作成・変換・選択する作業', NULL, true),
  (currval('questions_id_seq'), 'ニューラルネットワークの層数とユニット数を設計する作業', NULL, false),
  (currval('questions_id_seq'), '学習データにラベルを付けてアノテーションする作業', NULL, false),
  (currval('questions_id_seq'), '学習済みモデルを本番環境にデプロイして推論APIを公開する作業', NULL, false);

-- Q544: 新技術（ブロックチェーン・スマートコントラクト）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 544, 'choice', 1, 1,
  'ブロックチェーン上のスマートコントラクトの説明として最も適切なものはどれか。',
  'スマートコントラクトはブロックチェーン上にデプロイされた自己実行型のプログラム。条件が満たされると自動的に実行され，仲介者なしに当事者間の合意を履行する。イーサリアムのSolidityで記述されたDeFi（分散型金融）や自動決済などに活用される。一度デプロイすると変更が困難。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ブロックチェーン上にデプロイされ条件成立時に自動実行されるプログラム', NULL, true),
  (currval('questions_id_seq'), '暗号資産の秘密鍵を安全に保管するためのハードウェアウォレット', NULL, false),
  (currval('questions_id_seq'), 'ブロックチェーンの合意形成をリードするノードのこと', NULL, false),
  (currval('questions_id_seq'), '暗号化されたトランザクションを承認するマイニングアルゴリズム', NULL, false);

-- Q545: 新技術（IoT・MQTT）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 545, 'choice', 1, 1,
  'IoTデバイス間の通信でMQTTプロトコルが広く使われる理由として最も適切なものはどれか。',
  'MQTTはパブリッシュ/サブスクライブ型の軽量メッセージングプロトコル（TCP上で動作）。ヘッダが小さく（最小2バイト），帯域・処理能力・電力が限られたIoTデバイスに適する。ブローカーを介して疎結合な多対多通信を実現し，不安定な接続に対応するQoSレベルも提供する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ヘッダが軽量でリソース制約のあるIoTデバイスに適したメッセージングプロトコルだから', NULL, true),
  (currval('questions_id_seq'), '動画や音声の大容量データをリアルタイムにストリーミングするためのプロトコルだから', NULL, false),
  (currval('questions_id_seq'), 'IoTデバイスに固有のIPv6アドレスを自動割り当てするためのプロトコルだから', NULL, false),
  (currval('questions_id_seq'), 'デバイスのファームウェアをリモートから安全に更新するためのプロトコルだから', NULL, false);

-- Q546: 新技術（量子コンピュータ・量子ビット）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 546, 'choice', 1, 1,
  '量子コンピュータにおける「重ね合わせ」の説明として最も適切なものはどれか。',
  '量子ビット（qubit）は古典ビットの0か1のどちらかではなく，測定されるまで0と1が重ね合わさった状態（量子重ね合わせ）にある。n個のqubitは2ⁿ通りの状態を同時に表現でき，量子並列性によって特定の問題（素因数分解・最適化など）を指数的に高速に解くことができる可能性がある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '量子ビットが測定されるまで0と1の両方の状態を同時にとること', NULL, true),
  (currval('questions_id_seq'), '複数の量子ビットが瞬時に情報を共有して高速通信する現象', NULL, false),
  (currval('questions_id_seq'), '量子コンピュータが古典コンピュータより消費電力を大幅に削減できること', NULL, false),
  (currval('questions_id_seq'), '量子暗号によって解読不可能な通信を実現する技術', NULL, false);

-- Q547: システム開発（APIファースト設計）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 547, 'choice', 1, 1,
  'APIファースト（API First）設計アプローチの説明として最も適切なものはどれか。',
  'APIファーストは，システム開発においてAPIの設計（仕様・インタフェース定義）を最初に行い，その仕様を中心にフロントエンドとバックエンドを並行開発するアプローチ。OpenAPI（Swagger）仕様でAPI定義を共有し，モックサーバーを使って実装前からフロントエンドの開発を進められる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'APIの仕様設計を最初に行いフロントエンドとバックエンドを並行開発する', NULL, true),
  (currval('questions_id_seq'), 'データベース設計を最初に確定させてからAPIとUIを順番に開発する', NULL, false),
  (currval('questions_id_seq'), 'APIを外部に公開してサードパーティに収益化する戦略', NULL, false),
  (currval('questions_id_seq'), 'REST APIをすべてGraphQLに置き換えてクエリを最適化する設計', NULL, false);

-- Q548: システム開発（マイクロサービス・サービスメッシュ）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 548, 'choice', 1, 1,
  'マイクロサービスアーキテクチャにおけるサービスメッシュの主な役割として最も適切なものはどれか。',
  'サービスメッシュ（Istio・Linkerdなど）は，各マイクロサービスのサイドカープロキシを通じて，サービス間通信の暗号化（mTLS）・サーキットブレーカー・リトライ・タイムアウト・トラフィック制御・テレメトリ収集などを一元管理するインフラ層。アプリコードを変更せずにこれらの機能を実現できる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'サービス間通信の暗号化・リトライ・サーキットブレーカー等をインフラ層で管理する', NULL, true),
  (currval('questions_id_seq'), 'マイクロサービスのソースコードを自動生成してボイラープレートを削減する', NULL, false),
  (currval('questions_id_seq'), '複数のマイクロサービスのデプロイを一括で管理するオーケストレーション', NULL, false),
  (currval('questions_id_seq'), 'マイクロサービス間のデータ整合性をSagaパターンで管理する仕組み', NULL, false);

-- Q549: 情報システム（BPR）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 549, 'choice', 1, 1,
  'BPR（Business Process Reengineering）の説明として最も適切なものはどれか。',
  'BPRは，業務プロセスを抜本的に見直し（ゼロベース）て再設計することで，コスト・品質・スピード・サービスを飛躍的に向上させる経営改革手法（ハマー＆チャンピー提唱）。既存業務の改善（BPI）とは異なり，必要であれば業務フロー全体を廃止・再構築することを前提とする。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '業務プロセスをゼロベースで抜本的に再設計して劇的な改善を目指す経営改革', NULL, true),
  (currval('questions_id_seq'), '既存業務の問題点を継続的・段階的に改善するPDCAサイクルの実践', NULL, false),
  (currval('questions_id_seq'), 'ITシステムを導入して業務の自動化・電子化を推進するDX施策', NULL, false),
  (currval('questions_id_seq'), '業績評価指標（KPI）を設定してデータ駆動で業務改善を行う手法', NULL, false);

-- Q550: 情報システム（システム監査）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 550, 'choice', 1, 1,
  'システム監査の目的として最も適切なものはどれか。',
  'システム監査は，情報システムが組織の目標達成・リスク管理・法令遵守の観点から適切に構築・運用されているかを独立した第三者的立場で点検・評価し，改善勧告を行う活動。ITガバナンスの強化や内部統制の有効性確認に活用される。「システム監査基準」（経済産業省）に基づき実施される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ITシステムが適切に構築・運用されているか独立した立場で点検・評価し改善勧告する', NULL, true),
  (currval('questions_id_seq'), 'システムの性能ボトルネックを特定して応答速度を改善する', NULL, false),
  (currval('questions_id_seq'), 'ソフトウェアのバグを発見して修正する品質保証活動', NULL, false),
  (currval('questions_id_seq'), 'セキュリティ脆弱性を特定するためにシステムに擬似攻撃を行う', NULL, false);
-- ----------------------------------------
-- 科目A（section_id=1）Q551〜Q600
-- ----------------------------------------

-- Q551: データ構造（優先度キュー・ヒープの挿入）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 551, 'choice', 1, 1,
  '二分ヒープ（最小ヒープ）に要素を挿入するときの時間計算量として最も適切なものはどれか。',
  '二分ヒープへの挿入は，末尾に要素を追加してから「ヒープアップ（ふるい上げ）」操作でヒープ性質を回復する。木の高さはlog₂nなので，比較・交換の回数は高さに比例してO(log n)となる。削除（最小値取り出し）もO(log n)。ヒープ構築はO(n)。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(log n)', NULL, true),
  (currval('questions_id_seq'), 'O(n)', NULL, false),
  (currval('questions_id_seq'), 'O(1)', NULL, false),
  (currval('questions_id_seq'), 'O(n log n)', NULL, false);

-- Q552: データ構造（グラフ・隣接行列 vs 隣接リスト）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 552, 'choice', 1, 1,
  'グラフをコンピュータ上で表現する際，疎なグラフ（辺の数が頂点数に比べて少ない）に対して隣接リスト表現が隣接行列より優れている点として最も適切なものはどれか。',
  '隣接行列はn×nの領域を常に確保するためO(n²)のメモリが必要。疎なグラフ（辺数E≪n²）では多くのセルが0（空）になりメモリの無駄が生じる。隣接リストは実際の辺のみを格納するためO(n+E)のメモリで済み，疎グラフの走査も効率的。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '実際の辺のみを格納するためメモリ使用量がO(n+E)に抑えられる', NULL, true),
  (currval('questions_id_seq'), '任意の2頂点間に辺があるかをO(1)で判定できる', NULL, false),
  (currval('questions_id_seq'), '行列演算により最短経路を一度に計算できる', NULL, false),
  (currval('questions_id_seq'), 'グラフの重みを整数以外の型でも格納しやすい', NULL, false);

-- Q553: アルゴリズム（文字列検索・KMP法の前処理）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 553, 'choice', 1, 1,
  'KMP法（Knuth-Morris-Pratt法）の特徴として最も適切なものはどれか。',
  'KMP法は，テキスト文字列からパターン文字列を検索する際，不一致が発生しても既に比較した情報（パターンの失敗関数・部分一致テーブル）を活用してテキストのポインタを戻さず検索を続ける。ナイーブ検索O(nm)に対してO(n+m)で探索できる（nはテキスト長，mはパターン長）。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '不一致時にパターンの部分一致情報を利用してテキストポインタを戻さず探索する', NULL, true),
  (currval('questions_id_seq'), 'テキストをハッシュ化してパターンのハッシュと比較する手法', NULL, false),
  (currval('questions_id_seq'), 'パターン末尾から逆順に比較してスキップ量を最大化する手法', NULL, false),
  (currval('questions_id_seq'), 'テキストをn/mブロックに分割して並列比較する手法', NULL, false);

-- Q554: アルゴリズム（最短経路・ベルマンフォード法）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 554, 'choice', 1, 1,
  'ベルマンフォード法がダイクストラ法と異なり対応できるグラフの条件として最も適切なものはどれか。',
  'ダイクストラ法は辺の重みが非負であることが前提。ベルマンフォード法は負の重みの辺があるグラフでも正しく最短経路を求められる。また，負のサイクル（総重みが負の閉路）の検出も可能。計算量はO(VE)でダイクストラのO((V+E)log V)より遅い。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '負の重みを持つ辺が存在するグラフ', NULL, true),
  (currval('questions_id_seq'), '辺の重みがすべて等しい無重みグラフ', NULL, false),
  (currval('questions_id_seq'), '頂点数が非常に多い大規模なグラフ', NULL, false),
  (currval('questions_id_seq'), '有向非巡回グラフ（DAG）のみ', NULL, false);

-- Q555: コンピュータアーキテクチャ（スループットとレイテンシ）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 555, 'choice', 1, 1,
  'コンピュータシステムにおける「レイテンシ（latency）」と「スループット（throughput）」の関係として最も適切なものはどれか。',
  'レイテンシは1つの処理が完了するまでの時間（応答時間）。スループットは単位時間あたりに処理できる量（処理能力）。パイプライン化はレイテンシを下げずにスループットを向上させる典型的な手法。一般にどちらか一方を改善するとトレードオフが生じることがある（例：バッチ処理で高スループットを得るが個々のレイテンシは増大する）。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'レイテンシは1処理の応答時間，スループットは単位時間あたりの処理量', NULL, true),
  (currval('questions_id_seq'), 'レイテンシとスループットは同義で，どちらも処理速度を示す', NULL, false),
  (currval('questions_id_seq'), 'スループットを高めると必ずレイテンシも短縮される', NULL, false),
  (currval('questions_id_seq'), 'レイテンシはハードウェアのみで決まりソフトウェアで改善できない', NULL, false);

-- Q556: コンピュータアーキテクチャ（SSDとNVMe）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 556, 'choice', 1, 1,
  'NVMe（Non-Volatile Memory Express）SSDがSATA SSDより高速な主な理由として最も適切なものはどれか。',
  'NVMeはPCIeバスに直接接続するため，SATAインタフェース（HDD時代に設計された低速バス）のオーバーヘッドを回避できる。NVMeのコマンドキュー数は最大65535（SATAは32），キューあたりコマンド数は65535（SATAは32）と大幅に多く，並列I/Oに最適化されている。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'PCIeバスを直接使い多数のコマンドキューで並列I/Oを実現するため', NULL, true),
  (currval('questions_id_seq'), 'NANDフラッシュの代わりにDRAMを記憶素子として使用するため', NULL, false),
  (currval('questions_id_seq'), 'SATAケーブルより細くて短い専用ケーブルを使用するため', NULL, false),
  (currval('questions_id_seq'), 'データを圧縮してから書き込むため実効書き込み速度が向上するため', NULL, false);

-- Q557: データベース（ビュー・マテリアライズドビュー）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 557, 'choice', 1, 1,
  'マテリアライズドビュー（実体化ビュー）の特徴として通常のビューと異なる点として最も適切なものはどれか。',
  'マテリアライズドビューはクエリ結果を物理的に保存（キャッシュ）する。通常のビューはアクセスのたびにクエリを実行するが，マテリアライズドビューは保存済み結果を返すため読み取りが高速。ただしベーステーブルの更新を反映するリフレッシュが必要。集計クエリの高速化に有効。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'クエリ結果を物理的に保存してあり読み取り時は保存済み結果を返す', NULL, true),
  (currval('questions_id_seq'), 'アクセスのたびにベーステーブルのクエリを再実行する仮想テーブル', NULL, false),
  (currval('questions_id_seq'), 'ベーステーブルへの更新を禁止してデータを保護する読み取り専用機能', NULL, false),
  (currval('questions_id_seq'), '複数のテーブルをまとめて管理するスキーマ分割の仕組み', NULL, false);

-- Q558: データベース（シャーディング）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 558, 'choice', 1, 1,
  'データベースのシャーディング（sharding）の説明として最も適切なものはどれか。',
  'シャーディングはデータを複数のデータベースノード（シャード）に水平分割する手法。例えばユーザーIDの範囲やハッシュ値でデータを振り分けることで，1台では処理しきれない大規模データを分散して高スループットを実現する。読み取り性能向上のレプリケーションとは異なる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'データを複数のノードに水平分割して大規模データを分散管理する', NULL, true),
  (currval('questions_id_seq'), 'マスターのデータを複数のスレーブに同期して可用性を高める手法', NULL, false),
  (currval('questions_id_seq'), 'テーブルを縦方向（列単位）に分割してIOを最適化する手法', NULL, false),
  (currval('questions_id_seq'), 'データを圧縮してストレージ容量を削減する最適化手法', NULL, false);

-- Q559: セキュリティ（多要素認証・TOTP）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 559, 'choice', 1, 1,
  'TOTP（Time-based One-Time Password）の仕組みとして最も適切なものはどれか。',
  'TOTPはRFC 6238で規定された時刻ベースのワンタイムパスワード。共有秘密鍵と現在時刻（30秒間隔）からHMAC-SHA1を使って6〜8桁のコードを生成する。Google Authenticatorなどで実装され，短時間しか有効でないため盗聴されてもリプレイ攻撃が困難。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '共有秘密鍵と現在時刻からHMACでワンタイムパスワードを生成する', NULL, true),
  (currval('questions_id_seq'), 'サーバーが毎回ランダムな文字列をSMSで送信して認証する方式', NULL, false),
  (currval('questions_id_seq'), '生体情報（指紋・顔）を使って本人確認を行う認証方式', NULL, false),
  (currval('questions_id_seq'), '公開鍵暗号でデジタル署名を生成して本人確認を行う方式', NULL, false);

-- Q560: セキュリティ（不正のトライアングル）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 560, 'choice', 1, 1,
  '不正行為が起きる条件を示す「不正のトライアングル」の3要素として最も適切なものはどれか。',
  '不正のトライアングル（Cressey）は，不正行為が発生する3要素：①機会（内部統制の不備など不正できる環境），②動機・プレッシャー（借金・ノルマなど不正する理由），③正当化（「少しくらいいい」など自己弁護の理由）。いずれか1つでも除去すれば不正リスクが低下する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '機会・動機（プレッシャー）・正当化', NULL, true),
  (currval('questions_id_seq'), '能力・手段・目的', NULL, false),
  (currval('questions_id_seq'), '脅威・脆弱性・影響', NULL, false),
  (currval('questions_id_seq'), '資産・リスク・対策', NULL, false);

-- Q561: ネットワーク（DNSの仕組み詳細）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 561, 'choice', 1, 1,
  'DNSの反復問い合わせ（iterative query）と再帰問い合わせ（recursive query）の違いとして最も適切なものはどれか。',
  '再帰問い合わせ：クライアントが「フルサービスリゾルバ」に問い合わせ，リゾルバが代わりに権威サーバーへ問い合わせて最終回答を返す（ユーザーの利便性が高い）。反復問い合わせ：問い合わせを受けたサーバーが「次にここへ問い合わせよ」と参照先を返し，クライアントが自ら各サーバーに問い合わせを繰り返す。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '再帰はリゾルバが代わりに解決して最終回答を返し，反復は次の問い合わせ先を返す', NULL, true),
  (currval('questions_id_seq'), '反復はリゾルバが代わりに解決して最終回答を返し，再帰は次の問い合わせ先を返す', NULL, false),
  (currval('questions_id_seq'), '再帰はUDP，反復はTCPを使う点で異なる', NULL, false),
  (currval('questions_id_seq'), '反復はIPv4のみ，再帰はIPv6のみに対応する', NULL, false);

-- Q562: ネットワーク（HTTPメソッドとRESTful API）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 562, 'choice', 1, 1,
  'RESTful APIにおいてHTTP PATCHメソッドの適切な使い方として最も適切なものはどれか。',
  'HTTP PATCHはリソースの一部のみを更新する（部分更新）。PUTはリソース全体を置き換える（全体更新）。POST は新規作成，DELETE は削除，GET は取得。RESTful APIでは，ユーザー情報のうちメールアドレスだけを変更する場合はPATCH，ユーザー情報全体を差し替える場合はPUTを使う。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'リソースの一部のフィールドのみを部分的に更新する', NULL, true),
  (currval('questions_id_seq'), 'リソース全体を新しいデータで完全に置き換える', NULL, false),
  (currval('questions_id_seq'), '新しいリソースを作成してサーバーにデータを送信する', NULL, false),
  (currval('questions_id_seq'), 'リソースの状態をサーバーに確認して存在チェックを行う', NULL, false);

-- Q563: ネットワーク（WebSocketとHTTPポーリング）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 563, 'choice', 1, 1,
  'WebSocketがHTTPポーリングより優れている点として最も適切なものはどれか。',
  'WebSocketは初回のHTTPハンドシェイク後にプロトコルをアップグレードし，1つのTCP接続を維持して全二重通信を実現する。サーバーからもクライアントへプッシュ通知が可能。HTTPポーリングは一定間隔でGETリクエストを送り続けるため，更新がなくても帯域・サーバーリソースを消費する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '1つのTCP接続を維持して全二重でサーバーからのプッシュが可能', NULL, true),
  (currval('questions_id_seq'), 'HTTPSより強力な独自暗号でデータを保護できる', NULL, false),
  (currval('questions_id_seq'), 'UDP上で動作するため低遅延のリアルタイム通信を実現できる', NULL, false),
  (currval('questions_id_seq'), 'REST APIと完全互換でGET/POST/PUT/DELETEが使える', NULL, false);

-- Q564: OS（メモリ管理・ガベージコレクション詳細）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 564, 'choice', 1, 1,
  'Stop-the-World（STW）がガベージコレクション（GC）において問題となる理由として最も適切なものはどれか。',
  'Stop-the-Worldとは，GCが一時的にアプリケーションのすべてのスレッドを停止してメモリ回収を行うフェーズ。停止中はアプリが応答できないため，レイテンシ要件が厳しいアプリケーション（ゲーム・リアルタイム処理・取引システムなど）で問題となる。ZGC・ShenandoahはSTWを最小化する設計。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'GC中にアプリの全スレッドが停止してレイテンシが増大するから', NULL, true),
  (currval('questions_id_seq'), 'GCがCPUをすべて占有してスループットが永続的に低下するから', NULL, false),
  (currval('questions_id_seq'), 'GC中にメモリリークが発生してヒープが枯渇するから', NULL, false),
  (currval('questions_id_seq'), 'GCがネットワーク接続を切断して通信が失敗するから', NULL, false);

-- Q565: OS（コンテキストスイッチのコスト）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 565, 'choice', 1, 1,
  'プロセスのコンテキストスイッチがスレッドのコンテキストスイッチより一般的にコストが高い理由として最も適切なものはどれか。',
  'プロセスのコンテキストスイッチではアドレス空間（ページテーブル）の切り替えが発生し，TLB（Translation Lookaside Buffer）のフラッシュが必要になるため，キャッシュの有効性が大きく失われる。スレッドは同じアドレス空間を共有するためページテーブルの切り替えが不要。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'アドレス空間の切り替えとTLBフラッシュが必要になるから', NULL, true),
  (currval('questions_id_seq'), 'プロセスはスレッドより多くのレジスタを持つため保存コストが高いから', NULL, false),
  (currval('questions_id_seq'), 'プロセス間ではI/Oバッファのフラッシュが必須であるから', NULL, false),
  (currval('questions_id_seq'), 'プロセスの優先度計算がスレッドより複雑なスケジューリングを要するから', NULL, false);

-- Q566: 開発手法（ドメイン駆動設計・集約）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 566, 'choice', 1, 1,
  'ドメイン駆動設計（DDD）における「集約（Aggregate）」の説明として最も適切なものはどれか。',
  '集約は，関連するオブジェクト群をまとめてひとつのまとまりとして扱う単位。集約には必ず「集約ルート（Aggregate Root）」となるエンティティが存在し，外部から集約内部のオブジェクトへのアクセスは集約ルートを経由しなければならない。トランザクション整合性の境界を定義する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '関連オブジェクト群をまとめ集約ルート経由でのみ外部アクセスを許す単位', NULL, true),
  (currval('questions_id_seq'), '同じ識別子を持ち継続的に追跡されるオブジェクトのこと', NULL, false),
  (currval('questions_id_seq'), '識別子を持たず値のみで定義される不変オブジェクトのこと', NULL, false),
  (currval('questions_id_seq'), 'ドメインの操作をステートレスなオブジェクトにまとめたサービス', NULL, false);

-- Q567: 開発手法（SOLID原則・開放閉鎖原則）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 567, 'choice', 1, 1,
  'SOLID原則の開放閉鎖原則（OCP: Open/Closed Principle）の説明として最も適切なものはどれか。',
  '開放閉鎖原則とは「ソフトウェアの構成要素は拡張に対して開いており（Open），修正に対して閉じていなければならない（Closed）」という原則。新しい機能追加の際に既存コードを変更せず，インタフェースの実装を追加するだけで拡張できる設計（ストラテジーパターン・テンプレートメソッドなど）を目指す。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '既存コードを変更せず新しい実装の追加（拡張）で機能を追加できる設計', NULL, true),
  (currval('questions_id_seq'), 'クラスは1つの責務のみを持つべきという単一責任の原則', NULL, false),
  (currval('questions_id_seq'), '高レベルモジュールが低レベルモジュールに依存しない依存関係逆転の原則', NULL, false),
  (currval('questions_id_seq'), 'クライアントは使わないインタフェースに依存しないインタフェース分離の原則', NULL, false);

-- Q568: 開発手法（デザインパターン・シングルトン）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 568, 'choice', 1, 1,
  'GoFデザインパターンのシングルトン（Singleton）パターンの目的として最も適切なものはどれか。',
  'シングルトンパターンはクラスのインスタンスが常に1つしか存在しないことを保証し，そのインスタンスへのグローバルなアクセスポイントを提供する生成パターン。データベース接続・設定オブジェクト・ログハンドラなど，システム全体で共有すべき一意のリソース管理に使われる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'クラスのインスタンスが常に1つだけ存在することを保証する', NULL, true),
  (currval('questions_id_seq'), '複雑なオブジェクトの生成手順をステップごとに分離して管理する', NULL, false),
  (currval('questions_id_seq'), 'オブジェクト生成をサブクラスに委譲して生成物の型を決定する', NULL, false),
  (currval('questions_id_seq'), 'インタフェースが異なる複数クラスを共通インタフェースで統一する', NULL, false);

-- Q569: 品質管理（ISO/IEC 25010 品質モデル）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 569, 'choice', 1, 1,
  'ISO/IEC 25010のソフトウェア製品品質モデルに含まれる品質特性として誤っているものはどれか。',
  'ISO/IEC 25010の製品品質モデルには，機能適合性・性能効率性・互換性・使用性・信頼性・セキュリティ・保守性・移植性の8つの品質特性がある。「開発速度」は品質特性には含まれない（開発プロセスの指標であってソフトウェア品質特性ではない）。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '開発速度', NULL, true),
  (currval('questions_id_seq'), '信頼性', NULL, false),
  (currval('questions_id_seq'), '保守性', NULL, false),
  (currval('questions_id_seq'), '使用性', NULL, false);

-- Q570: 品質管理（テストカバレッジとMC/DC）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 570, 'choice', 1, 1,
  'MC/DC（Modified Condition/Decision Coverage）が航空・医療など安全最重要システムで要求される理由として最も適切なものはどれか。',
  'MC/DCは各条件が決定結果に独立して影響することを示すテストを要求する。C0（命令）・C1（分岐）より厳しく，複合条件の全パス組み合わせ（C2）より効率的に重要な組み合わせを網羅できる。FAA DO-178B（航空ソフトウェア）でレベルAに要求されるなど，命に関わるシステムの安全性証明に使われる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '各条件が決定結果に独立して影響することを証明する厳格な網羅基準だから', NULL, true),
  (currval('questions_id_seq'), '実行パスを100%すべて網羅する唯一の方法だから', NULL, false),
  (currval('questions_id_seq'), '自動テスト生成ツールが最も効率的に対応できる基準だから', NULL, false),
  (currval('questions_id_seq'), '命令カバレッジのみで十分だが航空業界の慣例で採用されているから', NULL, false);

-- Q571: システム構成（可用性計算・直列システム）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 571, 'choice', 1, 1,
  '稼働率0.9のサーバー2台を直列に接続したシステム全体の稼働率として最も適切なものはどれか。',
  '直列システムの稼働率＝各コンポーネントの稼働率の積。0.9×0.9＝0.81。直列では1台でも停止するとシステム全体が停止するため，コンポーネントが増えるほど稼働率は下がる。並列（冗長）では1台停止でも動作継続し，稼働率は上がる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '0.81', NULL, true),
  (currval('questions_id_seq'), '0.99', NULL, false),
  (currval('questions_id_seq'), '0.90', NULL, false),
  (currval('questions_id_seq'), '0.95', NULL, false);

-- Q572: システム構成（MTBF・MTTR・稼働率）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 572, 'choice', 1, 1,
  'あるシステムのMTBF（平均故障間隔）が90時間，MTTR（平均修理時間）が10時間のとき，このシステムの稼働率として最も適切なものはどれか。',
  '稼働率＝MTBF÷（MTBF＋MTTR）＝90÷（90＋10）＝90÷100＝0.90。MTBFが大きいほど，MTTRが小さいほど稼働率は高くなる。稼働率を高めるには故障頻度を下げるか修復時間を短縮する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '0.90', NULL, true),
  (currval('questions_id_seq'), '0.99', NULL, false),
  (currval('questions_id_seq'), '0.10', NULL, false),
  (currval('questions_id_seq'), '0.81', NULL, false);

-- Q573: 情報処理（圧縮・ランレングス符号化）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 573, 'choice', 1, 1,
  'ランレングス符号化（RLE）が圧縮効果を発揮しやすいデータとして最も適切なものはどれか。',
  'ランレングス符号化は連続する同じ値を「値・繰り返し数」の組で表現する。例「AAABBBBA」→「A3B4A1」。同じ値が連続する（同一画素が続く）画像（FAXのモノクロ画像・ビットマップの背景色など）で高い圧縮率を発揮する。テキストや複雑な自然画像ではほとんど効果がない。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '同じ値が連続するシンプルな画像（FAXのモノクロ画像など）', NULL, true),
  (currval('questions_id_seq'), '自然言語のテキスト（日本語・英語の文章）', NULL, false),
  (currval('questions_id_seq'), '暗号化済みのランダムな2進データ', NULL, false),
  (currval('questions_id_seq'), '写真のような複雑なフルカラー画像', NULL, false);

-- Q574: 情報処理（文字コード・Shift_JISとUnicode）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 574, 'choice', 1, 1,
  'Shift_JISエンコードのテキストをUTF-8として読み込んだときに起こる現象として最も適切なものはどれか。',
  'Shift_JISとUTF-8はバイト表現が異なるため，Shift_JISのデータをUTF-8として解釈しようとすると文字のバイト境界が正しく解釈されず文字化けが起きる。これはエンコーディングの不一致（文字セット変換漏れ）が原因。Webアプリの文字化けバグとして頻出。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '文字のバイト表現が正しく解釈されず文字化けが発生する', NULL, true),
  (currval('questions_id_seq'), 'すべての文字がASCII範囲（英数字）に自動変換される', NULL, false),
  (currval('questions_id_seq'), '文字が正常に表示されるが1文字あたりのバイト数が増加する', NULL, false),
  (currval('questions_id_seq'), '読み込みエラーが発生してファイルを開けない', NULL, false);

-- Q575: 経営情報（PDCA・PDCAサイクル）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 575, 'choice', 1, 1,
  'PDCAサイクルのC（Check）フェーズで行う主な活動として最も適切なものはどれか。',
  'PDCAはPlan（計画）→Do（実行）→Check（評価）→Action（改善）の繰り返し。Checkフェーズでは，実行結果を計画に照らし合わせて評価・測定し，目標との差異（ギャップ）を把握する。この評価結果がActionフェーズの改善活動に繋がる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '実行結果と計画を比較して目標との差異を評価・測定する', NULL, true),
  (currval('questions_id_seq'), '改善すべき課題を特定して次の計画に反映する', NULL, false),
  (currval('questions_id_seq'), '目標・手順・スケジュールを設定して実施計画を立案する', NULL, false),
  (currval('questions_id_seq'), '計画に従って業務を遂行し記録を取る', NULL, false);

-- Q576: 経営情報（情報システム戦略・EA）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 576, 'choice', 1, 1,
  'エンタープライズアーキテクチャ（EA）の4つの視点（層）として最も適切なものはどれか。',
  'EAは組織のITシステムを4つの層で体系化する手法。①ビジネスアーキテクチャ（業務プロセス・組織），②データアーキテクチャ（データ構造・管理），③アプリケーションアーキテクチャ（アプリ・機能），④テクノロジーアーキテクチャ（インフラ・ネットワーク）。政府のIT改革（Zachman・TOGAF・FEAF参照）でも活用される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ビジネス・データ・アプリケーション・テクノロジー', NULL, true),
  (currval('questions_id_seq'), '戦略・戦術・運用・評価', NULL, false),
  (currval('questions_id_seq'), 'ハードウェア・OS・ミドルウェア・アプリケーション', NULL, false),
  (currval('questions_id_seq'), '企画・設計・開発・保守', NULL, false);

-- Q577: 法務（特許権・業務発明）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 577, 'choice', 1, 1,
  '特許法における「職務発明」についての説明として最も適切なものはどれか。',
  '職務発明とは，従業員が職務の範囲内で行った発明。2015年改正特許法（2016年施行）により，あらかじめ契約や就業規則で定めていれば，職務発明の特許を受ける権利（特許権）を会社（使用者）に原始的に帰属させることができるようになった。従業員には相当の利益（対価）が与えられる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '会社が事前に規定すれば特許を受ける権利を会社に原始帰属させることができる', NULL, true),
  (currval('questions_id_seq'), '職務発明の特許権は常に発明者である従業員に帰属する', NULL, false),
  (currval('questions_id_seq'), '職務発明は特許出願できず，営業秘密として管理しなければならない', NULL, false),
  (currval('questions_id_seq'), '職務発明の対価は支払わなくてよいと法律で規定されている', NULL, false);

-- Q578: 法務（電子署名・タイムスタンプ）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 578, 'choice', 1, 1,
  'タイムスタンプ（TSA：Time Stamp Authority）を電子文書に付与する目的として最も適切なものはどれか。',
  'タイムスタンプはTSA（時刻認証局）が電子文書のハッシュ値と信頼できる時刻情報を組み合わせて署名を付与する技術。「その時刻にそのデータが存在したこと（存在証明）」と「その後改ざんされていないこと（完全性証明）」を第三者が証明できる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '文書がその時刻に存在し以後改ざんされていないことを第三者が証明する', NULL, true),
  (currval('questions_id_seq'), '文書の作成者が本人であることをデジタル証明書で証明する', NULL, false),
  (currval('questions_id_seq'), '文書の内容を暗号化して第三者が閲覧できないようにする', NULL, false),
  (currval('questions_id_seq'), '文書を送信した事実と送信先を記録して否認を防止する', NULL, false);

-- Q579: AI・機械学習（転移学習）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 579, 'choice', 1, 1,
  '転移学習（Transfer Learning）の説明として最も適切なものはどれか。',
  '転移学習は，大規模データで事前学習済みのモデル（例：ImageNetで学習したResNet）の重みを，少ないデータの別タスクに流用・ファインチューニングする手法。少ないデータでも高精度を達成でき，学習コストを大幅に削減できる。GPT等の大規模言語モデルの普及で広く活用されている。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '事前学習済みモデルの知識を別タスクに流用・ファインチューニングする手法', NULL, true),
  (currval('questions_id_seq'), '複数のモデルの予測を統合して精度を高めるアンサンブル学習', NULL, false),
  (currval('questions_id_seq'), '強化学習でエージェントが環境との試行錯誤から方策を学習する手法', NULL, false),
  (currval('questions_id_seq'), 'ラベルなしデータから特徴量の構造を学習する自己教師あり学習', NULL, false);

-- Q580: AI・機械学習（大規模言語モデル・トークン）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 580, 'choice', 1, 1,
  '大規模言語モデル（LLM）における「トークン（token）」の説明として最も適切なものはどれか。',
  'LLMでは文字列を「トークン」と呼ぶ単位に分割して処理する。トークンは1単語の場合もあれば，サブワード（例：「playing」→「play」「ing」）や1文字の場合もある。GPT系モデルでは英語で平均約4文字≒1トークン。コンテキスト長はトークン数で表される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'LLMがテキストを処理する際の基本単位（単語・サブワード・文字など）', NULL, true),
  (currval('questions_id_seq'), 'モデルの学習に使うデータセットの1サンプルのこと', NULL, false),
  (currval('questions_id_seq'), 'APIへの1回のリクエストで消費するコンピューティングリソースの単位', NULL, false),
  (currval('questions_id_seq'), 'モデルの学習パラメータ（重み）1つ1つのこと', NULL, false);

-- Q581: セキュリティ（クラウドセキュリティ・責任共有モデル）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 581, 'choice', 1, 1,
  'クラウドの責任共有モデル（Shared Responsibility Model）においてIaaS利用時にクラウド利用者が責任を負う範囲として最も適切なものはどれか。',
  'IaaSではクラウドプロバイダーが物理インフラ・ハードウェア・ネットワーク・ハイパーバイザーを管理する。利用者はOS・ミドルウェア・アプリケーション・データ・アクセス制御・ネットワーク設定（セキュリティグループ等）に責任を持つ。PaaSはOS管理もプロバイダー，SaaSはほぼすべてプロバイダー管理。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'OS・アプリケーション・データ・アクセス制御', NULL, true),
  (currval('questions_id_seq'), '物理サーバー・ハードウェア障害対応・データセンター設備', NULL, false),
  (currval('questions_id_seq'), 'ハイパーバイザーのセキュリティパッチ適用', NULL, false),
  (currval('questions_id_seq'), 'ネットワーク物理インフラ・スイッチ・ルーター', NULL, false);

-- Q582: セキュリティ（SOC・インシデントレスポンス）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 582, 'choice', 1, 1,
  'SOC（Security Operations Center）の主な役割として最も適切なものはどれか。',
  'SOCはセキュリティの監視・分析・インシデント対応を専門に行う組織・施設。SIEMやIDS/IPSのアラートを24時間365日監視し，脅威を検知して初動対応（トリアージ）・封じ込め・根本原因分析を行う。CSIRTと連携または一体化して機能することも多い。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'セキュリティ監視・脅威検知・インシデント対応を24時間行う専門組織', NULL, true),
  (currval('questions_id_seq'), '脆弱性スキャンを定期実行してパッチ管理を自動化する組織', NULL, false),
  (currval('questions_id_seq'), '社員向けセキュリティ教育と訓練を企画・実施する部門', NULL, false),
  (currval('questions_id_seq'), 'セキュリティ製品の購買・調達と予算管理を担当する部門', NULL, false);

-- Q583: ネットワーク（ルーティングプロトコル・OSPF）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 583, 'choice', 1, 1,
  'OSPF（Open Shortest Path First）の経路計算に使われるアルゴリズムとして最も適切なものはどれか。',
  'OSPFはリンクステートプロトコルで，各ルーターがネットワーク全体のトポロジー情報（LSA）を収集してダイクストラ法（SPFアルゴリズム）で最短経路を計算する。RIPのようにホップ数ではなくリンクコスト（帯域幅など）を基準とする。収束が速く大規模ネットワークに適する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ダイクストラ法（Dijkstra algorithm）', NULL, true),
  (currval('questions_id_seq'), 'ベルマンフォード法（Bellman-Ford algorithm）', NULL, false),
  (currval('questions_id_seq'), 'フロイドワーシャル法（Floyd-Warshall algorithm）', NULL, false),
  (currval('questions_id_seq'), 'Aスター法（A* algorithm）', NULL, false);

-- Q584: ネットワーク（スパニングツリープロトコル）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 584, 'choice', 1, 1,
  'スパニングツリープロトコル（STP）の目的として最も適切なものはどれか。',
  'STP（IEEE 802.1D）は，複数のスイッチが冗長接続されたネットワークでループ（ブロードキャストストーム）が発生しないよう，論理的にループのないツリー構造を形成するプロトコル。冗長パスを一部ブロッキング状態にし，障害時に自動的に切り替える。RSTP（高速STP）はより高速に収束する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'スイッチの冗長接続によるループを防止して論理的なツリー構造を構成する', NULL, true),
  (currval('questions_id_seq'), 'LANの帯域を複数のVLANに論理的に分割して分離する', NULL, false),
  (currval('questions_id_seq'), 'ルーター間で最短経路情報を交換して経路を最適化する', NULL, false),
  (currval('questions_id_seq'), 'ネットワーク機器のIPアドレスをDHCPで自動割り当てする', NULL, false);

-- Q585: OS（仮想記憶・スラッシング）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 585, 'choice', 1, 1,
  'スラッシング（thrashing）の説明として最も適切なものはどれか。',
  'スラッシングは仮想記憶システムで，実メモリが不足してページフォールトが頻発し，OSがページイン/アウトに多くのCPU時間を費やし，本来の処理がほとんど進まない状態。プロセス数を減らす・メモリを増設する・作業セット（ワーキングセット）を考慮したページ置換を行うことで改善できる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ページフォールトが頻発してOSがページイン/アウトに終始しCPUが本処理できない状態', NULL, true),
  (currval('questions_id_seq'), 'キャッシュのヒット率が極端に下がりメモリアクセスが急激に遅くなる状態', NULL, false),
  (currval('questions_id_seq'), 'ページテーブルが肥大化してアドレス変換が遅くなる状態', NULL, false),
  (currval('questions_id_seq'), '複数プロセスが同じページをロックして競合する状態', NULL, false);

-- Q586: 開発手法（フィーチャーチームとコンポーネントチーム）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 586, 'choice', 1, 1,
  'アジャイル開発におけるフィーチャーチーム（feature team）の特徴として最も適切なものはどれか。',
  'フィーチャーチームはフロントエンド・バックエンド・DB・QA・デザインなど複数の専門スキルを持つメンバーで構成されるクロスファンクショナルなチーム。1つのユーザーストーリー（フィーチャー）を端から端まで（end-to-end）自律的に完成させることができる。コンポーネントチーム（技術層ごとの専門チーム）とは対照的。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '複数スキルを持つメンバーでユーザーストーリーを端から端まで完成させる', NULL, true),
  (currval('questions_id_seq'), 'フロントエンド・バックエンド等の技術層ごとに専門チームを編成する', NULL, false),
  (currval('questions_id_seq'), '機能テストのみを専任で行うQA専門チームのこと', NULL, false),
  (currval('questions_id_seq'), '新機能の企画立案を担当するプロダクトオーナーチームのこと', NULL, false);

-- Q587: 開発手法（継続的インテグレーション・テストピラミッド）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 587, 'choice', 1, 1,
  'テストピラミッドにおいて，最も数を多く用意すべきとされているテスト種別はどれか。',
  'テストピラミッド（Mike Cohn）では，底辺が最も広い：ユニットテスト（最多）→結合テスト（中程度）→E2E/UIテスト（最少）の構造を推奨する。ユニットテストは高速・低コストで実行でき，問題の特定が容易。E2Eテストは遅く壊れやすいため最小限にとどめる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ユニットテスト（単体テスト）', NULL, true),
  (currval('questions_id_seq'), 'E2Eテスト（エンドツーエンドテスト）', NULL, false),
  (currval('questions_id_seq'), 'UIテスト（画面操作テスト）', NULL, false),
  (currval('questions_id_seq'), '受け入れテスト（UAT）', NULL, false);

-- Q588: 情報処理（エラー検出・ハミング符号）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 588, 'choice', 1, 1,
  'ハミング符号の特徴として最も適切なものはどれか。',
  'ハミング符号は冗長ビット（パリティビット）を複数付加して1ビットの誤りを訂正し，2ビットの誤りを検出できる誤り訂正符号（SECDED方式）。位置を特定してビットを反転することで自動的に誤りを訂正する。メモリ（ECC RAM）や通信で使われる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '1ビットの誤りを自動訂正し2ビットの誤りを検出できる', NULL, true),
  (currval('questions_id_seq'), '誤りを検出できるが訂正はできない誤り検出専用符号', NULL, false),
  (currval('questions_id_seq'), 'データを生成多項式で割った余りを付加する符号', NULL, false),
  (currval('questions_id_seq'), '全ビットの偶奇を合わせる1ビットのチェック符号', NULL, false);

-- Q589: 経営情報（プロダクトポートフォリオ管理・BCGマトリクス）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 589, 'choice', 1, 1,
  'BCGマトリクス（プロダクトポートフォリオマトリクス）において「問題児（Problem Child）」の説明として最も適切なものはどれか。',
  'BCGマトリクスの4象限：「花形」（高成長・高シェア），「問題児」（高成長・低シェア），「金のなる木」（低成長・高シェア），「負け犬」（低成長・低シェア）。問題児は市場成長率が高いが市場シェアが低い。投資次第でスターになれるが，見極めなければ資金を消耗するだけになる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '市場成長率が高くシェアが低い。投資次第でスターになれる可能性がある', NULL, true),
  (currval('questions_id_seq'), '市場成長率が高くシェアも高い。最も利益を生むが投資も必要', NULL, false),
  (currval('questions_id_seq'), '市場成長率が低くシェアは高い。大きなキャッシュを生み出す', NULL, false),
  (currval('questions_id_seq'), '市場成長率が低くシェアも低い。撤退を検討すべき事業', NULL, false);

-- Q590: 経営情報（バランスト・スコアカード）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 590, 'choice', 1, 1,
  'バランスト・スコアカード（BSC）の4つの視点として最も適切なものはどれか。',
  'BSC（Kaplan & Norton）は財務的指標だけでなく，①財務の視点，②顧客の視点，③内部ビジネスプロセスの視点，④学習と成長の視点の4つのバランスを取りながら戦略目標の達成度を管理するフレームワーク。各視点のKPIをKGIに連結させる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '財務・顧客・内部ビジネスプロセス・学習と成長', NULL, true),
  (currval('questions_id_seq'), '強み・弱み・機会・脅威', NULL, false),
  (currval('questions_id_seq'), '戦略・構造・システム・スタッフ', NULL, false),
  (currval('questions_id_seq'), 'ビジョン・ミッション・戦略・実行', NULL, false);

-- Q591: 新技術（エッジコンピューティング詳細）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 591, 'choice', 1, 1,
  'エッジコンピューティングがIoTシステムで有効な理由として最も適切なものはどれか。',
  'エッジコンピューティングはデータをIoTデバイスの近く（エッジ）で処理する。クラウドへのデータ送信量を削減してネットワーク帯域・通信コストを抑え，往復の通信遅延を無くしてリアルタイム処理（自動運転・製造ライン監視など）を実現できる。プライバシーデータを外部送信せずに済む利点もある。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'データを発生源の近くで処理してレイテンシを削減しクラウドの負荷を低減するため', NULL, true),
  (currval('questions_id_seq'), 'クラウドの計算能力を活用して大規模な機械学習モデルを高速に学習するため', NULL, false),
  (currval('questions_id_seq'), '全IoTデータを一元管理してグローバルな分析・可視化を行うため', NULL, false),
  (currval('questions_id_seq'), 'IoTデバイス間で直接P2P通信して中央サーバーを不要にするため', NULL, false);

-- Q592: 新技術（デジタルツイン）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 592, 'choice', 1, 1,
  'デジタルツイン（Digital Twin）の説明として最も適切なものはどれか。',
  'デジタルツインは，物理的な設備・製品・システムをリアルタイムのセンサーデータを基にサイバー空間上に仮想的に再現（ミラー）する技術。仮想モデル上でシミュレーションを行い，障害予測・最適化・設計改善などに活用できる。製造業・スマートシティ・医療などで応用されている。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '物理システムをリアルタイムのセンサーデータで仮想的に再現しシミュレーションに活用する技術', NULL, true),
  (currval('questions_id_seq'), '1つのサーバーを仮想的に2台に見せる仮想化技術', NULL, false),
  (currval('questions_id_seq'), 'AIが人間の代わりにデジタル業務を自動化するRPAの別称', NULL, false),
  (currval('questions_id_seq'), 'ブロックチェーンで物理資産の所有権を管理するNFT技術', NULL, false);

-- Q593: 情報システム（業務継続計画・RTO/RPO）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 593, 'choice', 1, 1,
  'BCP（事業継続計画）におけるRPO（Recovery Point Objective）の説明として最も適切なものはどれか。',
  'RPO（目標復旧時点）は，災害・障害発生時にどの時点までのデータを回復できるかの目標値（許容できるデータ損失量）。例えばRPO＝1時間なら，最大1時間分のデータ損失は許容する。RTO（目標復旧時間）はシステムを何時間以内に復旧させるかの目標値（ダウンタイムの上限）。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '障害発生時にどの時点までのデータを回復できるかの目標値', NULL, true),
  (currval('questions_id_seq'), '障害発生後にシステムを何時間以内に復旧させるかの目標値', NULL, false),
  (currval('questions_id_seq'), '年間に許容できる最大ダウンタイム時間の目標値', NULL, false),
  (currval('questions_id_seq'), 'バックアップを何世代まで保持するかの目標値', NULL, false);

-- Q594: 情報システム（ITサービスマネジメント・ITIL詳細）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 594, 'choice', 1, 1,
  'ITILの「問題管理（Problem Management）」の目的として最も適切なものはどれか。',
  'ITILの問題管理は，インシデントの根本原因を特定・排除してインシデントの再発を防止することが目的。インシデント管理が「早期にサービスを復旧する」ことを目的とするのに対し，問題管理は「なぜ起きたかを分析して恒久対策を打つ」ことに注力する。既知のエラー（Known Error）データベースを維持する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'インシデントの根本原因を特定・除去して再発を防止すること', NULL, true),
  (currval('questions_id_seq'), '発生したインシデントに迅速に対応してサービスを早期に復旧すること', NULL, false),
  (currval('questions_id_seq'), 'ITシステムへの変更を評価・承認・実施して影響を管理すること', NULL, false),
  (currval('questions_id_seq'), 'ユーザーからの問い合わせやリクエストを一元的に受け付けること', NULL, false);

-- Q595: 数学基礎（確率・条件付き確率）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 595, 'choice', 1, 1,
  '1から6までの目が出る公正なサイコロを1回振ったとき，出た目が偶数であるという条件のもとで，その目が4以上である条件付き確率として最も適切なものはどれか。',
  '偶数の目：2・4・6（3通り）。偶数かつ4以上：4・6（2通り）。条件付き確率P(4以上|偶数)＝P(偶数かつ4以上)÷P(偶数)＝(2/6)÷(3/6)＝2/3。ベイズ定理や機械学習のナイーブベイズ分類器の基礎となる概念。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '2/3', NULL, true),
  (currval('questions_id_seq'), '1/2', NULL, false),
  (currval('questions_id_seq'), '1/3', NULL, false),
  (currval('questions_id_seq'), '2/6', NULL, false);

-- Q596: 数学基礎（組み合わせ・順列）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 596, 'choice', 1, 1,
  '5人の中から3人を選んで並べる順列 P(5,3) の値として最も適切なものはどれか。',
  'P(5,3)＝5×4×3＝60。順列は選ぶ順序を考慮するため P(n,r)＝n!÷(n-r)!。組み合わせ C(5,3)＝10 と区別する。順列はパスワードの組み合わせ数・競走の着順など順序が意味を持つ場合に使用する。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '60', NULL, true),
  (currval('questions_id_seq'), '10', NULL, false),
  (currval('questions_id_seq'), '20', NULL, false),
  (currval('questions_id_seq'), '120', NULL, false);

-- Q597: 情報処理（エンコーディング・Base64詳細）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 597, 'choice', 1, 1,
  'Base64エンコードを行う主な目的として最も適切なものはどれか。',
  'Base64はバイナリデータをASCII文字（A-Z・a-z・0-9・+・/の64種類）で表現する変換方式。テキストのみを扱う通信路（電子メール・JSON・HTMLなど）でバイナリデータ（画像・証明書・暗号化データ）を安全に転送するために使う。データを保護（暗号化）するためのものではない。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'バイナリデータをテキスト形式に変換してテキスト通信路で安全に転送するため', NULL, true),
  (currval('questions_id_seq'), 'データを暗号化して第三者が解読できないようにするため', NULL, false),
  (currval('questions_id_seq'), 'データを圧縮してファイルサイズを削減するため', NULL, false),
  (currval('questions_id_seq'), 'データの完全性を検証するためのハッシュ値を生成するため', NULL, false);

-- Q598: システム設計（高可用性アーキテクチャ・アクティブ-アクティブ）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 598, 'choice', 1, 1,
  'アクティブ-アクティブ（Active-Active）構成の特徴として最も適切なものはどれか。',
  'Active-Active構成では，複数のノードがすべて同時に稼働してトラフィックを分散処理する。1台が障害になっても残りが処理を引き継ぎ，全体の可用性とスループットを高く維持できる。Active-Standby（片系が待機）と対比し，リソースを無駄なく活用できるが同期・整合性管理が複雑になる。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '複数ノードがすべて同時稼働してトラフィックを分散し障害時も処理継続', NULL, true),
  (currval('questions_id_seq'), '1台がメインで稼働し待機系は障害時のみ切り替えて起動する', NULL, false),
  (currval('questions_id_seq'), 'マスターが書き込みを受け付けスレーブは読み取りのみを担当する', NULL, false),
  (currval('questions_id_seq'), '本番系と同一のシステムをコールドスタンバイとして用意する構成', NULL, false);

-- Q599: システム設計（データ一貫性・結果整合性）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 599, 'choice', 1, 1,
  '結果整合性（Eventual Consistency）の説明として最も適切なものはどれか。',
  '結果整合性とは，データの更新後すぐに全ノードに反映されるわけではないが，新たな更新がなければ最終的には全ノードのデータが一致する整合性モデル。強い一貫性（Strong Consistency）と可用性・分断耐性のトレードオフ（CAP定理）から，高可用性分散システム（AmazonDynamoDB・カサンドラなど）で採用される。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '更新後すぐには全ノードに反映されないが最終的に全ノードが同じ値になる', NULL, true),
  (currval('questions_id_seq'), '全ノードが常に同じデータを保持しリード時に必ず最新値を返す', NULL, false),
  (currval('questions_id_seq'), 'ノードごとに独立したデータを保持して同期を一切行わない', NULL, false),
  (currval('questions_id_seq'), 'トランザクション完了後にすべてのノードへの書き込みを保証する', NULL, false);

-- Q600: 総合（情報処理技術者倫理・AIとIT技術者の責任）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES (1, NULL, 600, 'choice', 1, 1,
  'IT技術者が守るべき職業倫理として最も適切なものはどれか。',
  'IT技術者の職業倫理（IPAのスキル標準・ACM倫理綱領など）では，①公共の安全・健康・福祉を最優先にする，②雇用者・顧客の利益だけでなく社会全体への影響を考える，③専門知識を誠実に行使する，④守秘義務を守る，⑤不正・違法な依頼を拒否するなどが求められる。技術的能力だけでなく倫理的判断が重要。',
  NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '公共の安全・社会全体への影響を考慮して専門知識を誠実に行使する', NULL, true),
  (currval('questions_id_seq'), '雇用者・顧客の指示にはいかなる内容でも従う', NULL, false),
  (currval('questions_id_seq'), '技術的に可能であれば法的判断はユーザーに委ねてよい', NULL, false),
  (currval('questions_id_seq'), '守秘義務よりも開発効率を優先して積極的に情報を共有する', NULL, false);
-- ----------------------------------------
-- 科目B：擬似コードトレース（B-25〜B-64）
-- ----------------------------------------

-- B-25: 変数スワップ後の値
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 25, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 a の値はいくつになるか。

整数型: a ← 5
整数型: b ← 8
整数型: tmp
tmp ← a
a ← b
b ← tmp',
   'tmp=5, a=8, b=5 の順に代入される。実行後 a=8。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '8',  NULL, true),
  (currval('questions_id_seq'), '5',  NULL, false),
  (currval('questions_id_seq'), '13', NULL, false),
  (currval('questions_id_seq'), '0',  NULL, false);

-- B-26: 配列の合計
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 26, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 sum の値はいくつになるか。
配列 arr の要素は arr[1]=2, arr[2]=4, arr[3]=6, arr[4]=8, arr[5]=10 とする。

整数型: sum ← 0
整数型: i
for (i を 1 から 5 まで 1 ずつ増やす)
    sum ← sum + arr[i]
endfor',
   'sum = 2+4+6+8+10 = 30。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '30', NULL, true),
  (currval('questions_id_seq'), '20', NULL, false),
  (currval('questions_id_seq'), '25', NULL, false),
  (currval('questions_id_seq'), '15', NULL, false);

-- B-27: while ループのカウント
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 27, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

整数型: x ← 1
整数型: count ← 0
while (x ≤ 10)
    x ← x + 3
    count ← count + 1
endwhile',
   'x の変化: 1→4(count=1)→7(count=2)→10(count=3)→13(count=4)。13>10 でループ終了。count=4。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '4', NULL, true),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '2', NULL, false);

-- B-28: 三角数を返す関数
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 28, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: tri(整数型: n)
    return n × (n + 1) ÷ 2

整数型: result ← tri(5)',
   'tri(5) = 5×6÷2 = 15。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '15', NULL, true),
  (currval('questions_id_seq'), '10', NULL, false),
  (currval('questions_id_seq'), '20', NULL, false),
  (currval('questions_id_seq'), '25', NULL, false);

-- B-29: 再帰関数（階乗）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 29, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 r の値はいくつになるか。

整数型: fact(整数型: n)
    if (n ≤ 1)
        return 1
    endif
    return n × fact(n - 1)

整数型: r ← fact(4)',
   'fact(4)=4×fact(3)=4×3×fact(2)=4×3×2×fact(1)=4×3×2×1=24。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '24', NULL, true),
  (currval('questions_id_seq'), '12', NULL, false),
  (currval('questions_id_seq'), '16', NULL, false),
  (currval('questions_id_seq'), '6',  NULL, false);

-- B-30: 二分探索の mid 値
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 30, 'choice', 1, 1,
   '次の擬似コードは arr から target を二分探索する。実行したとき、変数 mid の最終的な値はいくつになるか。
配列 arr の要素は arr[1]=1, arr[2]=3, arr[3]=5, arr[4]=7, arr[5]=9, arr[6]=11, arr[7]=13 とする。

整数型: left ← 1, right ← 7, mid
整数型: target ← 7
while (left ≤ right)
    mid ← (left + right) ÷ 2
    if (arr[mid] = target)
        left ← right + 1
    elseif (arr[mid] < target)
        left ← mid + 1
    else
        right ← mid - 1
    endif
endwhile',
   'left=1,right=7 → mid=(1+7)÷2=4。arr[4]=7=target → ループ終了。mid=4。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '4', NULL, true),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '7', NULL, false);

-- B-31: バブルソート1パス後の末尾要素
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 31, 'choice', 1, 1,
   '次の擬似コードは配列 arr の1回目のパスを実行する。実行後、arr[5] の値はいくつになるか。
配列 arr の要素は arr[1]=5, arr[2]=3, arr[3]=8, arr[4]=1, arr[5]=4 とする。

整数型: i, tmp
for (i を 1 から 4 まで 1 ずつ増やす)
    if (arr[i] > arr[i + 1])
        tmp ← arr[i]
        arr[i] ← arr[i + 1]
        arr[i + 1] ← tmp
    endif
endfor',
   'i=1: 5>3→swap→{3,5,8,1,4}。i=2: 5<8→変化なし。i=3: 8>1→swap→{3,5,1,8,4}。i=4: 8>4→swap→{3,5,1,4,8}。arr[5]=8。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '8', NULL, true),
  (currval('questions_id_seq'), '4', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '1', NULL, false);

-- B-32: 数値中の特定桁のカウント
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 32, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

整数型: n ← 12321
整数型: count ← 0
while (n > 0)
    if (n mod 10 = 1)
        count ← count + 1
    endif
    n ← n ÷ 10
endwhile',
   'nの各桁を取り出す: 1(count=1)→2→3→2→1(count=2)。count=2。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '2', NULL, true),
  (currval('questions_id_seq'), '1', NULL, false),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false);

-- B-33: 複合条件の result
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 33, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: a ← 5, b ← 10, c ← 3
整数型: result ← 0
if (a < b and b > c)
    result ← 1
else
    result ← 2
endif
if (a > c or b < c)
    result ← result + 10
endif',
   '1つ目のif: 5<10(真) and 10>3(真) → result=1。2つ目のif: 5>3(真) or 10<3(偽) → 真 → result=1+10=11。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '11', NULL, true),
  (currval('questions_id_seq'), '1',  NULL, false),
  (currval('questions_id_seq'), '12', NULL, false),
  (currval('questions_id_seq'), '2',  NULL, false);

-- B-34: 減算 for ループの合計
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 34, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 sum の値はいくつになるか。

整数型: sum ← 0
整数型: i
for (i を 5 から 1 まで 1 ずつ減らす)
    sum ← sum + i
endfor',
   'sum = 5+4+3+2+1 = 15。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '15', NULL, true),
  (currval('questions_id_seq'), '10', NULL, false),
  (currval('questions_id_seq'), '20', NULL, false),
  (currval('questions_id_seq'), '25', NULL, false);

-- B-35: 2次元配列の要素
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 35, 'choice', 1, 1,
   '次の擬似コードを実行したとき、m[2][3] の値はいくつになるか。

整数型: m[3][3]
整数型: i, j
for (i を 1 から 3 まで 1 ずつ増やす)
    for (j を 1 から 3 まで 1 ずつ増やす)
        m[i][j] ← i × j
    endfor
endfor',
   'm[i][j] = i×j。m[2][3] = 2×3 = 6。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '6', NULL, true),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '8', NULL, false),
  (currval('questions_id_seq'), '9', NULL, false);

-- B-36: 入れ子関数呼び出しの結果
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 36, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 x の値はいくつになるか。

整数型: max2(整数型: a, 整数型: b)
    if (a ≥ b)
        return a
    else
        return b
    endif

整数型: x ← max2(max2(3, 7), max2(5, 2))',
   'max2(3,7)=7、max2(5,2)=5。max2(7,5)=7。x=7。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '7', NULL, true),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '2', NULL, false);

-- B-37: スタック操作後のトップ値
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 37, 'choice', 1, 1,
   '空のスタックに対して次の操作を順に行った後、スタックの最上段の値はいくつか。

操作1: push(10)
操作2: push(5)
操作3: push(8)
操作4: pop()
操作5: push(3)
操作6: pop()',
   'push(10)→[10]。push(5)→[10,5]。push(8)→[10,5,8]。pop→[10,5]（8取出し）。push(3)→[10,5,3]。pop→[10,5]（3取出し）。最上段=5。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '5',  NULL, true),
  (currval('questions_id_seq'), '10', NULL, false),
  (currval('questions_id_seq'), '3',  NULL, false),
  (currval('questions_id_seq'), '8',  NULL, false);

-- B-38: ユークリッドの互除法（GCD）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 38, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: gcd(整数型: a, 整数型: b)
    整数型: r
    while (b ≠ 0)
        r ← a mod b
        a ← b
        b ← r
    endwhile
    return a

整数型: result ← gcd(12, 8)',
   'b=8≠0: r=12 mod 8=4, a=8, b=4。b=4≠0: r=8 mod 4=0, a=4, b=0。b=0でループ終了。result=4。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '4', NULL, true),
  (currval('questions_id_seq'), '2', NULL, false),
  (currval('questions_id_seq'), '8', NULL, false),
  (currval('questions_id_seq'), '6', NULL, false);

-- B-39: フィボナッチ数列（ループ版）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 39, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 b の値はいくつになるか。

整数型: a ← 1, b ← 1, c
整数型: i
for (i を 1 から 4 まで 1 ずつ増やす)
    c ← a + b
    a ← b
    b ← c
endfor',
   'i=1: c=2, a=1, b=2。i=2: c=3, a=2, b=3。i=3: c=5, a=3, b=5。i=4: c=8, a=5, b=8。b=8。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '8',  NULL, true),
  (currval('questions_id_seq'), '5',  NULL, false),
  (currval('questions_id_seq'), '13', NULL, false),
  (currval('questions_id_seq'), '3',  NULL, false);

-- B-40: 配列内の特定値のカウント
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 40, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。
配列 arr の要素は arr[1]=1, arr[2]=3, arr[3]=3, arr[4]=5, arr[5]=3 とする。

整数型: count ← 0
整数型: i
for (i を 1 から 5 まで 1 ずつ増やす)
    if (arr[i] = 3)
        count ← count + 1
    endif
endfor',
   'arr[2]=3, arr[3]=3, arr[5]=3 の3箇所で条件が真。count=3。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '3', NULL, true),
  (currval('questions_id_seq'), '2', NULL, false),
  (currval('questions_id_seq'), '1', NULL, false),
  (currval('questions_id_seq'), '4', NULL, false);

-- B-41: 配列要素の積
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 41, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 product の値はいくつになるか。
配列 arr の要素は arr[1]=1, arr[2]=2, arr[3]=3, arr[4]=4 とする。

整数型: product ← 1
整数型: i
for (i を 1 から 4 まで 1 ずつ増やす)
    product ← product × arr[i]
endfor',
   '1×1=1、1×2=2、2×3=6、6×4=24。product=24。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '24', NULL, true),
  (currval('questions_id_seq'), '10', NULL, false),
  (currval('questions_id_seq'), '12', NULL, false),
  (currval('questions_id_seq'), '6',  NULL, false);

-- B-42: 偶数のみの合計
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 42, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 sum の値はいくつになるか。
配列 arr の要素は arr[1]=1, arr[2]=4, arr[3]=3, arr[4]=8, arr[5]=2, arr[6]=5 とする。

整数型: sum ← 0
整数型: i
for (i を 1 から 6 まで 1 ずつ増やす)
    if (arr[i] mod 2 = 0)
        sum ← sum + arr[i]
    endif
endfor',
   '偶数: arr[2]=4, arr[4]=8, arr[5]=2。sum=4+8+2=14。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '14', NULL, true),
  (currval('questions_id_seq'), '23', NULL, false),
  (currval('questions_id_seq'), '12', NULL, false),
  (currval('questions_id_seq'), '9',  NULL, false);

-- B-43: 配列の平均（整数除算）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 43, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 avg の値はいくつになるか。
配列 arr の要素は arr[1]=10, arr[2]=20, arr[3]=30, arr[4]=40 とする。（÷ は整数除算とする）

整数型: sum ← 0
整数型: i
for (i を 1 から 4 まで 1 ずつ増やす)
    sum ← sum + arr[i]
endfor
整数型: avg ← sum ÷ 4',
   'sum=10+20+30+40=100。avg=100÷4=25。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '25', NULL, true),
  (currval('questions_id_seq'), '100', NULL, false),
  (currval('questions_id_seq'), '20', NULL, false),
  (currval('questions_id_seq'), '30', NULL, false);

-- B-44: 繰り返しによる 2 の累乗
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 44, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: result ← 1
整数型: i
for (i を 1 から 5 まで 1 ずつ増やす)
    result ← result × 2
endfor',
   '1→2→4→8→16→32。result=32（=2⁵）。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '32', NULL, true),
  (currval('questions_id_seq'), '16', NULL, false),
  (currval('questions_id_seq'), '64', NULL, false),
  (currval('questions_id_seq'), '10', NULL, false);

-- B-45: 配列逆順後の先頭要素
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 45, 'choice', 1, 1,
   '次の擬似コードを実行したとき、arr[1] の値はいくつになるか。
配列 arr の要素は arr[1]=1, arr[2]=2, arr[3]=3, arr[4]=4, arr[5]=5 とする。

整数型: i, tmp
for (i を 1 から 2 まで 1 ずつ増やす)
    tmp ← arr[i]
    arr[i] ← arr[6 - i]
    arr[6 - i] ← tmp
endfor',
   'i=1: arr[1]↔arr[5]: arr={5,2,3,4,1}。i=2: arr[2]↔arr[4]: arr={5,4,3,2,1}。arr[1]=5。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '5', NULL, true),
  (currval('questions_id_seq'), '1', NULL, false),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '4', NULL, false);

-- B-46: 再帰による合計
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 46, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 r の値はいくつになるか。

整数型: sumTo(整数型: n)
    if (n ≤ 0)
        return 0
    endif
    return n + sumTo(n - 1)

整数型: r ← sumTo(5)',
   'sumTo(5)=5+4+3+2+1+0=15。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '15', NULL, true),
  (currval('questions_id_seq'), '10', NULL, false),
  (currval('questions_id_seq'), '20', NULL, false),
  (currval('questions_id_seq'), '5',  NULL, false);

-- B-47: ネストループのカウント（j を i から）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 47, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

整数型: count ← 0
整数型: i, j
for (i を 1 から 3 まで 1 ずつ増やす)
    for (j を i から 3 まで 1 ずつ増やす)
        count ← count + 1
    endfor
endfor',
   'i=1: j=1,2,3 → 3回。i=2: j=2,3 → 2回。i=3: j=3 → 1回。count=3+2+1=6。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '6', NULL, true),
  (currval('questions_id_seq'), '9', NULL, false),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false);

-- B-48: キュー操作後のフロント
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 48, 'choice', 1, 1,
   '空のキューに対して次の操作を順に行った後、キューの先頭（フロント）の値はいくつか。

操作1: enqueue(5)
操作2: enqueue(3)
操作3: enqueue(8)
操作4: dequeue()
操作5: enqueue(1)
操作6: dequeue()',
   'enqueue後: [5,3,8]。dequeue→[3,8]（5取出し）。enqueue(1)→[3,8,1]。dequeue→[8,1]（3取出し）。フロント=8。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '8', NULL, true),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '1', NULL, false);

-- B-49: 2進数の1ビット数カウント
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 49, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 bits の値はいくつになるか。

整数型: n ← 13
整数型: bits ← 0
while (n > 0)
    bits ← bits + (n mod 2)
    n ← n ÷ 2
endwhile',
   '13=1101₂。n=13: bits+=1=1, n=6。n=6: bits+=0=1, n=3。n=3: bits+=1=2, n=1。n=1: bits+=1=3, n=0。bits=3。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '3', NULL, true),
  (currval('questions_id_seq'), '4', NULL, false),
  (currval('questions_id_seq'), '2', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false);

-- B-50: 奇数のみの合計
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 50, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 sum の値はいくつになるか。
配列 arr の要素は arr[1]=1, arr[2]=2, arr[3]=3, arr[4]=4, arr[5]=5, arr[6]=6, arr[7]=7 とする。

整数型: sum ← 0
整数型: i
for (i を 1 から 7 まで 1 ずつ増やす)
    if (arr[i] mod 2 ≠ 0)
        sum ← sum + arr[i]
    endif
endfor',
   '奇数: 1,3,5,7。sum=1+3+5+7=16。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '16', NULL, true),
  (currval('questions_id_seq'), '12', NULL, false),
  (currval('questions_id_seq'), '28', NULL, false),
  (currval('questions_id_seq'), '9',  NULL, false);

-- B-51: while による累乗カウント
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 51, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

整数型: x ← 1
整数型: count ← 0
while (x ≤ 50)
    x ← x × 3
    count ← count + 1
endwhile',
   'x: 1→3(count=1)→9(count=2)→27(count=3)→81(count=4)。81>50でループ終了。count=4。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '4', NULL, true),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '2', NULL, false);

-- B-52: 最大値と最小値の差
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 52, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 diff の値はいくつになるか。
配列 arr の要素は arr[1]=3, arr[2]=8, arr[3]=1, arr[4]=6, arr[5]=4 とする。

整数型: maxV ← arr[1], minV ← arr[1]
整数型: i
for (i を 2 から 5 まで 1 ずつ増やす)
    if (arr[i] > maxV)
        maxV ← arr[i]
    endif
    if (arr[i] < minV)
        minV ← arr[i]
    endif
endfor
整数型: diff ← maxV - minV',
   'maxV: 3→8→8→8→8。minV: 3→3→1→1→1。diff=8-1=7。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '7', NULL, true),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '9', NULL, false),
  (currval('questions_id_seq'), '3', NULL, false);

-- B-53: 3の倍数カウント
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 53, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

整数型: count ← 0
整数型: i
for (i を 1 から 15 まで 1 ずつ増やす)
    if (i mod 3 = 0)
        count ← count + 1
    endif
endfor',
   '3の倍数: 3,6,9,12,15 → 5個。count=5。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '5', NULL, true),
  (currval('questions_id_seq'), '4', NULL, false),
  (currval('questions_id_seq'), '6', NULL, false),
  (currval('questions_id_seq'), '3', NULL, false);

-- B-54: 偶数カウント（1〜10）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 54, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

整数型: count ← 0
整数型: i
for (i を 1 から 10 まで 1 ずつ増やす)
    if (i mod 2 = 0)
        count ← count + 1
    endif
endfor',
   '1〜10の偶数: 2,4,6,8,10 → 5個。count=5。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '5', NULL, true),
  (currval('questions_id_seq'), '4', NULL, false),
  (currval('questions_id_seq'), '6', NULL, false),
  (currval('questions_id_seq'), '10', NULL, false);

-- B-55: 論理型関数で偶数をカウント
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 55, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

論理型: isEven(整数型: n)
    if (n mod 2 = 0)
        return true
    else
        return false
    endif

整数型: count ← 0
整数型: i
for (i を 1 から 8 まで 1 ずつ増やす)
    if (isEven(i) = true)
        count ← count + 1
    endif
endfor',
   '1〜8で isEven が true になるのは 2,4,6,8 の4個。count=4。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '4', NULL, true),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '8', NULL, false);

-- B-56: 条件が最初から偽の while ループ
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 56, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

整数型: n ← 100
整数型: count ← 0
while (n < 50)
    n ← n + 10
    count ← count + 1
endwhile',
   'n=100の時点で n<50 は偽。ループは1度も実行されない。count=0。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '0', NULL, true),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '1', NULL, false),
  (currval('questions_id_seq'), '6', NULL, false);

-- B-57: 最後に条件が真になった i の値
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 57, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 x の値はいくつになるか。

整数型: x ← 0
整数型: i
for (i を 1 から 5 まで 1 ずつ増やす)
    if (i mod 2 = 0)
        x ← i
    endif
endfor',
   'i=2: x=2。i=4: x=4。i=5 で終了。最後に代入されたのはi=4のとき。x=4。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '4', NULL, true),
  (currval('questions_id_seq'), '2', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '0', NULL, false);

-- B-58: 引き算による整数除算の商
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 58, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: a ← 17, b ← 5
整数型: result ← 0
while (a ≥ b)
    a ← a - b
    result ← result + 1
endwhile',
   '17-5=12(result=1)、12-5=7(result=2)、7-5=2(result=3)。2<5でループ終了。result=3（17÷5の商）。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '3', NULL, true),
  (currval('questions_id_seq'), '2', NULL, false),
  (currval('questions_id_seq'), '4', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false);

-- B-59: for ループによる積（2×3×4）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 59, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 prod の値はいくつになるか。

整数型: prod ← 1
整数型: i
for (i を 2 から 4 まで 1 ずつ増やす)
    prod ← prod × i
endfor',
   '1×2=2、2×3=6、6×4=24。prod=24。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '24', NULL, true),
  (currval('questions_id_seq'), '6',  NULL, false),
  (currval('questions_id_seq'), '9',  NULL, false),
  (currval('questions_id_seq'), '12', NULL, false);

-- B-60: 配列パターン（arr[i] = i²）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 60, 'choice', 1, 1,
   '次の擬似コードを実行したとき、arr[4] の値はいくつになるか。

整数型: arr[5]
整数型: i
for (i を 1 から 5 まで 1 ずつ増やす)
    arr[i] ← i × i
endfor',
   'arr[i]=i²。arr[4]=4×4=16。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '16', NULL, true),
  (currval('questions_id_seq'), '8',  NULL, false),
  (currval('questions_id_seq'), '9',  NULL, false),
  (currval('questions_id_seq'), '25', NULL, false);

-- B-61: 2つの関数を組み合わせた呼び出し
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 61, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: double(整数型: n)
    return n × 2

整数型: addOne(整数型: n)
    return n + 1

整数型: result ← double(addOne(3))',
   'addOne(3)=4。double(4)=8。result=8。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '8', NULL, true),
  (currval('questions_id_seq'), '7', NULL, false),
  (currval('questions_id_seq'), '6', NULL, false),
  (currval('questions_id_seq'), '4', NULL, false);

-- B-62: 線形探索のインデックス
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 62, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 idx の値はいくつになるか。
配列 arr の要素は arr[1]=5, arr[2]=3, arr[3]=8, arr[4]=1, arr[5]=9 とする。

整数型: target ← 8
整数型: idx ← -1
整数型: i
for (i を 1 から 5 まで 1 ずつ増やす)
    if (arr[i] = target)
        idx ← i
    endif
endfor',
   'arr[3]=8=target → idx=3。i=4,5でも条件は偽。idx=3。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '3',  NULL, true),
  (currval('questions_id_seq'), '8',  NULL, false),
  (currval('questions_id_seq'), '2',  NULL, false),
  (currval('questions_id_seq'), '-1', NULL, false);

-- B-63: 各桁の和（桁数分解）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 63, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 sum の値はいくつになるか。

整数型: n ← 1234
整数型: sum ← 0
while (n > 0)
    sum ← sum + (n mod 10)
    n ← n ÷ 10
endwhile',
   'n=1234: sum+=4=4, n=123。n=123: sum+=3=7, n=12。n=12: sum+=2=9, n=1。n=1: sum+=1=10, n=0。sum=10。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '10', NULL, true),
  (currval('questions_id_seq'), '7',  NULL, false),
  (currval('questions_id_seq'), '14', NULL, false),
  (currval('questions_id_seq'), '4',  NULL, false);

-- B-64: 多分岐の戻り値
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 64, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: classify(整数型: n)
    if (n < 0)
        return -1
    elseif (n = 0)
        return 0
    elseif (n < 100)
        return 1
    else
        return 2
    endif

整数型: result ← classify(75)',
   '75: n<0 は偽。n=0 は偽。n<100（75<100）は真 → return 1。result=1。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '1',  NULL, true),
  (currval('questions_id_seq'), '2',  NULL, false),
  (currval('questions_id_seq'), '0',  NULL, false),
  (currval('questions_id_seq'), '-1', NULL, false);
-- ----------------------------------------
-- 科目B：擬似コードトレース（B-65〜B-88）
-- ----------------------------------------

-- B-65: 挿入ソート1ステップ後のarr[2]
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 65, 'choice', 1, 1,
   '次の擬似コードは挿入ソートの1ステップ（i=2のとき）を実行する。実行後、arr[2] の値はいくつになるか。
配列 arr の要素は arr[1]=4, arr[2]=2, arr[3]=7, arr[4]=1 とする。

整数型: key ← arr[2]
整数型: j ← 1
while (j ≥ 1 and arr[j] > key)
    arr[j + 1] ← arr[j]
    j ← j - 1
endwhile
arr[j + 1] ← key',
   'key=2, j=1。arr[1]=4>2: arr[2]=arr[1]=4, j=0。ループ終了。arr[0+1]=arr[1]=2。arr: {2,4,7,1}。arr[2]=4。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '4', NULL, true),
  (currval('questions_id_seq'), '2', NULL, false),
  (currval('questions_id_seq'), '7', NULL, false),
  (currval('questions_id_seq'), '1', NULL, false);

-- B-66: LCM（最小公倍数）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 66, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: gcd(整数型: a, 整数型: b)
    整数型: r
    while (b ≠ 0)
        r ← a mod b
        a ← b
        b ← r
    endwhile
    return a

整数型: a ← 4, b ← 6
整数型: result ← (a × b) ÷ gcd(a, b)',
   'gcd(4,6): r=4 mod 6=4, a=6, b=4。r=6 mod 4=2, a=4, b=2。r=4 mod 2=0, a=2, b=0。gcd=2。result=(4×6)÷2=24÷2=12。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '12', NULL, true),
  (currval('questions_id_seq'), '24', NULL, false),
  (currval('questions_id_seq'), '2',  NULL, false),
  (currval('questions_id_seq'), '6',  NULL, false);

-- B-67: 正の数のカウント
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 67, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。
配列 arr の要素は arr[1]=3, arr[2]=-2, arr[3]=5, arr[4]=-1, arr[5]=7, arr[6]=0, arr[7]=-4 とする。

整数型: count ← 0
整数型: i
for (i を 1 から 7 まで 1 ずつ増やす)
    if (arr[i] > 0)
        count ← count + 1
    endif
endfor',
   '正の数（>0）: arr[1]=3, arr[3]=5, arr[5]=7 の3個。0は正でない。count=3。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '3', NULL, true),
  (currval('questions_id_seq'), '4', NULL, false),
  (currval('questions_id_seq'), '2', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false);

-- B-68: 二乗の累積和
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 68, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 sum の値はいくつになるか。

整数型: sum ← 0
整数型: i
for (i を 1 から 5 まで 1 ずつ増やす)
    sum ← sum + i × i
endfor',
   '1²+2²+3²+4²+5²=1+4+9+16+25=55。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '55', NULL, true),
  (currval('questions_id_seq'), '15', NULL, false),
  (currval('questions_id_seq'), '25', NULL, false),
  (currval('questions_id_seq'), '30', NULL, false);

-- B-69: 数値の反転（reversed の値）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 69, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 reversed の値はいくつになるか。

整数型: n ← 1234
整数型: reversed ← 0
while (n > 0)
    reversed ← reversed × 10 + (n mod 10)
    n ← n ÷ 10
endwhile',
   'n=1234: rev=0×10+4=4, n=123。n=123: rev=4×10+3=43, n=12。n=12: rev=43×10+2=432, n=1。n=1: rev=432×10+1=4321, n=0。reversed=4321。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '4321', NULL, true),
  (currval('questions_id_seq'), '1234', NULL, false),
  (currval('questions_id_seq'), '432',  NULL, false),
  (currval('questions_id_seq'), '12',   NULL, false);

-- B-70: ループ内の累積乗（3のi乗の和）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 70, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 sum の値はいくつになるか。

整数型: sum ← 0
整数型: pw ← 1
整数型: i
for (i を 1 から 4 まで 1 ずつ増やす)
    pw ← pw × 3
    sum ← sum + pw
endfor',
   'i=1: pw=3, sum=3。i=2: pw=9, sum=12。i=3: pw=27, sum=39。i=4: pw=81, sum=120。sum=120（=3+9+27+81）。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '120', NULL, true),
  (currval('questions_id_seq'), '81',  NULL, false),
  (currval('questions_id_seq'), '39',  NULL, false),
  (currval('questions_id_seq'), '93',  NULL, false);

-- B-71: 再帰関数（桁数カウント）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 71, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 r の値はいくつになるか。

整数型: digits(整数型: n)
    if (n < 10)
        return 1
    endif
    return 1 + digits(n ÷ 10)

整数型: r ← digits(1234)',
   'digits(1234)=1+digits(123)=1+1+digits(12)=1+1+1+digits(1)=1+1+1+1=4。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '4', NULL, true),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '1', NULL, false);

-- B-72: 行列対角線の和（トレース）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 72, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 trace の値はいくつになるか。
2次元配列 m について m[1][1]=1, m[1][2]=2, m[1][3]=3, m[2][1]=4, m[2][2]=5, m[2][3]=6, m[3][1]=7, m[3][2]=8, m[3][3]=9 とする。

整数型: trace ← 0
整数型: i
for (i を 1 から 3 まで 1 ずつ増やす)
    trace ← trace + m[i][i]
endfor',
   'trace = m[1][1]+m[2][2]+m[3][3] = 1+5+9 = 15。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '15', NULL, true),
  (currval('questions_id_seq'), '45', NULL, false),
  (currval('questions_id_seq'), '12', NULL, false),
  (currval('questions_id_seq'), '6',  NULL, false);

-- B-73: 再帰的カウントダウン
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 73, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 r の値はいくつになるか。

整数型: countdown(整数型: n)
    if (n ≤ 0)
        return 0
    endif
    return 1 + countdown(n - 1)

整数型: r ← countdown(5)',
   'countdown(5)=1+countdown(4)=1+1+countdown(3)=…=1+1+1+1+1+0=5。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '5', NULL, true),
  (currval('questions_id_seq'), '4', NULL, false),
  (currval('questions_id_seq'), '6', NULL, false),
  (currval('questions_id_seq'), '0', NULL, false);

-- B-74: GCD(18, 12)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 74, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: gcd(整数型: a, 整数型: b)
    整数型: r
    while (b ≠ 0)
        r ← a mod b
        a ← b
        b ← r
    endwhile
    return a

整数型: result ← gcd(18, 12)',
   'b=12≠0: r=18 mod 12=6, a=12, b=6。b=6≠0: r=12 mod 6=0, a=6, b=0。b=0でループ終了。result=6。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '6', NULL, true),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '9', NULL, false),
  (currval('questions_id_seq'), '2', NULL, false);

-- B-75: 配列逆順後のarr[2]
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 75, 'choice', 1, 1,
   '次の擬似コードを実行したとき、arr[2] の値はいくつになるか。
配列 arr の要素は arr[1]=10, arr[2]=20, arr[3]=30, arr[4]=40, arr[5]=50 とする。

整数型: i
for (i を 1 から 5 まで 1 ずつ増やす)
    整数型: rev[5]
    rev[i] ← arr[6 - i]
endfor',
   'rev[i]=arr[6-i]。rev[2]=arr[4]=40。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '40', NULL, true),
  (currval('questions_id_seq'), '20', NULL, false),
  (currval('questions_id_seq'), '50', NULL, false),
  (currval('questions_id_seq'), '30', NULL, false);

-- B-76: 特定値（4）のカウント
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 76, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。
配列 arr の要素は arr[1]=2, arr[2]=4, arr[3]=6, arr[4]=4, arr[5]=8, arr[6]=4, arr[7]=1 とする。

整数型: count ← 0
整数型: i
for (i を 1 から 7 まで 1 ずつ増やす)
    if (arr[i] = 4)
        count ← count + 1
    endif
endfor',
   'arr[2]=4, arr[4]=4, arr[6]=4 の3箇所。count=3。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '3', NULL, true),
  (currval('questions_id_seq'), '2', NULL, false),
  (currval('questions_id_seq'), '4', NULL, false),
  (currval('questions_id_seq'), '1', NULL, false);

-- B-77: 複合条件分岐の result
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 77, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: a ← 10, b ← 3
整数型: result
if (a mod b = 1)
    result ← a + b
elseif (a mod b = 0)
    result ← a - b
else
    result ← a × b
endif',
   'a mod b = 10 mod 3 = 1。条件1が真 → result = 10+3 = 13。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '13', NULL, true),
  (currval('questions_id_seq'), '7',  NULL, false),
  (currval('questions_id_seq'), '30', NULL, false),
  (currval('questions_id_seq'), '1',  NULL, false);

-- B-78: 再帰フィボナッチ fib(6)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 78, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 r の値はいくつになるか。

整数型: fib(整数型: n)
    if (n ≤ 1)
        return n
    endif
    return fib(n - 1) + fib(n - 2)

整数型: r ← fib(6)',
   'fib(0)=0, fib(1)=1, fib(2)=1, fib(3)=2, fib(4)=3, fib(5)=5, fib(6)=8。r=8。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '8',  NULL, true),
  (currval('questions_id_seq'), '5',  NULL, false),
  (currval('questions_id_seq'), '13', NULL, false),
  (currval('questions_id_seq'), '6',  NULL, false);

-- B-79: バブルソート2パス後のarr[2]
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 79, 'choice', 1, 1,
   '次の擬似コードを実行したとき、arr[2] の値はいくつになるか。
配列 arr の要素は arr[1]=3, arr[2]=1, arr[3]=4, arr[4]=2 とする。

整数型: pass, i, tmp
for (pass を 1 から 2 まで 1 ずつ増やす)
    for (i を 1 から 3 まで 1 ずつ増やす)
        if (arr[i] > arr[i + 1])
            tmp ← arr[i]
            arr[i] ← arr[i + 1]
            arr[i + 1] ← tmp
        endif
    endfor
endfor',
   'パス1: 3>1→swap{1,3,4,2}, 3<4→なし, 4>2→swap{1,3,2,4}。パス2: 1<3→なし, 3>2→swap{1,2,3,4}, 3<4→なし。arr[2]=2。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '2', NULL, true),
  (currval('questions_id_seq'), '1', NULL, false),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '4', NULL, false);

-- B-80: 配列の右回転後 arr[1]
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 80, 'choice', 1, 1,
   '次の擬似コードを実行したとき、arr[1] の値はいくつになるか。
配列 arr の要素は arr[1]=1, arr[2]=2, arr[3]=3, arr[4]=4, arr[5]=5 とする。

整数型: tmp ← arr[5]
整数型: i
for (i を 5 から 2 まで 1 ずつ減らす)
    arr[i] ← arr[i - 1]
endfor
arr[1] ← tmp',
   'tmp=5。i=5: arr[5]=arr[4]=4。i=4: arr[4]=arr[3]=3。i=3: arr[3]=arr[2]=2。i=2: arr[2]=arr[1]=1。arr[1]=5。結果: {5,1,2,3,4}。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '5', NULL, true),
  (currval('questions_id_seq'), '1', NULL, false),
  (currval('questions_id_seq'), '4', NULL, false),
  (currval('questions_id_seq'), '2', NULL, false);

-- B-81: 条件マトリクス（i×jが5より大きいセルの数）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 81, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

整数型: count ← 0
整数型: i, j
for (i を 1 から 3 まで 1 ずつ増やす)
    for (j を 1 から 3 まで 1 ずつ増やす)
        if (i × j > 5)
            count ← count + 1
        endif
    endfor
endfor',
   'i=1: 1,2,3 → いずれも≤5。i=2: 2,4,6(>5)→1個。i=3: 3,6(>5),9(>5)→2個。count=0+1+2=3。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '3', NULL, true),
  (currval('questions_id_seq'), '4', NULL, false),
  (currval('questions_id_seq'), '2', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false);

-- B-82: 絶対値関数の利用
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 82, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: absVal(整数型: n)
    if (n < 0)
        return -n
    endif
    return n

整数型: result ← absVal(-7) + absVal(3)',
   'absVal(-7)=7、absVal(3)=3。result=7+3=10。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '10', NULL, true),
  (currval('questions_id_seq'), '-4', NULL, false),
  (currval('questions_id_seq'), '4',  NULL, false),
  (currval('questions_id_seq'), '7',  NULL, false);

-- B-83: 2関数の連鎖（square(triple(2))）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 83, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: square(整数型: n)
    return n × n

整数型: triple(整数型: n)
    return n × 3

整数型: result ← square(triple(2))',
   'triple(2)=6。square(6)=36。result=36。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '36', NULL, true),
  (currval('questions_id_seq'), '12', NULL, false),
  (currval('questions_id_seq'), '18', NULL, false),
  (currval('questions_id_seq'), '8',  NULL, false);

-- B-84: and 複合条件の while 終了後の b
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 84, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 b の値はいくつになるか。

整数型: a ← 1, b ← 20
while (a < 10 and b > 15)
    a ← a + 3
    b ← b - 4
endwhile',
   'a=1,b=20 → 1<10 and 20>15(真) → a=4, b=16。4<10 and 16>15(真) → a=7, b=12。7<10 and 12>15 → 12>15は偽 → ループ終了。b=12。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '12', NULL, true),
  (currval('questions_id_seq'), '16', NULL, false),
  (currval('questions_id_seq'), '20', NULL, false),
  (currval('questions_id_seq'), '8',  NULL, false);

-- B-85: 奇数インデックス要素の合計
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 85, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 sum の値はいくつになるか。
配列 arr の要素は arr[1]=10, arr[2]=20, arr[3]=30, arr[4]=40, arr[5]=50 とする。

整数型: sum ← 0
整数型: i
for (i を 1 から 5 まで 2 ずつ増やす)
    sum ← sum + arr[i]
endfor',
   'i=1: sum+=arr[1]=10。i=3: sum+=arr[3]=30, sum=40。i=5: sum+=arr[5]=50, sum=90。i=7 > 5でループ終了。sum=90。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '90',  NULL, true),
  (currval('questions_id_seq'), '150', NULL, false),
  (currval('questions_id_seq'), '60',  NULL, false),
  (currval('questions_id_seq'), '40',  NULL, false);

-- B-86: 指数計算（base=2, exp=5）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 86, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: base ← 2
整数型: exp ← 5
整数型: result ← 1
整数型: i
for (i を 1 から exp まで 1 ずつ増やす)
    result ← result × base
endfor',
   '1→2→4→8→16→32。result=32（=2⁵）。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '32', NULL, true),
  (currval('questions_id_seq'), '10', NULL, false),
  (currval('questions_id_seq'), '16', NULL, false),
  (currval('questions_id_seq'), '64', NULL, false);

-- B-87: 3の倍数でない数の合計
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 87, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 sum の値はいくつになるか。

整数型: sum ← 0
整数型: i
for (i を 1 から 9 まで 1 ずつ増やす)
    if (i mod 3 ≠ 0)
        sum ← sum + i
    endif
endfor',
   '3の倍数でない数(1〜9): 1,2,4,5,7,8。sum=1+2+4+5+7+8=27。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '27', NULL, true),
  (currval('questions_id_seq'), '18', NULL, false),
  (currval('questions_id_seq'), '45', NULL, false),
  (currval('questions_id_seq'), '24', NULL, false);

-- B-88: 関数の再帰（掛け算のみ）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 88, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 r の値はいくつになるか。

整数型: power(整数型: base, 整数型: exp)
    if (exp = 0)
        return 1
    endif
    return base × power(base, exp - 1)

整数型: r ← power(3, 3)',
   'power(3,3)=3×power(3,2)=3×3×power(3,1)=3×3×3×power(3,0)=3×3×3×1=27。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '27', NULL, true),
  (currval('questions_id_seq'), '9',  NULL, false),
  (currval('questions_id_seq'), '6',  NULL, false),
  (currval('questions_id_seq'), '81', NULL, false);

-- ----------------------------------------
-- 科目B：セキュリティ（B-89〜B-104）
-- ----------------------------------------

-- B-89: パスワードの強度要件
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 89, 'choice', 1, 1,
   'パスワードの強度を高める方法として最も適切なものはどれか。',
   '長くて複雑なパスワードは総当たり攻撃（ブルートフォース）や辞書攻撃への耐性が高くなる。大文字・小文字・数字・記号を混在させることで文字空間が広がり，解読に要する時間が指数的に増加する。生年月日や名前など推測しやすい情報は避けるべき。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '大文字・小文字・数字・記号を混在させた12文字以上にする', NULL, true),
  (currval('questions_id_seq'), '全サービスで同一パスワードを使い管理を簡単にする',         NULL, false),
  (currval('questions_id_seq'), '自分の誕生日に4桁の数字を加えて覚えやすくする',           NULL, false),
  (currval('questions_id_seq'), '定期的に変更せず長く使い続けることでリセット漏洩を防ぐ', NULL, false);

-- B-90: フィッシング攻撃の見分け方
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 90, 'choice', 1, 1,
   'フィッシング（phishing）攻撃メールの特徴として最も適切なものはどれか。',
   'フィッシング攻撃は，銀行・ECサイト・行政機関などを装ったメールでユーザーを偽サイトに誘導し，ID・パスワード・クレジットカード情報を詐取する攻撃。「緊急！今すぐ手続きを」「アカウントが停止されます」などの緊急性を煽る文言や，正規URLに似た偽URLが特徴。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '公式に似た偽URLと緊急性を煽る文言でID・パスワードを詐取しようとする', NULL, true),
  (currval('questions_id_seq'), 'システムのバグを利用してサーバーを過負荷にする攻撃', NULL, false),
  (currval('questions_id_seq'), 'ネットワークパケットを盗聴して通信内容を取得する攻撃', NULL, false),
  (currval('questions_id_seq'), 'パスワードの全組み合わせを試す総当たり攻撃', NULL, false);

-- B-91: マルウェアの種類（ワーム）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 91, 'choice', 1, 1,
   '「ほかのプログラムに寄生せず単独で動作し、ネットワークを通じて自律的に自己複製・拡散する」マルウェアの種類として最も適切なものはどれか。',
   'ワーム（Worm）は宿主プログラムを必要とせず，単独で動作・複製・拡散するマルウェア。ウイルスは他のプログラムに寄生して感染拡大する。トロイの木馬は有用なプログラムを装い悪意ある処理を行う。スパイウェアは情報を密かに収集・送信する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ワーム（Worm）', NULL, true),
  (currval('questions_id_seq'), 'ウイルス（Virus）', NULL, false),
  (currval('questions_id_seq'), 'トロイの木馬（Trojan horse）', NULL, false),
  (currval('questions_id_seq'), 'スパイウェア（Spyware）', NULL, false);

-- B-92: ファイアウォールのパケットフィルタリング
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 92, 'choice', 1, 1,
   'ファイアウォールのパケットフィルタリングにおいて「宛先 TCP ポート番号 23 の通信を拒否する」ルールを設定した場合、遮断される通信として最も適切なものはどれか。',
   'TCP ポート 23 は Telnet のウェルノウンポート番号。Telnet は平文で通信するため，セキュリティ上リスクが高く，ファイアウォールで遮断するのが一般的。代わりに暗号化された SSH（ポート22）を使用することが推奨される。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'Telnet による遠隔ログイン通信', NULL, true),
  (currval('questions_id_seq'), 'SSHによる暗号化遠隔ログイン通信', NULL, false),
  (currval('questions_id_seq'), 'HTTPによるWebページ閲覧通信', NULL, false),
  (currval('questions_id_seq'), 'FTPによるファイル転送通信', NULL, false);

-- B-93: 認証の3要素（所持認証）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 93, 'choice', 1, 1,
   '認証の3要素のうち「所持認証（Something you have）」に分類されるものとして最も適切なものはどれか。',
   '認証の3要素: ①知識認証（Something you know）＝パスワード・暗証番号・秘密の質問，②所持認証（Something you have）＝ICカード・OTPトークン・スマートフォン，③生体認証（Something you are）＝指紋・虹彩・顔。ICカードは「持っているもの」による認証。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ICカードや OTP トークン', NULL, true),
  (currval('questions_id_seq'), 'パスワードや暗証番号', NULL, false),
  (currval('questions_id_seq'), '指紋や虹彩などの生体情報', NULL, false),
  (currval('questions_id_seq'), '秘密の質問への回答', NULL, false);

-- B-94: ソーシャルエンジニアリング（なりすまし電話）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 94, 'choice', 1, 1,
   'ソーシャルエンジニアリング攻撃の手口として最も適切なものはどれか。',
   'ソーシャルエンジニアリングは，技術的な脆弱性ではなく人間の心理的隙を突いて情報を詐取する手法。代表的な手口：プリテキスティング（IT担当者などを装い電話でパスワードを聞き出す），ショルダーハック（背後から画面・キーボードを覗き見る），ごみ箱漁り（廃棄書類から情報収集）など。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '情報システム担当者を装って電話し，パスワードを聞き出す', NULL, true),
  (currval('questions_id_seq'), 'Webサーバーの既知の脆弱性を悪用してデータを盗む', NULL, false),
  (currval('questions_id_seq'), 'ネットワーク上のパケットを盗聴して認証情報を取得する', NULL, false),
  (currval('questions_id_seq'), 'パスワードを総当たりで試して正しいパスワードを見つける', NULL, false);

-- B-95: 暗号化のモード（ストリーム暗号化）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 95, 'choice', 1, 1,
   'ブロック暗号をストリーム暗号として動作させることができるモードとして最も適切なものはどれか。',
   'CTR（Counter）モードはブロック暗号とカウンター値を組み合わせたキーストリームを生成し，平文と XOR することでストリーム暗号として機能させる。CFB（Cipher Feedback）モードも同様の特性を持つ。ECB は同じ平文が同じ暗号文になる安全でないモード。CBC は IV を使うブロックモード。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'CTR（Counter）モード', NULL, true),
  (currval('questions_id_seq'), 'ECB（Electronic Codebook）モード', NULL, false),
  (currval('questions_id_seq'), 'CBC（Cipher Block Chaining）モード（IVなし）', NULL, false),
  (currval('questions_id_seq'), '平文を単純にビット反転するモード', NULL, false);

-- B-96: DoS 攻撃への対策
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 96, 'choice', 1, 1,
   'DDoS（分散型サービス妨害）攻撃への対策として最も適切なものはどれか。',
   'DDoS攻撃は大量のトラフィックをサーバーに集中させてサービスを停止させる。最も効果的な対策はアップストリーム（ISPや専門サービス）でのトラフィック洗浄（スクラビング）やレート制限。CDN・WAF・Anycast ルーティングの組み合わせも有効。単純なファイアウォールルールだけでは大規模 DDoS に対応できない。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ISPや専門サービスによるアップストリームでのトラフィック洗浄を導入する', NULL, true),
  (currval('questions_id_seq'), 'サーバーのOSにパッチを適用して既知の脆弱性を修正する', NULL, false),
  (currval('questions_id_seq'), 'すべての外部通信を暗号化してデータの盗聴を防ぐ', NULL, false),
  (currval('questions_id_seq'), 'ユーザーのパスワードを複雑にして不正ログインを防ぐ', NULL, false);

-- B-97: インシデント対応の最初のステップ
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 97, 'choice', 1, 1,
   'セキュリティインシデントが発生したことを確認した直後に行うべき対応として最も適切なものはどれか。',
   'インシデント対応の第一ステップは「封じ込め（Containment）」。感染・被害の拡大を防ぐため，影響を受けたシステムをネットワークから切り離す。その後，根本原因の分析（Eradication）→復旧（Recovery）→事後分析（Lessons Learned）の順に進める。証拠保全も封じ込めと並行して行う。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '影響を受けたシステムをネットワークから切り離して被害拡大を封じ込める', NULL, true),
  (currval('questions_id_seq'), 'すぐにシステムを完全に初期化して復旧作業を開始する', NULL, false),
  (currval('questions_id_seq'), 'インシデントの詳細を公式プレスリリースとして外部に公表する', NULL, false),
  (currval('questions_id_seq'), '被害の全容が判明するまで通常業務を継続してデータを収集する', NULL, false);

-- B-98: アクセス制御（RBAC）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 98, 'choice', 1, 1,
   'ロールベースアクセス制御（RBAC: Role-Based Access Control）の説明として最も適切なものはどれか。',
   'RBACはユーザーに直接権限を付与するのではなく，ロール（役割：管理者・一般ユーザー・閲覧者など）に権限を割り当て，ユーザーをロールに所属させる方式。組織の職務定義に合わせた権限管理が容易で，人事異動時の権限変更がロール変更だけで済む。最小権限の原則の実装に適している。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ロール（役割）に権限を割り当て，ユーザーをロールに所属させる方式', NULL, true),
  (currval('questions_id_seq'), 'リソースの所有者がアクセス権を任意に設定できる方式', NULL, false),
  (currval('questions_id_seq'), 'セキュリティラベルに基づいて強制的にアクセスを制御する方式', NULL, false),
  (currval('questions_id_seq'), 'ユーザーのIPアドレスに基づいてアクセスを許可・拒否する方式', NULL, false);

-- B-99: セキュアコーディング（XSS 対策）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 99, 'choice', 1, 1,
   'Webアプリケーションにおけるクロスサイトスクリプティング（XSS）攻撃への対策として最も適切なものはどれか。',
   'XSS は攻撃者が悪意あるスクリプトをWebページに埋め込む攻撃。対策はユーザー入力をHTMLに出力する際に特殊文字（<>&"''）をエスケープ処理すること。Content Security Policy（CSP）ヘッダの設定も有効。入力検証だけでは不十分であり，出力時のエスケープが根本的な対策。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'HTMLに出力する際に特殊文字をエスケープ処理する', NULL, true),
  (currval('questions_id_seq'), 'プレースホルダを使ったパラメータ化クエリを利用する', NULL, false),
  (currval('questions_id_seq'), 'HTTPSに切り替えて通信を暗号化する', NULL, false),
  (currval('questions_id_seq'), 'CSRFトークンをフォームに埋め込んで検証する', NULL, false);

-- B-100: PKI（デジタル証明書の検証）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 100, 'choice', 1, 1,
   'ブラウザがHTTPS通信でサーバーの正当性を確認するためにデジタル証明書を検証する際に行う確認として最も適切なものはどれか。',
   'ブラウザはサーバー証明書について①信頼できる認証局（CA）による署名か，②有効期限内か，③接続先のドメイン名と一致するかを確認する。これら3点が確認されて初めて「錠前マーク（安全な接続）」が表示される。証明書が失効していないかOCSP/CRLで確認する場合もある。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'CAの署名の正当性・有効期限・ドメイン名の一致を確認する', NULL, true),
  (currval('questions_id_seq'), 'サーバーの物理的な場所とIPアドレスの対応を確認する', NULL, false),
  (currval('questions_id_seq'), 'サーバー管理者の身元と運営組織の信用スコアを確認する', NULL, false),
  (currval('questions_id_seq'), 'サーバーのOSとミドルウェアのバージョンを確認する', NULL, false);

-- B-101: 最小権限の原則
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 101, 'choice', 1, 1,
   'セキュリティの「最小権限の原則（Principle of Least Privilege）」の説明として最も適切なものはどれか。',
   '最小権限の原則とは，ユーザーやプロセスに対して，業務や目的を達成するために必要最低限の権限のみを付与するという原則。不要な権限を持っていると，アカウントが侵害された場合やプログラムのバグにより，想定以上の被害が生じる。管理者権限での日常操作は特に避けるべき。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ユーザーやプロセスに業務遂行に必要な最低限の権限のみを付与する', NULL, true),
  (currval('questions_id_seq'), '全ユーザーが同じ権限を持ち管理を簡素化する', NULL, false),
  (currval('questions_id_seq'), '管理者がすべての権限を一括管理して委任しない', NULL, false),
  (currval('questions_id_seq'), '一度付与した権限は定期的に全削除して再申請させる', NULL, false);

-- B-102: バックアップの種類（増分バックアップ）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 102, 'choice', 1, 1,
   '増分バックアップ（Incremental Backup）の説明として最も適切なものはどれか。',
   '増分バックアップは前回の「バックアップ（フルまたは増分）以降に変更されたデータのみ」をバックアップする方式。フルバックアップよりバックアップ時間・容量が少ない反面，復元時はフル＋すべての増分を順に適用する必要があり時間がかかる。差分バックアップはフル以降の変更を全て対象にする点で異なる。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '前回のバックアップ以降に変更されたデータのみをバックアップする', NULL, true),
  (currval('questions_id_seq'), '全データを毎回完全にバックアップする', NULL, false),
  (currval('questions_id_seq'), '最新のフルバックアップ以降の変更データをすべてバックアップする', NULL, false),
  (currval('questions_id_seq'), '削除されたファイルのみをバックアップする', NULL, false);

-- B-103: セキュリティログの重要性
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 103, 'choice', 1, 1,
   'セキュリティ監査ログを取得・保管する主な目的として最も適切なものはどれか。',
   'セキュリティ監査ログは，アクセス履歴・操作記録・イベントを記録し，不審な活動の早期検知・インシデント発生後のフォレンジック調査（原因究明・被害範囲特定）・コンプライアンス証明（監査対応）に活用される。ログを改ざんから守るため，別サーバーへの転送や署名付きログが推奨される。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '不審活動の検知とインシデント後のフォレンジック調査に活用するため', NULL, true),
  (currval('questions_id_seq'), 'システムのCPU・メモリ使用率を最適化するため', NULL, false),
  (currval('questions_id_seq'), 'ユーザーの業務生産性を評価して人事考課に活用するため', NULL, false),
  (currval('questions_id_seq'), 'バックアップの代替として直近のデータを保存するため', NULL, false);

-- B-104: 情報セキュリティポリシーの構成
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 104, 'choice', 1, 1,
   '組織の情報セキュリティポリシーに含まれるべき内容として最も適切なものはどれか。',
   '情報セキュリティポリシーは，組織が情報資産を保護するための方針・規則・責任を文書化したもの。含まれるべき内容：①適用範囲と目的，②守るべき情報資産の分類，③役割と責任（誰が何をすべきか），④違反時の対応・罰則，⑤定期的な見直し手順。技術的な実装詳細は別の手順書（標準・ガイドライン）に記載する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '情報資産の保護方針・役割と責任・違反時の対応を文書化したもの', NULL, true),
  (currval('questions_id_seq'), 'ネットワーク機器の設定コマンドと詳細なIPアドレス割り当て表', NULL, false),
  (currval('questions_id_seq'), '社員の個人的なSNS利用を完全に禁止する規則のみ', NULL, false),
  (currval('questions_id_seq'), '暗号アルゴリズムの数学的な実装仕様と鍵長の規定のみ', NULL, false);
-- ----------------------------------------
-- 科目B（section_id=2）Q105〜Q154
-- ----------------------------------------

-- B-105: 変数スワップ後の和
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 105, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 total の値はいくつになるか。

整数型: a ← 3, b ← 5, tmp ← 0
tmp ← a
a ← b
b ← tmp
整数型: total ← a + b',
   'a=3,b=5をスワップするとa=5,b=3。a+b=5+3=8。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '8',  NULL, true),
  (currval('questions_id_seq'), '15', NULL, false),
  (currval('questions_id_seq'), '2',  NULL, false),
  (currval('questions_id_seq'), '6',  NULL, false);

-- B-106: 配列の最大値
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 106, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 maxVal の値はいくつになるか。
配列 arr の要素は arr[1]=3, arr[2]=7, arr[3]=2, arr[4]=9, arr[5]=4 とする。

整数型: maxVal ← arr[1]
for (i を 2 から 5 まで 1 ずつ増やす)
    if (arr[i] > maxVal)
        maxVal ← arr[i]
    endif
endfor',
   'i=2: 7>3→maxVal=7, i=4: 9>7→maxVal=9。最終maxVal=9。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '9', NULL, true),
  (currval('questions_id_seq'), '7', NULL, false),
  (currval('questions_id_seq'), '4', NULL, false),
  (currval('questions_id_seq'), '3', NULL, false);

-- B-107: 3の倍数または5の倍数カウント（1-20）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 107, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

整数型: n ← 1, count ← 0
while (n ≤ 20)
    if (n mod 3 = 0 または n mod 5 = 0)
        count ← count + 1
    endif
    n ← n + 1
endwhile',
   '3,5,6,9,10,12,15,18,20の9個が該当する。count=9。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '9', NULL, true),
  (currval('questions_id_seq'), '8', NULL, false),
  (currval('questions_id_seq'), '7', NULL, false),
  (currval('questions_id_seq'), '10', NULL, false);

-- B-108: 桁の和（再帰）digitSum(123)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 108, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: digitSum(整数型: n)
    if (n < 10)
        return n
    endif
    return (n mod 10) + digitSum(n ÷ 10)
整数型: result ← digitSum(123)',
   'digitSum(123)=3+digitSum(12)=3+2+digitSum(1)=3+2+1=6。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '6',   NULL, true),
  (currval('questions_id_seq'), '9',   NULL, false),
  (currval('questions_id_seq'), '3',   NULL, false),
  (currval('questions_id_seq'), '123', NULL, false);

-- B-109: 三角形ネストループのカウント
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 109, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

整数型: count ← 0
for (i を 1 から 4 まで 1 ずつ増やす)
    for (j を i から 4 まで 1 ずつ増やす)
        count ← count + 1
    endfor
endfor',
   'i=1→4回, i=2→3回, i=3→2回, i=4→1回。合計4+3+2+1=10。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '10', NULL, true),
  (currval('questions_id_seq'), '16', NULL, false),
  (currval('questions_id_seq'), '12', NULL, false),
  (currval('questions_id_seq'), '6',  NULL, false);

-- B-110: 等差数列のwhile後の値
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 110, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 a の値はいくつになるか。

整数型: a ← 2, n ← 1
while (n < 5)
    a ← a + 3
    n ← n + 1
endwhile',
   'n=1→a=5, n=2→a=8, n=3→a=11, n=4→a=14。n=5で終了。a=14。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '14', NULL, true),
  (currval('questions_id_seq'), '11', NULL, false),
  (currval('questions_id_seq'), '17', NULL, false),
  (currval('questions_id_seq'), '2',  NULL, false);

-- B-111: 素数カウント（2-10）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 111, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

整数型: count ← 0
for (n を 2 から 10 まで 1 ずつ増やす)
    整数型: isPrime ← 1
    for (i を 2 から n-1 まで 1 ずつ増やす)
        if (n mod i = 0)
            isPrime ← 0
        endif
    endfor
    if (isPrime = 1)
        count ← count + 1
    endif
endfor',
   '2〜10の素数は2,3,5,7の4個。count=4。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '4', NULL, true),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '6', NULL, false);

-- B-112: 配列逆順コピー後のarr2[2]
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 112, 'choice', 1, 1,
   '次の擬似コードを実行したとき、配列 arr2[2] の値はいくつになるか。
配列 arr の要素は arr[1]=10, arr[2]=20, arr[3]=30, arr[4]=40, arr[5]=50 とする。
配列 arr2 の要素は arr2[1]=0, arr2[2]=0, arr2[3]=0, arr2[4]=0, arr2[5]=0 とする。

for (i を 1 から 5 まで 1 ずつ増やす)
    arr2[6-i] ← arr[i]
endfor',
   'i=1→arr2[5]=10, i=2→arr2[4]=20, i=3→arr2[3]=30, i=4→arr2[2]=40, i=5→arr2[1]=50。arr2[2]=40。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '40', NULL, true),
  (currval('questions_id_seq'), '20', NULL, false),
  (currval('questions_id_seq'), '30', NULL, false),
  (currval('questions_id_seq'), '50', NULL, false);

-- B-113: 2から5の積
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 113, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: result ← 1
for (i を 2 から 5 まで 1 ずつ増やす)
    result ← result × i
endfor',
   '1×2×3×4×5=120。result=120。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '120', NULL, true),
  (currval('questions_id_seq'), '60',  NULL, false),
  (currval('questions_id_seq'), '24',  NULL, false),
  (currval('questions_id_seq'), '720', NULL, false);

-- B-114: 3かつ5の倍数カウント（1-30）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 114, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

整数型: count ← 0
for (n を 1 から 30 まで 1 ずつ増やす)
    if (n mod 3 = 0 かつ n mod 5 = 0)
        count ← count + 1
    endif
endfor',
   '1〜30で3かつ5の倍数（15の倍数）は15と30の2個。count=2。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '2', NULL, true),
  (currval('questions_id_seq'), '1', NULL, false),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '6', NULL, false);

-- B-115: 二次元配列の第2列の和
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 115, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 sum の値はいくつになるか。

整数型の配列: m ← {{1,2,3},{4,5,6},{7,8,9}}
整数型: sum ← 0
for (j を 1 から 3 まで 1 ずつ増やす)
    sum ← sum + m[j][2]
endfor',
   'm[1][2]=2, m[2][2]=5, m[3][2]=8。sum=2+5+8=15。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '15', NULL, true),
  (currval('questions_id_seq'), '12', NULL, false),
  (currval('questions_id_seq'), '18', NULL, false),
  (currval('questions_id_seq'), '9',  NULL, false);

-- B-116: 関数合成 g(f(3))
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 116, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: f(整数型: x)
    return 2 × x + 1
整数型: g(整数型: x)
    return x × x
整数型: result ← g(f(3))',
   'f(3)=2×3+1=7。g(7)=7×7=49。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '49', NULL, true),
  (currval('questions_id_seq'), '7',  NULL, false),
  (currval('questions_id_seq'), '13', NULL, false),
  (currval('questions_id_seq'), '25', NULL, false);

-- B-117: スタック操作後のpeek
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 117, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 top の値はいくつになるか。

push(5)
push(3)
push(8)
pop()
push(6)
整数型: top ← peek()',
   'push(5)→[5], push(3)→[5,3], push(8)→[5,3,8], pop()→[5,3], push(6)→[5,3,6]。peek()=6。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '6', NULL, true),
  (currval('questions_id_seq'), '8', NULL, false),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false);

-- B-118: 線形探索のインデックス
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 118, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 idx の値はいくつになるか。
配列 arr の要素は arr[1]=4, arr[2]=7, arr[3]=2, arr[4]=9, arr[5]=1, arr[6]=6 とする。

整数型: target ← 9, idx ← -1
for (i を 1 から 6 まで 1 ずつ増やす)
    if (arr[i] = target)
        idx ← i
    endif
endfor',
   'arr[4]=9=target。idx=4。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '4',  NULL, true),
  (currval('questions_id_seq'), '3',  NULL, false),
  (currval('questions_id_seq'), '5',  NULL, false),
  (currval('questions_id_seq'), '-1', NULL, false);

-- B-119: 挿入ソート1ステップ後のarr[1]
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 119, 'choice', 1, 1,
   '次の擬似コードを実行したとき、配列 arr[1] の値はいくつになるか。
配列 arr の要素は arr[1]=5, arr[2]=2, arr[3]=8, arr[4]=1, arr[5]=4 とする。

整数型: key ← arr[2], j ← 1
while (j ≥ 1 かつ arr[j] > key)
    arr[j+1] ← arr[j]
    j ← j - 1
endwhile
arr[j+1] ← key',
   'key=2。j=1: arr[1]=5>2→arr[2]=5,j=0。j=0で終了。arr[1]←key=2。arr[1]=2。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '2', NULL, true),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '1', NULL, false),
  (currval('questions_id_seq'), '8', NULL, false);

-- B-120: LCM(6,9)をGCDで求める
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 120, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 avg の値はいくつになるか。

整数型: gcd(整数型: a, 整数型: b)
    while (b ≠ 0)
        整数型: tmp ← b
        b ← a mod b
        a ← tmp
    endwhile
    return a
整数型: avg ← 6 × 9 ÷ gcd(6, 9)',
   'gcd(6,9): a=6,b=9→b=6,a=9→b=3,a=6→b=0,a=3。gcd=3。LCM=6×9÷3=18。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '18', NULL, true),
  (currval('questions_id_seq'), '3',  NULL, false),
  (currval('questions_id_seq'), '54', NULL, false),
  (currval('questions_id_seq'), '9',  NULL, false);

-- B-121: フィボナッチ fib(7)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 121, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: fib(整数型: n)
    if (n ≤ 1)
        return n
    endif
    return fib(n-1) + fib(n-2)
整数型: result ← fib(7)',
   'fib(0)=0,fib(1)=1,fib(2)=1,fib(3)=2,fib(4)=3,fib(5)=5,fib(6)=8,fib(7)=13。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '13', NULL, true),
  (currval('questions_id_seq'), '8',  NULL, false),
  (currval('questions_id_seq'), '21', NULL, false),
  (currval('questions_id_seq'), '12', NULL, false);

-- B-122: 配列の最小値
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 122, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 minVal の値はいくつになるか。
配列 arr の要素は arr[1]=5, arr[2]=2, arr[3]=8, arr[4]=1, arr[5]=4 とする。

整数型: minVal ← arr[1]
for (i を 2 から 5 まで 1 ずつ増やす)
    if (arr[i] < minVal)
        minVal ← arr[i]
    endif
endfor',
   'i=2: 2<5→minVal=2。i=4: 1<2→minVal=1。最終minVal=1。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '1', NULL, true),
  (currval('questions_id_seq'), '2', NULL, false),
  (currval('questions_id_seq'), '4', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false);

-- B-123: 平方数の和（1^2+2^2+3^2+4^2）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 123, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 sum の値はいくつになるか。

整数型: sum ← 0
for (i を 1 から 4 まで 1 ずつ増やす)
    sum ← sum + i × i
endfor',
   '1+4+9+16=30。sum=30。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '30',  NULL, true),
  (currval('questions_id_seq'), '20',  NULL, false),
  (currval('questions_id_seq'), '14',  NULL, false),
  (currval('questions_id_seq'), '100', NULL, false);

-- B-124: 二分探索の終了時のmid
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 124, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 mid の値はいくつになるか。
配列 arr の要素は arr[1]=1, arr[2]=3, arr[3]=5, arr[4]=7, arr[5]=9, arr[6]=11, arr[7]=13 とする。

整数型: target ← 7, left ← 1, right ← 7, mid ← 0
while (left ≤ right)
    mid ← (left + right) ÷ 2
    if (arr[mid] = target)
        break
    elseif (arr[mid] < target)
        left ← mid + 1
    else
        right ← mid - 1
    endif
endwhile',
   'left=1,right=7: mid=4, arr[4]=7=target→break。mid=4。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '4', NULL, true),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '7', NULL, false);

-- B-125: 桁数カウント（12345）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 125, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

整数型: n ← 12345, count ← 0
while (n > 0)
    n ← n ÷ 10
    count ← count + 1
endwhile',
   '12345→1234→123→12→1→0と5回割る。count=5。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '5', NULL, true),
  (currval('questions_id_seq'), '4', NULL, false),
  (currval('questions_id_seq'), '6', NULL, false),
  (currval('questions_id_seq'), '1', NULL, false);

-- B-126: 4の倍数だが8の倍数でない数（1-40）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 126, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

整数型: count ← 0
for (n を 1 から 40 まで 1 ずつ増やす)
    if (n mod 4 = 0 かつ n mod 8 ≠ 0)
        count ← count + 1
    endif
endfor',
   '4の倍数で8の倍数でない数: 4,12,20,28,36の5個。count=5。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '5',  NULL, true),
  (currval('questions_id_seq'), '10', NULL, false),
  (currval('questions_id_seq'), '4',  NULL, false),
  (currval('questions_id_seq'), '6',  NULL, false);

-- B-127: バブルソート完了後のarr[3]
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 127, 'choice', 1, 1,
   '次の擬似コードを実行したとき、配列 arr[3] の値はいくつになるか。
配列 arr の要素は arr[1]=4, arr[2]=2, arr[3]=7, arr[4]=1, arr[5]=5 とする。

for (i を 1 から 4 まで 1 ずつ増やす)
    for (j を 1 から 5-i まで 1 ずつ増やす)
        if (arr[j] > arr[j+1])
            整数型: tmp ← arr[j]
            arr[j] ← arr[j+1]
            arr[j+1] ← tmp
        endif
    endfor
endfor',
   '{4,2,7,1,5}をバブルソートすると{1,2,4,5,7}。arr[3]=4。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '4', NULL, true),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '2', NULL, false),
  (currval('questions_id_seq'), '7', NULL, false);

-- B-128: キュー操作後のfront
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 128, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 frontVal の値はいくつになるか。

enqueue(3)
enqueue(7)
enqueue(5)
dequeue()
enqueue(9)
整数型: frontVal ← front()',
   'enqueue(3,7,5)→[3,7,5], dequeue()→[7,5], enqueue(9)→[7,5,9]。front()=7。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '7', NULL, true),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '9', NULL, false);

-- B-129: 偶数ステップ再帰 sumDown(6)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 129, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: sumDown(整数型: n)
    if (n = 0)
        return 0
    endif
    return n + sumDown(n - 2)
整数型: result ← sumDown(6)',
   'sumDown(6)=6+sumDown(4)=6+4+sumDown(2)=6+4+2+sumDown(0)=12。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '12', NULL, true),
  (currval('questions_id_seq'), '6',  NULL, false),
  (currval('questions_id_seq'), '9',  NULL, false),
  (currval('questions_id_seq'), '21', NULL, false);

-- B-130: 行列のトレース（対角和）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 130, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 trace の値はいくつになるか。

整数型の配列: m ← {{1,2,3},{4,5,6},{7,8,9}}
整数型: trace ← 0
for (i を 1 から 3 まで 1 ずつ増やす)
    trace ← trace + m[i][i]
endfor',
   'm[1][1]=1, m[2][2]=5, m[3][3]=9。trace=1+5+9=15。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '15', NULL, true),
  (currval('questions_id_seq'), '12', NULL, false),
  (currval('questions_id_seq'), '18', NULL, false),
  (currval('questions_id_seq'), '45', NULL, false);

-- B-131: 数値の桁の反転（1234→4321）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 131, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 rev の値はいくつになるか。

整数型: n ← 1234, rev ← 0
while (n > 0)
    rev ← rev × 10 + (n mod 10)
    n ← n ÷ 10
endwhile',
   'rev=0→4→43→432→4321。n=0で終了。rev=4321。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '4321', NULL, true),
  (currval('questions_id_seq'), '1234', NULL, false),
  (currval('questions_id_seq'), '1111', NULL, false),
  (currval('questions_id_seq'), '9',    NULL, false);

-- B-132: 12の約数の個数
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 132, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

整数型: n ← 12, count ← 0
for (i を 1 から n まで 1 ずつ増やす)
    if (n mod i = 0)
        count ← count + 1
    endif
endfor',
   '12の約数: 1,2,3,4,6,12の6個。count=6。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '6',  NULL, true),
  (currval('questions_id_seq'), '4',  NULL, false),
  (currval('questions_id_seq'), '5',  NULL, false),
  (currval('questions_id_seq'), '12', NULL, false);

-- B-133: 奇数かつ3より大きい数の和（1-10）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 133, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 sum の値はいくつになるか。

整数型: sum ← 0
for (i を 1 から 10 まで 1 ずつ増やす)
    if (i mod 2 = 1 かつ i > 3)
        sum ← sum + i
    endif
endfor',
   '奇数かつ>3: 5,7,9。sum=5+7+9=21。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '21', NULL, true),
  (currval('questions_id_seq'), '25', NULL, false),
  (currval('questions_id_seq'), '15', NULL, false),
  (currval('questions_id_seq'), '30', NULL, false);

-- B-134: ステップ2のfor（奇数の和）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 134, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 sum の値はいくつになるか。

整数型: sum ← 0
for (i を 1 から 10 まで 2 ずつ増やす)
    sum ← sum + i
endfor',
   'i=1,3,5,7,9。sum=1+3+5+7+9=25。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '25', NULL, true),
  (currval('questions_id_seq'), '30', NULL, false),
  (currval('questions_id_seq'), '20', NULL, false),
  (currval('questions_id_seq'), '55', NULL, false);

-- B-135: 累乗 power(2,6)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 135, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: power(整数型: base, 整数型: exp)
    整数型: result ← 1
    for (i を 1 から exp まで 1 ずつ増やす)
        result ← result × base
    endfor
    return result
整数型: result ← power(2, 6)',
   '2を6回掛ける: 2^6=64。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '64',  NULL, true),
  (currval('questions_id_seq'), '32',  NULL, false),
  (currval('questions_id_seq'), '12',  NULL, false),
  (currval('questions_id_seq'), '128', NULL, false);

-- B-136: 配列左ローテーション後のarr[1]
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 136, 'choice', 1, 1,
   '次の擬似コードを実行したとき、配列 arr[1] の値はいくつになるか。
配列 arr の要素は arr[1]=10, arr[2]=20, arr[3]=30, arr[4]=40, arr[5]=50 とする。

整数型: tmp ← arr[1]
for (i を 1 から 4 まで 1 ずつ増やす)
    arr[i] ← arr[i+1]
endfor
arr[5] ← tmp',
   'arr[1]=arr[2]=20, arr[2]=arr[3]=30, ..., arr[5]=tmp=10。arr={20,30,40,50,10}。arr[1]=20。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '20', NULL, true),
  (currval('questions_id_seq'), '10', NULL, false),
  (currval('questions_id_seq'), '30', NULL, false),
  (currval('questions_id_seq'), '50', NULL, false);

-- B-137: 奇数の積（1-7）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 137, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: result ← 1
for (i を 1 から 7 まで 2 ずつ増やす)
    result ← result × i
endfor',
   'i=1,3,5,7。result=1×3×5×7=105。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '105', NULL, true),
  (currval('questions_id_seq'), '35',  NULL, false),
  (currval('questions_id_seq'), '15',  NULL, false),
  (currval('questions_id_seq'), '210', NULL, false);

-- B-138: 三角数 tri(6)（再帰）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 138, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: tri(整数型: n)
    if (n = 0)
        return 0
    endif
    return n + tri(n - 1)
整数型: result ← tri(6)',
   'tri(6)=6+5+4+3+2+1+0=21。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '21', NULL, true),
  (currval('questions_id_seq'), '15', NULL, false),
  (currval('questions_id_seq'), '28', NULL, false),
  (currval('questions_id_seq'), '6',  NULL, false);

-- B-139: ユークリッドGCD(24,16)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 139, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 a の値はいくつになるか。

整数型: a ← 24, b ← 16
while (b ≠ 0)
    整数型: tmp ← b
    b ← a mod b
    a ← tmp
endwhile',
   'a=24,b=16→b=8,a=16→b=0,a=8。GCD(24,16)=8。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '8',  NULL, true),
  (currval('questions_id_seq'), '4',  NULL, false),
  (currval('questions_id_seq'), '12', NULL, false),
  (currval('questions_id_seq'), '16', NULL, false);

-- B-140: 配列の平均
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 140, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 avg の値はいくつになるか。
配列 arr の要素は arr[1]=10, arr[2]=20, arr[3]=30, arr[4]=40, arr[5]=50 とする。

整数型: sum ← 0
for (i を 1 から 5 まで 1 ずつ増やす)
    sum ← sum + arr[i]
endfor
整数型: avg ← sum ÷ 5',
   'sum=10+20+30+40+50=150。150÷5=30。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '30',  NULL, true),
  (currval('questions_id_seq'), '25',  NULL, false),
  (currval('questions_id_seq'), '35',  NULL, false),
  (currval('questions_id_seq'), '150', NULL, false);

-- B-141: 偶数インデックスの要素の和
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 141, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 sum の値はいくつになるか。
配列 arr の要素は arr[1]=1, arr[2]=3, arr[3]=5, arr[4]=7, arr[5]=9, arr[6]=11 とする。

整数型: sum ← 0
for (i を 1 から 6 まで 1 ずつ増やす)
    if (i mod 2 = 0)
        sum ← sum + arr[i]
    endif
endfor',
   'i=2: arr[2]=3, i=4: arr[4]=7, i=6: arr[6]=11。sum=3+7+11=21。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '21', NULL, true),
  (currval('questions_id_seq'), '25', NULL, false),
  (currval('questions_id_seq'), '15', NULL, false),
  (currval('questions_id_seq'), '36', NULL, false);

-- B-142: 関数の二重適用 f(f(3))
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 142, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: f(整数型: x)
    return x × 2 + 1
整数型: result ← f(f(3))',
   'f(3)=3×2+1=7。f(7)=7×2+1=15。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '15', NULL, true),
  (currval('questions_id_seq'), '7',  NULL, false),
  (currval('questions_id_seq'), '13', NULL, false),
  (currval('questions_id_seq'), '25', NULL, false);

-- B-143: 繰り返し引き算のカウント
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 143, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

整数型: a ← 10, b ← 3, count ← 0
while (a ≥ b)
    a ← a - b
    count ← count + 1
endwhile',
   '10-3=7(1), 7-3=4(2), 4-3=1(3), 1<3で終了。count=3。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '3',  NULL, true),
  (currval('questions_id_seq'), '4',  NULL, false),
  (currval('questions_id_seq'), '2',  NULL, false),
  (currval('questions_id_seq'), '10', NULL, false);

-- B-144: 最大連続同値の長さ
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 144, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 maxLen の値はいくつになるか。
配列 arr の要素は arr[1]=2, arr[2]=2, arr[3]=3, arr[4]=3, arr[5]=3, arr[6]=2, arr[7]=2 とする。

整数型: maxLen ← 1, curLen ← 1
for (i を 2 から 7 まで 1 ずつ増やす)
    if (arr[i] = arr[i-1])
        curLen ← curLen + 1
        if (curLen > maxLen)
            maxLen ← curLen
        endif
    else
        curLen ← 1
    endif
endfor',
   '2,2が2連続, 3,3,3が3連続。maxLen=3。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '3', NULL, true),
  (currval('questions_id_seq'), '2', NULL, false),
  (currval('questions_id_seq'), '4', NULL, false),
  (currval('questions_id_seq'), '7', NULL, false);

-- B-145: 絶対値の和
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 145, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 sum の値はいくつになるか。
配列 arr の要素は arr[1]=-3, arr[2]=5, arr[3]=-2, arr[4]=8, arr[5]=-1 とする。

整数型: sum ← 0
for (i を 1 から 5 まで 1 ずつ増やす)
    if (arr[i] < 0)
        sum ← sum + (-arr[i])
    else
        sum ← sum + arr[i]
    endif
endfor',
   '3+5+2+8+1=19。sum=19。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '19', NULL, true),
  (currval('questions_id_seq'), '7',  NULL, false),
  (currval('questions_id_seq'), '13', NULL, false),
  (currval('questions_id_seq'), '15', NULL, false);

-- B-146: 線形探索でfoundが更新されないケース
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 146, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 found の値はいくつになるか。
配列 arr の要素は arr[1]=3, arr[2]=7, arr[3]=2, arr[4]=9, arr[5]=5 とする。

整数型: target ← 6, found ← 0
for (i を 1 から 5 まで 1 ずつ増やす)
    if (arr[i] = target)
        found ← 1
    endif
endfor',
   '配列{3,7,2,9,5}に6は存在しない。found=0のまま。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '0',  NULL, true),
  (currval('questions_id_seq'), '1',  NULL, false),
  (currval('questions_id_seq'), '-1', NULL, false),
  (currval('questions_id_seq'), '6',  NULL, false);

-- B-147: 二重ループの i×j の総和
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 147, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: result ← 0
for (i を 1 から 3 まで 1 ずつ増やす)
    for (j を 1 から 3 まで 1 ずつ増やす)
        result ← result + i × j
    endfor
endfor',
   'i=1: 1+2+3=6, i=2: 2+4+6=12, i=3: 3+6+9=18。合計36。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '36', NULL, true),
  (currval('questions_id_seq'), '18', NULL, false),
  (currval('questions_id_seq'), '9',  NULL, false),
  (currval('questions_id_seq'), '72', NULL, false);

-- B-148: ビットカウント（10=1010₂）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 148, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

整数型: n ← 10, count ← 0
while (n > 0)
    count ← count + (n mod 2)
    n ← n ÷ 2
endwhile',
   '10=1010₂。1のビット数を数える: n=10→0, n=5→1, n=2→0, n=1→1。count=2。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '2', NULL, true),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '4', NULL, false),
  (currval('questions_id_seq'), '1', NULL, false);

-- B-149: 選択ソート1パス後のarr[1]
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 149, 'choice', 1, 1,
   '次の擬似コードを実行したとき、配列 arr[1] の値はいくつになるか。
配列 arr の要素は arr[1]=5, arr[2]=3, arr[3]=8, arr[4]=2, arr[5]=7 とする。

整数型: minIdx ← 1
for (j を 2 から 5 まで 1 ずつ増やす)
    if (arr[j] < arr[minIdx])
        minIdx ← j
    endif
endfor
整数型: tmp ← arr[1]
arr[1] ← arr[minIdx]
arr[minIdx] ← tmp',
   'j=2: 3<5→minIdx=2, j=4: 2<3→minIdx=4。arr[1]とarr[4]を交換。arr[1]=2。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '2', NULL, true),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '1', NULL, false);

-- B-150: i*i≦100 のwhileループ回数
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 150, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

整数型: i ← 1, count ← 0
while (i × i ≤ 100)
    count ← count + 1
    i ← i + 1
endwhile',
   'i=1〜10は i×i≤100を満たす（10×10=100）。i=11で121>100。count=10。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '10',  NULL, true),
  (currval('questions_id_seq'), '9',   NULL, false),
  (currval('questions_id_seq'), '11',  NULL, false),
  (currval('questions_id_seq'), '100', NULL, false);

-- B-151: 奇数のみ再帰加算 sumOdd(7)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 151, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: sumOdd(整数型: n)
    if (n ≤ 0)
        return 0
    endif
    if (n mod 2 = 1)
        return n + sumOdd(n - 1)
    else
        return sumOdd(n - 1)
    endif
整数型: result ← sumOdd(7)',
   'sumOdd(7)=7+sumOdd(6)=7+sumOdd(5)=7+5+sumOdd(4)=...=7+5+3+1=16。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '16', NULL, true),
  (currval('questions_id_seq'), '25', NULL, false),
  (currval('questions_id_seq'), '12', NULL, false),
  (currval('questions_id_seq'), '28', NULL, false);

-- B-152: 5より大きい要素のカウント
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 152, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。
配列 arr の要素は arr[1]=4, arr[2]=7, arr[3]=2, arr[4]=9, arr[5]=3, arr[6]=8, arr[7]=1, arr[8]=6 とする。

整数型: count ← 0
for (i を 1 から 8 まで 1 ずつ増やす)
    if (arr[i] > 5)
        count ← count + 1
    endif
endfor',
   '5より大きい数: 7,9,8,6の4個。count=4。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '4', NULL, true),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '8', NULL, false);

-- B-153: 配列の最大値（末尾確認）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 153, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 curMax の値はいくつになるか。
配列 arr の要素は arr[1]=3, arr[2]=1, arr[3]=4, arr[4]=1, arr[5]=5, arr[6]=9, arr[7]=2, arr[8]=6 とする。

整数型: curMax ← arr[1]
for (i を 2 から 8 まで 1 ずつ増やす)
    if (arr[i] > curMax)
        curMax ← arr[i]
    endif
endfor',
   '配列の最大値は9。curMax=9。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '9', NULL, true),
  (currval('questions_id_seq'), '6', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '3', NULL, false);

-- B-154: 3関数合成 add1(double(square(3)))
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 154, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: add1(整数型: x)
    return x + 1
整数型: double(整数型: x)
    return x × 2
整数型: square(整数型: x)
    return x × x
整数型: result ← add1(double(square(3)))',
   'square(3)=9, double(9)=18, add1(18)=19。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '19', NULL, true),
  (currval('questions_id_seq'), '37', NULL, false),
  (currval('questions_id_seq'), '13', NULL, false),
  (currval('questions_id_seq'), '25', NULL, false);
-- ----------------------------------------
-- 科目B（section_id=2）Q155〜Q204
-- ----------------------------------------

-- B-155: max更新回数カウント
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 155, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 updates の値はいくつになるか。
配列 arr の要素は arr[1]=3, arr[2]=1, arr[3]=4, arr[4]=1, arr[5]=5, arr[6]=9, arr[7]=2, arr[8]=6 とする。

整数型: curMax ← arr[1], updates ← 0
for (i を 2 から 8 まで 1 ずつ増やす)
    if (arr[i] > curMax)
        curMax ← arr[i]
        updates ← updates + 1
    endif
endfor',
   'i=3: 4>3→更新(1), i=5: 5>4→更新(2), i=6: 9>5→更新(3)。updates=3。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '3', NULL, true),
  (currval('questions_id_seq'), '4', NULL, false),
  (currval('questions_id_seq'), '2', NULL, false),
  (currval('questions_id_seq'), '8', NULL, false);

-- B-156: 3の倍数でない奇数の和（1-15）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 156, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 sum の値はいくつになるか。

整数型: sum ← 0
for (i を 1 から 15 まで 1 ずつ増やす)
    if (i mod 2 = 1 かつ i mod 3 ≠ 0)
        sum ← sum + i
    endif
endfor',
   '奇数かつ3の倍数でない数: 1,5,7,11,13。sum=1+5+7+11+13=37。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '37', NULL, true),
  (currval('questions_id_seq'), '45', NULL, false),
  (currval('questions_id_seq'), '25', NULL, false),
  (currval('questions_id_seq'), '30', NULL, false);

-- B-157: フィボナッチ（反復版）fib(8)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 157, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 b の値はいくつになるか。

整数型: a ← 0, b ← 1
for (i を 1 から 7 まで 1 ずつ増やす)
    整数型: tmp ← b
    b ← a + b
    a ← tmp
endfor',
   'a,bの推移: (0,1)→(1,1)→(1,2)→(2,3)→(3,5)→(5,8)→(8,13)→(13,21)。b=21（fib(8)）。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '21', NULL, true),
  (currval('questions_id_seq'), '13', NULL, false),
  (currval('questions_id_seq'), '34', NULL, false),
  (currval('questions_id_seq'), '8',  NULL, false);

-- B-158: 配列右ローテーション後のarr[2]
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 158, 'choice', 1, 1,
   '次の擬似コードを実行したとき、配列 arr[2] の値はいくつになるか。
配列 arr の要素は arr[1]=1, arr[2]=2, arr[3]=3, arr[4]=4, arr[5]=5 とする。

整数型: tmp ← arr[5]
for (i を 5 から 2 まで 1 ずつ減らす)
    arr[i] ← arr[i-1]
endfor
arr[1] ← tmp',
   'tmp=5。arr[5]=arr[4]=4, arr[4]=arr[3]=3, arr[3]=arr[2]=2, arr[2]=arr[1]=1。arr[1]=5。arr={5,1,2,3,4}。arr[2]=1。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '1', NULL, true),
  (currval('questions_id_seq'), '2', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '4', NULL, false);

-- B-159: 隣接差の最大値
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 159, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 maxDiff の値はいくつになるか。
配列 arr の要素は arr[1]=3, arr[2]=7, arr[3]=2, arr[4]=9, arr[5]=5, arr[6]=8 とする。

整数型: maxDiff ← 0
for (i を 1 から 5 まで 1 ずつ増やす)
    整数型: diff ← arr[i+1] - arr[i]
    if (diff < 0)
        diff ← -diff
    endif
    if (diff > maxDiff)
        maxDiff ← diff
    endif
endfor',
   '|7-3|=4, |2-7|=5, |9-2|=7, |5-9|=4, |8-5|=3。最大=7。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '7', NULL, true),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '4', NULL, false),
  (currval('questions_id_seq'), '9', NULL, false);

-- B-160: 最小の素因数（n=35）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 160, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 factor の値はいくつになるか。

整数型: n ← 35, factor ← 2
while (n mod factor ≠ 0)
    factor ← factor + 1
endwhile',
   '35 mod 2=1(≠0), 35 mod 3=2(≠0), 35 mod 4=3(≠0), 35 mod 5=0。factor=5。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '5', NULL, true),
  (currval('questions_id_seq'), '7', NULL, false),
  (currval('questions_id_seq'), '2', NULL, false),
  (currval('questions_id_seq'), '3', NULL, false);

-- B-161: 2^10 mod 1000
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 161, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 rem の値はいくつになるか。

整数型: result ← 1
for (i を 1 から 10 まで 1 ずつ増やす)
    result ← result × 2
endfor
整数型: rem ← result mod 1000',
   '2^10=1024。1024 mod 1000=24。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '24',   NULL, true),
  (currval('questions_id_seq'), '1024', NULL, false),
  (currval('questions_id_seq'), '4',    NULL, false),
  (currval('questions_id_seq'), '124',  NULL, false);

-- B-162: 最後の出現インデックス
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 162, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 lastIdx の値はいくつになるか。
配列 arr の要素は arr[1]=3, arr[2]=5, arr[3]=3, arr[4]=7, arr[5]=3, arr[6]=9 とする。

整数型: target ← 3, lastIdx ← -1
for (i を 1 から 6 まで 1 ずつ増やす)
    if (arr[i] = target)
        lastIdx ← i
    endif
endfor',
   'arr[1]=3, arr[3]=3, arr[5]=3。最後の出現はi=5。lastIdx=5。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '5',  NULL, true),
  (currval('questions_id_seq'), '1',  NULL, false),
  (currval('questions_id_seq'), '3',  NULL, false),
  (currval('questions_id_seq'), '-1', NULL, false);

-- B-163: 素数カウント（10-20）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 163, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

整数型: count ← 0
for (n を 10 から 20 まで 1 ずつ増やす)
    整数型: isPrime ← 1
    for (i を 2 から n-1 まで 1 ずつ増やす)
        if (n mod i = 0)
            isPrime ← 0
        endif
    endfor
    count ← count + isPrime
endfor',
   '10〜20の素数: 11,13,17,19の4個。count=4。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '4', NULL, true),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '6', NULL, false);

-- B-164: 隣接ペアのswap後のarr[3]
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 164, 'choice', 1, 1,
   '次の擬似コードを実行したとき、配列 arr[3] の値はいくつになるか。
配列 arr の要素は arr[1]=1, arr[2]=2, arr[3]=3, arr[4]=4, arr[5]=5, arr[6]=6 とする。

for (i を 1 から 5 まで 2 ずつ増やす)
    整数型: tmp ← arr[i]
    arr[i] ← arr[i+1]
    arr[i+1] ← tmp
endfor',
   'i=1: arr[1],arr[2]を交換→{2,1,...}, i=3: arr[3],arr[4]を交換→{2,1,4,3,...}, i=5: arr[5],arr[6]を交換→{2,1,4,3,6,5}。arr[3]=4。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '4', NULL, true),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '6', NULL, false);

-- B-165: 累積和が20以上になったときのiの値
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 165, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 i の値はいくつになるか。

整数型: i ← 1, sum ← 0
while (sum < 20)
    sum ← sum + i
    i ← i + 1
endwhile',
   'sum: 1,3,6,10,15,21と増加。sum=21≥20でループ終了時i=7。print(i)=7。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '7',  NULL, true),
  (currval('questions_id_seq'), '6',  NULL, false),
  (currval('questions_id_seq'), '8',  NULL, false),
  (currval('questions_id_seq'), '21', NULL, false);

-- B-166: 初期値1に i^2 を加算
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 166, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 x の値はいくつになるか。

整数型: x ← 1
for (i を 1 から 5 まで 1 ずつ増やす)
    x ← x + i × i
endfor',
   'x=1+(1+4+9+16+25)=1+55=56。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '56', NULL, true),
  (currval('questions_id_seq'), '55', NULL, false),
  (currval('questions_id_seq'), '57', NULL, false),
  (currval('questions_id_seq'), '30', NULL, false);

-- B-167: 配列要素を2倍後のarr[4]
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 167, 'choice', 1, 1,
   '次の擬似コードを実行したとき、配列 arr[4] の値はいくつになるか。
配列 arr の要素は arr[1]=1, arr[2]=2, arr[3]=3, arr[4]=4, arr[5]=5 とする。

for (i を 1 から 5 まで 1 ずつ増やす)
    arr[i] ← arr[i] × 2
endfor',
   'arr[4]=4→4×2=8。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '8',  NULL, true),
  (currval('questions_id_seq'), '4',  NULL, false),
  (currval('questions_id_seq'), '16', NULL, false),
  (currval('questions_id_seq'), '6',  NULL, false);

-- B-168: 5以上の要素の整数平均
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 168, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 avg の値はいくつになるか。
配列 arr の要素は arr[1]=2, arr[2]=5, arr[3]=8, arr[4]=3, arr[5]=7, arr[6]=4 とする。

整数型: sum ← 0, count ← 0
for (i を 1 から 6 まで 1 ずつ増やす)
    if (arr[i] ≥ 5)
        sum ← sum + arr[i]
        count ← count + 1
    endif
endfor
整数型: avg ← sum ÷ count',
   '5以上: 5,8,7。sum=20, count=3。20÷3=6（整数除算）。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '6',  NULL, true),
  (currval('questions_id_seq'), '7',  NULL, false),
  (currval('questions_id_seq'), '5',  NULL, false),
  (currval('questions_id_seq'), '20', NULL, false);

-- B-169: スタックのサイズ（push5回pop3回）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 169, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 size の値はいくつになるか。

整数型: size ← 0
for (i を 1 から 5 まで 1 ずつ増やす)
    push(i)
    size ← size + 1
endfor
for (i を 1 から 3 まで 1 ずつ増やす)
    pop()
    size ← size - 1
endfor',
   '5回push→size=5。3回pop→size=2。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '2', NULL, true),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '8', NULL, false);

-- B-170: 3関数合成 square(add1(double(2)))
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 170, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: add1(整数型: x)
    return x + 1
整数型: double(整数型: x)
    return x × 2
整数型: square(整数型: x)
    return x × x
整数型: result ← square(add1(double(2)))',
   'double(2)=4, add1(4)=5, square(5)=25。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '25', NULL, true),
  (currval('questions_id_seq'), '36', NULL, false),
  (currval('questions_id_seq'), '10', NULL, false),
  (currval('questions_id_seq'), '16', NULL, false);

-- B-171: i×(i+1)<30 の終了時のi
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 171, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 i の値はいくつになるか。

整数型: i ← 1
while (i × (i + 1) < 30)
    i ← i + 1
endwhile',
   'i=4: 4×5=20<30→i=5。i=5: 5×6=30<30? No→stop。print(5)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '5',  NULL, true),
  (currval('questions_id_seq'), '4',  NULL, false),
  (currval('questions_id_seq'), '6',  NULL, false),
  (currval('questions_id_seq'), '30', NULL, false);

-- B-172: 再帰的最大値
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 172, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。
配列 arr の要素は arr[1]=3, arr[2]=7, arr[3]=2, arr[4]=9, arr[5]=5 とする。

整数型: myMax(整数型の配列: arr, 整数型: n)
    if (n = 1)
        return arr[1]
    endif
    整数型: rest ← myMax(arr, n-1)
    if (arr[n] > rest)
        return arr[n]
    endif
    return rest
整数型: result ← myMax(arr, 5)',
   '配列{3,7,2,9,5}の最大値は9。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '9', NULL, true),
  (currval('questions_id_seq'), '7', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false),
  (currval('questions_id_seq'), '3', NULL, false);

-- B-173: 行和の最大値
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 173, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 maxRowSum の値はいくつになるか。

整数型の配列: m ← {{1,4,2},{3,2,5},{6,1,3}}
整数型: maxRowSum ← 0
for (i を 1 から 3 まで 1 ずつ増やす)
    整数型: rowSum ← 0
    for (j を 1 から 3 まで 1 ずつ増やす)
        rowSum ← rowSum + m[i][j]
    endfor
    if (rowSum > maxRowSum)
        maxRowSum ← rowSum
    endif
endfor',
   '行1: 1+4+2=7, 行2: 3+2+5=10, 行3: 6+1+3=10。最大=10。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '10', NULL, true),
  (currval('questions_id_seq'), '7',  NULL, false),
  (currval('questions_id_seq'), '9',  NULL, false),
  (currval('questions_id_seq'), '12', NULL, false);

-- B-174: 7の倍数カウント（1-50）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 174, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

整数型: count ← 0
for (i を 1 から 50 まで 1 ずつ増やす)
    if (i mod 7 = 0)
        count ← count + 1
    endif
endfor',
   '1〜50で7の倍数: 7,14,21,28,35,42,49の7個。count=7。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '7', NULL, true),
  (currval('questions_id_seq'), '6', NULL, false),
  (currval('questions_id_seq'), '8', NULL, false),
  (currval('questions_id_seq'), '5', NULL, false);

-- B-175: ネスト条件の評価（x=15）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 175, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: x ← 15, result ← 0
if (x > 10)
    if (x > 20)
        result ← 3
    elseif (x > 12)
        result ← 2
    else
        result ← 1
    endif
else
    result ← 0
endif',
   'x=15>10: 内側へ。x=15>20? No。x=15>12? Yes→result=2。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '2', NULL, true),
  (currval('questions_id_seq'), '3', NULL, false),
  (currval('questions_id_seq'), '1', NULL, false),
  (currval('questions_id_seq'), '0', NULL, false);

-- B-176: 隣接ペアの積の最大値
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 176, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 maxProd の値はいくつになるか。
配列 arr の要素は arr[1]=2, arr[2]=5, arr[3]=3, arr[4]=8, arr[5]=1, arr[6]=4 とする。

整数型: maxProd ← arr[1] × arr[2]
for (i を 1 から 5 まで 1 ずつ増やす)
    整数型: prod ← arr[i] × arr[i+1]
    if (prod > maxProd)
        maxProd ← prod
    endif
endfor',
   '2×5=10, 5×3=15, 3×8=24, 8×1=8, 1×4=4。最大=24。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '24', NULL, true),
  (currval('questions_id_seq'), '15', NULL, false),
  (currval('questions_id_seq'), '40', NULL, false),
  (currval('questions_id_seq'), '10', NULL, false);

-- B-177: 100を2で割り続ける回数
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 177, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

整数型: n ← 100, count ← 0
while (n > 1)
    n ← n ÷ 2
    count ← count + 1
endwhile',
   '100→50→25→12→6→3→1。6回割る。count=6。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '6',   NULL, true),
  (currval('questions_id_seq'), '7',   NULL, false),
  (currval('questions_id_seq'), '5',   NULL, false),
  (currval('questions_id_seq'), '100', NULL, false);

-- B-178: 引き算GCD(48,18)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 178, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 a の値はいくつになるか。

整数型: a ← 48, b ← 18
while (a ≠ b)
    if (a > b)
        a ← a - b
    else
        b ← b - a
    endif
endwhile',
   '48-18=30, 30-18=12, 18-12=6, 12-6=6。a=b=6。GCD(48,18)=6。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '6',  NULL, true),
  (currval('questions_id_seq'), '3',  NULL, false),
  (currval('questions_id_seq'), '12', NULL, false),
  (currval('questions_id_seq'), '18', NULL, false);

-- B-179: 256を2で割り続けるカウント
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 179, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 count の値はいくつになるか。

整数型: n ← 256, count ← 0
while (n mod 2 = 0)
    n ← n ÷ 2
    count ← count + 1
endwhile',
   '256=2^8。2で8回割ると1になる。count=8。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '8',   NULL, true),
  (currval('questions_id_seq'), '7',   NULL, false),
  (currval('questions_id_seq'), '9',   NULL, false),
  (currval('questions_id_seq'), '256', NULL, false);

-- B-180: 二次元配列の反対対角の和
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 180, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 sum の値はいくつになるか。

整数型の配列: m ← {{1,2,3},{4,5,6},{7,8,9}}
整数型: sum ← 0
for (i を 1 から 3 まで 1 ずつ増やす)
    sum ← sum + m[i][4-i]
endfor',
   'm[1][3]=3, m[2][2]=5, m[3][1]=7。sum=3+5+7=15。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '15', NULL, true),
  (currval('questions_id_seq'), '12', NULL, false),
  (currval('questions_id_seq'), '18', NULL, false),
  (currval('questions_id_seq'), '9',  NULL, false);

-- B-181: ユニーク要素カウント
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 181, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 uniqueCount の値はいくつになるか。
配列 arr の要素は arr[1]=3, arr[2]=1, arr[3]=4, arr[4]=1, arr[5]=5, arr[6]=9, arr[7]=2, arr[8]=6, arr[9]=5, arr[10]=3 とする。

整数型: uniqueCount ← 0
for (i を 1 から 10 まで 1 ずつ増やす)
    整数型: isDup ← 0
    for (j を 1 から i-1 まで 1 ずつ増やす)
        if (arr[j] = arr[i])
            isDup ← 1
        endif
    endfor
    if (isDup = 0)
        uniqueCount ← uniqueCount + 1
    endif
endfor',
   '{3,1,4,1,5,9,2,6,5,3}の重複除去後: 3,1,4,5,9,2,6の7種。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '7',  NULL, true),
  (currval('questions_id_seq'), '10', NULL, false),
  (currval('questions_id_seq'), '8',  NULL, false),
  (currval('questions_id_seq'), '6',  NULL, false);

-- B-182: 順列の数 P(5,2)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 182, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: perm(整数型: n, 整数型: r)
    整数型: result ← 1
    for (i を 0 から r-1 まで 1 ずつ増やす)
        result ← result × (n - i)
    endfor
    return result
整数型: result ← perm(5, 2)',
   'i=0: result=1×5=5。i=1: result=5×4=20。P(5,2)=20。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '20', NULL, true),
  (currval('questions_id_seq'), '10', NULL, false),
  (currval('questions_id_seq'), '25', NULL, false),
  (currval('questions_id_seq'), '15', NULL, false);

-- B-183: 3の倍数に達した回数（再帰）countdown(10)
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 183, 'choice', 1, 1,
   '次の擬似コードを実行したとき、変数 result の値はいくつになるか。

整数型: countdown(整数型: n)
    if (n ≤ 0)
        return 0
    endif
    if (n mod 3 = 0)
        return 1 + countdown(n - 3)
    else
        return countdown(n - 1)
    endif
整数型: result ← countdown(10)',
   'countdown(10)→cd(9)→1+cd(6)→1+1+cd(3)→1+1+1+cd(0)=3。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '3',  NULL, true),
  (currval('questions_id_seq'), '4',  NULL, false),
  (currval('questions_id_seq'), '2',  NULL, false),
  (currval('questions_id_seq'), '10', NULL, false);

-- B-184: 累積和配列のprefix[4]
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 184, 'choice', 1, 1,
   '次の擬似コードを実行したとき、配列 prefix[4] の値はいくつになるか。
配列 arr の要素は arr[1]=1, arr[2]=3, arr[3]=2, arr[4]=4, arr[5]=5 とする。
配列 prefix の要素は prefix[1]=0, prefix[2]=0, prefix[3]=0, prefix[4]=0, prefix[5]=0 とする。

prefix[1] ← arr[1]
for (i を 2 から 5 まで 1 ずつ増やす)
    prefix[i] ← prefix[i-1] + arr[i]
endfor',
   'prefix[1]=1, prefix[2]=4, prefix[3]=6, prefix[4]=10。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '10', NULL, true),
  (currval('questions_id_seq'), '6',  NULL, false),
  (currval('questions_id_seq'), '14', NULL, false),
  (currval('questions_id_seq'), '4',  NULL, false);

-- ----------------------------------------
-- セキュリティ（section_id=2）Q185〜Q204
-- ----------------------------------------

-- B-185: SQLインジェクション
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 185, 'choice', 1, 1,
   'Webアプリケーションへの「SQLインジェクション」攻撃の説明として、最も適切なものはどれか。',
   'SQLインジェクションはユーザー入力にSQL文を埋め込みDBを不正操作する攻撃。対策はプリペアドステートメントの使用。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '悪意のあるSQL文をユーザー入力として挿入し，データベースを不正に操作する攻撃',     NULL, true),
  (currval('questions_id_seq'), '正規の通信に見せかけてコマンドを埋め込み，サーバーを乗っ取る攻撃',              NULL, false),
  (currval('questions_id_seq'), '偽のWebサイトにユーザーを誘導して認証情報を詐取する攻撃',                     NULL, false),
  (currval('questions_id_seq'), '大量のパケットを送付してサービスを停止させる攻撃',                            NULL, false);

-- B-186: ARPスプーフィング
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 186, 'choice', 1, 1,
   '「ARPスプーフィング」の説明として、最も適切なものはどれか。',
   'ARPスプーフィングは偽ARPメッセージでIPとMACの対応を書き換え、通信を傍受するMITM攻撃の一種。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '偽のARPメッセージを送信してネットワーク上の通信を傍受・改ざんする攻撃',         NULL, true),
  (currval('questions_id_seq'), 'DNSキャッシュを汚染して正規サイトの代わりに悪意あるサイトへ誘導する攻撃',       NULL, false),
  (currval('questions_id_seq'), '偽の無線LANアクセスポイントを作り通信を傍受する攻撃',                         NULL, false),
  (currval('questions_id_seq'), 'パスワードを総当たりで試行する攻撃',                                         NULL, false);

-- B-187: アプリケーションゲートウェイ型ファイアウォール
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 187, 'choice', 1, 1,
   '「アプリケーションゲートウェイ型ファイアウォール」の特徴として、最も適切なものはどれか。',
   'アプリケーションゲートウェイはL7でHTTPやFTPのプロトコルを理解して制御する。単純なIPアドレス・ポート番号のフィルタはパケットフィルタリング型。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'アプリケーション層でパケット内容を解析し，プロトコルの動作を理解して通信を制御する', NULL, true),
  (currval('questions_id_seq'), '送信元・宛先IPアドレスとポート番号のみでパケットを制御する',                    NULL, false),
  (currval('questions_id_seq'), '接続の状態を追跡し，許可された接続に関連するパケットのみを通過させる',           NULL, false),
  (currval('questions_id_seq'), 'ハードウェアレベルで暗号化を処理し，高速なVPN通信を実現する',                  NULL, false);

-- B-188: 所有物認証
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 188, 'choice', 1, 1,
   '多要素認証（MFA）において「所有物（something you have）」による認証の例はどれか。',
   '所有物認証はトークン・スマートフォン・ICカードなど物理的な所持物を使う。パスワードは知識、指紋は生体認証。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'スマートフォンに届いたワンタイムパスワード（OTP）を入力する', NULL, true),
  (currval('questions_id_seq'), '登録したパスワードを入力する',                              NULL, false),
  (currval('questions_id_seq'), '指紋を認証器にかざす',                                     NULL, false),
  (currval('questions_id_seq'), '秘密の質問に答える',                                       NULL, false);

-- B-189: トロイの木馬
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 189, 'choice', 1, 1,
   '「トロイの木馬」の説明として、最も適切なものはどれか。',
   'トロイの木馬は自己複製しない点でウイルス・ワームと異なる。正常なソフトに偽装してバックドア設置や情報窃取を行う。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '正常なプログラムに見せかけてインストールされ，バックドアの設置や情報窃取を行うマルウェア',  NULL, true),
  (currval('questions_id_seq'), '自己複製しながらネットワークを介して他のコンピュータに感染するマルウェア',                NULL, false),
  (currval('questions_id_seq'), 'データを暗号化して復号のための身代金を要求するマルウェア',                             NULL, false),
  (currval('questions_id_seq'), '感染したファイルを実行したときのみ活動し，他のファイルに自己を組み込むマルウェア',         NULL, false);

-- B-190: デジタル署名の送信者処理
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 190, 'choice', 1, 1,
   '公開鍵暗号方式の「デジタル署名」における送信者の処理として、正しいものはどれか。',
   '署名は秘密鍵で作成、検証は公開鍵で行う。暗号化は受信者の公開鍵、復号は受信者の秘密鍵。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '送信者は自分の秘密鍵でメッセージのハッシュ値を暗号化して署名を作成する', NULL, true),
  (currval('questions_id_seq'), '送信者は受信者の公開鍵でメッセージを暗号化して署名を作成する',           NULL, false),
  (currval('questions_id_seq'), '送信者は共有秘密鍵でメッセージと署名の両方を暗号化する',                 NULL, false),
  (currval('questions_id_seq'), '送信者は自分の公開鍵でメッセージのハッシュ値を暗号化して署名を作成する', NULL, false);

-- B-191: ゼロデイ攻撃
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 191, 'choice', 1, 1,
   '「ゼロデイ攻撃」の説明として、最も適切なものはどれか。',
   'ゼロデイ（0-day）はセキュリティパッチが存在しない状態で悪用される脆弱性を狙った攻撃。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'セキュリティパッチが提供される前の未公開の脆弱性を悪用した攻撃',         NULL, true),
  (currval('questions_id_seq'), 'パッチが公開された後，適用が遅れたシステムを狙った攻撃',                 NULL, false),
  (currval('questions_id_seq'), '脆弱なパスワードを設定したユーザーのアカウントを標的にした攻撃',         NULL, false),
  (currval('questions_id_seq'), '大量のリクエストを送信して特定のサービスを停止させる攻撃',               NULL, false);

-- B-192: IDSとIPSの違い
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 192, 'choice', 1, 1,
   '「IDS（侵入検知システム）」の説明として、最も適切なものはどれか。',
   'IDSは検知・通知が主目的。自動遮断まで行うのはIPS（侵入防止システム）。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ネットワークやシステムへの不正アクセスを検知して管理者に通知するシステム',   NULL, true),
  (currval('questions_id_seq'), '不正なパケットを自動的にブロックしてネットワークを保護するシステム',        NULL, false),
  (currval('questions_id_seq'), 'ユーザーの認証情報を管理しアクセス権を制御するシステム',                  NULL, false),
  (currval('questions_id_seq'), 'ファイルの暗号化・復号を自動的に行い情報漏洩を防ぐシステム',              NULL, false);

-- B-193: フィッシング対策
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 193, 'choice', 1, 1,
   'フィッシング詐欺への対策として、最も直接的に有効なものはどれか。',
   'フィッシングはメール内の偽リンクで偽サイトへ誘導する手口。URLを直接入力することで偽リンクを回避できる。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'メール内のリンクをクリックせず，公式サイトのURLをブラウザに直接入力してアクセスする', NULL, true),
  (currval('questions_id_seq'), 'ウイルス対策ソフトを最新の状態に保つ',                                           NULL, false),
  (currval('questions_id_seq'), 'OSの自動更新を有効にする',                                                       NULL, false),
  (currval('questions_id_seq'), 'ファイアウォールを有効にする',                                                    NULL, false);

-- B-194: VPNの説明
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 194, 'choice', 1, 1,
   'VPN（仮想プライベートネットワーク）の説明として、最も適切なものはどれか。',
   'VPNはインターネット（公衆網）上に暗号化トンネルを構築する技術。物理的な専用線とは異なる。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '公衆ネットワーク上に暗号化されたトンネルを作成し，セキュアな通信路を確保する技術',  NULL, true),
  (currval('questions_id_seq'), '社内ネットワーク専用の物理的な専用線を敷設して安全な通信を実現する技術',            NULL, false),
  (currval('questions_id_seq'), 'Webアプリケーションへの不正アクセスを検出してブロックする技術',                     NULL, false),
  (currval('questions_id_seq'), '複数のサーバーに負荷を分散させ可用性を高める技術',                                 NULL, false);

-- B-195: ハッシュ関数の誤った特性
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 195, 'choice', 1, 1,
   '暗号学的ハッシュ関数の特性として、誤っているものはどれか。',
   'ハッシュ関数は一方向性（逆算不可能）が必須特性。雪崩効果・衝突耐性・固定長出力は正しい特性。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '同じハッシュ値から元のデータを容易に復元できる（逆算可能性）',         NULL, true),
  (currval('questions_id_seq'), '入力が1ビット違うだけで出力が大きく変わる（雪崩効果）',               NULL, false),
  (currval('questions_id_seq'), '異なる入力から同じハッシュ値が生成されることは極めて困難（衝突耐性）', NULL, false),
  (currval('questions_id_seq'), '入力の長さにかかわらず常に固定長のハッシュ値を出力する',             NULL, false);

-- B-196: アクセス制御リスト（ACL）
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 196, 'choice', 1, 1,
   '「アクセス制御リスト（ACL）」の説明として、最も適切なものはどれか。',
   'ACLはユーザー・グループごとに読み取り・書き込み・実行などの権限を定義したリスト。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'リソースへのアクセス可否をユーザーやグループ単位で定義したリスト',       NULL, true),
  (currval('questions_id_seq'), 'システムへのアクセス試行を時系列で記録したログファイル',                 NULL, false),
  (currval('questions_id_seq'), 'ファイルやデータを暗号化する際に使用する鍵の一覧',                     NULL, false),
  (currval('questions_id_seq'), 'ネットワーク上で通信を許可するポート番号のみを列挙したリスト',           NULL, false);

-- B-197: 差分バックアップと増分バックアップの違い
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 197, 'choice', 1, 1,
   '「差分バックアップ」の説明として、最も適切なものはどれか。',
   '差分バックアップはフルバックアップ以降の全変更分。増分バックアップは前回バックアップ以降の変更分のみ。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '前回のフルバックアップ以降に変更されたすべてのデータをバックアップする',               NULL, true),
  (currval('questions_id_seq'), '前回のバックアップ（フルまたは差分）以降に変更されたデータのみをバックアップする',       NULL, false),
  (currval('questions_id_seq'), 'すべてのデータを毎回完全にバックアップする',                                         NULL, false),
  (currval('questions_id_seq'), '変更されたファイルの差異のみを圧縮して転送する方式',                                  NULL, false);

-- B-198: CSRF攻撃
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 198, 'choice', 1, 1,
   '「CSRF（クロスサイトリクエストフォージェリ）」攻撃の説明として、最も適切なものはどれか。',
   'CSRFはログイン済みセッションを悪用した操作の詐称。対策はCSRFトークンの使用。XSSとは異なる。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ログイン済みユーザーを罠ページへ誘導し，ユーザーの権限で意図しない操作を実行させる攻撃', NULL, true),
  (currval('questions_id_seq'), 'Webページに悪意あるスクリプトを埋め込み，他のユーザーのブラウザで実行させる攻撃',       NULL, false),
  (currval('questions_id_seq'), '偽のWebサイトに誘導してIDとパスワードを詐取する攻撃',                                 NULL, false),
  (currval('questions_id_seq'), 'DBへのクエリに不正なSQL文を挿入してデータを操作する攻撃',                             NULL, false);

-- B-199: 要配慮個人情報
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 199, 'choice', 1, 1,
   '日本の「個人情報保護法」における「要配慮個人情報」に該当するものはどれか。',
   '要配慮個人情報は取得に本人の同意が必要。病歴・犯罪歴・人種・信条・障害情報などが該当する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '人種・信条・病歴・犯罪歴など，差別につながる可能性のある個人に関する情報', NULL, true),
  (currval('questions_id_seq'), '氏名・住所・生年月日など，一般的な個人を識別できる情報',                   NULL, false),
  (currval('questions_id_seq'), '電子メールアドレスや電話番号など，連絡先に関する情報',                     NULL, false),
  (currval('questions_id_seq'), '職業や学歴など，公開されている可能性がある個人の経歴情報',                 NULL, false);

-- B-200: ペネトレーションテスト
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 200, 'choice', 1, 1,
   '「ペネトレーションテスト」の説明として、最も適切なものはどれか。',
   'ペネトレーションテストは実際の攻撃を模擬して脆弱性を検証する。ソースコード解析は静的解析（SAST）。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'システムの脆弱性を実際の攻撃手法で検証し，セキュリティ上の問題点を発見するテスト', NULL, true),
  (currval('questions_id_seq'), 'ソースコードを静的に解析してセキュリティ上の欠陥を発見する手法',                 NULL, false),
  (currval('questions_id_seq'), 'システムへのアクセスログを分析して過去の不正アクセスを調査する手法',            NULL, false),
  (currval('questions_id_seq'), '社員にフィッシングメールを送付して情報セキュリティ意識を評価する演習',           NULL, false);

-- B-201: HTTPSの説明
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 201, 'choice', 1, 1,
   '「HTTPS」の説明として、最も適切なものはどれか。',
   'HTTPS=HTTP+TLS。DNSSECはDNSのセキュリティ拡張。S/MIMEはメール暗号化。IPsecはネットワーク層暗号化。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'HTTPにTLS/SSLによる暗号化を組み合わせ，通信内容の秘匿性と完全性を確保するプロトコル', NULL, true),
  (currval('questions_id_seq'), 'DNSにセキュリティ拡張機能を追加し，DNSの改ざんを防止するプロトコル',               NULL, false),
  (currval('questions_id_seq'), 'メールの暗号化と電子署名を標準化したメールセキュリティプロトコル',                  NULL, false),
  (currval('questions_id_seq'), 'ネットワーク層でIP通信を暗号化しVPNを実現するプロトコル',                         NULL, false);

-- B-202: 可用性（Availability）の説明
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 202, 'choice', 1, 1,
   '情報セキュリティの3要素「CIA」のうち「可用性（Availability）」の説明として、正しいものはどれか。',
   'CIA=機密性（Confidentiality）・完全性（Integrity）・可用性（Availability）。可用性は正当なユーザーが必要なときに利用できる状態の維持。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '正当なユーザーが必要なときに情報やシステムを利用できる状態を維持すること',        NULL, true),
  (currval('questions_id_seq'), '情報が正確で完全な状態を保ち，不正に改ざんされていないことを保証すること',        NULL, false),
  (currval('questions_id_seq'), '情報へのアクセスを認可されたユーザーのみに制限すること',                         NULL, false),
  (currval('questions_id_seq'), '情報の送受信者が後から行為を否認できないようにすること',                         NULL, false);

-- B-203: 認証局（CA）の役割
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 203, 'choice', 1, 1,
   'PKI（公開鍵基盤）において「認証局（CA）」の役割として、最も適切なものはどれか。',
   'CA（認証局）はデジタル証明書の発行・失効管理を行い、公開鍵と所有者の紐付けを保証する信頼できる第三者機関。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'デジタル証明書を発行し，公開鍵と所有者の紐付けを保証する信頼できる第三者機関',   NULL, true),
  (currval('questions_id_seq'), 'ユーザーのパスワードを安全に保管・管理する専門機関',                            NULL, false),
  (currval('questions_id_seq'), 'ネットワーク上の不正通信を検知・遮断する専門システム',                          NULL, false),
  (currval('questions_id_seq'), 'システムのバックアップを定期的に取得・管理する機関',                             NULL, false);

-- B-204: バッファオーバーフロー対策
INSERT INTO questions
  (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers)
VALUES
  (2, NULL, 204, 'choice', 1, 1,
   '「バッファオーバーフロー」攻撃への対策として、最も適切なものはどれか。',
   'バッファオーバーフローは入力長の検証不足が原因。プリペアドステートメントはSQL対策。HTMLエスケープはXSS対策。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '入力データの長さを検証し，バッファサイズを超える入力を拒否する',   NULL, true),
  (currval('questions_id_seq'), 'すべてのユーザー入力を暗号化してから処理する',                    NULL, false),
  (currval('questions_id_seq'), 'DBへのクエリにプリペアドステートメントを使用する',                 NULL, false),
  (currval('questions_id_seq'), 'Webページの出力時にHTMLエスケープ処理を行う',                     NULL, false);
