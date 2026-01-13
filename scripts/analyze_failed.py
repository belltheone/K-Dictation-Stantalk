#!/usr/bin/env python3
"""
실패한 영상들의 전사 텍스트 분석 - 어떤 패턴이 필요한지 파악
"""
import os
import json
import sys

os.environ['PATH'] = f"/home/qwer/.local/bin:{os.environ['PATH']}"

BASE_DIR = "/home/qwer/Workspace/kdictation"
AUDIO_DIR = f"{BASE_DIR}/temp_audio"

# 실패한 영상 ID 로드
with open(f"{BASE_DIR}/whisper_progress.json", 'r') as f:
    progress = json.load(f)

failed_ids = progress['failed'][:5]  # 처음 5개만 분석

print(f"실패한 영상 {len(failed_ids)}개의 전사 텍스트 분석")
print("="*60)

import whisper
model = whisper.load_model("base")

for vid in failed_ids:
    audio_path = f"{AUDIO_DIR}/{vid}.mp3"
    if not os.path.exists(audio_path):
        print(f"\n{vid}: 오디오 파일 없음 (다운로드 실패)")
        continue
    
    result = model.transcribe(audio_path, language="ko")
    text = result['text'][:500]  # 처음 500자만
    
    print(f"\n[{vid}]")
    print(f"텍스트: {text}")
    print("-"*40)
