import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "OpenStudy",
  description: "あらゆる試験・資格の問題演習",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="ja">
      <body>{children}</body>
    </html>
  );
}