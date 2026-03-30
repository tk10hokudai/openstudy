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
// お気に入り（☆）
// ============================================
export async function getFavorites(user: User | null, examId: string): Promise<number[]> {
  if (!user) {
    return JSON.parse(localStorage.getItem(`favorites_${examId}`) || '[]');
  }
  const { data } = await supabase
    .from('user_favorites')
    .select('question_id')
    .eq('user_id', user.id);
  return data?.map((d) => d.question_id) || [];
}

export async function toggleFavorite(user: User | null, examId: string, questionId: number): Promise<number[]> {
  const current = await getFavorites(user, examId);
  const isFavorited = current.includes(questionId);

  if (!user) {
    const next = isFavorited
      ? current.filter((id) => id !== questionId)
      : [...current, questionId];
    localStorage.setItem(`favorites_${examId}`, JSON.stringify(next));
    return next;
  }

  if (isFavorited) {
    await supabase.from('user_favorites').delete().eq('user_id', user.id).eq('question_id', questionId);
  } else {
    await supabase.from('user_favorites').insert({ user_id: user.id, question_id: questionId });
  }
  return getFavorites(user, examId);
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
  results: { questionId: number; correct: boolean }[];
  totalItems: number;
};

export async function getProgress(user: User | null, examId: string): Promise<ProgressData | null> {
  if (!user) {
    const saved = localStorage.getItem(`progress_${examId}`);
    return saved ? JSON.parse(saved) : null;
  }

  const { data: session } = await supabase
    .from('sessions')
    .select('*')
    .eq('user_id', user.id)
    .eq('exam_id', examId)
    .eq('status', 'in_progress')
    .order('created_at', { ascending: false })
    .limit(1)
    .single();

  if (!session) return null;

  const { data: answers } = await supabase
    .from('user_answers')
    .select('question_id, is_correct')
    .eq('session_id', session.id);

  return {
    mode: session.mode,
    sectionId: session.section_id ? String(session.section_id) : null,
    questionIds: session.question_ids || [],
    groupIds: session.group_ids || [],
    currentIndex: session.current_question_order,
    results: (answers || []).map((a) => ({ questionId: a.question_id, correct: a.is_correct })),
    totalItems: (session.question_ids?.length || 0) + (session.group_ids?.length || 0),
  };
}

export async function saveProgress(
  user: User | null,
  examId: string,
  data: ProgressData
): Promise<void> {
  if (!user) {
    localStorage.setItem(`progress_${examId}`, JSON.stringify(data));
    return;
  }

  // 既存の in_progress セッションを削除
  await supabase
    .from('sessions')
    .delete()
    .eq('user_id', user.id)
    .eq('exam_id', examId)
    .eq('status', 'in_progress');

  // 新しいセッションを作成
  const modeMap: Record<string, string> = {
    normal: 'normal',
    random: 'random',
    favorites: 'favorites_only',
    retry: 'retry_wrong',
    continue: 'normal',
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
    })
    .select()
    .single();

  if (error || !session) return;

  // 回答履歴を保存
  if (data.results.length > 0) {
    const answers = data.results.map((r) => ({
      session_id: session.id,
      question_id: r.questionId,
      is_correct: r.correct,
    }));
    await supabase.from('user_answers').insert(answers);
  }
}

export async function clearProgress(user: User | null, examId: string): Promise<void> {
  if (!user) {
    localStorage.removeItem(`progress_${examId}`);
    return;
  }

  await supabase
    .from('sessions')
    .delete()
    .eq('user_id', user.id)
    .eq('exam_id', examId)
    .eq('status', 'in_progress');
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