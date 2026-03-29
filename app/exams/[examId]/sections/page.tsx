'use client';

import { useEffect, useState } from 'react';
import { useParams, useRouter, useSearchParams } from 'next/navigation';
import Link from 'next/link';
import { supabase } from '@/lib/supabase';
import { Exam, ExamSection } from '@/lib/types';

export default function SectionsPage() {
  const params = useParams();
  const router = useRouter();
  const searchParams = useSearchParams();
  const examId = params.examId as string;
  const parentId = searchParams.get('parent'); // null = 最上位

  const [exam, setExam] = useState<Exam | null>(null);
  const [sections, setSections] = useState<ExamSection[]>([]);
  const [selected, setSelected] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function fetchData() {
      // 試験名を取得
      const { data: examData } = await supabase
        .from('exams')
        .select('*')
        .eq('id', examId)
        .single();

      if (examData) setExam(examData);

      // セクションを取得
      let query = supabase
        .from('exam_sections')
        .select('*')
        .eq('exam_id', examId)
        .order('order_index');

      if (parentId) {
        query = query.eq('parent_section_id', parentId);
      } else {
        query = query.is('parent_section_id', null);
      }

      const { data: sectionData } = await query;

      if (sectionData) setSections(sectionData);
      setLoading(false);
    }
    fetchData();
  }, [examId, parentId]);

  const handleNext = async () => {
    if (selected === null) return;

    if (selected === 'all') {
      // 「全て」を選択 → 演習画面へ（親セクション以下の全問題）
      const sectionParam = parentId ? `&sectionId=${parentId}` : '';
      router.push(`/exams/${examId}/quiz?mode=normal${sectionParam}`);
      return;
    }

    // 選択したセクションに子セクションがあるか確認
    const { data: children } = await supabase
      .from('exam_sections')
      .select('id')
      .eq('parent_section_id', selected)
      .limit(1);

    if (children && children.length > 0) {
      // 子セクションあり → 次の階層へ
      router.push(`/exams/${examId}/sections?parent=${selected}`);
    } else {
      // 子セクションなし → 演習画面へ
      router.push(`/exams/${examId}/quiz?mode=normal&sectionId=${selected}`);
    }
  };

  if (loading) {
    return (
      <div className="page-container">
        <header className="header">
          <Link href="/" className="header-logo">OpenStudy</Link>
        </header>
        <div className="page-body">
          <p style={{ color: 'var(--text-light)', textAlign: 'center', padding: '2rem' }}>
            読み込み中...
          </p>
        </div>
      </div>
    );
  }

  // セクションが1つもない場合は直接演習画面へ
  if (sections.length === 0) {
    router.push(`/exams/${examId}/quiz?mode=normal`);
    return null;
  }

  return (
    <div className="page-container">
      {/* Header */}
      <header className="header">
        <Link href="/" className="header-logo">OpenStudy</Link>
      </header>

      {/* Body */}
      <div className="page-body">
        <div className="exam-name-bar">
          {exam?.title}
        </div>

        <div className="radio-list">
          {/* 「全て」オプション */}
          <div
            className={`radio-option ${selected === 'all' ? 'selected' : ''}`}
            onClick={() => setSelected('all')}
          >
            <div className={`radio-circle ${selected === 'all' ? 'checked' : ''}`}>
              {selected === 'all' && <div className="radio-circle-inner" />}
            </div>
            <span className="radio-label">全て</span>
          </div>

          {/* 各セクション */}
          {sections.map((section) => (
            <div
              key={section.id}
              className={`radio-option ${selected === String(section.id) ? 'selected' : ''}`}
              onClick={() => setSelected(String(section.id))}
            >
              <div className={`radio-circle ${selected === String(section.id) ? 'checked' : ''}`}>
                {selected === String(section.id) && <div className="radio-circle-inner" />}
              </div>
              <span className="radio-label">{section.title}</span>
            </div>
          ))}
        </div>
      </div>

      {/* Navigation */}
      <div className="nav-buttons">
        <button className="btn btn-back" onClick={() => router.back()}>
          戻る
        </button>
        <button
          className={`btn ${selected !== null ? 'btn-primary' : 'btn-disabled'}`}
          onClick={handleNext}
          disabled={selected === null}
        >
          次へ
        </button>
      </div>
    </div>
  );
}