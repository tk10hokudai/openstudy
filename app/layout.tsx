import type { Metadata } from "next";
import "./globals.css";
import DevBadge from "@/components/DevBadge";
import MainNav from "@/components/MainNav";

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
      <body>
        <div className="global-nav">
          <MainNav />
        </div>
        <DevBadge />
        {children}
      </body>
    </html>
  );
}