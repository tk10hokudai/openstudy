'use client';

import { useEffect, useState } from 'react';
import { useParams, useRouter } from 'next/navigation';
import Link from 'next/link';
import { supabase } from '@/lib/supabase';
import { Exam } from '@/lib/types';

type ModeOption = {
  id: string;
  label: string;
  disabled: boolean;
  disabledReason?: string;
};

export default function ModePage() {
  const params = useParams();
  const router = useRouter();
  const examId = params.examId as string;

  const [exam, setExam] = useState<Exam | null>(null);
  const [selected, setSelected] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);

  // localStorage の中断データ・お気に入りを確認
  const [hasProgress, setHasProgress] = useState(false);
  const [hasFavorites, setHasFavorites] = useState(false);

  useEffect(() => {
    async function fetchExam() {
      const { data, error } = await supabase
        .from('exams')
        .select('*')
        .eq('id', examId)
        .single();

      if (!error && data) {
        setExam(data);
      }
      setLoading(false);
    }
    fetchExam();

    // localStorage 確認
    const progress = localStorage.getItem(`progress_${examId}`);
    setHasProgress(!!progress);

    const favorites = JSON.parse(localStorage.getItem(`favorites_${examId}`) || '[]');
    setHasFavorites(favorites.length > 0);
  }, [examId]);

  const modeOptions: ModeOption[] = [
    { id: 'start', label: 'はじめから', disabled: false },
    {
      id: 'continue',
      label: 'つづきから',
      disabled: !hasProgress,
      disabledReason: '中断データなし',
    },
    {
      id: 'favorites',
      label: '【☆】問題のみ',
      disabled: !hasFavorites,
      disabledReason: '【☆】問題なし',
    },
  ];

  const handleNext = () => {
    if (selected === 'start') {
      router.push(`/exams/${examId}/sections`);
    } else if (selected === 'continue') {
      router.push(`/exams/${examId}/quiz?mode=continue`);
    } else if (selected === 'favorites') {
      router.push(`/exams/${examId}/quiz?mode=favorites`);
    }
  };

  if (loading) {
    return (
      <div className="page-container">
        <header className="header">
          <Link href="/" className="header-logo">OpenStudy</Link>
        </header>
        <div className="page-body">
          <p style={{ color: 'var(--text-light)', textAlign: 'center', padding: '2rem' }}>
            読み込み中...
          </p>
        </div>
      </div>
    );
  }

  return (
    <div className="page-container">
      {/* Header */}
      <header className="header">
        <Link href="/" className="header-logo">OpenStudy</Link>
      </header>

      {/* Body */}
      <div className="page-body">
        <div className="exam-name-bar">
          {exam?.title}
        </div>

        <div className="radio-list">
          {modeOptions.map((option) => (
            <div
              key={option.id}
              className={`radio-option ${selected === option.id ? 'selected' : ''} ${option.disabled ? 'disabled' : ''}`}
              onClick={() => {
                if (!option.disabled) setSelected(option.id);
              }}
            >
              <div className={`radio-circle ${selected === option.id ? 'checked' : ''}`}>
                {selected === option.id && <div className="radio-circle-inner" />}
              </div>
              <span className="radio-label">
                {option.label}
                {option.disabled && option.disabledReason && (
                  <span className="radio-badge">（{option.disabledReason}）</span>
                )}
              </span>
            </div>
          ))}
        </div>
      </div>

      {/* Navigation */}
      <div className="nav-buttons">
        <button className="btn btn-back" onClick={() => router.back()}>
          戻る
        </button>
        <button
          className={`btn ${selected ? 'btn-primary' : 'btn-disabled'}`}
          onClick={handleNext}
          disabled={!selected}
        >
          次へ
        </button>
      </div>
    </div>
  );
}