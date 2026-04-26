-- ============================================================
-- プログラミング言語【python】 コンテスト対策問題追加
-- exam_id=6 に section_id=41(アルゴリズム), 42(計算量), 43(実践) を追加
-- ============================================================

INSERT INTO exam_sections (id, exam_id, parent_section_id, title, order_index, pass_threshold, question_count, shuffle_choices) OVERRIDING SYSTEM VALUE VALUES
  (41, 6, NULL, 'アルゴリズム', 2, NULL, 35, TRUE),
  (42, 6, NULL, '計算量',       3, NULL, 21, TRUE),
  (43, 6, NULL, '実践',         4, NULL, 35, TRUE);

SELECT setval(pg_get_serial_sequence('exam_sections', 'id'), (SELECT MAX(id) FROM exam_sections));

-- ============================================================
-- アルゴリズム（section_id=41）Q1〜Q35
-- ============================================================

-- ---- ソート（Q1〜Q8）----

-- アルゴリズム-1: バブルソート
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 1, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズムはどれか。\n\n「隣接する要素を比較し、順序が逆であれば交換する操作を繰り返してリストをソートする。1回のパスで最大値（または最小値）が端に移動する。」',
   '隣接比較・交換を繰り返す基本的なソート。最悪・平均 O(n²)。実装は単純だが大規模データには非効率。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'バブルソート', NULL, true),
  (currval('questions_id_seq'), '選択ソート', NULL, false),
  (currval('questions_id_seq'), '挿入ソート', NULL, false),
  (currval('questions_id_seq'), 'シェルソート', NULL, false);

-- アルゴリズム-2: 選択ソート
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 2, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズムはどれか。\n\n「未整列部分の中から最小の要素を見つけ、未整列部分の先頭と交換する操作を繰り返してソートする。」',
   '比較回数 O(n²)、交換回数 O(n)。不安定ソート。常に同じ回数の比較を行う。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '選択ソート', NULL, true),
  (currval('questions_id_seq'), 'バブルソート', NULL, false),
  (currval('questions_id_seq'), '挿入ソート', NULL, false),
  (currval('questions_id_seq'), 'クイックソート', NULL, false);

-- アルゴリズム-3: 挿入ソート
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 3, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズムはどれか。\n\n「整列済みの部分列に未整列の要素を順に取り出して適切な位置に挿入する。ほぼ整列済みのデータに対して高速に動作する。」',
   '最良 O(n)（ほぼ整列済み）、最悪 O(n²)。安定ソート。小規模データや部分的に整列済みのデータに有効。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '挿入ソート', NULL, true),
  (currval('questions_id_seq'), 'バブルソート', NULL, false),
  (currval('questions_id_seq'), '選択ソート', NULL, false),
  (currval('questions_id_seq'), 'シェルソート', NULL, false);

-- アルゴリズム-4: マージソート
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 4, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズムはどれか。\n\n「配列を半分に分割して再帰的にソートし、整列済みの2つの部分列を1つに統合する操作を繰り返す。常に O(n log n) の時間計算量を保証する安定ソート。」',
   '分割統治法による安定ソート。最悪・平均 O(n log n)。追加メモリ O(n) が必要。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'マージソート', NULL, true),
  (currval('questions_id_seq'), 'クイックソート', NULL, false),
  (currval('questions_id_seq'), 'ヒープソート', NULL, false),
  (currval('questions_id_seq'), '基数ソート', NULL, false);

-- アルゴリズム-5: クイックソート
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 5, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズムはどれか。\n\n「配列から「ピボット」と呼ばれる基準値を選び、ピボット未満・以上の要素に分割して再帰的にソートする。平均的に高速だが、最悪ケースでは O(n²) になる。」',
   'ピボット分割による分割統治。平均 O(n log n)、最悪 O(n²)。インプレースで定数倍が小さく実際に高速。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'クイックソート', NULL, true),
  (currval('questions_id_seq'), 'マージソート', NULL, false),
  (currval('questions_id_seq'), 'ヒープソート', NULL, false),
  (currval('questions_id_seq'), '選択ソート', NULL, false);

-- アルゴリズム-6: ヒープソート
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 6, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズムはどれか。\n\n「配列を最大ヒープ構造に変換した後、ヒープの根（最大値）を末尾と交換してヒープサイズを縮小する操作を繰り返してソートする。」',
   'ヒープ構造を利用したインプレースソート。最悪・平均 O(n log n)。追加メモリ O(1)。不安定ソート。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ヒープソート', NULL, true),
  (currval('questions_id_seq'), 'マージソート', NULL, false),
  (currval('questions_id_seq'), 'クイックソート', NULL, false),
  (currval('questions_id_seq'), '選択ソート', NULL, false);

-- アルゴリズム-7: カウンティングソート
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 7, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズムはどれか。\n\n「各要素の出現頻度をカウント配列に記録し、その情報からソート済み配列を再構成する。要素比較を行わず、整数など値域が限られたデータに有効。」',
   '比較を行わない整数向けソート。O(n+k)（k は値域）。値域が大きいと空間効率が悪化する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'カウンティングソート', NULL, true),
  (currval('questions_id_seq'), '基数ソート', NULL, false),
  (currval('questions_id_seq'), 'バケットソート', NULL, false),
  (currval('questions_id_seq'), 'ヒープソート', NULL, false);

-- アルゴリズム-8: 基数ソート
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 8, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズムはどれか。\n\n「1の位、10の位、100の位…と各桁ごとに安定ソートを繰り返すことで全体をソートする。d桁の整数をソートする場合の時間計算量は O(dn) となる。」',
   '各桁ごとに安定ソートを繰り返す。O(dn)（d は最大桁数）。整数・固定長文字列のソートに有効。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '基数ソート', NULL, true),
  (currval('questions_id_seq'), 'カウンティングソート', NULL, false),
  (currval('questions_id_seq'), 'バケットソート', NULL, false),
  (currval('questions_id_seq'), 'マージソート', NULL, false);

-- ---- 探索（Q9〜Q14）----

-- アルゴリズム-9: 線形探索
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 9, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズムはどれか。\n\n「配列の先頭から末尾に向かって順番に要素を比較し、目的の値を探す。事前のソートは不要だが、最悪の場合は全要素を調べる必要がある。」',
   '先頭から順番に比較する最も単純な探索。O(n)。ソート不要だが大規模データには非効率。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '線形探索', NULL, true),
  (currval('questions_id_seq'), '二分探索', NULL, false),
  (currval('questions_id_seq'), '補間探索', NULL, false),
  (currval('questions_id_seq'), 'ハッシュ探索', NULL, false);

-- アルゴリズム-10: 二分探索
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 10, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズムはどれか。\n\n「ソート済みの配列で、中央の要素と目的の値を比較し、目的の値が中央より小さければ前半、大きければ後半を次の探索範囲として絞り込む操作を繰り返す。」',
   'ソート済み配列を対象に探索範囲を毎回半分に絞る。O(log n)。前提としてソート済みであることが必要。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '二分探索', NULL, true),
  (currval('questions_id_seq'), '線形探索', NULL, false),
  (currval('questions_id_seq'), '補間探索', NULL, false),
  (currval('questions_id_seq'), 'ハッシュ探索', NULL, false);

-- アルゴリズム-11: 幅優先探索(BFS)
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 11, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズムはどれか。\n\n「グラフ探索において、始点から距離1の頂点、距離2の頂点…と近い順にキューを用いて探索する。非重み付きグラフの最短路発見に利用される。」',
   'キューを使って始点に近い頂点から順に探索。O(V+E)。非重み付きグラフの最短路・連結性チェックに使える。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '幅優先探索', NULL, true),
  (currval('questions_id_seq'), '深さ優先探索', NULL, false),
  (currval('questions_id_seq'), 'ダイクストラ法', NULL, false),
  (currval('questions_id_seq'), 'ベストファースト探索', NULL, false);

-- アルゴリズム-12: 深さ優先探索(DFS)
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 12, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズムはどれか。\n\n「グラフ探索において、行き止まりに達するまで深く進み、行き止まりになったら一つ前の頂点に戻って別の経路を試す。スタックまたは再帰で実装する。」',
   'スタック/再帰で深く掘り進む。O(V+E)。連結性・閉路検出・トポロジカルソートの基礎となる。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '深さ優先探索', NULL, true),
  (currval('questions_id_seq'), '幅優先探索', NULL, false),
  (currval('questions_id_seq'), 'ダイクストラ法', NULL, false),
  (currval('questions_id_seq'), 'A*探索', NULL, false);

