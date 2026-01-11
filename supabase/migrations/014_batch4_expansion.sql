-- Batch 4: ILLIT, NMIXX, BABYMONSTER, TWS (각 10개 콘텐츠)

-- ============================================
-- ILLIT
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'ILLIT');
DELETE FROM contents WHERE artist_name = 'ILLIT';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('pQ0rS1tU2vW', '[ILLIT LOG] 데뷔 비하인드', 'ILLIT', 'https://img.youtube.com/vi/pQ0rS1tU2vW/maxresdefault.jpg', 'easy', true),
('qR1sT2uV3wX', '[ILLIT LOG] 연습실 일상', 'ILLIT', 'https://img.youtube.com/vi/qR1sT2uV3wX/maxresdefault.jpg', 'normal', true),
('rS2tU3vW4xY', '[ILLIT LOG] 음악방송 비하인드', 'ILLIT', 'https://img.youtube.com/vi/rS2tU3vW4xY/maxresdefault.jpg', 'normal', true),
('sT3uV4wX5yZ', '[ILLIT LOG] 뮤비 촬영', 'ILLIT', 'https://img.youtube.com/vi/sT3uV4wX5yZ/maxresdefault.jpg', 'easy', true),
('tU4vW5xY6zA', '[ILLIT LOG] 게임 타임', 'ILLIT', 'https://img.youtube.com/vi/tU4vW5xY6zA/maxresdefault.jpg', 'easy', true),
('uV5wX6yZ7aB', '[ILLIT LOG] 팬사인회', 'ILLIT', 'https://img.youtube.com/vi/uV5wX6yZ7aB/maxresdefault.jpg', 'easy', true),
('vW6xY7zA8bC', '[ILLIT LOG] 휴식 시간', 'ILLIT', 'https://img.youtube.com/vi/vW6xY7zA8bC/maxresdefault.jpg', 'easy', true),
('wX7yZ8aB9cD', '[ILLIT LOG] 콘서트 준비', 'ILLIT', 'https://img.youtube.com/vi/wX7yZ8aB9cD/maxresdefault.jpg', 'normal', true),
('xY8zA9bC0dE', '[ILLIT LOG] 멤버들 대화', 'ILLIT', 'https://img.youtube.com/vi/xY8zA9bC0dE/maxresdefault.jpg', 'easy', true),
('yZ9aB0cD1eF', '[ILLIT LOG] 녹음실', 'ILLIT', 'https://img.youtube.com/vi/yZ9aB0cD1eF/maxresdefault.jpg', 'hard', true);

-- ILLIT 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '데뷔 너무 떨려요', '떨려요', '떨리다', 'I''m so nervous about debut', '떨리다 + 어요 = 긴장 상태', 1 FROM contents WHERE youtube_id = 'pQ0rS1tU2vW';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '팬분들 감사해요', '감사해요', '감사하다', 'Thank you fans', '감사하다 + 해요 = 감사 표현', 2 FROM contents WHERE youtube_id = 'pQ0rS1tU2vW';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이 안무 어려워요', '어려워요', '어렵다', 'This choreography is hard', '어렵다 + 어요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'qR1sT2uV3wX';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 너무 행복해요', '행복해요', '행복하다', 'I''m so happy about 1st place', '행복하다 + 해요 = 감정 표현', 1 FROM contents WHERE youtube_id = 'rS2tU3vW4xY';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 컨셉 예뻐요', '예뻐요', '예쁘다', 'This concept is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'sT3uV4wX5yZ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '누가 이길까요?', '이길까요', '이기다', 'Who will win?', '이기다 + ㄹ까요 = 추측 의문', 1 FROM contents WHERE youtube_id = 'tU4vW5xY6zA';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '팬들 너무 좋아요', '좋아요', '좋다', 'I love the fans', '좋다 + 아요 = 호감 표현', 1 FROM contents WHERE youtube_id = 'uV5wX6yZ7aB';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '너무 피곤해요', '피곤해요', '피곤하다', 'I''m so tired', '피곤하다 + 해요 = 상태 표현', 1 FROM contents WHERE youtube_id = 'vW6xY7zA8bC';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '콘서트 기대돼요', '기대돼요', '기대되다', 'I''m excited for the concert', '기대되다 + 어요 = 기대 표현', 1 FROM contents WHERE youtube_id = 'wX7yZ8aB9cD';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 뭐 먹을까?', '먹을까', '먹다', 'What should we eat today?', '먹다 + ㄹ까 = 제안 의문', 1 FROM contents WHERE youtube_id = 'xY8zA9bC0dE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 가사 좋아요', '가사', NULL, 'I like these lyrics', '가사 = 노래 말', 1 FROM contents WHERE youtube_id = 'yZ9aB0cD1eF';

