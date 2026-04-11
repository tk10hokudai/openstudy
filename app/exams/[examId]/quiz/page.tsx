'use client';

import { useEffect, useState, useCallback } from 'react';
import { useParams, useSearchParams, useRouter } from 'next/navigation';
import Link from 'next/link';
import { supabase } from '@/lib/supabase';
import { useUser } from '@/lib/auth';
import {
  getProgress, saveProgress as saveProgressStorage, clearProgress,
  saveQuizResult,
} from '@/lib/storage';
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
  const sectionsParam = searchParams.get('sections'); // "1:5,2:3" format
  const { user } = useUser();

  const collectionTitleParam = searchParams.get('collectionTitle') || '';
  const collectionIdParam = searchParams.get('collectionId') ? Number(searchParams.get('collectionId')) : undefined;

  const [exam, setExam] = useState<Exam | null>(null);
  const [quizItems, setQuizItems] = useState<QuizItem[]>([]);
  const [currentIndex, setCurrentIndex] = useState(0);
  const [loading, setLoading] = useState(true);

  const [selectedChoiceId, setSelectedChoiceId] = useState<number | null>(null);
  const [selectedChoiceIds, setSelectedChoiceIds] = useState<number[]>([]);
  const [textInput, setTextInput] = useState('');
  const [blanksInput, setBlanksInput] = useState<Record<string, string>>({});
  const [essayInput, setEssayInput] = useState('');
  const [groupAnswers, setGroupAnswers] = useState<Record<number, number | null>>({});

  const [answered, setAnswered] = useState(false);
  const [results, setResults] = useState<Result[]>([]);
  const [showExplanation, setShowExplanation] = useState(false);
  const [currentCorrect, setCurrentCorrect] = useState(false);
  const [groupCorrectCount, setGroupCorrectCount] = useState(0);

  useEffect(() => {
    async function fetchData() {
      // コレクションモードは直接問題IDで取得（複数試験の問題に対応）
      if (mode === 'collection') {
        const collectionItemsStr = searchParams.get('questionIds');
        const qIds = collectionItemsStr ? collectionItemsStr.split(',').map(Number).filter(Boolean) : [];
        if (qIds.length > 0) {
          const { data: directQs } = await supabase
            .from('questions').select('*, choices(*)').in('id', qIds);
          const items: QuizItem[] = [];
          const soloQs = (directQs || []).filter((q) => !q.group_id);
          const groupQs = (directQs || []).filter((q) => q.group_id);
          for (const q of soloQs) items.push({ type: 'single', question: q as Question });
          const groupIds = [...new Set(groupQs.map((q) => q.group_id as number))];
          if (groupIds.length > 0) {
            const { data: groups } = await supabase
              .from('question_groups').select('*, questions(*, choices(*))').in('id', groupIds);
            if (groups) {
              for (const g of groups as QuestionGroup[]) {
                g.questions.sort((a, b) => a.question_number - b.question_number);
                items.push({ type: 'group', group: g });
              }
            }
          }
          setQuizItems(items);
        }
        setLoading(false);
        return;
      }

      // コレクション中断からの再開（mode=continue&collectionId=X）
      if (mode === 'continue' && collectionIdParam) {
        const progress = await getProgress(user, examId, collectionIdParam);
        if (progress) {
          const qIds = progress.questionIds || [];
          const gIds = progress.groupIds || [];
          const items: QuizItem[] = [];

          // 独立問題を復元
          if (qIds.length > 0) {
            const { data: directQs } = await supabase
              .from('questions').select('*, choices(*)').in('id', qIds);
            for (const q of (directQs || [])) {
              items.push({ type: 'single', question: q as Question });
            }
          }

          // グループ問題を復元（doSaveProgress は group.id を groupIds に保存する）
          if (gIds.length > 0) {
            const { data: groups } = await supabase
              .from('question_groups').select('*, questions(*, choices(*))').in('id', gIds);
            if (groups) {
              for (const g of groups as QuestionGroup[]) {
                g.questions.sort((a, b) => a.question_number - b.question_number);
                items.push({ type: 'group', group: g });
              }
            }
          }

          if (items.length > 0) setQuizItems(items);
          setCurrentIndex(progress.currentIndex || 0);
          setResults(progress.results || []);
        }
        setLoading(false);
        return;
      }

      const { data: examData } = await supabase
        .from('exams').select('*').eq('id', examId).single();
      if (examData) setExam(examData);

      // すべてのセクションIDを取得
      const { data: allSections } = await supabase
        .from('exam_sections').select('id').eq('exam_id', examId);
      const allSectionIds = allSections?.map((s) => s.id) || [];

      if (allSectionIds.length === 0) { setLoading(false); return; }

      // 全問題を取得
      const { data: soloQuestions } = await supabase
        .from('questions').select('*, choices(*)').in('section_id', allSectionIds).order('question_number');
      const { data: groups } = await supabase
        .from('question_groups').select('*, questions(*, choices(*))').in('section_id', allSectionIds);

      // QuizItem に変換
      const allItems: QuizItem[] = [];
      if (soloQuestions) {
        for (const q of soloQuestions) allItems.push({ type: 'single', question: q as Question });
      }
      if (groups) {
        for (const g of groups as QuestionGroup[]) {
          g.questions.sort((a, b) => a.question_number - b.question_number);
          allItems.push({ type: 'group', group: g });
        }
      }

      let filtered: QuizItem[] = [];

      if (mode === 'normal' && sectionsParam) {
        // 分野選択画面からのパラメータ: "sectionId:count,sectionId:count,..."
        const sectionRequests = sectionsParam.split(',').map((s) => {
          const [id, count] = s.split(':');
          return { sectionId: Number(id), count: Number(count) };
        });

        for (const req of sectionRequests) {
          const childIds = await getSectionAndChildIds(req.sectionId);
          const sectionItems = allItems.filter((item) => {
            if (item.type === 'single') return childIds.includes(item.question.section_id!);
            return childIds.includes(item.group.section_id);
          });

          // ランダムに count 件取得
          const shuffled = [...sectionItems].sort(() => Math.random() - 0.5);
          const selected = shuffled.slice(0, req.count);

          // セクション内の出題順序を元に並び替え
          selected.sort((a, b) => {
            const numA = a.type === 'single' ? a.question.question_number : a.group.questions[0]?.question_number || 0;
            const numB = b.type === 'single' ? b.question.question_number : b.group.questions[0]?.question_number || 0;
            return numA - numB;
          });

          filtered.push(...selected);
        }
      } else if (mode === 'normal') {
        filtered = allItems;
      } else if (mode === 'retry') {
        const retryIds = JSON.parse(localStorage.getItem(`retry_${examId}`) || '[]') as number[];
        filtered = allItems.filter((item) => {
          if (item.type === 'single') return retryIds.includes(item.question.id);
          return item.group.questions.some((q) => retryIds.includes(q.id));
        });
      } else {
        filtered = allItems;
      }

      if (mode === 'continue') {
        const progress = await getProgress(user, examId);
        if (progress) {
          const savedQuestionIds: number[] = progress.questionIds || [];
          const savedGroupIds: number[] = progress.groupIds || [];

          if (savedQuestionIds.length > 0 || savedGroupIds.length > 0) {
            const restoredItems: QuizItem[] = [];
            for (const qId of savedQuestionIds) {
              const found = allItems.find((it) => it.type === 'single' && it.question.id === qId);
              if (found) restoredItems.push(found);
            }
            for (const gId of savedGroupIds) {
              const found = allItems.find((it) => it.type === 'group' && it.group.id === gId);
              if (found) restoredItems.push(found);
            }
            if (restoredItems.length > 0) filtered = restoredItems;
          }
          setCurrentIndex(progress.currentIndex || 0);
          setResults(progress.results || []);
        }
      }

      // ソート（continue以外）
      if (mode !== 'continue') {
        if (!sectionsParam) {
          filtered.sort((a, b) => {
            const numA = a.type === 'single' ? a.question.question_number : a.group.questions[0]?.question_number || 0;
            const numB = b.type === 'single' ? b.question.question_number : b.group.questions[0]?.question_number || 0;
            return numA - numB;
          });
        }
      }

      setQuizItems(filtered);
      setLoading(false);
    }
    fetchData();
  }, [examId, mode, sectionsParam, searchParams, user]);

  async function getSectionAndChildIds(parentId: number): Promise<number[]> {
    const ids = [parentId];
    const { data: children } = await supabase
      .from('exam_sections').select('id').eq('parent_section_id', parentId);
    if (children) {
      for (const child of children) {
        const childIds = await getSectionAndChildIds(child.id);
        ids.push(...childIds);
      }
    }
    return ids;
  }

  const doSaveProgress = useCallback(async () => {
    const questionIds: number[] = [];
    const groupIds: number[] = [];
    for (const item of quizItems) {
      if (item.type === 'single') questionIds.push(item.question.id);
      else groupIds.push(item.group.id);
    }
    await saveProgressStorage(user, examId, {
      mode, sectionId: null, questionIds, groupIds,
      currentIndex, results, totalItems: quizItems.length,
      collectionId: collectionIdParam,
    });
  }, [user, examId, mode, quizItems, currentIndex, results, collectionIdParam]);

  const handleAnswer = () => {
    const item = quizItems[currentIndex];
    if (item.type === 'single') {
      const q = item.question;
      if (q.question_type === 'essay') { setAnswered(true); return; }
      if (q.question_type === 'text') {
        const correct = normalizeText(textInput.trim()) === normalizeText(q.correct_answers?.answer || '');
        setCurrentCorrect(correct);
        setResults((prev) => [...prev, { questionId: q.id, correct }]);
        setAnswered(true); return;
      }
      if (q.question_type === 'multi_blanks') {
        const ca = q.correct_answers || {};
        let allCorrect = true; let cc = 0;
        for (const key of Object.keys(ca)) {
          if (normalizeText(blanksInput[key] || '') === normalizeText(ca[key])) cc++;
          else allCorrect = false;
        }
        setCurrentCorrect(allCorrect); setGroupCorrectCount(cc);
        setResults((prev) => [...prev, { questionId: q.id, correct: allCorrect }]);
        setAnswered(true); return;
      }
      if (q.max_selections >= 2) {
        const correctIds = q.choices.filter((c) => c.is_correct).map((c) => c.id);
        const correct = correctIds.length === selectedChoiceIds.length && correctIds.every((id) => selectedChoiceIds.includes(id));
        setCurrentCorrect(correct);
        setResults((prev) => [...prev, { questionId: q.id, correct }]);
        setAnswered(true);
      } else {
        const correct = q.choices.find((c) => c.id === selectedChoiceId)?.is_correct || false;
        setCurrentCorrect(correct);
        setResults((prev) => [...prev, { questionId: q.id, correct }]);
        setAnswered(true);
      }
    } else {
      const group = item.group;
      let cc = 0;
      const newResults: Result[] = [];
      for (const q of group.questions) {
        const correct = groupAnswers[q.id] === q.choices.find((c) => c.is_correct)?.id;
        if (correct) cc++;
        newResults.push({ questionId: q.id, correct: !!correct });
      }
      setGroupCorrectCount(cc);
      setResults((prev) => [...prev, ...newResults]);
      setAnswered(true);
    }
  };

  function normalizeText(s: string): string {
    return s.trim()
      .replace(/[Ａ-Ｚａ-ｚ０-９]/g, (ch) => String.fromCharCode(ch.charCodeAt(0) - 0xFEE0))
      .replace(/[−ー]/g, '-').replace(/　/g, ' ').toLowerCase();
  }

  const handleNext = () => {
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
    if (!answered) { handleAnswer(); return; }
    if (currentIndex + 1 >= quizItems.length) {
      clearProgress(user, examId, collectionIdParam);
      saveQuizResult(examId, results);
      router.push(`/exams/${examId}/result`);
    } else { goToNext(); }
  };

  const goToNext = () => { setCurrentIndex((p) => p + 1); resetState(); };

  const resetState = () => {
    setSelectedChoiceId(null); setSelectedChoiceIds([]); setTextInput('');
    setBlanksInput({}); setEssayInput(''); setGroupAnswers({});
    setAnswered(false); setCurrentCorrect(false); setGroupCorrectCount(0);
    setShowExplanation(false);
  };

  const handleBack = () => {
    if (answered) {
      setAnswered(false); setShowExplanation(false);
      const item = quizItems[currentIndex];
      const count = item.type === 'single' ? 1 : item.group.questions.length;
      setResults((prev) => prev.slice(0, -count));
    } else if (currentIndex > 0) {
      const prevItem = quizItems[currentIndex - 1];
      const count = prevItem.type === 'single' ? 1 : prevItem.group.questions.length;
      setCurrentIndex((p) => p - 1); resetState();
      setResults((prev) => prev.slice(0, -count));
    } else { doSaveProgress(); router.back(); }
  };

  const handleAddToCollection = (questionId: number) => {
    doSaveProgress().then(() => {
      router.push(`/exams/${examId}/add-to-collection?questionIds=${questionId}&returnTo=/exams/${examId}/quiz?mode=continue`);
    });
  };

  const handleAddGroupToCollection = (questionIds: number[]) => {
    doSaveProgress().then(() => {
      router.push(`/exams/${examId}/add-to-collection?questionIds=${questionIds.join(',')}&returnTo=/exams/${examId}/quiz?mode=continue`);
    });
  };

  const canProceed = (): boolean => {
    if (answered) return true;
    const item = quizItems[currentIndex];
    if (!item) return false;
    if (item.type === 'group') return item.group.questions.every((q) => groupAnswers[q.id] != null);
    const q = item.question;
    switch (q.question_type) {
      case 'choice': case 'image_choice':
        return q.max_selections >= 2 ? selectedChoiceIds.length > 0 : selectedChoiceId !== null;
      case 'text': return textInput.trim().length > 0;
      case 'multi_blanks': return Object.keys(q.correct_answers || {}).every((k) => (blanksInput[k] || '').trim().length > 0);
      case 'essay': return true;
      default: return false;
    }
  };

  if (loading) {
    return (<div className="page-container"><header className="header"><Link href="/" className="header-logo">OpenStudy</Link></header>
      <div className="page-body"><p style={{ color: 'var(--text-light)', textAlign: 'center', padding: '2rem' }}>問題を読み込み中...</p></div></div>);
  }
  if (quizItems.length === 0) {
    return (<div className="page-container"><header className="header"><Link href="/" className="header-logo">OpenStudy</Link></header>
      <div className="page-body"><p style={{ textAlign: 'center', padding: '2rem' }}>問題が見つかりません</p></div>
      <div className="nav-buttons"><button className="btn btn-back" onClick={() => router.back()}>戻る</button></div></div>);
  }

  const currentItem = quizItems[currentIndex];
  const totalQuestions = quizItems.reduce((s, i) => s + (i.type === 'single' ? 1 : i.group.questions.length), 0);
  const currentQuestionNum = quizItems.slice(0, currentIndex).reduce((s, i) => s + (i.type === 'single' ? 1 : i.group.questions.length), 0) + 1;

  return (
    <div className="page-container">
      <header className="header">
        <Link href="/" className="header-logo">OpenStudy</Link>
        <div className="header-subtitle">
          問題 {currentQuestionNum}{currentItem.type === 'group' ? `〜${currentQuestionNum + currentItem.group.questions.length - 1}` : ''} / {totalQuestions}
        </div>
      </header>
      <div className="page-body">
        <div className="exam-name-bar">{collectionTitleParam || exam?.title}</div>
        {currentItem.type === 'single' ? renderSingle(currentItem.question) : renderGroup(currentItem.group)}
      </div>
      <div className="nav-buttons">
        <button className="btn btn-back" onClick={handleBack}>戻る</button>
        <button className="btn btn-back" onClick={() => { doSaveProgress(); router.push('/'); }}>中断</button>
        <button className={`btn ${canProceed() ? 'btn-primary' : 'btn-disabled'}`} onClick={handleNext} disabled={!canProceed()}>次へ</button>
      </div>
    </div>
  );

  function renderSingle(q: Question) {
    return (<>
      {q.image_url && <div style={{ textAlign: 'center', marginBottom: '1rem' }}><img src={q.image_url} alt="" style={{ maxWidth: '100%', borderRadius: '8px' }} /></div>}
      <div className="question-text">{q.body_text}</div>
      {q.audio_url && <div style={{ textAlign: 'center', marginBottom: '1rem' }}><audio key={q.audio_url} controls style={{ maxWidth: '100%' }}><source src={q.audio_url} /></audio></div>}
      {answered && q.question_type !== 'essay' && renderBanner(q)}
      {(q.question_type === 'choice' || q.question_type === 'image_choice') && renderChoices(q)}
      {q.question_type === 'text' && <input type="text" className="search-input" placeholder="解答を入力" value={textInput} onChange={(e) => setTextInput(e.target.value)} disabled={answered} style={{ marginTop: '0.5rem' }} />}
      {q.question_type === 'multi_blanks' && renderBlanks(q)}
      {q.question_type === 'essay' && renderEssay(q)}
    </>);
  }

  function renderBanner(q: Question) {
    const isMultiBlank = q.question_type === 'multi_blanks';
    let correctText = '';
    if (q.question_type === 'text') correctText = q.correct_answers?.answer || '';
    else if (isMultiBlank) correctText = Object.values(q.correct_answers || {}).join(', ');
    else correctText = q.choices.filter((c) => c.is_correct).map((c) => String(q.choices.indexOf(c) + 1)).join(',');

    let bannerText = currentCorrect ? '正解！' : '不正解';
    if (isMultiBlank && !currentCorrect && groupCorrectCount > 0) bannerText = `${groupCorrectCount}問正解`;

    return (<>
      <div className={`result-banner ${currentCorrect ? 'correct' : (isMultiBlank && groupCorrectCount > 0 ? 'correct' : 'incorrect')}`}>{bannerText}</div>
      <div className="answer-info">
        <span className="answer-text" onClick={() => setShowExplanation(!showExplanation)}>{showExplanation ? '▼' : '▲'}正解は{correctText}です</span>
        <button className="favorite-btn" style={{ color: 'var(--primary)' }} onClick={() => handleAddToCollection(q.id)}>＋</button>
      </div>
      {showExplanation && <div className="explanation-box">{q.explanation}</div>}
    </>);
  }

  function renderChoices(q: Question) {
    const isMulti = q.max_selections >= 2;
    return (<div>{q.choices.map((choice, idx) => {
      const isSelected = isMulti ? selectedChoiceIds.includes(choice.id) : selectedChoiceId === choice.id;
      let cn = 'choice-option';
      if (answered) { cn += ' answered'; if (choice.is_correct) cn += ' correct-answer'; else if (isSelected && !choice.is_correct) cn += ' wrong-answer'; else cn += ' neutral-answer'; }
      else if (isSelected) cn += ' selected';
      let mark = '', mc = 'choice-mark';
      if (answered) { if (choice.is_correct) { mark = '〇'; mc += ' correct'; } else if (isSelected && !choice.is_correct) { mark = '×'; mc += ' incorrect'; } }
      return (<div key={choice.id} className={cn} onClick={() => {
        if (answered) return;
        if (isMulti) setSelectedChoiceIds((p) => p.includes(choice.id) ? p.filter((id) => id !== choice.id) : p.length >= q.max_selections ? p : [...p, choice.id]);
        else setSelectedChoiceId(choice.id);
      }}>
        {answered ? <span className={mc}>{mark || '\u00A0'}</span> : isMulti ?
          <div style={{ width: '18px', height: '18px', border: '2px solid var(--border)', borderRadius: '3px', display: 'flex', alignItems: 'center', justifyContent: 'center', flexShrink: 0, borderColor: isSelected ? 'var(--primary)' : 'var(--border)', backgroundColor: isSelected ? 'var(--primary)' : 'transparent' }}>
            {isSelected && <span style={{ color: 'white', fontSize: '12px', fontWeight: 700 }}>✓</span>}</div> :
          <div className={`radio-circle ${isSelected ? 'checked' : ''}`}>{isSelected && <div className="radio-circle-inner" />}</div>}
        <div style={{ flex: 1 }}>
          {q.question_type === 'image_choice' && choice.image_url && <img src={choice.image_url} alt={choice.choice_text || ''} style={{ maxWidth: '100%', borderRadius: '4px', marginBottom: '0.25rem' }} />}
          <span>{idx + 1}. {choice.choice_text}</span>
        </div>
      </div>);
    })}</div>);
  }

  function renderBlanks(q: Question) {
    const keys = Object.keys(q.correct_answers || {});
    return (<div style={{ display: 'flex', flexDirection: 'column', gap: '0.75rem', marginTop: '0.5rem' }}>
      {keys.map((key) => {
        let style: React.CSSProperties = {};
        if (answered) { const c = normalizeText(blanksInput[key] || '') === normalizeText((q.correct_answers || {})[key]); style = { borderColor: c ? 'var(--correct)' : 'var(--incorrect)', backgroundColor: c ? 'var(--correct-bg)' : 'var(--incorrect-bg)' }; }
        return (<div key={key}><label style={{ fontSize: '0.9rem', fontWeight: 600, display: 'block', marginBottom: '0.25rem' }}>{key}：</label>
          <input type="text" className="search-input" placeholder={`${key} の解答を入力`} value={blanksInput[key] || ''} onChange={(e) => setBlanksInput((p) => ({ ...p, [key]: e.target.value }))} disabled={answered} style={style} /></div>);
      })}
    </div>);
  }

  function renderEssay(q: Question) {
    return (<div>
      {answered && (<><div className="answer-info">
        <span className="answer-text" onClick={() => setShowExplanation(!showExplanation)}>{showExplanation ? '▼' : '▲'}模範解答例</span>
        <button className="favorite-btn" style={{ color: 'var(--primary)' }} onClick={() => handleAddToCollection(q.id)}>＋</button>
      </div>{showExplanation && <div className="explanation-box">{q.explanation}</div>}</>)}
      <textarea placeholder="解答を入力" value={essayInput} onChange={(e) => setEssayInput(e.target.value)} disabled={answered}
        style={{ width: '100%', minHeight: '150px', padding: '0.75rem', border: '1.5px solid var(--border)', borderRadius: '6px', fontSize: '0.95rem', resize: 'vertical', fontFamily: 'inherit', lineHeight: 1.6, marginTop: '0.5rem' }} />
    </div>);
  }

  function renderGroup(group: QuestionGroup) {
    const correctNums = group.questions.map((q) => String(q.choices.indexOf(q.choices.find((c) => c.is_correct)!) + 1)).join(', ');
    return (<>
      {group.group_text && <div className="question-text" style={{ whiteSpace: 'pre-wrap' }}>{group.group_text}</div>}
      {group.image_url && <div style={{ textAlign: 'center', marginBottom: '1rem' }}><img src={group.image_url} alt="" style={{ maxWidth: '100%', borderRadius: '8px' }} /></div>}
      {group.audio_url && <div style={{ textAlign: 'center', marginBottom: '1rem' }}><audio key={group.audio_url} controls style={{ maxWidth: '100%' }}><source src={group.audio_url} /></audio></div>}
      {answered && (<>
        <div className={`result-banner ${groupCorrectCount === group.questions.length ? 'correct' : groupCorrectCount > 0 ? 'correct' : 'incorrect'}`}>
          {groupCorrectCount === group.questions.length ? '正解！' : `${groupCorrectCount}問正解`}</div>
        <div className="answer-info">
          <span className="answer-text" onClick={() => setShowExplanation(!showExplanation)}>{showExplanation ? '▼' : '▲'}正解は{correctNums}です</span>
          <button className="favorite-btn" style={{ color: 'var(--primary)' }} onClick={() => handleAddGroupToCollection(group.questions.map((q) => q.id))}>＋</button>
        </div>
        {showExplanation && <div className="explanation-box">{group.questions.map((q, i) => (
          <div key={q.id} style={{ marginBottom: i < group.questions.length - 1 ? '1rem' : 0 }}><p style={{ fontWeight: 600, marginBottom: '0.25rem' }}>Questions {i + 1}</p><p>{q.explanation}</p></div>
        ))}</div>}
      </>)}
      {group.questions.map((q, qIdx) => (
        <div key={q.id} style={{ marginBottom: '1.5rem' }}>
          <div style={{ fontWeight: 600, fontSize: '0.9rem', marginBottom: '0.5rem' }}>Questions {qIdx + 1}</div>
          {q.body_text && <div style={{ fontSize: '0.9rem', marginBottom: '0.5rem' }}>{q.body_text}</div>}
          <div>{q.choices.map((choice) => {
            const isSelected = groupAnswers[q.id] === choice.id;
            let cn = 'choice-option';
            if (answered) { cn += ' answered'; if (choice.is_correct) cn += ' correct-answer'; else if (isSelected && !choice.is_correct) cn += ' wrong-answer'; else cn += ' neutral-answer'; }
            else if (isSelected) cn += ' selected';
            let mark = '', mc = 'choice-mark';
            if (answered) { if (choice.is_correct) { mark = '〇'; mc += ' correct'; } else if (isSelected && !choice.is_correct) { mark = '×'; mc += ' incorrect'; } }
            return (<div key={choice.id} className={cn} onClick={() => { if (!answered) setGroupAnswers((p) => ({ ...p, [q.id]: choice.id })); }}>
              {answered ? <span className={mc}>{mark || '\u00A0'}</span> : <div className={`radio-circle ${isSelected ? 'checked' : ''}`}>{isSelected && <div className="radio-circle-inner" />}</div>}
              <span>{choice.choice_text}</span>
            </div>);
          })}</div>
        </div>
      ))}
    </>);
  }
}
