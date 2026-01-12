-- 번역 캐시 테이블 생성
-- 한 번 번역된 내용을 DB에 저장하여 OpenAI API 호출 최소화

-- 번역 캐시 테이블
CREATE TABLE translation_cache (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    source_text TEXT NOT NULL,          -- 원본 텍스트
    source_locale TEXT NOT NULL,        -- 원본 언어 (en, ko 등)
    target_locale TEXT NOT NULL,        -- 대상 언어 (ja, zh 등)
    translation_type TEXT NOT NULL,     -- 번역 타입 (hint, grammar, romanization)
    translated_text TEXT NOT NULL,      -- 번역된 텍스트
    romanization TEXT,                  -- 로마자 발음 (optional)
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    
    -- 같은 텍스트+언어+타입 조합은 한 번만 저장
    UNIQUE(source_text, target_locale, translation_type)
);

-- 빠른 조회를 위한 인덱스
CREATE INDEX idx_translation_cache_lookup 
    ON translation_cache(source_text, target_locale, translation_type);

-- 모든 사용자가 읽기 가능 (퍼블릭 캐시)
ALTER TABLE translation_cache ENABLE ROW LEVEL SECURITY;

-- 읽기 정책: 모든 사용자가 캐시 조회 가능
CREATE POLICY "Translation cache is publicly readable"
    ON translation_cache FOR SELECT
    TO authenticated, anon
    USING (true);

-- 삽입 정책: API에서만 삽입 가능 (service_role key 사용)
-- Vercel 서버 측에서 service_role 키로 삽입
