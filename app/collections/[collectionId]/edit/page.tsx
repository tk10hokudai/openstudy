'use client';

import { useEffect, useState } from 'react';
import { useParams, useRouter } from 'next/navigation';
import Link from 'next/link';
import { supabase } from '@/lib/supabase';
import { useUser } from '@/lib/auth';
import { getCollections, getCollectionItems, removeFromCollection, deleteCollection, clearCollectionProgress } from '@/lib/storage';

type Phase = 'default' | 'confirm' | 'deleted';

export default function EditCollectionPage() {
  const params = useParams();
  const router = useRouter();
  const { user } = useUser();
  const collectionId = Number(params.collectionId);

  const [collectionTitle, setCollectionTitle] = useState('');
  const [questions, setQuestions] = useState<{ id: number; body_text: string }[]>([]);
  const [selectedIds, setSelectedIds] = useState<number[]>([]);
  const [phase, setPhase] = useState<Phase>('default');
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function load() {
      const cols = await getCollections(user);
      const col = cols.find((c) => c.id === collectionId);
      if (col) setCollectionTitle(col.title);

      const qIds = await getCollectionItems(user, collectionId);
      if (qIds.length > 0) {
        const { data } = await supabase
          .from('questions')
          .select('id, body_text')
          .in('id', qIds);
        if (data) setQuestions(data);
      }
      setLoading(false);
    }
    load();
  }, [user, collectionId]);

  const allSelected = questions.length > 0 && selectedIds.length === questions.length;

  const handleAllToggle = () => {
    if (allSelected) {
      setSelectedIds([]);
    } else {
      setSelectedIds(questions.map((q) => q.id));
    }
    if (phase === 'confirm') setPhase('default');
  };

  const handleToggle = (id: number) => {
    setSelectedIds((prev) =>
      prev.includes(id) ? prev.filter((x) => x !== id) : [...prev, id]
    );
    // 選択変更したら確認フェーズをリセット
    if (phase === 'confirm') setPhase('default');
  };

  const handleDelete = () => {
    if (selectedIds.length === 0) return;
    setPhase('confirm');
  };

  const handleConfirm = async () => {
    await removeFromCollection(user, collectionId, selectedIds);
    // 問題を変更したため中断データを削除
    await clearCollectionProgress(user, collectionId);
    const remaining = questions.filter((q) => !selectedIds.includes(q.id));
    if (remaining.length === 0) {
      await deleteCollection(user, collectionId);
      router.push('/collections');
      return;
    }
    setQuestions(remaining);
    setSelectedIds([]);
    setPhase('deleted');
    let lastTime: number | null = null;
    const step = (now: number) => {
      if (lastTime === null) lastTime = now;
      const delta = now - lastTime;
      lastTime = now;
      const currentY = window.scrollY;
      if (currentY <= 0) return;
      const newY = Math.max(0, currentY - 2000 * (delta / 1000));
      window.scrollTo(0, newY);
      if (newY > 0) requestAnimationFrame(step);
    };
    requestAnimationFrame(step);
  };

  if (loading) {
    return (
      <div className="page-container">
        <header className="header"><Link href="/" className="header-logo">OpenStudy</Link></header>
        <div className="page-body">
          <p style={{ color: 'var(--text-light)', textAlign: 'center', padding: '2rem' }}>読み込み中...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="page-container">
      <header className="header"><Link href="/" className="header-logo">OpenStudy</Link></header>

      <div className="page-body">
        <div className="exam-name-bar">{collectionTitle}</div>

        {phase === 'confirm' && (
          <p style={{ textAlign: 'center', color: 'var(--incorrect)', fontSize: '0.9rem', marginBottom: '0.75rem' }}>
            選択した{selectedIds.length}問を削除しますか？
          </p>
        )}
        {phase === 'deleted' && (
          <p style={{ textAlign: 'center', color: 'var(--correct)', fontSize: '0.9rem', marginBottom: '0.75rem' }}>
            選択した問題を削除しました
          </p>
        )}

        <div style={{ display: 'flex', flexDirection: 'column', gap: '0.5rem' }}>
          {/* すべて選択 */}
          <div
            style={{
              display: 'flex', alignItems: 'center', gap: '0.75rem',
              padding: '0.75rem 1rem', borderRadius: '8px', cursor: 'pointer', userSelect: 'none',
              border: `1.5px solid ${allSelected ? 'var(--primary)' : 'var(--border)'}`,
              backgroundColor: allSelected ? 'var(--primary-light)' : 'transparent',
            }}
            onClick={handleAllToggle}>
            <div style={{
              width: '18px', height: '18px', flexShrink: 0, borderRadius: '3px',
              display: 'flex', alignItems: 'center', justifyContent: 'center', marginTop: '2px',
              border: `2px solid ${allSelected ? 'var(--primary)' : 'var(--border)'}`,
              backgroundColor: allSelected ? 'var(--primary)' : 'transparent',
            }}>
              {allSelected && <span style={{ color: 'white', fontSize: '12px', fontWeight: 700 }}>✓</span>}
            </div>
            <span style={{ fontSize: '0.9rem', fontWeight: 600 }}>すべて</span>
          </div>

          {questions.map((q) => (
            <div key={q.id}
              style={{
                display: 'flex', alignItems: 'flex-start', gap: '0.75rem',
                padding: '0.75rem 1rem', borderRadius: '8px', cursor: 'pointer', userSelect: 'none',
                border: `1.5px solid ${selectedIds.includes(q.id) ? 'var(--primary)' : 'var(--border)'}`,
                backgroundColor: selectedIds.includes(q.id) ? 'var(--primary-light)' : 'transparent',
              }}
              onClick={() => handleToggle(q.id)}>
              <div style={{
                width: '18px', height: '18px', flexShrink: 0, borderRadius: '3px',
                display: 'flex', alignItems: 'center', justifyContent: 'center', marginTop: '2px',
                border: `2px solid ${selectedIds.includes(q.id) ? 'var(--primary)' : 'var(--border)'}`,
                backgroundColor: selectedIds.includes(q.id) ? 'var(--primary)' : 'transparent',
              }}>
                {selectedIds.includes(q.id) && (
                  <span style={{ color: 'white', fontSize: '12px', fontWeight: 700 }}>✓</span>
                )}
              </div>
              <span style={{ fontSize: '0.9rem', lineHeight: 1.6 }}>
                {q.body_text.length > 60 ? q.body_text.slice(0, 60) + '…' : q.body_text}
              </span>
            </div>
          ))}
        </div>
      </div>

      <div className="nav-buttons">
        <button className="btn btn-back" onClick={() => router.back()}>戻る</button>
        <button
          className={`btn ${selectedIds.length > 0 ? 'btn-primary' : 'btn-disabled'}`}
          onClick={handleDelete}
          disabled={selectedIds.length === 0}
          style={selectedIds.length > 0 ? { backgroundColor: 'var(--incorrect)' } : undefined}
        >
          削除
        </button>
        <button
          className={`btn ${phase === 'confirm' ? 'btn-primary' : 'btn-disabled'}`}
          onClick={handleConfirm}
          disabled={phase !== 'confirm'}
        >
          次へ
        </button>
      </div>
    </div>
  );
}
