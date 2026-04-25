'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import { useUser } from '@/lib/auth';
import { getCollections, deleteCollection } from '@/lib/storage';

function TrashIcon({ color, size }: { color: string; size: number }) {
  return (
    <svg viewBox="0 0 512 512" width={size} height={size}>
      <path fill={color} d="M439.114,69.747c0,0,2.977,2.1-43.339-11.966c-41.52-12.604-80.795-15.309-80.795-15.309l-2.722-19.297C310.387,9.857,299.484,0,286.642,0h-30.651h-30.651c-12.825,0-23.729,9.857-25.616,23.175l-2.722,19.297c0,0-39.258,2.705-80.778,15.309C69.891,71.848,72.868,69.747,72.868,69.747c-10.324,2.849-17.536,12.655-17.536,23.864v16.695h200.66h200.677V93.611C456.669,82.402,449.456,72.596,439.114,69.747z" />
      <path fill={color} d="M88.593,464.731C90.957,491.486,113.367,512,140.234,512h231.524c26.857,0,49.276-20.514,51.64-47.269l25.642-327.21H62.952L88.593,464.731z M342.016,209.904c0.51-8.402,7.731-14.807,16.134-14.296c8.402,0.51,14.798,7.731,14.296,16.134l-14.492,239.493c-0.51,8.402-7.731,14.798-16.133,14.288c-8.403-0.51-14.806-7.722-14.296-16.125L342.016,209.904z M240.751,210.823c0-8.42,6.821-15.241,15.24-15.241c8.42,0,15.24,6.821,15.24,15.241v239.492c0,8.42-6.821,15.24-15.24,15.24c-8.42,0-15.24-6.821-15.24-15.24V210.823z M153.833,195.608c8.403-0.51,15.624,5.894,16.134,14.296l14.509,239.492c0.51,8.403-5.894,15.615-14.296,16.125c-8.403-0.51-15.624-5.886-16.134-14.288l-14.509-239.493C139.026,203.339,145.43,196.118,153.833,195.608z" />
    </svg>
  );
}

function ConfirmDeleteDialog({ title, onCancel, onConfirm }: { title: string; onCancel: () => void; onConfirm: () => void }) {
  return (
    <div style={{ position: 'fixed', inset: 0, background: 'rgba(0,0,0,0.4)', display: 'flex', alignItems: 'center', justifyContent: 'center', zIndex: 1000 }}>
      <div style={{ background: 'white', borderRadius: '12px', padding: '2rem', maxWidth: '320px', width: '90%', textAlign: 'center' }}>
        <p style={{ fontSize: '1rem', fontWeight: 600, marginBottom: '0.25rem' }}>「{title}」</p>
        <p style={{ fontSize: '1rem', fontWeight: 600, marginBottom: '1.5rem' }}>を削除しますか？</p>
        <div style={{ display: 'flex', gap: '1rem', justifyContent: 'center' }}>
          <button onClick={onCancel} className="btn btn-back" style={{ flex: 1, fontSize: '0.85rem', padding: '0.4rem 0.75rem' }}>いいえ</button>
          <button onClick={onConfirm} className="btn btn-primary" style={{ flex: 1, fontSize: '0.85rem', padding: '0.4rem 0.75rem', backgroundColor: 'var(--incorrect)' }}>はい</button>
        </div>
      </div>
    </div>
  );
}

export default function CollectionsPage() {
  const router = useRouter();
  const { user } = useUser();
  const [collections, setCollections] = useState<{ id: number; title: string }[]>([]);
  const [selected, setSelected] = useState<number | null>(null);
  const [loading, setLoading] = useState(true);
  const [deleteTarget, setDeleteTarget] = useState<{ id: number; title: string } | null>(null);

  useEffect(() => {
    async function load() {
      const data = await getCollections(user);
      const sorted = [...data].sort((a, b) => {
        const aIsJapanese = /^[　-鿿豈-﫿]/.test(a.title);
        const bIsJapanese = /^[　-鿿豈-﫿]/.test(b.title);
        if (aIsJapanese && !bIsJapanese) return -1;
        if (!aIsJapanese && bIsJapanese) return 1;
        return a.title.localeCompare(b.title, 'ja');
      });
      setCollections(sorted);
      setLoading(false);
    }
    load();
  }, [user]);

  const handleNext = () => {
    if (!selected) return;
    sessionStorage.setItem('show_ad_edit', '1');
    router.push(`/collections/${selected}/edit`);
  };

  const handleDeleteConfirm = async () => {
    if (!deleteTarget) return;
    await deleteCollection(user, deleteTarget.id);
    setCollections((prev) => prev.filter((c) => c.id !== deleteTarget.id));
    if (selected === deleteTarget.id) setSelected(null);
    setDeleteTarget(null);
  };

  if (loading) {
    return (
      <div className="page-container">
        <div className="page-body">
          <p style={{ color: 'var(--text-light)', textAlign: 'center', padding: '2rem' }}>読み込み中...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="page-container">
      {deleteTarget && (
        <ConfirmDeleteDialog
          title={deleteTarget.title}
          onCancel={() => setDeleteTarget(null)}
          onConfirm={handleDeleteConfirm}
        />
      )}
      <div className="page-body">
        <h2 className="section-title" style={{ textAlign: 'center', fontSize: '1.1rem', marginBottom: '1rem', color: 'var(--text)' }}>
          自分の問題集を編集・削除
        </h2>

        {collections.length === 0 ? (
          <p style={{ color: 'var(--text-light)', textAlign: 'center', padding: '2rem 0' }}>問題集がありません</p>
        ) : (
          <ul className="exam-list">
            {collections.map((col) => (
              <li key={col.id}
                className={`exam-list-item ${selected === col.id ? 'selected' : ''}`}
                onClick={() => setSelected(col.id)}>
                <div className={`radio-circle ${selected === col.id ? 'checked' : ''}`}>
                  {selected === col.id && <div className="radio-circle-inner" />}
                </div>
                <span style={{ flex: 1 }}>{col.title}</span>
                <button
                  onClick={(e) => { e.stopPropagation(); setDeleteTarget(col); }}
                  style={{ background: 'none', border: 'none', cursor: 'pointer', padding: '0.25rem', display: 'flex', alignItems: 'center', flexShrink: 0 }}>
                  <TrashIcon color="#ef4444" size={18} />
                </button>
              </li>
            ))}
          </ul>
        )}
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