-- アルゴリズム-13: ダイクストラ法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 13, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズムはどれか。\n\n「非負の重みを持つグラフで、始点から各頂点への最短路を求める。優先度付きキューを使い、コストが最小の未確定頂点を順次確定させていく。」',
   '非負重み付きグラフの単一始点最短路。優先キュー使用で O((V+E) log V)。負の辺には使えない。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ダイクストラ法', NULL, true),
  (currval('questions_id_seq'), 'ベルマン-フォード法', NULL, false),
  (currval('questions_id_seq'), 'A*探索', NULL, false),
  (currval('questions_id_seq'), '幅優先探索', NULL, false);

-- アルゴリズム-14: A*アルゴリズム
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 14, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズムはどれか。\n\n「始点から目標頂点への最短路探索で、始点からのコスト g(n) と目標までの推定コスト h(n) の和 f(n)=g(n)+h(n) が最小の頂点を優先して探索する。」',
   'ヒューリスティック関数を加えたダイクストラ法の拡張。h(n) が許容的（実コスト以下）なら最適解を保証。ゲーム経路探索に広く利用。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'A*アルゴリズム', NULL, true),
  (currval('questions_id_seq'), 'ダイクストラ法', NULL, false),
  (currval('questions_id_seq'), 'ベストファースト探索', NULL, false),
  (currval('questions_id_seq'), '幅優先探索', NULL, false);

-- ---- グラフ（Q15〜Q21）----

-- アルゴリズム-15: ベルマン-フォード法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 15, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズムはどれか。\n\n「負の重みを含むグラフでも単一始点最短路を求められる。全辺を V-1 回繰り返し緩和し、さらにもう1回緩和できる辺が存在すれば負の閉路があると判定する。」',
   '負の重みを含むグラフに対応した最短路アルゴリズム。O(VE)。負閉路の検出も可能。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ベルマン-フォード法', NULL, true),
  (currval('questions_id_seq'), 'ダイクストラ法', NULL, false),
  (currval('questions_id_seq'), 'フロイド-ウォーシャル法', NULL, false),
  (currval('questions_id_seq'), 'A*探索', NULL, false);

-- アルゴリズム-16: フロイド-ウォーシャル法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 16, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズムはどれか。\n\n「全頂点間の最短路を動的計画法で求める。中継頂点 k を 0 から V-1 まで順に追加しながら dist[i][j] を更新し、全ペアの最短路を同時に求める。」',
   '全点対最短路を O(V³) で求めるDP。負の辺も扱えるが負閉路があると正しく動作しない。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'フロイド-ウォーシャル法', NULL, true),
  (currval('questions_id_seq'), 'ベルマン-フォード法', NULL, false),
  (currval('questions_id_seq'), 'ダイクストラ法', NULL, false),
  (currval('questions_id_seq'), 'ジョンソン法', NULL, false);

-- アルゴリズム-17: クラスカル法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 17, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズムはどれか。\n\n「グラフの全辺を重みの小さい順に並べ、閉路を形成しない辺だけを選んで追加していくことで最小全域木を構築する。Union-Find を用いて閉路の有無を効率的に判定する。」',
   '辺を重みの小さい順に追加して最小全域木を構築する貪欲法。Union-Find 使用で O(E log E)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'クラスカル法', NULL, true),
  (currval('questions_id_seq'), 'プリム法', NULL, false),
  (currval('questions_id_seq'), 'ボルーフカ法', NULL, false),
  (currval('questions_id_seq'), 'ダイクストラ法', NULL, false);

-- アルゴリズム-18: プリム法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 18, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズムはどれか。\n\n「最小全域木を構築する際、既存の木から到達できる辺のうちコストが最小の辺を選んで新しい頂点を木に追加する操作を繰り返す。優先度付きキューで効率化できる。」',
   '頂点を一つずつ追加して最小全域木を構築する貪欲法。優先キュー使用で O((V+E) log V)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'プリム法', NULL, true),
  (currval('questions_id_seq'), 'クラスカル法', NULL, false),
  (currval('questions_id_seq'), 'ボルーフカ法', NULL, false),
  (currval('questions_id_seq'), 'ダイクストラ法', NULL, false);

-- アルゴリズム-19: トポロジカルソート
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 19, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズムはどれか。\n\n「有向非巡回グラフ（DAG）の全頂点を、各辺 (u→v) において u が v より前になるよう一列に並べる。タスクの依存関係解決やビルドシステムに利用される。」',
   'DAG の頂点を依存関係順に並べる。カーン法（入次数0→キュー）または DFS で O(V+E)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'トポロジカルソート', NULL, true),
  (currval('questions_id_seq'), '深さ優先探索', NULL, false),
  (currval('questions_id_seq'), '幅優先探索', NULL, false),
  (currval('questions_id_seq'), '強連結成分分解', NULL, false);

-- アルゴリズム-20: 強連結成分分解(SCC)
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 20, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズムはどれか。\n\n「有向グラフを、互いに到達可能な頂点の集合（強連結成分）に分解する。コサラジュ法やタジャン法により O(V+E) で解ける。」',
   '有向グラフの強連結成分を求める。コサラジュ法: 正逆2回 DFS。タジャン法: 1回 DFS + スタック。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '強連結成分分解', NULL, true),
  (currval('questions_id_seq'), '連結成分分解', NULL, false),
  (currval('questions_id_seq'), 'トポロジカルソート', NULL, false),
  (currval('questions_id_seq'), '深さ優先探索', NULL, false);

-- アルゴリズム-21: 最大流（フォード-ファルカーソン法）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 21, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズムはどれか。\n\n「容量制約のあるネットワークで、始点（ソース）から終点（シンク）への最大フローを求める。残余グラフ上で増加路を繰り返し見つけてフローを増やす。」',
   '残余グラフで増加路を繰り返し探してフローを増加させる最大流アルゴリズム。最大流 = 最小カット（最大フロー最小カット定理）。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'フォード-ファルカーソン法', NULL, true),
  (currval('questions_id_seq'), 'ダイクストラ法', NULL, false),
  (currval('questions_id_seq'), 'クラスカル法', NULL, false),
  (currval('questions_id_seq'), 'ベルマン-フォード法', NULL, false);

-- ---- データ構造（Q22〜Q28）----

-- アルゴリズム-22: スタック
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 22, 'choice', 1, 1,
   E'次の説明に当てはまるデータ構造はどれか。\n\n「後入れ先出し（LIFO）の原則で動作するデータ構造。最後に追加（push）した要素が最初に取り出される（pop）。括弧の対応チェックや DFS の実装に使われる。」',
   'LIFO 構造。push/pop ともに O(1)。関数呼び出しスタック・括弧チェック・DFS に活用。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'スタック', NULL, true),
  (currval('questions_id_seq'), 'キュー', NULL, false),
  (currval('questions_id_seq'), '優先度付きキュー', NULL, false),
  (currval('questions_id_seq'), '双方向キュー', NULL, false);

-- アルゴリズム-23: キュー
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 23, 'choice', 1, 1,
   E'次の説明に当てはまるデータ構造はどれか。\n\n「先入れ先出し（FIFO）の原則で動作するデータ構造。最初に追加した要素が最初に取り出される。BFS の実装やタスクスケジューリングに使われる。」',
   'FIFO 構造。enqueue/dequeue ともに O(1)（連結リスト実装時）。BFS・プリンタキューなどに活用。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'キュー', NULL, true),
  (currval('questions_id_seq'), 'スタック', NULL, false),
  (currval('questions_id_seq'), '優先度付きキュー', NULL, false),
  (currval('questions_id_seq'), '双方向リスト', NULL, false);

-- アルゴリズム-24: 優先度付きキュー（ヒープ）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 24, 'choice', 1, 1,
   E'次の説明に当てはまるデータ構造はどれか。\n\n「要素に優先度を持たせ、常に優先度が最高（最小値や最大値）の要素を効率的に取り出せる。二分ヒープで実装するとき、挿入・取り出しともに O(log n) で動作する。」',
   '二分ヒープで実装。挿入・最小値取得ともに O(log n)。ダイクストラ法・ヒープソート・タスクスケジューリングに活用。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '優先度付きキュー', NULL, true),
  (currval('questions_id_seq'), 'キュー', NULL, false),
  (currval('questions_id_seq'), 'スタック', NULL, false),
  (currval('questions_id_seq'), '二分探索木', NULL, false);

-- アルゴリズム-25: ハッシュテーブル
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 25, 'choice', 1, 1,
   E'次の説明に当てはまるデータ構造はどれか。\n\n「キーにハッシュ関数を適用してインデックスを計算し、直接値にアクセスするデータ構造。平均して O(1) の検索・挿入・削除が可能だが、衝突が多いと性能が低下する。」',
   'ハッシュ関数でキーをインデックスに変換。平均 O(1) の検索・挿入・削除。衝突は連鎖法や開番地法で解決。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ハッシュテーブル', NULL, true),
  (currval('questions_id_seq'), '二分探索木', NULL, false),
  (currval('questions_id_seq'), '配列', NULL, false),
  (currval('questions_id_seq'), '連結リスト', NULL, false);

