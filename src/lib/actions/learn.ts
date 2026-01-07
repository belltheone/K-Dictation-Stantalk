"use server";

// 학습 관련 Server Actions
import { createClient } from "@/lib/supabase/server";
import { validateAnswer as validateAnswerUtil } from "@/lib/utils";

// 정답 제출 처리
export async function submitAnswer(challengeId: string, userInput: string) {
    const supabase = await createClient();
    const { data: { user } } = await supabase.auth.getUser();

    // 챌린지 정보 조회
    const { data: challenge, error: challengeError } = await supabase
        .from("challenges")
        .select("answer_word, base_form")
        .eq("id", challengeId)
        .single();

    if (challengeError || !challenge) {
        return { success: false, message: "Challenge not found", gainedXp: 0 };
    }

    // 정답 검증
    const result = validateAnswerUtil(userInput, challenge.answer_word);

    if (result.isCorrect) {
        const xpGained = result.isTypoAccepted ? 8 : 10; // 오타 허용 시 XP 약간 감소

        // 로그인 사용자의 경우 진행 상황 저장
        if (user) {
            // user_progress 저장
            await supabase
                .from("user_progress")
                .insert({
                    user_id: user.id,
                    challenge_id: challengeId,
                    is_correct: true,
                    attempts: 1,
                });

            // XP 증가
            const { data: profile } = await supabase
                .from("users")
                .select("xp")
                .eq("id", user.id)
                .single();

            if (profile) {
                await supabase
                    .from("users")
                    .update({ xp: profile.xp + xpGained })
                    .eq("id", user.id);
            }
        }

        return {
            success: true,
            message: result.isTypoAccepted ? "Correct! (typo accepted)" : "Perfect!",
            gainedXp: xpGained,
            correctSpelling: challenge.answer_word,
        };
    }

    // 오답인 경우
    if (user) {
        await supabase
            .from("user_progress")
            .insert({
                user_id: user.id,
                challenge_id: challengeId,
                is_correct: false,
                attempts: 1,
            });
    }

    return {
        success: false,
        message: "Try again!",
        gainedXp: 0,
        similarity: result.similarity,
    };
}

// 단어장 토글 (저장/삭제)
export async function toggleVocab(word: string, meaning: string, exampleSentence?: string) {
    const supabase = await createClient();
    const { data: { user } } = await supabase.auth.getUser();

    if (!user) {
        return { isSaved: false, error: "Login required" };
    }

    // 이미 저장되어 있는지 확인
    const { data: existing } = await supabase
        .from("vocab_book")
        .select("id")
        .eq("user_id", user.id)
        .eq("word", word)
        .single();

    if (existing) {
        // 이미 있으면 삭제
        await supabase
            .from("vocab_book")
            .delete()
            .eq("id", existing.id);

        return { isSaved: false };
    } else {
        // 없으면 저장
        await supabase
            .from("vocab_book")
            .insert({
                user_id: user.id,
                word,
                meaning,
                example_sentence: exampleSentence,
            });

        return { isSaved: true };
    }
}

// 콘텐츠 목록 가져오기
export async function getContents(artistName?: string) {
    const supabase = await createClient();

    let query = supabase
        .from("contents")
        .select("*")
        .eq("is_published", true)
        .order("created_at", { ascending: false });

    if (artistName) {
        query = query.eq("artist_name", artistName);
    }

    const { data, error } = await query;

    if (error) {
        console.error("콘텐츠 조회 에러:", error.message);
        return [];
    }

    return data || [];
}

// 챌린지 목록 가져오기
export async function getChallenges(contentId: string) {
    const supabase = await createClient();

    const { data, error } = await supabase
        .from("challenges")
        .select("*")
        .eq("content_id", contentId)
        .order("order_index", { ascending: true });

    if (error) {
        console.error("챌린지 조회 에러:", error.message);
        return [];
    }

    return data || [];
}

// 사용자 진행 상황 가져오기
export async function getUserProgress() {
    const supabase = await createClient();
    const { data: { user } } = await supabase.auth.getUser();

    if (!user) {
        return [];
    }

    const { data, error } = await supabase
        .from("user_progress")
        .select(`
      *,
      challenges (
        full_sentence,
        content_id,
        contents (
          title,
          artist_name
        )
      )
    `)
        .eq("user_id", user.id)
        .order("created_at", { ascending: false })
        .limit(20);

    if (error) {
        console.error("진행 상황 조회 에러:", error.message);
        return [];
    }

    return data || [];
}

// 단어장 목록 가져오기
export async function getVocabBook() {
    const supabase = await createClient();
    const { data: { user } } = await supabase.auth.getUser();

    if (!user) {
        return [];
    }

    const { data, error } = await supabase
        .from("vocab_book")
        .select("*")
        .eq("user_id", user.id)
        .order("created_at", { ascending: false });

    if (error) {
        console.error("단어장 조회 에러:", error.message);
        return [];
    }

    return data || [];
}
