'use client';

import { useRouter, useSearchParams } from 'next/navigation';
import Link from 'next/link';
import { useState, useEffect, Suspense } from 'react';
import type { QuestionDraft, CreateDraft } from '@/lib/types';

const DRAFT_KEY = 'create_draft';

function TrashIcon({ color, size }: { color: string; size: number }) {
  return (
    <svg viewBox="0 0 512 512" width={size} height={size}>
      <path fill={color} d="M439.114,69.747c0,0,2.977,2.1-43.339-11.966c-41.52-12.604-80.795-15.309-80.795-15.309l-2.722-19.297C310.387,9.857,299.484,0,286.642,0h-30.651h-30.651c-12.825,0-23.729,9.857-25.616,23.175l-2.722,19.297c0,0-39.258,2.705-80.778,15.309C69.891,71.848,72.868,69.747,72.868,69.747c-10.324,2.849-17.536,12.655-17.536,23.864v16.695h200.66h200.677V93.611C456.669,82.402,449.456,72.596,439.114,69.747z" />
      <path fill={color} d="M88.593,464.731C90.957,491.486,113.367,512,140.234,512h231.524c26.857,0,49.276-20.514,51.64-47.269l25.642-327.21H62.952L88.593,464.731z M342.016,209.904c0.51-8.402,7.731-14.807,16.134-14.296c8.402,0.51,14.798,7.731,14.296,16.134l-14.492,239.493c-0.51,8.402-7.731,14.798-16.133,14.288c-8.403-0.51-14.806-7.722-14.296-16.125L342.016,209.904z M240.751,210.823c0-8.42,6.821-15.241,15.24-15.241c8.42,0,15.24,6.821,15.24,15.241v239.492c0,8.42-6.821,15.24-15.24,15.24c-8.42,0-15.24-6.821-15.24-15.24V210.823z M153.833,195.608c8.403-0.51,15.624,5.894,16.134,14.296l14.509,239.492c0.51,8.403-5.894,15.615-14.296,16.125c-8.403-0.51-15.624-5.886-16.134-14.288l-14.509-239.493C139.026,203.339,145.43,196.118,153.833,195.608z" />
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

function PreviewForm() {
  const router = useRouter();
  const params = useSearchParams();
  const name = params.get('name') || '';
  const type = params.get('type') || 'choice_single';

  const [questions, setQuestions] = useState<QuestionDraft[]>([]);
  const [index, setIndex] = useState(0);
  const [confirmDelete, setConfirmDelete] = useState(false);

  useEffect(() => {
    const saved = sessionStorage.getItem(DRAFT_KEY);
    if (!saved) { router.push('/create'); return; }
    const draft: CreateDraft = JSON.parse(saved);
    setQuestions(draft.questions);
  }, [router]);

  if (questions.length === 0) return null;

  const q = questions[index];

  const updateCurrent = (updated: QuestionDraft) => {
    const next = [...questions];
    next[index] = updated;
    setQuestions(next);
    const saved = sessionStorage.getItem(DRAFT_KEY);
    if (saved) {
      const draft: CreateDraft = JSON.parse(saved);
      draft.questions = next;
      sessionStorage.setItem(DRAFT_KEY, JSON.stringify(draft));
    }
  };

  const handleChoiceText = (i: number, text: string) => {
    const updatedChoices = q.choices.map((c, ci) => ci === i ? { ...c, choice_text: text } : c);
    updateCurrent({ ...q, choices: updatedChoices });
  };

  const handleAddChoice = () => {
    if (q.choices.length >= 9) return;
    const newChoice = { choice_text: '', is_correct: false, sort_order: q.choices.length + 1 };
    updateCurrent({ ...q, choices: [...q.choices, newChoice] });
  };

  const handleRemoveChoice = (i: number) => {
    if (i === 0 || q.choices.length <= 2) return;
    const updatedChoices = q.choices
      .filter((_, ci) => ci !== i)
      .map((c, ci) => ({ ...c, sort_order: ci + 1 }));
    updateCurrent({ ...q, choices: updatedChoices });
  };

  const handleBack = () => {
    if (index > 0) setIndex((i) => i - 1);
    else router.push('/create');
  };

  const scrollToTop = () => {
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

  const handleAddQuestion = () => {
    const newQ: QuestionDraft = {
      category: '',
      body_text: '',
      explanation: '',
      choices: [
        { choice_text: '', is_correct: true, sort_order: 1 },
        { choice_text: '', is_correct: false, sort_order: 2 },
        { choice_text: '', is_correct: false, sort_order: 3 },
        { choice_text: '', is_correct: false, sort_order: 4 },
      ],
    };
    const isLastEmpty = questions.length > 0 &&
      !questions[questions.length - 1].body_text.trim() &&
      questions[questions.length - 1].choices.every((c) => !c.choice_text.trim());
    if (isLastEmpty) return;
    const next = [...questions, newQ];
    setQuestions(next);
    const saved = sessionStorage.getItem(DRAFT_KEY);
    if (saved) {
      const draft: CreateDraft = JSON.parse(saved);
      draft.questions = next;
      sessionStorage.setItem(DRAFT_KEY, JSON.stringify(draft));
    }
    setIndex(next.length - 1);
    scrollToTop();
  };

  const handleDeleteConfirm = () => {
    const next = questions.filter((_, i) => i !== index);
    const saved = sessionStorage.getItem(DRAFT_KEY);
    if (saved) {
      const draft: CreateDraft = JSON.parse(saved);
      draft.questions = next;
      sessionStorage.setItem(DRAFT_KEY, JSON.stringify(draft));
    }
    if (next.length === 0) { router.push('/create'); return; }
    setQuestions(next);
    setIndex((i) => Math.min(i, next.length - 1));
    setConfirmDelete(false);
  };

  const isQuestionValid = (q: QuestionDraft) =>
    q.category.trim() &&
    q.body_text.trim() &&
    !!(q.choices[0]?.choice_text.trim()) &&
    !!(q.choices[1]?.choice_text.trim());

  const handleNext = () => {
    if (index < questions.length - 1) {
      setIndex((i) => i + 1);
      scrollToTop();
    }
  };

  const handleFinish = () => {
    const validQuestions = questions.filter(isQuestionValid).map((q) => ({
      ...q,
      choices: q.choices.filter((c) => c.choice_text.trim() !== ''),
    }));
    if (validQuestions.length === 0) return;
    const saved = sessionStorage.getItem(DRAFT_KEY);
    if (saved) {
      const draft: CreateDraft = JSON.parse(saved);
      draft.questions = validQuestions;
      sessionStorage.setItem(DRAFT_KEY, JSON.stringify(draft));
    }
    router.push(`/create/confirm?name=${encodeURIComponent(name)}&type=${type}&count=${validQuestions.length}`);
  };

  return (
    <div className="page-container">
      {confirmDelete && <ConfirmDeleteDialog onCancel={() => setConfirmDelete(false)} onConfirm={handleDeleteConfirm} />}
      <div className="page-body">
        <div className="exam-name-bar">{name}</div>
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
            disabled={questions.length > 0 && !isQuestionValid(questions[questions.length - 1])}
            style={{
              fontSize: '0.75rem',
              color: questions.length > 0 && !isQuestionValid(questions[questions.length - 1])
                ? 'var(--disabled-text)' : 'var(--primary)',
              background: 'none', border: 'none', cursor: 'pointer', flexShrink: 0,
            }}>
            ＋ 問題を追加
          </button>
        </div>

        <div style={{ marginBottom: '0.75rem' }}>
          <label style={{ fontSize: '0.85rem', fontWeight: 600, display: 'block', marginBottom: '0.375rem' }}>
            分野 <span style={{ color: 'var(--incorrect)' }}>*</span>
          </label>
          <input
            type="text"
            className="search-input"
            value={q.category}
            onChange={(e) => updateCurrent({ ...q, category: e.target.value })}
          />
        </div>

        <div style={{ marginBottom: '0.75rem' }}>
          <label style={{ fontSize: '0.85rem', fontWeight: 600, display: 'block', marginBottom: '0.375rem' }}>
            問題文 <span style={{ color: 'var(--incorrect)' }}>*</span>
          </label>
          <textarea
            className="search-input"
            rows={3}
            value={q.body_text}
            onChange={(e) => updateCurrent({ ...q, body_text: e.target.value })}
            style={{ resize: 'vertical', fontFamily: 'inherit' }}
          />
        </div>

        <div style={{ marginBottom: '0.75rem' }}>
          <label style={{ fontSize: '0.85rem', fontWeight: 600, display: 'block', marginBottom: '0.375rem' }}>
            解説文
          </label>
          <textarea
            className="search-input"
            rows={2}
            value={q.explanation}
            onChange={(e) => updateCurrent({ ...q, explanation: e.target.value })}
            style={{ resize: 'vertical', fontFamily: 'inherit' }}
          />
        </div>

        <div style={{ marginBottom: '0.5rem' }}>
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '0.5rem' }}>
            <label style={{ fontSize: '0.85rem', fontWeight: 600 }}>選択肢（{q.choices.length}択）</label>
            {q.choices.length < 9 && (
              <button
                onClick={handleAddChoice}
                style={{ fontSize: '0.75rem', color: 'var(--primary)', background: 'none', border: 'none', cursor: 'pointer' }}
              >
                ＋ 選択肢を追加
              </button>
            )}
          </div>
          <div style={{ display: 'flex', flexDirection: 'column', gap: '0.5rem' }}>
            {q.choices.map((c, i) => (
              <div key={i} style={{ display: 'flex', alignItems: 'center', gap: '0.5rem' }}>
                <span style={{
                  fontSize: '0.75rem', fontWeight: 700, width: '40px', flexShrink: 0,
                  color: i === 0 ? 'var(--correct)' : 'var(--text-light)',
                }}>
                  {i === 0 ? '正答' : `誤答${i}`}
                  {(i === 0 || i === 1) && <span style={{ color: 'var(--incorrect)' }}> *</span>}
                </span>
                <input
                  type="text"
                  className="search-input"
                  value={c.choice_text}
                  onChange={(e) => handleChoiceText(i, e.target.value)}
                  style={{ margin: 0 }}
                />
                {i > 0 && q.choices.length > 2 && (
                  <button
                    onClick={() => handleRemoveChoice(i)}
                    style={{ fontSize: '0.8rem', color: 'var(--incorrect)', background: 'none', border: 'none', cursor: 'pointer', flexShrink: 0 }}
                  >
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
        <button className="btn btn-primary" onClick={handleFinish} style={{ fontSize: '0.85rem' }}>終了</button>
        <button
          className={`btn ${index < questions.length - 1 ? 'btn-primary' : 'btn-disabled'}`}
          onClick={handleNext}
          disabled={index === questions.length - 1}
          style={{ fontSize: '0.85rem' }}
        >
          次へ
        </button>
      </div>
    </div>
  );
}

export default function PreviewPage() {
  return (
    <Suspense>
      <PreviewForm />
    </Suspense>
  );
}
