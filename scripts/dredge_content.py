#!/usr/bin/env python3
"""
The Dredge: Content Expansion & Stage Assignment Script
- Searches YouTube for artist videos (Vlog/Behind)
- Analyzes audio with Whisper
- Calculates difficulty scores
- Assigns Stage 1-30
- Generates SQL for insertion/update
"""
import os
import sys
import json
import subprocess
import re
import math

os.environ['PATH'] = f"/home/qwer/.local/bin:{os.environ['PATH']}"
sys.path.insert(0, '/home/qwer/Workspace/kdictation/scripts')

# Whisper import (load model once if running logic here, or inside function)
# To save memory, we'll load it only if needed
import whisper
from patterns_expanded import find_learning_sentences
from yt_dlp import YoutubeDL

# Configuration
TARGET_STAGE_COUNT = 30
SEARCH_LIMIT = 50
AUDIO_DIR = "/home/qwer/Workspace/kdictation/temp_audio"
OUTPUT_SQL = "/home/qwer/Workspace/kdictation/supabase/migrations/032_stage_data_batch.sql"

if not os.path.exists(AUDIO_DIR):
    os.makedirs(AUDIO_DIR)

def get_existing_videos(artist_name):
    # This assumes we can't easily query DB from python without setup.
    # We will rely on a passed-in list or separate JSON file if available.
    # For now, we will return empty and let SQL handle duplicates (via UPSERT or ignore).
    # Ideally, we should fetch from DB.
    # We can use `supabase db query` equivalent via subprocess? No, user said to use CLI.
    # But CLI query is limited.
    # We will skip valid check for now and handle it during insert generation.
    return []

def search_youtube(artist_name):
    print(f"🔍 Searching YouTube for {artist_name} Vlogs...")
    query = f"{artist_name} 브이로그 자막"
    ydl_opts = {
        'quiet': True,
        'extract_flat': True,
        'force_generic_extractor': False,
        'playlist_end': SEARCH_LIMIT,
        'ignoreerrors': True,
    }
    
    with YoutubeDL(ydl_opts) as ydl:
        try:
            # ytsearch{N}:query syntax
            search_query = f"ytsearch{SEARCH_LIMIT}:{query}"
            result = ydl.extract_info(search_query, download=False)
            if 'entries' in result:
                return result['entries']
        except Exception as e:
            print(f"Error searching: {e}")
            return []
    return []

def download_audio(video_id):
    url = f"https://www.youtube.com/watch?v={video_id}"
    path = f"{AUDIO_DIR}/{video_id}"
    
    # Check if exists
    if os.path.exists(f"{path}.mp3"):
        return f"{path}.mp3"
    
    cmd = [
        "yt-dlp", "-x", "--audio-format", "mp3", "--audio-quality", "5",
        "-o", path + ".%(ext)s",
        "--download-sections", "*0:00-3:00", # First 3 mins mainly
        url
    ]
    
    try:
        subprocess.run(cmd, check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        return f"{path}.mp3"
    except:
        return None

def calculate_difficulty(sentence, duration):
    # Speed: CPS (Char per sec)
    # Length: Word count
    clean_text = re.sub(r'[^\w\s]', '', sentence)
    length = len(clean_text)
    cps = length / max(duration, 0.5)
    
    # Base score: CPS * 10 + Length * 0.5
    score = (cps * 10) + (length * 0.5)
    
    # Bonus for complex patterns (heuristic)
    if "면" in sentence or "는데" in sentence:
        score += 5
    if len(sentence) > 15:
        score += 5
        
    return score

def process_artist(artist_name, model):
    print(f"\nProcessing Group: {artist_name}")
    
    # 1. Search
    videos = search_youtube(artist_name)
    candidates = []
    
    print(f"Found {len(videos)} potential videos. Analyzing...")
    
    for i, vid in enumerate(videos):
        if not vid: continue
        video_id = vid['id']
        title = vid['title']
        
        # Filter Shorts by title or logic (duration usually not available in flat extract?)
        # We'll valid duration after download or skip if title says #Shorts
        if "short" in title.lower():
            continue
            
        print(f"[{i+1}/{len(videos)}] {title} ({video_id})")
        
        audio_path = download_audio(video_id)
        if not audio_path:
            print("  - Download failed")
            continue
            
        # Whisper
        try:
            result = model.transcribe(audio_path, language="ko")
            segments = result.get('segments', [])
            
            challenges = find_learning_sentences(segments, max_results=1) # Get the BEST one per video
            
            if challenges:
                best = challenges[0]
                diff = calculate_difficulty(best['full_sentence'], best['end_sec'] - best['start_sec'])
                
                candidates.append({
                    'video_id': video_id,
                    'title': title.replace("'", "''"), # Escape SQL
                    'challenge': best,
                    'difficulty': diff
                })
                print(f"  + Added! Score: {diff:.1f} (Exp: {best['full_sentence']})")
                
                if len(candidates) >= 40: # Gather strict buffer
                    break
        except Exception as e:
            print(f"  - Error: {e}")
            
    # 2. Sort & Stage
    # Sort by difficulty ascending
    candidates.sort(key=lambda x: x['difficulty'])
    
    # Take top 30
    final_30 = candidates[:30]
    
    # Generate SQL
    sql_statements = []
    for idx, item in enumerate(final_30):
        stage = idx + 1
        is_locked = 'false' if stage == 1 else 'true'
        vid = item['video_id']
        ch = item['challenge']
        
        # INSERT or UPDATE content
        # We assume UPSERT on youtube_id if possible, but standard is INSERT ON CONFLICT
        # Since we can't trust schema details for conflict constraint, we will try to UPDATE then INSERT if not exists?
        # Better: DELETE existing challenges for this video (to refresh) and UPSERT content.
        
        # Complex SQL block
        sql = f"""
DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('{vid}', '{item['title']}', '{artist_name}', 'normal', {stage}, {item['difficulty']}, {is_locked}, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = {stage}, difficulty_score = {item['difficulty']}, is_locked = {is_locked}, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, {ch['start_sec']}, {ch['end_sec']}, '{ch['full_sentence']}', '{ch['answer_word']}', '{ch.get('base_form','')}', '{ch.get('hint_en','').replace("'", "''")}');
END $$;
"""
        sql_statements.append(sql)
        
    return sql_statements

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python3 dredge_content.py <Artist_Name> [Artist_Name2 ...]")
        sys.exit(1)
        
    artists = sys.argv[1:]
    
    print("Loading Whisper Model...")
    model = whisper.load_model("base")
    
    all_sql = []
    
    for artist in artists:
        sqls = process_artist(artist, model)
        all_sql.extend(sqls)
        
    with open(OUTPUT_SQL, "a") as f: # Append mode
        f.write("\n".join(all_sql))
        
    print(f"\nSaved {len(all_sql)} statements to {OUTPUT_SQL}")