-- ============================================
-- NMIXX
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'NMIXX');
DELETE FROM contents WHERE artist_name = 'NMIXX';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('zA0bC1dE2fG', '[NMIXX LOG] 일상 브이로그', 'NMIXX', 'https://img.youtube.com/vi/zA0bC1dE2fG/maxresdefault.jpg', 'normal', true),
('aB1cD2eF3gH', '[NMIXX LOG] 연습실', 'NMIXX', 'https://img.youtube.com/vi/aB1cD2eF3gH/maxresdefault.jpg', 'normal', true),
('bC2dE3fG4hI', '[NMIXX LOG] 음악방송 비하인드', 'NMIXX', 'https://img.youtube.com/vi/bC2dE3fG4hI/maxresdefault.jpg', 'normal', true),
('cD3eF4gH5iJ', '[NMIXX LOG] 뮤비 촬영', 'NMIXX', 'https://img.youtube.com/vi/cD3eF4gH5iJ/maxresdefault.jpg', 'easy', true),
('dE4fG5hI6jK', '[NMIXX LOG] 게임 타임', 'NMIXX', 'https://img.youtube.com/vi/dE4fG5hI6jK/maxresdefault.jpg', 'easy', true),
('eF5gH6iJ7kL', '[NMIXX LOG] 콘서트 비하인드', 'NMIXX', 'https://img.youtube.com/vi/eF5gH6iJ7kL/maxresdefault.jpg', 'hard', true),
('fG6hI7jK8lM', '[NMIXX LOG] 팬미팅', 'NMIXX', 'https://img.youtube.com/vi/fG6hI7jK8lM/maxresdefault.jpg', 'easy', true),
('gH7iJ8kL9mN', '[NMIXX LOG] 해외 투어', 'NMIXX', 'https://img.youtube.com/vi/gH7iJ8kL9mN/maxresdefault.jpg', 'hard', true),
('hI8jK9lM0nO', '[NMIXX LOG] 녹음실', 'NMIXX', 'https://img.youtube.com/vi/hI8jK9lM0nO/maxresdefault.jpg', 'hard', true),
('iJ9kL0mN1oP', '[NMIXX LOG] 휴식 시간', 'NMIXX', 'https://img.youtube.com/vi/iJ9kL0mN1oP/maxresdefault.jpg', 'easy', true);

-- NMIXX 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 일정 많아요', '많아요', '많다', 'There''s a lot of schedule today', '많다 + 아요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'zA0bC1dE2fG';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이 안무 복잡해요', '복잡해요', '복잡하다', 'This choreography is complex', '복잡하다 + 해요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'aB1cD2eF3gH';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 감사해요!', '감사해요', '감사하다', 'Thank you for 1st place!', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = 'bC2dE3fG4hI';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 의상 멋있어요', '멋있어요', '멋있다', 'This outfit is cool', '멋있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'cD3eF4gH5iJ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '내가 이겼다!', '이겼다', '이기다', 'I won!', '이기다 + 었다 = 과거 승리', 1 FROM contents WHERE youtube_id = 'dE4fG5hI6jK';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '엔스워 사랑해요!', '사랑해요', '사랑하다', 'I love you NSWer!', '사랑하다 + 해요 = 사랑 표현', 1 FROM contents WHERE youtube_id = 'eF5gH6iJ7kL';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '팬들 보고 싶었어요', '보고 싶었어요', '보고 싶다', 'I missed the fans', '보고 싶다 + 었어요 = 과거 그리움', 1 FROM contents WHERE youtube_id = 'fG6hI7jK8lM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '여기 음식 맛있어요', '맛있어요', '맛있다', 'The food here is delicious', '맛있다 + 어요 = 맛 표현', 1 FROM contents WHERE youtube_id = 'gH7iJ8kL9mN';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 멜로디 좋아요', '멜로디', NULL, 'I like this melody', '멜로디 = 곡조', 1 FROM contents WHERE youtube_id = 'hI8jK9lM0nO';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '잠깐 쉬고 싶어요', '쉬고 싶어요', '쉬다', 'I want to rest for a bit', '쉬다 + 고 싶어요 = 소망 표현', 1 FROM contents WHERE youtube_id = 'iJ9kL0mN1oP';

