#!/usr/bin/env python3
"""
The Mining V6: 부족한 아티스트 대상 '강제 채굴' (Extreme Mining)
- 공식 채널 리스트 대신 '키워드 검색' (ytsearch) 사용
- vlog, behind, log 등 키워드로 숨은 영상 발굴
- 엄격한 필터링(구어체+SDH제거) 유지
"""
import os
import sys
import re
import random
import time
from yt_dlp import YoutubeDL
from patterns_expanded import find_learning_sentences
from dredge_content_v4 import clean_subtitle_text, calculate_difficulty, parse_vtt_file

# Configuration
TARGET_STAGE_COUNT = 30
SEARCH_LIMIT = 50  # 키워드당 검색할 영상 수
SUBTITLE_DIR = "/home/qwer/Workspace/kdictation/temp_subtitles"
OUTPUT_SQL = "supabase/migrations/041_stage_data_mining.sql"

# 수집이 시급한 아티스트 목록 (Refill 실패/부족 그룹)
TARGET_ARTISTS = {
    "BLACKPINK": ["BLACKPINK vlog", "BLACKPINK diary", "BLACKPINK behind", "24/365 with BLACKPINK"],
    "LE SSERAFIM": ["LE SSERAFIM vlog", "FIM-LOG", "LE SSERAFIM day off", "LE SSERAFIM behind"],
    "ITZY": ["ITZY vlog", "ITZY behind", "ITZY V2LOG", "ITZY COZY HOUSE"],
    "NMIXX": ["NMIXX vlog", "NMIXX pick", "NMIXX behind"],
    "BABYMONSTER": ["BABYMONSTER vlog", "BABYMONSTER behind", "BAEMON TV"],
    "ZEROBASEONE": ["ZEROBASEONE vlog", "ZB1 vlog", "ZB1 folder", "ZB1 behind"],
    "IZNA": ["IZNA vlog", "IZNA behind"],
    "Hearts2Hearts": ["Hearts2Hearts vlog", "Hearts2Hearts behind"],
    "QWER": ["QWER vlog", "QWER behind", "QWER discord"],
    "G-IDLE": ["G-IDLE vlog", "I-TALK", "G-IDLE behind"],
    "TWICE": ["TWICE vlog", "TWICE TV", "TIME TO TWICE", "TWICE behind"],
    "Stray Kids": ["Stray Kids vlog", "SKZ-TALKER", "Stray Kids behind", "SKZ CODE"],
    "aespa": ["aespa vlog", "aespa behind", "aespa synk road"],
    "ATEEZ": ["ATEEZ vlog", "ATEEZ logbook", "ATEEZ wanteez"],
    "Red Velvet": ["Red Velvet vlog", "Red Velvet behind", "LEVEL UP PROJECT"],
    "RIIZE": ["RIIZE vlog", "RIIZE behind", "WE RIIZE"],
    "MEOVV": ["MEOVV vlog", "MEOVV behind", "MEOVV TV"],
    "xikers": ["xikers vlog", "xikers tricky house", "xikers behind"],
    "ILLIT": ["ILLIT vlog", "ILLIT night", "ILLIT behind"],
}

# 제외 키워드 (MV 등)
EXCLUDE_KEYWORDS = [
    "MV", "M/V", "Music Video", "Official Video", "Dance Practice", "Performance",
    "Teaser", "Trailer", "Highlight", "Choreography", "Stage Mix", "Audio",
    "Sketch", "Jacket", "Shooting", "Making Film", "Visual", "Photo"
]

def is_music_content(title):
    title_upper = title.upper()
    for kw in EXCLUDE_KEYWORDS:
        if kw.upper() in title_upper:
            return True
    return False

# 채널명 검증 키워드
BANNED_CHANNEL_KEYWORDS = [
    "Reaction", "Review", "Cover", "Dance", "Mix", "Shorts", "FMV", "Fan", "Tube"
]
TRUSTED_CHANNEL_KEYWORDS = [
    "Official", "TV", "Entertainment", "Mnet", "KBS", "SBS", "MBC", "1theK", "Dingo", "Studio"
]

