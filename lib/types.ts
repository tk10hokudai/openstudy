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

export type Question = {
  id: number;
  section_id: number | null;
  group_id: number | null;
  question_number: number;
  question_type: string;
  max_selections: number;
  body_text: string;
  explanation: string;
  choices: Choice[];
};

export type Choice = {
  id: number;
  question_id: number;
  choice_text: string | null;
  image_url: string | null;
  is_correct: boolean;
};