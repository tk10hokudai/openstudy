'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import Link from 'next/link';
import { supabase } from '@/lib/supabase';
import { useUser } from '@/lib/auth';
import { getBookmarks, toggleBookmark } from '@/lib/storage';
import { Exam } from '@/lib/types';

export default function BookmarksPage() {
  const router = useRouter();
  const { user } = useUser();
  const [exams, setExams] = useState<Exam[]>([]);
  const [loading, setLoading] = useState(true);
  const [selectedExamId, setSelectedExamId] = useState<number | null>(null);
  const [bookmarks, setBookmarks] = useState<number[]>([]);

  useEffect(() => {
    async function fetchData() {
      const bm = await getBookmarks(user);
      setBookmarks(bm);

      if (bm.length === 0) {
        setLoading(false);
        return;
      }

      const { data, error } = await supabase
        .from('exams')
        .select('*')
        .in('id', bm)
        .order('title');

      if (!error && data) {
        const sorted = [...data].sort((a, b) => {
          const aIsJapanese = /^[\u3000-\u9FFF\uF900-\uFAFF]/.test(a.title);
          const bIsJapanese = /^[\u3000-\u9FFF\uF900-\uFAFF]/.test(b.title);
          if (aIsJapanese && !bIsJapanese) return -1;
          if (!aIsJapanese && bIsJapanese) return 1;
          return a.title.localeCompare(b.title, 'ja');
        });
        setExams(sorted);
      }
      setLoading(false);
    }
    fetchData();
  }, [user]);

  const handleToggleBookmark = async (examId: number, e: React.MouseEvent) => {
    e.stopPropagation();
    const next = await toggleBookmark(user, examId);
    setBookmarks(next);
    if (!next.includes(examId)) {
      setExams((prev) => prev.filter((ex) => ex.id !== examId));
      if (selectedExamId === examId) setSelectedExamId(null);
    }
  };

  const handleNext = () => {
    if (selectedExamId !== null) {
      router.push(`/exams/${selectedExamId}/sections`);
    }
  };

  return (
    <div className="page-container">
      <header className="header">
        <Link href="/" className="header-logo">OpenStudy</Link>
      </header>

      <div className="page-body">
        <h2 className="section-title" style={{ textAlign: 'center', fontSize: '1.1rem', marginBottom: '1rem' }}>
          ブックマークした問題集
        </h2>

        {loading ? (
          <p style={{ color: 'var(--text-light)', textAlign: 'center', padding: '2rem 0' }}>読み込み中...</p>
        ) : exams.length === 0 ? (
          <p style={{ color: 'var(--text-light)', textAlign: 'center', padding: '2rem 0' }}>ブックマークに登録された試験がありません</p>
        ) : (
          <ul className="exam-list">
            {exams.map((exam) => (
              <li
                key={exam.id}
                className={`exam-list-item ${selectedExamId === exam.id ? 'selected' : ''}`}
                onClick={() => setSelectedExamId(exam.id)}
              >
                <div className={`radio-circle ${selectedExamId === exam.id ? 'checked' : ''}`}>
                  {selectedExamId === exam.id && <div className="radio-circle-inner" />}
                </div>
                <span style={{ flex: 1 }}>{exam.title}</span>
                <button
                  onClick={(e) => handleToggleBookmark(exam.id, e)}
                  style={{
                    background: 'none', border: 'none', fontSize: '1.25rem',
                    color: '#16a34a', cursor: 'pointer', padding: '0.25rem', lineHeight: 1,
                  }}
                >
                  {bookmarks.includes(exam.id) ? '◆' : '◇'}
                </button>
              </li>
            ))}
          </ul>
        )}
      </div>

      <div className="nav-buttons">
        <button className="btn btn-back" onClick={() => router.back()}>戻る</button>
        <button
          className={`btn ${selectedExamId !== null ? 'btn-primary' : 'btn-disabled'}`}
          onClick={handleNext}
          disabled={selectedExamId === null}
        >
          次へ
        </button>
      </div>
    </div>
  );
}