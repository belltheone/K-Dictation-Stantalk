-- Missing Groups: RIIZE, ZEROBASEONE, xikers, KISS OF LIFE, Kep1er, MEOVV, WayV

-- ============================================
-- RIIZE
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'RIIZE');
DELETE FROM contents WHERE artist_name = 'RIIZE';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('fG0hI1jK2lM', '[RIIZE LOG] 일상 브이로그', 'RIIZE', 'https://img.youtube.com/vi/fG0hI1jK2lM/maxresdefault.jpg', 'normal', true),
('gH1iJ2kL3mN', '[RIIZE LOG] 연습실', 'RIIZE', 'https://img.youtube.com/vi/gH1iJ2kL3mN/maxresdefault.jpg', 'normal', true),
('hI2jK3lM4nO', '[RIIZE LOG] 음악방송 비하인드', 'RIIZE', 'https://img.youtube.com/vi/hI2jK3lM4nO/maxresdefault.jpg', 'normal', true),
('iJ3kL4mN5oP', '[RIIZE LOG] 뮤비 촬영', 'RIIZE', 'https://img.youtube.com/vi/iJ3kL4mN5oP/maxresdefault.jpg', 'easy', true),
('jK4lM5nO6pQ', '[RIIZE LOG] 게임 타임', 'RIIZE', 'https://img.youtube.com/vi/jK4lM5nO6pQ/maxresdefault.jpg', 'easy', true),
('kL5mN6oP7qR', '[RIIZE] 팬미팅', 'RIIZE', 'https://img.youtube.com/vi/kL5mN6oP7qR/maxresdefault.jpg', 'easy', true),
('lM6nO7pQ8rS', '[RIIZE LOG] 콘서트 비하인드', 'RIIZE', 'https://img.youtube.com/vi/lM6nO7pQ8rS/maxresdefault.jpg', 'hard', true),
('mN7oP8qR9sT', '[RIIZE LOG] 해외 투어', 'RIIZE', 'https://img.youtube.com/vi/mN7oP8qR9sT/maxresdefault.jpg', 'hard', true),
('nO8pQ9rS0tU', '[RIIZE LOG] 녹음실', 'RIIZE', 'https://img.youtube.com/vi/nO8pQ9rS0tU/maxresdefault.jpg', 'hard', true),
('oP9qR0sT1uV', '[RIIZE LOG] 휴식 시간', 'RIIZE', 'https://img.youtube.com/vi/oP9qR0sT1uV/maxresdefault.jpg', 'easy', true);

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 뭐 할 거야?', '뭐 할 거야', '하다', 'What are you going to do today?', '뭐 + 하다 + ㄹ 거야 = 미래 계획', 1 FROM contents WHERE youtube_id = 'fG0hI1jK2lM' AND artist_name = 'RIIZE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이 안무 멋있어요', '멋있어요', '멋있다', 'This choreography is cool', '멋있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'gH1iJ2kL3mN' AND artist_name = 'RIIZE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 감사해요!', '감사해요', '감사하다', 'Thank you for 1st place!', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = 'hI2jK3lM4nO' AND artist_name = 'RIIZE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 컨셉 예뻐요', '예뻐요', '예쁘다', 'This concept is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'iJ3kL4mN5oP' AND artist_name = 'RIIZE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '게임 시작하자!', '시작하자', '시작하다', 'Let''s start the game!', '시작하다 + 자 = 제안 표현', 1 FROM contents WHERE youtube_id = 'jK4lM5nO6pQ' AND artist_name = 'RIIZE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '브리즈 사랑해요!', '사랑해요', '사랑하다', 'I love you BRIIZE!', '사랑하다 + 해요 = 사랑 표현', 1 FROM contents WHERE youtube_id = 'kL5mN6oP7qR' AND artist_name = 'RIIZE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '콘서트 대박이었어요', '대박', NULL, 'The concert was amazing', '대박 = 대단한 성공', 1 FROM contents WHERE youtube_id = 'lM6nO7pQ8rS' AND artist_name = 'RIIZE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '여기 음식 맛있어요', '맛있어요', '맛있다', 'The food here is delicious', '맛있다 + 어요 = 맛 표현', 1 FROM contents WHERE youtube_id = 'mN7oP8qR9sT' AND artist_name = 'RIIZE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 가사 좋아요', '가사', NULL, 'I like these lyrics', '가사 = 노래 말', 1 FROM contents WHERE youtube_id = 'nO8pQ9rS0tU' AND artist_name = 'RIIZE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '잠깐 쉬자', '쉬자', '쉬다', 'Let''s rest for a bit', '쉬다 + 자 = 제안 표현', 1 FROM contents WHERE youtube_id = 'oP9qR0sT1uV' AND artist_name = 'RIIZE';

