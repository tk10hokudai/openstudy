'use client';

import { useEffect, useState } from 'react';
import { useParams, useSearchParams, useRouter } from 'next/navigation';
import Link from 'next/link';
import { supabase } from '@/lib/supabase';
import { useUser } from '@/lib/auth';
import { getLocalCollectionQuestions } from '@/lib/storage';

type CategoryRow = {
  name: string | null;
  questionIds: number[];
  checked: boolean;
  requestedCount: string;
};

function shuffle<T>(arr: T[]): T[] {
  const result = [...arr];
  for (let i = result.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [result[i], result[j]] = [result[j], result[i]];
  }
  return result;
}

export default function CollectionSectionsPage() {
  const params = useParams();
  const searchParams = useSearchParams();
  const router = useRouter();
  const { user } = useUser();

  const collectionId = Number(params.collectionId);
  const collectionTitle = searchParams.get('collectionTitle') || '';

  const [rows, setRows] = useState<CategoryRow[]>([]);
  const [allChecked, setAllChecked] = useState(true);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function load() {
      let questions: { id: number; category: string | null; question_number: number }[] = [];

      if (!user) {
        const local = getLocalCollectionQuestions(collectionId);
        questions = local.map((q) => ({ id: q.id, category: q.category ?? null, question_number: q.question_number }));
      } else {
        const PAGE = 1000;
        let from = 0;
        while (true) {
          const { data } = await supabase
            .from('user_questions')
            .select('id, category, question_number')
            .eq('collection_id', collectionId)
            .order('question_number')
            .range(from, from + PAGE - 1);
          if (!data || data.length === 0) break;
          questions.push(...(data as { id: number; category: string | null; question_number: number }[]));
          if (data.length < PAGE) break;
          from += PAGE;
        }
      }

      const map = new Map<string, number[]>();
      for (const q of questions) {
        const key = q.category ?? '';
        if (!map.has(key)) map.set(key, []);
        map.get(key)!.push(q.id);
      }

      const built: CategoryRow[] = [];
      for (const [name, ids] of map.entries()) {
        built.push({
          name: name === '' ? null : name,
          questionIds: ids,
          checked: true,
          requestedCount: String(ids.length),
        });
      }

      setRows(built);
      setLoading(false);
    }
    load();
  }, [user, collectionId]);

  const handleAllChecked = (checked: boolean) => {
    setAllChecked(checked);
    setRows((prev) => prev.map((r) => ({ ...r, checked })));
  };

  const handleRowChecked = (index: number, checked: boolean) => {
    setRows((prev) => {
      const next = [...prev];
      next[index] = { ...next[index], checked };
      return next;
    });
    if (!checked) setAllChecked(false);
    else {
      const allNow = rows.every((r, i) => (i === index ? checked : r.checked));
      if (allNow) setAllChecked(true);
    }
  };

  const handleCountChange = (index: number, value: string) => {
    setRows((prev) => {
      const next = [...prev];
      next[index] = { ...next[index], requestedCount: value };
      return next;
    });
  };

  const canProceed = rows.some((r) => {
    if (!r.checked) return false;
    const count = parseInt(r.requestedCount, 10);
    return !isNaN(count) && count >= 1 && count <= r.questionIds.length;
  });

  const handleNext = () => {
    const selectedIds: number[] = [];
    for (const r of rows) {
      if (!r.checked) continue;
      const count = parseInt(r.requestedCount, 10);
      if (isNaN(count) || count < 1) continue;
      const take = Math.min(count, r.questionIds.length);
      selectedIds.push(...shuffle(r.questionIds).slice(0, take));
    }
    if (selectedIds.length === 0) return;

    sessionStorage.setItem('user_collection_filter', JSON.stringify({ collectionId, questionIds: selectedIds }));

    let url = `/exams/0/quiz?mode=user_collection&collectionId=${collectionId}&filtered=1&from=search`;
    if (collectionTitle) url += `&collectionTitle=${encodeURIComponent(collectionTitle)}`;
    sessionStorage.setItem('show_ad', '1');
    window.scrollTo(0, 0);
    router.push(url);
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

  if (rows.length === 0) {
    return (
      <div className="page-container">
<div className="page-body">
          <p style={{ color: 'var(--text-light)', textAlign: 'center', padding: '2rem' }}>問題が見つかりません</p>
        </div>
        <div className="nav-buttons">
          <button className="btn btn-back" onClick={() => router.push('/search')}>戻る</button>
        </div>
      </div>
    );
  }

  return (
    <div className="page-container">
      <div className="page-body">
        <div className="exam-name-bar">{collectionTitle}</div>

        <div style={{ display: 'flex', flexDirection: 'column', gap: '0.75rem' }}>
          <div
            style={{
              display: 'flex', alignItems: 'center', gap: '0.75rem',
              padding: '0.75rem 1rem', border: '1.5px solid var(--border)',
              borderRadius: '8px', cursor: 'pointer', userSelect: 'none',
            }}
            onClick={() => handleAllChecked(!allChecked)}
          >
            <div style={{
              width: '18px', height: '18px', border: '2px solid var(--border)',
              borderRadius: '3px', display: 'flex', alignItems: 'center',
              justifyContent: 'center', flexShrink: 0,
              borderColor: allChecked ? 'var(--primary)' : 'var(--border)',
              backgroundColor: allChecked ? 'var(--primary)' : 'transparent',
            }}>
              {allChecked && <span style={{ color: 'white', fontSize: '12px', fontWeight: 700 }}>✓</span>}
            </div>
            <span style={{ fontWeight: 600 }}>すべて</span>
          </div>

          {rows.map((row, idx) => (
            <div key={idx}
              style={{
                display: 'flex', alignItems: 'center', gap: '0.75rem',
                padding: '0.75rem 1rem', border: '1.5px solid var(--border)',
                borderRadius: '8px', cursor: 'pointer', userSelect: 'none',
                backgroundColor: row.checked ? 'var(--primary-light)' : 'transparent',
                borderColor: row.checked ? 'var(--primary)' : 'var(--border)',
              }}
              onClick={() => handleRowChecked(idx, !row.checked)}
            >
              <div style={{
                width: '18px', height: '18px', border: '2px solid var(--border)',
                borderRadius: '3px', display: 'flex', alignItems: 'center',
                justifyContent: 'center', flexShrink: 0,
                borderColor: row.checked ? 'var(--primary)' : 'var(--border)',
                backgroundColor: row.checked ? 'var(--primary)' : 'transparent',
              }}>
                {row.checked && <span style={{ color: 'white', fontSize: '12px', fontWeight: 700 }}>✓</span>}
              </div>
              <span style={{ flex: 1 }}>{row.name ?? '分類なし'}</span>
              <div style={{ display: 'flex', alignItems: 'center', gap: '0.25rem' }}
                onClick={(e) => e.stopPropagation()}>
                <input
                  type="number"
                  min={1}
                  max={row.questionIds.length}
                  value={row.requestedCount}
                  onChange={(e) => handleCountChange(idx, e.target.value)}
                  style={{
                    width: '50px', padding: '0.2rem 0.4rem', textAlign: 'center',
                    border: '1.5px solid var(--border)', borderRadius: '4px', fontSize: '0.85rem',
                  }}
                />
                <span style={{ fontSize: '0.8rem', color: 'var(--text-light)', whiteSpace: 'nowrap' }}>
                  /{row.questionIds.length}問
                </span>
              </div>
            </div>
          ))}
        </div>
      </div>

      <div className="nav-buttons">
        <button className="btn btn-back" onClick={() => router.back()}>戻る</button>
        <button className={`btn ${canProceed ? 'btn-primary' : 'btn-disabled'}`}
          onClick={handleNext} disabled={!canProceed}>
          次へ
        </button>
      </div>
    </div>
  );
}
