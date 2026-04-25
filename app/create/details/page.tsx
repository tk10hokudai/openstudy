'use client';

import { useRouter, useSearchParams } from 'next/navigation';
import Link from 'next/link';
import { useState, Suspense } from 'react';

const questionTypes = [
  { id: 'choice_single', label: '選択式（単一）', disabled: false },
  { id: 'choice_multi', label: '選択式（複数）', disabled: true },
  { id: 'true_false', label: '正誤式（○×）', disabled: true },
  { id: 'short_answer', label: '記述式', disabled: true },
  { id: 'fill_blank', label: '穴埋め式', disabled: true },
  { id: 'sort_order', label: '並び替え式', disabled: true },
  { id: 'matching', label: '組み合わせ式', disabled: true },
] as const;

function DetailsForm() {
  const router = useRouter();
  const params = useSearchParams();
  const method = params.get('method') || 'manual';

  const [name, setName] = useState('');
  const [type, setType] = useState<string>('choice_single');

  const canNext = name.trim().length > 0;

  const handleNext = () => {
    if (!canNext) return;
    const encoded = encodeURIComponent(name.trim());
    if (method === 'csv_create') {
      router.push(`/create/csv?method=${method}&name=${encoded}&type=${type}`);
    } else {
      router.push(`/create/manual?method=${method}&name=${encoded}&type=${type}`);
    }
  };

  return (
    <div className="page-container">
      <div className="page-body">
        <h2 className="section-title" style={{ textAlign: 'center', fontSize: '1.1rem', marginBottom: '1.5rem' }}>
          問題集の詳細
        </h2>

        <div style={{ marginBottom: '1.5rem' }}>
          <label style={{ fontSize: '0.9rem', fontWeight: 600, display: 'block', marginBottom: '0.5rem' }}>
            問題名
          </label>
          <input
            type="text"
            className="search-input"
            placeholder="問題名を入力"
            value={name}
            onChange={(e) => setName(e.target.value)}
          />
        </div>

        <div>
          <label style={{ fontSize: '0.9rem', fontWeight: 600, display: 'block', marginBottom: '0.75rem' }}>
            出題形式
          </label>
          <div className="radio-list">
            {questionTypes.map((qt) => (
              <div
                key={qt.id}
                className={`radio-option ${type === qt.id ? 'selected' : ''} ${qt.disabled ? 'disabled' : ''}`}
                onClick={() => { if (!qt.disabled) setType(qt.id); }}
              >
                <div className={`radio-circle ${type === qt.id ? 'checked' : ''}`}>
                  {type === qt.id && <div className="radio-circle-inner" />}
                </div>
                <span className="radio-label">
                  {qt.label}
                  {qt.disabled && <span className="radio-badge">【開発中】</span>}
                </span>
              </div>
            ))}
          </div>
        </div>
      </div>

      <div className="nav-buttons">
        <button className="btn btn-back" onClick={() => router.push('/create')}>戻る</button>
        <button
          className={`btn ${canNext ? 'btn-primary' : 'btn-disabled'}`}
          onClick={handleNext}
          disabled={!canNext}
        >
          次へ
        </button>
      </div>
    </div>
  );
}

export default function DetailsPage() {
  return (
    <Suspense>
      <DetailsForm />
    </Suspense>
  );
}
