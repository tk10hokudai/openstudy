'use client';

import { useEffect, useState, useCallback } from 'react';
import { useParams, useSearchParams, useRouter } from 'next/navigation';
import Link from 'next/link';
import { supabase } from '@/lib/supabase';
import { Exam, Question, QuestionGroup, QuizItem } from '@/lib/types';

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
  const [quizItems, setQuizItems] = useState<QuizItem[]>([]);
  const [currentIndex, setCurrentIndex] = useState(0);
  const [loading, setLoading] = useState(true);

  // 単一問題用の状態
  const [selectedChoiceId, setSelectedChoiceId] = useState<number | null>(null);
  const [selectedChoiceIds, setSelectedChoiceIds] = useState<number[]>([]);
  const [textInput, setTextInput] = useState('');
  const [blanksInput, setBlanksInput] = useState<Record<string, string>>({});
  const [essayInput, setEssayInput] = useState('');

  // グループ問題用の状態
  const [groupAnswers, setGroupAnswers] = useState<Record<number, number | null>>({});

  // 共通状態
  const [answered, setAnswered] = useState(false);
  const [results, setResults] = useState<Result[]>([]);
  const [showExplanation, setShowExplanation] = useState(false);
  const [favorites, setFavorites] = useState<number[]>([]);

  // 正誤判定の結果（単一問題用）
  const [currentCorrect, setCurrentCorrect] = useState(false);
  // グループ問題用の正誤結果
  const [groupResults, setGroupResults] = useState<Record<number, boolean>>({});
  const [groupCorrectCount, setGroupCorrectCount] = useState(0);

  // お気に入り読み込み
  useEffect(() => {
    const saved = localStorage.getItem(`favorites_${examId}`);
    if (saved) setFavorites(JSON.parse(saved));
  }, [examId]);

  // データ取得
  useEffect(() => {
    async function fetchData() {
      const { data: examData } = await supabase
        .from('exams')
        .select('*')
        .eq('id', examId)
        .single();
      if (examData) setExam(examData);

      // セクションID取得
      let sectionIds: number[] = [];
      if (sectionId) {
        sectionIds = await getAllChildSectionIds(Number(sectionId));
        sectionIds.push(Number(sectionId));
      } else {
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

      // 独立問題を取得
      const { data: soloQuestions } = await supabase
        .from('questions')
        .select('*, choices(*)')
        .in('section_id', sectionIds)
        .order('question_number');

      // グループ問題を取得
      const { data: groups } = await supabase
        .from('question_groups')
        .select('*, questions(*, choices(*))')
        .in('section_id', sectionIds);

      // QuizItem に変換
      const items: QuizItem[] = [];

      // 独立問題
      if (soloQuestions) {
        for (const q of soloQuestions) {
          items.push({ type: 'single', question: q as Question });
        }
      }

      // グループ問題
      if (groups) {
        for (const g of groups as QuestionGroup[]) {
          // グループ内の問題を question_number でソート
          g.questions.sort((a, b) => a.question_number - b.question_number);
          items.push({ type: 'group', group: g });
        }
      }

      // question_number でソート（グループは最初の問題の番号を使う）
      items.sort((a, b) => {
        const numA = a.type === 'single' ? a.question.question_number : a.group.questions[0]?.question_number || 0;
        const numB = b.type === 'single' ? b.question.question_number : b.group.questions[0]?.question_number || 0;
        return numA - numB;
      });

      // モードに応じたフィルタリング
      let filtered = items;

      if (mode === 'favorites') {
        const favs = JSON.parse(localStorage.getItem(`favorites_${examId}`) || '[]') as number[];
        filtered = items.filter((item) => {
          if (item.type === 'single') return favs.includes(item.question.id);
          return item.group.questions.some((q) => favs.includes(q.id));
        });
      }

      if (mode === 'retry') {
        const retryIds = JSON.parse(localStorage.getItem(`retry_${examId}`) || '[]') as number[];
        filtered = items.filter((item) => {
          if (item.type === 'single') return retryIds.includes(item.question.id);
          return item.group.questions.some((q) => retryIds.includes(q.id));
        });
      }

      if (mode === 'random') {
        const count = parseInt(searchParams.get('count') || '0', 10);
        if (count > 0 && count < filtered.length) {
          // シャッフルして先頭 count 件を取得
          const shuffled = [...filtered].sort(() => Math.random() - 0.5);
          filtered = shuffled.slice(0, count);
        }
      }



      if (mode === 'continue') {
        const saved = localStorage.getItem(`progress_${examId}`);
        if (saved) {
          const progress = JSON.parse(saved);

          // 保存された問題IDリストから QuizItem を再構築
          const savedQuestionIds: number[] = progress.questionIds || [];
          const savedGroupIds: number[] = progress.groupIds || [];

          if (savedQuestionIds.length > 0 || savedGroupIds.length > 0) {
            // 保存順序に従って items をフィルタ・並び替え
            const restoredItems: typeof items = [];

            // 独立問題を保存順で追加
            for (const qId of savedQuestionIds) {
              const found = items.find(
                (it) => it.type === 'single' && it.question.id === qId
              );
              if (found) restoredItems.push(found);
            }

            // グループ問題を保存順で追加
            for (const gId of savedGroupIds) {
              const found = items.find(
                (it) => it.type === 'group' && it.group.id === gId
              );
              if (found) restoredItems.push(found);
            }

            if (restoredItems.length > 0) {
              filtered = restoredItems;
            }
          }

          setCurrentIndex(progress.currentIndex || 0);
          setResults(progress.results || []);
        }
      }

      setQuizItems(filtered);
      setLoading(false);
    }
    fetchData();
  }, [examId, mode, sectionId]);

  async function getAllChildSectionIds(parentId: number): Promise<number[]> {
    const { data: children } = await supabase
      .from('exam_sections')
      .select('id')
      .eq('parent_section_id', parentId);
    if (!children || children.length === 0) return [];
    const childIds = children.map((c) => c.id);
    const grandchildIds = await Promise.all(childIds.map((id) => getAllChildSectionIds(id)));
    return [...childIds, ...grandchildIds.flat()];
  }

const saveProgress = useCallback(() => {
    // 出題中の問題IDリスト・グループIDリストを構築
    const questionIds: number[] = [];
    const groupIds: number[] = [];
    for (const item of quizItems) {
      if (item.type === 'single') {
        questionIds.push(item.question.id);
      } else {
        groupIds.push(item.group.id);
      }
    }

    localStorage.setItem(
      `progress_${examId}`,
      JSON.stringify({
        mode,
        sectionId: sectionId || null,
        questionIds,
        groupIds,
        currentIndex,
        results,
        totalItems: quizItems.length,
      })
    );
  }, [examId, mode, sectionId, quizItems, currentIndex, results]);

  // ==============================
  // 回答確定ロジック
  // ==============================
  const handleAnswer = () => {
    const item = quizItems[currentIndex];

    if (item.type === 'single') {
      const q = item.question;

      if (q.question_type === 'essay') {
        // essay: 自動判定なし、次へで正誤判定画面を表示
        setAnswered(true);
        return;
      }

      if (q.question_type === 'text') {
        const answer = textInput.trim();
        const correctAnswer = q.correct_answers?.answer || '';
        const correct = normalizeText(answer) === normalizeText(correctAnswer);
        setCurrentCorrect(correct);
        setResults((prev) => [...prev, { questionId: q.id, correct }]);
        setAnswered(true);
        return;
      }

      if (q.question_type === 'multi_blanks') {
        const correctAnswers = q.correct_answers || {};
        let allCorrect = true;
        const keys = Object.keys(correctAnswers);
        let correctCount = 0;
        for (const key of keys) {
          if (normalizeText(blanksInput[key] || '') === normalizeText(correctAnswers[key])) {
            correctCount++;
          } else {
            allCorrect = false;
          }
        }
        setCurrentCorrect(allCorrect);
        setGroupCorrectCount(correctCount);
        setResults((prev) => [...prev, { questionId: q.id, correct: allCorrect }]);
        setAnswered(true);
        return;
      }

      // choice / image_choice
      if (q.max_selections >= 2) {
        // 複数選択
        const correctIds = q.choices.filter((c) => c.is_correct).map((c) => c.id);
        const correct = correctIds.length === selectedChoiceIds.length &&
          correctIds.every((id) => selectedChoiceIds.includes(id));
        setCurrentCorrect(correct);
        setResults((prev) => [...prev, { questionId: q.id, correct }]);
        setAnswered(true);
      } else {
        // 単一選択
        const selectedChoice = q.choices.find((c) => c.id === selectedChoiceId);
        const correct = selectedChoice?.is_correct || false;
        setCurrentCorrect(correct);
        setResults((prev) => [...prev, { questionId: q.id, correct }]);
        setAnswered(true);
      }
    } else {
      // グループ問題
      const group = item.group;
      const gResults: Record<number, boolean> = {};
      let correctCount = 0;
      const newResults: Result[] = [];

      for (const q of group.questions) {
        const answerId = groupAnswers[q.id];
        const correctChoice = q.choices.find((c) => c.is_correct);
        const correct = answerId === correctChoice?.id;
        gResults[q.id] = correct;
        if (correct) correctCount++;
        newResults.push({ questionId: q.id, correct });
      }

      setGroupResults(gResults);
      setGroupCorrectCount(correctCount);
      setResults((prev) => [...prev, ...newResults]);
      setAnswered(true);
    }
  };

  // テキスト正規化（全角→半角、トリム）
  function normalizeText(s: string): string {
    return s
      .trim()
      .replace(/[Ａ-Ｚａ-ｚ０-９]/g, (ch) =>
        String.fromCharCode(ch.charCodeAt(0) - 0xFEE0)
      )
      .replace(/[−ー]/g, '-')
      .replace(/　/g, ' ')
      .toLowerCase();
  }

  // 次へ
  const handleNext = () => {
    if (!answered) {
      handleAnswer();
    } else {
      if (currentIndex + 1 >= quizItems.length) {
        localStorage.removeItem(`progress_${examId}`);
        localStorage.setItem(`quizResult_${examId}`, JSON.stringify(results));
        router.push(`/exams/${examId}/result`);
      } else {
        goToNext();
      }
    }
  };

  const goToNext = () => {
    setCurrentIndex((prev) => prev + 1);
    resetState();
  };

  const resetState = () => {
    setSelectedChoiceId(null);
    setSelectedChoiceIds([]);
    setTextInput('');
    setBlanksInput({});
    setEssayInput('');
    setGroupAnswers({});
    setAnswered(false);
    setCurrentCorrect(false);
    setGroupResults({});
    setGroupCorrectCount(0);
    setShowExplanation(false);
  };

  // 戻る
  const handleBack = () => {
    if (answered) {
      setAnswered(false);
      setShowExplanation(false);
      // 結果を巻き戻す
      const item = quizItems[currentIndex];
      if (item.type === 'single') {
        setResults((prev) => prev.slice(0, -1));
      } else {
        const count = item.group.questions.length;
        setResults((prev) => prev.slice(0, -count));
      }
    } else if (currentIndex > 0) {
      setCurrentIndex((prev) => prev - 1);
      resetState();
      // 前の問題の結果も巻き戻す
      const prevItem = quizItems[currentIndex - 1];
      if (prevItem.type === 'single') {
        setResults((prev) => prev.slice(0, -1));
      } else {
        const count = prevItem.group.questions.length;
        setResults((prev) => prev.slice(0, -count));
      }
    } else {
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

  // 次へボタンが押せるかどうか
  const canProceed = (): boolean => {
    if (answered) return true;
    const item = quizItems[currentIndex];
    if (!item) return false;

    if (item.type === 'group') {
      return item.group.questions.every((q) => groupAnswers[q.id] != null);
    }

    const q = item.question;
    switch (q.question_type) {
      case 'choice':
      case 'image_choice':
        return q.max_selections >= 2
          ? selectedChoiceIds.length > 0
          : selectedChoiceId !== null;
      case 'text':
        return textInput.trim().length > 0;
      case 'multi_blanks': {
        const keys = Object.keys(q.correct_answers || {});
        return keys.every((k) => (blanksInput[k] || '').trim().length > 0);
      }
      case 'essay':
        return true; // essay は常に次へ可能
      default:
        return false;
    }
  };

  // ==============================
  // ローディング・空データ
  // ==============================
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

  if (quizItems.length === 0) {
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

  const currentItem = quizItems[currentIndex];

  // 問題番号の計算（表示用）
  const totalQuestions = quizItems.reduce((sum, item) =>
    sum + (item.type === 'single' ? 1 : item.group.questions.length), 0);
  const currentQuestionNum = quizItems.slice(0, currentIndex).reduce((sum, item) =>
    sum + (item.type === 'single' ? 1 : item.group.questions.length), 0) + 1;

  // ==============================
  // レンダリング
  // ==============================
  return (
    <div className="page-container">
      <header className="header">
        <Link href="/" className="header-logo">OpenStudy</Link>
        <div className="header-subtitle">
          問題 {currentQuestionNum}{currentItem.type === 'group' ? `〜${currentQuestionNum + currentItem.group.questions.length - 1}` : ''} / {totalQuestions}
        </div>
      </header>

      <div className="page-body">
        <div className="exam-name-bar">{exam?.title}</div>

        {currentItem.type === 'single'
          ? renderSingleQuestion(currentItem.question)
          : renderGroupQuestion(currentItem.group)
        }
      </div>

      {/* Navigation */}
      <div className="nav-buttons">
        <button className="btn btn-back" onClick={handleBack}>戻る</button>
        <button
          className="btn btn-back"
          onClick={() => { saveProgress(); router.push('/'); }}
        >
          中断する
        </button>
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

  // ==============================
  // 単一問題のレンダリング
  // ==============================
  function renderSingleQuestion(q: Question) {
    // 音声URL
    const audioUrl = q.audio_url;
    // 画像URL
    const imageUrl = q.image_url;

    return (
      <>
        {/* 画像（存在する場合） */}
        {imageUrl && (
          <div style={{ textAlign: 'center', marginBottom: '1rem' }}>
            <img src={imageUrl} alt="" style={{ maxWidth: '100%', borderRadius: '8px' }} />
          </div>
        )}

        {/* 問題文 */}
        <div className="question-text">{q.body_text}</div>

        {/* 音声ボタン（存在する場合） */}
        {audioUrl && renderAudioPlayer(audioUrl)}

        {/* 正誤バナー（回答後） */}
        {answered && q.question_type !== 'essay' && renderResultBanner(q)}

        {/* 問題形式に応じたUI */}
        {(q.question_type === 'choice' || q.question_type === 'image_choice') && renderChoiceUI(q)}
        {q.question_type === 'text' && renderTextUI(q)}
        {q.question_type === 'multi_blanks' && renderMultiBlanksUI(q)}
        {q.question_type === 'essay' && renderEssayUI(q)}
      </>
    );
  }

  // ==============================
  // 正誤バナー（単一問題）
  // ==============================
  function renderResultBanner(q: Question) {
    const correctChoices = q.choices.filter((c) => c.is_correct);
    const isMultiBlank = q.question_type === 'multi_blanks';

    // 正解テキストの生成
    let correctText = '';
    if (q.question_type === 'text') {
      correctText = q.correct_answers?.answer || '';
    } else if (isMultiBlank) {
      const ca = q.correct_answers || {};
      correctText = Object.values(ca).join(', ');
    } else {
      correctText = correctChoices.map((c) => {
        const idx = q.choices.indexOf(c) + 1;
        return String(idx);
      }).join(',');
    }

    // multi_blanks の部分正解
    let bannerText = currentCorrect ? '正解！' : '不正解';
    if (isMultiBlank && !currentCorrect) {
      const keys = Object.keys(q.correct_answers || {});
      bannerText = groupCorrectCount > 0 ? `${groupCorrectCount}問正解` : '不正解';
    }

    const isFav = favorites.includes(q.id);

    return (
      <>
        <div className={`result-banner ${currentCorrect ? 'correct' : (isMultiBlank && groupCorrectCount > 0 ? 'correct' : 'incorrect')}`}>
          {bannerText}
        </div>
        <div className="answer-info">
          <span className="answer-text" onClick={() => setShowExplanation(!showExplanation)}>
            {showExplanation ? '▼' : '▲'}正解は{correctText}です
          </span>
          <button className="favorite-btn" onClick={() => toggleFavorite(q.id)}>
            {isFav ? '★' : '☆'}
          </button>
        </div>
        {showExplanation && <div className="explanation-box">{q.explanation}</div>}
      </>
    );
  }

  // ==============================
  // 選択式UI（単一選択・複数選択・画像選択）
  // ==============================
  function renderChoiceUI(q: Question) {
    const isMulti = q.max_selections >= 2;
    const isImageChoice = q.question_type === 'image_choice';

    return (
      <div>
        {q.choices.map((choice, idx) => {
          let className = 'choice-option';
          const isSelected = isMulti
            ? selectedChoiceIds.includes(choice.id)
            : selectedChoiceId === choice.id;

          if (answered) {
            className += ' answered';
            if (choice.is_correct) {
              className += ' correct-answer';
            } else if (
              (isMulti ? selectedChoiceIds.includes(choice.id) : choice.id === selectedChoiceId) &&
              !choice.is_correct
            ) {
              className += ' wrong-answer';
            } else {
              className += ' neutral-answer';
            }
          } else if (isSelected) {
            className += ' selected';
          }

          let mark = '';
          let markClass = 'choice-mark';
          if (answered) {
            if (choice.is_correct) {
              mark = '〇';
              markClass += ' correct';
            } else if (
              (isMulti ? selectedChoiceIds.includes(choice.id) : choice.id === selectedChoiceId) &&
              !choice.is_correct
            ) {
              mark = '×';
              markClass += ' incorrect';
            }
          }

          const handleClick = () => {
            if (answered) return;
            if (isMulti) {
              setSelectedChoiceIds((prev) => {
                if (prev.includes(choice.id)) {
                  return prev.filter((id) => id !== choice.id);
                }
                if (prev.length >= q.max_selections) return prev;
                return [...prev, choice.id];
              });
            } else {
              setSelectedChoiceId(choice.id);
            }
          };

          return (
            <div key={choice.id} className={className} onClick={handleClick}>
              {answered ? (
                <span className={markClass}>{mark || '\u00A0'}</span>
              ) : isMulti ? (
                <div style={{
                  width: '18px', height: '18px', border: '2px solid var(--border)',
                  borderRadius: '3px', display: 'flex', alignItems: 'center',
                  justifyContent: 'center', flexShrink: 0,
                  borderColor: isSelected ? 'var(--primary)' : 'var(--border)',
                  backgroundColor: isSelected ? 'var(--primary)' : 'transparent',
                }}>
                  {isSelected && <span style={{ color: 'white', fontSize: '12px', fontWeight: 700 }}>✓</span>}
                </div>
              ) : (
                <div className={`radio-circle ${isSelected ? 'checked' : ''}`}>
                  {isSelected && <div className="radio-circle-inner" />}
                </div>
              )}
              <div style={{ flex: 1 }}>
                {isImageChoice && choice.image_url && (
                  <img src={choice.image_url} alt={choice.choice_text || ''} style={{ maxWidth: '100%', borderRadius: '4px', marginBottom: '0.25rem' }} />
                )}
                <span>{idx + 1}. {choice.choice_text}</span>
              </div>
            </div>
          );
        })}
      </div>
    );
  }

  // ==============================
  // 記述式UI（単一テキスト）
  // ==============================
  function renderTextUI(q: Question) {
    return (
      <div>
        <input
          type="text"
          className="search-input"
          placeholder="解答を入力"
          value={textInput}
          onChange={(e) => setTextInput(e.target.value)}
          disabled={answered}
          style={{ marginTop: '0.5rem' }}
        />
      </div>
    );
  }

  // ==============================
  // 複数穴埋めUI
  // ==============================
  function renderMultiBlanksUI(q: Question) {
    const keys = Object.keys(q.correct_answers || {});

    return (
      <div style={{ display: 'flex', flexDirection: 'column', gap: '0.75rem', marginTop: '0.5rem' }}>
        {keys.map((key) => {
          let inputStyle: React.CSSProperties = {};
          if (answered) {
            const correct = normalizeText(blanksInput[key] || '') === normalizeText((q.correct_answers || {})[key]);
            inputStyle = {
              borderColor: correct ? 'var(--correct)' : 'var(--incorrect)',
              backgroundColor: correct ? 'var(--correct-bg)' : 'var(--incorrect-bg)',
            };
          }

          return (
            <div key={key}>
              <label style={{ fontSize: '0.9rem', fontWeight: 600, display: 'block', marginBottom: '0.25rem' }}>
                {key}：
              </label>
              <input
                type="text"
                className="search-input"
                placeholder={`${key} の解答を入力`}
                value={blanksInput[key] || ''}
                onChange={(e) => setBlanksInput((prev) => ({ ...prev, [key]: e.target.value }))}
                disabled={answered}
                style={inputStyle}
              />
            </div>
          );
        })}
      </div>
    );
  }

  // ==============================
  // 自由記述UI（essay）
  // ==============================
  function renderEssayUI(q: Question) {
    const isFav = favorites.includes(q.id);

    return (
      <div>
        {answered && (
          <>
            <div className="answer-info">
              <span className="answer-text" onClick={() => setShowExplanation(!showExplanation)}>
                {showExplanation ? '▼' : '▲'}模範解答例
              </span>
              <button className="favorite-btn" onClick={() => toggleFavorite(q.id)}>
                {isFav ? '★' : '☆'}
              </button>
            </div>
            {showExplanation && <div className="explanation-box">{q.explanation}</div>}
          </>
        )}
        <textarea
          placeholder="解答を入力"
          value={essayInput}
          onChange={(e) => setEssayInput(e.target.value)}
          disabled={answered}
          style={{
            width: '100%',
            minHeight: '150px',
            padding: '0.75rem',
            border: '1.5px solid var(--border)',
            borderRadius: '6px',
            fontSize: '0.95rem',
            resize: 'vertical',
            fontFamily: 'inherit',
            lineHeight: 1.6,
            marginTop: '0.5rem',
          }}
        />
      </div>
    );
  }

  // ==============================
  // グループ問題のレンダリング
  // ==============================
  function renderGroupQuestion(group: QuestionGroup) {
    const audioUrl = group.audio_url;
    const imageUrl = group.image_url;
    const correctChoicesPerQ = group.questions.map((q) => {
      const correct = q.choices.find((c) => c.is_correct);
      return { qId: q.id, correctId: correct?.id, idx: q.choices.indexOf(correct!) + 1 };
    });
    const correctNums = correctChoicesPerQ.map((c) => c.idx).join(', ');

    return (
      <>
        {/* 共通テキスト */}
        {group.group_text && (
          <div className="question-text">{group.group_text}</div>
        )}

        {/* 共通画像 */}
        {imageUrl && (
          <div style={{ textAlign: 'center', marginBottom: '1rem' }}>
            <img src={imageUrl} alt="" style={{ maxWidth: '100%', borderRadius: '8px' }} />
          </div>
        )}

        {/* 音声ボタン */}
        {audioUrl && renderAudioPlayer(audioUrl)}

        {/* 正誤バナー（回答後） */}
        {answered && (
          <>
            <div className={`result-banner ${groupCorrectCount === group.questions.length ? 'correct' : groupCorrectCount > 0 ? 'correct' : 'incorrect'}`}>
              {groupCorrectCount === group.questions.length ? '正解！' : `${groupCorrectCount}問正解`}
            </div>
            <div className="answer-info">
              <span className="answer-text" onClick={() => setShowExplanation(!showExplanation)}>
                {showExplanation ? '▼' : '▲'}正解は{correctNums}です
              </span>
              <button className="favorite-btn" onClick={() => {
                // グループ内の全問題をお気に入りトグル
                const allFav = group.questions.every((q) => favorites.includes(q.id));
                for (const q of group.questions) {
                  if (allFav) {
                    setFavorites((prev) => {
                      const next = prev.filter((id) => id !== q.id);
                      localStorage.setItem(`favorites_${examId}`, JSON.stringify(next));
                      return next;
                    });
                  } else {
                    setFavorites((prev) => {
                      if (prev.includes(q.id)) return prev;
                      const next = [...prev, q.id];
                      localStorage.setItem(`favorites_${examId}`, JSON.stringify(next));
                      return next;
                    });
                  }
                }
              }}>
                {group.questions.every((q) => favorites.includes(q.id)) ? '★' : '☆'}
              </button>
            </div>
            {showExplanation && (
              <div className="explanation-box">
                {group.questions.map((q, i) => (
                  <div key={q.id} style={{ marginBottom: i < group.questions.length - 1 ? '1rem' : 0 }}>
                    <p style={{ fontWeight: 600, marginBottom: '0.25rem' }}>Questions {i + 1}</p>
                    <p>{q.explanation}</p>
                  </div>
                ))}
              </div>
            )}
          </>
        )}

        {/* 各設問 */}
        {group.questions.map((q, qIdx) => (
          <div key={q.id} style={{ marginBottom: '1.5rem' }}>
            <div style={{ fontWeight: 600, fontSize: '0.9rem', marginBottom: '0.5rem' }}>
              Questions {qIdx + 1}
            </div>
            {q.body_text && <div style={{ fontSize: '0.9rem', marginBottom: '0.5rem' }}>{q.body_text}</div>}
            <div>
              {q.choices.map((choice, idx) => {
                const isSelected = groupAnswers[q.id] === choice.id;
                let className = 'choice-option';

                if (answered) {
                  className += ' answered';
                  if (choice.is_correct) {
                    className += ' correct-answer';
                  } else if (isSelected && !choice.is_correct) {
                    className += ' wrong-answer';
                  } else {
                    className += ' neutral-answer';
                  }
                } else if (isSelected) {
                  className += ' selected';
                }

                let mark = '';
                let markClass = 'choice-mark';
                if (answered) {
                  if (choice.is_correct) { mark = '〇'; markClass += ' correct'; }
                  else if (isSelected && !choice.is_correct) { mark = '×'; markClass += ' incorrect'; }
                }

                return (
                  <div
                    key={choice.id}
                    className={className}
                    onClick={() => {
                      if (!answered) {
                        setGroupAnswers((prev) => ({ ...prev, [q.id]: choice.id }));
                      }
                    }}
                  >
                    {answered ? (
                      <span className={markClass}>{mark || '\u00A0'}</span>
                    ) : (
                      <div className={`radio-circle ${isSelected ? 'checked' : ''}`}>
                        {isSelected && <div className="radio-circle-inner" />}
                      </div>
                    )}
                    <span>{choice.choice_text}</span>
                  </div>
                );
              })}
            </div>
          </div>
        ))}
      </>
    );
  }

  // ==============================
  // 音声プレイヤー
  // ==============================
  function renderAudioPlayer(url: string) {
    return (
      <div style={{ textAlign: 'center', marginBottom: '1rem' }}>
        <audio controls style={{ maxWidth: '100%' }}>
          <source src={url} />
        </audio>
      </div>
    );
  }
}