-- IVE 콘텐츠 확장 (10개 이상 문제)
-- 공식 채널 IVE ON 비하인드 기반

-- 기존 IVE 콘텐츠 삭제 후 재삽입
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'IVE');
DELETE FROM contents WHERE artist_name = 'IVE';

-- IVE 콘텐츠 (10개)
INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('LRy3se8sOrQ', '[IVE ON] 팬미팅 비하인드', 'IVE', 'https://img.youtube.com/vi/LRy3se8sOrQ/maxresdefault.jpg', 'easy', true),
('vD6-K6pE3Kk', '[IVE ON] 시상식 비하인드', 'IVE', 'https://img.youtube.com/vi/vD6-K6pE3Kk/maxresdefault.jpg', 'normal', true),
('6ZUIwj3FgUY', '[IVE ON] KCON 인터뷰', 'IVE', 'https://img.youtube.com/vi/6ZUIwj3FgUY/maxresdefault.jpg', 'normal', true),
('Y8JFxS1HlDo', '[IVE ON] 뮤비 촬영 비하인드', 'IVE', 'https://img.youtube.com/vi/Y8JFxS1HlDo/maxresdefault.jpg', 'easy', true),
('Z1jMlb20rBA', '[IVE ON] 연습실 일상', 'IVE', 'https://img.youtube.com/vi/Z1jMlb20rBA/maxresdefault.jpg', 'normal', true),
('gHwfYj40Q7s', '[IVE ON] 음악방송 비하인드', 'IVE', 'https://img.youtube.com/vi/gHwfYj40Q7s/maxresdefault.jpg', 'easy', true),
('2Q8xpFj7rBs', '[IVE ON] 멤버들 게임', 'IVE', 'https://img.youtube.com/vi/2Q8xpFj7rBs/maxresdefault.jpg', 'easy', true),
('f8V1rjMKsGU', '[IVE ON] 해외 투어 비하인드', 'IVE', 'https://img.youtube.com/vi/f8V1rjMKsGU/maxresdefault.jpg', 'hard', true),
('pKH6LQmVdaw', '[IVE ON] 대기실 대화', 'IVE', 'https://img.youtube.com/vi/pKH6LQmVdaw/maxresdefault.jpg', 'normal', true),
('3iVl7u5JknQ', '[IVE ON] 휴식 시간', 'IVE', 'https://img.youtube.com/vi/3iVl7u5JknQ/maxresdefault.jpg', 'easy', true);

-- IVE 챌린지 (16개)
-- 콘텐츠 1: 팬미팅 비하인드
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '다이브 여러분 안녕!', '안녕', NULL, 'Hello DIVE!', '안녕 = 비격식 인사', 1
FROM contents WHERE youtube_id = 'LRy3se8sOrQ';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '너무 떨려요', '떨려요', '떨리다', 'I''m so nervous', '떨리다 + 어요 = 긴장 상태', 2
FROM contents WHERE youtube_id = 'LRy3se8sOrQ';

-- 콘텐츠 2: 시상식 비하인드
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '상 받아서 기뻐요', '기뻐요', '기쁘다', 'I''m happy to receive the award', '기쁘다 + 어요 = 기쁨 표현', 1
FROM contents WHERE youtube_id = 'vD6-K6pE3Kk';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '다이브 덕분이에요', '덕분', NULL, 'It''s thanks to DIVE', '덕분 = 감사의 원인', 2
FROM contents WHERE youtube_id = 'vD6-K6pE3Kk';

-- 콘텐츠 3: KCON 인터뷰
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '미국 처음이에요', '처음', NULL, 'It''s my first time in America', '처음 = 첫 번째 경험', 1
FROM contents WHERE youtube_id = '6ZUIwj3FgUY';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '팬들 정말 열정적이에요', '열정적', NULL, 'The fans are really passionate', '열정적 = 열정이 있는', 2
FROM contents WHERE youtube_id = '6ZUIwj3FgUY';

-- 콘텐츠 4: 뮤비 촬영 비하인드
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '오늘 촬영 재미있었어요', '재미있었어요', '재미있다', 'Today''s shooting was fun', '재미있다 + 었어요 = 과거 감상', 1
FROM contents WHERE youtube_id = 'Y8JFxS1HlDo';

-- 콘텐츠 5: 연습실 일상
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 안무 좀 어려워요', '어려워요', '어렵다', 'This choreography is a bit hard', '어렵다 + 어요 = 현재 상태', 1
FROM contents WHERE youtube_id = 'Z1jMlb20rBA';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '천천히 다시 해보자', '천천히', NULL, 'Let''s try again slowly', '천천히 = 느린 속도로', 2
FROM contents WHERE youtube_id = 'Z1jMlb20rBA';

-- 콘텐츠 6: 음악방송 비하인드
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '오늘 무대 잘했어요', '잘했어요', '잘하다', 'We did well on stage today', '잘하다 + 었어요 = 과거 칭찬', 1
FROM contents WHERE youtube_id = 'gHwfYj40Q7s';

-- 콘텐츠 7: 멤버들 게임
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '누가 이길까요?', '이길까요', '이기다', 'Who will win?', '이기다 + ㄹ까요 = 추측 의문', 1
FROM contents WHERE youtube_id = '2Q8xpFj7rBs';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '언니 반칙이에요!', '반칙', NULL, 'Unnie, that''s cheating!', '반칙 = 규칙 위반', 2
FROM contents WHERE youtube_id = '2Q8xpFj7rBs';

-- 콘텐츠 8: 해외 투어 비하인드
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '비행기에서 잘 잤어요', '잘 잤어요', '자다', 'I slept well on the plane', '자다 + 았어요 = 과거 정중', 1
FROM contents WHERE youtube_id = 'f8V1rjMKsGU';

-- 콘텐츠 9: 대기실 대화
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 머리 예뻐요', '머리', NULL, 'Your hair looks pretty today', '머리 = 헤어스타일', 1
FROM contents WHERE youtube_id = 'pKH6LQmVdaw';

-- 콘텐츠 10: 휴식 시간
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '배고파요, 뭐 먹을까?', '배고파요', '배고프다', 'I''m hungry, what should we eat?', '배고프다 + 아요 = 현재 상태', 1
FROM contents WHERE youtube_id = '3iVl7u5JknQ';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '치킨 시켜요!', '시켜요', '시키다', 'Let''s order chicken!', '시키다 + 어요 = 주문 제안', 2
FROM contents WHERE youtube_id = '3iVl7u5JknQ';
