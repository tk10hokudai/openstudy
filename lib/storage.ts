import { supabase } from './supabase';
import type { User } from '@supabase/supabase-js';

// ============================================
// ブックマーク（◇）
// ============================================
export async function getBookmarks(user: User | null): Promise<number[]> {
  if (!user) {
    return JSON.parse(localStorage.getItem('exam_bookmarks') || '[]');
  }
  const { data } = await supabase
    .from('exam_bookmarks')
    .select('exam_id')
    .eq('user_id', user.id);
  return data?.map((d) => d.exam_id) || [];
}

export async function toggleBookmark(user: User | null, examId: number): Promise<number[]> {
  const current = await getBookmarks(user);
  const isBookmarked = current.includes(examId);

  if (!user) {
    const next = isBookmarked
      ? current.filter((id) => id !== examId)
      : [...current, examId];
    localStorage.setItem('exam_bookmarks', JSON.stringify(next));
    return next;
  }

  if (isBookmarked) {
    await supabase.from('exam_bookmarks').delete().eq('user_id', user.id).eq('exam_id', examId);
  } else {
    await supabase.from('exam_bookmarks').insert({ user_id: user.id, exam_id: examId });
  }
  return getBookmarks(user);
}

// ============================================
// 問題集管理（＋ボタン）
// ============================================
export async function getCollections(user: User | null): Promise<{ id: number; title: string }[]> {
  if (!user) {
    return JSON.parse(localStorage.getItem('user_collections') || '[]');
  }
  const { data } = await supabase
    .from('user_collections')
    .select('id, title')
    .eq('user_id', user.id)
    .order('title');
  return data || [];
}

export async function createCollection(user: User | null, title: string): Promise<number | null> {
  if (!user) {
    const collections = JSON.parse(localStorage.getItem('user_collections') || '[]');
    const newId = Date.now();
    collections.push({ id: newId, title });
    localStorage.setItem('user_collections', JSON.stringify(collections));
    return newId;
  }
  const { data, error } = await supabase
    .from('user_collections')
    .insert({ user_id: user.id, title })
    .select('id')
    .single();
  if (error || !data) return null;
  return data.id;
}

// localStorage に保存するユーザー問題の型
type LocalUserQuestion = {
  id: number;
  collection_id: number;
  question_number: number;
  question_type: string;
  category?: string | null;
  max_selections: number;
  score: number;
  body_text: string;
  explanation: string | null;
  audio_url: string | null;
  image_url: string | null;
  correct_answers: string | null;
  shuffle_choices?: boolean;
  user_question_choices: {
    id: number;
    question_id: number;
    choice_text: string;
    image_url: string | null;
    is_correct: boolean;
    sort_order: number;
  }[];
};

function getLocalUserQuestions(): LocalUserQuestion[] {
  if (typeof window === 'undefined') return [];
  return JSON.parse(localStorage.getItem('local_user_questions') || '[]');
}

