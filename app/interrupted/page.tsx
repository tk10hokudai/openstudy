'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import Link from 'next/link';
import { supabase } from '@/lib/supabase';
import { useUser } from '@/lib/auth';

type InterruptedItem = {
  id: string;       // 選択状態のキー
  title: string;
  examId: string;
  collectionId?: number;
};

export default function InterruptedPage() {
  const router = useRouter();
  const { user } = useUser();
  const [items, setItems] = useState<InterruptedItem[]>([]);
  const [selected, setSelected] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function load() {
      if (user) {
        // DB: 最近中断した順に取得
        const { data: sessions } = await supabase
          .from('sessions')
          .select('exam_id, collection_id, created_at')
          .eq('user_id', user.id)
          .eq('status', 'in_progress')
          .order('created_at', { ascending: false });

        if (sessions && sessions.length > 0) {
          // コレクション / 試験 で重複除去（最新セッションのみ残す）
          const seen = new Set<string>();
          const unique = sessions.filter((s) => {
            const key = s.collection_id ? `col_${s.collection_id}` : `exam_${s.exam_id}`;
            if (seen.has(key)) return false;
            seen.add(key);
            return true;
          });

          const collectionIds = unique.filter((s) => s.collection_id).map((s) => s.collection_id as number);
          const examIds = unique.filter((s) => !s.collection_id).map((s) => s.exam_id as number);

          const [colResult, examResult] = await Promise.all([
            collectionIds.length > 0
              ? supabase.from('user_collections').select('id, title').in('id', collectionIds)
              : Promise.resolve({ data: [] as { id: number; title: string }[] }),
            examIds.length > 0
              ? supabase.from('exams').select('id, title').in('id', examIds)
              : Promise.resolve({ data: [] as { id: number; title: string }[] }),
          ]);

          const colMap = new Map((colResult.data || []).map((c) => [c.id, c.title]));
          const examMap = new Map((examResult.data || []).map((e) => [e.id, e.title]));

          const result: InterruptedItem[] = [];
          for (const s of unique) {
            if (s.collection_id) {
              const title = colMap.get(s.collection_id);
              if (title) result.push({ id: `col_${s.collection_id}`, title, examId: String(s.exam_id), collectionId: s.collection_id });
            } else {
              const title = examMap.get(s.exam_id);
              if (title) result.push({ id: `exam_${s.exam_id}`, title, examId: String(s.exam_id) });
            }
          }
          setItems(result);
        }
      } else {
        // localStorage: 試験中断 + コレクション中断 を収集
        const result: InterruptedItem[] = [];

        // 通常試験の中断
        const examKeys = Object.keys(localStorage).filter(
          (k) => k.startsWith('progress_') && !k.startsWith('progress_collection_')
        );
        const examIds = examKeys.map((k) => Number(k.replace('progress_', '')));
        if (examIds.length > 0) {
          const { data } = await supabase.from('exams').select('id, title').in('id', examIds);
          if (data) {
            for (const e of data) result.push({ id: `exam_${e.id}`, title: e.title, examId: String(e.id) });
          }
        }

        // コレクションの中断
        const colKeys = Object.keys(localStorage).filter((k) => k.startsWith('progress_collection_'));
        if (colKeys.length > 0) {
          const collectionsData: { id: number; title: string }[] = JSON.parse(
            localStorage.getItem('user_collections') || '[]'
          );
          const colMap = new Map(collectionsData.map((c) => [c.id, c.title]));
          for (const key of colKeys) {
            const colId = Number(key.replace('progress_collection_', ''));
            const title = colMap.get(colId);
            if (title) {
              const progressData = JSON.parse(localStorage.getItem(key) || '{}');
              result.push({ id: `col_${colId}`, title, examId: String(progressData.examId || ''), collectionId: colId });
            }
          }
        }

        setItems(result);
      }
      setLoading(false);
    }
    load();
  }, [user]);

  const handleNext = () => {
    if (!selected) return;
    const item = items.find((i) => i.id === selected);
    if (!item) return;
    if (item.collectionId) {
      router.push(
        `/exams/${item.examId}/quiz?mode=continue&collectionId=${item.collectionId}&collectionTitle=${encodeURIComponent(item.title)}`
      );
    } else {
      router.push(`/exams/${item.examId}/quiz?mode=continue`);
    }
  };

  return (
    <div className="page-container">
      <header className="header"><Link href="/" className="header-logo">OpenStudy</Link></header>

      <div className="page-body">
        <h2 className="section-title" style={{ textAlign: 'center', fontSize: '1.1rem', marginBottom: '1rem' }}>
          中断した問題集
        </h2>

        {loading ? (
          <p style={{ color: 'var(--text-light)', textAlign: 'center', padding: '2rem 0' }}>読み込み中...</p>
        ) : items.length === 0 ? (
          <p style={{ color: 'var(--text-light)', textAlign: 'center', padding: '2rem 0' }}>中断データがありません</p>
        ) : (
          <ul className="exam-list">
            {items.map((item) => (
              <li key={item.id}
                className={`exam-list-item ${selected === item.id ? 'selected' : ''}`}
                onClick={() => setSelected(item.id)}>
                <div className={`radio-circle ${selected === item.id ? 'checked' : ''}`}>
                  {selected === item.id && <div className="radio-circle-inner" />}
                </div>
                <span style={{ flex: 1 }}>{item.title}</span>
              </li>
            ))}
          </ul>
        )}
      </div>

      <div className="nav-buttons">
        <button className="btn btn-back" onClick={() => router.back()}>戻る</button>
        <button className={`btn ${selected ? 'btn-primary' : 'btn-disabled'}`}
          onClick={handleNext} disabled={!selected}>
          次へ
        </button>
      </div>
    </div>
  );
}