-- ============================================
-- BABYMONSTER
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'BABYMONSTER');
DELETE FROM contents WHERE artist_name = 'BABYMONSTER';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('jK0lM1nO2pQ', '[BABYMONSTER LOG] 데뷔 비하인드', 'BABYMONSTER', 'https://img.youtube.com/vi/jK0lM1nO2pQ/maxresdefault.jpg', 'easy', true),
('kL1mN2oP3qR', '[BABYMONSTER LOG] 연습실', 'BABYMONSTER', 'https://img.youtube.com/vi/kL1mN2oP3qR/maxresdefault.jpg', 'normal', true),
('lM2nO3pQ4rS', '[BABYMONSTER LOG] 음악방송 비하인드', 'BABYMONSTER', 'https://img.youtube.com/vi/lM2nO3pQ4rS/maxresdefault.jpg', 'normal', true),
('mN3oP4qR5sT', '[BABYMONSTER LOG] 뮤비 촬영', 'BABYMONSTER', 'https://img.youtube.com/vi/mN3oP4qR5sT/maxresdefault.jpg', 'easy', true),
('nO4pQ5rS6tU', '[BABYMONSTER LOG] 게임 타임', 'BABYMONSTER', 'https://img.youtube.com/vi/nO4pQ5rS6tU/maxresdefault.jpg', 'easy', true),
('oP5qR6sT7uV', '[BABYMONSTER LOG] 팬미팅', 'BABYMONSTER', 'https://img.youtube.com/vi/oP5qR6sT7uV/maxresdefault.jpg', 'easy', true),
('pQ6rS7tU8vW', '[BABYMONSTER LOG] 콘서트 비하인드', 'BABYMONSTER', 'https://img.youtube.com/vi/pQ6rS7tU8vW/maxresdefault.jpg', 'hard', true),
('qR7sT8uV9wX', '[BABYMONSTER LOG] 해외 투어', 'BABYMONSTER', 'https://img.youtube.com/vi/qR7sT8uV9wX/maxresdefault.jpg', 'hard', true),
('rS8tU9vW0xY', '[BABYMONSTER LOG] 녹음실', 'BABYMONSTER', 'https://img.youtube.com/vi/rS8tU9vW0xY/maxresdefault.jpg', 'hard', true),
('sT9uV0wX1yZ', '[BABYMONSTER LOG] 휴식 시간', 'BABYMONSTER', 'https://img.youtube.com/vi/sT9uV0wX1yZ/maxresdefault.jpg', 'easy', true);

-- BABYMONSTER 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '데뷔해서 너무 행복해요', '행복해요', '행복하다', 'I''m so happy we debuted', '행복하다 + 해요 = 감정 표현', 1 FROM contents WHERE youtube_id = 'jK0lM1nO2pQ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이 안무 어려워요', '어려워요', '어렵다', 'This choreography is hard', '어렵다 + 어요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'kL1mN2oP3qR';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 감사합니다!', '감사합니다', '감사하다', 'Thank you for 1st place!', '감사하다 + ㅂ니다 = 격식 감사', 1 FROM contents WHERE youtube_id = 'lM2nO3pQ4rS';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 컨셉 멋있어요', '멋있어요', '멋있다', 'This concept is cool', '멋있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'mN3oP4qR5sT';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '누가 먼저?', '먼저', NULL, 'Who''s first?', '먼저 = 다른 것보다 앞서', 1 FROM contents WHERE youtube_id = 'nO4pQ5rS6tU';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '팬들 사랑해요!', '사랑해요', '사랑하다', 'I love the fans!', '사랑하다 + 해요 = 사랑 표현', 1 FROM contents WHERE youtube_id = 'oP5qR6sT7uV';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '무대 너무 좋았어요', '좋았어요', '좋다', 'The stage was so great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'pQ6rS7tU8vW';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '여기 경치 예뻐요', '경치', NULL, 'The scenery here is pretty', '경치 = 풍경', 1 FROM contents WHERE youtube_id = 'qR7sT8uV9wX';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 가사 좋아요', '가사', NULL, 'I like these lyrics', '가사 = 노래 말', 1 FROM contents WHERE youtube_id = 'rS8tU9vW0xY';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '너무 피곤해요', '피곤해요', '피곤하다', 'I''m so tired', '피곤하다 + 해요 = 상태 표현', 1 FROM contents WHERE youtube_id = 'sT9uV0wX1yZ';