// 問題を問題集にコピーして追加（参照ではなくコピー）
export async function addToCollection(
  user: User | null,
  collectionId: number,
  questionIds: number[],
  sourceIsUser = false
): Promise<void> {
  if (questionIds.length === 0) return;

  // ソースが user_questions の場合（自分の問題集 → 別の問題集）
  if (sourceIsUser) {
    type FetchedUQ = {
      id: number; question_type: string; category: string | null;
      max_selections: number; score: number; body_text: string;
      explanation: string | null; audio_url: string | null; image_url: string | null;
      correct_answers: string | null; shuffle_choices: boolean;
      user_question_choices: { choice_text: string; image_url: string | null; is_correct: boolean; sort_order: number }[];
    };
    const BATCH = 200;

    if (!user) {
      const allLocal = getLocalUserQuestions();
      const sourceQs = questionIds.map((id) => allLocal.find((q) => q.id === id)).filter((q): q is LocalUserQuestion => q != null);
      const existing = allLocal;
      const maxId = existing.length > 0 ? Math.max(...existing.map((q) => q.id)) : 0;
      const colQuestions = existing.filter((q) => q.collection_id === collectionId);
      const maxQNum = colQuestions.length > 0 ? Math.max(...colQuestions.map((q) => q.question_number)) : 0;
      const allChoiceIds = existing.flatMap((q) => q.user_question_choices.map((c) => c.id));
      const maxChoiceId = allChoiceIds.length > 0 ? Math.max(...allChoiceIds) : 0;
      let idCounter = maxId + 1;
      let qNumCounter = maxQNum + 1;
      let choiceIdCounter = maxChoiceId + 1;
      const toAdd: LocalUserQuestion[] = sourceQs.map((q) => {
        const localId = idCounter++;
        return {
          id: localId,
          collection_id: collectionId,
          question_number: qNumCounter++,
          question_type: q.question_type,
          category: q.category,
          max_selections: q.max_selections,
          score: q.score,
          body_text: q.body_text,
          explanation: q.explanation,
          audio_url: q.audio_url,
          image_url: q.image_url,
          correct_answers: q.correct_answers,
          shuffle_choices: q.shuffle_choices ?? true,
          user_question_choices: (q.user_question_choices || []).map((c) => ({
            id: choiceIdCounter++,
            question_id: localId,
            choice_text: c.choice_text,
            image_url: c.image_url || null,
            is_correct: c.is_correct,
            sort_order: c.sort_order,
          })),
        };
      });
      localStorage.setItem('local_user_questions', JSON.stringify([...existing, ...toAdd]));
      return;
    }

    // DB ユーザー: user_questions から取得
    const sourceQs: FetchedUQ[] = [];
    for (let i = 0; i < questionIds.length; i += BATCH) {
      const { data } = await supabase
        .from('user_questions')
        .select('id, question_type, category, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, shuffle_choices, user_question_choices(choice_text, image_url, is_correct, sort_order)')
        .in('id', questionIds.slice(i, i + BATCH));
      if (data) sourceQs.push(...(data as FetchedUQ[]));
    }
    if (sourceQs.length === 0) return;

    const { data: existingUqs } = await supabase
      .from('user_questions').select('question_number')
      .eq('collection_id', collectionId).order('question_number', { ascending: false }).limit(1);
    const maxQNum = existingUqs?.[0]?.question_number ?? 0;

    const uqRows = sourceQs.map((q, i) => ({
      user_id: user.id,
      collection_id: collectionId,
      question_number: maxQNum + i + 1,
      question_type: q.question_type,
      category: q.category,
      body_text: q.body_text,
      explanation: q.explanation,
      audio_url: q.audio_url,
      image_url: q.image_url,
      max_selections: q.max_selections,
      score: q.score,
      correct_answers: q.correct_answers,
      shuffle_choices: q.shuffle_choices ?? true,
    }));

    const { data: insertedUqs } = await supabase.from('user_questions').insert(uqRows).select('id');
    if (!insertedUqs || insertedUqs.length === 0) return;

    const choiceRows: { question_id: number; choice_text: string; image_url: string | null; is_correct: boolean; sort_order: number }[] = [];
    for (let i = 0; i < sourceQs.length; i++) {
      const uqId = insertedUqs[i]?.id;
      if (!uqId) continue;
      (sourceQs[i].user_question_choices || []).forEach((c) => {
        choiceRows.push({ question_id: uqId, choice_text: c.choice_text, image_url: c.image_url || null, is_correct: c.is_correct, sort_order: c.sort_order });
      });
    }
    if (choiceRows.length > 0) await supabase.from('user_question_choices').insert(choiceRows);
    return;
  }

  // Supabase から問題データを取得（ログイン不要の公開データ）
  const BATCH = 200;
  type FetchedQuestion = {
    id: number; section_id: number | null; group_id: number | null;
    question_type: string; max_selections: number; score: number;
    body_text: string; explanation: string | null; audio_url: string | null;
    image_url: string | null; correct_answers: string | null;
    choices: { choice_text: string; image_url: string | null; is_correct: boolean }[];
  };
  const fetchedQuestions: FetchedQuestion[] = [];
  for (let i = 0; i < questionIds.length; i += BATCH) {
    const { data } = await supabase
      .from('questions')
      .select('id, section_id, group_id, question_type, max_selections, score, body_text, explanation, audio_url, image_url, correct_answers, choices(choice_text, image_url, is_correct)')
      .in('id', questionIds.slice(i, i + BATCH));
    if (data) fetchedQuestions.push(...(data as FetchedQuestion[]));
  }
  if (fetchedQuestions.length === 0) return;

  // section_id → section title のマップを構築
  // group 問題はグループ経由で section_id を取得
  const directSectionIds = [...new Set(fetchedQuestions.map((q) => q.section_id).filter((id): id is number => id != null))];
  const groupIds = [...new Set(fetchedQuestions.map((q) => q.group_id).filter((id): id is number => id != null))];

  let groupSectionMap: Map<number, number> = new Map(); // group_id → section_id
  if (groupIds.length > 0) {
    for (let i = 0; i < groupIds.length; i += BATCH) {
      const { data } = await supabase
        .from('question_groups')
        .select('id, section_id')
        .in('id', groupIds.slice(i, i + BATCH));
      if (data) data.forEach((g: { id: number; section_id: number }) => groupSectionMap.set(g.id, g.section_id));
    }
  }

  const allSectionIds = [...new Set([
    ...directSectionIds,
    ...Array.from(groupSectionMap.values()),
  ])];
  let sectionTitleMap: Map<number, string> = new Map(); // section_id → title
  let sectionShuffleMap: Map<number, boolean> = new Map(); // section_id → shuffle_choices
  if (allSectionIds.length > 0) {
    for (let i = 0; i < allSectionIds.length; i += BATCH) {
      const { data } = await supabase
        .from('exam_sections')
        .select('id, title, shuffle_choices')
        .in('id', allSectionIds.slice(i, i + BATCH));
      if (data) data.forEach((s: { id: number; title: string; shuffle_choices: boolean }) => {
        sectionTitleMap.set(s.id, s.title);
        sectionShuffleMap.set(s.id, s.shuffle_choices ?? true);
      });
    }
  }

  function getCategoryForQuestion(q: FetchedQuestion): string | null {
    const sectionId = q.section_id ?? (q.group_id != null ? groupSectionMap.get(q.group_id) ?? null : null);
    return sectionId != null ? (sectionTitleMap.get(sectionId) ?? null) : null;
  }

  function getShuffleForQuestion(q: FetchedQuestion): boolean {
    const sectionId = q.section_id ?? (q.group_id != null ? groupSectionMap.get(q.group_id) ?? null : null);
    return sectionId != null ? (sectionShuffleMap.get(sectionId) ?? true) : true;
  }

  if (!user) {
    const existing = getLocalUserQuestions();
    const maxId = existing.length > 0 ? Math.max(...existing.map((q) => q.id)) : 0;
    const colQuestions = existing.filter((q) => q.collection_id === collectionId);
    const maxQNum = colQuestions.length > 0 ? Math.max(...colQuestions.map((q) => q.question_number)) : 0;
    const allChoiceIds = existing.flatMap((q) => q.user_question_choices.map((c) => c.id));
    const maxChoiceId = allChoiceIds.length > 0 ? Math.max(...allChoiceIds) : 0;
    let idCounter = maxId + 1;
    let qNumCounter = maxQNum + 1;
    let choiceIdCounter = maxChoiceId + 1;
    const toAdd: LocalUserQuestion[] = fetchedQuestions.map((q) => {
      const localId = idCounter++;
      return {
        id: localId,
        collection_id: collectionId,
        question_number: qNumCounter++,
        question_type: q.question_type,
        category: getCategoryForQuestion(q),
        max_selections: q.max_selections,
        score: q.score,
        body_text: q.body_text,
        explanation: q.explanation,
        audio_url: q.audio_url,
        image_url: q.image_url,
        correct_answers: q.correct_answers,
        shuffle_choices: getShuffleForQuestion(q),
        user_question_choices: (q.choices || []).map((c, idx) => ({
          id: choiceIdCounter++,
          question_id: localId,
          choice_text: c.choice_text,
          image_url: c.image_url || null,
          is_correct: c.is_correct,
          sort_order: idx + 1,
        })),
      };
    });
    localStorage.setItem('local_user_questions', JSON.stringify([...existing, ...toAdd]));
    return;
  }

  // DB: 現在の最大 question_number を取得
  const { data: existingUqs } = await supabase
    .from('user_questions')
    .select('question_number')
    .eq('collection_id', collectionId)
    .order('question_number', { ascending: false })
    .limit(1);
  const maxQNum = existingUqs?.[0]?.question_number ?? 0;

  // user_questions に一括 insert
  const uqRows = fetchedQuestions.map((q, i) => ({
    user_id: user.id,
    collection_id: collectionId,
    question_number: maxQNum + i + 1,
    question_type: q.question_type,
    category: getCategoryForQuestion(q),
    body_text: q.body_text,
    explanation: q.explanation,
    audio_url: q.audio_url,
    image_url: q.image_url,
    max_selections: q.max_selections,
    score: q.score,
    correct_answers: q.correct_answers ? JSON.stringify(q.correct_answers) : null,
    shuffle_choices: getShuffleForQuestion(q),
  }));

  const { data: insertedUqs } = await supabase
    .from('user_questions')
    .insert(uqRows)
    .select('id');

  if (!insertedUqs || insertedUqs.length === 0) return;

  // user_question_choices に一括 insert
  const choiceRows: { question_id: number; choice_text: string; image_url: string | null; is_correct: boolean; sort_order: number }[] = [];
  for (let i = 0; i < fetchedQuestions.length; i++) {
    const uqId = insertedUqs[i]?.id;
    if (!uqId) continue;
    (fetchedQuestions[i].choices || []).forEach((c, idx) => {
      choiceRows.push({ question_id: uqId, choice_text: c.choice_text, image_url: c.image_url || null, is_correct: c.is_correct, sort_order: idx + 1 });
    });
  }
  if (choiceRows.length > 0) {
    await supabase.from('user_question_choices').insert(choiceRows);
  }
}

