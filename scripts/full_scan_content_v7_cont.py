#!/usr/bin/env python3
"""
The Full Scan V7 - Continuation: LE SSERAFIM 이후 아티스트만 처리
- 기존 데이터(BTS~ENHYPEN)는 유지
- 새 SQL 파일에 APPEND 모드로 저장
"""
import os
import sys
import re
import random
import time
from yt_dlp import YoutubeDL
from patterns_expanded import find_learning_sentences
from dredge_content_v4 import clean_subtitle_text, calculate_difficulty, parse_vtt_file, is_music_content, is_vlog_content, OFFICIAL_CHANNELS

# Configuration
TARGET_STAGE_COUNT = 30
VIDEOS_PER_CHANNEL = 5000
SUBTITLE_DIR = "/home/qwer/Workspace/kdictation/temp_subtitles"
OUTPUT_SQL = "supabase/migrations/043_stage_data_fullscan_cont.sql"  # 새 파일!

# LE SSERAFIM부터 끝까지 (기존 완료분 제외)
TARGET_ARTISTS = [
    "LE SSERAFIM", "ITZY", "TWICE", "G-IDLE", "NMIXX", 
    "BABYMONSTER", "BOYNEXTDOOR", "TWS", "fromis_9", "ATEEZ", 
    "Red Velvet", "RIIZE", "ZEROBASEONE", "xikers", "KISS OF LIFE", 
    "Kep1er", "MEOVV", "WayV", "ILLIT", "IZNA", "Hearts2Hearts", "QWER"
]

def get_all_channel_videos(channel_handle):
    url = f"https://www.youtube.com/{channel_handle}/videos"
    print(f"📺 채널 전수 조사 시작: {url}")
    
    ydl_opts = {
        'quiet': True,
        'extract_flat': True,
        'playlistend': VIDEOS_PER_CHANNEL,
        'ignoreerrors': True,
    }
    
    try:
        with YoutubeDL(ydl_opts) as ydl:
            result = ydl.extract_info(url, download=False)
            if result and 'entries' in result:
                return list(result['entries'])
    except Exception as e:
        print(f"  채널 접속 실패: {e}")
    return []

def download_subtitles(video_id, max_retries=3):
    url = f"https://www.youtube.com/watch?v={video_id}"
    subtitle_path = f"{SUBTITLE_DIR}/{video_id}"
    vtt_file = f"{subtitle_path}.ko.vtt"
    
    if os.path.exists(vtt_file):
        return vtt_file
        
    ydl_opts = {
        'quiet': True,
        'skip_download': True,
        'writeautomaticsub': True,
        'subtitleslangs': ['ko'],
        'outtmpl': subtitle_path,
        'ignoreerrors': True,
        'retries': 3,
    }
    
    for attempt in range(max_retries):
        try:
            delay = random.uniform(2, 5)
            print(f"    (대기 {delay:.1f}s)", end='', flush=True)
            time.sleep(delay)
            
            with YoutubeDL(ydl_opts) as ydl:
                ydl.download([url])
            
            if os.path.exists(vtt_file):
                print(" ✓")
                return vtt_file
            
            for ext in ['.ko.vtt', '.ko.srt', '.ko.json3']:
                if os.path.exists(f"{subtitle_path}{ext}"):
                    print(" ✓")
                    return f"{subtitle_path}{ext}"
            
            print(" (자막 없음)")
            return None
        except Exception:
            time.sleep(5)
    return None

def process_artist_full_scan(artist_name):
    print(f"\n{'='*60}")
    print(f"📡 전수 조사: {artist_name}")
    print(f"{'='*60}")
    
    channel_handle = OFFICIAL_CHANNELS.get(artist_name)
    if not channel_handle:
        print(f"  ❌ 채널 정보 없음")
        return []
        
    entries = get_all_channel_videos(channel_handle)
    print(f"  총 영상 수: {len(entries)}개")
    
    candidates = []
    target_videos = []
    
    for entry in entries:
        if not entry: continue
        title = entry.get('title', '')
        vid = entry.get('id')
        if is_music_content(title): continue
        target_videos.append({'id': vid, 'title': title})
        
    print(f"  🎬 처리 대상(음악 제외): {len(target_videos)}개")
    
    vlog_first = sorted(target_videos, key=lambda x: not is_vlog_content(x['title']))
    
    for i, vid_info in enumerate(vlog_first):
        if len(candidates) >= TARGET_STAGE_COUNT:
            break
            
        print(f"[{i+1}/{len(vlog_first)}] {vid_info['title'][:40]}...")
        
        sub_path = download_subtitles(vid_info['id'])
        if not sub_path: continue
        
        segments = parse_vtt_file(sub_path)
        challenges = find_learning_sentences(segments, max_results=3)
        
        for ch in challenges:
            if len(ch['full_sentence']) < 10: continue
            diff = calculate_difficulty(ch['full_sentence'], ch['end_sec'] - ch['start_sec'])
            if diff >= 999: continue
            
            candidates.append({
                'video_id': vid_info['id'],
                'title': vid_info['title'].replace("'", "''"),
                'challenge': ch,
                'difficulty': diff
            })
            print(f"    💎 발견! {ch['full_sentence'][:20]}...")
            if len(candidates) >= TARGET_STAGE_COUNT: break
            
    return candidates

def generate_sql(artist_name, candidates):
    sqls = []
    candidates.sort(key=lambda x: x['difficulty'])
    
    for stage, item in enumerate(candidates, start=1):
        ch = item['challenge']
        is_locked = 'true' if stage > 1 else 'false'
        
        safe_full = ch['full_sentence'].replace("'", "''")
        safe_answer = ch['answer_word'].replace("'", "''")
        safe_base = (ch.get('base_form') or '').replace("'", "''")
        safe_hint = (ch.get('hint_en') or '').replace("'", "''")

        sql = f"""
DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('{item['video_id']}', '{item['title']}', '{artist_name}', 'normal', {stage}, {item['difficulty']}, {is_locked}, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = {stage}, difficulty_score = {item['difficulty']}, is_locked = {is_locked}, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, {ch['start_sec']}, {ch['end_sec']}, '{safe_full}', '{safe_answer}', '{safe_base}', '{safe_hint}');
END $$;
"""
        sqls.append(sql)
    return sqls

if __name__ == "__main__":
    print(f"🚀 Full Scan V7 Continuation 시작 (Target: {len(TARGET_ARTISTS)} artists)")
    print(f"📝 기존 데이터 유지, 새 파일에 저장: {OUTPUT_SQL}")
    
    with open(OUTPUT_SQL, "w") as f:
        f.write("-- Full Scan V7 Continuation Data (LE SSERAFIM onwards)\n\n")
        
    for artist in TARGET_ARTISTS:
        candidates = process_artist_full_scan(artist)
        if candidates:
            sqls = generate_sql(artist, candidates)
            with open(OUTPUT_SQL, "a") as f:
                f.write("\n".join(sqls) + "\n")
            print(f"💾 {artist}: {len(sqls)}개 수집 성공")
