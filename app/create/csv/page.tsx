'use client';

import { useRouter, useSearchParams } from 'next/navigation';
import Link from 'next/link';
import { useRef, useState, Suspense } from 'react';
import Papa from 'papaparse';
import type { QuestionDraft, CreateDraft } from '@/lib/types';

const DRAFT_KEY = 'create_draft';

const CSV_COMMENT =
  '# このCSVはOpenStudy 選択式（単一）問題集用フォーマットです。各行が1問に対応します。\n' +
  '# ルール: 分野(必須)、問題文(必須)、解説文(任意・空欄可)、正答(必須)、誤答1(必須)、誤答2〜8(任意・空欄は無視)。\n' +
  '# 選択肢は正答1つ＋誤答1〜8つで計2〜9択になります。\n' +
  '# AIへ: このフォーマットに従い3行目以降にデータ行を追加してください。2行目のヘッダー行は変更しないでください。';

const CSV_HEADER = '分野,問題文,解説文,正答,誤答1,誤答2,誤答3,誤答4,誤答5,誤答6,誤答7,誤答8';

const CSV_EXAMPLE =
  '数学,2と3を足した値はいくつか,2+3=5。,5,3,4,6,7,,,,\n' +
  '歴史,江戸幕府を開いたのは誰か,,徳川家康,豊臣秀吉,織田信長,源頼朝,,,,,';

type ParseError = { row: number; message: string };

const CHECKLIST_CREATE = [
  'ファイル名が「問題集名.csv」（設定した問題名）となっていること',
  '2行目のヘッダー行（分野,問題文,解説文,正答,誤答1,…,誤答8）を変更していないこと',
  '3行目以降にデータ行が1件以上入力されていること',
  '全行の「分野」欄が入力されていること（空欄不可）',
  '全行の「問題文」欄が入力されていること（空欄不可）',
  '全行の「正答」欄が入力されていること（空欄不可）',
  '全行の「誤答1」欄が入力されていること（最低1つの誤答が必要）',
  '選択肢の合計が9択以内（正答1＋誤答1〜8）になっていること',
];

const CHECKLIST_UPLOAD = [
  'ファイルの拡張子が .csv であること',
  'ヘッダー行が「分野,問題文,解説文,正答,誤答1,…,誤答8」の形式になっていること',
  '全行の「分野」欄が入力されていること（空欄不可）',
  '全行の「問題文」欄が入力されていること（空欄不可）',
  '全行の「正答」欄が入力されていること（空欄不可）',
  '全行の「誤答1」欄が入力されていること（最低1つの誤答が必要）',
  '選択肢の合計が9択以内（正答1＋誤答1〜8）になっていること',
  'ファイルの文字コードがUTF-8であること',
];

function ChecklistToggle({ items }: { items: string[] }) {
  const [open, setOpen] = useState(false);
  return (
    <div style={{ marginTop: '0.75rem' }}>
      <button
        onClick={() => setOpen((v) => !v)}
        style={{
          display: 'flex', alignItems: 'center', gap: '0.25rem',
          background: 'none', border: 'none', cursor: 'pointer',
          color: 'var(--text-light)', fontSize: '0.85rem', padding: 0,
          userSelect: 'none',
        }}
      >
        <span>{open ? '▼' : '▲'}</span>
        <span>CSVファイルのチェックポイント</span>
      </button>
      {open && (
        <ul style={{
          marginTop: '0.5rem', padding: '0.75rem 1rem',
          background: 'var(--bg)', border: '1px solid var(--border)',
          borderRadius: '6px', fontSize: '0.85rem', listStyle: 'none',
          display: 'flex', flexDirection: 'column', gap: '0.375rem',
        }}>
          {items.map((item, i) => (
            <li key={i} style={{ display: 'flex', gap: '0.5rem' }}>
              <span style={{ color: 'var(--correct)', flexShrink: 0 }}>✓</span>
              <span>{item}</span>
            </li>
          ))}
        </ul>
      )}
    </div>
  );
}

function buildCsvContent(collectionName: string) {
  return `${CSV_COMMENT}\n${CSV_HEADER}\n${CSV_EXAMPLE}`;
}

function downloadCsv(name: string) {
  const BOM = '﻿';
  const content = buildCsvContent(name);
  const blob = new Blob([BOM + content], { type: 'text/csv;charset=utf-8;' });
  const url = URL.createObjectURL(blob);
  const a = document.createElement('a');
  a.href = url;
  a.download = `${name}.csv`;
  a.click();
  URL.revokeObjectURL(url);
}

function parseRow(row: Record<string, string>, rowIndex: number): { q: QuestionDraft | null; errors: ParseError[] } {
  const errors: ParseError[] = [];
  const category = row['分野']?.trim() || '';
  const body_text = row['問題文']?.trim() || '';
  const explanation = row['解説文']?.trim() || '';
  const correct = row['正答']?.trim() || '';
  const wrongs = ['誤答1', '誤答2', '誤答3', '誤答4', '誤答5', '誤答6', '誤答7', '誤答8']
    .map((k) => row[k]?.trim() || '')
    .filter(Boolean);

  if (!category) errors.push({ row: rowIndex, message: '分野が空です' });
  if (!body_text) errors.push({ row: rowIndex, message: '問題文が空です' });
  if (!correct) errors.push({ row: rowIndex, message: '正答が空です' });
  if (wrongs.length === 0) errors.push({ row: rowIndex, message: '誤答が1つも入力されていません' });
  if (wrongs.length + 1 > 9) errors.push({ row: rowIndex, message: '選択肢が9択を超えています' });

  if (errors.length > 0) return { q: null, errors };

  const choices = [
    { choice_text: correct, is_correct: true, sort_order: 1 },
    ...wrongs.map((w, i) => ({ choice_text: w, is_correct: false, sort_order: i + 2 })),
  ];

  return { q: { category, body_text, explanation, choices }, errors: [] };
}

