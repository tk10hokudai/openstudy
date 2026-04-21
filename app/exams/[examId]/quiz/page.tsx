'use client';

import { useEffect, useState, useCallback, useRef } from 'react';
import { useParams, useSearchParams, useRouter } from 'next/navigation';
import Link from 'next/link';
import { supabase } from '@/lib/supabase';
import { useUser } from '@/lib/auth';
import {
  getProgress, saveProgress as saveProgressStorage, clearProgress,
  saveQuizResult, getCollectionItems, saveReviewState, getReviewState,
} from '@/lib/storage';
import { Choice, Exam, Question, QuestionGroup, QuizItem } from '@/lib/types';

type Result = {
  questionId: number;
  correct: boolean;
  selectedChoiceId?: number | null;
  selectedChoiceIds?: number[];
  textInput?: string;
};

// Fisher-Yates シャッフル（新しい配列を返す）
function fisherYatesShuffle<T>(arr: T[]): T[] {
  const result = [...arr];
  for (let i = result.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [result[i], result[j]] = [result[j], result[i]];
  }
  return result;
}

type SavedAnswer = {
  correct: boolean;
  groupCorrectCount: number;
  selectedChoiceId: number | null;
  selectedChoiceIds: number[];
  textInput: string;
  blanksInput: Record<string, string>;
  groupAnswers: Record<number, number>;
};

