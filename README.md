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
4. [開発環境構築](#開発環境構築)
5. [トラブルシューティング](#トラブルシューティング)

<br />

## プロジェクト名

OpenStudy — 資格・就職試験対策 Web アプリ

## プロジェクトについて

基本情報技術者試験・TOEIC・SPI など複数の試験に対応した演習 Web アプリ。
問題のランダム出題・正誤記録・復習機能・カスタム問題集など、試験勉強を効率化する機能を備える。

**対応試験（2026年4月時点）**

| 試験名 | 分野 |
| -------------------------------- | ------ |
| 基本情報技術者試験               | IT系   |
| 基本情報技術者試験【用語集】     | IT系   |
| TOEIC L&R                        | 語学系 |
| TOEIC L&R【単語集】              | 語学系 |
| SPI 試験                         | 就職   |

**主な機能**

- 分野別・全問・リトライ・中断復元・コレクション演習など複数の出題モード
- 解答後の解説表示・お気に入り登録・進捗保存
- Google アカウントによるログイン（Supabase Auth）
- カスタム問題集（コレクション）の作成・管理
- TOEIC リスニング問題の音声再生・画像表示対応

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
❯ tree -a -I "node_modules|.next|.git" -L 2
.
├── app/                      # Next.js App Router ページ
│   ├── bookmarks/            # お気に入り一覧
│   ├── collections/          # カスタム問題集（コレクション）
│   ├── exams/                # 試験・演習画面
│   │   └── [examId]/
│   │       ├── page.tsx      # 分野選択
│   │       └── quiz/         # 演習画面
│   ├── interrupted/          # 中断中の演習一覧
│   ├── search/               # 問題検索
│   ├── globals.css
│   ├── layout.tsx
│   └── page.tsx              # トップページ（試験一覧）
├── lib/                      # 共通ロジック・型定義
│   ├── auth.ts               # Supabase Auth フック
│   ├── storage.ts            # localStorage / DB 永続化
│   ├── supabase.ts           # Supabase クライアント
│   └── types.ts              # 型定義
├── public/                   # 静的ファイル（音声・画像）
├── supabase/                 # Supabase ローカル開発設定
│   ├── migrations/           # DB マイグレーション
│   ├── seeds/                # 問題データ（SQL）
│   └── config.toml
├── .env.local                # 環境変数（Git 管理外）
├── next.config.ts
├── package.json
└── tsconfig.json
```

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

<p align="right">(<a href="#top">トップへ</a>)</p>