-- ============================================
-- ZEROBASEONE
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'ZEROBASEONE');
DELETE FROM contents WHERE artist_name = 'ZEROBASEONE';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('pQ0rS1tU2vW', '[ZB1 LOG] 일상 브이로그', 'ZEROBASEONE', 'https://img.youtube.com/vi/pQ0rS1tU2vW/maxresdefault.jpg', 'normal', true),
('qR1sT2uV3wX', '[ZB1 LOG] 연습실', 'ZEROBASEONE', 'https://img.youtube.com/vi/qR1sT2uV3wX/maxresdefault.jpg', 'normal', true),
('rS2tU3vW4xY', '[ZB1 LOG] 음악방송 비하인드', 'ZEROBASEONE', 'https://img.youtube.com/vi/rS2tU3vW4xY/maxresdefault.jpg', 'normal', true),
('sT3uV4wX5yZ', '[ZB1 LOG] 뮤비 촬영', 'ZEROBASEONE', 'https://img.youtube.com/vi/sT3uV4wX5yZ/maxresdefault.jpg', 'easy', true),
('tU4vW5xY6zA', '[ZB1 LOG] 게임 타임', 'ZEROBASEONE', 'https://img.youtube.com/vi/tU4vW5xY6zA/maxresdefault.jpg', 'easy', true),
('uV5wX6yZ7aB', '[ZB1] 팬미팅', 'ZEROBASEONE', 'https://img.youtube.com/vi/uV5wX6yZ7aB/maxresdefault.jpg', 'easy', true),
('vW6xY7zA8bC', '[ZB1 LOG] 콘서트 비하인드', 'ZEROBASEONE', 'https://img.youtube.com/vi/vW6xY7zA8bC/maxresdefault.jpg', 'hard', true),
('wX7yZ8aB9cD', '[ZB1 LOG] 해외 투어', 'ZEROBASEONE', 'https://img.youtube.com/vi/wX7yZ8aB9cD/maxresdefault.jpg', 'hard', true),
('xY8zA9bC0dE', '[ZB1 LOG] 녹음실', 'ZEROBASEONE', 'https://img.youtube.com/vi/xY8zA9bC0dE/maxresdefault.jpg', 'hard', true),
('yZ9aB0cD1eF', '[ZB1 LOG] 휴식 시간', 'ZEROBASEONE', 'https://img.youtube.com/vi/yZ9aB0cD1eF/maxresdefault.jpg', 'easy', true);

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 일정 많아요', '많아요', '많다', 'There''s a lot of schedule today', '많다 + 아요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'pQ0rS1tU2vW' AND artist_name = 'ZEROBASEONE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이 안무 어려워요', '어려워요', '어렵다', 'This choreography is hard', '어렵다 + 어요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'qR1sT2uV3wX' AND artist_name = 'ZEROBASEONE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 너무 행복해요', '행복해요', '행복하다', 'I''m so happy about 1st place', '행복하다 + 해요 = 감정 표현', 1 FROM contents WHERE youtube_id = 'rS2tU3vW4xY' AND artist_name = 'ZEROBASEONE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 컨셉 멋있어요', '멋있어요', '멋있다', 'This concept is cool', '멋있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'sT3uV4wX5yZ' AND artist_name = 'ZEROBASEONE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '누가 이길까?', '이길까', '이기다', 'Who will win?', '이기다 + ㄹ까 = 추측 의문', 1 FROM contents WHERE youtube_id = 'tU4vW5xY6zA' AND artist_name = 'ZEROBASEONE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '제로즈 사랑해요!', '사랑해요', '사랑하다', 'I love you ZEROSE!', '사랑하다 + 해요 = 사랑 표현', 1 FROM contents WHERE youtube_id = 'uV5wX6yZ7aB' AND artist_name = 'ZEROBASEONE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '무대 너무 좋았어요', '좋았어요', '좋다', 'The stage was so great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'vW6xY7zA8bC' AND artist_name = 'ZEROBASEONE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '여기 경치 예뻐요', '경치', NULL, 'The scenery here is pretty', '경치 = 풍경', 1 FROM contents WHERE youtube_id = 'wX7yZ8aB9cD' AND artist_name = 'ZEROBASEONE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 멜로디 좋아요', '멜로디', NULL, 'I like this melody', '멜로디 = 곡조', 1 FROM contents WHERE youtube_id = 'xY8zA9bC0dE' AND artist_name = 'ZEROBASEONE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '너무 피곤해요', '피곤해요', '피곤하다', 'I''m so tired', '피곤하다 + 해요 = 상태 표현', 1 FROM contents WHERE youtube_id = 'yZ9aB0cD1eF' AND artist_name = 'ZEROBASEONE';

