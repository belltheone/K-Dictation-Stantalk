-- Batch 6 (Final): Red Velvet, ATEEZ, Hearts2Hearts, IZNA (각 10개 콘텐츠)

-- ============================================
-- Red Velvet
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'Red Velvet');
DELETE FROM contents WHERE artist_name = 'Red Velvet';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('rS0tU1vW2xY', '[Red Velvet LOG] 일상 브이로그', 'Red Velvet', 'https://img.youtube.com/vi/rS0tU1vW2xY/maxresdefault.jpg', 'normal', true),
('sT1uV2wX3yZ', '[Red Velvet LOG] 연습실', 'Red Velvet', 'https://img.youtube.com/vi/sT1uV2wX3yZ/maxresdefault.jpg', 'normal', true),
('tU2vW3xY4zA', '[Red Velvet LOG] 음악방송 비하인드', 'Red Velvet', 'https://img.youtube.com/vi/tU2vW3xY4zA/maxresdefault.jpg', 'normal', true),
('uV3wX4yZ5aB', '[Red Velvet LOG] 뮤비 촬영', 'Red Velvet', 'https://img.youtube.com/vi/uV3wX4yZ5aB/maxresdefault.jpg', 'easy', true),
('vW4xY5zA6bC', '[Red Velvet LOG] 게임 타임', 'Red Velvet', 'https://img.youtube.com/vi/vW4xY5zA6bC/maxresdefault.jpg', 'easy', true),
('wX5yZ6aB7cD', '[Red Velvet] 팬미팅', 'Red Velvet', 'https://img.youtube.com/vi/wX5yZ6aB7cD/maxresdefault.jpg', 'easy', true),
('xY6zA7bC8dE', '[Red Velvet LOG] 콘서트 비하인드', 'Red Velvet', 'https://img.youtube.com/vi/xY6zA7bC8dE/maxresdefault.jpg', 'hard', true),
('yZ7aB8cD9eF', '[Red Velvet LOG] 해외 투어', 'Red Velvet', 'https://img.youtube.com/vi/yZ7aB8cD9eF/maxresdefault.jpg', 'hard', true),
('zA8bC9dE0fG', '[Red Velvet LOG] 녹음실', 'Red Velvet', 'https://img.youtube.com/vi/zA8bC9dE0fG/maxresdefault.jpg', 'hard', true),
('aB9cD0eF1gH', '[Red Velvet LOG] 휴식 시간', 'Red Velvet', 'https://img.youtube.com/vi/aB9cD0eF1gH/maxresdefault.jpg', 'easy', true);

-- Red Velvet 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 일정 뭐야?', '일정', NULL, 'What''s the schedule today?', '일정 = 계획된 활동', 1 FROM contents WHERE youtube_id = 'rS0tU1vW2xY';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이 안무 좋아요', '좋아요', '좋다', 'I like this choreography', '좋다 + 아요 = 호감 표현', 1 FROM contents WHERE youtube_id = 'sT1uV2wX3yZ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 감사해요!', '감사해요', '감사하다', 'Thank you for 1st place!', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = 'tU2vW3xY4zA';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 컨셉 예뻐요', '예뻐요', '예쁘다', 'This concept is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'uV3wX4yZ5aB';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '누가 이길까?', '이길까', '이기다', 'Who will win?', '이기다 + ㄹ까 = 추측 의문', 1 FROM contents WHERE youtube_id = 'vW4xY5zA6bC';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '러비 사랑해요!', '사랑해요', '사랑하다', 'I love you ReVeluv!', '사랑하다 + 해요 = 사랑 표현', 1 FROM contents WHERE youtube_id = 'wX5yZ6aB7cD';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '무대 너무 좋았어요', '좋았어요', '좋다', 'The stage was so great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'xY6zA7bC8dE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '여기 음식 맛있어요', '맛있어요', '맛있다', 'The food here is delicious', '맛있다 + 어요 = 맛 표현', 1 FROM contents WHERE youtube_id = 'yZ7aB8cD9eF';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 가사 좋아요', '가사', NULL, 'I like these lyrics', '가사 = 노래 말', 1 FROM contents WHERE youtube_id = 'zA8bC9dE0fG';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '잠깐 쉬고 싶어요', '쉬고 싶어요', '쉬다', 'I want to rest for a bit', '쉬다 + 고 싶어요 = 소망 표현', 1 FROM contents WHERE youtube_id = 'aB9cD0eF1gH';