function CsvForm() {
  const [isDragging, setIsDragging] = useState(false);
  const router = useRouter();
  const params = useSearchParams();
  const method = params.get('method') || 'csv_create';
  const name = params.get('name') || '';
  const type = params.get('type') || 'choice_single';
  const isUploadOnly = method === 'csv_upload';

  const fileRef = useRef<HTMLInputElement>(null);
  const [parseErrors, setParseErrors] = useState<ParseError[]>([]);
  const [fileName, setFileName] = useState('');

  const handleDownload = () => downloadCsv(name);

  const handleFileChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    if (file) processFile(file);
  };

  const handleDragOver = (e: React.DragEvent) => {
    e.preventDefault();
    setIsDragging(true);
  };

  const handleDragLeave = () => setIsDragging(false);

  const handleDrop = (e: React.DragEvent) => {
    e.preventDefault();
    setIsDragging(false);
    const file = e.dataTransfer.files?.[0];
    if (file) processFile(file);
  };

  const processFile = (file: File) => {
    setFileName(file.name);
    setParseErrors([]);

    const reader = new FileReader();
    reader.onload = (ev) => {
      const text = (ev.target?.result as string) || '';
      const result = Papa.parse<Record<string, string>>(text, {
        header: true,
        skipEmptyLines: true,
        comments: '#',
      });

      const questions: QuestionDraft[] = [];
      const allErrors: ParseError[] = [];

      result.data.forEach((row, i) => {
        const { q, errors } = parseRow(row, i + 1);
        if (q) questions.push(q);
        allErrors.push(...errors);
      });

      if (allErrors.length > 0) {
        setParseErrors(allErrors);
        return;
      }

      if (questions.length === 0) {
        setParseErrors([{ row: 0, message: 'CSVに有効な問題が見つかりませんでした' }]);
        return;
      }

      const collectionName = isUploadOnly
        ? file.name.replace(/\.csv$/i, '')
        : name;

      const draft: CreateDraft = {
        method: method as CreateDraft['method'],
        name: collectionName,
        type: 'choice_single',
        questions,
      };
      sessionStorage.setItem(DRAFT_KEY, JSON.stringify(draft));

      const encoded = encodeURIComponent(collectionName);
      router.push(`/create/preview?name=${encoded}&type=${type}&count=${questions.length}`);
    };
    reader.readAsText(file, 'UTF-8');
  };

  return (
    <div className="page-container">
      <div className="page-body">
        <h2 className="section-title" style={{ textAlign: 'center', fontSize: '1.1rem', marginBottom: '1.5rem', color: isUploadOnly ? 'var(--text-light)' : 'var(--text)' }}>
          {isUploadOnly ? '問題アップロード' : name}
        </h2>

        {!isUploadOnly && (
          <div style={{ marginBottom: '2rem' }}>
            <p style={{ fontSize: '0.9rem', marginBottom: '0.75rem' }}>
              以下のひな型ファイルをダウンロードして、問題を作成してください。
            </p>
            <button
              className="btn btn-primary"
              onClick={handleDownload}
              style={{ width: '100%' }}
            >
              {name}.csv をダウンロード
            </button>
          </div>
        )}

        <div>
          <p style={{ fontSize: '0.9rem', marginBottom: '0.5rem' }}>
            作成したCSVファイルをアップロードしてください。
          </p>
          <ChecklistToggle items={isUploadOnly ? CHECKLIST_UPLOAD : CHECKLIST_CREATE} />
          <label
            style={{
              display: 'flex', alignItems: 'center', justifyContent: 'center',
              padding: '1.5rem', marginTop: '0.75rem',
              border: `2px dashed ${isDragging ? 'var(--primary)' : 'var(--border)'}`,
              borderRadius: '8px', cursor: 'pointer',
              color: isDragging ? 'var(--primary)' : 'var(--text-light)',
              fontSize: '0.9rem', transition: 'border-color 0.15s, color 0.15s',
              background: isDragging ? 'var(--primary-light)' : undefined,
            }}
            onDragOver={handleDragOver}
            onDragLeave={handleDragLeave}
            onDrop={handleDrop}
          >
            <input ref={fileRef} type="file" accept=".csv" onChange={handleFileChange} style={{ display: 'none' }} />
            {fileName ? `✓ ${fileName}` : '📂 CSVファイルを選択 / ここにドロップ'}
          </label>
        </div>

        {parseErrors.length > 0 && (
          <div style={{
            marginTop: '1rem', padding: '0.75rem 1rem',
            background: 'var(--incorrect-bg)', border: '1px solid var(--incorrect)',
            borderRadius: '6px', fontSize: '0.85rem', color: 'var(--incorrect)',
          }}>
            <p style={{ fontWeight: 600, marginBottom: '0.25rem' }}>エラーが見つかりました</p>
            {parseErrors.map((e, i) => (
              <p key={i}>{e.row > 0 ? `${e.row}行目: ` : ''}{e.message}</p>
            ))}
          </div>
        )}
      </div>

      <div className="nav-buttons">
        <button className="btn btn-back" onClick={() => router.push(isUploadOnly ? '/create' : `/create/details?name=${encodeURIComponent(name)}&method=${method}`)}>戻る</button>
      </div>
    </div>
  );
}

export default function CsvPage() {
  return (
    <Suspense>
      <CsvForm />
    </Suspense>
  );
}