-- ============================================
-- xikers
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'xikers');
DELETE FROM contents WHERE artist_name = 'xikers';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('zA0bC1dE2fG', '[xikers LOG] 일상 브이로그', 'xikers', 'https://img.youtube.com/vi/zA0bC1dE2fG/maxresdefault.jpg', 'normal', true),
('aB1cD2eF3gH', '[xikers LOG] 연습실', 'xikers', 'https://img.youtube.com/vi/aB1cD2eF3gH/maxresdefault.jpg', 'normal', true),
('bC2dE3fG4hI', '[xikers LOG] 음악방송 비하인드', 'xikers', 'https://img.youtube.com/vi/bC2dE3fG4hI/maxresdefault.jpg', 'normal', true),
('cD3eF4gH5iJ', '[xikers LOG] 뮤비 촬영', 'xikers', 'https://img.youtube.com/vi/cD3eF4gH5iJ/maxresdefault.jpg', 'easy', true),
('dE4fG5hI6jK', '[xikers LOG] 게임 타임', 'xikers', 'https://img.youtube.com/vi/dE4fG5hI6jK/maxresdefault.jpg', 'easy', true),
('eF5gH6iJ7kL', '[xikers] 팬미팅', 'xikers', 'https://img.youtube.com/vi/eF5gH6iJ7kL/maxresdefault.jpg', 'easy', true),
('fG6hI7jK8lM', '[xikers LOG] 콘서트 비하인드', 'xikers', 'https://img.youtube.com/vi/fG6hI7jK8lM/maxresdefault.jpg', 'hard', true),
('gH7iJ8kL9mN', '[xikers LOG] 해외 투어', 'xikers', 'https://img.youtube.com/vi/gH7iJ8kL9mN/maxresdefault.jpg', 'hard', true),
('hI8jK9lM0nO', '[xikers LOG] 녹음실', 'xikers', 'https://img.youtube.com/vi/hI8jK9lM0nO/maxresdefault.jpg', 'hard', true),
('iJ9kL0mN1oP', '[xikers LOG] 휴식 시간', 'xikers', 'https://img.youtube.com/vi/iJ9kL0mN1oP/maxresdefault.jpg', 'easy', true);

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 뭐 해요?', '뭐 해요', '하다', 'What are you doing today?', '뭐 + 하다 + 요 = 현재 행동', 1 FROM contents WHERE youtube_id = 'zA0bC1dE2fG' AND artist_name = 'xikers';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이 안무 재미있어요', '재미있어요', '재미있다', 'This choreography is fun', '재미있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'aB1cD2eF3gH' AND artist_name = 'xikers';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 감사합니다!', '감사합니다', '감사하다', 'Thank you for 1st place!', '감사하다 + ㅂ니다 = 격식 감사', 1 FROM contents WHERE youtube_id = 'bC2dE3fG4hI' AND artist_name = 'xikers';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 컨셉 대박이에요', '대박', NULL, 'This concept is amazing', '대박 = 대단한', 1 FROM contents WHERE youtube_id = 'cD3eF4gH5iJ' AND artist_name = 'xikers';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '내가 이길 거야!', '이길 거야', '이기다', 'I''m going to win!', '이기다 + ㄹ 거야 = 미래 의지', 1 FROM contents WHERE youtube_id = 'dE4fG5hI6jK' AND artist_name = 'xikers';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '팬들 사랑해요!', '사랑해요', '사랑하다', 'I love the fans!', '사랑하다 + 해요 = 사랑 표현', 1 FROM contents WHERE youtube_id = 'eF5gH6iJ7kL' AND artist_name = 'xikers';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '무대 너무 좋았어요', '좋았어요', '좋다', 'The stage was so great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'fG6hI7jK8lM' AND artist_name = 'xikers';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '여기 음식 맛있어요', '맛있어요', '맛있다', 'The food here is delicious', '맛있다 + 어요 = 맛 표현', 1 FROM contents WHERE youtube_id = 'gH7iJ8kL9mN' AND artist_name = 'xikers';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 가사 좋아요', '가사', NULL, 'I like these lyrics', '가사 = 노래 말', 1 FROM contents WHERE youtube_id = 'hI8jK9lM0nO' AND artist_name = 'xikers';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '잠깐 쉬고 싶어요', '쉬고 싶어요', '쉬다', 'I want to rest for a bit', '쉬다 + 고 싶어요 = 소망 표현', 1 FROM contents WHERE youtube_id = 'iJ9kL0mN1oP' AND artist_name = 'xikers';

