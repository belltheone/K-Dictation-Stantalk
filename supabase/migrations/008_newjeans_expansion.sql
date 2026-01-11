-- NewJeans 콘텐츠 확장 (10개 이상 문제)
-- 공식 채널 비하인드/V-Log 기반

-- 기존 NewJeans 콘텐츠 삭제 후 재삽입
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'NewJeans');
DELETE FROM contents WHERE artist_name = 'NewJeans';

-- NewJeans 콘텐츠 (10개)
INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('2sFNe9fKvdU', '[Light Jeans] 시즌 그리팅 비하인드', 'NewJeans', 'https://img.youtube.com/vi/2sFNe9fKvdU/maxresdefault.jpg', 'easy', true),
('dLJ8bzzLVxE', '[NewJeans DAY] 우리는 뉴진스', 'NewJeans', 'https://img.youtube.com/vi/dLJ8bzzLVxE/maxresdefault.jpg', 'easy', true),
('Iip8JWBJp14', '[NewJeans] 민지와 해린 대화', 'NewJeans', 'https://img.youtube.com/vi/Iip8JWBJp14/maxresdefault.jpg', 'normal', true),
('eKJjGR5trbI', '[NewJeans LOG] 뮤비 촬영 비하인드', 'NewJeans', 'https://img.youtube.com/vi/eKJjGR5trbI/maxresdefault.jpg', 'normal', true),
('11cta61wi0g', '[NewJeans LOG] 연습실 일상', 'NewJeans', 'https://img.youtube.com/vi/11cta61wi0g/maxresdefault.jpg', 'easy', true),
('ArmDp-zijuc', '[NewJeans] 팬사인회 비하인드', 'NewJeans', 'https://img.youtube.com/vi/ArmDp-zijuc/maxresdefault.jpg', 'easy', true),
('znszIKKyQ_4', '[NewJeans LOG] 음악방송 비하인드', 'NewJeans', 'https://img.youtube.com/vi/znszIKKyQ_4/maxresdefault.jpg', 'normal', true),
('P1D-aF18VZE', '[NewJeans] 멤버들 게임 시간', 'NewJeans', 'https://img.youtube.com/vi/P1D-aF18VZE/maxresdefault.jpg', 'easy', true),
('vopMKnDjZtw', '[NewJeans LOG] 해외 투어 비하인드', 'NewJeans', 'https://img.youtube.com/vi/vopMKnDjZtw/maxresdefault.jpg', 'hard', true),
('mNz4f-pHgLQ', '[NewJeans] 휴식 시간', 'NewJeans', 'https://img.youtube.com/vi/mNz4f-pHgLQ/maxresdefault.jpg', 'easy', true);

-- NewJeans 챌린지 (16개)
-- 콘텐츠 1: 시즌 그리팅 비하인드
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '여기 너무 예뻐요', '예뻐요', '예쁘다', 'This place is so pretty', '예쁘다 + 어요 = 감탄 표현', 1
FROM contents WHERE youtube_id = '2sFNe9fKvdU';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '사진 찍어줄래?', '찍어줄래', '찍다', 'Can you take a photo?', '찍다 + 어줄래 = 부탁 표현', 2
FROM contents WHERE youtube_id = '2sFNe9fKvdU';

-- 콘텐츠 2: 우리는 뉴진스
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '안녕하세요, 뉴진스입니다', '안녕하세요', '안녕', 'Hello, we are NewJeans', '안녕 + 하세요 = 정중한 인사', 1
FROM contents WHERE youtube_id = 'dLJ8bzzLVxE';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '오늘 재미있었어요', '재미있었어요', '재미있다', 'Today was fun', '재미있다 + 었어요 = 과거 감상', 2
FROM contents WHERE youtube_id = 'dLJ8bzzLVxE';

-- 콘텐츠 3: 민지와 해린 대화
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '언니, 뭐 해요?', '뭐 해요', '하다', 'Unnie, what are you doing?', '뭐 + 하다 + 요 = 현재 진행 묻기', 1
FROM contents WHERE youtube_id = 'Iip8JWBJp14';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '같이 갈래요?', '같이', NULL, 'Do you want to go together?', '같이 = 함께', 2
FROM contents WHERE youtube_id = 'Iip8JWBJp14';

-- 콘텐츠 4: 뮤비 촬영 비하인드
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '오늘 촬영 힘들었어요', '힘들었어요', '힘들다', 'Today''s shooting was tiring', '힘들다 + 었어요 = 과거 상태', 1
FROM contents WHERE youtube_id = 'eKJjGR5trbI';

-- 콘텐츠 5: 연습실 일상
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '이 안무 어려워요', '어려워요', '어렵다', 'This choreography is hard', '어렵다 + 어요 = 현재 상태', 1
FROM contents WHERE youtube_id = '11cta61wi0g';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '조금만 더 하자', '조금만', NULL, 'Let''s do just a little more', '조금만 = 약간만', 2
FROM contents WHERE youtube_id = '11cta61wi0g';

-- 콘텐츠 6: 팬사인회 비하인드
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '버니즈 고마워요!', '고마워요', '고맙다', 'Thank you Bunnies!', '고맙다 + 워요 = 감사 표현', 1
FROM contents WHERE youtube_id = 'ArmDp-zijuc';

-- 콘텐츠 7: 음악방송 비하인드
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 너무 기뻐요', '기뻐요', '기쁘다', 'I''m so happy we got 1st place', '기쁘다 + 어요 = 기쁨 표현', 1
FROM contents WHERE youtube_id = 'znszIKKyQ_4';

-- 콘텐츠 8: 멤버들 게임 시간
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '내가 이겼다!', '이겼다', '이기다', 'I won!', '이기다 + 었다 = 과거 승리', 1
FROM contents WHERE youtube_id = 'P1D-aF18VZE';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 50, 55, '언니 너무 웃겨요', '웃겨요', '웃기다', 'Unnie, you''re so funny', '웃기다 + 어요 = 재미 표현', 2
FROM contents WHERE youtube_id = 'P1D-aF18VZE';

-- 콘텐츠 9: 해외 투어 비하인드
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '여기 음식 맛있어요', '맛있어요', '맛있다', 'The food here is delicious', '맛있다 + 어요 = 맛 표현', 1
FROM contents WHERE youtube_id = 'vopMKnDjZtw';

-- 콘텐츠 10: 휴식 시간
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '너무 피곤해요', '피곤해요', '피곤하다', 'I''m so tired', '피곤하다 + 해요 = 상태 표현', 1
FROM contents WHERE youtube_id = 'mNz4f-pHgLQ';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '잠깐 쉬고 싶어요', '쉬고 싶어요', '쉬다', 'I want to rest for a bit', '쉬다 + 고 싶어요 = 소망 표현', 2
FROM contents WHERE youtube_id = 'mNz4f-pHgLQ';