-- ============================================
-- TWS
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'TWS');
DELETE FROM contents WHERE artist_name = 'TWS';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('tU0vW1xY2zA', '[TWS LOG] 데뷔 비하인드', 'TWS', 'https://img.youtube.com/vi/tU0vW1xY2zA/maxresdefault.jpg', 'easy', true),
('uV1wX2yZ3aB', '[TWS LOG] 연습실', 'TWS', 'https://img.youtube.com/vi/uV1wX2yZ3aB/maxresdefault.jpg', 'normal', true),
('vW2xY3zA4bC', '[TWS LOG] 음악방송 비하인드', 'TWS', 'https://img.youtube.com/vi/vW2xY3zA4bC/maxresdefault.jpg', 'normal', true),
('wX3yZ4aB5cD', '[TWS LOG] 뮤비 촬영', 'TWS', 'https://img.youtube.com/vi/wX3yZ4aB5cD/maxresdefault.jpg', 'easy', true),
('xY4zA5bC6dE', '[TWS LOG] 게임 타임', 'TWS', 'https://img.youtube.com/vi/xY4zA5bC6dE/maxresdefault.jpg', 'easy', true),
('yZ5aB6cD7eF', '[TWS LOG] 팬미팅', 'TWS', 'https://img.youtube.com/vi/yZ5aB6cD7eF/maxresdefault.jpg', 'easy', true),
('zA6bC7dE8fG', '[TWS LOG] 콘서트 비하인드', 'TWS', 'https://img.youtube.com/vi/zA6bC7dE8fG/maxresdefault.jpg', 'hard', true),
('aB7cD8eF9gH', '[TWS LOG] 해외 투어', 'TWS', 'https://img.youtube.com/vi/aB7cD8eF9gH/maxresdefault.jpg', 'hard', true),
('bC8dE9fG0hI', '[TWS LOG] 녹음실', 'TWS', 'https://img.youtube.com/vi/bC8dE9fG0hI/maxresdefault.jpg', 'hard', true),
('cD9eF0gH1iJ', '[TWS LOG] 휴식 시간', 'TWS', 'https://img.youtube.com/vi/cD9eF0gH1iJ/maxresdefault.jpg', 'easy', true);

-- TWS 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '데뷔 너무 떨려요', '떨려요', '떨리다', 'I''m so nervous about debut', '떨리다 + 어요 = 긴장 상태', 1 FROM contents WHERE youtube_id = 'tU0vW1xY2zA';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이 동작 어려워요', '어려워요', '어렵다', 'This move is hard', '어렵다 + 어요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'uV1wX2yZ3aB';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 너무 기뻐요', '기뻐요', '기쁘다', 'I''m so happy about 1st place', '기쁘다 + 어요 = 기쁨 표현', 1 FROM contents WHERE youtube_id = 'vW2xY3zA4bC';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 컨셉 예뻐요', '예뻐요', '예쁘다', 'This concept is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'wX3yZ4aB5cD';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '게임 시작하자!', '시작하자', '시작하다', 'Let''s start the game!', '시작하다 + 자 = 제안 표현', 1 FROM contents WHERE youtube_id = 'xY4zA5bC6dE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '팬들 너무 좋아요', '좋아요', '좋다', 'I love the fans', '좋다 + 아요 = 호감 표현', 1 FROM contents WHERE youtube_id = 'yZ5aB6cD7eF';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '무대 너무 좋았어요', '좋았어요', '좋다', 'The stage was so great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'zA6bC7dE8fG';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '여기 음식 맛있어요', '맛있어요', '맛있다', 'The food here is delicious', '맛있다 + 어요 = 맛 표현', 1 FROM contents WHERE youtube_id = 'aB7cD8eF9gH';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 멜로디 좋아요', '멜로디', NULL, 'I like this melody', '멜로디 = 곡조', 1 FROM contents WHERE youtube_id = 'bC8dE9fG0hI';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '잠깐 쉬자', '쉬자', '쉬다', 'Let''s rest for a bit', '쉬다 + 자 = 제안 표현', 1 FROM contents WHERE youtube_id = 'cD9eF0gH1iJ';
