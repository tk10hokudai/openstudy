'use client';

import { useEffect, useState } from 'react';
import { useParams, useRouter } from 'next/navigation';
import Link from 'next/link';
import { supabase } from '@/lib/supabase';
import { Exam } from '@/lib/types';

export default function ModePage() {
  const params = useParams();
  const router = useRouter();
  const examId = params.examId as string;

  const [exam, setExam] = useState<Exam | null>(null);
  const [selected, setSelected] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);

  const [hasProgress, setHasProgress] = useState(false);
  const [progressInfo, setProgressInfo] = useState<string>('');
  const [hasFavorites, setHasFavorites] = useState(false);
  const [totalQuestions, setTotalQuestions] = useState(0);
  const [randomCount, setRandomCount] = useState('');

  useEffect(() => {
    async function fetchData() {
      const { data: examData } = await supabase
        .from('exams')
        .select('*')
        .eq('id', examId)
        .single();

      if (examData) setExam(examData);

      // 全問題数を取得
      const { data: sections } = await supabase
        .from('exam_sections')
        .select('id')
        .eq('exam_id', examId);

      if (sections) {
        const sectionIds = sections.map((s) => s.id);

        // 独立問題
        const { count: soloCount } = await supabase
          .from('questions')
          .select('id', { count: 'exact', head: true })
          .in('section_id', sectionIds);

        // グループ問題内の問題
        const { data: groups } = await supabase
          .from('question_groups')
          .select('id')
          .in('section_id', sectionIds);

        let groupQuestionCount = 0;
        if (groups && groups.length > 0) {
          const groupIds = groups.map((g) => g.id);
          const { count } = await supabase
            .from('questions')
            .select('id', { count: 'exact', head: true })
            .in('group_id', groupIds);
          groupQuestionCount = count || 0;
        }

        setTotalQuestions((soloCount || 0) + groupQuestionCount);
      }

      setLoading(false);
    }
    fetchData();

    // 中断データ確認
    const progressStr = localStorage.getItem(`progress_${examId}`);
    if (progressStr) {
      setHasProgress(true);
      try {
        const progress = JSON.parse(progressStr);
        const modeLabel =
          progress.mode === 'favorites' ? '☆問題' :
          progress.mode === 'random' ? 'ランダム' : 'はじめから';
        const answered = (progress.results || []).length;
        const total = progress.totalItems || '?';
        setProgressInfo(`${modeLabel} - ${answered}/${total}問回答済み`);
      } catch {
        setProgressInfo('');
      }
    }

    const favorites = JSON.parse(localStorage.getItem(`favorites_${examId}`) || '[]');
    setHasFavorites(favorites.length > 0);
  }, [examId]);

  const handleNext = () => {
    if (selected === 'start') {
      router.push(`/exams/${examId}/sections`);
    } else if (selected === 'continue') {
      router.push(`/exams/${examId}/quiz?mode=continue`);
    } else if (selected === 'favorites') {
      router.push(`/exams/${examId}/quiz?mode=favorites`);
    } else if (selected === 'random') {
      const count = parseInt(randomCount, 10);
      if (count > 0 && count <= totalQuestions) {
        router.push(`/exams/${examId}/quiz?mode=random&count=${count}`);
      }
    }
  };

  const canProceed = (): boolean => {
    if (!selected) return false;
    if (selected === 'random') {
      const count = parseInt(randomCount, 10);
      return !isNaN(count) && count >= 1 && count <= totalQuestions;
    }
    return true;
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
      <header className="header">
        <Link href="/" className="header-logo">OpenStudy</Link>
      </header>

      <div className="page-body">
        <div className="exam-name-bar">{exam?.title}</div>

        <div className="radio-list">
          {/* つづきから */}
          <div
            className={`radio-option ${selected === 'continue' ? 'selected' : ''} ${!hasProgress ? 'disabled' : ''}`}
            onClick={() => { if (hasProgress) setSelected('continue'); }}
          >
            <div className={`radio-circle ${selected === 'continue' ? 'checked' : ''}`}>
              {selected === 'continue' && <div className="radio-circle-inner" />}
            </div>
            <div>
              <span className="radio-label">つづきから</span>
              {!hasProgress ? (
                <span className="radio-badge">（中断データなし）</span>
              ) : progressInfo && (
                <span className="radio-badge">（{progressInfo}）</span>
              )}
            </div>
          </div>

          {/* はじめから */}
          <div
            className={`radio-option ${selected === 'start' ? 'selected' : ''}`}
            onClick={() => setSelected('start')}
          >
            <div className={`radio-circle ${selected === 'start' ? 'checked' : ''}`}>
              {selected === 'start' && <div className="radio-circle-inner" />}
            </div>
            <span className="radio-label">はじめから</span>
          </div>

          {/* ランダム */}
          <div
            className={`radio-option ${selected === 'random' ? 'selected' : ''} ${totalQuestions === 0 ? 'disabled' : ''}`}
            onClick={() => { if (totalQuestions > 0) setSelected('random'); }}
          >
            <div className={`radio-circle ${selected === 'random' ? 'checked' : ''}`}>
              {selected === 'random' && <div className="radio-circle-inner" />}
            </div>
            <div style={{ flex: 1, display: 'flex', alignItems: 'center', gap: '0.5rem', flexWrap: 'wrap' }}>
              <span className="radio-label">ランダムに</span>
              <input
                type="number"
                min={1}
                max={totalQuestions}
                value={randomCount}
                onChange={(e) => {
                  setRandomCount(e.target.value);
                  setSelected('random');
                }}
                onClick={(e) => {
                  e.stopPropagation();
                  setSelected('random');
                }}
                placeholder="x"
                style={{
                  width: '60px',
                  padding: '0.25rem 0.5rem',
                  border: '1.5px solid var(--border)',
                  borderRadius: '4px',
                  fontSize: '0.9rem',
                  textAlign: 'center',
                }}
              />
              <span className="radio-label">問出題</span>
              <span className="radio-badge">（1〜{totalQuestions}問）</span>
            </div>
          </div>

          {/* ☆問題のみ */}
          <div
            className={`radio-option ${selected === 'favorites' ? 'selected' : ''} ${!hasFavorites ? 'disabled' : ''}`}
            onClick={() => { if (hasFavorites) setSelected('favorites'); }}
          >
            <div className={`radio-circle ${selected === 'favorites' ? 'checked' : ''}`}>
              {selected === 'favorites' && <div className="radio-circle-inner" />}
            </div>
            <span className="radio-label">
              ☆問題のみ
              {!hasFavorites && <span className="radio-badge">（お気に入りなし）</span>}
            </span>
          </div>
        </div>
      </div>

      <div className="nav-buttons">
        <button className="btn btn-back" onClick={() => router.back()}>戻る</button>
        <button
          className={`btn ${canProceed() ? 'btn-primary' : 'btn-disabled'}`}
          onClick={handleNext}
          disabled={!canProceed()}
        >
          次へ
        </button>
      </div>
    </div>
  );
}