-- ============================================
-- ATEEZ
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'ATEEZ');
DELETE FROM contents WHERE artist_name = 'ATEEZ';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('bC0dE1fG2hI', '[ATEEZ LOG] 일상 브이로그', 'ATEEZ', 'https://img.youtube.com/vi/bC0dE1fG2hI/maxresdefault.jpg', 'normal', true),
('cD1eF2gH3iJ', '[ATEEZ LOG] 연습실', 'ATEEZ', 'https://img.youtube.com/vi/cD1eF2gH3iJ/maxresdefault.jpg', 'normal', true),
('dE2fG3hI4jK', '[ATEEZ LOG] 음악방송 비하인드', 'ATEEZ', 'https://img.youtube.com/vi/dE2fG3hI4jK/maxresdefault.jpg', 'normal', true),
('eF3gH4iJ5kL', '[ATEEZ LOG] 뮤비 촬영', 'ATEEZ', 'https://img.youtube.com/vi/eF3gH4iJ5kL/maxresdefault.jpg', 'easy', true),
('fG4hI5jK6lM', '[ATEEZ LOG] 게임 타임', 'ATEEZ', 'https://img.youtube.com/vi/fG4hI5jK6lM/maxresdefault.jpg', 'easy', true),
('gH5iJ6kL7mN', '[ATEEZ] 팬미팅', 'ATEEZ', 'https://img.youtube.com/vi/gH5iJ6kL7mN/maxresdefault.jpg', 'easy', true),
('hI6jK7lM8nO', '[ATEEZ LOG] 콘서트 비하인드', 'ATEEZ', 'https://img.youtube.com/vi/hI6jK7lM8nO/maxresdefault.jpg', 'hard', true),
('iJ7kL8mN9oP', '[ATEEZ LOG] 해외 투어', 'ATEEZ', 'https://img.youtube.com/vi/iJ7kL8mN9oP/maxresdefault.jpg', 'hard', true),
('jK8lM9nO0pQ', '[ATEEZ LOG] 녹음실', 'ATEEZ', 'https://img.youtube.com/vi/jK8lM9nO0pQ/maxresdefault.jpg', 'hard', true),
('kL9mN0oP1qR', '[ATEEZ LOG] 휴식 시간', 'ATEEZ', 'https://img.youtube.com/vi/kL9mN0oP1qR/maxresdefault.jpg', 'easy', true);

-- ATEEZ 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 뭐 할 거야?', '뭐 할 거야', '하다', 'What are you going to do today?', '뭐 + 하다 + ㄹ 거야 = 미래 계획', 1 FROM contents WHERE youtube_id = 'bC0dE1fG2hI';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이 안무 멋있어요', '멋있어요', '멋있다', 'This choreography is cool', '멋있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'cD1eF2gH3iJ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 너무 기뻐요', '기뻐요', '기쁘다', 'I''m so happy about 1st place', '기쁘다 + 어요 = 기쁨 표현', 1 FROM contents WHERE youtube_id = 'dE2fG3hI4jK';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 컨셉 대박이에요', '대박', NULL, 'This concept is amazing', '대박 = 대단한', 1 FROM contents WHERE youtube_id = 'eF3gH4iJ5kL';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '게임 시작하자!', '시작하자', '시작하다', 'Let''s start the game!', '시작하다 + 자 = 제안 표현', 1 FROM contents WHERE youtube_id = 'fG4hI5jK6lM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '에이티니 사랑해요!', '사랑해요', '사랑하다', 'I love you ATINY!', '사랑하다 + 해요 = 사랑 표현', 1 FROM contents WHERE youtube_id = 'gH5iJ6kL7mN';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '콘서트 대박이었어요', '대박', NULL, 'The concert was amazing', '대박 = 대단한 성공', 1 FROM contents WHERE youtube_id = 'hI6jK7lM8nO';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '여기 경치 예뻐요', '경치', NULL, 'The scenery here is pretty', '경치 = 풍경', 1 FROM contents WHERE youtube_id = 'iJ7kL8mN9oP';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 멜로디 좋아요', '멜로디', NULL, 'I like this melody', '멜로디 = 곡조', 1 FROM contents WHERE youtube_id = 'jK8lM9nO0pQ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '너무 피곤해요', '피곤해요', '피곤하다', 'I''m so tired', '피곤하다 + 해요 = 상태 표현', 1 FROM contents WHERE youtube_id = 'kL9mN0oP1qR';

