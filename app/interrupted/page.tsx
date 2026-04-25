'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import { useUser } from '@/lib/auth';
import { getProgressHint } from '@/lib/storage';

type InterruptedItem = {
  id: string;
  title: string;
  examId: string;
  collectionId?: number;
  currentQuestionNum?: number;
  totalQuestions?: number;
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
        const { data: sessions } = await supabase
          .from('sessions')
          .select('id, exam_id, collection_id, created_at')
          .eq('user_id', user.id)
          .eq('status', 'in_progress')
          .order('created_at', { ascending: false });

        if (sessions && sessions.length > 0) {
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
              if (title) {
                const hint = getProgressHint('0', s.collection_id);
                result.push({ id: `col_${s.collection_id}`, title, examId: s.exam_id ? String(s.exam_id) : '0', collectionId: s.collection_id, ...hint ?? {} });
              }
            } else {
              const title = examMap.get(s.exam_id);
              if (title) {
                const hint = getProgressHint(String(s.exam_id));
                result.push({ id: `exam_${s.exam_id}`, title, examId: String(s.exam_id), ...hint ?? {} });
              }
            }
          }

          setItems(result);
        }
      } else {
        const result: InterruptedItem[] = [];

        // 通常試験の中断
        const examKeys = Object.keys(localStorage).filter(
          (k) => k.startsWith('progress_') && !k.startsWith('progress_collection_')
        );
        const examIds = examKeys.map((k) => Number(k.replace('progress_', ''))).filter((id) => !isNaN(id) && id > 0);
        if (examIds.length > 0) {
          const { data } = await supabase.from('exams').select('id, title').in('id', examIds);
          if (data) {
            for (const e of data) {
              const hint = getProgressHint(String(e.id));
              result.push({ id: `exam_${e.id}`, title: e.title, examId: String(e.id), ...hint ?? {} });
            }
          }
        }

        // コレクションの中断
        const colKeys = Object.keys(localStorage).filter((k) => k.startsWith('progress_collection_'));
        if (colKeys.length > 0) {
          const collectionsData: { id: number; title: string }[] = JSON.parse(localStorage.getItem('user_collections') || '[]');
          const colMap = new Map(collectionsData.map((c) => [c.id, c.title]));
          for (const key of colKeys) {
            const colId = Number(key.replace('progress_collection_', ''));
            const title = colMap.get(colId);
            if (title) {
              const p = JSON.parse(localStorage.getItem(key) || '{}');
              const hint = getProgressHint('0', colId);
              result.push({ id: `col_${colId}`, title, examId: String(p.examId || ''), collectionId: colId, ...hint ?? {} });
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
    const url = item.collectionId
      ? `/exams/${item.examId}/quiz?mode=continue&collectionId=${item.collectionId}&collectionTitle=${encodeURIComponent(item.title)}&from=interrupted`
      : `/exams/${item.examId}/quiz?mode=continue&from=interrupted`;
    sessionStorage.setItem('show_ad', '1');
    router.push(url);
  };

  return (
    <div className="page-container">
      <div className="page-body">
        <h2 className="section-title" style={{ textAlign: 'center', fontSize: '1.1rem', marginBottom: '1rem', color: 'var(--text)' }}>
          中断した問題集を再開
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
                <div style={{ flex: 1, display: 'flex', justifyContent: 'space-between', alignItems: 'center', gap: '0.5rem' }}>
                  <span>{item.title}</span>
                  {item.totalQuestions != null && item.totalQuestions > 0 && (
                    <span style={{ fontSize: '0.8rem', color: 'var(--text-light)', flexShrink: 0 }}>
                      中断データ : ({item.currentQuestionNum}/{item.totalQuestions}問)
                    </span>
                  )}
                </div>
              </li>
            ))}
          </ul>
        )}
      </div>

      <div className="nav-buttons nav-buttons--right-only">
        <button className={`btn ${selected ? 'btn-primary' : 'btn-disabled'}`}
          onClick={handleNext} disabled={!selected}>
          次へ
        </button>
      </div>
    </div>
  );
}
