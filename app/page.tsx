'use client';

import { useState } from 'react';

export default function Home() {
  const [showTips, setShowTips] = useState(false);

  return (
    <div className="page-container">
      <div className="page-body">
        <h1 style={{
          textAlign: 'center', fontSize: '2rem', fontWeight: 700,
          color: 'var(--text)', marginTop: 0, marginBottom: '1.5rem',
        }}>
          OpenStudy
        </h1>

        <div className="explanation-box" style={{ lineHeight: 2 }}>
          <p>　OpenStudyは、試験・資格の模擬問題の演習、自分専用の問題集の作成・共有を行えるWebアプリです！</p>
          <p>　模擬問題は各試験・資格ごとに10セット用意されており、ユーザーからのフィードバックをもとにAIが継続的に問題を更新します。</p>
          <p>　画面上部の演習・再開・作成・編集から、各種画面に移動できます。まずは既存の問題集を演習してみてください、以下に効果的な使い方をまとめています！</p>
          <div style={{ height: '1em' }} />

          <div>
            <div onClick={() => setShowTips((v) => !v)}
              style={{ display: 'flex', alignItems: 'center', gap: '0.25rem', cursor: 'pointer', userSelect: 'none', fontWeight: 600 }}>
              <span>{showTips ? '▼' : '▲'}</span>
              <span>効果的な使い方</span>
            </div>

            {showTips && (
              <div style={{ marginTop: '0.5rem' }}>
                <p style={{ fontWeight: 600 }}>⌨️ キーボードショートカット（PC）</p>
                <p style={{ paddingLeft: '1.5rem' }}>PCからはキーボードで演習を快適に進められます。</p>
                <p style={{ paddingLeft: '1.5rem' }}>・1〜9キー：選択肢を選択</p>
                <p style={{ paddingLeft: '1.5rem' }}>・→ キー：次の問題へ進む／解答を確定</p>
                <p style={{ paddingLeft: '1.5rem' }}>・← キー：前の問題に戻る</p>
                <p>　</p>
                <p style={{ fontWeight: 600 }}>📋 問題数・分野の絞り込み</p>
                <p style={{ paddingLeft: '1.5rem' }}>デフォルトは実際の試験と同様の問題数で出題されます。問題数の増減や分野ごとの絞り込みも自由に設定できます。</p>
                <p>　</p>
                <p style={{ fontWeight: 600 }}>📌 苦手分野に特化した演習</p>
                <p style={{ paddingLeft: '1.5rem' }}>演習後に間違えた問題を一括で自分専用の問題集に追加できます。1周目の後は苦手な分野に絞って集中演習しましょう。</p>
                <p>　</p>
                <p style={{ fontWeight: 600 }}>👍 フィードバックで問題が進化</p>
                <p style={{ paddingLeft: '1.5rem' }}>各問題にグッド・バッド・コメント機能を搭載。低評価の問題はAIが修正するため、演習するユーザーが増えるほど良問が増えていく仕組みです。</p>
                <p>　</p>
                <p style={{ fontWeight: 600 }}>✏️ 自分だけの問題集を作成</p>
                <p style={{ paddingLeft: '1.5rem' }}>既存の試験・資格以外の問題集も作成可能です。作成方法は2種類あります。</p>
                <p style={{ paddingLeft: '1.5rem' }}>・手動（GUI）：直感的で簡単。少量の問題作成に最適。</p>
                <p style={{ paddingLeft: '1.5rem' }}>・CSVアップロード：テンプレートに記入してアップロード。慣れると大量の問題も素早く作成できます。</p>
              </div>
            )}
          </div>

          <div style={{ height: '1em' }} />
          <p>皆さんのフィードバックをお待ちしています！</p>
          <p style={{ color: 'var(--text-light)', fontSize: '0.85rem', marginTop: '0.25rem' }}>
            ※未ログイン時の演習履歴・問題集はブラウザのローカルストレージに保存されます。ブラウザのデータを消去すると失われるため、データを永続的に保持したい場合は右上からログインをお願いします。
          </p>
        </div>
      </div>
    </div>
  );
}
