#!/usr/bin/env python3
"""
모든 그룹의 첫 번째 영상을 Whisper로 분석하여 정확한 타임스탬프 추출
"""

import os
import json
import subprocess
import sys

os.environ['PATH'] = f"/home/qwer/.local/bin:{os.environ['PATH']}"
sys.path.insert(0, '/home/qwer/Workspace/kdictation/scripts')

from patterns_expanded import LEARNING_PATTERNS, find_learning_sentences

# 모든 그룹의 첫 번째 영상 (이미 분석된 것 제외)
ALL_VIDEOS = [
    # Batch 1
    ('thBtkE54Abo', 'BTS', '[VLOG] V의 하와이 브이로그'),
    ('OMVoxddjWmM', 'NewJeans', '[Jeans ZINE+] 연말 파티 ZIP'),  # 완료
    ('vy_mB6QY-Sc', 'BLACKPINK', '24/365 with BLACKPINK'),
    ('hownMyg3g3M', 'IVE', 'I-LAND Talk'),  # 완료
    ('EnDBSEazby4', 'aespa', '[aespa SYNK] VLOG'),  # 완료
    
    # Batch 2
    ('urNLPgalt6o', 'Stray Kids', '[SKZ-TALKER] Ep.77'),  # 완료
    ('MQ9fqyO0Oc0', 'SEVENTEEN', '[GOING SEVENTEEN] EP.1'),
    ('u1O2b6tQjtw', 'TWICE', 'TIME TO TWICE'),
    ('9wI4ZQLmlhs', 'LE SSERAFIM', '[LESSERAFIM LOG]'),  # 완료
    ('BPAryWcO6jI', 'ITZY', '[ITZY LOG]'),  # 완료
    
    # Batch 3
    ('MbqitUOcMxw', '(G)I-DLE', '[I-TALK] 시리즈'),
    ('35kacj9xT9c', 'ENHYPEN', '[EN-O CLOCK]'),
    ('a0rMb-w4P_0', 'TXT', '[T:TIME]'),
    ('9JNvdo4UeuA', 'ILLIT', '[ILLIT LOG]'),
    ('fd68xm_7BKk', 'NMIXX', '[NMIXX VLOG]'),
    
    # Batch 4
    ('CbNOHcmMjFw', 'BABYMONSTER', 'BAEMON HOUSE'),
    ('OdGY7PRUhzc', 'TWS', 'TWS:ERIES'),
    ('LWK6F-M_Kz4', 'BOYNEXTDOOR', 'BEHINDOOR'),
    ('rW1Y1wYP58w', 'fromis_9', '9_log'),
    ('E1_EKqGqBsg', 'NCT 127', 'THE MOMENTUM LOG'),
    
    # Batch 5
    ('mfWf5kH_U2c', 'NCT DREAM', 'DREAM LOG'),
    ('P7o4h7P2xBY', 'Red Velvet', 'Vlog'),
    ('lsMc1Q42_7k', 'ATEEZ', 'log_logbook'),
    ('tRDiqDCsyOU', 'Hearts2Hearts', 'BH2ND'),
    ('oYJOhd5Qqn0', 'IZNA', 'izlog'),
    ('V2V9aKe5f8Q', 'RIIZE', 'RISE & REALIZE'),
    
    # Batch Final
    ('KaetebnV9rc', 'ZEROBASEONE', 'ZE_pisode'),
    ('0nBGCaydqKo', 'xikers', '인싸이커스'),
    ('MZXdbnM8KZA', 'KISS OF LIFE', 'KI-OFF'),
    ('OAcxiqfwCdI', 'Kep1er', 'Kep1us'),
    ('fzdoRd5ErPM', 'MEOVV', 'INSIDE MEOVV'),
    ('k4KBtZifDpY', 'WayV', 'Behind the Scenes'),
]

# 이미 완료된 영상
COMPLETED = {'OMVoxddjWmM', 'hownMyg3g3M', 'EnDBSEazby4', 'urNLPgalt6o', '9wI4ZQLmlhs', 'BPAryWcO6jI'}

def download_audio(video_id: str) -> str:
    audio_dir = "/home/qwer/Workspace/kdictation/temp_audio"
    os.makedirs(audio_dir, exist_ok=True)
    audio_path = f"{audio_dir}/{video_id}.mp3"
    
    if os.path.exists(audio_path):
        return audio_path
    
    print(f"    Downloading...")
    cmd = [
        "yt-dlp", "-x", "--audio-format", "mp3", "--audio-quality", "5",
        "-o", audio_path, "--download-sections", "*0:00-2:00",
        f"https://www.youtube.com/watch?v={video_id}"
    ]
    
    try:
        result = subprocess.run(cmd, capture_output=True, check=True, timeout=180)
        return audio_path
    except Exception as e:
        print(f"    Download failed: {e}")
        return None

def transcribe(audio_path: str) -> tuple:
    import whisper
    
    print(f"    Transcribing...")
    model = whisper.load_model("base")
    result = model.transcribe(audio_path, language="ko")
    
    return result['text'], result.get('segments', [])

def generate_sql(results: list) -> str:
    lines = ["-- Whisper AI로 모든 그룹 타임스탬프 추출 (확장 패턴)", ""]
    
    for r in results:
        if not r.get('challenges'):
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
    success_count = 0
    fail_count = 0
    
    videos_to_process = [(v, a, t) for v, a, t in ALL_VIDEOS if v not in COMPLETED]
    print(f"Processing {len(videos_to_process)} videos (skipping {len(COMPLETED)} already done)\n")
    
    for i, (video_id, artist, title) in enumerate(videos_to_process):
        print(f"[{i+1}/{len(videos_to_process)}] {artist}: {title} ({video_id})")
        
        audio_path = download_audio(video_id)
        if not audio_path:
            fail_count += 1
            continue
        
        try:
            transcript, segments = transcribe(audio_path)
            print(f"    Found {len(segments)} segments")
            
            challenges = find_learning_sentences(segments, max_results=3)
            
            if challenges:
                print(f"    ✓ {len(challenges)} matches:")
                for c in challenges[:2]:
                    print(f"      [{c['start_sec']}s] {c['full_sentence'][:30]}... -> {c['answer_word']}")
                results.append({
                    'video_id': video_id,
                    'artist': artist,
                    'title': title,
                    'challenges': challenges
                })
                success_count += 1
            else:
                print(f"    ✗ No matches")
                # 샘플 출력
                for s in segments[:3]:
                    print(f"      [{s['start']:.0f}s] {s['text'][:50]}...")
                fail_count += 1
        except Exception as e:
            print(f"    Error: {e}")
            fail_count += 1
    
    # SQL 생성
    sql_path = "/home/qwer/Workspace/kdictation/supabase/migrations/027_fix_all_timestamps_whisper.sql"
    sql = generate_sql(results)
    
    with open(sql_path, 'w', encoding='utf-8') as f:
        f.write(sql)
    
    # JSON 저장
    json_path = "/home/qwer/Workspace/kdictation/whisper_all_results.json"
    with open(json_path, 'w', encoding='utf-8') as f:
        json.dump(results, f, ensure_ascii=False, indent=2)
    
    print(f"\n{'='*60}")
    print(f"SUMMARY")
    print(f"{'='*60}")
    print(f"  Success: {success_count}")
    print(f"  Failed: {fail_count}")
    print(f"  SQL saved to: {sql_path}")
    print(f"  JSON saved to: {json_path}")

if __name__ == '__main__':
    main()
