'use client';

import { useEffect, useState, useCallback } from 'react';
import { useParams, useSearchParams, useRouter } from 'next/navigation';
import Link from 'next/link';
import { supabase } from '@/lib/supabase';
import { Exam, Question } from '@/lib/types';

type Result = {
  questionId: number;
  correct: boolean;
};

export default function QuizPage() {
  const params = useParams();
  const searchParams = useSearchParams();
  const router = useRouter();
  const examId = params.examId as string;
  const mode = searchParams.get('mode') || 'normal';
  const sectionId = searchParams.get('sectionId');

  const [exam, setExam] = useState<Exam | null>(null);
  const [questions, setQuestions] = useState<Question[]>([]);
  const [currentIndex, setCurrentIndex] = useState(0);
  const [selectedChoiceId, setSelectedChoiceId] = useState<number | null>(null);
  const [answered, setAnswered] = useState(false);
  const [isCorrect, setIsCorrect] = useState(false);
  const [results, setResults] = useState<Result[]>([]);
  const [showExplanation, setShowExplanation] = useState(false);
  const [favorites, setFavorites] = useState<number[]>([]);
  const [loading, setLoading] = useState(true);

  // お気に入り読み込み
  useEffect(() => {
    const saved = localStorage.getItem(`favorites_${examId}`);
    if (saved) setFavorites(JSON.parse(saved));
  }, [examId]);

  // データ取得
  useEffect(() => {
    async function fetchData() {
      // 試験名
      const { data: examData } = await supabase
        .from('exams')
        .select('*')
        .eq('id', examId)
        .single();

      if (examData) setExam(examData);

      // セクションIDの一覧を取得
      let sectionIds: number[] = [];

      if (sectionId) {
        // 特定セクションとその子孫を取得
        sectionIds = await getAllChildSectionIds(Number(sectionId));
        sectionIds.push(Number(sectionId));
      } else {
        // 試験全体
        const { data: sections } = await supabase
          .from('exam_sections')
          .select('id')
          .eq('exam_id', examId);

        if (sections) sectionIds = sections.map((s) => s.id);
      }

      if (sectionIds.length === 0) {
        setLoading(false);
        return;
      }

      // 問題取得
      const { data: questionData } = await supabase
        .from('questions')
        .select('*, choices(*)')
        .in('section_id', sectionIds)
        .order('question_number');

      if (questionData) {
        let filtered = questionData as Question[];

        if (mode === 'favorites') {
          const favs = JSON.parse(localStorage.getItem(`favorites_${examId}`) || '[]');
          filtered = filtered.filter((q) => favs.includes(q.id));
        }

        if (mode === 'retry') {
          const retryIds = JSON.parse(localStorage.getItem(`retry_${examId}`) || '[]');
          filtered = filtered.filter((q) => retryIds.includes(q.id));
        }

        setQuestions(filtered);

        if (mode === 'continue') {
          const saved = localStorage.getItem(`progress_${examId}`);
          if (saved) {
            const progress = JSON.parse(saved);
            setCurrentIndex(progress.currentIndex || 0);
            setResults(progress.results || []);
          }
        }
      }

      setLoading(false);
    }
    fetchData();
  }, [examId, mode, sectionId]);

  // 子孫セクションIDを再帰的に取得
  async function getAllChildSectionIds(parentId: number): Promise<number[]> {
    const { data: children } = await supabase
      .from('exam_sections')
      .select('id')
      .eq('parent_section_id', parentId);

    if (!children || children.length === 0) return [];

    const childIds = children.map((c) => c.id);
    const grandchildIds = await Promise.all(
      childIds.map((id) => getAllChildSectionIds(id))
    );

    return [...childIds, ...grandchildIds.flat()];
  }

  // 進捗保存
  const saveProgress = useCallback(() => {
    localStorage.setItem(
      `progress_${examId}`,
      JSON.stringify({ currentIndex, results })
    );
  }, [examId, currentIndex, results]);

  // 次へ（回答確定）
  const handleNext = () => {
    if (!answered) {
      // 回答を確定
      if (selectedChoiceId === null) return;
      const question = questions[currentIndex];
      const selectedChoice = question.choices.find((c) => c.id === selectedChoiceId);
      const correct = selectedChoice?.is_correct || false;
      setIsCorrect(correct);
      setAnswered(true);
      setResults((prev) => [...prev, { questionId: question.id, correct }]);
    } else {
      // 次の問題へ or 結果画面へ
      if (currentIndex + 1 >= questions.length) {
        // 結果画面へ
        localStorage.removeItem(`progress_${examId}`);
        const resultData = [...results];
        localStorage.setItem(`quizResult_${examId}`, JSON.stringify(resultData));
        router.push(`/exams/${examId}/result`);
      } else {
        setCurrentIndex((prev) => prev + 1);
        setSelectedChoiceId(null);
        setAnswered(false);
        setIsCorrect(false);
        setShowExplanation(false);
      }
    }
  };

  // 戻る
  const handleBack = () => {
    if (answered) {
      // 正誤判定画面 → 回答画面に戻す
      setAnswered(false);
      setIsCorrect(false);
      setShowExplanation(false);
      setResults((prev) => prev.slice(0, -1));
    } else if (currentIndex > 0) {
      // 前の問題へ
      setCurrentIndex((prev) => prev - 1);
      setSelectedChoiceId(null);
      setAnswered(false);
      setShowExplanation(false);
      setResults((prev) => prev.slice(0, -1));
    } else {
      // 最初の問題で戻る → 中断して前画面へ
      saveProgress();
      router.back();
    }
  };

  // お気に入り切り替え
  const toggleFavorite = (questionId: number) => {
    setFavorites((prev) => {
      const next = prev.includes(questionId)
        ? prev.filter((id) => id !== questionId)
        : [...prev, questionId];
      localStorage.setItem(`favorites_${examId}`, JSON.stringify(next));
      return next;
    });
  };

  if (loading) {
    return (
      <div className="page-container">
        <header className="header">
          <Link href="/" className="header-logo">OpenStudy</Link>
        </header>
        <div className="page-body">
          <p style={{ color: 'var(--text-light)', textAlign: 'center', padding: '2rem' }}>
            問題を読み込み中...
          </p>
        </div>
      </div>
    );
  }

  if (questions.length === 0) {
    return (
      <div className="page-container">
        <header className="header">
          <Link href="/" className="header-logo">OpenStudy</Link>
        </header>
        <div className="page-body">
          <p style={{ textAlign: 'center', padding: '2rem' }}>問題が見つかりません</p>
        </div>
        <div className="nav-buttons">
          <button className="btn btn-back" onClick={() => router.back()}>戻る</button>
        </div>
      </div>
    );
  }

  const question = questions[currentIndex];
  const isFavorite = favorites.includes(question.id);

  // 正解の選択肢を取得
  const correctChoices = question.choices.filter((c) => c.is_correct);
  const correctNumbers = correctChoices.map((c) => {
    const idx = question.choices.indexOf(c);
    return idx + 1;
  });

  return (
    <div className="page-container">
      {/* Header */}
      <header className="header">
        <Link href="/" className="header-logo">OpenStudy</Link>
        <div className="header-subtitle">
          問題 {currentIndex + 1} / {questions.length}
        </div>
      </header>

      {/* Body */}
      <div className="page-body">
        <div className="exam-name-bar">
          {exam?.title}
        </div>

        {/* 問題文 */}
        <div className="question-text">
          {question.body_text}
        </div>

        {/* 正誤バナー（回答後） */}
        {answered && (
          <>
            <div className={`result-banner ${isCorrect ? 'correct' : 'incorrect'}`}>
              {isCorrect ? '正解！' : '不正解'}
            </div>

            <div className="answer-info">
              <span
                className="answer-text"
                onClick={() => setShowExplanation(!showExplanation)}
              >
                {showExplanation ? '▼' : '▲'}正解は{correctNumbers.join(',')}です
              </span>
              <button
                className="favorite-btn"
                onClick={() => toggleFavorite(question.id)}
              >
                {isFavorite ? '★' : '☆'}
              </button>
            </div>

            {showExplanation && (
              <div className="explanation-box">
                {question.explanation}
              </div>
            )}
          </>
        )}

        {/* 選択肢 */}
        <div>
          {question.choices.map((choice, idx) => {
            let className = 'choice-option';

            if (answered) {
              className += ' answered';
              if (choice.is_correct) {
                className += ' correct-answer';
              } else if (choice.id === selectedChoiceId && !choice.is_correct) {
                className += ' wrong-answer';
              } else {
                className += ' neutral-answer';
              }
            } else if (choice.id === selectedChoiceId) {
              className += ' selected';
            }

            // マーク表示
            let mark = '';
            let markClass = 'choice-mark';
            if (answered) {
              if (choice.is_correct) {
                mark = '〇';
                markClass += ' correct';
              } else if (choice.id === selectedChoiceId && !choice.is_correct) {
                mark = '×';
                markClass += ' incorrect';
              }
            }

            return (
              <div
                key={choice.id}
                className={className}
                onClick={() => {
                  if (!answered) setSelectedChoiceId(choice.id);
                }}
              >
                {answered ? (
                  <span className={markClass}>{mark || '\u00A0'}</span>
                ) : (
                  <div className={`radio-circle ${selectedChoiceId === choice.id ? 'checked' : ''}`}>
                    {selectedChoiceId === choice.id && <div className="radio-circle-inner" />}
                  </div>
                )}
                <span>{idx + 1}. {choice.choice_text}</span>
              </div>
            );
          })}
        </div>
      </div>

      {/* Navigation */}
      <div className="nav-buttons">
        <button className="btn btn-back" onClick={handleBack}>
          戻る
        </button>
        <button
          className="btn btn-back"
          onClick={() => {
            saveProgress();
            router.push('/');
          }}
        >
          中断
        </button>
        <button
          className={`btn ${(answered || selectedChoiceId !== null) ? 'btn-primary' : 'btn-disabled'}`}
          onClick={handleNext}
          disabled={!answered && selectedChoiceId === null}
        >
          次へ
        </button>
      </div>
    </div>
  );
}