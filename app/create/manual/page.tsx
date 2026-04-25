'use client';

import { useRouter, useSearchParams } from 'next/navigation';
import Link from 'next/link';
import { useState, useEffect, Suspense } from 'react';
import type { QuestionDraft, CreateDraft } from '@/lib/types';

const DRAFT_KEY = 'create_draft';
const MIN_CHOICES = 2;
const MAX_CHOICES = 9;

function buildEmptyChoices(count: number) {
  return Array.from({ length: count }, (_, i) => ({
    choice_text: '',
    is_correct: i === 0,
    sort_order: i + 1,
  }));
}

function ManualForm() {
  const router = useRouter();
  const params = useSearchParams();
  const method = params.get('method') || 'manual';
  const name = params.get('name') || '';
  const type = params.get('type') || 'choice_single';

  const [questions, setQuestions] = useState<QuestionDraft[]>([]);
  const [category, setCategory] = useState('');
  const [bodyText, setBodyText] = useState('');
  const [explanation, setExplanation] = useState('');
  const [choiceCount, setChoiceCount] = useState(4);
  const [choices, setChoices] = useState(buildEmptyChoices(4));

  useEffect(() => {
    const saved = sessionStorage.getItem(DRAFT_KEY);
    if (saved) {
      const draft: CreateDraft = JSON.parse(saved);
      if (draft.name === name) setQuestions(draft.questions);
    }
  }, [name]);

  const saveDraft = (qs: QuestionDraft[]) => {
    const draft: CreateDraft = { method: method as CreateDraft['method'], name, type: 'choice_single', questions: qs };
    sessionStorage.setItem(DRAFT_KEY, JSON.stringify(draft));
  };

  const handleChoiceCountChange = (count: number) => {
    setChoiceCount(count);
    setChoices((prev) => {
      if (count > prev.length) {
        return [
          ...prev,
          ...Array.from({ length: count - prev.length }, (_, i) => ({
            choice_text: '',
            is_correct: false,
            sort_order: prev.length + i + 1,
          })),
        ];
      }
      return prev.slice(0, count).map((c, i) => ({ ...c, sort_order: i + 1 }));
    });
  };

  const handleChoiceText = (index: number, text: string) => {
    setChoices((prev) => prev.map((c, i) => (i === index ? { ...c, choice_text: text } : c)));
  };

  const canSave = () =>
    category.trim() &&
    bodyText.trim() &&
    choices[0].choice_text.trim() &&
    choices.slice(1).some((c) => c.choice_text.trim());

  const resetForm = () => {
    setCategory('');
    setBodyText('');
    setExplanation('');
    setChoiceCount(4);
    setChoices(buildEmptyChoices(4));
  };

  const buildCurrentQuestion = (): QuestionDraft => ({
    category: category.trim(),
    body_text: bodyText.trim(),
    explanation: explanation.trim(),
    choices: choices
      .filter((c) => c.choice_text.trim())
      .map((c, i) => ({ ...c, sort_order: i + 1 })),
  });

  const loadQuestion = (q: QuestionDraft) => {
    setCategory(q.category);
    setBodyText(q.body_text);
    setExplanation(q.explanation);
    const count = q.choices.length;
    setChoiceCount(count);
    setChoices(q.choices.map((c, i) => ({ ...c, sort_order: i + 1 })));
  };

  const handleBack = () => {
    if (questions.length === 0) {
      router.push(`/create/details?name=${encodeURIComponent(name)}&method=${method}`);
      return;
    }
    const prev = questions[questions.length - 1];
    const next = questions.slice(0, -1);
    setQuestions(next);
    saveDraft(next);
    loadQuestion(prev);
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

  const handleNext = () => {
    if (!canSave()) return;
    const next = [...questions, buildCurrentQuestion()];
    setQuestions(next);
    saveDraft(next);
    resetForm();
    scrollToTop();
  };

  const handleFinish = () => {
    if (!canSave() && questions.length === 0) return;
    const next = canSave() ? [...questions, buildCurrentQuestion()] : questions;
    saveDraft(next);
    router.push(`/create/confirm?name=${encodeURIComponent(name)}&type=${type}&count=${next.length}`);
  };

  const questionNumber = questions.length + 1;

  return (
    <div className="page-container">
      <div className="page-body">
        <div className="exam-name-bar">{name}</div>
        <p style={{ fontSize: '0.85rem', color: 'var(--text-light)', marginBottom: '1rem' }}>
          問題 {questionNumber} 問目（作成済み: {questions.length} 問）
        </p>

        <div style={{ marginBottom: '1rem' }}>
          <label style={{ fontSize: '0.85rem', fontWeight: 600, display: 'block', marginBottom: '0.375rem' }}>
            分野 <span style={{ color: 'var(--incorrect)' }}>*</span>
          </label>
          <input
            type="text"
            className="search-input"
            placeholder="例: 数学 / Part 1"
            value={category}
            onChange={(e) => setCategory(e.target.value)}
          />
        </div>

        <div style={{ marginBottom: '1rem' }}>
          <label style={{ fontSize: '0.85rem', fontWeight: 600, display: 'block', marginBottom: '0.375rem' }}>
            問題文 <span style={{ color: 'var(--incorrect)' }}>*</span>
          </label>
          <textarea
            className="search-input"
            placeholder="問題を入力"
            rows={4}
            value={bodyText}
            onChange={(e) => setBodyText(e.target.value)}
            style={{ resize: 'vertical', fontFamily: 'inherit' }}
          />
        </div>

        <div style={{ marginBottom: '1rem' }}>
          <label style={{ fontSize: '0.85rem', fontWeight: 600, display: 'block', marginBottom: '0.375rem' }}>
            解説文
          </label>
          <textarea
            className="search-input"
            placeholder="解説を入力（省略可）"
            rows={2}
            value={explanation}
            onChange={(e) => setExplanation(e.target.value)}
            style={{ resize: 'vertical', fontFamily: 'inherit' }}
          />
        </div>

        <div style={{ marginBottom: '0.5rem', display: 'flex', alignItems: 'center', gap: '0.75rem' }}>
          <label style={{ fontSize: '0.85rem', fontWeight: 600 }}>
            選択肢数
          </label>
          <select
            value={choiceCount}
            onChange={(e) => handleChoiceCountChange(Number(e.target.value))}
            style={{
              padding: '0.25rem 0.5rem', border: '1.5px solid var(--border)',
              borderRadius: '6px', fontSize: '0.9rem',
            }}
          >
            {Array.from({ length: MAX_CHOICES - MIN_CHOICES + 1 }, (_, i) => i + MIN_CHOICES).map((n) => (
              <option key={n} value={n}>{n}択</option>
            ))}
          </select>
        </div>

        <div style={{ display: 'flex', flexDirection: 'column', gap: '0.5rem', marginBottom: '1rem' }}>
          {choices.map((choice, i) => (
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
                placeholder={i === 0 ? '正答を入力' : `誤答${i}を入力`}
                value={choice.choice_text}
                onChange={(e) => handleChoiceText(i, e.target.value)}
                style={{ margin: 0 }}
              />
            </div>
          ))}
        </div>
      </div>

      <div className="nav-buttons">
        <button className="btn btn-back" onClick={handleBack}>戻る</button>
        <button
          className={`btn ${canSave() || questions.length > 0 ? 'btn-primary' : 'btn-disabled'}`}
          onClick={handleFinish}
          disabled={!canSave() && questions.length === 0}
          style={{ fontSize: '0.85rem' }}
        >
          終了
        </button>
        <button
          className={`btn ${canSave() ? 'btn-primary' : 'btn-disabled'}`}
          onClick={handleNext}
          disabled={!canSave()}
          style={{ fontSize: '0.85rem' }}
        >
          次へ
        </button>
      </div>
    </div>
  );
}

export default function ManualPage() {
  return (
    <Suspense>
      <ManualForm />
    </Suspense>
  );
}
