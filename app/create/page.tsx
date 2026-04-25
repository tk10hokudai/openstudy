'use client';

import { useRouter } from 'next/navigation';
import { useState } from 'react';

const methods = [
  { id: 'manual', label: 'GUIで作成【簡単】' },
  { id: 'csv_create', label: 'CSVで作成【おすすめ】' },
  { id: 'csv_upload', label: 'CSVをアップロード' },
] as const;

type Method = (typeof methods)[number]['id'];

export default function CreatePage() {
  const router = useRouter();
  const [selected, setSelected] = useState<Method | null>(null);
  const [showNote, setShowNote] = useState(false);

  const handleNext = () => {
    if (!selected) return;
    if (selected === 'csv_upload') {
      router.push(`/create/csv?method=${selected}`);
    } else {
      router.push(`/create/details?method=${selected}`);
    }
  };

  return (
    <div className="page-container">
      <div className="page-body">
        <h2 className="section-title" style={{ textAlign: 'center', fontSize: '1.1rem', marginBottom: '1rem', color: 'var(--text)' }}>
          自分の問題集を作成
        </h2>

        <div style={{ marginBottom: '1rem' }}>
          <div onClick={() => setShowNote((v) => !v)}
            style={{ display: 'flex', alignItems: 'center', gap: '0.25rem', cursor: 'pointer', userSelect: 'none', fontSize: '0.9rem' }}>
            <span>{showNote ? '▼' : '▲'}</span>
            <span>未ログイン時における注意点</span>
          </div>
          {showNote && (
            <div style={{ marginTop: '0.5rem', fontSize: '0.85rem', color: 'var(--text-light)', lineHeight: 1.8 }}>
              <p>・作成した問題集はブラウザのローカルストレージに保存されます。</p>
              <p>・ブラウザのデータを消去すると問題集が失われます。</p>
              <p>・別の端末やブラウザからはアクセスできません。</p>
              <p>・問題集を永続的に保持・複数端末で利用したい場合は、右上からログインをお願いします。</p>
            </div>
          )}
        </div>

        <div className="radio-list">
          {methods.map((m) => (
            <div
              key={m.id}
              className={`radio-option ${selected === m.id ? 'selected' : ''}`}
              onClick={() => setSelected(m.id)}
            >
              <div className={`radio-circle ${selected === m.id ? 'checked' : ''}`}>
                {selected === m.id && <div className="radio-circle-inner" />}
              </div>
              <span className="radio-label">{m.label}</span>
            </div>
          ))}
        </div>
      </div>

      <div className="nav-buttons nav-buttons--right-only">
        <button
          className={`btn ${selected ? 'btn-primary' : 'btn-disabled'}`}
          onClick={handleNext}
          disabled={!selected}
        >
          次へ
        </button>
      </div>
    </div>
  );
}
