#!/usr/bin/env python3
"""
Verification Script: Audio-Text Sync Check
Samples items from migration queries, cuts audio at timestamps, 
and re-transcribes to verify accuracy.
"""
import re
import os
import sys
import random
import subprocess
import whisper
from difflib import SequenceMatcher

# Add local bin to path
os.environ['PATH'] = f"/home/qwer/.local/bin:{os.environ['PATH']}"

# Inputs
# Inputs
DEFAULT_MIGRATION_FILE = "supabase/migrations/032_stage_data_batch.sql"
MIGRATION_FILE = sys.argv[1] if len(sys.argv) > 1 else DEFAULT_MIGRATION_FILE
AUDIO_DIR = "temp_audio"
SAMPLE_SIZE = 5

def parse_migration_file(filepath):
    """Parse SQL values to get test cases"""
    items = []
    with open(filepath, 'r') as f:
        content = f.read()
    
    # Extract values from INSERT INTO challenges ... VALUES (...)
    # Pattern: VALUES (v_content_id, 9, 13, 'sentence', 'answer', ...)
    # Note: Regex might be brittle if SQL format changes
    # Simple parser: look for VALUES line inside the DO block
    
    # Improved regex to capture: VALUES (v_content_id, start, end, 'sentence'
    matches = re.findall(r"VALUES\s*\(v_content_id,\s*([\d\.]+),\s*([\d\.]+),\s*'([^']+)'", content)
    
    # We also need the YouTube ID. It's in the previous INSERT statement in the same block.
    # Let's split by "DO $$" blocks
    blocks = content.split("DO $$")
    
    parsed_data = []
    
    for block in blocks:
        if "INSERT INTO contents" not in block:
            continue
            
        # Extract YouTube ID
        yt_match = re.search(r"VALUES\s*\('([^']+)'", block)
        if not yt_match:
            continue
        youtube_id = yt_match.group(1)
        
        # Extract Challenge Info
        # VALUES (v_content_id, start, end, 'full_sentence'
        ch_match = re.search(r"INSERT INTO challenges.*VALUES\s*\(v_content_id,\s*([\d\.]+),\s*([\d\.]+),\s*'([^']+)'", block, re.DOTALL)
        if ch_match:
            start_sec = float(ch_match.group(1))
            end_sec = float(ch_match.group(2))
            sentence = ch_match.group(3).replace("''", "'") # Unescape SQL
            
            parsed_data.append({
                'video_id': youtube_id,
                'start': start_sec,
                'end': end_sec,
                'text': sentence
            })
            
    return parsed_data

def download_audio(video_id):
    path = f"{AUDIO_DIR}/{video_id}.mp3"
    if os.path.exists(path):
        return path
        
    print(f"Downloading audio for {video_id}...")
    url = f"https://www.youtube.com/watch?v={video_id}"
    cmd = [
        "yt-dlp", "-x", "--audio-format", "mp3", "--audio-quality", "5",
        "-o", f"{AUDIO_DIR}/{video_id}.%(ext)s",
        "--download-sections", "*0:00-3:00",
        url
    ]
    subprocess.run(cmd, check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    return path

def slice_audio(input_path, start, end, output_path):
    duration = end - start
    cmd = [
        "ffmpeg", "-y", "-i", input_path,
        "-ss", str(start), "-t", str(duration),
        "-acodec", "copy", output_path
    ]
    subprocess.run(cmd, check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

def verify_sync(items):
    print("Loading Whisper model...")
    model = whisper.load_model("base")
    
    print(f"\nVerifying {len(items)} samples...\n")
    
    results = []
    
    for idx, item in enumerate(items):
        try:
            vid = item['video_id']
            # Find audio file (might be .mp3 or .webm etc if already there)
            # Dredge saves as .mp3 but checks for .mp3.
            audio_path = f"{AUDIO_DIR}/{vid}.mp3"
            if not os.path.exists(audio_path):
                # Try to download if missing
                audio_path = download_audio(vid)
                
            slice_path = "temp_slice.mp3"
            slice_audio(audio_path, item['start'], item['end'], slice_path)
            
            # Transcribe slice
            transcription = model.transcribe(slice_path, language="ko")
            detected_text = transcription['text'].strip()
            
            # Normalize for comparison (remove punctuation)
            target = re.sub(r'[^\w]', '', item['text'])
            detected = re.sub(r'[^\w]', '', detected_text)
            
            similarity = SequenceMatcher(None, target, detected).ratio()
            pass_fail = "PASS" if similarity > 0.7 else "FAIL"
            
            print(f"[{idx+1}/{len(items)}] {vid} ({item['start']}~{item['end']}s)")
            print(f"  Target:   {item['text']}")
            print(f"  Detected: {detected_text}")
            print(f"  Sim: {similarity:.2f} => {pass_fail}")
            
            results.append({
                'item': item,
                'detected': detected_text,
                'score': similarity,
                'status': pass_fail
            })
            
        except Exception as e:
            print(f"  Error: {e}")
            results.append({'item': item, 'error': str(e), 'status': 'ERROR'})
            
    return results

if __name__ == "__main__":
    if not os.path.exists(MIGRATION_FILE):
        print(f"File not found: {MIGRATION_FILE}")
        sys.exit(1)
        
    items = parse_migration_file(MIGRATION_FILE)
    if not items:
        print("No items found in SQL file.")
        sys.exit(1)
        
    print(f"Found {len(items)} total items. Sampling {SAMPLE_SIZE}...")
    samples = random.sample(items, min(len(items), SAMPLE_SIZE))
    
    results = verify_sync(samples)
    
    # Summary
    pass_count = sum(1 for r in results if r['status'] == 'PASS')
    print(f"\nTotal: {len(results)}, Passed: {pass_count}, Failed: {len(results)-pass_count}")
