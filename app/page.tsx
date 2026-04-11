'use client';

import { useState, useEffect } from 'react';
import { useRouter } from 'next/navigation';
import Link from 'next/link';
import { useUser, signInWithGoogle, signOut } from '@/lib/auth';
import { getBookmarks, hasAnyCollections, getAllInterruptedExamIds } from '@/lib/storage';

type MenuOption = {
  id: string;
  label: string;
  alwaysDisabled?: boolean;
  badge?: string;
};

const menuOptions: MenuOption[] = [
  { id: 'search', label: '試験・資格を検索して演習' },
  { id: 'create', label: '問題集を作成', alwaysDisabled: true, badge: '【開発中】' },
  { id: 'interrupted', label: '中断した問題集を再開' },
  { id: 'collections', label: '作成・追加した問題集を演習' },
  { id: 'bookmarks', label: 'ブックマークに追加した問題集を演習' },
];

export default function Home() {
  const [selected, setSelected] = useState<string | null>(null);
  const [showAbout, setShowAbout] = useState(false);
  const [availability, setAvailability] = useState<Record<string, boolean>>({
    interrupted: false,
    collections: false,
    bookmarks: false,
  });
  const router = useRouter();
  const { user } = useUser();

  useEffect(() => {
    async function check() {
      const [interruptedIds, hasCollections, bookmarks] = await Promise.all([
        getAllInterruptedExamIds(user),
        hasAnyCollections(user),
        getBookmarks(user),
      ]);
      setAvailability({
        interrupted: interruptedIds.length > 0,
        collections: hasCollections,
        bookmarks: bookmarks.length > 0,
      });
    }
    check();
  }, [user]);

  const handleNext = () => {
    const routes: Record<string, string> = {
      search: '/search',
      interrupted: '/interrupted',
      collections: '/collections',
      bookmarks: '/bookmarks',
    };
    if (selected && routes[selected]) {
      router.push(routes[selected]);
    }
  };

  const isDisabled = (option: MenuOption): boolean => {
    if (option.alwaysDisabled) return true;
    if (option.id in availability) return !availability[option.id];
    return false;
  };

  const disabledReason = (id: string): string | null => {
    if (id === 'interrupted' && !availability.interrupted) return '中断データなし';
    if (id === 'collections' && !availability.collections) return '問題集なし';
    if (id === 'bookmarks' && !availability.bookmarks) return '登録なし';
    return null;
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
              <button onClick={signOut} className="btn"
                style={{ padding: '0.25rem 0.75rem', fontSize: '0.8rem', backgroundColor: 'var(--border)', color: 'var(--text)' }}>
                ログアウト
              </button>
            </div>
          ) : (
            <button onClick={signInWithGoogle} className="btn btn-primary"
              style={{ padding: '0.25rem 0.75rem', fontSize: '0.8rem' }}>
              Googleでログイン
            </button>
          )}
        </div>
      </header>

      <div className="page-body">
        <h1 className="page-title">OpenStudy</h1>

        <div style={{ marginBottom: '1rem' }}>
          <div style={{ display: 'flex', alignItems: 'center', gap: '0.25rem', cursor: 'pointer', color: 'var(--text-light)', fontSize: '0.9rem', userSelect: 'none' }}
            onClick={() => setShowAbout(!showAbout)}>
            <span>{showAbout ? '▼' : '▲'}OpenStudyとは</span>
          </div>
          {showAbout && (
            <div className="explanation-box" style={{ marginTop: '0.5rem' }}>
              <p style={{ fontWeight: 600, marginBottom: '0.5rem' }}>OpenStudyとは</p>
              <p>あらゆる試験・資格の問題演習を行えるサービスです。</p>
              <p style={{ marginTop: '0.75rem', fontWeight: 600, marginBottom: '0.25rem' }}>UIの見方</p>
              <p>〇 … 選択肢（タップで選択、◎が選択済み）</p>
              <p>□ … チェックボックス（複数選択可）</p>
              <p>＋ … 問題を問題集に追加（青色）</p>
              <p>◇ … ブックマーク（緑色、試験・資格を登録）</p>
              <p>▲▼ … タップで詳細の開閉</p>
              <p style={{ marginTop: '0.75rem', fontWeight: 600, marginBottom: '0.25rem' }}>使い方</p>
              <p>1. 演習したい試験・資格を選んで問題を解きます。</p>
              <p>2. 解答後に正誤判定と解説が表示されます。</p>
              <p>3. ＋ボタンで問題を自分用の問題集に追加できます。</p>
              <p>4. 全問終了後に正答率が表示されます。</p>
            </div>
          )}
        </div>

        <div className="radio-list">
          {menuOptions.map((option) => {
            const disabled = isDisabled(option);
            const reason = disabledReason(option.id);
            return (
              <div key={option.id}
                className={`radio-option ${selected === option.id ? 'selected' : ''} ${disabled ? 'disabled' : ''}`}
                onClick={() => { if (!disabled) setSelected(option.id); }}>
                <div className={`radio-circle ${selected === option.id ? 'checked' : ''}`}>
                  {selected === option.id && <div className="radio-circle-inner" />}
                </div>
                <span className="radio-label">
                  {option.label}
                  {option.badge && <span className="radio-badge">{option.badge}</span>}
                  {reason && <span className="radio-badge">（{reason}）</span>}
                </span>
              </div>
            );
          })}
        </div>
      </div>

      <div className="nav-buttons nav-buttons--right-only">
        <button className={`btn ${selected ? 'btn-primary' : 'btn-disabled'}`}
          onClick={handleNext} disabled={!selected}>
          次へ
        </button>
      </div>
    </div>
  );
}