def is_safe_channel(entry, artist_name):
    """채널명이 신뢰할 수 있는지 확인"""
    channel = entry.get('uploader', '') or entry.get('channel', '')
    if not channel: return False
    
    # 1. 아티스트 이름이 포함되어 있으면 통과 (예: BLACKPINK)
    if artist_name.upper().replace(" ", "") in channel.upper().replace(" ", ""):
        return True
    
    # 2. 금지 키워드 포함 시 탈락
    for kw in BANNED_CHANNEL_KEYWORDS:
        if kw.upper() in channel.upper():
            return False
            
    # 3. 신뢰 키워드 포함 시 통과
    for kw in TRUSTED_CHANNEL_KEYWORDS:
        if kw.upper() in channel.upper():
            return True
            
    # 그 외에는... 일단 보류하거나 탈락 (엄격 모드)
    # 다만 공식 채널이 아티스트명과 다른 경우(예: BANGTANTV)가 있으니
    # 일단은 '금지어'가 없으면 통과시키는 쪽으로 가닥을 잡음
    return True

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
            delay = random.uniform(3, 8) # 검색은 좀 더 빠르게 (이미 타겟팅됨)
            print(f"    (대기 {delay:.1f}s)", end='', flush=True)
            time.sleep(delay)
            
            with YoutubeDL(ydl_opts) as ydl:
                ydl.download([url])
            
            if os.path.exists(vtt_file):
                print(" ✓")
                return vtt_file
            
            # 다른 확장자 확인
            for ext in ['.ko.vtt', '.ko.srt', '.ko.json3']:
                if os.path.exists(f"{subtitle_path}{ext}"):
                    print(" ✓")
                    return f"{subtitle_path}{ext}"
            
            print(" (자막 없음)")
            return None
            
        except Exception:
            time.sleep(5)
    return None

def process_artist_search(artist_name):
    search_queries = TARGET_ARTISTS.get(artist_name, [])
    print(f"\n⛏️ 채굴 시작: {artist_name} (검색어: {search_queries})")
    
    candidates = []
    seen_ids = set()
    
    for query in search_queries:
        if len(candidates) >= TARGET_STAGE_COUNT:
            break
            
        print(f"  🔍 검색: '{query}'")
        ydl_opts = {
            'quiet': True,
            'extract_flat': True,
            'default_search': f'ytsearch{SEARCH_LIMIT}',
            'ignoreerrors': True,
        }
        
        try:
            with YoutubeDL(ydl_opts) as ydl:
                result = ydl.extract_info(query, download=False)
                if not result or 'entries' not in result:
                    continue
                
                for entry in result['entries']:
                    if not entry: continue
                    vid = entry.get('id')
                    title = entry.get('title', '')
                    
                    if vid in seen_ids: continue
                    seen_ids.add(vid)
                    
                    # 채널/업로더 검증 (NEW)
                    if not is_safe_channel(entry, artist_name):
                        continue
                    
                    if is_music_content(title):
                        continue
                        
                    print(f"    [{title[:30]}...]")
                    
                    sub_path = download_subtitles(vid)
                    if not sub_path: continue
                    
                    segments = parse_vtt_file(sub_path)
                    challenges = find_learning_sentences(segments, max_results=5)
                    
                    for ch in challenges:
                        if len(ch['full_sentence']) < 10: continue
                        diff = calculate_difficulty(ch['full_sentence'], ch['end_sec'] - ch['start_sec'])
                        if diff >= 999: continue # 구어체 필터 탈락
                        
                        candidates.append({
                            'video_id': vid,
                            'title': title.replace("'", "''"),
                            'artist': artist_name,
                            'challenge': ch,
                            'difficulty': diff
                        })
                        print(f"      💎 발견! {ch['full_sentence'][:20]}...")
                        
                        if len(candidates) >= TARGET_STAGE_COUNT:
                            break
                    
                    if len(candidates) >= TARGET_STAGE_COUNT:
                        break
        except Exception as e:
            print(f"  ⚠️ 검색 오류: {e}")
            
    return candidates

def generate_sql(candidates):
    sqls = []
    # Difficulty Sort
    candidates.sort(key=lambda x: x['difficulty'])
    
    for stage, item in enumerate(candidates, start=1):
        ch = item['challenge']
        is_locked = 'true' if stage > 1 else 'false'
        
        sql = f"""
DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('{item['video_id']}', '{item['title']}', '{item['artist']}', 'normal', {stage}, {item['difficulty']}, {is_locked}, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = {stage}, difficulty_score = {item['difficulty']}, is_locked = {is_locked}, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, {ch['start_sec']}, {ch['end_sec']}, '{ch['full_sentence'].replace("'", "''")}', '{ch['answer_word'].replace("'", "''")}', '{ch.get('base_form','').replace("'", "''")}', '{ch.get('hint_en','').replace("'", "''")}');
END $$;
"""
        sqls.append(sql)
    return sqls

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print(f"대상: {', '.join(TARGET_ARTISTS.keys())}")
        print("사용법: python3 mining_content_v6.py ALL")
        sys.exit(1)

    print(f"🚀 Extreme Mining V6 시작 (Target: {len(TARGET_ARTISTS)} artists)")
    
    with open(OUTPUT_SQL, "w") as f:
        f.write("-- Mining V6 Data\n\n")
        
    for artist in TARGET_ARTISTS.keys():
        candidates = process_artist_search(artist)
        if candidates:
            sqls = generate_sql(candidates)
            with open(OUTPUT_SQL, "a") as f:
                f.write("\n".join(sqls) + "\n")
            print(f"💾 {artist}: {len(sqls)}개 채굴 성공")
