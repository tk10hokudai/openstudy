'use client';

import { useEffect, useRef, useState } from 'react';
import { useParams, useRouter } from 'next/navigation';
import Link from 'next/link';
import { supabase } from '@/lib/supabase';
import { getQuizResult, clearQuizResult, saveRetryIds, clearReviewState, getReviewState } from '@/lib/storage';
import { Exam } from '@/lib/types';
import AdOverlay from '@/components/AdOverlay';

type Result = { questionId: number; correct: boolean };

export default function ResultPage() {
  const params = useParams();
  const router = useRouter();
  const examId = params.examId as string;
  // examId=0 の場合、または review state に collectionId がある場合はユーザー問題集
  const isUserCollection = examId === '0' || getReviewState(examId)?.collectionId != null;

  const [exam, setExam] = useState<Exam | null>(null);
  const [results, setResults] = useState<Result[]>([]);
  const [selected, setSelected] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);
  const [collectionTitle, setCollectionTitle] = useState('');
  const [collectionId, setCollectionId] = useState<number | undefined>(undefined);
  const [showAd, setShowAd] = useState(false);

  useEffect(() => {
    if (sessionStorage.getItem('show_ad_result') === '1') {
      sessionStorage.removeItem('show_ad_result');
      setShowAd(true);
    }
  }, []);

  useEffect(() => {
    async function fetchExam() {
      const review = getReviewState(examId);
      if (review?.collectionTitle) setCollectionTitle(review.collectionTitle);
      if (review?.collectionId) setCollectionId(review.collectionId);

      if (!isUserCollection) {
        const { data } = await supabase.from('exams').select('*').eq('id', examId).single();
        if (data) setExam(data);
      }
      setLoading(false);
    }
    fetchExam();
    setResults(getQuizResult(examId));
  }, [examId, isUserCollection]);

  const correctCount = results.filter((r) => r.correct).length;
  const total = results.length;
  const percentage = total > 0 ? Math.round((correctCount / total) * 100) : 0;
  const wrongIds = results.filter((r) => !r.correct).map((r) => r.questionId);

  const handleAddWrongToCollection = () => {
    if (wrongIds.length === 0) return;
    let addUrl = `/exams/${examId}/add-to-collection?questionIds=${wrongIds.join(',')}&returnTo=/exams/${examId}/result&bulk=1`;
    if (isUserCollection) {
      addUrl += '&uq=1';
      if (collectionId) addUrl += `&excludeCollectionId=${collectionId}`;
    }
    router.push(addUrl);
  };

  const options = [
    { id: 'restart', label: 'はじめから', disabled: false },
    { id: 'retry', label: '間違えた問題のみ', disabled: wrongIds.length === 0, disabledReason: '全問正解' },
    { id: 'end', label: '終了する', disabled: false },
  ];

  const handleNext = () => {
    const review = getReviewState(examId);
    clearReviewState(examId);
    if (selected === 'restart') {
      clearQuizResult(examId);
      const restartUrl = review?.restartUrl || `/exams/${examId}/quiz?mode=normal`;
      router.push(`${restartUrl}&t=${Date.now()}`);
    } else if (selected === 'retry') {
      saveRetryIds(examId, wrongIds);
      clearQuizResult(examId);
      let retryUrl = `/exams/${examId}/quiz?mode=retry&t=${Date.now()}`;
      if (review?.collectionId) retryUrl += `&collectionId=${review.collectionId}`;
      if (review?.collectionTitle) retryUrl += `&collectionTitle=${encodeURIComponent(review.collectionTitle)}`;
      router.push(retryUrl);
    } else if (selected === 'end') {
      clearQuizResult(examId);
      router.push('/search');
    }
  };

  const handleNextRef = useRef(handleNext);
  handleNextRef.current = handleNext;

  useEffect(() => {
    const onKeyDown = (e: KeyboardEvent) => {
      if (e.key === 'ArrowRight') {
        if (selected) handleNextRef.current();
      } else if (e.key === 'ArrowLeft') {
        let reviewUrl = `/exams/${examId}/quiz?mode=review`;
        if (collectionId) reviewUrl += `&collectionId=${collectionId}`;
        if (collectionTitle) reviewUrl += `&collectionTitle=${encodeURIComponent(collectionTitle)}`;
        router.push(reviewUrl);
      } else if (e.key === '1') {
        setSelected('restart');
      } else if (e.key === '2') {
        if (wrongIds.length > 0) setSelected('retry');
      } else if (e.key === '3') {
        setSelected('end');
      }
    };
    window.addEventListener('keydown', onKeyDown);
    return () => window.removeEventListener('keydown', onKeyDown);
  }, [selected, wrongIds, examId, router, collectionId, collectionTitle]);

  if (loading) {
    return (<div className="page-container">
      <div className="page-body"><p style={{ color: 'var(--text-light)', textAlign: 'center', padding: '2rem' }}>読み込み中...</p></div></div>);
  }

  const displayTitle = collectionTitle || exam?.title || '';

  const backUrl = (() => {
    let url = `/exams/${examId}/quiz?mode=review`;
    if (collectionId) url += `&collectionId=${collectionId}`;
    if (collectionTitle) url += `&collectionTitle=${encodeURIComponent(collectionTitle)}`;
    return url;
  })();

  return (
    <div className="page-container">
      {showAd && <AdOverlay onClose={() => setShowAd(false)} />}
      <div className="page-body">
        <div className="exam-name-bar">{displayTitle}</div>

        <div className="score-display">
          <div className="score-value">{percentage}%</div>
          <p style={{ color: 'var(--text-light)', fontSize: '0.9rem', marginTop: '0.5rem' }}>
            {total}問中 {correctCount}問正解
          </p>
        </div>

        {wrongIds.length > 0 && (
          <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'center', gap: '0.5rem', marginBottom: '1.5rem' }}>
            <span style={{ fontSize: '0.9rem', color: 'var(--text-light)' }}>
              間違えた問題をすべて追加する
            </span>
            <button
              className="favorite-btn"
              style={{ color: 'var(--primary)', fontSize: '1.5rem' }}
              onClick={handleAddWrongToCollection}
            >
              ＋
            </button>
          </div>
        )}

        <div className="radio-list">
          {options.map((option, idx) => (
            <div key={option.id}
              className={`radio-option ${selected === option.id ? 'selected' : ''} ${option.disabled ? 'disabled' : ''}`}
              onClick={() => { if (!option.disabled) setSelected(option.id); }}>
              <div className={`radio-circle ${selected === option.id ? 'checked' : ''}`}>
                {selected === option.id && <div className="radio-circle-inner" />}
              </div>
              <span className="radio-label">
                {idx + 1}. {option.label}
                {option.disabled && option.disabledReason && <span className="radio-badge">（{option.disabledReason}）</span>}
              </span>
            </div>
          ))}
        </div>
      </div>

      <div className="nav-buttons">
        <button className="btn btn-back" onClick={() => router.push(backUrl)}>戻る</button>
        <button className={`btn ${selected ? 'btn-primary' : 'btn-disabled'}`} onClick={handleNext} disabled={!selected}>次へ</button>
      </div>
    </div>
  );
}