-- ============================================
-- Hearts2Hearts
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'Hearts2Hearts');
DELETE FROM contents WHERE artist_name = 'Hearts2Hearts';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('lM0nO1pQ2rS', '[H2H LOG] 데뷔 비하인드', 'Hearts2Hearts', 'https://img.youtube.com/vi/lM0nO1pQ2rS/maxresdefault.jpg', 'easy', true),
('mN1oP2qR3sT', '[H2H LOG] 연습실', 'Hearts2Hearts', 'https://img.youtube.com/vi/mN1oP2qR3sT/maxresdefault.jpg', 'normal', true),
('nO2pQ3rS4tU', '[H2H LOG] 음악방송 비하인드', 'Hearts2Hearts', 'https://img.youtube.com/vi/nO2pQ3rS4tU/maxresdefault.jpg', 'normal', true),
('oP3qR4sT5uV', '[H2H LOG] 뮤비 촬영', 'Hearts2Hearts', 'https://img.youtube.com/vi/oP3qR4sT5uV/maxresdefault.jpg', 'easy', true),
('pQ4rS5tU6vW', '[H2H LOG] 게임 타임', 'Hearts2Hearts', 'https://img.youtube.com/vi/pQ4rS5tU6vW/maxresdefault.jpg', 'easy', true),
('qR5sT6uV7wX', '[H2H LOG] 팬사인회', 'Hearts2Hearts', 'https://img.youtube.com/vi/qR5sT6uV7wX/maxresdefault.jpg', 'easy', true),
('rS6tU7vW8xY', '[H2H LOG] 콘서트 준비', 'Hearts2Hearts', 'https://img.youtube.com/vi/rS6tU7vW8xY/maxresdefault.jpg', 'normal', true),
('sT7uV8wX9yZ', '[H2H LOG] 멤버들 대화', 'Hearts2Hearts', 'https://img.youtube.com/vi/sT7uV8wX9yZ/maxresdefault.jpg', 'easy', true),
('tU8vW9xY0zA', '[H2H LOG] 녹음실', 'Hearts2Hearts', 'https://img.youtube.com/vi/tU8vW9xY0zA/maxresdefault.jpg', 'hard', true),
('uV9wX0yZ1aB', '[H2H LOG] 휴식 시간', 'Hearts2Hearts', 'https://img.youtube.com/vi/uV9wX0yZ1aB/maxresdefault.jpg', 'easy', true);

-- Hearts2Hearts 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '데뷔 너무 떨려요', '떨려요', '떨리다', 'I''m so nervous about debut', '떨리다 + 어요 = 긴장 상태', 1 FROM contents WHERE youtube_id = 'lM0nO1pQ2rS';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이 동작 어려워요', '어려워요', '어렵다', 'This move is hard', '어렵다 + 어요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'mN1oP2qR3sT';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 너무 행복해요', '행복해요', '행복하다', 'I''m so happy about 1st place', '행복하다 + 해요 = 감정 표현', 1 FROM contents WHERE youtube_id = 'nO2pQ3rS4tU';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 컨셉 예뻐요', '예뻐요', '예쁘다', 'This concept is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'oP3qR4sT5uV';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '누가 먼저 할래?', '먼저', NULL, 'Who wants to go first?', '먼저 = 다른 것보다 앞서', 1 FROM contents WHERE youtube_id = 'pQ4rS5tU6vW';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '팬들 감사해요!', '감사해요', '감사하다', 'Thank you fans!', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = 'qR5sT6uV7wX';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '콘서트 기대돼요', '기대돼요', '기대되다', 'I''m excited for the concert', '기대되다 + 요 = 기대 표현', 1 FROM contents WHERE youtube_id = 'rS6tU7vW8xY';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 뭐 먹을까?', '먹을까', '먹다', 'What should we eat today?', '먹다 + ㄹ까 = 제안 의문', 1 FROM contents WHERE youtube_id = 'sT7uV8wX9yZ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 가사 좋아요', '가사', NULL, 'I like these lyrics', '가사 = 노래 말', 1 FROM contents WHERE youtube_id = 'tU8vW9xY0zA';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '잠깐 쉬자', '쉬자', '쉬다', 'Let''s rest for a bit', '쉬다 + 자 = 제안 표현', 1 FROM contents WHERE youtube_id = 'uV9wX0yZ1aB';

