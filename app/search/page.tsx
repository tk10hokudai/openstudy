'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import Link from 'next/link';
import { supabase } from '@/lib/supabase';
import { Exam } from '@/lib/types';

export default function SearchPage() {
  const router = useRouter();
  const [exams, setExams] = useState<Exam[]>([]);
  const [loading, setLoading] = useState(true);
  const [search, setSearch] = useState('');
  const [activeCategory, setActiveCategory] = useState<string | null>(null);
  const [selectedExamId, setSelectedExamId] = useState<number | null>(null);
  const [bookmarks, setBookmarks] = useState<number[]>([]);

  useEffect(() => {
    async function fetchExams() {
      const { data, error } = await supabase
        .from('exams')
        .select('*')
        .order('title');

      if (!error && data) {
        setExams(data);
      }
      setLoading(false);
    }
    fetchExams();

    // ブックマーク読み込み
    const saved = JSON.parse(localStorage.getItem('exam_bookmarks') || '[]');
    setBookmarks(saved);
  }, []);

  const categories = Array.from(new Set(exams.map((e) => e.category)));

  const filtered = exams
    .filter((e) => {
      const matchSearch = e.title.toLowerCase().includes(search.toLowerCase());
      const matchCategory = activeCategory ? e.category === activeCategory : true;
      return matchSearch && matchCategory;
    })
    .sort((a, b) => {
      const aIsJapanese = /^[\u3000-\u9FFF\uF900-\uFAFF]/.test(a.title);
      const bIsJapanese = /^[\u3000-\u9FFF\uF900-\uFAFF]/.test(b.title);
      if (aIsJapanese && !bIsJapanese) return -1;
      if (!aIsJapanese && bIsJapanese) return 1;
      return a.title.localeCompare(b.title, 'ja');
    });

  const toggleBookmark = (examId: number, e: React.MouseEvent) => {
    e.stopPropagation();
    setBookmarks((prev) => {
      const next = prev.includes(examId)
        ? prev.filter((id) => id !== examId)
        : [...prev, examId];
      localStorage.setItem('exam_bookmarks', JSON.stringify(next));
      return next;
    });
  };

  const handleNext = () => {
    if (selectedExamId !== null) {
      router.push(`/exams/${selectedExamId}/mode`);
    }
  };

  return (
    <div className="page-container">
      {/* Header */}
      <header className="header">
        <Link href="/" className="header-logo">OpenStudy</Link>
      </header>

      {/* Body */}
      <div className="page-body">
        <h2 className="section-title" style={{ textAlign: 'center', fontSize: '1.1rem', marginBottom: '1rem' }}>
          試験・資格を検索
        </h2>

        {/* 検索ボックス */}
        <input
          type="text"
          className="search-input"
          placeholder="検索ボックス"
          value={search}
          onChange={(e) => setSearch(e.target.value)}
        />

        {/* 分類フィルター */}
        <div className="category-filter">
          <button
            className={`category-chip ${activeCategory === null ? 'active' : ''}`}
            onClick={() => setActiveCategory(null)}
          >
            すべて
          </button>
          {categories.map((cat) => (
            <button
              key={cat}
              className={`category-chip ${activeCategory === cat ? 'active' : ''}`}
              onClick={() => setActiveCategory(activeCategory === cat ? null : cat)}
            >
              {cat}
            </button>
          ))}
        </div>

        {/* 試験・資格一覧 */}
        {loading ? (
          <p style={{ color: 'var(--text-light)', textAlign: 'center', padding: '2rem 0' }}>
            読み込み中...
          </p>
        ) : filtered.length === 0 ? (
          <p style={{ color: 'var(--text-light)', textAlign: 'center', padding: '2rem 0' }}>
            該当する試験が見つかりません
          </p>
        ) : (
          <ul className="exam-list">
            {filtered.map((exam) => (
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
                  onClick={(e) => toggleBookmark(exam.id, e)}
                  style={{
                    background: 'none',
                    border: 'none',
                    fontSize: '1.25rem',
                    color: '#16a34a',
                    cursor: 'pointer',
                    padding: '0.25rem',
                    lineHeight: 1,
                  }}
                >
                  {bookmarks.includes(exam.id) ? '◆' : '◇'}
                </button>
              </li>
            ))}
          </ul>
        )}
      </div>

      {/* Navigation */}
      <div className="nav-buttons">
        <button className="btn btn-back" onClick={() => router.back()}>
          戻る
        </button>
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