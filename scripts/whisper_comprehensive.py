#!/usr/bin/env python3
"""
모든 콘텐츠의 YouTube 영상을 Whisper로 분석하여 정확한 타임스탬프와 문장 추출
각 그룹의 첫 번째 콘텐츠만 처리 (효율성)
"""

import os
import json
import subprocess
import sys

os.environ['PATH'] = f"/home/qwer/.local/bin:{os.environ['PATH']}"
sys.path.insert(0, '/home/qwer/Workspace/kdictation/scripts')

from patterns_expanded import LEARNING_PATTERNS, find_learning_sentences

# 각 그룹의 첫 번째 콘텐츠 video ID (데이터베이스 마이그레이션에서 추출)
VIDEO_DATA = [
    # BTS - [VLOG] V의 하와이 브이로그
    ('thBtkE54Abo', 'BTS', '[VLOG] V의 하와이 브이로그'),
    # NewJeans - [Jeans ZINE+] 연말 파티 ZIP
    ('OMVoxddjWmM', 'NewJeans', '[Jeans ZINE+] 연말 파티 ZIP'),
    # BLACKPINK - 24/365 with BLACKPINK
    ('vy_mB6QY-Sc', 'BLACKPINK', '24/365 with BLACKPINK'),
    # IVE - IVE ON
    ('hownMyg3g3M', 'IVE', 'IVE ON EP.33'),
    # aespa - aespa SYNK
    ('EnDBSEazby4', 'aespa', '[aespa SYNK] VLOG'),
    # Stray Kids - SKZ-TALKER
    ('urNLPgalt6o', 'Stray Kids', '[SKZ-TALKER] Ep.77'),
    # SEVENTEEN - INSIDE SEVENTEEN
    ('MQ9fqyO0Oc0', 'SEVENTEEN', '[INSIDE SEVENTEEN]'),
    # TWICE - MOMO-Log
    ('35kacj9xT9c', 'TWICE', '[MOMO-Log]'),
    # LE SSERAFIM - LESSERAFIM LOG
    ('9wI4ZQLmlhs', 'LE SSERAFIM', '[LESSERAFIM LOG]'),
    # ITZY - ITZY LOG
    ('BPAryWcO6jI', 'ITZY', '[ITZY LOG]'),
    # (G)I-DLE - I-TALK
    ('MbqitUOcMxw', '(G)I-DLE', '[GOING SEVENTEEN]'),
    # ENHYPEN - EN-O CLOCK
    ('35kacj9xT9c', 'ENHYPEN', '[EN-O CLOCK]'),
    # TXT - T:TIME
    ('a0rMb-w4P_0', 'TXT', '[MOMO-Log]'),
    # ILLIT - ILLIT LOG
    ('9JNvdo4UeuA', 'ILLIT', '팬미팅 비하인드'),
    # NMIXX - NMIXX VLOG
    ('fd68xm_7BKk', 'NMIXX', 'NMIXX VLOG'),
    # BABYMONSTER
    ('CbNOHcmMjFw', 'BABYMONSTER', 'BAEMON HOUSE'),
    # TWS
    ('OdGY7PRUhzc', 'TWS', 'TWS:ERIES'),
    # BOYNEXTDOOR
    ('LWK6F-M_Kz4', 'BOYNEXTDOOR', 'BEHINDOOR'),
    # fromis_9
    ('rW1Y1wYP58w', 'fromis_9', '9_log'),
    # NCT 127
    ('E1_EKqGqBsg', 'NCT 127', 'THE MOMENTUM LOG'),
    # NCT DREAM
    ('mfWf5kH_U2c', 'NCT DREAM', 'DREAM LOG'),
    # Red Velvet
    ('P7o4h7P2xBY', 'Red Velvet', 'Vlog'),
    # ATEEZ
    ('lsMc1Q42_7k', 'ATEEZ', 'log_logbook'),
    # Hearts2Hearts
    ('tRDiqDCsyOU', 'Hearts2Hearts', 'BH2ND'),
    # IZNA
    ('oYJOhd5Qqn0', 'IZNA', 'izlog'),
    # RIIZE
    ('V2V9aKe5f8Q', 'RIIZE', 'RISE & REALIZE'),
    # ZEROBASEONE
    ('KaetebnV9rc', 'ZEROBASEONE', 'ZE_pisode'),
    # xikers
    ('0nBGCaydqKo', 'xikers', '인싸이커스'),
    # KISS OF LIFE
    ('MZXdbnM8KZA', 'KISS OF LIFE', 'KI-OFF'),
    # Kep1er
    ('OAcxiqfwCdI', 'Kep1er', 'Kep1us'),
    # MEOVV
    ('fzdoRd5ErPM', 'MEOVV', 'INSIDE MEOVV'),
    # WayV
    ('k4KBtZifDpY', 'WayV', 'Behind the Scenes'),
]

# 이미 검증된 video ID (Whisper 분석 완료)
VERIFIED_IDS = {
    'OMVoxddjWmM', 'EnDBSEazby4', 'urNLPgalt6o', 'BPAryWcO6jI',  # Batch 1
    'hownMyg3g3M', '9wI4ZQLmlhs',  # 확장 분석
    'MQ9fqyO0Oc0', 'MbqitUOcMxw', '35kacj9xT9c', 'a0rMb-w4P_0',  # Whisper all groups
    'fd68xm_7BKk', '0nBGCaydqKo', 'MZXdbnM8KZA', 'OAcxiqfwCdI', 'fzdoRd5ErPM',
}

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
        print(f"    Download failed")
        return None

def transcribe(audio_path: str) -> tuple:
    import whisper
    
    print(f"    Transcribing...")
    model = whisper.load_model("base")
    result = model.transcribe(audio_path, language="ko")
    
    return result['text'], result.get('segments', [])

def generate_sql(results: list) -> str:
    lines = ["-- 전체 콘텐츠 Whisper AI 타임스탬프 종합 수정", "-- 각 그룹별 첫 번째 콘텐츠에 대해 정확한 타임스탬프 적용", ""]
    
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
    skip_count = 0
    fail_count = 0
    
    videos_to_process = [(v, a, t) for v, a, t in VIDEO_DATA if v not in VERIFIED_IDS]
    print(f"Processing {len(videos_to_process)} videos (skipping {len(VERIFIED_IDS)} already verified)\n")
    
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
                    print(f"      [{c['start_sec']}s] {c['full_sentence'][:25]}... -> {c['answer_word']}")
                results.append({
                    'video_id': video_id,
                    'artist': artist,
                    'title': title,
                    'challenges': challenges
                })
                success_count += 1
            else:
                print(f"    ✗ No matches found")
                fail_count += 1
        except Exception as e:
            print(f"    Error: {e}")
            fail_count += 1
    
    # SQL 생성
    if results:
        sql_path = "/home/qwer/Workspace/kdictation/supabase/migrations/028_comprehensive_timestamp_fix.sql"
        sql = generate_sql(results)
        
        with open(sql_path, 'w', encoding='utf-8') as f:
            f.write(sql)
        
        print(f"\n{'='*60}")
        print(f"SUMMARY")
        print(f"{'='*60}")
        print(f"  Success: {success_count}")
        print(f"  Failed/No Match: {fail_count}")
        print(f"  SQL saved to: {sql_path}")
        
        # JSON 저장
        json_path = "/home/qwer/Workspace/kdictation/comprehensive_whisper_results.json"
        with open(json_path, 'w', encoding='utf-8') as f:
            json.dump(results, f, ensure_ascii=False, indent=2)
    else:
        print("\nNo new results to save.")

if __name__ == '__main__':
    main()
