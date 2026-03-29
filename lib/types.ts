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
};

export type Choice = {
  id: number;
  question_id: number;
  choice_text: string | null;
  image_url: string | null;
  is_correct: boolean;
};

// 演習画面で1画面に表示する単位
// 独立問題 → QuizItem に Question が1つ
// グループ問題 → QuizItem に Question が複数 + グループ情報
export type QuizItem = {
  type: 'single';
  question: Question;
} | {
  type: 'group';
  group: QuestionGroup;
};