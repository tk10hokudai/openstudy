'use client';

import { useEffect, useState } from 'react';
import { useRouter } from 'next/navigation';
import Link from 'next/link';
import { supabase } from '@/lib/supabase';
import { useUser } from '@/lib/auth';
import { getCollections, getCollectionItems } from '@/lib/storage';

export default function CollectionsPage() {
  const router = useRouter();
  const { user } = useUser();
  const [collections, setCollections] = useState<{ id: number; title: string }[]>([]);
  const [selected, setSelected] = useState<number | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function load() {
      const data = await getCollections(user);
      // 五十音・アルファベット順（日本語を先に）
      const sorted = [...data].sort((a, b) => {
        const aIsJapanese = /^[\u3000-\u9FFF\uF900-\uFAFF]/.test(a.title);
        const bIsJapanese = /^[\u3000-\u9FFF\uF900-\uFAFF]/.test(b.title);
        if (aIsJapanese && !bIsJapanese) return -1;
        if (!aIsJapanese && bIsJapanese) return 1;
        return a.title.localeCompare(b.title, 'ja');
      });
      setCollections(sorted);
      setLoading(false);
    }
    load();
  }, [user]);

  // 問題集の最初の問題からexam_idを特定してクイズページへ
  const handleNext = async () => {
    if (!selected) return;
    const qIds = await getCollectionItems(user, selected);
    if (qIds.length === 0) return;

    const { data: q } = await supabase
      .from('questions')
      .select('section_id, group_id')
      .eq('id', qIds[0])
      .single();

    let examId: number | null = null;
    if (q?.section_id) {
      const { data: sec } = await supabase
        .from('exam_sections').select('exam_id').eq('id', q.section_id).single();
      examId = sec?.exam_id ?? null;
    } else if (q?.group_id) {
      const { data: grp } = await supabase
        .from('question_groups').select('section_id').eq('id', q.group_id).single();
      if (grp?.section_id) {
        const { data: sec } = await supabase
          .from('exam_sections').select('exam_id').eq('id', grp.section_id).single();
        examId = sec?.exam_id ?? null;
      }
    }

    if (!examId) return;
    const selectedCollection = collections.find((c) => c.id === selected);
    const collectionTitle = selectedCollection?.title || '';
    router.push(`/exams/${examId}/quiz?mode=collection&questionIds=${qIds.join(',')}&collectionTitle=${encodeURIComponent(collectionTitle)}&collectionId=${selected}`);
  };

  const handleEdit = () => {
    if (!selected) return;
    router.push(`/collections/${selected}/edit`);
  };

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

  return (
    <div className="page-container">
      <header className="header"><Link href="/" className="header-logo">OpenStudy</Link></header>

      <div className="page-body">
        <h2 className="section-title" style={{ textAlign: 'center', fontSize: '1.1rem', marginBottom: '1rem' }}>
          作成・追加した問題集
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
              </li>
            ))}
          </ul>
        )}
      </div>

      <div className="nav-buttons">
        <button className="btn btn-back" onClick={() => router.back()}>戻る</button>
        <button className={`btn ${selected ? 'btn-primary' : 'btn-disabled'}`}
          onClick={handleEdit} disabled={!selected}>
          編集
        </button>
        <button className={`btn ${selected ? 'btn-primary' : 'btn-disabled'}`}
          onClick={handleNext} disabled={!selected}>
          次へ
        </button>
      </div>
    </div>
  );
}
