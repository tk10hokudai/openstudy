<div id="top"></div>

## 使用技術一覧

<p style="display: inline">
  <img src="https://img.shields.io/badge/-TypeScript-3178C6.svg?logo=typescript&style=for-the-badge&logoColor=white">
  <img src="https://img.shields.io/badge/-Next.js-000000.svg?logo=next.js&style=for-the-badge">
  <img src="https://img.shields.io/badge/-React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB">
  <img src="https://img.shields.io/badge/-Supabase-3ECF8E.svg?logo=supabase&style=for-the-badge&logoColor=white">
  <img src="https://img.shields.io/badge/-PostgreSQL-336791.svg?logo=postgresql&style=for-the-badge&logoColor=white">
  <img src="https://img.shields.io/badge/-Vercel-000000.svg?logo=vercel&style=for-the-badge">
</p>

## 目次

1. [プロジェクトについて](#プロジェクトについて)
2. [環境](#環境)
3. [ディレクトリ構成](#ディレクトリ構成)
4. [DB スキーマ概要](#db-スキーマ概要)
5. [開発環境構築](#開発環境構築)
6. [トラブルシューティング](#トラブルシューティング)

<br />

## プロジェクト名

OpenStudy — 資格・就職試験対策 Web アプリ

## プロジェクトについて

試験・資格の模擬問題の演習、自分専用の問題集の作成・共有を行える Web アプリ。
模擬問題は各試験・資格ごとに問題が用意されており、ユーザーからのフィードバックをもとに AI が継続的に問題を更新する。

**対応試験（2026年4月時点）**

| 試験名 | 分野 |
| -------------------------------- | ------ |
| 基本情報技術者試験               | IT系   |
| 基本情報技術者試験【用語集】     | IT系   |
| TOEIC L&R                        | 語学系 |
| TOEIC L&R【単語集】              | 語学系 |
| SPI 試験                         | 就職   |

**主な機能**

- 分野別・問題数指定・リトライ・中断復元・コレクション演習など複数の出題モード
- 解答後の解説表示・進捗保存（Supabase DB / localStorage）・演習結果の記録
- 問題ごとのグッド・バッド・コメントフィードバック
- 間違えた問題を一括で自分専用の問題集に追加する復習機能
- **自分の問題集の作成**（GUI による手動入力 / CSV テンプレート作成 / CSV アップロード）
- **自分の問題集の編集**（問題・選択肢の追加・修正・削除）
- 既存試験の問題・自分の問題集の問題を別の問題集に追加（コレクション間コピー）
- **選択肢シャッフル制御**：既存試験は分野（`exam_sections.shuffle_choices`）ごと、自分の問題集は問題（`user_questions.shuffle_choices`）ごとに設定。問題集に複数分野が混在していても分野ごとに個別制御が効く
- 保存・演習開始などのクラウド通信中に広告（AdOverlay）を表示
- 検索画面でのブックマークフィルター・カテゴリフィルター
- Google アカウントによるログイン（Supabase Auth）
- 未ログイン時は localStorage でローカル動作
- TOEIC リスニング問題の音声再生・画像表示対応
- 同一の問題集への重複追加の防止

<p align="right">(<a href="#top">トップへ</a>)</p>

## 環境

| 言語・フレームワーク | バージョン |
| -------------------- | ---------- |
| TypeScript           | ^5         |
| Next.js              | 16.2.1     |
| React                | 19.2.4     |
| @supabase/supabase-js | ^2.100.1  |
| Tailwind CSS         | ^4         |

その他のパッケージのバージョンは `package.json` を参照してください

<p align="right">(<a href="#top">トップへ</a>)</p>

## ディレクトリ構成

```
❯ tree -a -I "node_modules|.next|.git" -L 3
.
├── app/                          # Next.js App Router ページ
│   ├── collections/              # 自分の問題集（編集・削除一覧）
│   │   └── [collectionId]/
│   │       ├── edit/             # 問題集編集画面（問題・選択肢の追加・修正・削除）
│   │       └── sections/         # 分野選択画面（自分の問題集版）
│   ├── create/                   # 問題集作成フロー
│   │   ├── page.tsx              # 作成方法の選択
│   │   ├── details/              # 問題集名・種別の設定
│   │   ├── manual/              # GUI による手動入力
│   │   ├── csv/                  # CSV テンプレートのダウンロード・アップロード
│   │   ├── preview/             # 問題プレビュー・編集
│   │   └── confirm/             # 保存確認（AdOverlay 表示・クラウド書き込み）
│   ├── exams/                    # 試験・演習画面
│   │   └── [examId]/
│   │       ├── sections/         # 分野選択画面（既存試験版）
│   │       ├── quiz/             # 演習画面（全モード共通）
│   │       ├── result/           # 結果画面
│   │       └── add-to-collection/ # 問題集への追加
│   ├── interrupted/              # 中断中の演習一覧・再開
│   ├── search/                   # 試験・問題集の検索・選択
│   ├── globals.css
│   ├── layout.tsx
│   └── page.tsx                  # トップページ
├── components/                   # 共通 UI コンポーネント
│   ├── AdOverlay.tsx             # 広告オーバーレイ（クラウド通信中に表示）
│   ├── BookmarkIcon.tsx
│   └── MainNav.tsx               # ボトムナビゲーション
├── lib/                          # 共通ロジック・型定義
│   ├── auth.ts                   # Supabase Auth フック
│   ├── storage.ts                # localStorage / Supabase DB 永続化ロジック
│   ├── supabase.ts               # Supabase クライアント
│   └── types.ts                  # 型定義（Question, QuizItem, QuestionDraft など）
├── public/                       # 静的ファイル（音声・画像）
├── supabase/                     # Supabase ローカル開発設定
│   ├── migrations/               # DB マイグレーション（時系列 SQL）
│   ├── seeds/                    # 問題データ（試験ごとの SQL）
│   └── config.toml
├── .env.local                    # 環境変数（Git 管理外）
├── next.config.ts
├── package.json
└── tsconfig.json
```

<p align="right">(<a href="#top">トップへ</a>)</p>

## DB スキーマ概要

### 既存試験テーブル（読み取り専用）

| テーブル | 概要 |
| --- | --- |
| `exams` | 試験マスタ |
| `exam_sections` | 試験の分野。`shuffle_choices` で選択肢シャッフル可否を制御（TOEIC 本体は `FALSE`） |
| `question_groups` | グループ問題（長文読解など） |
| `questions` | 問題。`section_id` または `group_id` で分野に紐づく |
| `choices` | 選択肢 |

### ユーザーデータテーブル

| テーブル | 概要 |
| --- | --- |
| `user_collections` | ユーザー作成問題集 |
| `user_questions` | 問題集内の問題。`shuffle_choices` で選択肢シャッフル可否を問題ごとに保持（既存試験から追加時は元セクションの設定を引き継ぎ） |
| `user_question_choices` | 自分の問題の選択肢 |
| `user_collection_items` | 既存試験の問題を問題集に追加したときの参照テーブル |
| `sessions` | 演習セッション（進捗・中断管理） |
| `user_answers` | 解答履歴 |
| `exam_bookmarks` | ブックマーク |
| `user_question_feedback` | 問題ごとのグッド・バッド・コメント |

### クエリ上の注意事項

- Supabase の `max_rows = 1000` 制限に注意（`config.toml` および本番共通）
- 複数セクションを一括取得すると打ち切られるため、セクションごとのループか `BATCH=200` の ID 分割クエリを使用する（`CLAUDE.md` 参照）

<p align="right">(<a href="#top">トップへ</a>)</p>

## 開発環境構築

### 前提条件

- Node.js（推奨: LTS）
- [Supabase CLI](https://supabase.com/docs/guides/cli)
- Docker Desktop（Supabase ローカル実行に必要）

### セットアップ

**1. リポジトリのクローン**

```bash
git clone https://github.com/tk10hokudai/openstudy.git
cd openstudy
```

**2. パッケージのインストール**

```bash
npm install
```

**3. 環境変数の設定**

`.env.local` を作成し、以下の変数を設定する

```
NEXT_PUBLIC_SUPABASE_URL=<Supabase プロジェクト URL>
NEXT_PUBLIC_SUPABASE_ANON_KEY=<Supabase anon key>
```

**4. ローカル Supabase の起動と DB 初期化**

```bash
supabase start
supabase db reset   # マイグレーション + シードデータ投入
```

**5. 開発サーバーの起動**

```bash
npm run dev
```

http://localhost:3000 にアクセスして動作を確認する

### コマンド一覧

| コマンド | 内容 |
| ----------------------- | ----------------------------------------- |
| `npm run dev`           | 開発サーバー起動                          |
| `npm run build`         | 本番ビルド                                |
| `npm run lint`          | ESLint による静的解析                     |
| `supabase start`        | ローカル Supabase 起動                    |
| `supabase stop`         | ローカル Supabase 停止                    |
| `supabase db reset`     | DB をマイグレーション + シードで初期化    |
| `supabase db diff`      | スキーマ差分の確認                        |
| `supabase db push`      | クラウド DB へマイグレーション適用        |

### 環境変数の一覧

| 変数名 | 役割 |
| ------------------------------------ | ------------------------------------------- |
| `NEXT_PUBLIC_SUPABASE_URL`           | Supabase プロジェクトの URL                 |
| `NEXT_PUBLIC_SUPABASE_ANON_KEY`      | Supabase の公開 anon キー                   |

<p align="right">(<a href="#top">トップへ</a>)</p>

## トラブルシューティング

### `.env.local` が見つからない / 環境変数エラー

`.env.local` を作成し、Supabase ダッシュボードから URL と anon key をコピーして設定する

### `supabase start` が失敗する

Docker Desktop が起動しているか確認する

### ローカル DB に問題データが入らない

```bash
supabase db reset
```

を実行してマイグレーションとシードを再適用する

### Ports are not available: address already in use

他のコンテナかローカルプロセスがポートを占有している可能性がある。
Supabase が使用するポート（54321, 54322, 54323 など）を確認して競合を解消する

### 自分の問題集の問題数が 1000 件で打ち切られる

`supabase/config.toml` の `max_rows` 制限による。`storage.ts` の `getCollectionItems` はページネーション実装済みのため、`user_questions` の直接クエリを書く場合は `.range()` でループするか BATCH=200 の ID 分割クエリを使用すること

<p align="right">(<a href="#top">トップへ</a>)</p>
