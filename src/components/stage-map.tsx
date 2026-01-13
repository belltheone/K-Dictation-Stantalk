"use client";

import { motion } from "framer-motion";
import { Link } from "@/i18n/navigation";
import { Lock, Play, Star, CheckCircle2 } from "lucide-react";
import { cn } from "@/lib/utils";

export interface StageContent {
    id: string; // real UUID
    displayId: string; // content-1 etc (optional)
    title: string;
    stage_number: number;
    difficulty: string;
    difficulty_score: number;
    is_locked: boolean;
    xp: number;
    thumbnail_url?: string;
}

interface StageMapProps {
    contents: StageContent[];
    artistId: string;
}

export function StageMap({ contents, artistId }: StageMapProps) {
    // Sort by stage number just in case
    const sortedContents = [...contents].sort((a, b) => a.stage_number - b.stage_number);

    // Generate 30 placeholders if contents are missing (during Dredge)
    // But we should ideally show what we have.
    // If we want a fixed 30 grid, we can fill gaps.
    // For now, let's render existing sorted contents.

    return (
        <div className="grid grid-cols-3 md:grid-cols-5 gap-4 md:gap-6 max-w-4xl mx-auto pb-20">
            {sortedContents.map((content, index) => {
                const isLocked = content.is_locked;
                // Determine color based on difficulty or stage
                // Gradient progresses from Green (Early) to Orange (Mid) to Red/Purple (Late)
                let borderColor = "border-zinc-700";
                let bgColor = "bg-zinc-900/50";
                let textColor = "text-zinc-500";
                let shadowColor = "";

                if (!isLocked) {
                    if (content.stage_number <= 10) {
                        borderColor = "border-emerald-500/50 hover:border-emerald-400";
                        shadowColor = "hover:shadow-[0_0_20px_rgba(16,185,129,0.3)]";
                        textColor = "text-emerald-400";
                    } else if (content.stage_number <= 20) {
                        borderColor = "border-amber-500/50 hover:border-amber-400";
                        shadowColor = "hover:shadow-[0_0_20px_rgba(245,158,11,0.3)]";
                        textColor = "text-amber-400";
                    } else {
                        borderColor = "border-rose-500/50 hover:border-rose-400";
                        shadowColor = "hover:shadow-[0_0_20px_rgba(244,63,94,0.3)]";
                        textColor = "text-rose-400";
                    }
                    bgColor = "bg-zinc-800/80 backdrop-blur-md";
                }

                return (
                    <motion.div
                        key={content.id}
                        initial={{ opacity: 0, scale: 0.8 }}
                        animate={{ opacity: 1, scale: 1 }}
                        transition={{ delay: index * 0.03 }}
                        className="relative group aspect-square"
                    >
                        {isLocked ? (
                            <div className="w-full h-full rounded-2xl border-2 border-zinc-800 bg-zinc-900/50 flex flex-col items-center justify-center gap-2 cursor-not-allowed">
                                <Lock className="w-6 h-6 text-zinc-700" />
                                <span className="text-zinc-700 font-bold text-lg">{content.stage_number}</span>
                            </div>
                        ) : (
                            <Link
                                href={`/learn/${artistId}/${content.displayId}`}
                                className={cn(
                                    "w-full h-full rounded-2xl border-2 flex flex-col items-center justify-center gap-2 transition-all duration-300 relative overflow-hidden",
                                    borderColor,
                                    bgColor,
                                    shadowColor
                                )}
                            >
                                {/* Background Number Faded */}
                                <span className="absolute -bottom-4 -right-4 text-6xl font-black text-white/5 z-0 select-none">
                                    {content.stage_number}
                                </span>

                                {/* Icon */}
                                <div className={cn(
                                    "w-10 h-10 rounded-full flex items-center justify-center bg-zinc-900/80 z-10 group-hover:scale-110 transition-transform",
                                    textColor
                                )}>
                                    <Play className="w-5 h-5 ml-0.5" fill="currentColor" />
                                </div>

                                {/* XP Badge */}
                                <div className="absolute top-2 right-2 flex items-center gap-0.5 bg-black/60 px-1.5 py-0.5 rounded-full z-10">
                                    <Star className="w-3 h-3 text-yellow-500" fill="currentColor" />
                                    <span className="text-[10px] font-bold text-white">{content.xp}</span>
                                </div>

                                {/* Title (Truncated) */}
                                <div className="absolute bottom-3 left-3 right-3 z-10">
                                    <p className="text-xs text-center text-zinc-400 line-clamp-1 group-hover:text-white transition-colors">
                                        {content.title}
                                    </p>
                                </div>
                            </Link>
                        )}

                        {/* Connecting Line (visual only, simplified) */}
                        {index < sortedContents.length - 1 && (
                            <div className="absolute top-1/2 -right-4 w-4 h-[2px] bg-zinc-800 hidden md:block opacity-0 group-hover:opacity-100 transition-opacity" />
                        )}
                    </motion.div>
                );
            })}
        </div>
    );
}