-- アルゴリズム-26: 二分探索木(BST)
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 26, 'choice', 1, 1,
   E'次の説明に当てはまるデータ構造はどれか。\n\n「各ノードについて、左の子孫の値はノードより小さく、右の子孫の値はノードより大きいという性質を持つ木構造。中順（in-order）巡回で昇順に要素を列挙できる。」',
   '左子 < 親 < 右子 の性質を持つ木。平均的な探索・挿入・削除は O(log n) だが、偏ると O(n) に劣化。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '二分探索木', NULL, true),
  (currval('questions_id_seq'), 'ハッシュテーブル', NULL, false),
  (currval('questions_id_seq'), 'ヒープ', NULL, false),
  (currval('questions_id_seq'), 'AVL木', NULL, false);

-- アルゴリズム-27: Union-Find
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 27, 'choice', 1, 1,
   E'次の説明に当てはまるデータ構造はどれか。\n\n「素集合（互いに素な集合）を管理し、「同じ集合か判定する（find）」と「2つの集合を合併する（union）」操作を効率的にサポートする。経路圧縮とランクによる最適化でほぼ O(1) を実現。」',
   '素集合の合併・代表元検索を管理。経路圧縮 + ランクで実質 O(α(n))。最小全域木・連結成分管理に活用。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'Union-Find', NULL, true),
  (currval('questions_id_seq'), 'セグメント木', NULL, false),
  (currval('questions_id_seq'), '二分索引木', NULL, false),
  (currval('questions_id_seq'), 'ハッシュテーブル', NULL, false);

-- アルゴリズム-28: セグメント木
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 28, 'choice', 1, 1,
   E'次の説明に当てはまるデータ構造はどれか。\n\n「配列の区間に対するクエリ（区間の和・最大値・最小値など）を O(log n) で処理できる木構造。1点更新も O(log n) で行える。」',
   '区間クエリと1点更新をそれぞれ O(log n) で処理。完全二分木で実装。区間最大・最小・和の問題に広く活用。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'セグメント木', NULL, true),
  (currval('questions_id_seq'), '二分索引木（BIT）', NULL, false),
  (currval('questions_id_seq'), 'Union-Find', NULL, false),
  (currval('questions_id_seq'), 'ハッシュテーブル', NULL, false);

-- ---- アルゴリズム手法（Q29〜Q35）----

-- アルゴリズム-29: 動的計画法(DP)
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 29, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズム手法はどれか。\n\n「問題を複数の部分問題に分解し、各部分問題の解を表（メモ）に保存して再利用することで、同じ計算を繰り返すことなく全体の解を求める。」',
   '部分問題の解を保存して再利用することで重複計算を回避。ナップサック・LCS・最短路などの最適化問題に適用。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '動的計画法', NULL, true),
  (currval('questions_id_seq'), '貪欲法', NULL, false),
  (currval('questions_id_seq'), '分割統治法', NULL, false),
  (currval('questions_id_seq'), 'バックトラッキング', NULL, false);

-- アルゴリズム-30: 貪欲法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 30, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズム手法はどれか。\n\n「各ステップで局所的に最適な選択（その時点で最善に見える選択）を繰り返すことで全体の解を求める。将来を見越さず現在の最良選択を積み重ねる。」',
   '各ステップで局所最適な選択を積み重ねる。区間スケジューリング・コイン問題（特定条件下）などに有効。全問題に通用するわけではない。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '貪欲法', NULL, true),
  (currval('questions_id_seq'), '動的計画法', NULL, false),
  (currval('questions_id_seq'), 'バックトラッキング', NULL, false),
  (currval('questions_id_seq'), '分割統治法', NULL, false);

-- アルゴリズム-31: 分割統治法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 31, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズム手法はどれか。\n\n「問題を独立した小さな部分問題に分割し、各部分問題を再帰的に解いて、得られた解を統合して全体の解を求める。部分問題間に重複がない点が動的計画法と異なる。」',
   '分割→再帰解→統合のパターン。部分問題が独立（重複なし）。マージソート・クイックソート・FFT などに適用。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '分割統治法', NULL, true),
  (currval('questions_id_seq'), '動的計画法', NULL, false),
  (currval('questions_id_seq'), '貪欲法', NULL, false),
  (currval('questions_id_seq'), 'バックトラッキング', NULL, false);

-- アルゴリズム-32: バックトラッキング
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 32, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズム手法はどれか。\n\n「候補を1つ選んで試し、制約を違反したら直前の選択に戻って別の候補を試す操作を再帰的に繰り返す。N クイーン問題や数独の解法に使われる。」',
   '探索木を深さ優先で進み、不可能な経路は枝刈り（pruning）して戻る。組み合わせ最適化・制約充足問題に使用。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'バックトラッキング', NULL, true),
  (currval('questions_id_seq'), '動的計画法', NULL, false),
  (currval('questions_id_seq'), '貪欲法', NULL, false),
  (currval('questions_id_seq'), '分枝限定法', NULL, false);

-- アルゴリズム-33: 累積和
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 33, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズム手法はどれか。\n\n「配列に対して O(n) の前処理を行うことで、その後の区間 [l, r] の合計を O(1) で求められるようにする手法。prefix[r] - prefix[l] の演算で区間和を求める。」',
   'O(n) 前処理で O(1) の区間和クエリを実現。prefix[i+1] = prefix[i] + a[i] で構築し、range_sum = prefix[r] - prefix[l]。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '累積和', NULL, true),
  (currval('questions_id_seq'), 'しゃくとり法', NULL, false),
  (currval('questions_id_seq'), '差分配列', NULL, false),
  (currval('questions_id_seq'), '座標圧縮', NULL, false);

-- アルゴリズム-34: しゃくとり法（二ポインタ法）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 34, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズム手法はどれか。\n\n「左端と右端の2つのポインタを使い、条件を満たす連続する部分配列を効率的に列挙する。右端を進めてウィンドウを広げ、条件を外れたら左端を進める操作を繰り返す。」',
   '2ポインタで条件を満たす連続部分配列を O(n) で列挙。スライディングウィンドウとも呼ばれる。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'しゃくとり法', NULL, true),
  (currval('questions_id_seq'), '累積和', NULL, false),
  (currval('questions_id_seq'), '差分配列', NULL, false),
  (currval('questions_id_seq'), '二分探索', NULL, false);

