"use client";

import { motion } from "framer-motion";
import Link from "next/link";
import { Play, Flame, Trophy, Star } from "lucide-react";

// 랜딩 페이지 - 마케팅용 스태틱 페이지
export default function LandingPage() {
  return (
    <main className="min-h-screen relative overflow-hidden">
      {/* 배경 그라데이션 효과 */}
      <div className="absolute inset-0 bg-gradient-to-br from-[#020617] via-[#0f172a] to-[#1e1b4b] -z-10" />

      {/* 네온 오브 효과 */}
      <div className="absolute top-1/4 left-1/4 w-96 h-96 bg-[#FF007F] rounded-full blur-[150px] opacity-20 -z-10" />
      <div className="absolute bottom-1/4 right-1/4 w-96 h-96 bg-[#7C3AED] rounded-full blur-[150px] opacity-20 -z-10" />

      {/* 헤더 */}
      <header className="fixed top-0 left-0 right-0 z-50 glass">
        <div className="max-w-7xl mx-auto px-6 py-4 flex items-center justify-between">
          <motion.div
            initial={{ opacity: 0, x: -20 }}
            animate={{ opacity: 1, x: 0 }}
            className="flex items-center gap-2"
          >
            <span className="text-2xl font-bold bg-gradient-to-r from-[#FF007F] to-[#7C3AED] bg-clip-text text-transparent">
              K-Dictation
            </span>
            <span className="text-sm text-gray-400">: Stantalk</span>
          </motion.div>

          <motion.div
            initial={{ opacity: 0, x: 20 }}
            animate={{ opacity: 1, x: 0 }}
          >
            <Link
              href="/learn"
              className="btn-primary px-6 py-2 text-white font-semibold text-sm"
            >
              Join the Fandom
            </Link>
          </motion.div>
        </div>
      </header>

      {/* 히어로 섹션 */}
      <section className="pt-32 pb-20 px-6">
        <div className="max-w-4xl mx-auto text-center">
          <motion.div
            initial={{ opacity: 0, y: 30 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.2 }}
          >
            <h1 className="text-5xl md:text-7xl font-extrabold mb-6 leading-tight">
              <span className="text-white">내 </span>
              <span className="bg-gradient-to-r from-[#FF007F] to-[#7C3AED] bg-clip-text text-transparent">
                최애
              </span>
              <span className="text-white">의 말을</span>
              <br />
              <span className="text-white">알아듣고 싶다면?</span>
            </h1>
          </motion.div>

          <motion.p
            initial={{ opacity: 0, y: 30 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.4 }}
            className="text-xl text-gray-400 mb-10 max-w-2xl mx-auto"
          >
            K-Pop과 K-Drama로 한국어를 배우는 가장 중독적인 방법!
            <br />
            실제 아이돌 영상으로 받아쓰기하며 한국어 실력을 키워보세요.
          </motion.p>

          <motion.div
            initial={{ opacity: 0, y: 30 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ delay: 0.6 }}
            className="flex flex-col sm:flex-row gap-4 justify-center"
          >
            <Link
              href="/learn"
              className="btn-primary px-8 py-4 text-white font-bold text-lg inline-flex items-center justify-center gap-2"
            >
              <Play className="w-5 h-5" />
              지금 시작하기
            </Link>
            <button className="px-8 py-4 border-2 border-[#7C3AED] text-[#7C3AED] font-bold text-lg rounded-full hover:bg-[#7C3AED]/10 transition-colors">
              데모 보기
            </button>
          </motion.div>
        </div>
      </section>

      {/* 특징 섹션 */}
      <section className="py-20 px-6">
        <div className="max-w-6xl mx-auto">
          <motion.h2
            initial={{ opacity: 0 }}
            whileInView={{ opacity: 1 }}
            viewport={{ once: true }}
            className="text-3xl md:text-4xl font-bold text-center mb-16 text-white"
          >
            왜 <span className="text-[#FF007F]">K-Dictation</span>인가요?
          </motion.h2>

          <div className="grid md:grid-cols-3 gap-8">
            {/* 특징 카드 1 */}
            <motion.div
              initial={{ opacity: 0, y: 30 }}
              whileInView={{ opacity: 1, y: 0 }}
              viewport={{ once: true }}
              transition={{ delay: 0.1 }}
              className="card p-8 text-center hover:border-[#FF007F]/50 transition-colors"
            >
              <div className="w-16 h-16 mx-auto mb-6 rounded-full bg-gradient-to-r from-[#FF007F] to-[#7C3AED] flex items-center justify-center">
                <Star className="w-8 h-8 text-white" />
              </div>
              <h3 className="text-xl font-bold text-white mb-4">Real Content</h3>
              <p className="text-gray-400">
                교과서 예문이 아닌 실제 아이돌의 라이브 방송, 예능 클립으로 학습해요.
              </p>
            </motion.div>

            {/* 특징 카드 2 */}
            <motion.div
              initial={{ opacity: 0, y: 30 }}
              whileInView={{ opacity: 1, y: 0 }}
              viewport={{ once: true }}
              transition={{ delay: 0.2 }}
              className="card p-8 text-center hover:border-[#7C3AED]/50 transition-colors"
            >
              <div className="w-16 h-16 mx-auto mb-6 rounded-full bg-gradient-to-r from-[#7C3AED] to-[#00F0FF] flex items-center justify-center">
                <Trophy className="w-8 h-8 text-white" />
              </div>
              <h3 className="text-xl font-bold text-white mb-4">Gamification</h3>
              <p className="text-gray-400">
                XP 획득, 스트릭 유지, 카드 수집! 공부가 아닌 게임처럼 즐겨요.
              </p>
            </motion.div>

            {/* 특징 카드 3 */}
            <motion.div
              initial={{ opacity: 0, y: 30 }}
              whileInView={{ opacity: 1, y: 0 }}
              viewport={{ once: true }}
              transition={{ delay: 0.3 }}
              className="card p-8 text-center hover:border-[#00F0FF]/50 transition-colors"
            >
              <div className="w-16 h-16 mx-auto mb-6 rounded-full bg-gradient-to-r from-[#00F0FF] to-[#22C55E] flex items-center justify-center">
                <Flame className="w-8 h-8 text-white" />
              </div>
              <h3 className="text-xl font-bold text-white mb-4">Instant Access</h3>
              <p className="text-gray-400">
                앱 설치 없이 링크 클릭 즉시! 어디서든 바로 플레이 가능해요.
              </p>
            </motion.div>
          </div>
        </div>
      </section>

      {/* CTA 섹션 */}
      <section className="py-20 px-6">
        <motion.div
          initial={{ opacity: 0, scale: 0.95 }}
          whileInView={{ opacity: 1, scale: 1 }}
          viewport={{ once: true }}
          className="max-w-4xl mx-auto card p-12 text-center relative overflow-hidden"
        >
          <div className="absolute inset-0 bg-gradient-to-r from-[#FF007F]/20 to-[#7C3AED]/20 -z-10" />
          <h2 className="text-3xl md:text-4xl font-bold text-white mb-6">
            Ready to become a K-Expert?
          </h2>
          <p className="text-xl text-gray-400 mb-8">
            무료로 시작하고, 내 최애의 말을 완벽히 알아들어 보세요!
          </p>
          <Link
            href="/learn"
            className="btn-primary px-10 py-4 text-white font-bold text-xl inline-flex items-center gap-2"
          >
            <Play className="w-6 h-6" />
            Start Learning Now
          </Link>
        </motion.div>
      </section>

      {/* 푸터 */}
      <footer className="py-8 px-6 border-t border-white/10">
        <div className="max-w-6xl mx-auto text-center text-gray-500 text-sm">
          <p>© 2024 K-Dictation : Stantalk. All rights reserved.</p>
          <p className="mt-2">Made with 💖 for K-Pop fans worldwide</p>
        </div>
      </footer>
    </main>
  );
}