// コレクションの user_questions ID 一覧を取得
export async function getCollectionItems(user: User | null, collectionId: number): Promise<number[]> {
  if (!user) {
    return getLocalUserQuestions()
      .filter((q) => q.collection_id === collectionId)
      .sort((a, b) => a.question_number - b.question_number)
      .map((q) => q.id);
  }
  const allIds: number[] = [];
  const PAGE = 1000;
  let from = 0;
  while (true) {
    const { data } = await supabase
      .from('user_questions')
      .select('id')
      .eq('collection_id', collectionId)
      .order('question_number')
      .range(from, from + PAGE - 1);
    if (!data || data.length === 0) break;
    allIds.push(...data.map((d) => d.id));
    if (data.length < PAGE) break;
    from += PAGE;
  }
  return allIds;
}

// コレクションから問題を削除（user_questions から削除）
export async function removeFromCollection(
  user: User | null,
  collectionId: number,
  questionIds: number[]
): Promise<void> {
  if (!user) {
    const filtered = getLocalUserQuestions().filter(
      (q) => !(q.collection_id === collectionId && questionIds.includes(q.id))
    );
    localStorage.setItem('local_user_questions', JSON.stringify(filtered));
    return;
  }
  await supabase.from('user_questions').delete().in('id', questionIds);
}

