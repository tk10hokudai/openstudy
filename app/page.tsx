'use client';

import { useState, useEffect } from 'react';
import { useRouter } from 'next/navigation';
import Link from 'next/link';
import { useUser, signInWithGoogle, signOut } from '@/lib/auth';
import { getBookmarks } from '@/lib/storage';

type MenuOption = {
  id: string;
  label: string;
  disabled: boolean;
  badge?: string;
};

const menuOptions: MenuOption[] = [
  { id: 'bookmarks', label: '【◇】ブックマークに追加した問題集', disabled: false },
  { id: 'search', label: '試験・資格を検索して演習する', disabled: false },
  { id: 'create', label: '任意の問題集を作成する', disabled: true, badge: '【開発中】' },
  { id: 'practice', label: '作成した問題集を演習する', disabled: true, badge: '【開発中】' },
];

export default function Home() {
  const [selected, setSelected] = useState<string | null>(null);
  const [showAbout, setShowAbout] = useState(false);
  const [hasBookmarks, setHasBookmarks] = useState(false);
  const router = useRouter();
  const { user } = useUser();

  useEffect(() => {
    getBookmarks(user).then((bm) => setHasBookmarks(bm.length > 0));
  }, [user]);

  const handleNext = () => {
    if (selected === 'search') {
      router.push('/search');
    } else if (selected === 'bookmarks') {
      router.push('/bookmarks');
    }
  };

  return (
    <div className="page-container">
      <header className="header" style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center' }}>
        <Link href="/" className="header-logo">OpenStudy</Link>
        <div>
          {user ? (
            <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem' }}>
              <span style={{ fontSize: '0.8rem', color: 'var(--text-light)' }}>
                {user.user_metadata?.full_name || user.email}
              </span>
              <button
                onClick={signOut}
                className="btn"
                style={{ padding: '0.25rem 0.75rem', fontSize: '0.8rem', backgroundColor: 'var(--border)', color: 'var(--text)' }}
              >
                ログアウト
              </button>
            </div>
          ) : (
            <button
              onClick={signInWithGoogle}
              className="btn btn-primary"
              style={{ padding: '0.25rem 0.75rem', fontSize: '0.8rem' }}
            >
              Googleでログイン
            </button>
          )}
        </div>
      </header>

      <div className="page-body">
        <h1 className="page-title">OpenStudy</h1>

        <div style={{ marginBottom: '1rem' }}>
          <div
            style={{
              display: 'flex', alignItems: 'center', gap: '0.25rem',
              cursor: 'pointer', color: 'var(--text-light)', fontSize: '0.9rem', userSelect: 'none',
            }}
            onClick={() => setShowAbout(!showAbout)}
          >
            <span>{showAbout ? '▼' : '▲'}OpenStudyとは</span>
          </div>
          {showAbout && (
            <div className="explanation-box" style={{ marginTop: '0.5rem' }}>
              <p style={{ fontWeight: 600, marginBottom: '0.5rem' }}>OpenStudyとは</p>
              <p>あらゆる試験・資格の問題演習を行えるサービスです。</p>
              <p style={{ marginTop: '0.75rem', fontWeight: 600, marginBottom: '0.25rem' }}>UIの見方</p>
              <p>〇 … 選択肢（タップで選択、◎が選択済み）</p>
              <p>☆ … お気に入り登録（橙色、演習中に問題を登録）</p>
              <p>◇ … ブックマーク（緑色、試験・資格を登録）</p>
              <p>▲▼ … タップで詳細の開閉</p>
              <p style={{ marginTop: '0.75rem', fontWeight: 600, marginBottom: '0.25rem' }}>使い方</p>
              <p>1. 演習したい試験・資格を選んで問題を解きます。</p>
              <p>2. 解答後に正誤判定と解説が表示されます。</p>
              <p>3. 全問終了後に正答率が表示されます。</p>
              <p>4. 間違えた問題だけを再演習することもできます。</p>
            </div>
          )}
        </div>

        <div className="radio-list">
          {menuOptions.map((option) => {
            const isBookmarkEmpty = option.id === 'bookmarks' && !hasBookmarks;
            const isDisabled = option.disabled || isBookmarkEmpty;
            return (
              <div
                key={option.id}
                className={`radio-option ${selected === option.id ? 'selected' : ''} ${isDisabled ? 'disabled' : ''}`}
                onClick={() => { if (!isDisabled) setSelected(option.id); }}
              >
                <div className={`radio-circle ${selected === option.id ? 'checked' : ''}`}>
                  {selected === option.id && <div className="radio-circle-inner" />}
                </div>
                <span className="radio-label">
                  {option.label}
                  {option.badge && <span className="radio-badge">{option.badge}</span>}
                  {isBookmarkEmpty && <span className="radio-badge">（登録なし）</span>}
                </span>
              </div>
            );
          })}
        </div>
      </div>

      <div className="nav-buttons nav-buttons--right-only">
        <button
          className={`btn ${selected ? 'btn-primary' : 'btn-disabled'}`}
          onClick={handleNext}
          disabled={!selected}
        >
          次へ
        </button>
      </div>
    </div>
  );
}