-- アルゴリズム-35: 座標圧縮
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (41, NULL, 35, 'choice', 1, 1,
   E'次の説明に当てはまるアルゴリズム手法はどれか。\n\n「値域が広い（例: 10^9 まで）が個数が少ない（例: n ≤ 10^5）場合に、実際に現れる値だけを小さな連番の添字に置き換えて処理を効率化する手法。」',
   '値を sorted(set(arr)) で一意化し、辞書でインデックスに対応させる。セグメント木・BIT などと組み合わせて広値域データを扱う。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '座標圧縮', NULL, true),
  (currval('questions_id_seq'), '累積和', NULL, false),
  (currval('questions_id_seq'), 'しゃくとり法', NULL, false),
  (currval('questions_id_seq'), 'ハッシュテーブル', NULL, false);

-- ============================================================
-- 計算量（section_id=42）Q1〜Q21
-- ============================================================

-- 計算量-1: バブルソート（最悪）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (42, NULL, 1, 'choice', 1, 1,
   E'次のアルゴリズムの最悪時間計算量として正しいものはどれか。\n\n「バブルソート（n 要素）」',
   '逆順に並んだ場合が最悪。n-1 回のパスで各パス O(n) の比較が必要。合計 O(n²)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(n²)', NULL, true),
  (currval('questions_id_seq'), 'O(n log n)', NULL, false),
  (currval('questions_id_seq'), 'O(n)', NULL, false),
  (currval('questions_id_seq'), 'O(log n)', NULL, false);

-- 計算量-2: 二分探索
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (42, NULL, 2, 'choice', 1, 1,
   E'次のアルゴリズムの時間計算量として正しいものはどれか。\n\n「二分探索（n 要素のソート済み配列）」',
   '探索範囲を毎回半分に絞る。最悪で log₂n 回の比較が必要。O(log n)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(log n)', NULL, true),
  (currval('questions_id_seq'), 'O(n)', NULL, false),
  (currval('questions_id_seq'), 'O(1)', NULL, false),
  (currval('questions_id_seq'), 'O(n log n)', NULL, false);

-- 計算量-3: マージソート
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (42, NULL, 3, 'choice', 1, 1,
   E'次のアルゴリズムの時間計算量として正しいものはどれか。\n\n「マージソート（n 要素）」',
   '深さ log n の再帰で各レベルで O(n) のマージ処理。最悪・平均ともに O(n log n)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(n log n)', NULL, true),
  (currval('questions_id_seq'), 'O(n²)', NULL, false),
  (currval('questions_id_seq'), 'O(n)', NULL, false),
  (currval('questions_id_seq'), 'O(log n)', NULL, false);

-- 計算量-4: ハッシュテーブル（平均検索）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (42, NULL, 4, 'choice', 1, 1,
   E'次のアルゴリズムの平均時間計算量として正しいものはどれか。\n\n「ハッシュテーブルのキー検索（衝突が少ない良好な状態）」',
   'ハッシュ関数でインデックスを計算して直接アクセス。衝突が少なければ O(1)。最悪は O(n)（全要素が同じバケット）。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(1)', NULL, true),
  (currval('questions_id_seq'), 'O(log n)', NULL, false),
  (currval('questions_id_seq'), 'O(n)', NULL, false),
  (currval('questions_id_seq'), 'O(n log n)', NULL, false);

-- 計算量-5: BFS/DFS
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (42, NULL, 5, 'choice', 1, 1,
   E'次のアルゴリズムの時間計算量として正しいものはどれか。\n\n「幅優先探索（BFS）または深さ優先探索（DFS）：V 頂点 E 辺のグラフ」',
   '各頂点を1回、各辺を1〜2回処理。合計 O(V+E)。疎なグラフでは V² より効率的。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(V+E)', NULL, true),
  (currval('questions_id_seq'), 'O(VE)', NULL, false),
  (currval('questions_id_seq'), 'O(V²)', NULL, false),
  (currval('questions_id_seq'), 'O(V log V)', NULL, false);

-- 計算量-6: ダイクストラ法（二分ヒープ）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (42, NULL, 6, 'choice', 1, 1,
   E'次のアルゴリズムの時間計算量として正しいものはどれか。\n\n「ダイクストラ法（二分ヒープを使った優先度付きキュー実装、V 頂点 E 辺）」',
   '頂点の取り出しが V 回 × O(log V)、辺の緩和が E 回 × O(log V)。合計 O((V+E) log V)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O((V+E) log V)', NULL, true),
  (currval('questions_id_seq'), 'O(V²)', NULL, false),
  (currval('questions_id_seq'), 'O(VE)', NULL, false),
  (currval('questions_id_seq'), 'O(V log E)', NULL, false);

-- 計算量-7: フロイド-ウォーシャル法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (42, NULL, 7, 'choice', 1, 1,
   E'次のアルゴリズムの時間計算量として正しいものはどれか。\n\n「フロイド-ウォーシャル法（V 頂点の全点対最短路）」',
   '中継頂点 k を V 通り試し、各 (i, j) ペアを更新。3重ループで O(V³)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(V³)', NULL, true),
  (currval('questions_id_seq'), 'O(V²)', NULL, false),
  (currval('questions_id_seq'), 'O(V² log V)', NULL, false),
  (currval('questions_id_seq'), 'O(VE)', NULL, false);

-- 計算量-8: クイックソート（平均）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (42, NULL, 8, 'choice', 1, 1,
   E'次のアルゴリズムの平均時間計算量として正しいものはどれか。\n\n「クイックソート（n 要素、ランダムなピボット選択）」',
   'ランダムピボット選択時、平均的に均等分割される。再帰の深さ O(log n) × 各レベル O(n) = 平均 O(n log n)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(n log n)', NULL, true),
  (currval('questions_id_seq'), 'O(n²)', NULL, false),
  (currval('questions_id_seq'), 'O(n)', NULL, false),
  (currval('questions_id_seq'), 'O(log n)', NULL, false);

-- 計算量-9: クイックソート（最悪）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (42, NULL, 9, 'choice', 1, 1,
   E'次のアルゴリズムの最悪時間計算量として正しいものはどれか。\n\n「クイックソート（n 要素、常に最小値または最大値をピボットに選ぶ場合）」',
   '毎回ピボットが端になると n-1, n-2, ... の再帰が続く。合計比較数は O(n²)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(n²)', NULL, true),
  (currval('questions_id_seq'), 'O(n log n)', NULL, false),
  (currval('questions_id_seq'), 'O(n)', NULL, false),
  (currval('questions_id_seq'), 'O(n³)', NULL, false);

-- 計算量-10: ヒープソート
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (42, NULL, 10, 'choice', 1, 1,
   E'次のアルゴリズムの時間計算量として正しいものはどれか。\n\n「ヒープソート（n 要素）」',
   'ヒープ構築 O(n) + n 回の取り出し O(n log n)。最悪・平均ともに O(n log n)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(n log n)', NULL, true),
  (currval('questions_id_seq'), 'O(n²)', NULL, false),
  (currval('questions_id_seq'), 'O(n)', NULL, false),
  (currval('questions_id_seq'), 'O(log n)', NULL, false);

-- 計算量-11: 線形探索
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (42, NULL, 11, 'choice', 1, 1,
   E'次のアルゴリズムの最悪時間計算量として正しいものはどれか。\n\n「線形探索（n 要素の未ソート配列）」',
   '目的の値が末尾か存在しない場合、全 n 要素を調べる必要がある。O(n)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(n)', NULL, true),
  (currval('questions_id_seq'), 'O(log n)', NULL, false),
  (currval('questions_id_seq'), 'O(1)', NULL, false),
  (currval('questions_id_seq'), 'O(n²)', NULL, false);

-- 計算量-12: セグメント木（区間クエリ）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (42, NULL, 12, 'choice', 1, 1,
   E'次のアルゴリズムの時間計算量として正しいものはどれか。\n\n「セグメント木の区間クエリ（n 要素）」',
   '完全二分木で区間を O(log n) ノードに分割して処理。1点更新も同様に O(log n)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(log n)', NULL, true),
  (currval('questions_id_seq'), 'O(n)', NULL, false),
  (currval('questions_id_seq'), 'O(1)', NULL, false),
  (currval('questions_id_seq'), 'O(n log n)', NULL, false);

-- 計算量-13: ベルマン-フォード法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (42, NULL, 13, 'choice', 1, 1,
   E'次のアルゴリズムの時間計算量として正しいものはどれか。\n\n「ベルマン-フォード法（V 頂点 E 辺）」',
   'V-1 回の反復で各回 E 辺を緩和。合計 O(VE)。ダイクストラ法より遅いが負の辺に対応。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(VE)', NULL, true),
  (currval('questions_id_seq'), 'O(V+E)', NULL, false),
  (currval('questions_id_seq'), 'O(V² log V)', NULL, false),
  (currval('questions_id_seq'), 'O(V³)', NULL, false);

-- 計算量-14: 挿入ソート（最良）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (42, NULL, 14, 'choice', 1, 1,
   E'次のアルゴリズムの最良時間計算量として正しいものはどれか。\n\n「挿入ソート（n 要素、すでに整列済みの場合）」',
   'すでに整列済みなら各要素の挿入位置は1回の比較で確定。合計 O(n) の比較のみ。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(n)', NULL, true),
  (currval('questions_id_seq'), 'O(n²)', NULL, false),
  (currval('questions_id_seq'), 'O(n log n)', NULL, false),
  (currval('questions_id_seq'), 'O(log n)', NULL, false);

-- 計算量-15: Union-Find（経路圧縮 + ランク）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (42, NULL, 15, 'choice', 1, 1,
   E'次のアルゴリズムの1回の操作あたりの償却時間計算量として正しいものはどれか。\n\n「Union-Find の find/union 操作（経路圧縮 + ランクによる最適化）」',
   '経路圧縮とランクを組み合わせると実質定数時間。厳密には O(α(n))（α はアッカーマン関数の逆関数、実用上ほぼ 1）。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(α(n))', NULL, true),
  (currval('questions_id_seq'), 'O(log n)', NULL, false),
  (currval('questions_id_seq'), 'O(n)', NULL, false),
  (currval('questions_id_seq'), 'O(1)', NULL, false);

-- 計算量-16: カウンティングソート
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (42, NULL, 16, 'choice', 1, 1,
   E'次のアルゴリズムの時間計算量として正しいものはどれか。\n\n「カウンティングソート（n 要素、値域が 0〜k）」',
   'カウント配列の初期化 O(k) + 要素の集計 O(n) + 出力 O(n+k)。合計 O(n+k)。k が小さいときに効率的。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(n+k)', NULL, true),
  (currval('questions_id_seq'), 'O(n log n)', NULL, false),
  (currval('questions_id_seq'), 'O(nk)', NULL, false),
  (currval('questions_id_seq'), 'O(n²)', NULL, false);

-- 計算量-17: ナップサックDP
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (42, NULL, 17, 'choice', 1, 1,
   E'次のアルゴリズムの時間計算量として正しいものはどれか。\n\n「0/1 ナップサック問題の動的計画法（n 個の品物、重量上限 W）」',
   '品物 n 個 × 重量 W 通りの dp テーブルを埋める。O(nW)。W が大きい場合は疑似多項式時間。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(nW)', NULL, true),
  (currval('questions_id_seq'), 'O(n²)', NULL, false),
  (currval('questions_id_seq'), 'O(2ⁿ)', NULL, false),
  (currval('questions_id_seq'), 'O(n log n)', NULL, false);

-- 計算量-18: 累積和（区間クエリ）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (42, NULL, 18, 'choice', 1, 1,
   E'次のアルゴリズムの時間計算量として正しいものはどれか。\n\n「累積和を使った区間 [l, r) の合計クエリ（O(n) の前処理実施済み）」',
   '前処理で prefix 配列を構築済みなら、prefix[r] - prefix[l] の1回の引き算で区間和が求まる。O(1)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(1)', NULL, true),
  (currval('questions_id_seq'), 'O(log n)', NULL, false),
  (currval('questions_id_seq'), 'O(n)', NULL, false),
  (currval('questions_id_seq'), 'O(n log n)', NULL, false);

-- 計算量-19: トポロジカルソート
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (42, NULL, 19, 'choice', 1, 1,
   E'次のアルゴリズムの時間計算量として正しいものはどれか。\n\n「トポロジカルソート（V 頂点 E 辺の DAG）」',
   '各頂点を1回キューに追加・取り出し、各辺を1回処理。合計 O(V+E)。BFS/DFS と同じオーダー。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(V+E)', NULL, true),
  (currval('questions_id_seq'), 'O(V log V)', NULL, false),
  (currval('questions_id_seq'), 'O(VE)', NULL, false),
  (currval('questions_id_seq'), 'O(V²)', NULL, false);

-- 計算量-20: プリム法（優先キュー）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (42, NULL, 20, 'choice', 1, 1,
   E'次のアルゴリズムの時間計算量として正しいものはどれか。\n\n「プリム法（優先度付きキュー使用、V 頂点 E 辺）」',
   '各頂点の追加 V 回 × O(log V) + 各辺の処理 E 回 × O(log V)。合計 O((V+E) log V)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O((V+E) log V)', NULL, true),
  (currval('questions_id_seq'), 'O(V²)', NULL, false),
  (currval('questions_id_seq'), 'O(VE)', NULL, false),
  (currval('questions_id_seq'), 'O(E log E)', NULL, false);

-- 計算量-21: 選択ソート
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (42, NULL, 21, 'choice', 1, 1,
   E'次のアルゴリズムの時間計算量として正しいものはどれか。\n\n「選択ソート（n 要素）」',
   '未整列部分から最小値を見つけるために常に O(n²) の比較が必要。入力の状態に関わらず常に O(n²)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'O(n²)', NULL, true),
  (currval('questions_id_seq'), 'O(n log n)', NULL, false),
  (currval('questions_id_seq'), 'O(n)', NULL, false),
  (currval('questions_id_seq'), 'O(n³)', NULL, false);
-- ============================================================
-- 実践（section_id=43）Q1〜Q35
-- ============================================================

-- 実践-1: バブルソート
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 1, 'choice', 1, 1,
   E'次のPythonコードが実装しているアルゴリズムはどれか。\n\ndef sort(arr):\n    n = len(arr)\n    for i in range(n):\n        for j in range(n - i - 1):\n            if arr[j] > arr[j + 1]:\n                arr[j], arr[j + 1] = arr[j + 1], arr[j]\n    return arr',
   '隣接要素を比較・交換するバブルソート。内側ループが n-i-1 回で毎パス最大値が末尾に移動する。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'バブルソート', NULL, true),
  (currval('questions_id_seq'), '選択ソート', NULL, false),
  (currval('questions_id_seq'), '挿入ソート', NULL, false),
  (currval('questions_id_seq'), 'クイックソート', NULL, false);

-- 実践-2: 選択ソート
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 2, 'choice', 1, 1,
   E'次のPythonコードが実装しているアルゴリズムはどれか。\n\ndef sort(arr):\n    n = len(arr)\n    for i in range(n):\n        min_idx = i\n        for j in range(i + 1, n):\n            if arr[j] < arr[min_idx]:\n                min_idx = j\n        arr[i], arr[min_idx] = arr[min_idx], arr[i]\n    return arr',
   '未整列部分から最小値の添字（min_idx）を探し先頭と交換する選択ソート。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '選択ソート', NULL, true),
  (currval('questions_id_seq'), 'バブルソート', NULL, false),
  (currval('questions_id_seq'), '挿入ソート', NULL, false),
  (currval('questions_id_seq'), 'マージソート', NULL, false);

-- 実践-3: 挿入ソート
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 3, 'choice', 1, 1,
   E'次のPythonコードが実装しているアルゴリズムはどれか。\n\ndef sort(arr):\n    for i in range(1, len(arr)):\n        key = arr[i]\n        j = i - 1\n        while j >= 0 and arr[j] > key:\n            arr[j + 1] = arr[j]\n            j -= 1\n        arr[j + 1] = key\n    return arr',
   'key を整列済み部分に右シフトしながら挿入する挿入ソート。ほぼ整列済みなら最良 O(n)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '挿入ソート', NULL, true),
  (currval('questions_id_seq'), 'バブルソート', NULL, false),
  (currval('questions_id_seq'), '選択ソート', NULL, false),
  (currval('questions_id_seq'), 'シェルソート', NULL, false);

-- 実践-4: マージソート
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 4, 'choice', 1, 1,
   E'次のPythonコードが実装しているアルゴリズムはどれか。\n\ndef sort(arr):\n    if len(arr) <= 1:\n        return arr\n    mid = len(arr) // 2\n    L = sort(arr[:mid])\n    R = sort(arr[mid:])\n    return merge(L, R)\n\ndef merge(L, R):\n    result, i, j = [], 0, 0\n    while i < len(L) and j < len(R):\n        if L[i] <= R[j]:\n            result.append(L[i]); i += 1\n        else:\n            result.append(R[j]); j += 1\n    return result + L[i:] + R[j:]',
   '半分に分割して再帰的にソートし merge で統合するマージソート。安定で常に O(n log n)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'マージソート', NULL, true),
  (currval('questions_id_seq'), 'クイックソート', NULL, false),
  (currval('questions_id_seq'), 'ヒープソート', NULL, false),
  (currval('questions_id_seq'), '選択ソート', NULL, false);

-- 実践-5: クイックソート
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 5, 'choice', 1, 1,
   E'次のPythonコードが実装しているアルゴリズムはどれか。\n\ndef sort(arr):\n    if len(arr) <= 1:\n        return arr\n    pivot = arr[len(arr) // 2]\n    left  = [x for x in arr if x < pivot]\n    mid   = [x for x in arr if x == pivot]\n    right = [x for x in arr if x > pivot]\n    return sort(left) + mid + sort(right)',
   'pivot を基準に left/mid/right に分割し再帰するクイックソート。平均 O(n log n)、最悪 O(n²)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'クイックソート', NULL, true),
  (currval('questions_id_seq'), 'マージソート', NULL, false),
  (currval('questions_id_seq'), 'ヒープソート', NULL, false),
  (currval('questions_id_seq'), '挿入ソート', NULL, false);

-- 実践-6: 二分探索
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 6, 'choice', 1, 1,
   E'次のPythonコードが実装しているアルゴリズムはどれか。\n\ndef search(arr, target):\n    lo, hi = 0, len(arr) - 1\n    while lo <= hi:\n        mid = (lo + hi) // 2\n        if arr[mid] == target:\n            return mid\n        elif arr[mid] < target:\n            lo = mid + 1\n        else:\n            hi = mid - 1\n    return -1',
   'ソート済み配列の中央 mid と target を比較し範囲を半分に絞る二分探索。O(log n)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '二分探索', NULL, true),
  (currval('questions_id_seq'), '線形探索', NULL, false),
  (currval('questions_id_seq'), '補間探索', NULL, false),
  (currval('questions_id_seq'), '深さ優先探索', NULL, false);

-- 実践-7: BFS
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 7, 'choice', 1, 1,
   E'次のPythonコードが実装しているアルゴリズムはどれか。\n\nfrom collections import deque\n\ndef traverse(graph, start):\n    visited = set([start])\n    queue = deque([start])\n    while queue:\n        v = queue.popleft()\n        for u in graph[v]:\n            if u not in visited:\n                visited.add(u)\n                queue.append(u)\n    return visited',
   'deque を使いキューから popleft() で取り出す幅優先探索(BFS)。始点に近い頂点から順に探索。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '幅優先探索(BFS)', NULL, true),
  (currval('questions_id_seq'), '深さ優先探索(DFS)', NULL, false),
  (currval('questions_id_seq'), 'ダイクストラ法', NULL, false),
  (currval('questions_id_seq'), 'トポロジカルソート', NULL, false);

-- 実践-8: DFS（再帰）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 8, 'choice', 1, 1,
   E'次のPythonコードが実装しているアルゴリズムはどれか。\n\ndef traverse(graph, v, visited=None):\n    if visited is None:\n        visited = set()\n    visited.add(v)\n    for u in graph[v]:\n        if u not in visited:\n            traverse(graph, u, visited)\n    return visited',
   '再帰で深く掘り進む深さ優先探索(DFS)。visited で重複訪問を防ぎ、バックトラックは再帰の戻りで実現。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '深さ優先探索(DFS)', NULL, true),
  (currval('questions_id_seq'), '幅優先探索(BFS)', NULL, false),
  (currval('questions_id_seq'), 'バックトラッキング', NULL, false),
  (currval('questions_id_seq'), 'ダイクストラ法', NULL, false);

-- 実践-9: DFS（スタック・反復）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 9, 'choice', 1, 1,
   E'次のPythonコードが実装しているアルゴリズムはどれか。\n\ndef traverse(graph, start):\n    visited = set()\n    stack = [start]\n    while stack:\n        v = stack.pop()\n        if v in visited:\n            continue\n        visited.add(v)\n        for u in graph[v]:\n            if u not in visited:\n                stack.append(u)\n    return visited',
   'スタック（list の pop()）を使った反復版の深さ優先探索(DFS)。再帰を使わずに DFS と同じ探索順を実現。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '深さ優先探索(DFS)', NULL, true),
  (currval('questions_id_seq'), '幅優先探索(BFS)', NULL, false),
  (currval('questions_id_seq'), '線形探索', NULL, false),
  (currval('questions_id_seq'), 'トポロジカルソート', NULL, false);

-- 実践-10: ダイクストラ法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 10, 'choice', 1, 1,
   E'次のPythonコードが実装しているアルゴリズムはどれか。\n\nimport heapq\n\ndef shortest_path(graph, start):\n    n = len(graph)\n    dist = [10**18] * n\n    dist[start] = 0\n    pq = [(0, start)]\n    while pq:\n        d, v = heapq.heappop(pq)\n        if d > dist[v]:\n            continue\n        for u, w in graph[v]:\n            if dist[v] + w < dist[u]:\n                dist[u] = dist[v] + w\n                heapq.heappush(pq, (dist[u], u))\n    return dist',
   'heapq を優先度付きキューとして使い、コスト最小の頂点から確定させるダイクストラ法。O((V+E) log V)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ダイクストラ法', NULL, true),
  (currval('questions_id_seq'), 'ベルマン-フォード法', NULL, false),
  (currval('questions_id_seq'), 'BFS', NULL, false),
  (currval('questions_id_seq'), 'プリム法', NULL, false);

-- 実践-11: ベルマン-フォード法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 11, 'choice', 1, 1,
   E'次のPythonコードが実装しているアルゴリズムはどれか。\n\ndef shortest_path(n, edges, start):\n    INF = 10**18\n    dist = [INF] * n\n    dist[start] = 0\n    for _ in range(n - 1):\n        for u, v, w in edges:\n            if dist[u] + w < dist[v]:\n                dist[v] = dist[u] + w\n    for u, v, w in edges:\n        if dist[u] + w < dist[v]:\n            return None  # 負閉路あり\n    return dist',
   '全辺を V-1 回繰り返し緩和するベルマン-フォード法。V 回目に更新できれば負閉路あり。O(VE)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ベルマン-フォード法', NULL, true),
  (currval('questions_id_seq'), 'ダイクストラ法', NULL, false),
  (currval('questions_id_seq'), 'フロイド-ウォーシャル法', NULL, false),
  (currval('questions_id_seq'), 'BFS', NULL, false);