// localStorage の user_questions を取得（クイズページから参照）
export function getLocalUserQuestionsByIds(ids: number[]): LocalUserQuestion[] {
  const all = getLocalUserQuestions();
  const idSet = new Set(ids);
  return all.filter((q) => idSet.has(q.id));
}

export function getLocalCollectionQuestions(collectionId: number): LocalUserQuestion[] {
  return getLocalUserQuestions()
    .filter((q) => q.collection_id === collectionId)
    .sort((a, b) => a.question_number - b.question_number);
}

export async function deleteCollection(user: User | null, collectionId: number): Promise<void> {
  if (!user) {
    const collections = JSON.parse(localStorage.getItem('user_collections') || '[]');
    const filtered = collections.filter((c: { id: number }) => c.id !== collectionId);
    localStorage.setItem('user_collections', JSON.stringify(filtered));
    localStorage.removeItem(`collection_items_${collectionId}`);
    return;
  }
  await supabase.from('user_collections').delete().eq('id', collectionId);
}

export async function hasAnyCollections(user: User | null): Promise<boolean> {
  const collections = await getCollections(user);
  return collections.length > 0;
}

// ============================================
// 中断データ
// ============================================
type ProgressData = {
  mode: string;
  sectionId: string | null;
  questionIds: number[];
  groupIds: number[];
  currentIndex: number;
  results: { questionId: number; correct: boolean; selectedChoiceId?: number | null; selectedChoiceIds?: number[]; textInput?: string }[];
  totalItems: number;
  totalQuestions?: number; // グループ内サブ問題を個別にカウントした総問題数
  examTitle?: string;
  collectionId?: number;
  examId?: string; // コレクション中断データのルーティング用
};

