'use client';

import { useRouter, useSearchParams } from 'next/navigation';
import Link from 'next/link';
import { useState, useEffect, Suspense } from 'react';
import { supabase } from '@/lib/supabase';
import { useUser } from '@/lib/auth';
import { createCollection } from '@/lib/storage';
import type { CreateDraft } from '@/lib/types';
import AdOverlay from '@/components/AdOverlay';

const DRAFT_KEY = 'create_draft';

const TYPE_LABELS: Record<string, string> = {
  choice_single: '選択式（単一）',
};

function ConfirmForm() {
  const router = useRouter();
  const params = useSearchParams();
  const name = params.get('name') || '';
  const type = params.get('type') || 'choice_single';
  const count = Number(params.get('count') || '0');

  const { user } = useUser();
  const [selected, setSelected] = useState<'save' | 'discard' | null>(null);
  const [saving, setSaving] = useState(false);
  const [error, setError] = useState('');
  const [showAd, setShowAd] = useState(false);

  useEffect(() => {
    if (!sessionStorage.getItem(DRAFT_KEY)) router.push('/create');
  }, [router]);

  const handleNext = async () => {
    if (!selected) return;

    if (selected === 'discard') {
      sessionStorage.removeItem(DRAFT_KEY);
      router.push('/create');
      return;
    }

    // 保存開始と同時に広告表示（5秒 + 保存完了の両方を待つ）
    setShowAd(true);
    setSaving(true);
    setError('');

    const saved = sessionStorage.getItem(DRAFT_KEY);
    if (!saved) { setSaving(false); setShowAd(false); return; }
    const draft: CreateDraft = JSON.parse(saved);

    const colId = await createCollection(user, draft.name);
    if (colId === null) {
      setError('問題集の作成に失敗しました。');
      setSaving(false);
      setShowAd(false);
      return;
    }

    if (!user) {
      // ローカルに user_questions 形式で保存
      const existing = JSON.parse(localStorage.getItem('local_user_questions') || '[]');
      const maxId = existing.length > 0 ? Math.max(...existing.map((q: { id: number }) => q.id)) : 0;
      let idCounter = maxId + 1;
      const toAdd = draft.questions.map((q, i) => {
        const localId = idCounter++;
        return {
          id: localId,
          collection_id: colId,
          question_number: i + 1,
          question_type: 'choice',
          category: q.category || null,
          max_selections: 1,
          score: 1,
          body_text: q.body_text,
          explanation: q.explanation || null,
          audio_url: null,
          image_url: null,
          correct_answers: null,
          user_question_choices: q.choices.map((c, idx) => ({
            id: localId * 10000 + idx,
            question_id: localId,
            choice_text: c.choice_text,
            image_url: null,
            is_correct: c.is_correct,
            sort_order: c.sort_order,
          })),
        };
      });
      localStorage.setItem('local_user_questions', JSON.stringify([...existing, ...toAdd]));
    } else {
      for (let i = 0; i < draft.questions.length; i++) {
        const q = draft.questions[i];
        const { data: qRow, error: qErr } = await supabase
          .from('user_questions')
          .insert({
            user_id: user.id,
            collection_id: colId,
            question_number: i + 1,
            question_type: 'choice',
            category: q.category,
            body_text: q.body_text,
            explanation: q.explanation || null,
            shuffle_choices: true,
          })
          .select('id')
          .single();

        if (qErr || !qRow) {
          setError(`問題 ${i + 1} の保存に失敗しました。`);
          setSaving(false);
          setShowAd(false);
          return;
        }

        const choiceRows = q.choices.map((c) => ({
          question_id: qRow.id,
          choice_text: c.choice_text,
          is_correct: c.is_correct,
          sort_order: c.sort_order,
        }));

        const { error: cErr } = await supabase.from('user_question_choices').insert(choiceRows);
        if (cErr) {
          setError(`問題 ${i + 1} の選択肢の保存に失敗しました。`);
          setSaving(false);
          setShowAd(false);
          return;
        }
      }
    }

    sessionStorage.removeItem(DRAFT_KEY);
    setSaving(false); // ready=true になり × が解放される
  };

  const options = [
    { id: 'save', label: '問題集を保存する' },
    { id: 'discard', label: '保存せず終了する' },
  ] as const;

  return (
    <div className="page-container">
      {showAd && <AdOverlay onClose={() => { setShowAd(false); router.push('/create'); }} ready={!saving} />}
      <div className="page-body">
        <h2 className="section-title" style={{ textAlign: 'center', fontSize: '1.1rem', marginBottom: '2rem' }}>
          保存確認
        </h2>

        <div style={{ textAlign: 'center', marginBottom: '2rem' }}>
          <p style={{ fontSize: '1.1rem', fontWeight: 700, marginBottom: '0.5rem' }}>{name}</p>
          <p style={{ color: 'var(--text-light)', marginBottom: '0.25rem' }}>{TYPE_LABELS[type] || type}</p>
          <p style={{ color: 'var(--text-light)' }}>{count} 問</p>
        </div>

        <div className="radio-list">
          {options.map((opt) => (
            <div
              key={opt.id}
              className={`radio-option ${selected === opt.id ? 'selected' : ''}`}
              onClick={() => setSelected(opt.id)}
            >
              <div className={`radio-circle ${selected === opt.id ? 'checked' : ''}`}>
                {selected === opt.id && <div className="radio-circle-inner" />}
              </div>
              <span className="radio-label">{opt.label}</span>
            </div>
          ))}
        </div>

        {error && (
          <p style={{ color: 'var(--incorrect)', fontSize: '0.85rem', marginTop: '0.75rem' }}>{error}</p>
        )}
      </div>

      <div className="nav-buttons">
        <button className="btn btn-back" onClick={() => router.push(`/create/preview?name=${encodeURIComponent(name)}&type=${type}&count=${count}`)} disabled={saving}>戻る</button>
        <button
          className={`btn ${selected && !saving ? 'btn-primary' : 'btn-disabled'}`}
          onClick={handleNext}
          disabled={!selected || saving}
        >
          {saving ? '保存中...' : '次へ'}
        </button>
      </div>
    </div>
  );
}

export default function ConfirmPage() {
  return (
    <Suspense>
      <ConfirmForm />
    </Suspense>
  );
}
