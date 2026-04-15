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

export async function addToCollection(
  user: User | null,
  collectionId: number,
  questionIds: number[]
): Promise<void> {
  if (!user) {
    const key = `collection_items_${collectionId}`;
    const existing: number[] = JSON.parse(localStorage.getItem(key) || '[]');
    const merged = Array.from(new Set([...existing, ...questionIds]));
    localStorage.setItem(key, JSON.stringify(merged));
    return;
  }
  const items = questionIds.map((qId) => ({
    collection_id: collectionId,
    question_id: qId,
  }));
  // upsert で重複を無視
  for (const item of items) {
    await supabase.from('user_collection_items').upsert(item, { onConflict: 'collection_id,question_id' });
  }
}

export async function getCollectionItems(user: User | null, collectionId: number): Promise<number[]> {
  if (!user) {
    return JSON.parse(localStorage.getItem(`collection_items_${collectionId}`) || '[]');
  }
  // max_rows=1000 を超える件数に対応するためページネーションで全件取得
  const allIds: number[] = [];
  const PAGE = 1000;
  let from = 0;
  while (true) {
    const { data } = await supabase
      .from('user_collection_items')
      .select('question_id')
      .eq('collection_id', collectionId)
      .range(from, from + PAGE - 1);
    if (!data || data.length === 0) break;
    allIds.push(...data.map((d) => d.question_id));
    if (data.length < PAGE) break;
    from += PAGE;
  }
  return allIds;
}

export async function removeFromCollection(
  user: User | null,
  collectionId: number,
  questionIds: number[]
): Promise<void> {
  if (!user) {
    const key = `collection_items_${collectionId}`;
    const existing: number[] = JSON.parse(localStorage.getItem(key) || '[]');
    const filtered = existing.filter((id) => !questionIds.includes(id));
    localStorage.setItem(key, JSON.stringify(filtered));
    return;
  }
  await supabase
    .from('user_collection_items')
    .delete()
    .eq('collection_id', collectionId)
    .in('question_id', questionIds);
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
    .select('question_id, is_correct, selected_choice_ids, user_input')
    .eq('session_id', session.id);

  return {
    mode: session.mode,
    sectionId: session.section_id ? String(session.section_id) : null,
    questionIds: session.question_ids || [],
    groupIds: session.group_ids || [],
    currentIndex: session.current_question_order,
    results: (answers || []).map((a) => {
      const choiceIds: number[] = a.selected_choice_ids || [];
      return {
        questionId: a.question_id,
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
  };

  const { data: session, error } = await supabase
    .from('sessions')
    .insert({
      user_id: user.id,
      exam_id: Number(examId),
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
      return {
        session_id: session.id,
        question_id: r.questionId,
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
// 結果画面からの解答確認（review モード用）
// ============================================
export type ReviewState = {
  questionIds: number[];
  groupIds: number[];
  results: { questionId: number; correct: boolean; selectedChoiceId?: number | null; selectedChoiceIds?: number[]; textInput?: string }[];
  collectionTitle?: string;
  restartUrl?: string; // 「はじめから」で使う元の出題 URL
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