export async function getProgress(
  user: User | null,
  examId: string,
  collectionId?: number
): Promise<ProgressData | null> {
  if (!user) {
    if (collectionId) {
      const saved = localStorage.getItem(`progress_collection_${collectionId}`);
      return saved ? JSON.parse(saved) : null;
    }
    const saved = localStorage.getItem(`progress_${examId}`);
    return saved ? JSON.parse(saved) : null;
  }

  let query = supabase
    .from('sessions')
    .select('*')
    .eq('user_id', user.id)
    .eq('status', 'in_progress')
    .order('created_at', { ascending: false })
    .limit(1);

  if (collectionId) {
    query = query.eq('collection_id', collectionId);
  } else {
    query = query.eq('exam_id', examId).is('collection_id', null);
  }

  const { data: session } = await query.single();
  if (!session) return null;

  const { data: answers } = await supabase
    .from('user_answers')
    .select('question_id, user_question_id, is_correct, selected_choice_ids, user_input')
    .eq('session_id', session.id);

  return {
    mode: session.mode,
    sectionId: session.section_id ? String(session.section_id) : null,
    questionIds: session.question_ids || [],
    groupIds: session.group_ids || [],
    currentIndex: session.current_question_order,
    results: (answers || []).map((a) => {
      const choiceIds: number[] = a.selected_choice_ids || [];
      const questionId = a.user_question_id ? Number(a.user_question_id) : a.question_id;
      return {
        questionId,
        correct: a.is_correct,
        selectedChoiceId: choiceIds.length > 0 ? choiceIds[0] : null,
        selectedChoiceIds: choiceIds,
        textInput: a.user_input || '',
      };
    }),
    totalItems: (session.question_ids?.length || 0) + (session.group_ids?.length || 0),
    collectionId: session.collection_id ?? undefined,
    examId: String(session.exam_id),
  };
}

export async function saveProgress(
  user: User | null,
  examId: string,
  data: ProgressData
): Promise<void> {
  if (!user) {
    if (data.collectionId) {
      localStorage.setItem(`progress_collection_${data.collectionId}`, JSON.stringify({ ...data, examId }));
    } else {
      localStorage.setItem(`progress_${examId}`, JSON.stringify(data));
    }
    return;
  }

  // 既存セッションを削除（コレクション vs 通常で分けて削除）
  if (data.collectionId) {
    await supabase.from('sessions').delete()
      .eq('user_id', user.id)
      .eq('collection_id', data.collectionId)
      .eq('status', 'in_progress');
  } else {
    await supabase.from('sessions').delete()
      .eq('user_id', user.id)
      .eq('exam_id', examId)
      .is('collection_id', null)
      .eq('status', 'in_progress');
  }

  const modeMap: Record<string, string> = {
    normal: 'normal',
    random: 'random',
    favorites: 'favorites_only',
    retry: 'retry_wrong',
    continue: 'normal',
    collection: 'normal',
    user_collection: 'normal',
  };

  const { data: session, error } = await supabase
    .from('sessions')
    .insert({
      user_id: user.id,
      exam_id: examId === '0' ? null : Number(examId),
      section_id: data.sectionId ? Number(data.sectionId) : null,
      mode: modeMap[data.mode] || 'normal',
      status: 'in_progress',
      current_question_order: data.currentIndex,
      question_ids: data.questionIds,
      group_ids: data.groupIds,
      collection_id: data.collectionId ?? null,
    })
    .select()
    .single();

  if (error || !session) return;

  if (data.results.length > 0) {
    const answers = data.results.map((r) => {
      const choiceIds =
        r.selectedChoiceIds && r.selectedChoiceIds.length > 0
          ? r.selectedChoiceIds
          : r.selectedChoiceId != null
          ? [r.selectedChoiceId]
          : null;
      const isCollectionMode = !!data.collectionId;
      return {
        session_id: session.id,
        question_id: isCollectionMode ? null : r.questionId,
        user_question_id: isCollectionMode ? r.questionId : null,
        is_correct: r.correct,
        selected_choice_ids: choiceIds,
        user_input: r.textInput || null,
      };
    });
    await supabase.from('user_answers').insert(answers);
  }
}

