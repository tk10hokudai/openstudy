'use client';

import { useState } from 'react';

const AD_DURATION_SEC = 3;

type Props = {
  onClose: () => void;
  /** false の間は5秒経過後も × を表示しない（保存完了待ちなど） */
  ready?: boolean;
};

export default function AdOverlay({ onClose, ready = true }: Props) {
  const [timerDone, setTimerDone] = useState(false);
  const canClose = timerDone && ready;

  return (
    <div style={{
      position: 'fixed', inset: 0, zIndex: 2000,
      display: 'flex', flexDirection: 'column', alignItems: 'center', justifyContent: 'center',
    }}>
      {/* 背景ディム */}
      <div style={{ position: 'absolute', inset: 0, background: 'rgba(0,0,0,0.5)' }} />

      {/* 広告ボックス */}
      <div style={{
        position: 'relative', zIndex: 1,
        background: 'white', borderRadius: '12px',
        width: '90%', maxWidth: '360px',
        overflow: 'hidden',
        boxShadow: '0 8px 32px rgba(0,0,0,0.25)',
      }}>
        {/* 秒数ゲージ */}
        <div style={{ height: '4px', background: 'var(--border)', position: 'relative' }}>
          <div
            style={{
              height: '100%',
              background: 'var(--primary)',
              animation: `adProgress ${AD_DURATION_SEC}s linear forwards`,
            }}
            onAnimationEnd={() => setTimerDone(true)}
          />
        </div>

        {/* × ボタン（カウント終了後） */}
        {canClose && (
          <button
            onClick={onClose}
            style={{
              position: 'absolute', top: '0.5rem', right: '0.5rem',
              width: '26px', height: '26px',
              background: 'rgba(0,0,0,0.12)', border: 'none', borderRadius: '50%',
              cursor: 'pointer', display: 'flex', alignItems: 'center', justifyContent: 'center',
              fontSize: '0.85rem', color: 'var(--text)', lineHeight: 1,
            }}
          >
            ✕
          </button>
        )}

        {/* 広告コンテンツ */}
        <div style={{ padding: '1.5rem' }}>
          <div style={{
            width: '100%', height: '180px',
            border: '2px dashed var(--border)', borderRadius: '8px',
            display: 'flex', alignItems: 'center', justifyContent: 'center',
          }}>
            <p style={{ fontSize: '1.1rem', fontWeight: 700, color: 'var(--text-light)' }}>
              【広告表示】
            </p>
          </div>

          <p style={{
            marginTop: '0.75rem', textAlign: 'center',
            fontSize: '0.8rem', color: 'var(--text-light)',
          }}>
            {canClose ? '右上の × を押して閉じてください' : timerDone ? '処理中...' : `${AD_DURATION_SEC}秒後にスキップできます`}
          </p>
        </div>
      </div>

      <style>{`
        @keyframes adProgress {
          from { width: 0%; }
          to   { width: 100%; }
        }
      `}</style>
    </div>
  );
}