-- 実践-12: フロイド-ウォーシャル法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 12, 'choice', 1, 1,
   E'次のPythonコードが実装しているアルゴリズムはどれか。\n\ndef all_pairs_shortest(dist):\n    n = len(dist)\n    for k in range(n):\n        for i in range(n):\n            for j in range(n):\n                if dist[i][k] + dist[k][j] < dist[i][j]:\n                    dist[i][j] = dist[i][k] + dist[k][j]\n    return dist',
   '中継頂点 k を 0〜n-1 で増やしながら全点対 (i,j) の最短路を更新するフロイド-ウォーシャル法。O(V³)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'フロイド-ウォーシャル法', NULL, true),
  (currval('questions_id_seq'), 'ベルマン-フォード法', NULL, false),
  (currval('questions_id_seq'), 'ダイクストラ法', NULL, false),
  (currval('questions_id_seq'), '動的計画法(DP)', NULL, false);

-- 実践-13: Union-Find
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 13, 'choice', 1, 1,
   E'次のPythonコードが実装しているデータ構造はどれか。\n\nclass UF:\n    def __init__(self, n):\n        self.parent = list(range(n))\n        self.rank = [0] * n\n\n    def find(self, x):\n        if self.parent[x] != x:\n            self.parent[x] = self.find(self.parent[x])\n        return self.parent[x]\n\n    def union(self, x, y):\n        rx, ry = self.find(x), self.find(y)\n        if rx == ry:\n            return\n        if self.rank[rx] < self.rank[ry]:\n            rx, ry = ry, rx\n        self.parent[ry] = rx\n        if self.rank[rx] == self.rank[ry]:\n            self.rank[rx] += 1',
   '経路圧縮（find の再帰中に parent を根に付け替え）とランクを使った Union-Find。実質 O(α(n))。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'Union-Find', NULL, true),
  (currval('questions_id_seq'), '二分探索木', NULL, false),
  (currval('questions_id_seq'), 'セグメント木', NULL, false),
  (currval('questions_id_seq'), 'ハッシュテーブル', NULL, false);

