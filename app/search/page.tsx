'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/supabase';
import { useUser } from '@/lib/auth';
import { getBookmarks, toggleBookmark, getCollections } from '@/lib/storage';
import { Exam } from '@/lib/types';
import { BookmarkIcon } from '@/components/BookmarkIcon';

type Tab = 'existing' | 'own';

function getCollectionBookmarks(): number[] {
  if (typeof window === 'undefined') return [];
  return JSON.parse(localStorage.getItem('collection_bookmarks') || '[]');
}

function toggleCollectionBookmark(id: number): number[] {
  const current = getCollectionBookmarks();
  const next = current.includes(id) ? current.filter((x) => x !== id) : [...current, id];
  localStorage.setItem('collection_bookmarks', JSON.stringify(next));
  return next;
}

export default function SearchPage() {
  const router = useRouter();
  const { user } = useUser();
  const [activeTab, setActiveTab] = useState<Tab>('existing');

  const [exams, setExams] = useState<Exam[]>([]);
  const [examsLoading, setExamsLoading] = useState(true);
  const [selectedExamId, setSelectedExamId] = useState<number | null>(null);
  const [bookmarks, setBookmarks] = useState<number[]>([]);
  const [bookmarkSnapshot, setBookmarkSnapshot] = useState<number[]>([]);

  const [collections, setCollections] = useState<{ id: number; title: string }[]>([]);
  const [collectionsLoading, setCollectionsLoading] = useState(true);
  const [selectedCollectionId, setSelectedCollectionId] = useState<number | null>(null);
  const [collectionBookmarks, setCollectionBookmarks] = useState<number[]>([]);
  const [collectionBookmarkSnapshot, setCollectionBookmarkSnapshot] = useState<number[]>([]);

  const [search, setSearch] = useState('');
  const [activeFilter, setActiveFilter] = useState<string | null>(null);

  useEffect(() => {
    async function fetchExams() {
      const { data, error } = await supabase.from('exams').select('*').order('title');
      if (!error && data) {
        const sorted = [...data].sort((a, b) => {
          const aJ = /^[　-鿿豈-﫿]/.test(a.title);
          const bJ = /^[　-鿿豈-﫿]/.test(b.title);
          if (aJ && !bJ) return -1;
          if (!aJ && bJ) return 1;
          return a.title.localeCompare(b.title, 'ja');
        });
        setExams(sorted);
      }
      setExamsLoading(false);
    }
    fetchExams();
    getBookmarks(user).then(setBookmarks);
  }, [user]);

  useEffect(() => {
    async function fetchCollections() {
      const data = await getCollections(user);
      const sorted = [...data].sort((a, b) => {
        const aJ = /^[　-鿿豈-﫿]/.test(a.title);
        const bJ = /^[　-鿿豈-﫿]/.test(b.title);
        if (aJ && !bJ) return -1;
        if (!aJ && bJ) return 1;
        return a.title.localeCompare(b.title, 'ja');
      });
      setCollections(sorted);
      setCollectionsLoading(false);
    }
    fetchCollections();
    setCollectionBookmarks(getCollectionBookmarks());
  }, [user]);

  const handleTabChange = (tab: Tab) => {
    setActiveTab(tab);
    setSearch('');
    setActiveFilter(null);
  };

  const categories = Array.from(new Set(exams.map((e) => e.category)));

  const filteredExams = exams.filter((e) => {
    const matchSearch = e.title.toLowerCase().includes(search.toLowerCase());
    if (activeFilter === '__bookmark__') return matchSearch && bookmarkSnapshot.includes(e.id);
    return matchSearch && (activeFilter ? e.category === activeFilter : true);
  });

  const filteredCollections = collections.filter((c) => {
    const matchSearch = c.title.toLowerCase().includes(search.toLowerCase());
    if (activeFilter === '__bookmark__') return matchSearch && collectionBookmarkSnapshot.includes(c.id);
    return matchSearch;
  });

  const handleToggleExamBookmark = async (examId: number, e: React.MouseEvent) => {
    e.stopPropagation();
    const next = await toggleBookmark(user, examId);
    setBookmarks(next);
  };

  const handleToggleCollectionBookmark = (colId: number, e: React.MouseEvent) => {
    e.stopPropagation();
    const next = toggleCollectionBookmark(colId);
    setCollectionBookmarks(next);
  };

  const handleNext = () => {
    if (activeTab === 'existing') {
      if (selectedExamId !== null) router.push(`/exams/${selectedExamId}/sections`);
      return;
    }
    if (!selectedCollectionId) return;
    const col = collections.find((c) => c.id === selectedCollectionId);
    const collectionTitle = col?.title || '';
    router.push(`/collections/${selectedCollectionId}/sections?collectionTitle=${encodeURIComponent(collectionTitle)}`);
  };

  const hasSelection = activeTab === 'existing' ? selectedExamId !== null : selectedCollectionId !== null;
  const loading = activeTab === 'existing' ? examsLoading : collectionsLoading;

  return (
    <div className="page-container">
      <div className="page-body">
        <h2 className="section-title" style={{ textAlign: 'center', fontSize: '1.1rem', marginBottom: '1rem', color: 'var(--text)' }}>
          問題集を探して演習
        </h2>

        <div style={{ display: 'flex', borderBottom: '2px solid var(--border)', marginBottom: '1rem' }}>
          {(['existing', 'own'] as Tab[]).map((tab) => {
            const label = tab === 'existing' ? '既存の問題集' : '自分の問題集';
            const isActive = activeTab === tab;
            return (
              <button key={tab} onClick={() => handleTabChange(tab)}
                style={{
                  flex: 1, padding: '0.5rem 0', fontSize: '0.9rem',
                  fontWeight: isActive ? 700 : 400,
                  color: isActive ? 'var(--primary)' : 'var(--text-light)',
                  background: 'none', border: 'none',
                  borderBottom: isActive ? '2px solid var(--primary)' : '2px solid transparent',
                  marginBottom: '-2px', cursor: 'pointer',
                }}
              >
                {label}
              </button>
            );
          })}
        </div>

        <input type="text" className="search-input" placeholder="検索ボックス"
          value={search} onChange={(e) => setSearch(e.target.value)} />

        <div className="category-filter">
          <button className={`category-chip ${activeFilter === null ? 'active' : ''}`}
            onClick={() => setActiveFilter(null)}>
            すべて
          </button>
          <button className={`category-chip ${activeFilter === '__bookmark__' ? 'active' : ''}`}
            onClick={() => {
              if (activeTab === 'existing') setBookmarkSnapshot(bookmarks);
              else setCollectionBookmarkSnapshot(collectionBookmarks);
              setActiveFilter('__bookmark__');
            }}>
            ブックマーク
          </button>
          {activeTab === 'existing' && categories.map((cat) => (
            <button key={cat} className={`category-chip ${activeFilter === cat ? 'active' : ''}`}
              onClick={() => setActiveFilter(cat)}>
              {cat}
            </button>
          ))}
        </div>

        {loading ? (
          <p style={{ color: 'var(--text-light)', textAlign: 'center', padding: '2rem 0' }}>読み込み中...</p>
        ) : activeTab === 'existing' ? (
          filteredExams.length === 0 ? (
            <p style={{ color: 'var(--text-light)', textAlign: 'center', padding: '2rem 0' }}>該当する試験が見つかりません</p>
          ) : (
            <ul className="exam-list">
              {filteredExams.map((exam) => (
                <li key={exam.id}
                  className={`exam-list-item ${selectedExamId === exam.id ? 'selected' : ''}`}
                  onClick={() => setSelectedExamId(exam.id)}>
                  <div className={`radio-circle ${selectedExamId === exam.id ? 'checked' : ''}`}>
                    {selectedExamId === exam.id && <div className="radio-circle-inner" />}
                  </div>
                  <span style={{ flex: 1 }}>{exam.title}</span>
                  <button onClick={(e) => handleToggleExamBookmark(exam.id, e)}
                    style={{ background: 'none', border: 'none', cursor: 'pointer', padding: '0.25rem', lineHeight: 1, display: 'flex', alignItems: 'center' }}>
                    <BookmarkIcon on={bookmarks.includes(exam.id)} />
                  </button>
                </li>
              ))}
            </ul>
          )
        ) : (
          filteredCollections.length === 0 ? (
            <p style={{ color: 'var(--text-light)', textAlign: 'center', padding: '2rem 0' }}>
              {collections.length === 0 ? '問題集がありません' : '該当する問題集が見つかりません'}
            </p>
          ) : (
            <ul className="exam-list">
              {filteredCollections.map((col) => (
                <li key={col.id}
                  className={`exam-list-item ${selectedCollectionId === col.id ? 'selected' : ''}`}
                  onClick={() => setSelectedCollectionId(col.id)}>
                  <div className={`radio-circle ${selectedCollectionId === col.id ? 'checked' : ''}`}>
                    {selectedCollectionId === col.id && <div className="radio-circle-inner" />}
                  </div>
                  <span style={{ flex: 1 }}>{col.title}</span>
                  <button onClick={(e) => handleToggleCollectionBookmark(col.id, e)}
                    style={{ background: 'none', border: 'none', cursor: 'pointer', padding: '0.25rem', lineHeight: 1, display: 'flex', alignItems: 'center' }}>
                    <BookmarkIcon on={collectionBookmarks.includes(col.id)} />
                  </button>
                </li>
              ))}
            </ul>
          )
        )}
      </div>

      <div className="nav-buttons nav-buttons--right-only">
        <button className={`btn ${hasSelection ? 'btn-primary' : 'btn-disabled'}`}
          onClick={handleNext} disabled={!hasSelection}>
          次へ
        </button>
      </div>
    </div>
  );
}
