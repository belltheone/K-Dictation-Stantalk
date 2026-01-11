#!/usr/bin/env python3
"""
확장된 패턴으로 모든 영상 재분석
"""

import os
import json
import re
import subprocess
import sys

os.environ['PATH'] = f"/home/qwer/.local/bin:{os.environ['PATH']}"

# 확장된 패턴 임포트
from patterns_expanded import LEARNING_PATTERNS, find_learning_sentences

# 분석할 영상 목록 (이전에 실패했거나 새로운 영상)
VIDEOS_TO_ANALYZE = [
    # 이전에 실패한 영상들
    ('thBtkE54Abo', 'BTS', '[VLOG] V의 하와이 브이로그'),
    ('vy_mB6QY-Sc', 'BLACKPINK', '24/365 with BLACKPINK'),
    ('hownMyg3g3M', 'IVE', 'I-LAND Talk'),
    ('MQ9fqyO0Oc0', 'SEVENTEEN', '[GOING SEVENTEEN] EP.1'),
    ('u1O2b6tQjtw', 'TWICE', 'TIME TO TWICE'),
    ('9wI4ZQLmlhs', 'LE SSERAFIM', '[LESSERAFIM LOG]'),
    
    # 추가 영상들 (Batch 3-6에서)
    ('8tTDn77e3qI', '(G)I-DLE', 'I-TALK'),
    ('3e0T8bDPwnw', 'ENHYPEN', 'EN-O CLOCK'),
    ('rPuHDN0HKOY', 'TXT', 'T:TIME'),
    ('7vEBW-TVqxU', 'BABYMONSTER', 'BAEMON HOUSE'),
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

def generate_sql(results: list) -> str:
    lines = ["-- 확장된 패턴으로 Whisper AI 타임스탬프 추출", ""]
    
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
    
    for video_id, artist, title in VIDEOS_TO_ANALYZE:
        print(f"\n[{artist}] {title} ({video_id})")
        
        audio_path = download_audio(video_id)
        if not audio_path:
            print("    ✗ Failed to download")
            continue
        
        transcript, segments = transcribe(audio_path)
        print(f"    Found {len(segments)} segments")
        
        # 확장된 패턴으로 분석
        challenges = find_learning_sentences(segments, max_results=3)
        
        if challenges:
            print(f"    ✓ Found {len(challenges)} sentences:")
            for c in challenges:
                print(f"      [{c['start_sec']}s] {c['full_sentence']} -> {c['answer_word']}")
            results.append({
                'video_id': video_id,
                'artist': artist,
                'title': title,
                'challenges': challenges
            })
        else:
            # 세그먼트 일부 출력해서 디버깅
            print("    ✗ No matching sentences. Sample segments:")
            for s in segments[:5]:
                print(f"      [{s['start']:.0f}s] {s['text']}")
    
    # SQL 생성
    if results:
        sql = generate_sql(results)
        
        sql_path = "supabase/migrations/026_fix_timestamps_expanded.sql"
        with open(sql_path, 'w', encoding='utf-8') as f:
            f.write(sql)
        
        print(f"\n{'='*60}")
        print(f"Generated SQL for {len(results)} videos")
        print(f"Saved to {sql_path}")
        print(f"{'='*60}")
        
        # JSON 저장
        with open('whisper_expanded_results.json', 'w', encoding='utf-8') as f:
            json.dump(results, f, ensure_ascii=False, indent=2)

if __name__ == '__main__':
    main()