-- 実践-14: クラスカル法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 14, 'choice', 1, 1,
   E'次のPythonコードが実装しているアルゴリズムはどれか。\n\ndef mst(n, edges):\n    edges.sort(key=lambda e: e[2])\n    parent = list(range(n))\n\n    def find(x):\n        while parent[x] != x:\n            parent[x] = parent[parent[x]]\n            x = parent[x]\n        return x\n\n    total = 0\n    for u, v, w in edges:\n        pu, pv = find(u), find(v)\n        if pu != pv:\n            parent[pu] = pv\n            total += w\n    return total',
   '辺を重みの昇順にソートし Union-Find で閉路を避けながら追加するクラスカル法（最小全域木）。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'クラスカル法', NULL, true),
  (currval('questions_id_seq'), 'プリム法', NULL, false),
  (currval('questions_id_seq'), 'ダイクストラ法', NULL, false),
  (currval('questions_id_seq'), 'トポロジカルソート', NULL, false);

-- 実践-15: プリム法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 15, 'choice', 1, 1,
   E'次のPythonコードが実装しているアルゴリズムはどれか。\n\nimport heapq\n\ndef mst(graph, start):\n    visited = set()\n    heap = [(0, start)]\n    total = 0\n    while heap:\n        cost, v = heapq.heappop(heap)\n        if v in visited:\n            continue\n        visited.add(v)\n        total += cost\n        for u, w in graph[v]:\n            if u not in visited:\n                heapq.heappush(heap, (w, u))\n    return total',
   'heapq で最小コストの辺を選びながら頂点を追加するプリム法（最小全域木）。ダイクストラ法と構造が似ている。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'プリム法', NULL, true),
  (currval('questions_id_seq'), 'クラスカル法', NULL, false),
  (currval('questions_id_seq'), 'ダイクストラ法', NULL, false),
  (currval('questions_id_seq'), 'BFS', NULL, false);

-- 実践-16: トポロジカルソート（カーン法）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 16, 'choice', 1, 1,
   E'次のPythonコードが実装しているアルゴリズムはどれか。\n\nfrom collections import deque\n\ndef topo_sort(n, adj, indegree):\n    queue = deque(v for v in range(n) if indegree[v] == 0)\n    order = []\n    while queue:\n        v = queue.popleft()\n        order.append(v)\n        for u in adj[v]:\n            indegree[u] -= 1\n            if indegree[u] == 0:\n                queue.append(u)\n    return order',
   '入次数0の頂点をキューに入れ、辺を取り除きながら順序を確定するカーン法によるトポロジカルソート。O(V+E)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'トポロジカルソート', NULL, true),
  (currval('questions_id_seq'), '幅優先探索(BFS)', NULL, false),
  (currval('questions_id_seq'), '強連結成分分解', NULL, false),
  (currval('questions_id_seq'), 'ダイクストラ法', NULL, false);

