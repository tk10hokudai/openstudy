'use client';

import { useEffect, useState } from 'react';
import { useParams, useRouter } from 'next/navigation';
import Link from 'next/link';
import { supabase } from '@/lib/supabase';
import { Exam } from '@/lib/types';

type Result = {
  questionId: number;
  correct: boolean;
};

export default function ResultPage() {
  const params = useParams();
  const router = useRouter();
  const examId = params.examId as string;

  const [exam, setExam] = useState<Exam | null>(null);
  const [results, setResults] = useState<Result[]>([]);
  const [selected, setSelected] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    // 試験名を取得
    async function fetchExam() {
      const { data } = await supabase
        .from('exams')
        .select('*')
        .eq('id', examId)
        .single();

      if (data) setExam(data);
      setLoading(false);
    }
    fetchExam();

    // 結果データを取得
    const saved = localStorage.getItem(`quizResult_${examId}`);
    if (saved) {
      setResults(JSON.parse(saved));
    }
  }, [examId]);

  const correctCount = results.filter((r) => r.correct).length;
  const total = results.length;
  const percentage = total > 0 ? Math.round((correctCount / total) * 100) : 0;
  const wrongIds = results.filter((r) => !r.correct).map((r) => r.questionId);

  const options = [
    { id: 'restart', label: 'はじめから', disabled: false },
    {
      id: 'retry',
      label: '間違えた問題のみ',
      disabled: wrongIds.length === 0,
      disabledReason: '全問正解',
    },
    { id: 'end', label: '終了する', disabled: false },
  ];

  const handleNext = () => {
    if (selected === 'restart') {
      localStorage.removeItem(`quizResult_${examId}`);
      router.push(`/exams/${examId}/quiz?mode=normal&t=${Date.now()}`);
    } else if (selected === 'retry') {
      localStorage.setItem(`retry_${examId}`, JSON.stringify(wrongIds));
      localStorage.removeItem(`quizResult_${examId}`);
      router.push(`/exams/${examId}/quiz?mode=retry&t=${Date.now()}`);
    } else if (selected === 'end') {
      localStorage.removeItem(`quizResult_${examId}`);
      router.push('/');
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

        {/* 正答率表示 */}
        <div className="score-display">
          <div className="score-label">正答率</div>
          <div className="score-value">{percentage}%</div>
          <p style={{ color: 'var(--text-light)', fontSize: '0.9rem', marginTop: '0.5rem' }}>
            {total}問中 {correctCount}問正解
          </p>
        </div>

        {/* 次の行動 */}
        <div className="radio-list">
          {options.map((option) => (
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