'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import Link from 'next/link';
import { supabase } from '@/lib/supabase';
import { useUser } from '@/lib/auth';
import { getBookmarks, toggleBookmark } from '@/lib/storage';
import { Exam } from '@/lib/types';
import { BookmarkIcon } from '@/components/BookmarkIcon';

export default function SearchPage() {
  const router = useRouter();
  const { user } = useUser();
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
    fetchExams();
  }, []);

  useEffect(() => {
    getBookmarks(user).then(setBookmarks);
  }, [user]);

  const categories = Array.from(new Set(exams.map((e) => e.category)));

  const filtered = exams.filter((e) => {
    const matchSearch = e.title.toLowerCase().includes(search.toLowerCase());
    const matchCategory = activeCategory ? e.category === activeCategory : true;
    return matchSearch && matchCategory;
  });

  const handleToggleBookmark = async (examId: number, e: React.MouseEvent) => {
    e.stopPropagation();
    const next = await toggleBookmark(user, examId);
    setBookmarks(next);
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
          試験・資格を検索
        </h2>

        <input
          type="text"
          className="search-input"
          placeholder="検索ボックス"
          value={search}
          onChange={(e) => setSearch(e.target.value)}
        />

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

        {loading ? (
          <p style={{ color: 'var(--text-light)', textAlign: 'center', padding: '2rem 0' }}>読み込み中...</p>
        ) : filtered.length === 0 ? (
          <p style={{ color: 'var(--text-light)', textAlign: 'center', padding: '2rem 0' }}>該当する試験が見つかりません</p>
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
                  onClick={(e) => handleToggleBookmark(exam.id, e)}
                  style={{
                    background: 'none', border: 'none',
                    cursor: 'pointer', padding: '0.25rem', lineHeight: 1,
                    display: 'flex', alignItems: 'center',
                  }}
                >
                  <BookmarkIcon on={bookmarks.includes(exam.id)} />
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