-- 実践-17: 動的計画法（フィボナッチ、メモ化）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 17, 'choice', 1, 1,
   E'次のPythonコードが採用しているアルゴリズム手法はどれか。\n\ndef fib(n):\n    memo = {}\n    def helper(k):\n        if k in memo:\n            return memo[k]\n        if k <= 1:\n            return k\n        memo[k] = helper(k - 1) + helper(k - 2)\n        return memo[k]\n    return helper(n)',
   'memo 辞書に計算済みの部分問題の解を保存して再利用するメモ化再帰（トップダウン型 DP）。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '動的計画法（メモ化）', NULL, true),
  (currval('questions_id_seq'), '貪欲法', NULL, false),
  (currval('questions_id_seq'), '分割統治法', NULL, false),
  (currval('questions_id_seq'), 'バックトラッキング', NULL, false);

-- 実践-18: ナップサックDP
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 18, 'choice', 1, 1,
   E'次のPythonコードが実装しているアルゴリズムはどれか。\n\ndef knapsack(weights, values, W):\n    n = len(weights)\n    dp = [[0] * (W + 1) for _ in range(n + 1)]\n    for i in range(1, n + 1):\n        for w in range(W + 1):\n            dp[i][w] = dp[i - 1][w]\n            if weights[i - 1] <= w:\n                dp[i][w] = max(dp[i][w],\n                    dp[i - 1][w - weights[i - 1]] + values[i - 1])\n    return dp[n][W]',
   '品物 i を「入れる・入れない」の2択で dp テーブルを埋める 0/1 ナップサック問題の動的計画法。O(nW)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '動的計画法（ナップサック）', NULL, true),
  (currval('questions_id_seq'), '貪欲法', NULL, false),
  (currval('questions_id_seq'), '分割統治法', NULL, false),
  (currval('questions_id_seq'), 'バックトラッキング', NULL, false);

-- 実践-19: 最長共通部分列(LCS)
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 19, 'choice', 1, 1,
   E'次のPythonコードが解いている問題として最も適切なものはどれか。\n\ndef solve(s, t):\n    m, n = len(s), len(t)\n    dp = [[0] * (n + 1) for _ in range(m + 1)]\n    for i in range(1, m + 1):\n        for j in range(1, n + 1):\n            if s[i - 1] == t[j - 1]:\n                dp[i][j] = dp[i - 1][j - 1] + 1\n            else:\n                dp[i][j] = max(dp[i - 1][j], dp[i][j - 1])\n    return dp[m][n]',
   's[i-1]==t[j-1] なら dp[i][j]=dp[i-1][j-1]+1、異なれば max(上, 左) で最長共通部分列(LCS)の長さを求めている。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '最長共通部分列(LCS)', NULL, true),
  (currval('questions_id_seq'), '最長増加部分列(LIS)', NULL, false),
  (currval('questions_id_seq'), '編集距離', NULL, false),
  (currval('questions_id_seq'), 'ナップサック問題', NULL, false);

-- 実践-20: 累積和
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 20, 'choice', 1, 1,
   E'次のPythonコードが実装しているアルゴリズム手法はどれか。\n\ndef build(arr):\n    n = len(arr)\n    prefix = [0] * (n + 1)\n    for i in range(n):\n        prefix[i + 1] = prefix[i] + arr[i]\n    return prefix\n\ndef range_sum(prefix, l, r):  # [l, r) の合計\n    return prefix[r] - prefix[l]',
   'O(n) の前処理で prefix 配列を構築し、区間 [l,r) の合計を prefix[r]-prefix[l] の O(1) で求める累積和。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '累積和', NULL, true),
  (currval('questions_id_seq'), 'しゃくとり法', NULL, false),
  (currval('questions_id_seq'), '差分配列', NULL, false),
  (currval('questions_id_seq'), 'セグメント木', NULL, false);

-- 実践-21: しゃくとり法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 21, 'choice', 1, 1,
   E'次のPythonコードが実装しているアルゴリズム手法はどれか。\n\ndef max_len(arr, limit):\n    n = len(arr)\n    left = current = result = 0\n    for right in range(n):\n        current += arr[right]\n        while current > limit:\n            current -= arr[left]\n            left += 1\n        result = max(result, right - left + 1)\n    return result',
   'right を右に進めながら条件(current>limit)を超えたら left を右に縮めるしゃくとり法（二ポインタ法）。O(n)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'しゃくとり法', NULL, true),
  (currval('questions_id_seq'), '累積和', NULL, false),
  (currval('questions_id_seq'), '二分探索', NULL, false),
  (currval('questions_id_seq'), '動的計画法', NULL, false);

-- 実践-22: エラトステネスの篩
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 22, 'choice', 1, 1,
   E'次のPythonコードが実装しているアルゴリズムはどれか。\n\ndef primes(n):\n    is_prime = [True] * (n + 1)\n    is_prime[0] = is_prime[1] = False\n    for i in range(2, int(n**0.5) + 1):\n        if is_prime[i]:\n            for j in range(i * i, n + 1, i):\n                is_prime[j] = False\n    return [i for i in range(n + 1) if is_prime[i]]',
   'is_prime 配列を使い、素数 i の倍数を順に False にして n 以下の素数を列挙するエラトステネスの篩。O(n log log n)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'エラトステネスの篩', NULL, true),
  (currval('questions_id_seq'), '素数判定（試し割り）', NULL, false),
  (currval('questions_id_seq'), 'カウンティングソート', NULL, false),
  (currval('questions_id_seq'), '動的計画法', NULL, false);

-- 実践-23: GCD（ユークリッドの互除法）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 23, 'choice', 1, 1,
   E'次のPythonコードが実装しているアルゴリズムはどれか。\n\ndef gcd(a, b):\n    while b:\n        a, b = b, a % b\n    return a',
   'a と b の最大公約数を a=b, b=a%b の繰り返しで求めるユークリッドの互除法（GCD）。O(log min(a,b))。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'ユークリッドの互除法(GCD)', NULL, true),
  (currval('questions_id_seq'), '最小公倍数(LCM)', NULL, false),
  (currval('questions_id_seq'), '試し割り', NULL, false),
  (currval('questions_id_seq'), '繰り返し二乗法', NULL, false);

-- 実践-24: 繰り返し二乗法
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 24, 'choice', 1, 1,
   E'次のPythonコードが実装しているアルゴリズムはどれか。\n\ndef pow_mod(base, exp, mod):\n    result = 1\n    base %= mod\n    while exp > 0:\n        if exp % 2 == 1:\n            result = result * base % mod\n        base = base * base % mod\n        exp //= 2\n    return result',
   'exp を2進数として扱い、bit が立っているときだけ result に掛ける繰り返し二乗法。O(log exp) で大きな冪乗を計算。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '繰り返し二乗法', NULL, true),
  (currval('questions_id_seq'), 'ユークリッドの互除法', NULL, false),
  (currval('questions_id_seq'), 'ニュートン法', NULL, false),
  (currval('questions_id_seq'), '二分探索', NULL, false);

-- 実践-25: バックトラッキング（順列）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 25, 'choice', 1, 1,
   E'次のPythonコードが採用しているアルゴリズム手法はどれか。\n\ndef permutations(nums):\n    result = []\n    def backtrack(path, used):\n        if len(path) == len(nums):\n            result.append(path[:])\n            return\n        for i in range(len(nums)):\n            if not used[i]:\n                used[i] = True\n                path.append(nums[i])\n                backtrack(path, used)\n                path.pop()\n                used[i] = False\n    backtrack([], [False] * len(nums))\n    return result',
   '候補を選んで再帰し、戻るときに取り消す（path.pop(), used[i]=False）バックトラッキングで全順列を生成。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'バックトラッキング', NULL, true),
  (currval('questions_id_seq'), '動的計画法', NULL, false),
  (currval('questions_id_seq'), '貪欲法', NULL, false),
  (currval('questions_id_seq'), '分割統治法', NULL, false);

-- 実践-26: 最長増加部分列(LIS)
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 26, 'choice', 1, 1,
   E'次のPythonコードが解いている問題として最も適切なものはどれか。\n\nimport bisect\n\ndef solve(arr):\n    dp = []\n    for x in arr:\n        pos = bisect.bisect_left(dp, x)\n        if pos == len(dp):\n            dp.append(x)\n        else:\n            dp[pos] = x\n    return len(dp)',
   'dp に現在の最長増加列の末尾候補を保持し、bisect で挿入位置を求める O(n log n) の最長増加部分列(LIS)アルゴリズム。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '最長増加部分列(LIS)', NULL, true),
  (currval('questions_id_seq'), '最長共通部分列(LCS)', NULL, false),
  (currval('questions_id_seq'), '二分探索', NULL, false),
  (currval('questions_id_seq'), '動的計画法（基本）', NULL, false);

