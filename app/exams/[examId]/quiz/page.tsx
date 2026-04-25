'use client';

import { useEffect, useState, useCallback, useRef } from 'react';
import { useParams, useSearchParams, useRouter } from 'next/navigation';
import Link from 'next/link';
import { supabase } from '@/lib/supabase';
import { useUser } from '@/lib/auth';
import {
  getProgress, saveProgress as saveProgressStorage, clearProgress,
  saveQuizResult, getCollectionItems, saveReviewState, getReviewState,
  getLocalCollectionQuestions, getLocalUserQuestionsByIds,
  saveProgressHint, clearProgressHint,
} from '@/lib/storage';
import { Choice, Exam, Question, QuestionGroup, QuizItem } from '@/lib/types';
import AdOverlay from '@/components/AdOverlay';

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
  const fromParam = searchParams.get('from') || '';
  const filteredParam = searchParams.get('filtered') === '1';
  const backToAnswerParam = searchParams.get('backToAnswer');
  const suspendDest = '/search';

  const [exam, setExam] = useState<Exam | null>(null);
  const [quizItems, setQuizItems] = useState<QuizItem[]>([]);
  const [currentIndex, setCurrentIndex] = useState(0);
  const [loading, setLoading] = useState(true);
  const [showAd, setShowAd] = useState(false);

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

  const [feedbackMap, setFeedbackMap] = useState<Record<number, { rating: 'bad' | 'good' | null; comment: string }>>({});
  const [commentOpenMap, setCommentOpenMap] = useState<Record<number, boolean>>({});

  const [savedAnswers, setSavedAnswers] = useState<Record<number, SavedAnswer>>({});

  // シャッフル済み選択肢マップ（question.id → shuffled Choice[]）
  // quizItems 確定時に一括計算し、セッション中は変更しない
  const [shuffledChoicesMap, setShuffledChoicesMap] = useState<Record<number, Choice[]>>({});
  // sectionId → shuffle_choices（fetchData で設定）
  const sectionShuffleMapRef = useRef<Record<number, boolean>>({});
  // continue モード時の元モード（retry / user_collection）を保持し、restartUrl 生成に使用
  const continueOriginalModeRef = useRef<string>('user_collection');
  // add-to-collection から戻ったとき正誤判定画面を復元するための index（null = 不要）
  const pendingExplainRef = useRef<number | null>(null);

  useEffect(() => {
    if (sessionStorage.getItem('show_ad') === '1') {
      sessionStorage.removeItem('show_ad');
      setShowAd(true);
    }
  }, []);

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

      type RawUqBase = { id: number; question_number: number; question_type: string; max_selections: number; score: number; body_text: string; explanation: string | null; audio_url: string | null; image_url: string | null; correct_answers: string | null; shuffle_choices?: boolean; user_question_choices: { id: number; question_id: number; choice_text: string; image_url: string | null; is_correct: boolean; sort_order: number }[] };
      function uqToQuizItem(uq: RawUqBase): QuizItem {
        return {
          type: 'single' as const,
          question: {
            id: uq.id,
            section_id: null,
            group_id: null,
            question_number: uq.question_number,
            question_type: uq.question_type === 'choice_single' ? 'choice' : (uq.question_type || 'choice'),
            max_selections: uq.max_selections ?? 1,
            score: uq.score ?? 1,
            body_text: uq.body_text,
            explanation: uq.explanation || '',
            audio_url: uq.audio_url ?? null,
            image_url: uq.image_url ?? null,
            correct_answers: uq.correct_answers ? JSON.parse(uq.correct_answers) : null,
            choices: uq.user_question_choices
              .sort((a, b) => a.sort_order - b.sort_order)
              .map((c) => ({ id: c.id, question_id: c.question_id, choice_text: c.choice_text, image_url: c.image_url, is_correct: c.is_correct })),
            isUserQuestion: true,
            shuffle_choices: uq.shuffle_choices ?? true,
          } as Question,
        };
      }

      // ユーザー作成問題集モード（コピー済み user_questions を使用）
      if (mode === 'user_collection') {
        if (!collectionIdParam) { setLoading(false); return; }

        // filtered=1: sessionStorage のフィルタ済み ID リストを使用
        if (filteredParam) {
          const filterStr = typeof window !== 'undefined' ? sessionStorage.getItem('user_collection_filter') : null;
          const filter = filterStr ? (JSON.parse(filterStr) as { collectionId: number; questionIds: number[] }) : null;
          if (filter && filter.collectionId === collectionIdParam) {
            const savedQIds = filter.questionIds;
            if (savedQIds.length > 0) {
              const qMap: Record<number, QuizItem> = {};
              const rawUqs: RawUqBase[] = !user
                ? getLocalUserQuestionsByIds(savedQIds)
                : await (async () => {
                    const BATCH = 200;
                    const acc: RawUqBase[] = [];
                    for (let i = 0; i < savedQIds.length; i += BATCH) {
                      const { data } = await supabase.from('user_questions').select('*, user_question_choices(*)').in('id', savedQIds.slice(i, i + BATCH));
                      if (data) acc.push(...(data as RawUqBase[]));
                    }
                    return acc;
                  })();
              for (const uq of rawUqs) qMap[uq.id] = uqToQuizItem(uq);
              const items: QuizItem[] = [];
              for (const id of savedQIds) if (qMap[id]) items.push(qMap[id]);
              if (items.length > 0) setQuizItems(items);
            }
            setLoading(false);
            return;
          }
        }

        if (!user) {
          const localQs = getLocalCollectionQuestions(collectionIdParam);
          if (localQs.length > 0) setQuizItems(localQs.map(uqToQuizItem));
          setLoading(false);
          return;
        }

        const allUqs: RawUqBase[] = [];
        const UQ_PAGE = 1000;
        let uqFrom = 0;
        while (true) {
          const { data } = await supabase
            .from('user_questions')
            .select('*, user_question_choices(*)')
            .eq('collection_id', collectionIdParam)
            .order('question_number')
            .range(uqFrom, uqFrom + UQ_PAGE - 1);
          if (!data || data.length === 0) break;
          allUqs.push(...(data as RawUqBase[]));
          if (data.length < UQ_PAGE) break;
          uqFrom += UQ_PAGE;
        }
        if (allUqs.length > 0) {
          setQuizItems(allUqs.map(uqToQuizItem));
        }
        setLoading(false);
        return;
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
          const dbToModeCol: Record<string, string> = { retry_wrong: 'retry', favorites_only: 'favorites' };
          const rawModeCol = progress.mode || 'user_collection';
          continueOriginalModeRef.current = dbToModeCol[rawModeCol] ?? rawModeCol;
          const savedIdx = progress.currentIndex || 0;
          const savedRes = progress.results || [];
          let items: QuizItem[] = [];

          // examId='0': user_collection の再開（saved questionIds で絞る。retry 中断に対応）
          if (examId === '0') {
            const savedQIds = progress.questionIds || [];
            if (savedQIds.length > 0) {
              const qMap: Record<number, QuizItem> = {};
              const rawUqs: RawUqBase[] = !user
                ? getLocalUserQuestionsByIds(savedQIds)
                : await (async () => {
                    const BATCH = 200;
                    const acc: RawUqBase[] = [];
                    for (let i = 0; i < savedQIds.length; i += BATCH) {
                      const { data } = await supabase.from('user_questions').select('*, user_question_choices(*)').in('id', savedQIds.slice(i, i + BATCH));
                      if (data) acc.push(...(data as RawUqBase[]));
                    }
                    return acc;
                  })();
              for (const uq of rawUqs) qMap[uq.id] = uqToQuizItem(uq);
              for (const id of savedQIds) if (qMap[id]) items.push(qMap[id]);
            }
          } else {
            const qIds = progress.questionIds || [];
            const gIds = progress.groupIds || [];
            if (qIds.length > 0) {
              const directQs = await fetchQuestionsByIds(qIds);
              for (const q of directQs) items.push({ type: 'single', question: q as Question });
            }
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
            if (items.length > 0) await applyShuffleMap(items);
          }

          if (items.length > 0) setQuizItems(items);
          const backIdxCol = backToAnswerParam !== null ? Math.min(parseInt(backToAnswerParam), items.length - 1) : null;
          if (backIdxCol !== null) pendingExplainRef.current = backIdxCol;
          setCurrentIndex(backIdxCol ?? savedIdx);
          setResults(savedRes);
          setSavedAnswers(buildSavedAnswers(items, savedRes, backIdxCol !== null ? backIdxCol + 1 : savedIdx));
        }
        setLoading(false);
        return;
      }

      // ---- retry モード: localStorage の問題IDを直接取得（一括取得の max_rows を回避）----
      if (mode === 'retry') {
        const retryIds = JSON.parse(localStorage.getItem(`retry_${examId}`) || '[]') as number[];
        const filtered: QuizItem[] = [];
        if (retryIds.length > 0) {
          // examId='0': user_collection のリトライ（全ID が user_questions.id の正の整数）
          if (examId === '0') {
            const rawUqs: RawUqBase[] = !user
              ? getLocalUserQuestionsByIds(retryIds)
              : await (async () => {
                  const BATCH = 200;
                  const acc: RawUqBase[] = [];
                  for (let i = 0; i < retryIds.length; i += BATCH) {
                    const { data } = await supabase.from('user_questions').select('*, user_question_choices(*)').in('id', retryIds.slice(i, i + BATCH));
                    if (data) acc.push(...(data as RawUqBase[]));
                  }
                  return acc;
                })();
            for (const uq of rawUqs) filtered.push(uqToQuizItem(uq));
          } else {
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
        }
        setQuizItems(filtered);
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
          if (review.collectionId) {
            // user_collection の review: 全ID が user_questions.id
            const rawUqs: RawUqBase[] = !user
              ? getLocalUserQuestionsByIds(review.questionIds)
              : await (async () => {
                  const BATCH = 200;
                  const acc: RawUqBase[] = [];
                  for (let i = 0; i < review.questionIds.length; i += BATCH) {
                    const { data } = await supabase.from('user_questions').select('*, user_question_choices(*)').in('id', review.questionIds.slice(i, i + BATCH));
                    if (data) acc.push(...(data as RawUqBase[]));
                  }
                  return acc;
                })();
            for (const uq of rawUqs) qMap[uq.id] = uqToQuizItem(uq);
          } else {
            const qs = await fetchQuestionsByIds(review.questionIds);
            for (const q of qs) qMap[q.id] = { type: 'single', question: q as Question };
          }
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

      // ---- continue モード（コレクションなし）: 保存済み ID を直接取得（一括取得の max_rows を回避）----
      if (mode === 'continue') {
        const progress = await getProgress(user, examId);
        // DB は 'retry_wrong'/'favorites_only' 形式で保存されるため quiz page の mode 値に正規化
        const dbToMode: Record<string, string> = { retry_wrong: 'retry', favorites_only: 'favorites' };
        const rawMode = progress?.mode || 'normal';
        continueOriginalModeRef.current = dbToMode[rawMode] ?? rawMode;
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

        const backIdx = backToAnswerParam !== null ? Math.min(parseInt(backToAnswerParam), restoredItems.length - 1) : null;
        if (backIdx !== null) pendingExplainRef.current = backIdx;
        setCurrentIndex(backIdx ?? savedCurrentIndex);
        setResults(savedResults);
        setQuizItems(restoredItems);
        setSavedAnswers(buildSavedAnswers(restoredItems, savedResults, backIdx !== null ? backIdx + 1 : savedCurrentIndex));
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
      let shuffleable: boolean;
      if (item.type === 'single' && item.question.section_id == null) {
        // user_question: 問題ごとの shuffle_choices を参照
        shuffleable = item.question.shuffle_choices ?? true;
      } else {
        const sectionId = item.type === 'single' ? (item.question.section_id ?? -1) : item.group.section_id;
        shuffleable = shuffleMap[sectionId] ?? true;
      }
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

  function getLocalFeedback(): Record<number, { rating: 'bad' | 'good' | null; comment: string }> {
    try { return JSON.parse(localStorage.getItem('quiz_feedback') || '{}'); } catch { return {}; }
  }
  function saveLocalFeedback(questionId: number, rating: 'bad' | 'good' | null, comment: string) {
    const all = getLocalFeedback();
    all[questionId] = { rating, comment };
    localStorage.setItem('quiz_feedback', JSON.stringify(all));
  }

  useEffect(() => {
    if (!answered) return;
    const item = quizItems[currentIndex];
    if (!item) return;
    const questionIds = item.type === 'group'
      ? [item.group.questions[0].id]
      : [item.question.id];
    if (user) {
      supabase
        .from('user_question_feedback')
        .select('question_id, rating, comment')
        .eq('user_id', user.id)
        .in('question_id', questionIds)
        .then(({ data }) => {
          if (!data) return;
          setFeedbackMap((prev) => {
            const next = { ...prev };
            data.forEach((row) => {
              next[row.question_id] = { rating: row.rating as 'bad' | 'good' | null, comment: row.comment || '' };
            });
            return next;
          });
        });
    } else {
      const all = getLocalFeedback();
      setFeedbackMap((prev) => {
        const next = { ...prev };
        questionIds.forEach((id) => {
          if (all[id]) next[id] = all[id];
        });
        return next;
      });
    }
  }, [answered, currentIndex, user, quizItems]);

  // add-to-collection から戻ったとき、正誤判定画面を復元する
  useEffect(() => {
    if (loading) return;
    const idx = pendingExplainRef.current;
    if (idx === null) return;
    const a = savedAnswers[idx];
    if (!a) return;
    pendingExplainRef.current = null;
    setAnswered(true);
    setCurrentCorrect(a.correct);
    setGroupCorrectCount(a.groupCorrectCount);
    setSelectedChoiceId(a.selectedChoiceId);
    setSelectedChoiceIds(a.selectedChoiceIds);
    setTextInput(a.textInput);
    setBlanksInput(a.blanksInput);
    setGroupAnswers(a.groupAnswers);
    setShowExplanation(true);
  }, [loading, savedAnswers]);

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
    const answeredKeys = Object.keys(savedAnswers).map(Number);
    const rawResumeIndex = answeredKeys.length > 0 ? Math.max(...answeredKeys) + 1 : currentIndex;
    // 全問回答済みでもクリアせず最終問題を指して保存する（+ボタン経由のコレクション追加後に
    // mode=continue で戻ったとき進捗が見つからない問題を防ぐ）
    const resumeIndex = Math.min(rawResumeIndex, quizItems.length - 1);
    let totalQuestions = 0;
    for (const item of quizItems) {
      if (item.type === 'single') totalQuestions++;
      else totalQuestions += item.group.questions.length;
    }
    const currentQuestionNum = results.length + 1;
    saveProgressHint(examId, collectionIdParam, currentQuestionNum, totalQuestions);
    await saveProgressStorage(user, examId, {
      mode, sectionId: null, questionIds, groupIds,
      currentIndex: resumeIndex, results, totalItems: quizItems.length,
      totalQuestions,
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
        clearProgressHint(examId, collectionIdParam);
        saveQuizResult(examId, results);
        // 結果画面からの解答確認用に review state を保存
        const rQIds: number[] = [];
        const rGIds: number[] = [];
        for (const item of quizItems) {
          if (item.type === 'single') rQIds.push(item.question.id);
          else rGIds.push(item.group.id);
        }
        let restartUrl: string;
        if (collectionIdParam) {
          // はじめから = 直前に解いていたデータセットをそのまま再出題
          // continue の場合は中断前の元モードを使用
          const restartMode = mode === 'continue' ? continueOriginalModeRef.current : mode;
          restartUrl = `/exams/${examId}/quiz?mode=${restartMode}&collectionId=${collectionIdParam}`;
          if (collectionTitleParam) restartUrl += `&collectionTitle=${encodeURIComponent(collectionTitleParam)}`;
          // user_collection: 同じ問題 ID を sessionStorage に保存して filtered=1 で再出題
          if (restartMode === 'user_collection') {
            const replayIds = quizItems.map((item) => (item.type === 'single' ? item.question.id : null)).filter((id): id is number => id !== null);
            sessionStorage.setItem('user_collection_filter', JSON.stringify({ collectionId: collectionIdParam, questionIds: replayIds }));
            restartUrl += '&filtered=1';
          }
        } else {
          const effectiveMode = mode === 'continue' ? continueOriginalModeRef.current : mode;
          restartUrl = `/exams/${examId}/quiz?mode=${effectiveMode}`;
          if (sectionsParam) restartUrl += `&sections=${sectionsParam}`;
        }
        saveReviewState(examId, { questionIds: rQIds, groupIds: rGIds, results, collectionTitle: collectionTitleParam || undefined, restartUrl, collectionId: collectionIdParam });
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
        doSaveProgress();
        if (mode === 'user_collection' && collectionIdParam) {
          let backUrl = `/collections/${collectionIdParam}/sections`;
          if (collectionTitleParam) backUrl += `?collectionTitle=${encodeURIComponent(collectionTitleParam)}`;
          router.push(backUrl);
        } else if (mode === 'normal' || mode === 'retry') {
          router.push(`/exams/${examId}/sections`);
        } else {
          // mode='continue' (with or without collectionId) also falls here — known limitation
          router.push('/search');
        }
      }
    }
  };

  const handleRating = async (questionId: number, rating: 'bad' | 'good') => {
    const current = feedbackMap[questionId]?.rating;
    const newRating = current === rating ? null : rating;
    const comment = feedbackMap[questionId]?.comment || '';
    setFeedbackMap((prev) => ({ ...prev, [questionId]: { rating: newRating, comment } }));
    if (user) {
      await supabase.from('user_question_feedback').upsert(
        { user_id: user.id, question_id: questionId, rating: newRating, comment, updated_at: new Date().toISOString() },
        { onConflict: 'user_id,question_id' }
      );
    } else {
      saveLocalFeedback(questionId, newRating, comment);
    }
  };

  const handleCommentSave = async (questionId: number, comment: string) => {
    const rating = feedbackMap[questionId]?.rating ?? null;
    setFeedbackMap((prev) => ({ ...prev, [questionId]: { rating, comment } }));
    if (user) {
      await supabase.from('user_question_feedback').upsert(
        { user_id: user.id, question_id: questionId, rating, comment, updated_at: new Date().toISOString() },
        { onConflict: 'user_id,question_id' }
      );
    } else {
      saveLocalFeedback(questionId, rating, comment);
    }
  };

  const buildReturnTo = () => {
    let base = `/exams/${examId}/quiz?mode=continue`;
    if (collectionIdParam) base += `&collectionId=${collectionIdParam}`;
    if (collectionTitleParam) base += `&collectionTitle=${encodeURIComponent(collectionTitleParam)}`;
    if (fromParam) base += `&from=${fromParam}`;
    base += `&backToAnswer=${currentIndex}`;
    return base;
  };

  const handleAddToCollection = (questionId: number, isUserQuestion = false) => {
    doSaveProgress().then(() => {
      let url = `/exams/${examId}/add-to-collection?questionIds=${questionId}&returnTo=${encodeURIComponent(buildReturnTo())}`;
      if (isUserQuestion) url += '&uq=1';
      if (isUserQuestion && collectionIdParam) url += `&excludeCollectionId=${collectionIdParam}`;
      router.push(url);
    });
  };

  const handleAddGroupToCollection = (questionIds: number[], isUserQuestion = false) => {
    doSaveProgress().then(() => {
      let url = `/exams/${examId}/add-to-collection?questionIds=${questionIds.join(',')}&returnTo=${encodeURIComponent(buildReturnTo())}`;
      if (isUserQuestion) url += '&uq=1';
      if (isUserQuestion && collectionIdParam) url += `&excludeCollectionId=${collectionIdParam}`;
      router.push(url);
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
    return (<>{showAd && <AdOverlay onClose={() => setShowAd(false)} />}<div className="page-container">
      <div className="page-body"><p style={{ color: 'var(--text-light)', textAlign: 'center', padding: '2rem' }}>問題を読み込み中...</p></div></div></>);
  }
  if (quizItems.length === 0) {
    return (<div className="page-container">
      <div className="page-body"><p style={{ textAlign: 'center', padding: '2rem' }}>問題が見つかりません</p></div>
      <div className="nav-buttons"><button className="btn btn-back" onClick={() => router.back()}>戻る</button></div></div>);
  }

  const currentItem = quizItems[currentIndex];
  if (!currentItem) return null;
  const totalQuestions = quizItems.reduce((s, i) => s + (i.type === 'single' ? 1 : i.group.questions.length), 0);
  const currentQuestionNum = quizItems.slice(0, currentIndex).reduce((s, i) => s + (i.type === 'single' ? 1 : i.group.questions.length), 0) + 1;

  return (
    <div className="page-container">
      {showAd && <AdOverlay onClose={() => setShowAd(false)} />}
      <div className="page-body">
        <p className="header-subtitle" style={{ marginBottom: '0.5rem' }}>
          問題 {currentQuestionNum}{currentItem.type === 'group' ? `〜${currentQuestionNum + currentItem.group.questions.length - 1}` : ''} / {totalQuestions}
        </p>
        <div className="exam-name-bar">{collectionTitleParam || exam?.title}</div>
        {currentItem.type === 'single' ? renderSingle(currentItem.question) : renderGroup(currentItem.group)}
      </div>
      <div className="nav-buttons">
        <button className="btn btn-back" onClick={handleBack}>戻る</button>
        {mode === 'review'
          ? <button className="btn btn-back" onClick={() => router.push(`/exams/${examId}/result`)}>結果</button>
          : <button className="btn btn-back" onClick={() => { doSaveProgress(); window.scrollTo(0, 0); router.push(suspendDest); }}>中断</button>
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

  function renderFeedbackRow(questionId: number) {
    const fb = feedbackMap[questionId];
    const badSelected = fb?.rating === 'bad';
    const goodSelected = fb?.rating === 'good';
    const isCommentOpen = !!commentOpenMap[questionId];
    const goodColor = goodSelected ? '#22c55e' : '#9ca3af';
    const badColor  = badSelected  ? '#ef4444' : '#9ca3af';
    const commentColor = isCommentOpen ? '#6366f1' : '#9ca3af';
    const btnBase: React.CSSProperties = { background: 'none', border: 'none', padding: '0.25rem', cursor: 'pointer', display: 'flex', alignItems: 'center' };
    const thumbPath = 'M512,304.12c0-13.891-4.886-27.321-13.813-38.07c5.922-9.352,9.082-20.11,9.149-31.282c0.086-15.519-6.054-30.258-17.289-41.496c-11.618-11.703-27.594-18.418-43.825-18.418h-98.742c-3.122,0-5.508-2.782-5.035-5.867l5.086-33.07c0.985-6.317,1.481-12.786,1.481-19.215c0-49.847-34.547-107.793-79.086-107.793c-13.414,0-26.457,4.722-36.718,13.301l0,0c-4.387,3.656-6.73,9.211-6.293,14.902l5.492,71.91c0.183,2.695-0.016,5.23-0.598,7.562c-0.622,2.542-1.606,4.906-3.09,7.355l-41.023,75.985l-16.043,29.582c-5.37-6.801-13.617-10.851-22.625-10.851H28.75c-15.879,0-28.75,12.87-28.75,28.75v226.942c0,15.875,12.871,28.746,28.75,28.746h120.277c13.821,0,25.297-9.777,28.09-22.738c0.298-1.286,0.59-2.57,0.715-3.918c21.551,12.57,44.16,12.734,45.187,12.734l181.641-0.168c31.489-1.672,56.153-27.726,56.153-59.316c0-2.801-0.188-5.574-0.555-8.301c19.07-10.402,30.821-30.172,30.821-52.145c0-6.012-0.898-11.934-2.672-17.641C503.226,340.456,512,322.889,512,304.12z M459.778,327.264l-17.836,5.528l-5.894,1.769l0.035,0.043l-0.165,0.051l15.035,20.086c3.188,4.211,4.875,9.226,4.875,14.5c0,11.898-8.484,21.934-20.183,23.859l-18.168,3.047l-5.618,0.89l0.024,0.047l-0.165,0.027l11.13,21.5c1.855,3.582,2.793,7.309,2.793,11.074c0,12.706-9.848,23.32-22.211,24.16l-180.336,0.078c-0.199,0-19.859-0.504-33.902-12.43c-3.851-3.242-7.441-5.609-11.336-7.441V275.072l14.91-12.914c1.801-1.563,3.305-3.442,4.438-5.539l61.965-114.898c3.141-5.242,5.453-10.902,6.855-16.774c1.458-5.821,1.965-12.066,1.516-18.582l-4.614-61.066c2.254-0.75,4.637-1.14,7-1.14c22.578,0,43.84,40.866,43.84,72.542c0,4.684-0.367,9.309-1.086,13.793l-10.867,70.852c-0.707,4.61,2.855,8.762,7.515,8.762h136.894c6.95,0,13.832,2.894,18.871,7.946c4.57,4.621,7.055,10.476,6.992,16.511c0,7.485-3.492,14.434-9.578,19.055l-15.141,11.465l-6.156,4.582l0.062,0.035l-0.137,0.106l22.254,12.61c7.172,4.062,12.496,11.168,13.258,19.375C477.726,313.404,470.66,323.854,459.778,327.264z M142.61,466.701v1.145H35.25V253.904H142.61V466.701z';
    const commentPath = 'M 5,0.160156 C 2.23828,0.160156 0,2.39844 0,5.16016 0,7.04297 1.05859,8.76953 2.73828,9.62109 10.418,13.8789 17.3828,19.3164 23.3711,25.7383 8.97266,33.6328 0.015625,48.7383 0,65.1602 -0.0351563,77.1055 4.75781,88.5586 13.2891,96.918 21.6445,105.426 33.0781,110.199 45,110.16 h 70 c 24.852,0 45,-20.1483 45,-44.9998 -0.164,-24.7852 -20.215,-44.836 -45,-45 H 73.7813 C 53.7891,5.87891 29.5313,-1.17578 5,0.160156 Z M 45,100.16 C 35.7305,100.188 26.8477,96.4688 20.3594,89.8516 13.7148,83.3555 9.97656,74.4492 10,65.1602 10.0234,50.4063 19.293,37.2539 33.1797,32.2695 c 2.6016,-0.9257 3.9609,-3.7851 3.0351,-6.3867 -0.1796,-0.5039 -0.4375,-0.9726 -0.7656,-1.3945 -3.8515,-4.9024 -8.2109,-9.3867 -13,-13.3789 16.875,1.2773 32.9961,7.5 46.3516,17.8906 0.8984,0.75 2.0312,1.1602 3.1992,1.1602 h 43 c 19.262,0.164 34.836,15.7382 35,35 0,19.3281 -15.668,34.9998 -35,34.9998 H 45';
    return (
      <div style={{ textAlign: 'center', margin: '0.35rem 0' }}>
        <div style={{ display: 'inline-flex', gap: '0.8rem', alignItems: 'center' }}>
          <button onClick={() => handleRating(questionId, 'bad')} title="Bad" style={btnBase}>
            <svg viewBox="0 0 512 512" width="22" height="22" style={{ transform: 'scale(-1,-1)' }}>
              <path fill={badColor} d={thumbPath} />
            </svg>
          </button>
          <button onClick={() => setCommentOpenMap((prev) => ({ ...prev, [questionId]: !prev[questionId] }))} title="コメント" style={btnBase}>
            <svg viewBox="0 0 21.333332 14.693333" width="24" height="24">
              <g transform="matrix(1.3333333,0,0,-1.3333333,0,14.693333)">
                <g transform="scale(0.1)">
                  <path fill={commentColor} d={commentPath} />
                </g>
              </g>
            </svg>
          </button>
          <button onClick={() => handleRating(questionId, 'good')} title="Good" style={btnBase}>
            <svg viewBox="0 0 512 512" width="22" height="22">
              <path fill={goodColor} d={thumbPath} />
            </svg>
          </button>
        </div>
        {isCommentOpen && (
          <textarea key={`comment-${questionId}`} defaultValue={fb?.comment || ''}
            onBlur={(e) => handleCommentSave(questionId, e.target.value)}
            placeholder="メモを入力..."
            style={{ display: 'block', width: '100%', marginTop: '0.4rem', padding: '0.5rem 0.75rem', border: '1px solid var(--border)', borderRadius: '6px', fontSize: '0.9rem', resize: 'vertical', minHeight: '64px', fontFamily: 'inherit', lineHeight: 1.6 }} />
        )}
      </div>
    );
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
      {!q.isUserQuestion && renderFeedbackRow(q.id)}
      <div className="answer-info">
        <div style={{ display: 'flex', alignItems: 'center' }}>
          <span className="answer-text" onClick={() => setShowExplanation(!showExplanation)}>{showExplanation ? '▼' : '▲'}正解は{correctText}です</span>
          <label style={{ display: 'flex', alignItems: 'center', gap: '0.2rem', fontSize: '0.78rem', color: 'var(--text-light)', cursor: 'pointer', userSelect: 'none', whiteSpace: 'nowrap' }}>
            （<input type="checkbox" checked={autoOpen} onChange={(e) => { const v = e.target.checked; setAutoOpen(v); localStorage.setItem('quiz_auto_open', String(v)); }} style={{ margin: '0 0.15rem' }} />解説を常に表示）
          </label>
        </div>
        <button className="favorite-btn" style={{ color: 'var(--primary)' }} onClick={() => handleAddToCollection(q.id, q.isUserQuestion)}>＋</button>
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
      {answered && (<>
        {renderFeedbackRow(q.id)}
        <div className="answer-info">
          <div style={{ display: 'flex', alignItems: 'center' }}>
            <span className="answer-text" onClick={() => setShowExplanation(!showExplanation)}>{showExplanation ? '▼' : '▲'}模範解答例</span>
            <label style={{ display: 'flex', alignItems: 'center', gap: '0.2rem', fontSize: '0.78rem', color: 'var(--text-light)', cursor: 'pointer', userSelect: 'none', whiteSpace: 'nowrap' }}>
              （<input type="checkbox" checked={autoOpen} onChange={(e) => { const v = e.target.checked; setAutoOpen(v); localStorage.setItem('quiz_auto_open', String(v)); }} style={{ margin: '0 0.15rem' }} />解説を常に表示）
            </label>
          </div>
          <button className="favorite-btn" style={{ color: 'var(--primary)' }} onClick={() => handleAddToCollection(q.id, q.isUserQuestion)}>＋</button>
        </div>
        {showExplanation && <div className="explanation-box">{q.explanation}</div>}
      </>)}
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
        {renderFeedbackRow(group.questions[0].id)}
        <div className="answer-info">
          <div style={{ display: 'flex', alignItems: 'center' }}>
            <span className="answer-text" onClick={() => setShowExplanation(!showExplanation)}>{showExplanation ? '▼' : '▲'}正解は{correctNums}です</span>
            <label style={{ display: 'flex', alignItems: 'center', gap: '0.2rem', fontSize: '0.78rem', color: 'var(--text-light)', cursor: 'pointer', userSelect: 'none', whiteSpace: 'nowrap' }}>
              （<input type="checkbox" checked={autoOpen} onChange={(e) => { const v = e.target.checked; setAutoOpen(v); localStorage.setItem('quiz_auto_open', String(v)); }} style={{ margin: '0 0.15rem' }} />解説を常に表示）
            </label>
          </div>
          <button className="favorite-btn" style={{ color: 'var(--primary)' }} onClick={() => handleAddGroupToCollection(group.questions.map((q) => q.id), group.questions[0]?.isUserQuestion ?? false)}>＋</button>
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
