'use client';

import { useEffect, useState } from 'react';
import { useParams, useRouter } from 'next/navigation';
import Link from 'next/link';
import { supabase } from '@/lib/supabase';
import { Exam, ExamSection } from '@/lib/types';

type SectionWithCount = ExamSection & {
  totalQuestions: number;
  checked: boolean;
  requestedCount: string;
};

export default function SectionsPage() {
  const params = useParams();
  const router = useRouter();
  const examId = params.examId as string;

  const [exam, setExam] = useState<Exam | null>(null);
  const [sections, setSections] = useState<SectionWithCount[]>([]);
  const [allChecked, setAllChecked] = useState(true);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function fetchData() {
      const { data: examData } = await supabase
        .from('exams').select('*').eq('id', examId).single();
      if (examData) setExam(examData);

      // question_count が NOT NULL のセクションのみ取得
      const { data: sectionData } = await supabase
        .from('exam_sections')
        .select('*')
        .eq('exam_id', examId)
        .not('question_count', 'is', null)
        .order('parent_section_id', { ascending: true, nullsFirst: true })
        .order('order_index');

      if (sectionData) {
        // 各セクションの収録問題数をカウント
        const withCounts: SectionWithCount[] = [];
        for (const sec of sectionData as ExamSection[]) {
          const sectionIds = await getSectionAndChildIds(sec.id);

          // 独立問題
          const { count: soloCount } = await supabase
            .from('questions')
            .select('id', { count: 'exact', head: true })
            .in('section_id', sectionIds);

          // グループ問題内の問題
          const { data: groups } = await supabase
            .from('question_groups')
            .select('id')
            .in('section_id', sectionIds);

          let groupQuestionCount = 0;
          if (groups && groups.length > 0) {
            const groupIds = groups.map((g) => g.id);
            const { count } = await supabase
              .from('questions')
              .select('id', { count: 'exact', head: true })
              .in('group_id', groupIds);
            groupQuestionCount = count || 0;
          }

          const total = (soloCount || 0) + groupQuestionCount;

          withCounts.push({
            ...sec,
            totalQuestions: total,
            checked: true,
            requestedCount: String(sec.question_count || total),
          });
        }
        setSections(withCounts);
      }
      setLoading(false);
    }
    fetchData();
  }, [examId]);

  async function getSectionAndChildIds(parentId: number): Promise<number[]> {
    const ids = [parentId];
    const { data: children } = await supabase
      .from('exam_sections')
      .select('id')
      .eq('parent_section_id', parentId);
    if (children) {
      for (const child of children) {
        const childIds = await getSectionAndChildIds(child.id);
        ids.push(...childIds);
      }
    }
    return ids;
  }

  const handleAllChecked = (checked: boolean) => {
    setAllChecked(checked);
    setSections((prev) => prev.map((s) => ({ ...s, checked })));
  };

  const handleSectionChecked = (index: number, checked: boolean) => {
    setSections((prev) => {
      const next = [...prev];
      next[index] = { ...next[index], checked };
      return next;
    });
    if (!checked) setAllChecked(false);
    else {
      const allNowChecked = sections.every((s, i) => i === index ? checked : s.checked);
      if (allNowChecked) setAllChecked(true);
    }
  };

  const handleCountChange = (index: number, value: string) => {
    setSections((prev) => {
      const next = [...prev];
      next[index] = { ...next[index], requestedCount: value };
      return next;
    });
  };

  const canProceed = sections.some((s) => {
    if (!s.checked) return false;
    const count = parseInt(s.requestedCount, 10);
    return !isNaN(count) && count >= 1 && count <= s.totalQuestions;
  });

  const handleNext = () => {
    const selected = sections
      .filter((s) => {
        if (!s.checked) return false;
        const count = parseInt(s.requestedCount, 10);
        return !isNaN(count) && count >= 1;
      })
      .map((s) => `${s.id}:${s.requestedCount}`);

    router.push(`/exams/${examId}/quiz?mode=normal&sections=${selected.join(',')}`);
  };

  // セクションが0件なら直接演習画面へ
  useEffect(() => {
    if (!loading && sections.length === 0) {
      router.push(`/exams/${examId}/quiz?mode=normal`);
    }
  }, [loading, sections, examId, router]);

  if (loading) {
    return (
      <div className="page-container">
        <header className="header"><Link href="/" className="header-logo">OpenStudy</Link></header>
        <div className="page-body">
          <p style={{ color: 'var(--text-light)', textAlign: 'center', padding: '2rem' }}>読み込み中...</p>
        </div>
      </div>
    );
  }

  if (sections.length === 0) {
    return null;
  }

  return (
    <div className="page-container">
      <header className="header"><Link href="/" className="header-logo">OpenStudy</Link></header>

      <div className="page-body">
        <div className="exam-name-bar">{exam?.title}</div>

        <div style={{ display: 'flex', flexDirection: 'column', gap: '0.75rem' }}>
          {/* すべてチェックボックス */}
          <div
            style={{
              display: 'flex', alignItems: 'center', gap: '0.75rem',
              padding: '0.75rem 1rem', border: '1.5px solid var(--border)',
              borderRadius: '8px', cursor: 'pointer', userSelect: 'none',
            }}
            onClick={() => handleAllChecked(!allChecked)}
          >
            <div style={{
              width: '18px', height: '18px', border: '2px solid var(--border)',
              borderRadius: '3px', display: 'flex', alignItems: 'center',
              justifyContent: 'center', flexShrink: 0,
              borderColor: allChecked ? 'var(--primary)' : 'var(--border)',
              backgroundColor: allChecked ? 'var(--primary)' : 'transparent',
            }}>
              {allChecked && <span style={{ color: 'white', fontSize: '12px', fontWeight: 700 }}>✓</span>}
            </div>
            <span style={{ fontWeight: 600 }}>すべて</span>
          </div>

          {/* 各セクション */}
          {sections.map((sec, idx) => (
            <div key={sec.id}
              style={{
                display: 'flex', alignItems: 'center', gap: '0.75rem',
                padding: '0.75rem 1rem', border: '1.5px solid var(--border)',
                borderRadius: '8px', cursor: 'pointer', userSelect: 'none',
                backgroundColor: sec.checked ? 'var(--primary-light)' : 'transparent',
                borderColor: sec.checked ? 'var(--primary)' : 'var(--border)',
              }}
              onClick={() => handleSectionChecked(idx, !sec.checked)}
            >
              <div style={{
                width: '18px', height: '18px', border: '2px solid var(--border)',
                borderRadius: '3px', display: 'flex', alignItems: 'center',
                justifyContent: 'center', flexShrink: 0,
                borderColor: sec.checked ? 'var(--primary)' : 'var(--border)',
                backgroundColor: sec.checked ? 'var(--primary)' : 'transparent',
              }}>
                {sec.checked && <span style={{ color: 'white', fontSize: '12px', fontWeight: 700 }}>✓</span>}
              </div>
              <span style={{ flex: 1 }}>{sec.title}</span>
              <div style={{ display: 'flex', alignItems: 'center', gap: '0.25rem' }}
                onClick={(e) => e.stopPropagation()}>
                <input
                  type="number"
                  min={1}
                  max={sec.totalQuestions}
                  value={sec.requestedCount}
                  onChange={(e) => handleCountChange(idx, e.target.value)}
                  style={{
                    width: '50px', padding: '0.2rem 0.4rem', textAlign: 'center',
                    border: '1.5px solid var(--border)', borderRadius: '4px', fontSize: '0.85rem',
                  }}
                />
                <span style={{ fontSize: '0.8rem', color: 'var(--text-light)', whiteSpace: 'nowrap' }}>
                  /{sec.totalQuestions}問
                </span>
              </div>
            </div>
          ))}
        </div>
      </div>

      <div className="nav-buttons">
        <button className="btn btn-back" onClick={() => router.back()}>戻る</button>
        <button className={`btn ${canProceed ? 'btn-primary' : 'btn-disabled'}`}
          onClick={handleNext} disabled={!canProceed}>
          次へ
        </button>
      </div>
    </div>
  );
}