function buildSavedAnswers(items: QuizItem[], results: Result[], upToIndex: number): Record<number, SavedAnswer> {
  const saved: Record<number, SavedAnswer> = {};
  let ri = 0;
  for (let i = 0; i < upToIndex && i < items.length; i++) {
    const item = items[i];
    if (item.type === 'single') {
      const r = results[ri++];
      if (r !== undefined) {
        saved[i] = {
          correct: r.correct,
          groupCorrectCount: 0,
          selectedChoiceId: r.selectedChoiceId ?? null,
          selectedChoiceIds: r.selectedChoiceIds || [],
          textInput: r.textInput || '',
          blanksInput: {},
          groupAnswers: {},
        };
      }
    } else {
      const qCount = item.group.questions.length;
      const groupRes = results.slice(ri, ri + qCount);
      ri += qCount;
      if (groupRes.length > 0) {
        const correctCount = groupRes.filter((r) => r.correct).length;
        const restoredGroupAnswers: Record<number, number> = {};
        for (let j = 0; j < groupRes.length; j++) {
          const qId = item.group.questions[j]?.id;
          const choiceId = groupRes[j]?.selectedChoiceId;
          if (qId != null && choiceId != null) restoredGroupAnswers[qId] = choiceId;
        }
        saved[i] = {
          correct: correctCount === qCount,
          groupCorrectCount: correctCount,
          selectedChoiceId: null,
          selectedChoiceIds: [],
          textInput: '',
          blanksInput: {},
          groupAnswers: restoredGroupAnswers,
        };
      }
    }
  }
  return saved;
}

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
  const [autoOpen, setAutoOpen] = useState(() =>
    typeof window !== 'undefined' ? localStorage.getItem('quiz_auto_open') !== 'false' : true
  );
  const autoOpenRef = useRef(autoOpen);
  autoOpenRef.current = autoOpen;

  const [savedAnswers, setSavedAnswers] = useState<Record<number, SavedAnswer>>({});

  // シャッフル済み選択肢マップ（question.id → shuffled Choice[]）
  // quizItems 確定時に一括計算し、セッション中は変更しない
  const [shuffledChoicesMap, setShuffledChoicesMap] = useState<Record<number, Choice[]>>({});
  // sectionId → shuffle_choices（fetchData で設定）
  const sectionShuffleMapRef = useRef<Record<number, boolean>>({});

  useEffect(() => {
    async function fetchData() {
      // ID リストを 200 件ずつバッチ取得（URL 長制限・max_rows 回避）
      async function fetchQuestionsByIds(ids: number[]): Promise<Question[]> {
        const BATCH = 200;
        const results: Question[] = [];
        for (let i = 0; i < ids.length; i += BATCH) {
          const { data } = await supabase
            .from('questions').select('*, choices(*)').in('id', ids.slice(i, i + BATCH));
          if (data) results.push(...(data as Question[]));
        }
        return results;
      }
      async function fetchGroupsByIds(ids: number[]): Promise<QuestionGroup[]> {
        const BATCH = 200;
        const results: QuestionGroup[] = [];
        for (let i = 0; i < ids.length; i += BATCH) {
          const { data } = await supabase
            .from('question_groups').select('*, questions(*, choices(*))').in('id', ids.slice(i, i + BATCH));
          if (data) results.push(...(data as QuestionGroup[]));
        }
        return results;
      }

      // items の section_id 一覧から sectionShuffleMapRef を設定するヘルパー
      async function applyShuffleMap(items: QuizItem[]) {
        const sectionIds = [...new Set(
          items.map((it) => it.type === 'single' ? it.question.section_id : it.group.section_id)
               .filter((id): id is number => id !== null)
        )];
        if (sectionIds.length === 0) return;
        const { data: secData } = await supabase
          .from('exam_sections').select('id, shuffle_choices').in('id', sectionIds);
        const map: Record<number, boolean> = {};
        for (const s of secData ?? []) map[s.id] = s.shuffle_choices ?? true;
        sectionShuffleMapRef.current = map;
      }

      // コレクションモードは collectionId からDB取得（URL長制限回避・大量問題対応）
      if (mode === 'collection') {
        if (!collectionIdParam) { setLoading(false); return; }
        const qIds = await getCollectionItems(user, collectionIdParam);
        if (qIds.length > 0) {
          const directQs = await fetchQuestionsByIds(qIds);
          const items: QuizItem[] = [];
          const soloQs = directQs.filter((q) => !q.group_id);
          const groupQs = directQs.filter((q) => q.group_id);
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
          await applyShuffleMap(items);
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

          // 独立問題を復元（BATCH=200 で URL長制限・max_rows を回避）
          if (qIds.length > 0) {
            const directQs = await fetchQuestionsByIds(qIds);
            for (const q of directQs) {
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

          if (items.length > 0) {
            await applyShuffleMap(items);
            setQuizItems(items);
          }
          const savedIdx = progress.currentIndex || 0;
          const savedRes = progress.results || [];
          setCurrentIndex(savedIdx);
          setResults(savedRes);
          setSavedAnswers(buildSavedAnswers(items, savedRes, savedIdx));
        }
        setLoading(false);
        return;
      }

      const { data: examData } = await supabase
        .from('exams').select('*').eq('id', examId).single();
      if (examData) setExam(examData);

      // すべてのセクションIDと選択肢シャッフル可否を取得
      const { data: allSections } = await supabase
        .from('exam_sections').select('id, shuffle_choices').eq('exam_id', examId);
      const allSectionIds = allSections?.map((s) => s.id) || [];
      // sectionId → shuffle_choices マップ（未定義時はシャッフルあり）
      const sectionShuffleMap: Record<number, boolean> = {};
      for (const s of allSections ?? []) sectionShuffleMap[s.id] = s.shuffle_choices ?? true;
      sectionShuffleMapRef.current = sectionShuffleMap;

      if (allSectionIds.length === 0) { setLoading(false); return; }

      // 分野選択モード: 分野ごとに個別クエリして max_rows 上限を回避
      if (mode === 'normal' && sectionsParam) {
        const sectionRequests = sectionsParam.split(',').map((s) => {
          const [id, count] = s.split(':');
          return { sectionId: Number(id), count: Number(count) };
        });

        const filtered: QuizItem[] = [];
        for (const req of sectionRequests) {
          const childIds = await getSectionAndChildIds(req.sectionId);

          const { data: secSolo } = await supabase
            .from('questions').select('*, choices(*)').in('section_id', childIds).order('question_number');
          const { data: secGroups } = await supabase
            .from('question_groups').select('*, questions(*, choices(*))').in('section_id', childIds).order('id');

          const sectionItems: QuizItem[] = [];
          if (secSolo) for (const q of secSolo) sectionItems.push({ type: 'single', question: q as Question });
          if (secGroups) {
            for (const g of secGroups as QuestionGroup[]) {
              g.questions.sort((a, b) => a.question_number - b.question_number);
              sectionItems.push({ type: 'group', group: g });
            }
          }

          const shuffled = fisherYatesShuffle(sectionItems);
          const selected = shuffled.slice(0, req.count);
          selected.sort((a, b) => {
            const numA = a.type === 'single' ? a.question.question_number : a.group.id;
            const numB = b.type === 'single' ? b.question.question_number : b.group.id;
            return numA - numB;
          });
          filtered.push(...selected);
        }

        setQuizItems(filtered);
        setLoading(false);
        return;
      }

      // ---- retry モード: localStorage の問題IDを直接取得（一括取得の max_rows を回避）----
      if (mode === 'retry') {
        const retryIds = JSON.parse(localStorage.getItem(`retry_${examId}`) || '[]') as number[];
        const filtered: QuizItem[] = [];
        if (retryIds.length > 0) {
          const retryQs = await fetchQuestionsByIds(retryIds);
          const soloQs = retryQs.filter((q) => !q.group_id);
          const groupedQs = retryQs.filter((q) => q.group_id);
          for (const q of soloQs) filtered.push({ type: 'single', question: q as Question });
          const groupIds = [...new Set(groupedQs.map((q) => q.group_id as number))];
          if (groupIds.length > 0) {
            const rGroups = await fetchGroupsByIds(groupIds);
            for (const g of rGroups) {
              g.questions.sort((a, b) => a.question_number - b.question_number);
              filtered.push({ type: 'group', group: g });
            }
          }
          filtered.sort((a, b) => {
            const numA = a.type === 'single' ? a.question.question_number : a.group.id;
            const numB = b.type === 'single' ? b.question.question_number : b.group.id;
            return numA - numB;
          });
        }
        setQuizItems(filtered);
        setLoading(false);
        return;
      }

      // ---- continue モード（コレクションなし）: 保存済み ID を直接取得（一括取得の max_rows を回避）----
      if (mode === 'continue') {
        const progress = await getProgress(user, examId);
        const savedCurrentIndex = progress?.currentIndex || 0;
        const savedResults: Result[] = progress?.results || [];
        const savedQIds: number[] = progress?.questionIds || [];
        const savedGIds: number[] = progress?.groupIds || [];

        const restoredItems: QuizItem[] = [];
        if (savedQIds.length > 0) {
          const qMap: Record<number, QuizItem> = {};
          const qs = await fetchQuestionsByIds(savedQIds);
          for (const q of qs) qMap[q.id] = { type: 'single', question: q as Question };
          // 保存された出題順を維持してリストを構築
          for (const id of savedQIds) if (qMap[id]) restoredItems.push(qMap[id]);
        }
        if (savedGIds.length > 0) {
          const gs = await fetchGroupsByIds(savedGIds);
          for (const g of gs) {
            g.questions.sort((a, b) => a.question_number - b.question_number);
            restoredItems.push({ type: 'group', group: g });
          }
        }

        setCurrentIndex(savedCurrentIndex);
        setResults(savedResults);
        setQuizItems(restoredItems);
        setSavedAnswers(buildSavedAnswers(restoredItems, savedResults, savedCurrentIndex));
        setLoading(false);
        return;
      }

      // ---- review モード: 結果画面からの解答確認 ----
      if (mode === 'review') {
        const review = getReviewState(examId);
        if (!review) { setLoading(false); return; }

        const restoredItems: QuizItem[] = [];
        if (review.questionIds.length > 0) {
          const qMap: Record<number, QuizItem> = {};
          const qs = await fetchQuestionsByIds(review.questionIds);
          for (const q of qs) qMap[q.id] = { type: 'single', question: q as Question };
          for (const id of review.questionIds) if (qMap[id]) restoredItems.push(qMap[id]);
        }
        if (review.groupIds.length > 0) {
          const gs = await fetchGroupsByIds(review.groupIds);
          for (const g of gs) {
            g.questions.sort((a, b) => a.question_number - b.question_number);
            restoredItems.push({ type: 'group', group: g });
          }
        }

        if (restoredItems.length > 0) {
          await applyShuffleMap(restoredItems);
          const allSaved = buildSavedAnswers(restoredItems, review.results, restoredItems.length);
          const lastIndex = restoredItems.length - 1;
          const lastSaved = allSaved[lastIndex];
          setQuizItems(restoredItems);
          setResults(review.results);
          setCurrentIndex(lastIndex);
          setSavedAnswers(allSaved);
          if (lastSaved) {
            setAnswered(true);
            setCurrentCorrect(lastSaved.correct);
            setGroupCorrectCount(lastSaved.groupCorrectCount);
            setSelectedChoiceId(lastSaved.selectedChoiceId);
            setSelectedChoiceIds(lastSaved.selectedChoiceIds);
            setTextInput(lastSaved.textInput);
            setBlanksInput(lastSaved.blanksInput);
            setGroupAnswers(lastSaved.groupAnswers);
          }
        }
        setLoading(false);
        return;
      }

      // ---- normal（sections なし）: セクションごとに個別クエリ（max_rows を回避）----
      const allItems: QuizItem[] = [];
      for (const sectionId of allSectionIds) {
        const { data: secQs } = await supabase
          .from('questions').select('*, choices(*)').eq('section_id', sectionId).order('question_number');
        const { data: secGs } = await supabase
          .from('question_groups').select('*, questions(*, choices(*))').eq('section_id', sectionId).order('id');
        if (secQs) for (const q of secQs) allItems.push({ type: 'single', question: q as Question });
        if (secGs) for (const g of secGs as QuestionGroup[]) {
          g.questions.sort((a, b) => a.question_number - b.question_number);
          allItems.push({ type: 'group', group: g });
        }
      }
      allItems.sort((a, b) => {
        const numA = a.type === 'single' ? a.question.question_number : a.group.id;
        const numB = b.type === 'single' ? b.question.question_number : b.group.id;
        return numA - numB;
      });
      setQuizItems(allItems);
      setLoading(false);
    }
    fetchData();
  }, [examId, mode, sectionsParam, searchParams, user]);

  // quizItems 確定後にシャッフル可能な問題の選択肢を一括シャッフル
  useEffect(() => {
    if (quizItems.length === 0) return;
    const map: Record<number, Choice[]> = {};
    const shuffleMap = sectionShuffleMapRef.current;
    for (const item of quizItems) {
      const sectionId = item.type === 'single' ? (item.question.section_id ?? -1) : item.group.section_id;
      const shuffleable = shuffleMap[sectionId] ?? true;
      if (!shuffleable) continue;
      const questions = item.type === 'single' ? [item.question] : item.group.questions;
      for (const q of questions) {
        if (q.question_type === 'choice' || q.question_type === 'image_choice') {
          map[q.id] = fisherYatesShuffle([...q.choices]);
        }
      }
    }
    setShuffledChoicesMap(map);
  }, [quizItems]);

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
    if (mode === 'review') return;
    const questionIds: number[] = [];
    const groupIds: number[] = [];
    for (const item of quizItems) {
      if (item.type === 'single') questionIds.push(item.question.id);
      else groupIds.push(item.group.id);
    }
    // 戻るで currentIndex が後退していても、最後に解答した問題の次から再開する
    const answeredKeys = Object.keys(savedAnswers).map(Number);
    const resumeIndex = answeredKeys.length > 0 ? Math.max(...answeredKeys) + 1 : currentIndex;
    // 全問解答済みなら中断データを残さない（完了扱い）
    if (resumeIndex >= quizItems.length) {
      await clearProgress(user, examId, collectionIdParam);
      return;
    }
    await saveProgressStorage(user, examId, {
      mode, sectionId: null, questionIds, groupIds,
      currentIndex: resumeIndex, results, totalItems: quizItems.length,
      collectionId: collectionIdParam,
    });
  }, [user, examId, mode, quizItems, currentIndex, results, savedAnswers, collectionIdParam]);

  const handleAnswer = () => {
    const item = quizItems[currentIndex];
    const snap = (correct: boolean, gccnt = 0): SavedAnswer => ({
      correct, groupCorrectCount: gccnt,
      selectedChoiceId, selectedChoiceIds: [...selectedChoiceIds],
      textInput, blanksInput: { ...blanksInput },
      groupAnswers: { ...(groupAnswers as Record<number, number>) },
    });
    if (item.type === 'single') {
      const q = item.question;
      if (q.question_type === 'essay') {
        setSavedAnswers((prev) => ({ ...prev, [currentIndex]: snap(false) }));
        setAnswered(true); setShowExplanation(autoOpenRef.current); return;
      }
      if (q.question_type === 'text') {
        const correct = normalizeText(textInput.trim()) === normalizeText(q.correct_answers?.answer || '');
        setCurrentCorrect(correct);
        setResults((prev) => [...prev, { questionId: q.id, correct, textInput }]);
        setSavedAnswers((prev) => ({ ...prev, [currentIndex]: snap(correct) }));
        setAnswered(true); setShowExplanation(autoOpenRef.current); return;
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
        setSavedAnswers((prev) => ({ ...prev, [currentIndex]: snap(allCorrect, cc) }));
        setAnswered(true); setShowExplanation(autoOpenRef.current); return;
      }
      if (q.max_selections >= 2) {
        const correctIds = q.choices.filter((c) => c.is_correct).map((c) => c.id);
        const correct = correctIds.length === selectedChoiceIds.length && correctIds.every((id) => selectedChoiceIds.includes(id));
        setCurrentCorrect(correct);
        setResults((prev) => [...prev, { questionId: q.id, correct, selectedChoiceIds: [...selectedChoiceIds] }]);
        setSavedAnswers((prev) => ({ ...prev, [currentIndex]: snap(correct) }));
        setAnswered(true); setShowExplanation(autoOpenRef.current);
      } else {
        const correct = q.choices.find((c) => c.id === selectedChoiceId)?.is_correct || false;
        setCurrentCorrect(correct);
        setResults((prev) => [...prev, { questionId: q.id, correct, selectedChoiceId }]);
        setSavedAnswers((prev) => ({ ...prev, [currentIndex]: snap(correct) }));
        setAnswered(true); setShowExplanation(autoOpenRef.current);
      }
    } else {
      const group = item.group;
      let cc = 0;
      const newResults: Result[] = [];
      for (const q of group.questions) {
        const correct = groupAnswers[q.id] === q.choices.find((c) => c.is_correct)?.id;
        if (correct) cc++;
        newResults.push({ questionId: q.id, correct: !!correct, selectedChoiceId: (groupAnswers as Record<number, number>)[q.id] ?? null });
      }
      setGroupCorrectCount(cc);
      setResults((prev) => [...prev, ...newResults]);
      setSavedAnswers((prev) => ({ ...prev, [currentIndex]: snap(cc === group.questions.length, cc) }));
      setAnswered(true); setShowExplanation(autoOpenRef.current);
    }
  };

  function normalizeText(s: string): string {
    return s.trim()
      .replace(/[Ａ-Ｚａ-ｚ０-９]/g, (ch) => String.fromCharCode(ch.charCodeAt(0) - 0xFEE0))
      .replace(/[−ー]/g, '-').replace(/　/g, ' ').toLowerCase();
  }

  const handleNext = () => {
    const willShowResult = !answered;
    let lastTime: number | null = null;
    const step = (now: number) => {
      if (lastTime === null) lastTime = now;
      const delta = now - lastTime;
      lastTime = now;
      const currentY = window.scrollY;
      if (currentY <= 0) return;
      if (willShowResult) {
        const banner = document.querySelector('.result-banner');
        if (banner && banner.getBoundingClientRect().top >= 0) return;
      }
      const newY = Math.max(0, currentY - 2000 * (delta / 1000));
      window.scrollTo(0, newY);
      if (newY > 0) requestAnimationFrame(step);
    };
    requestAnimationFrame(step);
    if (!answered) { handleAnswer(); return; }
    if (currentIndex + 1 >= quizItems.length) {
      if (mode === 'review') {
        router.push(`/exams/${examId}/result`);
      } else {
        clearProgress(user, examId, collectionIdParam);
        saveQuizResult(examId, results);
        // 結果画面からの解答確認用に review state を保存
        const rQIds: number[] = [];
        const rGIds: number[] = [];
        for (const item of quizItems) {
          if (item.type === 'single') rQIds.push(item.question.id);
          else rGIds.push(item.group.id);
        }
        let restartUrl = `/exams/${examId}/quiz?mode=${mode}`;
        if (sectionsParam) restartUrl += `&sections=${sectionsParam}`;
        if (collectionTitleParam) restartUrl += `&collectionTitle=${encodeURIComponent(collectionTitleParam)}`;
        if (collectionIdParam) restartUrl += `&collectionId=${collectionIdParam}`;
        saveReviewState(examId, { questionIds: rQIds, groupIds: rGIds, results, collectionTitle: collectionTitleParam || undefined, restartUrl });
        router.push(`/exams/${examId}/result`);
      }
    } else { goToNext(); }
  };

  const goToNext = () => {
    const nextIndex = currentIndex + 1;
    setCurrentIndex(nextIndex);
    const a = savedAnswers[nextIndex];
    if (a) {
      setAnswered(true);
      setCurrentCorrect(a.correct);
      setGroupCorrectCount(a.groupCorrectCount);
      setSelectedChoiceId(a.selectedChoiceId);
      setSelectedChoiceIds(a.selectedChoiceIds);
      setTextInput(a.textInput);
      setBlanksInput(a.blanksInput);
      setGroupAnswers(a.groupAnswers);
      setShowExplanation(false);
    } else {
      resetState();
    }
  };

  const resetState = () => {
    setSelectedChoiceId(null); setSelectedChoiceIds([]); setTextInput('');
    setBlanksInput({}); setEssayInput(''); setGroupAnswers({});
    setAnswered(false); setCurrentCorrect(false); setGroupCorrectCount(0);
    setShowExplanation(false);
  };

  const handleBack = () => {
    if (currentIndex > 0) {
      const prevIndex = currentIndex - 1;
      const a = savedAnswers[prevIndex];
      setCurrentIndex(prevIndex);
      if (a) {
        setAnswered(true);
        setCurrentCorrect(a.correct);
        setGroupCorrectCount(a.groupCorrectCount);
        setSelectedChoiceId(a.selectedChoiceId);
        setSelectedChoiceIds(a.selectedChoiceIds);
        setTextInput(a.textInput);
        setBlanksInput(a.blanksInput);
        setGroupAnswers(a.groupAnswers);
      } else {
        resetState();
      }
      setShowExplanation(false);
    } else {
      if (mode === 'review') {
        router.push(`/exams/${examId}/result`);
      } else {
        doSaveProgress(); router.back();
      }
    }
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

  // キーボードショートカット：→=次へ、←=戻る、1〜9=選択肢選択
  const handleNextRef = useRef(handleNext);
  handleNextRef.current = handleNext;
  const handleBackRef = useRef(handleBack);
  handleBackRef.current = handleBack;
  // shuffledChoicesMap は ref 経由で参照することで dep 配列サイズを固定する
  const shuffledChoicesMapRef = useRef(shuffledChoicesMap);
  shuffledChoicesMapRef.current = shuffledChoicesMap;

  // eslint-disable-next-line react-hooks/exhaustive-deps
  useEffect(() => {
    const onKeyDown = (e: KeyboardEvent) => {
      const target = e.target as HTMLElement;
      if (target.tagName === 'INPUT' || target.tagName === 'TEXTAREA') return;
      if (e.key === 'ArrowRight') {
        if (canProceed()) handleNextRef.current();
      } else if (e.key === 'ArrowLeft') {
        handleBackRef.current();
      } else if (/^[1-9]$/.test(e.key)) {
        if (answered) return;
        const item = quizItems[currentIndex];
        if (!item || item.type !== 'single') return;
        const q = item.question;
        if (q.question_type !== 'choice' && q.question_type !== 'image_choice') return;
        const idx = parseInt(e.key, 10) - 1;
        // シャッフル後の表示順に合わせて選択肢を取得する（ref 経由で常に最新値を参照）
        const displayChoices = shuffledChoicesMapRef.current[q.id] ?? q.choices;
        if (idx >= displayChoices.length) return;
        if (q.max_selections >= 2) {
          const choiceId = displayChoices[idx].id;
          setSelectedChoiceIds((prev) =>
            prev.includes(choiceId) ? prev.filter((id) => id !== choiceId) : [...prev, choiceId]
          );
        } else {
          setSelectedChoiceId(displayChoices[idx].id);
        }
      }
    };
    window.addEventListener('keydown', onKeyDown);
    return () => window.removeEventListener('keydown', onKeyDown);
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [answered, currentIndex, quizItems, selectedChoiceId, selectedChoiceIds, textInput, blanksInput, groupAnswers]);

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
  if (!currentItem) return null;
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
        {mode === 'review'
          ? <button className="btn btn-back" onClick={() => router.push(`/exams/${examId}/result`)}>結果</button>
          : <button className="btn btn-back" onClick={() => { doSaveProgress(); router.push('/'); }}>中断</button>
        }
        <button className={`btn ${canProceed() ? 'btn-primary' : 'btn-disabled'}`} onClick={handleNext} disabled={!canProceed()}>次へ</button>
      </div>
    </div>
  );

  function renderBodyText(bodyText: string | null) {
    if (!bodyText) return null;
    // CRLF → LF に正規化してから分割（DBが \r\n で保存している場合の対応）
    const normalized = bodyText.replace(/\r\n/g, '\n').replace(/\r/g, '\n');
    const sepIdx = normalized.indexOf('\n\n');
    if (sepIdx === -1) return <div className="question-text">{normalized}</div>;
    const prose = normalized.slice(0, sepIdx);
    const code = normalized.slice(sepIdx + 2);
    return (<>
      {prose && <div className="question-text">{prose}</div>}
      <pre className="code-block">{code}</pre>
    </>);
  }

  function renderSingle(q: Question) {
    return (<>
      {q.image_url && <div style={{ textAlign: 'center', marginBottom: '1rem' }}><img src={q.image_url} alt="" style={{ maxWidth: '100%', borderRadius: '8px' }} /></div>}
      {renderBodyText(q.body_text)}
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
    else {
      // シャッフル後の表示順で正解番号を算出する
      const displayChoices = shuffledChoicesMap[q.id] ?? q.choices;
      correctText = displayChoices
        .map((c, i) => (c.is_correct ? String(i + 1) : null))
        .filter(Boolean)
        .join(',');
    }

    let bannerText = currentCorrect ? '正解！' : '不正解';
    if (isMultiBlank && !currentCorrect && groupCorrectCount > 0) bannerText = `${groupCorrectCount}問正解`;

    return (<>
      <div className={`result-banner ${currentCorrect ? 'correct' : (isMultiBlank && groupCorrectCount > 0 ? 'correct' : 'incorrect')}`}>{bannerText}</div>
      <div className="answer-info">
        <span className="answer-text" onClick={() => setShowExplanation(!showExplanation)}>{showExplanation ? '▼' : '▲'}正解は{correctText}です</span>
        <label style={{ display: 'flex', alignItems: 'center', gap: '0.2rem', fontSize: '0.78rem', color: 'var(--text-light)', cursor: 'pointer', userSelect: 'none', whiteSpace: 'nowrap', marginLeft: '0.4rem' }}>
          （<input type="checkbox" checked={autoOpen} onChange={(e) => { const v = e.target.checked; setAutoOpen(v); localStorage.setItem('quiz_auto_open', String(v)); }} style={{ margin: '0 0.15rem' }} />常に開く）
        </label>
        <button className="favorite-btn" style={{ color: 'var(--primary)' }} onClick={() => handleAddToCollection(q.id)}>＋</button>
      </div>
      {showExplanation && <div className="explanation-box">{q.explanation}</div>}
    </>);
  }

  function renderChoices(q: Question) {
    const isMulti = q.max_selections >= 2;
    // シャッフル可能な問題はシャッフル済み順、それ以外は元の順で表示
    const displayChoices = shuffledChoicesMap[q.id] ?? q.choices;
    return (<div>{displayChoices.map((choice, idx) => {
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
        <label style={{ display: 'flex', alignItems: 'center', gap: '0.2rem', fontSize: '0.78rem', color: 'var(--text-light)', cursor: 'pointer', userSelect: 'none', whiteSpace: 'nowrap', marginLeft: '0.4rem' }}>
          （<input type="checkbox" checked={autoOpen} onChange={(e) => { const v = e.target.checked; setAutoOpen(v); localStorage.setItem('quiz_auto_open', String(v)); }} style={{ margin: '0 0.15rem' }} />常に開く）
        </label>
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
          <label style={{ display: 'flex', alignItems: 'center', gap: '0.2rem', fontSize: '0.78rem', color: 'var(--text-light)', cursor: 'pointer', userSelect: 'none', whiteSpace: 'nowrap', marginLeft: '0.4rem' }}>
            （<input type="checkbox" checked={autoOpen} onChange={(e) => { const v = e.target.checked; setAutoOpen(v); localStorage.setItem('quiz_auto_open', String(v)); }} style={{ margin: '0 0.15rem' }} />常に開く）
          </label>
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