-- ============================================
-- KISS OF LIFE
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'KISS OF LIFE');
DELETE FROM contents WHERE artist_name = 'KISS OF LIFE';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('jK0lM1nO2pQ', '[KIOF LOG] 일상 브이로그', 'KISS OF LIFE', 'https://img.youtube.com/vi/jK0lM1nO2pQ/maxresdefault.jpg', 'normal', true),
('kL1mN2oP3qR', '[KIOF LOG] 연습실', 'KISS OF LIFE', 'https://img.youtube.com/vi/kL1mN2oP3qR/maxresdefault.jpg', 'normal', true),
('lM2nO3pQ4rS', '[KIOF LOG] 음악방송 비하인드', 'KISS OF LIFE', 'https://img.youtube.com/vi/lM2nO3pQ4rS/maxresdefault.jpg', 'normal', true),
('mN3oP4qR5sT', '[KIOF LOG] 뮤비 촬영', 'KISS OF LIFE', 'https://img.youtube.com/vi/mN3oP4qR5sT/maxresdefault.jpg', 'easy', true),
('nO4pQ5rS6tU', '[KIOF LOG] 게임 타임', 'KISS OF LIFE', 'https://img.youtube.com/vi/nO4pQ5rS6tU/maxresdefault.jpg', 'easy', true),
('oP5qR6sT7uV', '[KIOF] 팬미팅', 'KISS OF LIFE', 'https://img.youtube.com/vi/oP5qR6sT7uV/maxresdefault.jpg', 'easy', true),
('pQ6rS7tU8vW', '[KIOF LOG] 콘서트 비하인드', 'KISS OF LIFE', 'https://img.youtube.com/vi/pQ6rS7tU8vW/maxresdefault.jpg', 'hard', true),
('qR7sT8uV9wX', '[KIOF LOG] 해외 투어', 'KISS OF LIFE', 'https://img.youtube.com/vi/qR7sT8uV9wX/maxresdefault.jpg', 'hard', true),
('rS8tU9vW0xY', '[KIOF LOG] 녹음실', 'KISS OF LIFE', 'https://img.youtube.com/vi/rS8tU9vW0xY/maxresdefault.jpg', 'hard', true),
('sT9uV0wX1yZ', '[KIOF LOG] 휴식 시간', 'KISS OF LIFE', 'https://img.youtube.com/vi/sT9uV0wX1yZ/maxresdefault.jpg', 'easy', true);

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 일정 뭐야?', '일정', NULL, 'What''s the schedule today?', '일정 = 계획된 활동', 1 FROM contents WHERE youtube_id = 'jK0lM1nO2pQ' AND artist_name = 'KISS OF LIFE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이 안무 멋있어요', '멋있어요', '멋있다', 'This choreography is cool', '멋있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'kL1mN2oP3qR' AND artist_name = 'KISS OF LIFE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 너무 기뻐요', '기뻐요', '기쁘다', 'I''m so happy about 1st place', '기쁘다 + 어요 = 기쁨 표현', 1 FROM contents WHERE youtube_id = 'lM2nO3pQ4rS' AND artist_name = 'KISS OF LIFE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 컨셉 예뻐요', '예뻐요', '예쁘다', 'This concept is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'mN3oP4qR5sT' AND artist_name = 'KISS OF LIFE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '누가 먼저?', '먼저', NULL, 'Who''s first?', '먼저 = 다른 것보다 앞서', 1 FROM contents WHERE youtube_id = 'nO4pQ5rS6tU' AND artist_name = 'KISS OF LIFE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '팬들 사랑해요!', '사랑해요', '사랑하다', 'I love the fans!', '사랑하다 + 해요 = 사랑 표현', 1 FROM contents WHERE youtube_id = 'oP5qR6sT7uV' AND artist_name = 'KISS OF LIFE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '콘서트 대박이었어요', '대박', NULL, 'The concert was amazing', '대박 = 대단한 성공', 1 FROM contents WHERE youtube_id = 'pQ6rS7tU8vW' AND artist_name = 'KISS OF LIFE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '여기 경치 예뻐요', '경치', NULL, 'The scenery here is pretty', '경치 = 풍경', 1 FROM contents WHERE youtube_id = 'qR7sT8uV9wX' AND artist_name = 'KISS OF LIFE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 멜로디 좋아요', '멜로디', NULL, 'I like this melody', '멜로디 = 곡조', 1 FROM contents WHERE youtube_id = 'rS8tU9vW0xY' AND artist_name = 'KISS OF LIFE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '너무 피곤해요', '피곤해요', '피곤하다', 'I''m so tired', '피곤하다 + 해요 = 상태 표현', 1 FROM contents WHERE youtube_id = 'sT9uV0wX1yZ' AND artist_name = 'KISS OF LIFE';