-- 実践-27: BIT（Fenwick木）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 27, 'choice', 1, 1,
   E'次のPythonコードが実装しているデータ構造はどれか。\n\nclass BIT:\n    def __init__(self, n):\n        self.n = n\n        self.data = [0] * (n + 1)\n\n    def add(self, i, x):\n        while i <= self.n:\n            self.data[i] += x\n            i += i & -i\n\n    def prefix_sum(self, i):\n        s = 0\n        while i > 0:\n            s += self.data[i]\n            i -= i & -i\n        return s',
   'i & -i（最下位ビット）を使って更新・累積和を O(log n) で計算する二分索引木（BIT / Fenwick Tree）。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '二分索引木(BIT)', NULL, true),
  (currval('questions_id_seq'), 'セグメント木', NULL, false),
  (currval('questions_id_seq'), 'Union-Find', NULL, false),
  (currval('questions_id_seq'), 'ハッシュテーブル', NULL, false);

-- 実践-28: 座標圧縮
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 28, 'choice', 1, 1,
   E'次のPythonコードが実装しているアルゴリズム手法はどれか。\n\ndef compress(arr):\n    unique = sorted(set(arr))\n    rank = {v: i for i, v in enumerate(unique)}\n    return [rank[x] for x in arr]',
   '実際に現れる値だけを sorted(set()) で一意化し、辞書で小さな連番の添字に置き換える座標圧縮。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '座標圧縮', NULL, true),
  (currval('questions_id_seq'), 'カウンティングソート', NULL, false),
  (currval('questions_id_seq'), 'ハッシュテーブル', NULL, false),
  (currval('questions_id_seq'), '累積和', NULL, false);

-- 実践-29: セグメント木
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 29, 'choice', 1, 1,
   E'次のPythonコードが実装しているデータ構造はどれか。\n\nclass SegTree:\n    def __init__(self, n):\n        self.n = n\n        self.data = [0] * (2 * n)\n\n    def update(self, i, v):\n        i += self.n\n        self.data[i] = v\n        while i > 1:\n            i >>= 1\n            self.data[i] = self.data[2*i] + self.data[2*i+1]\n\n    def query(self, l, r):  # [l, r)\n        l += self.n; r += self.n\n        s = 0\n        while l < r:\n            if l & 1: s += self.data[l]; l += 1\n            if r & 1: r -= 1; s += self.data[r]\n            l >>= 1; r >>= 1\n        return s',
   '完全二分木で区間和を管理するセグメント木。1点更新・区間クエリともに O(log n)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'セグメント木', NULL, true),
  (currval('questions_id_seq'), '二分索引木(BIT)', NULL, false),
  (currval('questions_id_seq'), 'Union-Find', NULL, false),
  (currval('questions_id_seq'), '二分探索木', NULL, false);

-- 実践-30: 貪欲法（区間スケジューリング）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 30, 'choice', 1, 1,
   E'次のPythonコードが採用しているアルゴリズム手法はどれか。\n\ndef max_events(intervals):\n    intervals.sort(key=lambda x: x[1])\n    count = 0\n    end = -1\n    for start, finish in intervals:\n        if start >= end:\n            count += 1\n            end = finish\n    return count',
   '終了時刻の早い順にソートし、重複しない区間を貪欲に選ぶ区間スケジューリング問題の貪欲法。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '貪欲法', NULL, true),
  (currval('questions_id_seq'), '動的計画法', NULL, false),
  (currval('questions_id_seq'), 'バックトラッキング', NULL, false),
  (currval('questions_id_seq'), '二分探索', NULL, false);

-- 実践-31: 強連結成分分解（コサラジュ法）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 31, 'choice', 1, 1,
   E'次のPythonコードが実装しているアルゴリズムはどれか。\n\ndef kosaraju(graph, rgraph, n):\n    visited = [False] * n\n    order = []\n    def dfs1(v):\n        visited[v] = True\n        for u in graph[v]: \n            if not visited[u]: dfs1(u)\n        order.append(v)\n    for i in range(n):\n        if not visited[i]: dfs1(i)\n    comp = [-1] * n\n    label = [0]\n    def dfs2(v):\n        comp[v] = label[0]\n        for u in rgraph[v]:\n            if comp[u] == -1: dfs2(u)\n    for v in reversed(order):\n        if comp[v] == -1:\n            dfs2(v); label[0] += 1\n    return comp',
   '正グラフで DFS して終了順を記録し、逆グラフで逆順に DFS して成分を確定するコサラジュ法（強連結成分分解）。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '強連結成分分解', NULL, true),
  (currval('questions_id_seq'), 'トポロジカルソート', NULL, false),
  (currval('questions_id_seq'), '連結成分分解', NULL, false),
  (currval('questions_id_seq'), '深さ優先探索(DFS)', NULL, false);

-- 実践-32: カウンティングソート
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 32, 'choice', 1, 1,
   E'次のPythonコードが実装しているアルゴリズムはどれか。\n\ndef sort(arr, max_val):\n    count = [0] * (max_val + 1)\n    for x in arr:\n        count[x] += 1\n    result = []\n    for val, c in enumerate(count):\n        result.extend([val] * c)\n    return result',
   'count 配列で各値の出現頻度を数え、頻度に応じて値を並べるカウンティングソート。比較不要で O(n+k)。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'カウンティングソート', NULL, true),
  (currval('questions_id_seq'), '基数ソート', NULL, false),
  (currval('questions_id_seq'), 'バケットソート', NULL, false),
  (currval('questions_id_seq'), '選択ソート', NULL, false);

-- 実践-33: コインチェンジ（DP）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 33, 'choice', 1, 1,
   E'次のPythonコードが解いている問題として最も適切なものはどれか。\n\ndef solve(coins, amount):\n    INF = 10**18\n    dp = [INF] * (amount + 1)\n    dp[0] = 0\n    for i in range(1, amount + 1):\n        for c in coins:\n            if c <= i and dp[i - c] + 1 < dp[i]:\n                dp[i] = dp[i - c] + 1\n    return dp[amount] if dp[amount] < INF else -1',
   'dp[i] = 金額 i を作るのに必要な最小コイン枚数 として配列を埋めるコインチェンジ問題の動的計画法。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'コインチェンジ（最小枚数DP）', NULL, true),
  (currval('questions_id_seq'), 'ナップサック問題', NULL, false),
  (currval('questions_id_seq'), '貪欲法（コイン）', NULL, false),
  (currval('questions_id_seq'), '累積和', NULL, false);

-- 実践-34: 連結成分数（DFS）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 34, 'choice', 1, 1,
   E'次のPythonコードが求めているものとして最も適切なものはどれか。\n\ndef count_components(n, edges):\n    graph = [[] for _ in range(n)]\n    for u, v in edges:\n        graph[u].append(v)\n        graph[v].append(u)\n    visited = [False] * n\n    def dfs(v):\n        visited[v] = True\n        for u in graph[v]:\n            if not visited[u]: dfs(u)\n    count = 0\n    for i in range(n):\n        if not visited[i]:\n            dfs(i)\n            count += 1\n    return count',
   '未訪問頂点から DFS を開始するたびに count を増やす。DFS を使って無向グラフの連結成分数を数えている。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), 'グラフの連結成分数', NULL, true),
  (currval('questions_id_seq'), '強連結成分数', NULL, false),
  (currval('questions_id_seq'), '最短路の本数', NULL, false),
  (currval('questions_id_seq'), 'トポロジカルソートの結果', NULL, false);

-- 実践-35: 優先度付きキュー（ヒープ）
INSERT INTO questions (section_id, group_id, question_number, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers) VALUES
  (43, NULL, 35, 'choice', 1, 1,
   E'次のPythonコードが実装しているデータ構造・アルゴリズムはどれか。\n\nimport heapq\n\ndef top_k_smallest(arr, k):\n    heap = []\n    for x in arr:\n        heapq.heappush(heap, x)\n    result = []\n    for _ in range(k):\n        result.append(heapq.heappop(heap))\n    return result',
   'heapq（最小ヒープ）に全要素を push した後、k 回 pop することで最小値から k 個を取り出す優先度付きキューの利用。',
   NULL, NULL, NULL);
INSERT INTO choices (question_id, choice_text, image_url, is_correct) VALUES
  (currval('questions_id_seq'), '優先度付きキュー（最小ヒープ）', NULL, true),
  (currval('questions_id_seq'), 'キュー（FIFO）', NULL, false),
  (currval('questions_id_seq'), 'スタック（LIFO）', NULL, false),
  (currval('questions_id_seq'), '二分探索木', NULL, false);
