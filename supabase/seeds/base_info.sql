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