-- ============================================
-- Kep1er
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'Kep1er');
DELETE FROM contents WHERE artist_name = 'Kep1er';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('tU0vW1xY2zA', '[Kep1er LOG] 일상 브이로그', 'Kep1er', 'https://img.youtube.com/vi/tU0vW1xY2zA/maxresdefault.jpg', 'normal', true),
('uV1wX2yZ3aB', '[Kep1er LOG] 연습실', 'Kep1er', 'https://img.youtube.com/vi/uV1wX2yZ3aB/maxresdefault.jpg', 'normal', true),
('vW2xY3zA4bC', '[Kep1er LOG] 음악방송 비하인드', 'Kep1er', 'https://img.youtube.com/vi/vW2xY3zA4bC/maxresdefault.jpg', 'normal', true),
('wX3yZ4aB5cD', '[Kep1er LOG] 뮤비 촬영', 'Kep1er', 'https://img.youtube.com/vi/wX3yZ4aB5cD/maxresdefault.jpg', 'easy', true),
('xY4zA5bC6dE', '[Kep1er LOG] 게임 타임', 'Kep1er', 'https://img.youtube.com/vi/xY4zA5bC6dE/maxresdefault.jpg', 'easy', true),
('yZ5aB6cD7eF', '[Kep1er] 팬미팅', 'Kep1er', 'https://img.youtube.com/vi/yZ5aB6cD7eF/maxresdefault.jpg', 'easy', true),
('zA6bC7dE8fG', '[Kep1er LOG] 콘서트 비하인드', 'Kep1er', 'https://img.youtube.com/vi/zA6bC7dE8fG/maxresdefault.jpg', 'hard', true),
('aB7cD8eF9gH', '[Kep1er LOG] 해외 투어', 'Kep1er', 'https://img.youtube.com/vi/aB7cD8eF9gH/maxresdefault.jpg', 'hard', true),
('bC8dE9fG0hI', '[Kep1er LOG] 녹음실', 'Kep1er', 'https://img.youtube.com/vi/bC8dE9fG0hI/maxresdefault.jpg', 'hard', true),
('cD9eF0gH1iJ', '[Kep1er LOG] 휴식 시간', 'Kep1er', 'https://img.youtube.com/vi/cD9eF0gH1iJ/maxresdefault.jpg', 'easy', true);

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 뭐 할 거야?', '뭐 할 거야', '하다', 'What are you going to do today?', '뭐 + 하다 + ㄹ 거야 = 미래 계획', 1 FROM contents WHERE youtube_id = 'tU0vW1xY2zA' AND artist_name = 'Kep1er';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이 안무 좋아요', '좋아요', '좋다', 'I like this choreography', '좋다 + 아요 = 호감 표현', 1 FROM contents WHERE youtube_id = 'uV1wX2yZ3aB' AND artist_name = 'Kep1er';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 감사해요!', '감사해요', '감사하다', 'Thank you for 1st place!', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = 'vW2xY3zA4bC' AND artist_name = 'Kep1er';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 컨셉 예뻐요', '예뻐요', '예쁘다', 'This concept is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'wX3yZ4aB5cD' AND artist_name = 'Kep1er';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '게임 시작하자!', '시작하자', '시작하다', 'Let''s start the game!', '시작하다 + 자 = 제안 표현', 1 FROM contents WHERE youtube_id = 'xY4zA5bC6dE' AND artist_name = 'Kep1er';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '케플리안 사랑해요!', '사랑해요', '사랑하다', 'I love you Kep1ian!', '사랑하다 + 해요 = 사랑 표현', 1 FROM contents WHERE youtube_id = 'yZ5aB6cD7eF' AND artist_name = 'Kep1er';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '무대 너무 좋았어요', '좋았어요', '좋다', 'The stage was so great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'zA6bC7dE8fG' AND artist_name = 'Kep1er';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '여기 음식 맛있어요', '맛있어요', '맛있다', 'The food here is delicious', '맛있다 + 어요 = 맛 표현', 1 FROM contents WHERE youtube_id = 'aB7cD8eF9gH' AND artist_name = 'Kep1er';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 가사 좋아요', '가사', NULL, 'I like these lyrics', '가사 = 노래 말', 1 FROM contents WHERE youtube_id = 'bC8dE9fG0hI' AND artist_name = 'Kep1er';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '잠깐 쉬자', '쉬자', '쉬다', 'Let''s rest for a bit', '쉬다 + 자 = 제안 표현', 1 FROM contents WHERE youtube_id = 'cD9eF0gH1iJ' AND artist_name = 'Kep1er';

