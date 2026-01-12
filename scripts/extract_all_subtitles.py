#!/usr/bin/env python3
"""
모든 YouTube 영상에서 자막을 추출하고 SQL 마이그레이션 생성
"""

from youtube_transcript_api import YouTubeTranscriptApi
import json
import re
import os

# 데이터베이스의 현재 영상 ID 목록 (마이그레이션에서 복사)
VIDEOS = {
    # Stray Kids
    'Stray Kids': [
        ('urNLPgalt6o', '[SKZ-TALKER] Ep.77'),
        ('JZ_S3F4SuXQ', '[SKZ-RECORD] 승민 Deja Vu'),
        ('d6X2sJXP0Ls', '[SKZ-TALKER] Ep.76'),
        ('ZN6xsKglYD8', '[SKZ-TALKER] Ep.75'),
        ('9BmGE8F5XaE', 'SKZ CODE Ep.46'),
    ],
    # SEVENTEEN
    'SEVENTEEN': [
        ('U6gHVk-68A8', '[GOING SEVENTEEN] MAFIA GAME #1'),
        ('Xz9KKglNLZg', 'HIT THE ROAD 비하인드'),
        ('NQmLGk6A6B0', '[INSIDE SEVENTEEN] 콘서트 비하인드'),
    ],
    # NewJeans
    'NewJeans': [
        ('OMVoxddjWmM', '[Jeans ZINE+] 연말 파티 ZIP'),
        ('l8I70sQNBfg', '[Bunnies CAMP] EP.2'),
        ('bxnjLevx_HM', '[Jeans ZINE+] Get Ready With Me'),
    ],
}

# 학습 패턴 (정규식, 기본형, 영어 힌트)
LEARNING_PATTERNS = [
    (r'(.{0,8})(재미있어요|재미있었어요)', '재미있다', 'It is/was fun'),
    (r'(.{0,8})(좋아요|좋았어요)', '좋다', 'It is/was good'),
    (r'(.{0,8})(힘들어요|힘들었어요)', '힘들다', 'It is/was hard'),
    (r'(.{0,8})(기뻐요|기뻤어요)', '기쁘다', 'I am/was happy'),
    (r'(.{0,8})(예뻐요|예뻤어요)', '예쁘다', 'It is/was pretty'),
    (r'(.{0,8})(멋있어요|멋있었어요)', '멋있다', 'It is/was cool'),
    (r'(.{0,8})(맛있어요|맛있었어요)', '맛있다', 'It is/was delicious'),
    (r'(.{0,8})(행복해요|행복했어요)', '행복하다', 'I am/was happy'),
    (r'(.{0,8})(감사해요|감사합니다)', '감사하다', 'Thank you'),
    (r'(.{0,8})(사랑해요|사랑합니다)', '사랑하다', 'I love you'),
    (r'(.{0,8})(보고 싶어요|보고 싶었어요)', '보고 싶다', 'I miss'),
    (r'(.{0,8})(떨려요|떨렸어요)', '떨리다', 'I am/was nervous'),
    (r'(.{0,8})(긴장돼요|긴장됐어요)', '긴장되다', 'I am/was nervous'),
    (r'(.{0,8})(대박)', None, 'amazing'),
    (r'(.{0,8})(최고)', None, 'the best'),
    (r'(.{0,8})(귀여워요|귀여웠어요)', '귀엽다', 'It is/was cute'),
    (r'(.{0,8})(신나요|신났어요)', '신나다', 'I am/was excited'),
    (r'(.{0,8})(피곤해요|피곤했어요)', '피곤하다', 'I am/was tired'),
]

def extract_transcript(video_id: str) -> list:
    """YouTube 자막 추출"""
    try:
        ytt_api = YouTubeTranscriptApi()
        try:
            transcript = ytt_api.fetch(video_id, languages=['ko'])
            return [{'text': s.text, 'start': s.start, 'duration': s.duration} for s in transcript.snippets]
        except:
            return []
    except:
        return []

def find_learning_sentences(transcript: list) -> list:
    """학습에 적합한 문장 찾기"""
    results = []
    
    for segment in transcript:
        text = segment['text'].replace('\n', ' ')
        start = segment['start']
        duration = segment.get('duration', 3)
        
        for pattern, base_form, hint_en in LEARNING_PATTERNS:
            match = re.search(pattern, text)
            if match:
                full_sentence = match.group(0).strip()
                answer_word = match.group(2)
                
                # 너무 짧은 문장 제외
                if len(full_sentence) < 4:
                    continue
                
                results.append({
                    'start_sec': int(start),
                    'end_sec': int(start + duration + 2),
                    'full_sentence': full_sentence,
                    'answer_word': answer_word,
                    'base_form': base_form,
                    'hint_en': hint_en,
                })
                break  # 한 세그먼트에서 하나만
    
    # 중복 answer_word 제거
    seen = set()
    unique = []
    for r in results:
        if r['answer_word'] not in seen:
            seen.add(r['answer_word'])
            unique.append(r)
    
    return unique[:3]  # 최대 3개

def generate_sql_update(video_id: str, challenges: list) -> str:
    """SQL UPDATE 문 생성"""
    if not challenges:
        return ""
    
    c = challenges[0]  # 첫 번째 챌린지 사용
    
    # full_sentence에서 answer_word를 _____로 대체
    display_sentence = c['full_sentence'].replace(c['answer_word'], '_____')
    
    sql = f"""
-- Update challenge for video {video_id}
UPDATE challenges 
SET start_sec = {c['start_sec']},
    end_sec = {c['end_sec']},
    full_sentence = '{c['full_sentence'].replace("'", "''")}',
    answer_word = '{c['answer_word']}',
    base_form = {f"'{c['base_form']}'" if c['base_form'] else 'NULL'},
    hint_en = '{c['hint_en']}'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = '{video_id}');
"""
    return sql

def main():
    all_results = []
    sql_updates = []
    
    for artist, videos in VIDEOS.items():
        print(f"\n=== {artist} ===")
        for video_id, title in videos:
            print(f"Processing: {title}")
            transcript = extract_transcript(video_id)
            if transcript:
                challenges = find_learning_sentences(transcript)
                if challenges:
                    print(f"  Found {len(challenges)} challenges")
                    for c in challenges:
                        print(f"    [{c['start_sec']}s] {c['full_sentence']} -> {c['answer_word']}")
                    
                    all_results.append({
                        'artist': artist,
                        'video_id': video_id,
                        'title': title,
                        'challenges': challenges
                    })
                    sql_updates.append(generate_sql_update(video_id, challenges))
                else:
                    print("  No suitable sentences found")
            else:
                print("  No transcript available")
    
    # JSON 저장
    with open('extracted_challenges_all.json', 'w', encoding='utf-8') as f:
        json.dump(all_results, f, ensure_ascii=False, indent=2)
    
    # SQL 마이그레이션 파일 생성
    sql_content = """-- 실제 YouTube 자막에서 추출한 정확한 타임스탬프로 챌린지 업데이트
-- 자동 생성됨

""" + "\n".join(sql_updates)
    
    with open('supabase/migrations/024_fix_timestamps_from_subtitles.sql', 'w', encoding='utf-8') as f:
        f.write(sql_content)
    
    print(f"\n\nGenerated {len(sql_updates)} SQL updates")
    print("Saved to supabase/migrations/024_fix_timestamps_from_subtitles.sql")

if __name__ == '__main__':
    main()
