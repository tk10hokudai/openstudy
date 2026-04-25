'use client';

import { isLocalDev } from '@/lib/auth';

export default function DevBadge() {
  if (!isLocalDev) return null;
  return (
    <div style={{
      position: 'fixed',
      top: 0,
      left: '50%',
      transform: 'translateX(-50%)',
      padding: '0.75rem 0',
      fontSize: '1.25rem',
      fontWeight: 700,
      color: '#f97316',
      zIndex: 1000,
      pointerEvents: 'none',
    }}>
      [Developer]
    </div>
  );
}