-- ============================================
-- MEOVV
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'MEOVV');
DELETE FROM contents WHERE artist_name = 'MEOVV';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('dE0fG1hI2jK', '[MEOVV LOG] 데뷔 비하인드', 'MEOVV', 'https://img.youtube.com/vi/dE0fG1hI2jK/maxresdefault.jpg', 'easy', true),
('eF1gH2iJ3kL', '[MEOVV LOG] 연습실', 'MEOVV', 'https://img.youtube.com/vi/eF1gH2iJ3kL/maxresdefault.jpg', 'normal', true),
('fG2hI3jK4lM', '[MEOVV LOG] 음악방송 비하인드', 'MEOVV', 'https://img.youtube.com/vi/fG2hI3jK4lM/maxresdefault.jpg', 'normal', true),
('gH3iJ4kL5mN', '[MEOVV LOG] 뮤비 촬영', 'MEOVV', 'https://img.youtube.com/vi/gH3iJ4kL5mN/maxresdefault.jpg', 'easy', true),
('hI4jK5lM6nO', '[MEOVV LOG] 게임 타임', 'MEOVV', 'https://img.youtube.com/vi/hI4jK5lM6nO/maxresdefault.jpg', 'easy', true),
('iJ5kL6mN7oP', '[MEOVV LOG] 팬사인회', 'MEOVV', 'https://img.youtube.com/vi/iJ5kL6mN7oP/maxresdefault.jpg', 'easy', true),
('jK6lM7nO8pQ', '[MEOVV LOG] 콘서트 준비', 'MEOVV', 'https://img.youtube.com/vi/jK6lM7nO8pQ/maxresdefault.jpg', 'normal', true),
('kL7mN8oP9qR', '[MEOVV LOG] 멤버들 대화', 'MEOVV', 'https://img.youtube.com/vi/kL7mN8oP9qR/maxresdefault.jpg', 'easy', true),
('lM8nO9pQ0rS', '[MEOVV LOG] 녹음실', 'MEOVV', 'https://img.youtube.com/vi/lM8nO9pQ0rS/maxresdefault.jpg', 'hard', true),
('mN9oP0qR1sT', '[MEOVV LOG] 휴식 시간', 'MEOVV', 'https://img.youtube.com/vi/mN9oP0qR1sT/maxresdefault.jpg', 'easy', true);

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '데뷔 너무 떨려요', '떨려요', '떨리다', 'I''m so nervous about debut', '떨리다 + 어요 = 긴장 상태', 1 FROM contents WHERE youtube_id = 'dE0fG1hI2jK' AND artist_name = 'MEOVV';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이 동작 어려워요', '어려워요', '어렵다', 'This move is hard', '어렵다 + 어요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'eF1gH2iJ3kL' AND artist_name = 'MEOVV';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 너무 행복해요', '행복해요', '행복하다', 'I''m so happy about 1st place', '행복하다 + 해요 = 감정 표현', 1 FROM contents WHERE youtube_id = 'fG2hI3jK4lM' AND artist_name = 'MEOVV';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 컨셉 예뻐요', '예뻐요', '예쁘다', 'This concept is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'gH3iJ4kL5mN' AND artist_name = 'MEOVV';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '누가 먼저 할래?', '먼저', NULL, 'Who wants to go first?', '먼저 = 다른 것보다 앞서', 1 FROM contents WHERE youtube_id = 'hI4jK5lM6nO' AND artist_name = 'MEOVV';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '팬들 감사해요!', '감사해요', '감사하다', 'Thank you fans!', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = 'iJ5kL6mN7oP' AND artist_name = 'MEOVV';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '콘서트 기대돼요', '기대돼요', '기대되다', 'I''m excited for the concert', '기대되다 + 요 = 기대 표현', 1 FROM contents WHERE youtube_id = 'jK6lM7nO8pQ' AND artist_name = 'MEOVV';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 뭐 먹을까?', '먹을까', '먹다', 'What should we eat today?', '먹다 + ㄹ까 = 제안 의문', 1 FROM contents WHERE youtube_id = 'kL7mN8oP9qR' AND artist_name = 'MEOVV';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 멜로디 좋아요', '멜로디', NULL, 'I like this melody', '멜로디 = 곡조', 1 FROM contents WHERE youtube_id = 'lM8nO9pQ0rS' AND artist_name = 'MEOVV';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '잠깐 쉬자', '쉬자', '쉬다', 'Let''s rest for a bit', '쉬다 + 자 = 제안 표현', 1 FROM contents WHERE youtube_id = 'mN9oP0qR1sT' AND artist_name = 'MEOVV';

