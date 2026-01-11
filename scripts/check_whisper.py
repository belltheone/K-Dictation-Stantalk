#!/usr/bin/env python3
"""
Whisper 분석 결과 확인용 스크립트
"""
import os
import sys
os.environ['PATH'] = f"/home/qwer/.local/bin:{os.environ['PATH']}"

import whisper

audio_path = "temp_audio/urNLPgalt6o.mp3"

if os.path.exists(audio_path):
    print(f"Loading model...")
    model = whisper.load_model("base")
    
    print(f"Transcribing {audio_path}...")
    result = model.transcribe(audio_path, language="ko", word_timestamps=True)
    
    print(f"\n{'='*60}")
    print("FULL TRANSCRIPT:")
    print(f"{'='*60}")
    print(result['text'][:2000])
    
    print(f"\n{'='*60}")
    print("SEGMENTS (first 20):")
    print(f"{'='*60}")
    for i, seg in enumerate(result.get('segments', [])[:20]):
        print(f"[{seg['start']:.1f}-{seg['end']:.1f}s] {seg['text']}")
else:
    print(f"Audio file not found: {audio_path}")
