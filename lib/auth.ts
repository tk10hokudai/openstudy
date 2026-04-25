import { useEffect, useState } from 'react';
import { supabase } from './supabase';
import type { User } from '@supabase/supabase-js';

export function useUser() {
  const [user, setUser] = useState<User | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    supabase.auth.getUser().then(({ data: { user } }) => {
      setUser(user);
      setLoading(false);
    });

    const { data: { subscription } } = supabase.auth.onAuthStateChange((_event, session) => {
      setUser(session?.user ?? null);
    });

    return () => subscription.unsubscribe();
  }, []);

  return { user, loading };
}

export async function signInWithGoogle() {
  const { error } = await supabase.auth.signInWithOAuth({
    provider: 'google',
    options: {
      redirectTo: `${window.location.origin}/`,
    },
  });
  if (error) console.error('Login error:', error.message);
}

export async function signOut() {
  const { error } = await supabase.auth.signOut();
  if (error) console.error('Logout error:', error.message);
}


export const isLocalDev =
  process.env.NEXT_PUBLIC_SUPABASE_URL?.includes('127.0.0.1') ?? false;