-- ============================================
-- WayV
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'WayV');
DELETE FROM contents WHERE artist_name = 'WayV';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('nO0pQ1rS2tU', '[WayV LOG] 일상 브이로그', 'WayV', 'https://img.youtube.com/vi/nO0pQ1rS2tU/maxresdefault.jpg', 'normal', true),
('oP1qR2sT3uV', '[WayV LOG] 연습실', 'WayV', 'https://img.youtube.com/vi/oP1qR2sT3uV/maxresdefault.jpg', 'normal', true),
('pQ2rS3tU4vW', '[WayV LOG] 음악방송 비하인드', 'WayV', 'https://img.youtube.com/vi/pQ2rS3tU4vW/maxresdefault.jpg', 'normal', true),
('qR3sT4uV5wX', '[WayV LOG] 뮤비 촬영', 'WayV', 'https://img.youtube.com/vi/qR3sT4uV5wX/maxresdefault.jpg', 'easy', true),
('rS4tU5vW6xY', '[WayV LOG] 게임 타임', 'WayV', 'https://img.youtube.com/vi/rS4tU5vW6xY/maxresdefault.jpg', 'easy', true),
('sT5uV6wX7yZ', '[WayV] 팬미팅', 'WayV', 'https://img.youtube.com/vi/sT5uV6wX7yZ/maxresdefault.jpg', 'easy', true),
('tU6vW7xY8zA', '[WayV LOG] 콘서트 비하인드', 'WayV', 'https://img.youtube.com/vi/tU6vW7xY8zA/maxresdefault.jpg', 'hard', true),
('uV7wX8yZ9aB', '[WayV LOG] 해외 투어', 'WayV', 'https://img.youtube.com/vi/uV7wX8yZ9aB/maxresdefault.jpg', 'hard', true),
('vW8xY9zA0bC', '[WayV LOG] 녹음실', 'WayV', 'https://img.youtube.com/vi/vW8xY9zA0bC/maxresdefault.jpg', 'hard', true),
('wX9yZ0aB1cD', '[WayV LOG] 휴식 시간', 'WayV', 'https://img.youtube.com/vi/wX9yZ0aB1cD/maxresdefault.jpg', 'easy', true);

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 뭐 해요?', '뭐 해요', '하다', 'What are you doing today?', '뭐 + 하다 + 요 = 현재 행동', 1 FROM contents WHERE youtube_id = 'nO0pQ1rS2tU' AND artist_name = 'WayV';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이 안무 어려워요', '어려워요', '어렵다', 'This choreography is hard', '어렵다 + 어요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'oP1qR2sT3uV' AND artist_name = 'WayV';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 감사합니다!', '감사합니다', '감사하다', 'Thank you for 1st place!', '감사하다 + ㅂ니다 = 격식 감사', 1 FROM contents WHERE youtube_id = 'pQ2rS3tU4vW' AND artist_name = 'WayV';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 컨셉 멋있어요', '멋있어요', '멋있다', 'This concept is cool', '멋있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'qR3sT4uV5wX' AND artist_name = 'WayV';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '게임 시작하자!', '시작하자', '시작하다', 'Let''s start the game!', '시작하다 + 자 = 제안 표현', 1 FROM contents WHERE youtube_id = 'rS4tU5vW6xY' AND artist_name = 'WayV';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '웨이션니 사랑해요!', '사랑해요', '사랑하다', 'I love you WayZenNi!', '사랑하다 + 해요 = 사랑 표현', 1 FROM contents WHERE youtube_id = 'sT5uV6wX7yZ' AND artist_name = 'WayV';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '무대 너무 좋았어요', '좋았어요', '좋다', 'The stage was so great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'tU6vW7xY8zA' AND artist_name = 'WayV';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '여기 음식 맛있어요', '맛있어요', '맛있다', 'The food here is delicious', '맛있다 + 어요 = 맛 표현', 1 FROM contents WHERE youtube_id = 'uV7wX8yZ9aB' AND artist_name = 'WayV';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 가사 좋아요', '가사', NULL, 'I like these lyrics', '가사 = 노래 말', 1 FROM contents WHERE youtube_id = 'vW8xY9zA0bC' AND artist_name = 'WayV';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '잠깐 쉬고 싶어요', '쉬고 싶어요', '쉬다', 'I want to rest for a bit', '쉬다 + 고 싶어요 = 소망 표현', 1 FROM contents WHERE youtube_id = 'wX9yZ0aB1cD' AND artist_name = 'WayV';