export async function clearProgress(
  user: User | null,
  examId: string,
  collectionId?: number
): Promise<void> {
  if (!user) {
    if (collectionId) {
      localStorage.removeItem(`progress_collection_${collectionId}`);
    } else {
      localStorage.removeItem(`progress_${examId}`);
    }
    return;
  }

  if (collectionId) {
    await supabase.from('sessions').delete()
      .eq('user_id', user.id)
      .eq('collection_id', collectionId)
      .eq('status', 'in_progress');
  } else {
    await supabase.from('sessions').delete()
      .eq('user_id', user.id)
      .eq('exam_id', examId)
      .is('collection_id', null)
      .eq('status', 'in_progress');
  }
}

// コレクション編集時に中断データを削除するための関数
export async function clearCollectionProgress(user: User | null, collectionId: number): Promise<void> {
  return clearProgress(user, '0', collectionId);
}

export async function getAllInterruptedExamIds(user: User | null): Promise<string[]> {
  if (!user) {
    const keys = Object.keys(localStorage).filter((k) => k.startsWith('progress_'));
    return keys.map((k) => k.replace('progress_', ''));
  }

  const { data } = await supabase
    .from('sessions')
    .select('exam_id')
    .eq('user_id', user.id)
    .eq('status', 'in_progress');

  return data?.map((d) => String(d.exam_id)) || [];
}

// ============================================
// クイズ結果
// ============================================
export function saveQuizResult(examId: string, results: { questionId: number; correct: boolean }[]): void {
  localStorage.setItem(`quizResult_${examId}`, JSON.stringify(results));
}

export function getQuizResult(examId: string): { questionId: number; correct: boolean }[] {
  const saved = localStorage.getItem(`quizResult_${examId}`);
  return saved ? JSON.parse(saved) : [];
}

export function clearQuizResult(examId: string): void {
  localStorage.removeItem(`quizResult_${examId}`);
}

export function saveRetryIds(examId: string, ids: number[]): void {
  localStorage.setItem(`retry_${examId}`, JSON.stringify(ids));
}

// ============================================
// 中断進捗ヒント（再開画面の (x/n問) 表示用）
// ログイン済みでも同デバイスなら localStorage から取得できる
// ============================================
function progressHintKey(examId: string, collectionId?: number): string {
  return collectionId ? `progress_hint_col_${collectionId}` : `progress_hint_exam_${examId}`;
}
export function saveProgressHint(examId: string, collectionId: number | undefined, currentQuestionNum: number, totalQuestions: number): void {
  if (typeof window === 'undefined') return;
  localStorage.setItem(progressHintKey(examId, collectionId), JSON.stringify({ currentQuestionNum, totalQuestions }));
}
export function getProgressHint(examId: string, collectionId?: number): { currentQuestionNum: number; totalQuestions: number } | null {
  if (typeof window === 'undefined') return null;
  const saved = localStorage.getItem(progressHintKey(examId, collectionId));
  return saved ? JSON.parse(saved) : null;
}
export function clearProgressHint(examId: string, collectionId?: number): void {
  if (typeof window === 'undefined') return;
  localStorage.removeItem(progressHintKey(examId, collectionId));
}

// ============================================
// 結果画面からの解答確認（review モード用）
// ============================================
export type ReviewState = {
  questionIds: number[];
  groupIds: number[];
  results: { questionId: number; correct: boolean; selectedChoiceId?: number | null; selectedChoiceIds?: number[]; textInput?: string }[];
  collectionTitle?: string;
  restartUrl?: string;
  collectionId?: number; // user_collection の review 時に使用
};

export function saveReviewState(examId: string, state: ReviewState): void {
  localStorage.setItem(`review_${examId}`, JSON.stringify(state));
}

export function getReviewState(examId: string): ReviewState | null {
  const saved = localStorage.getItem(`review_${examId}`);
  return saved ? JSON.parse(saved) : null;
}

export function clearReviewState(examId: string): void {
  localStorage.removeItem(`review_${examId}`);
}