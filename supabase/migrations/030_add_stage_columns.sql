-- 스테이지 시스템을 위한 contents 테이블 스키마 변경
-- 생성일: 2026-01-13

ALTER TABLE contents
ADD COLUMN IF NOT EXISTS stage_number INTEGER,
ADD COLUMN IF NOT EXISTS difficulty_score DOUBLE PRECISION DEFAULT 0.0,
ADD COLUMN IF NOT EXISTS is_locked BOOLEAN DEFAULT true;

-- Stage 1은 기본적으로 잠금 해제 (나중에 데이터 채운 후 업데이트할 예정이지만 기본 설정)
-- 인덱스 추가 (아티스트별 스테이지 조회 속도 향상)
CREATE INDEX IF NOT EXISTS idx_contents_artist_stage ON contents (artist_name, stage_number);
