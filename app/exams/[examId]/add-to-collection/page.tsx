'use client';

import { useEffect, useState, Suspense } from 'react';
import { useParams, useSearchParams, useRouter } from 'next/navigation';
import { useUser } from '@/lib/auth';
import { getCollections, createCollection, addToCollection } from '@/lib/storage';

function AddToCollectionForm() {
  const params = useParams();
  const searchParams = useSearchParams();
  const router = useRouter();
  const { user } = useUser();
  const examId = params.examId as string;

  const questionIdsStr = searchParams.get('questionIds') || '';
  const returnTo = searchParams.get('returnTo') || `/exams/${examId}/quiz`;
  const isBulk = searchParams.get('bulk') === '1';
  const isUserQuestion = searchParams.get('uq') === '1';
  const excludeCollectionIdRaw = searchParams.get('excludeCollectionId');
  const excludeCollectionId = excludeCollectionIdRaw ? Number(excludeCollectionIdRaw) : null;
  const questionIds = questionIdsStr.split(',').map(Number).filter(Boolean);

  const [collections, setCollections] = useState<{ id: number; title: string }[]>([]);
  const [selectedId, setSelectedId] = useState<number | 'new' | null>(null);
  const [newTitle, setNewTitle] = useState('');
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function load() {
      const data = await getCollections(user);
      const filtered = excludeCollectionId != null ? data.filter((c) => c.id !== excludeCollectionId) : data;
      setCollections(filtered);
      // コレクションがなければ新規入力を自動選択
      if (filtered.length === 0) setSelectedId('new');
      setLoading(false);
    }
    load();
  }, [user, excludeCollectionId]);

  const canProceed = selectedId === 'new' ? newTitle.trim().length > 0 : selectedId !== null;

  const handleNext = async () => {
    if (!canProceed || questionIds.length === 0) return;

    let collectionId: number | null = null;
    let title = '';

    if (selectedId === 'new') {
      title = newTitle.trim();
      collectionId = await createCollection(user, title);
    } else {
      collectionId = selectedId as number;
      title = collections.find((c) => c.id === collectionId)?.title || '';
    }

    if (collectionId === null) return;
    await addToCollection(user, collectionId, questionIds, isUserQuestion);
    if (isBulk) sessionStorage.setItem('show_ad_result', '1');
    router.push(returnTo);
  };

  if (loading) {
    return (
      <div className="page-container">
<div className="page-body">
          <p style={{ color: 'var(--text-light)', textAlign: 'center', padding: '2rem' }}>読み込み中...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="page-container">
      <div className="page-body">
        <h2 style={{ fontSize: '1.1rem', fontWeight: 600, marginBottom: '1rem' }}>問題を以下の問題集に追加</h2>

        <div style={{ border: '1.5px solid var(--border)', borderRadius: '8px', overflow: 'hidden' }}>
          {/* 新しい問題集（テキスト入力） */}
          <div
            style={{
              display: 'flex', alignItems: 'center', gap: '0.75rem',
              padding: '0.75rem 1rem',
              borderBottom: collections.length > 0 ? '1px solid var(--border)' : 'none',
              cursor: 'pointer',
              backgroundColor: selectedId === 'new' ? 'var(--primary-light)' : 'transparent',
            }}
            onClick={() => setSelectedId('new')}
          >
            <div className={`radio-circle ${selectedId === 'new' ? 'checked' : ''}`}>
              {selectedId === 'new' && <div className="radio-circle-inner" />}
            </div>
            <input
              type="text"
              placeholder="新しい問題集（名前を入力）"
              value={newTitle}
              onChange={(e) => {
                setNewTitle(e.target.value);
                setSelectedId('new');
              }}
              onClick={(e) => {
                e.stopPropagation();
                setSelectedId('new');
              }}
              style={{
                flex: 1, border: 'none', outline: 'none', fontSize: '0.95rem',
                backgroundColor: 'transparent', color: 'var(--text)',
              }}
            />
          </div>

          {/* 既存問題集 */}
          {collections.map((col, idx) => (
            <div key={col.id}
              style={{
                display: 'flex', alignItems: 'center', gap: '0.75rem',
                padding: '0.75rem 1rem', cursor: 'pointer', userSelect: 'none',
                borderBottom: idx < collections.length - 1 ? '1px solid var(--border)' : 'none',
                backgroundColor: selectedId === col.id ? 'var(--primary-light)' : 'transparent',
              }}
              onClick={() => setSelectedId(col.id)}>
              <div className={`radio-circle ${selectedId === col.id ? 'checked' : ''}`}>
                {selectedId === col.id && <div className="radio-circle-inner" />}
              </div>
              <span style={{ fontSize: '0.95rem' }}>{col.title}</span>
            </div>
          ))}
        </div>
      </div>

      <div className="nav-buttons">
        <button className="btn btn-back" onClick={() => router.push(returnTo)}>戻る</button>
        <button className={`btn ${canProceed ? 'btn-primary' : 'btn-disabled'}`}
          onClick={handleNext} disabled={!canProceed}>
          次へ
        </button>
      </div>
    </div>
  );
}

export default function AddToCollectionPage() {
  return (
    <Suspense>
      <AddToCollectionForm />
    </Suspense>
  );
}
