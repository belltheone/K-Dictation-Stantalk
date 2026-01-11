-- BLACKPINK 콘텐츠 확장 (10개 이상 문제)
-- 공식 채널 BLACKPINK DIARIES/Behind 기반

-- 기존 BLACKPINK 콘텐츠 삭제 후 재삽입
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'BLACKPINK');
DELETE FROM contents WHERE artist_name = 'BLACKPINK';

-- BLACKPINK 콘텐츠 (10개)
INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('uLdqsX_n0RA', '[BLACKPINK] Weverse Live 귀국', 'BLACKPINK', 'https://img.youtube.com/vi/uLdqsX_n0RA/maxresdefault.jpg', 'normal', true),
('mxF6ej8_5Q4', '[BLACKPINK DIARIES] 일상 브이로그', 'BLACKPINK', 'https://img.youtube.com/vi/mxF6ej8_5Q4/maxresdefault.jpg', 'easy', true),
('u1_qmjvn0yE', '[BLACKPINK] 연습실에서', 'BLACKPINK', 'https://img.youtube.com/vi/u1_qmjvn0yE/maxresdefault.jpg', 'hard', true),
('ioNng23DkIM', '[BLACKPINK] 콘서트 비하인드', 'BLACKPINK', 'https://img.youtube.com/vi/ioNng23DkIM/maxresdefault.jpg', 'normal', true),
('gQlMMD8auMs', '[BLACKPINK DIARIES] 멤버들 일상', 'BLACKPINK', 'https://img.youtube.com/vi/gQlMMD8auMs/maxresdefault.jpg', 'easy', true),
('IHNzOHi8sJs', '[BLACKPINK] 대기실 대화', 'BLACKPINK', 'https://img.youtube.com/vi/IHNzOHi8sJs/maxresdefault.jpg', 'normal', true),
('9pYU3u1hxQo', '[BLACKPINK] 팬미팅 비하인드', 'BLACKPINK', 'https://img.youtube.com/vi/9pYU3u1hxQo/maxresdefault.jpg', 'easy', true),
('2S24-y0Ij3Y', '[BLACKPINK DIARIES] 해외 투어', 'BLACKPINK', 'https://img.youtube.com/vi/2S24-y0Ij3Y/maxresdefault.jpg', 'hard', true),
('b73BI9eUkjM', '[BLACKPINK] 음악방송 비하인드', 'BLACKPINK', 'https://img.youtube.com/vi/b73BI9eUkjM/maxresdefault.jpg', 'normal', true),
('aiWXz5sNHgC', '[BLACKPINK] 멤버들 게임', 'BLACKPINK', 'https://img.youtube.com/vi/aiWXz5sNHgC/maxresdefault.jpg', 'easy', true);

-- BLACKPINK 챌린지 (16개)
-- 콘텐츠 1: Weverse Live 귀국
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '드디어 한국이다!', '드디어', NULL, 'Finally, we''re in Korea!', '드디어 = 오랜 기다림 후', 1
FROM contents WHERE youtube_id = 'uLdqsX_n0RA';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 50, 55, '블링크 보고 싶었어요', '보고 싶었어요', '보고 싶다', 'I missed BLINK', '보고 싶다 + 었어요 = 과거 그리움', 2
FROM contents WHERE youtube_id = 'uLdqsX_n0RA';

-- 콘텐츠 2: 일상 브이로그
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 날씨 좋다', '날씨', NULL, 'The weather is nice today', '날씨 = 기상 상태', 1
FROM contents WHERE youtube_id = 'mxF6ej8_5Q4';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '카페 갈래요?', '갈래요', '가다', 'Do you want to go to a cafe?', '가다 + ㄹ래요 = 의향 묻기', 2
FROM contents WHERE youtube_id = 'mxF6ej8_5Q4';

-- 콘텐츠 3: 연습실에서
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '연습 열심히 했어요', '열심히', NULL, 'We practiced hard', '열심히 = 부지런하게', 1
FROM contents WHERE youtube_id = 'u1_qmjvn0yE';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 60, 65, '이 부분 다시 하자', '다시', NULL, 'Let''s do this part again', '다시 = 반복하여', 2
FROM contents WHERE youtube_id = 'u1_qmjvn0yE';

-- 콘텐츠 4: 콘서트 비하인드
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '오늘 콘서트 대박이었어', '대박', NULL, 'Today''s concert was amazing', '대박 = 대단한 성공', 1
FROM contents WHERE youtube_id = 'ioNng23DkIM';

-- 콘텐츠 5: 멤버들 일상
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '뭐 먹고 싶어?', '먹고 싶어', '먹다', 'What do you want to eat?', '먹다 + 고 싶어 = 소망 묻기', 1
FROM contents WHERE youtube_id = 'gQlMMD8auMs';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '피자 시켜요', '시켜요', '시키다', 'Let''s order pizza', '시키다 + 어요 = 주문 표현', 2
FROM contents WHERE youtube_id = 'gQlMMD8auMs';

-- 콘텐츠 6: 대기실 대화
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '메이크업 예쁘다', '예쁘다', NULL, 'The makeup is pretty', '예쁘다 = 아름다운 상태', 1
FROM contents WHERE youtube_id = 'IHNzOHi8sJs';

-- 콘텐츠 7: 팬미팅 비하인드
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '팬들 너무 좋아요', '좋아요', '좋다', 'I love the fans so much', '좋다 + 아요 = 호감 표현', 1
FROM contents WHERE youtube_id = '9pYU3u1hxQo';

-- 콘텐츠 8: 해외 투어
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '여기 정말 멋있어요', '멋있어요', '멋있다', 'This place is really cool', '멋있다 + 어요 = 감탄 표현', 1
FROM contents WHERE youtube_id = '2S24-y0Ij3Y';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 65, 70, '사진 많이 찍었어요', '많이', NULL, 'I took many photos', '많이 = 다량으로', 2
FROM contents WHERE youtube_id = '2S24-y0Ij3Y';

-- 콘텐츠 9: 음악방송 비하인드
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '오늘 무대 잘했어요', '잘했어요', '잘하다', 'We did well on stage today', '잘하다 + 었어요 = 과거 칭찬', 1
FROM contents WHERE youtube_id = 'b73BI9eUkjM';

-- 콘텐츠 10: 멤버들 게임
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '언니 졌어요!', '졌어요', '지다', 'Unnie lost!', '지다 + 었어요 = 과거 패배', 1
FROM contents WHERE youtube_id = 'aiWXz5sNHgC';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '다시 하자, 불공평해', '불공평해', '불공평하다', 'Let''s do it again, it''s unfair', '불공평하다 + 해 = 비격식 불만', 2
FROM contents WHERE youtube_id = 'aiWXz5sNHgC';
