'use client';

import { useEffect } from 'react';
import { useRouter, usePathname } from 'next/navigation';
import { useUser, signInWithGoogle, signOut } from '@/lib/auth';

const LAST_PATHS_KEY = 'nav_last_paths';

const tabs = [
  { label: '演習', path: '/search', prefixes: ['/search', '/exams', '/bookmarks'] },
  { label: '再開', path: '/interrupted', prefixes: ['/interrupted'] },
  { label: '作成', path: '/create', prefixes: ['/create'] },
  { label: '編集', path: '/collections', prefixes: ['/collections'] },
];

// /collections/[id]/sections は演習タブ扱い
function getTabForPath(pathname: string) {
  if (/^\/collections\/[^/]+\/sections(\/|$)/.test(pathname)) {
    return tabs.find(t => t.path === '/search') ?? null;
  }
  return tabs.find(t => t.prefixes.some(p => pathname.startsWith(p))) ?? null;
}

function getLastPaths(): Record<string, string> {
  try { return JSON.parse(sessionStorage.getItem(LAST_PATHS_KEY) || '{}'); }
  catch { return {}; }
}

export default function MainNav() {
  const router = useRouter();
  const pathname = usePathname();
  const { user } = useUser();
  const isHome = pathname === '/';

  useEffect(() => {
    const activeTab = getTabForPath(pathname);
    if (!activeTab) return;
    // /sections はクイズ開始前の中間画面なので記憶しない
    if (pathname.endsWith('/sections')) return;
    const fullPath = pathname + window.location.search;
    const paths = getLastPaths();
    paths[activeTab.path] = fullPath;
    sessionStorage.setItem(LAST_PATHS_KEY, JSON.stringify(paths));
  }, [pathname]);

  const handleTabClick = (tab: typeof tabs[0]) => {
    const isActive = !isHome && getTabForPath(pathname)?.path === tab.path;
    if (isActive) { window.scrollTo(0, 0); router.push(tab.path); return; }
    const lastPath = getLastPaths()[tab.path];
    router.push(lastPath || tab.path);
  };

  return (
    <header className="header">
      {/* 1行目: ロゴ（左、ホームタブ）・ログイン（右） */}
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '0.5rem' }}>
        <button onClick={() => router.push('/')}
          style={{
            fontSize: '1.25rem', fontWeight: 700,
            color: isHome ? 'var(--primary)' : 'var(--text)',
            background: 'none', border: 'none', cursor: 'pointer', padding: 0,
            fontFamily: 'inherit',
          }}
        >
          OpenStudy
        </button>

        <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem' }}>
          {user ? (
            <>
              <span style={{ fontSize: '0.75rem', color: 'var(--text-light)' }}>
                {user.user_metadata?.full_name || user.email}
              </span>
              <button onClick={signOut} className="btn"
                style={{ padding: '0.2rem 0.6rem', fontSize: '0.75rem', backgroundColor: 'var(--border)', color: 'var(--text)' }}>
                ログアウト
              </button>
            </>
          ) : (
            <button onClick={signInWithGoogle} className="btn btn-primary"
              style={{ padding: '0.2rem 0.6rem', fontSize: '0.75rem' }}>
              Googleでログイン
            </button>
          )}
        </div>
      </div>

      {/* 2行目: タブナビ（均等配置） */}
      <div style={{ display: 'flex' }}>
        {tabs.map((tab) => {
          const isActive = !isHome && getTabForPath(pathname)?.path === tab.path;
          return (
            <button key={tab.path} onClick={() => handleTabClick(tab)}
              style={{
                flex: 1,
                padding: '0.25rem 0',
                fontSize: '0.95rem',
                fontWeight: isActive ? 700 : 400,
                color: isActive ? 'var(--primary)' : 'var(--text-light)',
                background: 'none',
                border: 'none',
                borderBottom: isActive ? '2px solid var(--primary)' : '2px solid transparent',
                cursor: 'pointer',
                textAlign: 'center',
              }}
            >
              {tab.label}
            </button>
          );
        })}
      </div>
    </header>
  );
}
