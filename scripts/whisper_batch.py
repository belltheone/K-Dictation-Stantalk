#!/usr/bin/env python3
"""
모든 그룹의 첫 번째 영상 처리하여 SQL 마이그레이션 생성
"""

import os
import json
import re
import subprocess
import sys

os.environ['PATH'] = f"/home/qwer/.local/bin:{os.environ['PATH']}"

# 각 그룹의 첫 번째 영상 ID (마이그레이션 파일에서 추출)
FIRST_VIDEOS = [
    # Batch 1
    ('thBtkE54Abo', 'BTS', '[VLOG] V의 하와이 브이로그'),
    ('OMVoxddjWmM', 'NewJeans', '[Jeans ZINE+] 연말 파티 ZIP'),
    ('vy_mB6QY-Sc', 'BLACKPINK', '24/365 with BLACKPINK'),
    ('hownMyg3g3M', 'IVE', 'I-LAND Talk'),
    ('EnDBSEazby4', 'aespa', '[aespa SYNK] VLOG'),
    
    # Batch 2
    ('urNLPgalt6o', 'Stray Kids', '[SKZ-TALKER] Ep.77'),
    ('MQ9fqyO0Oc0', 'SEVENTEEN', '[GOING SEVENTEEN] EP.1'),
    ('u1O2b6tQjtw', 'TWICE', 'TIME TO TWICE'),
    ('9wI4ZQLmlhs', 'LE SSERAFIM', '[LESSERAFIM LOG]'),
    ('BPAryWcO6jI', 'ITZY', '[ITZY LOG]'),
]

LEARNING_PATTERNS = [
    (r'(.{3,15})(맛있어요)', '맛있다', 'It is delicious'),
    (r'(.{3,15})(좋아요)', '좋다', 'It is good'),
    (r'(.{3,15})(좋아해요)', '좋아하다', 'I like it'),
    (r'(.{3,15})(재미있어요)', '재미있다', 'It is fun'),
    (r'(.{3,15})(예뻐요)', '예쁘다', 'It is pretty'),
    (r'(.{3,15})(멋있어요)', '멋있다', 'It is cool'),
    (r'(.{3,15})(행복해요)', '행복하다', 'I am happy'),
    (r'(.{3,15})(힘들어요)', '힘들다', 'It is hard'),
    (r'(.{3,15})(좋았어요)', '좋다', 'It was good'),
    (r'(.{3,15})(맛있었어요)', '맛있다', 'It was delicious'),
    (r'(.{3,15})(재미있었어요)', '재미있다', 'It was fun'),
    (r'(.{3,15})(먹었어요)', '먹다', 'I ate'),
    (r'(.{3,15})(봤어요)', '보다', 'I saw'),
    (r'(.{3,15})(갔어요)', '가다', 'I went'),
    (r'(.{3,15})(왔어요)', '오다', 'I came'),
    (r'(.{3,15})(했어요)', '하다', 'I did'),
    (r'(.{3,20})(줄 알았어요)', None, 'I thought'),
    (r'(.{3,15})(감사합니다|감사해요)', '감사하다', 'Thank you'),
    (r'(.{3,15})(사랑해요)', '사랑하다', 'I love you'),
    (r'(.{3,15})(뭐야\?*)', None, 'What is this?'),
    (r'(.{3,15})(없어요)', '없다', 'There is none'),
    (r'(.{3,15})(있어요)', '있다', 'There is'),
]

def download_audio(video_id: str, audio_dir: str = "temp_audio") -> str:
    os.makedirs(audio_dir, exist_ok=True)
    audio_path = f"{audio_dir}/{video_id}.mp3"
    
    if os.path.exists(audio_path):
        return audio_path
    
    print(f"    Downloading audio...")
    cmd = [
        "yt-dlp", "-x", "--audio-format", "mp3", "--audio-quality", "5",
        "-o", audio_path, "--download-sections", "*0:00-2:00",
        f"https://www.youtube.com/watch?v={video_id}"
    ]
    
    try:
        subprocess.run(cmd, capture_output=True, check=True, timeout=120)
        return audio_path
    except:
        return None

def transcribe(audio_path: str) -> tuple:
    import whisper
    
    print(f"    Transcribing with Whisper...")
    model = whisper.load_model("base")
    result = model.transcribe(audio_path, language="ko")
    
    return result['text'], result.get('segments', [])

def find_sentences(segments: list) -> list:
    results = []
    
    for segment in segments:
        text = segment['text'].strip()
        start = segment['start']
        end = segment['end']
        
        for pattern, base_form, hint_en in LEARNING_PATTERNS:
            match = re.search(pattern, text)
            if match:
                full_sentence = match.group(0).strip()
                answer_word = match.group(2)
                
                if len(full_sentence) >= 6:
                    results.append({
                        'start_sec': int(start),
                        'end_sec': int(end) + 2,
                        'full_sentence': full_sentence,
                        'answer_word': answer_word,
                        'base_form': base_form,
                        'hint_en': hint_en,
                    })
                break
    
    seen = set()
    unique = []
    for r in results:
        if r['answer_word'] not in seen:
            seen.add(r['answer_word'])
            unique.append(r)
    
    return unique[:1]  # 첫 번째만

def generate_sql(results: list) -> str:
    lines = ["-- Whisper AI로 추출한 정확한 타임스탬프로 챌린지 업데이트", ""]
    
    for r in results:
        if not r['challenges']:
            continue
            
        video_id = r['video_id']
        c = r['challenges'][0]
        
        lines.append(f"-- {r['artist']}: {r['title']}")
        lines.append(f"""UPDATE challenges 
SET start_sec = {c['start_sec']},
    end_sec = {c['end_sec']},
    full_sentence = '{c['full_sentence'].replace("'", "''")}',
    answer_word = '{c['answer_word']}',
    base_form = {f"'{c['base_form']}'" if c['base_form'] else 'NULL'},
    hint_en = '{c['hint_en']}'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = '{video_id}');
""")
    
    return "\n".join(lines)

def main():
    results = []
    
    for video_id, artist, title in FIRST_VIDEOS:
        print(f"\n[{artist}] {title} ({video_id})")
        
        audio_path = download_audio(video_id)
        if not audio_path:
            print("    Failed to download")
            continue
        
        transcript, segments = transcribe(audio_path)
        print(f"    Found {len(segments)} segments")
        
        challenges = find_sentences(segments)
        
        if challenges:
            print(f"    ✓ Found: [{challenges[0]['start_sec']}s] {challenges[0]['full_sentence']}")
            results.append({
                'video_id': video_id,
                'artist': artist,
                'title': title,
                'challenges': challenges
            })
        else:
            print("    ✗ No matching sentences")
    
    # SQL 생성
    if results:
        sql = generate_sql(results)
        
        sql_path = "supabase/migrations/025_fix_timestamps_whisper.sql"
        with open(sql_path, 'w', encoding='utf-8') as f:
            f.write(sql)
        
        print(f"\n{'='*60}")
        print(f"Generated SQL for {len(results)} videos")
        print(f"Saved to {sql_path}")
        print(f"{'='*60}")
        print(sql)
        
        # JSON 저장
        with open('whisper_all_results.json', 'w', encoding='utf-8') as f:
            json.dump(results, f, ensure_ascii=False, indent=2)

if __name__ == '__main__':
    main()
