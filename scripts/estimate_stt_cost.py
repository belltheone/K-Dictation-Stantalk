#!/usr/bin/env python3
"""
STT 비용 추정: 부족한 아티스트의 공식 채널 영상 분석
- 음악/MV 제외
- 총 영상 시간 계산
- Google Cloud STT 비용 추정 ($0.016/분)
"""
import os
import sys
from yt_dlp import YoutubeDL
from dredge_content_v4 import OFFICIAL_CHANNELS, is_music_content

# Google Cloud STT 가격 (2024년 기준)
# Standard model: $0.016 per minute
# Enhanced model: $0.024 per minute
STT_COST_PER_MINUTE = 0.016

# 부족한 아티스트 목록 (30개 미만)
SHORTAGE_ARTISTS = [
    # Multi-Stage 후에도 부족
    "ITZY",          # 16개
    "ATEEZ",         # 16개
    "RIIZE",         # 11개
    "ZEROBASEONE",   # 7개
    "xikers",        # 5개
    "ILLIT",         # 21개
    "QWER",          # 6개
    # 미처리 (채널 문제/자막 없음)
    "Red Velvet",
    "G-IDLE",
    "BABYMONSTER",
    "MEOVV",
    "IZNA",
    "Hearts2Hearts",
]

def get_channel_video_stats(artist_name):
    """공식 채널의 영상 통계 가져오기"""
    channel_handle = OFFICIAL_CHANNELS.get(artist_name)
    if not channel_handle:
        return None, 0, 0
        
    url = f"https://www.youtube.com/{channel_handle}/videos"
    
    ydl_opts = {
        'quiet': True,
        'extract_flat': True,
        'playlistend': 500,  # 최근 500개만
        'ignoreerrors': True,
    }
    
    try:
        with YoutubeDL(ydl_opts) as ydl:
            result = ydl.extract_info(url, download=False)
            if not result or 'entries' not in result:
                return channel_handle, 0, 0
            
            total_videos = 0
            eligible_videos = 0
            total_duration_sec = 0
            
            for entry in result['entries']:
                if not entry:
                    continue
                total_videos += 1
                title = entry.get('title', '')
                duration = entry.get('duration') or 0
                
                # 음악 영상 제외
                if is_music_content(title):
                    continue
                    
                eligible_videos += 1
                total_duration_sec += duration
            
            return channel_handle, eligible_videos, total_duration_sec
            
    except Exception as e:
        print(f"  ⚠️ 오류: {e}")
        return channel_handle, 0, 0

def format_duration(seconds):
    """초를 시:분:초로 변환"""
    hours = seconds // 3600
    minutes = (seconds % 3600) // 60
    secs = seconds % 60
    return f"{hours}시간 {minutes}분 {secs}초"

if __name__ == "__main__":
    print("=" * 70)
    print("🔍 STT 비용 추정: 부족한 아티스트 공식 채널 분석")
    print("=" * 70)
    
    total_videos = 0
    total_duration = 0
    
    results = []
    
    for artist in SHORTAGE_ARTISTS:
        print(f"\n📡 {artist} 분석 중...", end=" ", flush=True)
        handle, videos, duration = get_channel_video_stats(artist)
        
        if handle is None:
            print("❌ 채널 정보 없음")
            results.append((artist, "없음", 0, 0))
            continue
            
        total_videos += videos
        total_duration += duration
        
        print(f"✅ {videos}개 영상, {format_duration(duration)}")
        results.append((artist, handle, videos, duration))
    
    # 결과 요약
    print("\n" + "=" * 70)
    print("📊 분석 결과 요약")
    print("=" * 70)
    
    print(f"\n{'아티스트':<15} {'채널':<25} {'영상수':>8} {'총 시간':>15}")
    print("-" * 70)
    
    for artist, handle, videos, duration in results:
        print(f"{artist:<15} {handle:<25} {videos:>8}개 {format_duration(duration):>15}")
    
    print("-" * 70)
    print(f"{'합계':<15} {'':<25} {total_videos:>8}개 {format_duration(total_duration):>15}")
    
    # 비용 계산
    total_minutes = total_duration / 60
    estimated_cost = total_minutes * STT_COST_PER_MINUTE
    
    print("\n" + "=" * 70)
    print("💰 예상 STT 비용")
    print("=" * 70)
    print(f"총 영상 시간: {format_duration(total_duration)} ({total_minutes:.1f}분)")
    print(f"STT 단가: ${STT_COST_PER_MINUTE}/분")
    print(f"---")
    print(f"예상 비용: ${estimated_cost:.2f} USD (약 {estimated_cost * 1350:.0f}원)")
    print("\n⚠️ 참고: 실제로는 필요한 구간만 추출하므로 비용이 대폭 줄어듭니다.")
    print("   예상 실제 비용: 위 금액의 10~20% 수준")