-- ============================================
-- IZNA
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'IZNA');
DELETE FROM contents WHERE artist_name = 'IZNA';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('vW0xY1zA2bC', '[IZNA LOG] 데뷔 비하인드', 'IZNA', 'https://img.youtube.com/vi/vW0xY1zA2bC/maxresdefault.jpg', 'easy', true),
('wX1yZ2aB3cD', '[IZNA LOG] 연습실', 'IZNA', 'https://img.youtube.com/vi/wX1yZ2aB3cD/maxresdefault.jpg', 'normal', true),
('xY2zA3bC4dE', '[IZNA LOG] 음악방송 비하인드', 'IZNA', 'https://img.youtube.com/vi/xY2zA3bC4dE/maxresdefault.jpg', 'normal', true),
('yZ3aB4cD5eF', '[IZNA LOG] 뮤비 촬영', 'IZNA', 'https://img.youtube.com/vi/yZ3aB4cD5eF/maxresdefault.jpg', 'easy', true),
('zA4bC5dE6fG', '[IZNA LOG] 게임 타임', 'IZNA', 'https://img.youtube.com/vi/zA4bC5dE6fG/maxresdefault.jpg', 'easy', true),
('aB5cD6eF7gH', '[IZNA LOG] 팬사인회', 'IZNA', 'https://img.youtube.com/vi/aB5cD6eF7gH/maxresdefault.jpg', 'easy', true),
('bC6dE7fG8hI', '[IZNA LOG] 콘서트 준비', 'IZNA', 'https://img.youtube.com/vi/bC6dE7fG8hI/maxresdefault.jpg', 'normal', true),
('cD7eF8gH9iJ', '[IZNA LOG] 멤버들 대화', 'IZNA', 'https://img.youtube.com/vi/cD7eF8gH9iJ/maxresdefault.jpg', 'easy', true),
('dE8fG9hI0jK', '[IZNA LOG] 녹음실', 'IZNA', 'https://img.youtube.com/vi/dE8fG9hI0jK/maxresdefault.jpg', 'hard', true),
('eF9gH0iJ1kL', '[IZNA LOG] 휴식 시간', 'IZNA', 'https://img.youtube.com/vi/eF9gH0iJ1kL/maxresdefault.jpg', 'easy', true);

-- IZNA 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '데뷔해서 너무 행복해요', '행복해요', '행복하다', 'I''m so happy we debuted', '행복하다 + 해요 = 감정 표현', 1 FROM contents WHERE youtube_id = 'vW0xY1zA2bC';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이 안무 어려워요', '어려워요', '어렵다', 'This choreography is hard', '어렵다 + 어요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'wX1yZ2aB3cD';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 너무 기뻐요', '기뻐요', '기쁘다', 'I''m so happy about 1st place', '기쁘다 + 어요 = 기쁨 표현', 1 FROM contents WHERE youtube_id = 'xY2zA3bC4dE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 컨셉 멋있어요', '멋있어요', '멋있다', 'This concept is cool', '멋있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'yZ3aB4cD5eF';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '게임 시작하자!', '시작하자', '시작하다', 'Let''s start the game!', '시작하다 + 자 = 제안 표현', 1 FROM contents WHERE youtube_id = 'zA4bC5dE6fG';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '팬들 사랑해요!', '사랑해요', '사랑하다', 'I love the fans!', '사랑하다 + 해요 = 사랑 표현', 1 FROM contents WHERE youtube_id = 'aB5cD6eF7gH';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '콘서트 기대돼요', '기대돼요', '기대되다', 'I''m excited for the concert', '기대되다 + 요 = 기대 표현', 1 FROM contents WHERE youtube_id = 'bC6dE7fG8hI';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 뭐 할 거야?', '뭐 할 거야', '하다', 'What are you going to do today?', '뭐 + 하다 + ㄹ 거야 = 미래 계획', 1 FROM contents WHERE youtube_id = 'cD7eF8gH9iJ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 멜로디 좋아요', '멜로디', NULL, 'I like this melody', '멜로디 = 곡조', 1 FROM contents WHERE youtube_id = 'dE8fG9hI0jK';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '너무 피곤해요', '피곤해요', '피곤하다', 'I''m so tired', '피곤하다 + 해요 = 상태 표현', 1 FROM contents WHERE youtube_id = 'eF9gH0iJ1kL';
