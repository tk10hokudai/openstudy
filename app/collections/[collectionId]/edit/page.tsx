'use client';

import { useEffect, useState } from 'react';
import { useParams, useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import { useUser } from '@/lib/auth';
import { getCollections } from '@/lib/storage';
import AdOverlay from '@/components/AdOverlay';

function TrashIcon({ color, size }: { color: string; size: number }) {
  return (
    <svg viewBox="0 0 512 512" width={size} height={size}>
      <path fill={color} d="M439.114,69.747c0,0,2.977,2.1-43.339-11.966c-41.52-12.604-80.795-15.309-80.795-15.309l-2.722-19.297C310.387,9.857,299.484,0,286.642,0h-30.651h-30.651c-12.825,0-23.729,9.857-25.616,23.175l-2.722,19.297c0,0-39.258,2.705-80.778,15.309C69.891,71.848,72.868,69.747,72.868,69.747c-10.324,2.849-17.536,12.655-17.536,23.864v16.695h200.66h200.677V93.611C456.669,82.402,449.456,72.596,439.114,69.747z" />
      <path fill={color} d="M88.593,464.731C90.957,491.486,113.367,512,140.234,512h231.524c26.867,0,49.276-20.514,51.64-47.269l25.642-327.21H62.952L88.593,464.731z M342.016,209.904c0.51-8.402,7.731-14.807,16.134-14.296c8.402,0.51,14.798,7.731,14.296,16.134l-14.492,239.493c-0.51,8.402-7.731,14.798-16.133,14.288c-8.403-0.51-14.806-7.722-14.296-16.125L342.016,209.904z M240.751,210.823c0-8.42,6.821-15.241,15.24-15.241c8.42,0,15.24,6.821,15.24,15.241v239.492c0,8.42-6.821,15.24-15.24,15.24c-8.42,0-15.24-6.821-15.24-15.24V210.823z M153.833,195.608c8.403-0.51,15.624,5.894,16.134,14.296l14.509,239.492c0.51,8.403-5.894,15.615-14.296,16.125c-8.403-0.51-15.624-5.886-16.134-14.288l-14.509-239.493C139.026,203.339,145.43,196.118,153.833,195.608z" />
    </svg>
  );
}

function ConfirmDeleteDialog({ onCancel, onConfirm }: { onCancel: () => void; onConfirm: () => void }) {
  return (
    <div style={{ position: 'fixed', inset: 0, background: 'rgba(0,0,0,0.4)', display: 'flex', alignItems: 'center', justifyContent: 'center', zIndex: 1000 }}>
      <div style={{ background: 'white', borderRadius: '12px', padding: '2rem', maxWidth: '320px', width: '90%', textAlign: 'center' }}>
        <p style={{ fontSize: '1rem', fontWeight: 600, marginBottom: '1.5rem' }}>この問題を削除しますか？</p>
        <div style={{ display: 'flex', gap: '1rem', justifyContent: 'center' }}>
          <button onClick={onCancel} className="btn btn-back" style={{ flex: 1, fontSize: '0.85rem', padding: '0.4rem 0.75rem' }}>いいえ</button>
          <button onClick={onConfirm} className="btn btn-primary" style={{ flex: 1, fontSize: '0.85rem', padding: '0.4rem 0.75rem', backgroundColor: 'var(--incorrect)' }}>はい</button>
        </div>
      </div>
    </div>
  );
}

type EditableChoice = {
  id: number;
  choice_text: string;
  is_correct: boolean;
  sort_order: number;
};

type EditableQuestion = {
  id: number;
  question_type: string;
  category: string;
  body_text: string;
  explanation: string;
  shuffle_choices: boolean;
  choices: EditableChoice[];
};

const MAX_CHOICES = 9;

function scrollToTop() {
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
}

export default function EditQuestionsPage() {
  const params = useParams();
  const router = useRouter();
  const { user } = useUser();
  const collectionId = Number(params.collectionId);

  const [collectionTitle, setCollectionTitle] = useState('');
  const [questions, setQuestions] = useState<EditableQuestion[]>([]);
  const [originalIds, setOriginalIds] = useState<Set<number>>(new Set());
  const [index, setIndex] = useState(0);
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [showAd, setShowAd] = useState(false);
  const [confirmDelete, setConfirmDelete] = useState(false);
  const [showConfirm, setShowConfirm] = useState(false);
  const [confirmChoice, setConfirmChoice] = useState<'save' | 'discard' | null>(null);

  useEffect(() => {
    if (sessionStorage.getItem('show_ad_edit') === '1') {
      sessionStorage.removeItem('show_ad_edit');
      setShowAd(true);
    }
  }, []);

  useEffect(() => {
    async function load() {
      const cols = await getCollections(user);
      const col = cols.find((c) => c.id === collectionId);
      if (col) setCollectionTitle(col.title);

      if (!user) {
        const local: EditableQuestion[] = JSON.parse(localStorage.getItem('local_user_questions') || '[]')
          .filter((q: { collection_id: number; question_type: string }) =>
            q.collection_id === collectionId &&
            (q.question_type === 'choice' || q.question_type === 'choice_single')
          )
          .map((q: {
            id: number; question_type: string; category?: string | null;
            body_text: string; explanation: string | null; shuffle_choices?: boolean;
            user_question_choices: { id: number; choice_text: string; is_correct: boolean; sort_order: number }[];
          }) => ({
            id: q.id,
            question_type: q.question_type,
            category: q.category || '',
            body_text: q.body_text || '',
            explanation: q.explanation || '',
            shuffle_choices: q.shuffle_choices ?? true,
            choices: [...(q.user_question_choices || [])].sort((a, b) => a.sort_order - b.sort_order),
          }));
        setQuestions(local);
        setOriginalIds(new Set(local.map((q) => q.id)));
      } else {
        const PAGE = 1000;
        let from = 0;
        const allRows: EditableQuestion[] = [];
        while (true) {
          const { data } = await supabase
            .from('user_questions')
            .select('id, question_type, category, body_text, explanation, shuffle_choices, user_question_choices(*)')
            .eq('collection_id', collectionId)
            .in('question_type', ['choice', 'choice_single'])
            .order('question_number')
            .range(from, from + PAGE - 1);
          if (!data || data.length === 0) break;
          allRows.push(...data.map((q) => ({
            id: q.id as number,
            question_type: q.question_type as string,
            category: (q.category as string | null) || '',
            body_text: (q.body_text as string | null) || '',
            explanation: (q.explanation as string | null) || '',
            shuffle_choices: (q as { shuffle_choices?: boolean }).shuffle_choices ?? true,
            choices: [...(q.user_question_choices as EditableChoice[])].sort((a, b) => a.sort_order - b.sort_order),
          })));
          if (data.length < PAGE) break;
          from += PAGE;
        }
        const loaded = allRows;
        if (loaded.length > 0) {
          setQuestions(loaded);
          setOriginalIds(new Set(loaded.map((q) => q.id)));
        }
      }
      setLoading(false);
    }
    load();
  }, [user, collectionId]);

  const current = questions[index];

  const updateCurrent = (updated: EditableQuestion) => {
    setQuestions((prev) => prev.map((q, i) => (i === index ? updated : q)));
  };

  const handleChoiceText = (ci: number, text: string) => {
    if (!current) return;
    updateCurrent({
      ...current,
      choices: current.choices.map((c, i) => (i === ci ? { ...c, choice_text: text } : c)),
    });
  };

  const handleAddChoice = () => {
    if (!current || current.choices.length >= MAX_CHOICES) return;
    updateCurrent({
      ...current,
      choices: [...current.choices, { id: 0, choice_text: '', is_correct: false, sort_order: current.choices.length + 1 }],
    });
  };

  const handleRemoveChoice = (ci: number) => {
    if (!current || current.choices[ci]?.is_correct || current.choices.length <= 2) return;
    const next = current.choices
      .filter((_, i) => i !== ci)
      .map((c, i) => ({ ...c, sort_order: i + 1 }));
    updateCurrent({ ...current, choices: next });
  };

  const isEmptyNew = (q: EditableQuestion) => q.id === 0 && !q.body_text.trim();

  const isQuestionValid = (q: EditableQuestion) =>
    q.category.trim() &&
    q.body_text.trim() &&
    !!(q.choices.find((c) => c.is_correct)?.choice_text.trim()) &&
    !!(q.choices.find((c) => !c.is_correct)?.choice_text.trim());

  const handleNext = () => {
    if (index < questions.length - 1) {
      setIndex((i) => i + 1);
      scrollToTop();
    }
  };

  const handleFinish = () => {
    setConfirmChoice(null);
    setShowConfirm(true);
  };

  const handleBack = () => {
    if (index > 0) {
      if (current && isEmptyNew(current)) {
        setQuestions((prev) => prev.filter((_, i) => i !== index));
      }
      setIndex((i) => i - 1);
    } else {
      router.push('/collections');
    }
  };

  const handleAddQuestion = () => {
    if (!current) return;
    if (!isQuestionValid(questions[questions.length - 1])) return;
    const newQ: EditableQuestion = {
      id: 0, question_type: 'choice', category: '', body_text: '', explanation: '', shuffle_choices: true,
      choices: [
        { id: 0, choice_text: '', is_correct: true, sort_order: 1 },
        { id: 0, choice_text: '', is_correct: false, sort_order: 2 },
        { id: 0, choice_text: '', is_correct: false, sort_order: 3 },
        { id: 0, choice_text: '', is_correct: false, sort_order: 4 },
      ],
    };
    setQuestions((prev) => [...prev, newQ]);
    setIndex(questions.length);
    scrollToTop();
  };

  const handleDeleteConfirm = () => {
    if (!current) return;
    const next = questions.filter((_, i) => i !== index);
    setConfirmDelete(false);
    if (next.length === 0) { router.push('/collections'); return; }
    setQuestions(next);
    setIndex((i) => Math.min(i, next.length - 1));
  };

  const handleSaveAll = async () => {
    setSaving(true);
    const currentIdSet = new Set(questions.filter((q) => q.id !== 0).map((q) => q.id));
    const toDelete = [...originalIds].filter((id) => !currentIdSet.has(id));

    if (!user) {
      let all: { id: number; collection_id: number; question_number: number; question_type: string; category: string | null; max_selections: number; score: number; body_text: string; explanation: string | null; audio_url: null; image_url: null; correct_answers: null; shuffle_choices?: boolean; user_question_choices: { id: number; question_id: number; choice_text: string; image_url: null; is_correct: boolean; sort_order: number }[] }[] =
        JSON.parse(localStorage.getItem('local_user_questions') || '[]');
      all = all.filter((lq) => !toDelete.includes(lq.id));
      const maxId = all.length > 0 ? Math.max(...all.map((lq) => lq.id)) : 0;
      let idCounter = maxId + 1;
      let qNum = 1;
      for (const q of questions) {
        if (q.id === 0 && !isQuestionValid(q)) continue;
        if (q.id === 0) {
          const newId = idCounter++;
          const newChoices = q.choices.filter((c) => c.choice_text.trim() !== '');
          all.push({
            id: newId, collection_id: collectionId,
            question_number: qNum, question_type: 'choice',
            category: q.category || null, max_selections: 1, score: 1,
            body_text: q.body_text, explanation: q.explanation || null,
            audio_url: null, image_url: null, correct_answers: null, shuffle_choices: q.shuffle_choices ?? true,
            user_question_choices: newChoices.map((c, i) => ({
              id: newId * 10000 + i, question_id: newId,
              choice_text: c.choice_text, image_url: null,
              is_correct: c.is_correct, sort_order: i + 1,
            })),
          });
        } else {
          const idx = all.findIndex((lq) => lq.id === q.id);
          if (idx !== -1) {
            const updChoices = q.choices.filter((c) => c.choice_text.trim() !== '');
            all[idx] = {
              ...all[idx],
              question_number: qNum,
              category: q.category || null,
              body_text: q.body_text,
              explanation: q.explanation || null,
              shuffle_choices: q.shuffle_choices ?? true,
              user_question_choices: updChoices.map((c, i) => ({
                id: c.id || all[idx].id * 10000 + i, question_id: all[idx].id,
                choice_text: c.choice_text, image_url: null,
                is_correct: c.is_correct, sort_order: i + 1,
              })),
            };
          }
        }
        qNum++;
      }
      localStorage.setItem('local_user_questions', JSON.stringify(all));
    } else {
      for (const id of toDelete) {
        await supabase.from('user_question_choices').delete().eq('question_id', id);
        await supabase.from('user_questions').delete().eq('id', id);
      }
      let qNum = 1;
      for (const q of questions) {
        if (q.id === 0 && !isQuestionValid(q)) continue;
        if (q.id === 0) {
          const { data: qRow } = await supabase.from('user_questions').insert({
            user_id: user.id, collection_id: collectionId,
            question_number: qNum, question_type: 'choice',
            category: q.category || null, body_text: q.body_text,
            explanation: q.explanation || null, shuffle_choices: q.shuffle_choices ?? true,
          }).select('id').single();
          if (qRow) {
            const insertChoices = q.choices.filter((c) => c.choice_text.trim() !== '');
            await supabase.from('user_question_choices').insert(
              insertChoices.map((c, i) => ({
                question_id: qRow.id, choice_text: c.choice_text,
                is_correct: c.is_correct, sort_order: i + 1,
              }))
            );
          }
        } else {
          await supabase.from('user_questions').update({
            question_number: qNum,
            category: q.category || null,
            body_text: q.body_text,
            explanation: q.explanation || null,
            shuffle_choices: q.shuffle_choices ?? true,
          }).eq('id', q.id);
          await supabase.from('user_question_choices').delete().eq('question_id', q.id);
          const updateChoices = q.choices.filter((c) => c.choice_text.trim() !== '');
          await supabase.from('user_question_choices').insert(
            updateChoices.map((c, i) => ({
              question_id: q.id, choice_text: c.choice_text,
              is_correct: c.is_correct, sort_order: i + 1,
            }))
          );
        }
        qNum++;
      }
    }

    setSaving(false);
    router.push('/collections');
  };

  const handleConfirmNext = async () => {
    if (!confirmChoice) return;
    if (confirmChoice === 'discard') {
      router.push('/collections');
      return;
    }
    await handleSaveAll();
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

  if (questions.length === 0) {
    return (
      <div className="page-container">
        <div className="page-body">
          <div className="exam-name-bar">{collectionTitle}</div>
          <p style={{ color: 'var(--text-light)', textAlign: 'center', padding: '2rem' }}>
            編集できる問題がありません（選択問題のみ対応）
          </p>
        </div>
        <div className="nav-buttons">
          <button className="btn btn-back" onClick={() => router.push('/collections')}>戻る</button>
        </div>
      </div>
    );
  }

  if (!current) return null;

  if (showConfirm) {
    const visibleCount = questions.filter((q) => !isEmptyNew(q)).length;
    const options = [
      { id: 'save' as const, label: '編集内容を保存する' },
      { id: 'discard' as const, label: '保存せず終了する' },
    ];
    return (
      <div className="page-container">
        <div className="page-body">
          <h2 className="section-title" style={{ textAlign: 'center', fontSize: '1.1rem', marginBottom: '2rem' }}>
            保存確認
          </h2>

          <div style={{ textAlign: 'center', marginBottom: '2rem' }}>
            <p style={{ fontSize: '1.1rem', fontWeight: 700, marginBottom: '0.5rem' }}>{collectionTitle}</p>
            <p style={{ color: 'var(--text-light)' }}>{visibleCount} 問</p>
          </div>

          <div className="radio-list">
            {options.map((opt) => (
              <div
                key={opt.id}
                className={`radio-option ${confirmChoice === opt.id ? 'selected' : ''}`}
                onClick={() => setConfirmChoice(opt.id)}
              >
                <div className={`radio-circle ${confirmChoice === opt.id ? 'checked' : ''}`}>
                  {confirmChoice === opt.id && <div className="radio-circle-inner" />}
                </div>
                <span className="radio-label">{opt.label}</span>
              </div>
            ))}
          </div>
        </div>

        <div className="nav-buttons">
          <button className="btn btn-back" onClick={() => setShowConfirm(false)} disabled={saving}>戻る</button>
          <button
            className={`btn ${confirmChoice && !saving ? 'btn-primary' : 'btn-disabled'}`}
            onClick={handleConfirmNext}
            disabled={!confirmChoice || saving}
          >
            {saving ? '保存中...' : '次へ'}
          </button>
        </div>
      </div>
    );
  }

  return (
    <div className="page-container">
      {showAd && <AdOverlay onClose={() => setShowAd(false)} ready={!loading} />}
      {confirmDelete && <ConfirmDeleteDialog onCancel={() => setConfirmDelete(false)} onConfirm={handleDeleteConfirm} />}
      <div className="page-body">
        <div className="exam-name-bar">{collectionTitle}</div>
        <div style={{ display: 'flex', alignItems: 'center', marginBottom: '1rem' }}>
          <p style={{ fontSize: '0.85rem', color: 'var(--text-light)', flex: 1 }}>
            問題 {index + 1} / {questions.length}
          </p>
          <button onClick={() => setConfirmDelete(true)}
            style={{ background: 'none', border: 'none', cursor: 'pointer', padding: '0.25rem', display: 'flex', alignItems: 'center', position: 'absolute', left: '50%', transform: 'translateX(-50%)' }}>
            <TrashIcon color="#ef4444" size={20} />
          </button>
          <button
            onClick={handleAddQuestion}
            disabled={!isQuestionValid(questions[questions.length - 1])}
            style={{
              fontSize: '0.75rem', color: !isQuestionValid(questions[questions.length - 1]) ? 'var(--disabled-text)' : 'var(--primary)',
              background: 'none', border: 'none', cursor: !isQuestionValid(questions[questions.length - 1]) ? 'default' : 'pointer',
              flexShrink: 0,
            }}>
            ＋ 問題を追加
          </button>
        </div>

        <div style={{ marginBottom: '0.75rem' }}>
          <label style={{ fontSize: '0.85rem', fontWeight: 600, display: 'block', marginBottom: '0.375rem' }}>分野 <span style={{ color: 'var(--incorrect)' }}>*</span></label>
          <input type="text" className="search-input"
            value={current.category}
            onChange={(e) => updateCurrent({ ...current, category: e.target.value })} />
        </div>

        <div style={{ marginBottom: '0.75rem' }}>
          <label style={{ fontSize: '0.85rem', fontWeight: 600, display: 'block', marginBottom: '0.375rem' }}>問題文 <span style={{ color: 'var(--incorrect)' }}>*</span></label>
          <textarea className="search-input" rows={3}
            value={current.body_text}
            onChange={(e) => updateCurrent({ ...current, body_text: e.target.value })}
            style={{ resize: 'vertical', fontFamily: 'inherit' }} />
        </div>

        <div style={{ marginBottom: '0.75rem' }}>
          <label style={{ fontSize: '0.85rem', fontWeight: 600, display: 'block', marginBottom: '0.375rem' }}>解説文</label>
          <textarea className="search-input" rows={2}
            value={current.explanation}
            onChange={(e) => updateCurrent({ ...current, explanation: e.target.value })}
            style={{ resize: 'vertical', fontFamily: 'inherit' }} />
        </div>

        <div style={{ marginBottom: '0.5rem' }}>
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '0.5rem' }}>
            <label style={{ fontSize: '0.85rem', fontWeight: 600 }}>選択肢（{current.choices.length}択）</label>
            {current.choices.length < MAX_CHOICES && (
              <button onClick={handleAddChoice}
                style={{ fontSize: '0.75rem', color: 'var(--primary)', background: 'none', border: 'none', cursor: 'pointer' }}>
                ＋ 選択肢を追加
              </button>
            )}
          </div>
          <div style={{ display: 'flex', flexDirection: 'column', gap: '0.5rem' }}>
            {current.choices.map((c, ci) => (
              <div key={ci} style={{ display: 'flex', alignItems: 'center', gap: '0.5rem' }}>
                <span style={{
                  fontSize: '0.75rem', fontWeight: 700, width: '40px', flexShrink: 0,
                  color: c.is_correct ? 'var(--correct)' : 'var(--text-light)',
                }}>
                  {c.is_correct ? '正答' : `誤答${current.choices.slice(0, ci).filter((x) => !x.is_correct).length + 1}`}
                  {(c.is_correct || current.choices.slice(0, ci).filter((x) => !x.is_correct).length === 0) && (
                    <span style={{ color: 'var(--incorrect)' }}> *</span>
                  )}
                </span>
                <input type="text" className="search-input"
                  value={c.choice_text}
                  onChange={(e) => handleChoiceText(ci, e.target.value)}
                  style={{ margin: 0 }} />
                {!c.is_correct && current.choices.length > 2 && (
                  <button onClick={() => handleRemoveChoice(ci)}
                    style={{ fontSize: '0.8rem', color: 'var(--incorrect)', background: 'none', border: 'none', cursor: 'pointer', flexShrink: 0 }}>
                    ✕
                  </button>
                )}
              </div>
            ))}
          </div>
        </div>
      </div>

      <div className="nav-buttons">
        <button className="btn btn-back" onClick={handleBack}>戻る</button>
        <button className="btn btn-primary" onClick={handleFinish} style={{ fontSize: '0.85rem' }}>
          終了
        </button>
        <button
          className={`btn ${index < questions.length - 1 ? 'btn-primary' : 'btn-disabled'}`}
          onClick={handleNext} disabled={index === questions.length - 1}
          style={{ fontSize: '0.85rem' }}>
          次へ
        </button>
      </div>
    </div>
  );
}
