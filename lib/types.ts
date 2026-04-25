export type Exam = {
  id: number;
  title: string;
  category: string;
  description: string | null;
};

export type ExamSection = {
  id: number;
  exam_id: number;
  parent_section_id: number | null;
  title: string;
  order_index: number;
  question_count: number | null;
};

export type QuestionGroup = {
  id: number;
  section_id: number;
  group_text: string | null;
  audio_url: string | null;
  image_url: string | null;
  score: number | null;
  scoring_rule: string | null;
  questions: Question[];
};

export type Question = {
  id: number;
  section_id: number | null;
  group_id: number | null;
  question_number: number;
  question_type: string;
  max_selections: number;
  score: number;
  body_text: string;
  explanation: string;
  audio_url: string | null;
  image_url: string | null;
  correct_answers: Record<string, string> | null;
  choices: Choice[];
  isUserQuestion?: boolean;
  shuffle_choices?: boolean;
};

export type Choice = {
  id: number;
  question_id: number;
  choice_text: string | null;
  image_url: string | null;
  is_correct: boolean;
};

export type QuizItem = {
  type: 'single';
  question: Question;
} | {
  type: 'group';
  group: QuestionGroup;
};

export type UserCollection = {
  id: number;
  user_id: string;
  title: string;
  created_at: string;
};

export type UserCollectionItem = {
  id: number;
  collection_id: number;
  question_id: number;
  added_at: string;
};

// ============================================
// Phase 6: ユーザー作成問題
// ============================================
export type QuestionDraft = {
  category: string;
  body_text: string;
  explanation: string;
  choices: { choice_text: string; is_correct: boolean; sort_order: number }[];
};

export type CreateDraft = {
  method: 'manual' | 'csv_create' | 'csv_upload';
  name: string;
  type: 'choice_single';
  questions: QuestionDraft[];
};