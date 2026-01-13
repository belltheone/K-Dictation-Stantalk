-- youtube_id에 유니크 제약조건 추가 (Dredge 스크립트의 ON CONFLICT 지원을 위해)

-- 1. 중복 데이터 제거 (최신 데이터 남김)
DELETE FROM contents a USING contents b
WHERE a.id < b.id AND a.youtube_id = b.youtube_id;

-- 2. 제약조건 추가
ALTER TABLE contents
ADD CONSTRAINT contents_youtube_id_key UNIQUE (youtube_id);
