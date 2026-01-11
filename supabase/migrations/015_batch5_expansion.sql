-- Batch 5: BOYNEXTDOOR, fromis_9, NCT 127, NCT DREAM (각 10개 콘텐츠)

-- ============================================
-- BOYNEXTDOOR
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'BOYNEXTDOOR');
DELETE FROM contents WHERE artist_name = 'BOYNEXTDOOR';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('dE0fG1hI2jK', '[BND LOG] 일상 브이로그', 'BOYNEXTDOOR', 'https://img.youtube.com/vi/dE0fG1hI2jK/maxresdefault.jpg', 'normal', true),
('eF1gH2iJ3kL', '[BND LOG] 연습실', 'BOYNEXTDOOR', 'https://img.youtube.com/vi/eF1gH2iJ3kL/maxresdefault.jpg', 'normal', true),
('fG2hI3jK4lM', '[BND LOG] 음악방송 비하인드', 'BOYNEXTDOOR', 'https://img.youtube.com/vi/fG2hI3jK4lM/maxresdefault.jpg', 'normal', true),
('gH3iJ4kL5mN', '[BND LOG] 뮤비 촬영', 'BOYNEXTDOOR', 'https://img.youtube.com/vi/gH3iJ4kL5mN/maxresdefault.jpg', 'easy', true),
('hI4jK5lM6nO', '[BND LOG] 게임 타임', 'BOYNEXTDOOR', 'https://img.youtube.com/vi/hI4jK5lM6nO/maxresdefault.jpg', 'easy', true),
('iJ5kL6mN7oP', '[BND LOG] 팬미팅', 'BOYNEXTDOOR', 'https://img.youtube.com/vi/iJ5kL6mN7oP/maxresdefault.jpg', 'easy', true),
('jK6lM7nO8pQ', '[BND LOG] 콘서트 비하인드', 'BOYNEXTDOOR', 'https://img.youtube.com/vi/jK6lM7nO8pQ/maxresdefault.jpg', 'hard', true),
('kL7mN8oP9qR', '[BND LOG] 해외 투어', 'BOYNEXTDOOR', 'https://img.youtube.com/vi/kL7mN8oP9qR/maxresdefault.jpg', 'hard', true),
('lM8nO9pQ0rS', '[BND LOG] 녹음실', 'BOYNEXTDOOR', 'https://img.youtube.com/vi/lM8nO9pQ0rS/maxresdefault.jpg', 'hard', true),
('mN9oP0qR1sT', '[BND LOG] 휴식 시간', 'BOYNEXTDOOR', 'https://img.youtube.com/vi/mN9oP0qR1sT/maxresdefault.jpg', 'easy', true);

-- BOYNEXTDOOR 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 뭐 할 거야?', '뭐 할 거야', '하다', 'What are you going to do today?', '뭐 + 하다 + ㄹ 거야 = 미래 계획', 1 FROM contents WHERE youtube_id = 'dE0fG1hI2jK';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이 안무 재미있어요', '재미있어요', '재미있다', 'This choreography is fun', '재미있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'eF1gH2iJ3kL';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 감사해요!', '감사해요', '감사하다', 'Thank you for 1st place!', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = 'fG2hI3jK4lM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 컨셉 멋있어요', '멋있어요', '멋있다', 'This concept is cool', '멋있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'gH3iJ4kL5mN';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '내가 이길 거야!', '이길 거야', '이기다', 'I''m going to win!', '이기다 + ㄹ 거야 = 미래 의지', 1 FROM contents WHERE youtube_id = 'hI4jK5lM6nO';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '팬들 사랑해요!', '사랑해요', '사랑하다', 'I love the fans!', '사랑하다 + 해요 = 사랑 표현', 1 FROM contents WHERE youtube_id = 'iJ5kL6mN7oP';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '콘서트 너무 좋았어요', '좋았어요', '좋다', 'The concert was so great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'jK6lM7nO8pQ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '여기 경치 예뻐요', '경치', NULL, 'The scenery here is pretty', '경치 = 풍경', 1 FROM contents WHERE youtube_id = 'kL7mN8oP9qR';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 멜로디 좋아요', '멜로디', NULL, 'I like this melody', '멜로디 = 곡조', 1 FROM contents WHERE youtube_id = 'lM8nO9pQ0rS';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '피곤해요, 쉬자', '피곤해요', '피곤하다', 'I''m tired, let''s rest', '피곤하다 + 해요 = 상태 표현', 1 FROM contents WHERE youtube_id = 'mN9oP0qR1sT';

-- ============================================
-- fromis_9
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'fromis_9');
DELETE FROM contents WHERE artist_name = 'fromis_9';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('nO0pQ1rS2tU', '[fromis_9 LOG] 일상 브이로그', 'fromis_9', 'https://img.youtube.com/vi/nO0pQ1rS2tU/maxresdefault.jpg', 'normal', true),
('oP1qR2sT3uV', '[fromis_9 LOG] 연습실', 'fromis_9', 'https://img.youtube.com/vi/oP1qR2sT3uV/maxresdefault.jpg', 'normal', true),
('pQ2rS3tU4vW', '[fromis_9 LOG] 음악방송 비하인드', 'fromis_9', 'https://img.youtube.com/vi/pQ2rS3tU4vW/maxresdefault.jpg', 'normal', true),
('qR3sT4uV5wX', '[fromis_9 LOG] 뮤비 촬영', 'fromis_9', 'https://img.youtube.com/vi/qR3sT4uV5wX/maxresdefault.jpg', 'easy', true),
('rS4tU5vW6xY', '[fromis_9 LOG] 게임 타임', 'fromis_9', 'https://img.youtube.com/vi/rS4tU5vW6xY/maxresdefault.jpg', 'easy', true),
('sT5uV6wX7yZ', '[fromis_9 LOG] 팬미팅', 'fromis_9', 'https://img.youtube.com/vi/sT5uV6wX7yZ/maxresdefault.jpg', 'easy', true),
('tU6vW7xY8zA', '[fromis_9 LOG] 콘서트 비하인드', 'fromis_9', 'https://img.youtube.com/vi/tU6vW7xY8zA/maxresdefault.jpg', 'hard', true),
('uV7wX8yZ9aB', '[fromis_9 LOG] 해외 투어', 'fromis_9', 'https://img.youtube.com/vi/uV7wX8yZ9aB/maxresdefault.jpg', 'hard', true),
('vW8xY9zA0bC', '[fromis_9 LOG] 녹음실', 'fromis_9', 'https://img.youtube.com/vi/vW8xY9zA0bC/maxresdefault.jpg', 'hard', true),
('wX9yZ0aB1cD', '[fromis_9 LOG] 휴식 시간', 'fromis_9', 'https://img.youtube.com/vi/wX9yZ0aB1cD/maxresdefault.jpg', 'easy', true);

-- fromis_9 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 일정 뭐야?', '일정', NULL, 'What''s the schedule today?', '일정 = 계획된 활동', 1 FROM contents WHERE youtube_id = 'nO0pQ1rS2tU';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이 안무 좋아요', '좋아요', '좋다', 'I like this choreography', '좋다 + 아요 = 호감 표현', 1 FROM contents WHERE youtube_id = 'oP1qR2sT3uV';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 너무 기뻐요', '기뻐요', '기쁘다', 'I''m so happy about 1st place', '기쁘다 + 어요 = 기쁨 표현', 1 FROM contents WHERE youtube_id = 'pQ2rS3tU4vW';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 컨셉 예뻐요', '예뻐요', '예쁘다', 'This concept is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'qR3sT4uV5wX';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '누가 이길까?', '이길까', '이기다', 'Who will win?', '이기다 + ㄹ까 = 추측 의문', 1 FROM contents WHERE youtube_id = 'rS4tU5vW6xY';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '플로버 사랑해요!', '사랑해요', '사랑하다', 'I love you Flover!', '사랑하다 + 해요 = 사랑 표현', 1 FROM contents WHERE youtube_id = 'sT5uV6wX7yZ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '무대 너무 좋았어요', '좋았어요', '좋다', 'The stage was so great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'tU6vW7xY8zA';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '여기 음식 맛있어요', '맛있어요', '맛있다', 'The food here is delicious', '맛있다 + 어요 = 맛 표현', 1 FROM contents WHERE youtube_id = 'uV7wX8yZ9aB';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 가사 좋아요', '가사', NULL, 'I like these lyrics', '가사 = 노래 말', 1 FROM contents WHERE youtube_id = 'vW8xY9zA0bC';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '잠깐 쉬고 싶어요', '쉬고 싶어요', '쉬다', 'I want to rest for a bit', '쉬다 + 고 싶어요 = 소망 표현', 1 FROM contents WHERE youtube_id = 'wX9yZ0aB1cD';

-- ============================================
-- NCT 127
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'NCT 127');
DELETE FROM contents WHERE artist_name = 'NCT 127';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('xY0zA1bC2dE', '[NCT 127 LOG] 일상 브이로그', 'NCT 127', 'https://img.youtube.com/vi/xY0zA1bC2dE/maxresdefault.jpg', 'normal', true),
('yZ1aB2cD3eF', '[NCT 127 LOG] 연습실', 'NCT 127', 'https://img.youtube.com/vi/yZ1aB2cD3eF/maxresdefault.jpg', 'normal', true),
('zA2bC3dE4fG', '[NCT 127 LOG] 음악방송 비하인드', 'NCT 127', 'https://img.youtube.com/vi/zA2bC3dE4fG/maxresdefault.jpg', 'normal', true),
('aB3cD4eF5gH', '[NCT 127 LOG] 뮤비 촬영', 'NCT 127', 'https://img.youtube.com/vi/aB3cD4eF5gH/maxresdefault.jpg', 'easy', true),
('bC4dE5fG6hI', '[NCT 127 LOG] 게임 타임', 'NCT 127', 'https://img.youtube.com/vi/bC4dE5fG6hI/maxresdefault.jpg', 'easy', true),
('cD5eF6gH7iJ', '[NCT 127] 팬미팅', 'NCT 127', 'https://img.youtube.com/vi/cD5eF6gH7iJ/maxresdefault.jpg', 'easy', true),
('dE6fG7hI8jK', '[NCT 127 LOG] 콘서트 비하인드', 'NCT 127', 'https://img.youtube.com/vi/dE6fG7hI8jK/maxresdefault.jpg', 'hard', true),
('eF7gH8iJ9kL', '[NCT 127 LOG] 해외 투어', 'NCT 127', 'https://img.youtube.com/vi/eF7gH8iJ9kL/maxresdefault.jpg', 'hard', true),
('fG8hI9jK0lM', '[NCT 127 LOG] 녹음실', 'NCT 127', 'https://img.youtube.com/vi/fG8hI9jK0lM/maxresdefault.jpg', 'hard', true),
('gH9iJ0kL1mN', '[NCT 127 LOG] 휴식 시간', 'NCT 127', 'https://img.youtube.com/vi/gH9iJ0kL1mN/maxresdefault.jpg', 'easy', true);

-- NCT 127 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 뭐 해요?', '뭐 해요', '하다', 'What are you doing today?', '뭐 + 하다 + 요 = 현재 행동', 1 FROM contents WHERE youtube_id = 'xY0zA1bC2dE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이 안무 어려워요', '어려워요', '어렵다', 'This choreography is hard', '어렵다 + 어요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'yZ1aB2cD3eF';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 감사합니다!', '감사합니다', '감사하다', 'Thank you for 1st place!', '감사하다 + ㅂ니다 = 격식 감사', 1 FROM contents WHERE youtube_id = 'zA2bC3dE4fG';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 컨셉 멋있어요', '멋있어요', '멋있다', 'This concept is cool', '멋있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'aB3cD4eF5gH';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '게임 시작하자!', '시작하자', '시작하다', 'Let''s start the game!', '시작하다 + 자 = 제안 표현', 1 FROM contents WHERE youtube_id = 'bC4dE5fG6hI';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '시즈니 사랑해요!', '사랑해요', '사랑하다', 'I love you NCTzen!', '사랑하다 + 해요 = 사랑 표현', 1 FROM contents WHERE youtube_id = 'cD5eF6gH7iJ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '콘서트 대박이었어요', '대박', NULL, 'The concert was amazing', '대박 = 대단한 성공', 1 FROM contents WHERE youtube_id = 'dE6fG7hI8jK';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '여기 음식 맛있어요', '맛있어요', '맛있다', 'The food here is delicious', '맛있다 + 어요 = 맛 표현', 1 FROM contents WHERE youtube_id = 'eF7gH8iJ9kL';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 멜로디 좋아요', '멜로디', NULL, 'I like this melody', '멜로디 = 곡조', 1 FROM contents WHERE youtube_id = 'fG8hI9jK0lM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '너무 피곤해요', '피곤해요', '피곤하다', 'I''m so tired', '피곤하다 + 해요 = 상태 표현', 1 FROM contents WHERE youtube_id = 'gH9iJ0kL1mN';

-- ============================================
-- NCT DREAM
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'NCT DREAM');
DELETE FROM contents WHERE artist_name = 'NCT DREAM';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('hI0jK1lM2nO', '[NCT DREAM LOG] 일상 브이로그', 'NCT DREAM', 'https://img.youtube.com/vi/hI0jK1lM2nO/maxresdefault.jpg', 'normal', true),
('iJ1kL2mN3oP', '[NCT DREAM LOG] 연습실', 'NCT DREAM', 'https://img.youtube.com/vi/iJ1kL2mN3oP/maxresdefault.jpg', 'normal', true),
('jK2lM3nO4pQ', '[NCT DREAM LOG] 음악방송 비하인드', 'NCT DREAM', 'https://img.youtube.com/vi/jK2lM3nO4pQ/maxresdefault.jpg', 'normal', true),
('kL3mN4oP5qR', '[NCT DREAM LOG] 뮤비 촬영', 'NCT DREAM', 'https://img.youtube.com/vi/kL3mN4oP5qR/maxresdefault.jpg', 'easy', true),
('lM4nO5pQ6rS', '[NCT DREAM LOG] 게임 타임', 'NCT DREAM', 'https://img.youtube.com/vi/lM4nO5pQ6rS/maxresdefault.jpg', 'easy', true),
('mN5oP6qR7sT', '[NCT DREAM] 팬미팅', 'NCT DREAM', 'https://img.youtube.com/vi/mN5oP6qR7sT/maxresdefault.jpg', 'easy', true),
('nO6pQ7rS8tU', '[NCT DREAM LOG] 콘서트 비하인드', 'NCT DREAM', 'https://img.youtube.com/vi/nO6pQ7rS8tU/maxresdefault.jpg', 'hard', true),
('oP7qR8sT9uV', '[NCT DREAM LOG] 해외 투어', 'NCT DREAM', 'https://img.youtube.com/vi/oP7qR8sT9uV/maxresdefault.jpg', 'hard', true),
('pQ8rS9tU0vW', '[NCT DREAM LOG] 녹음실', 'NCT DREAM', 'https://img.youtube.com/vi/pQ8rS9tU0vW/maxresdefault.jpg', 'hard', true),
('qR9sT0uV1wX', '[NCT DREAM LOG] 휴식 시간', 'NCT DREAM', 'https://img.youtube.com/vi/qR9sT0uV1wX/maxresdefault.jpg', 'easy', true);

-- NCT DREAM 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 뭐 할 거야?', '뭐 할 거야', '하다', 'What are you going to do today?', '뭐 + 하다 + ㄹ 거야 = 미래 계획', 1 FROM contents WHERE youtube_id = 'hI0jK1lM2nO';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이 안무 재미있어요', '재미있어요', '재미있다', 'This choreography is fun', '재미있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'iJ1kL2mN3oP';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 너무 행복해요', '행복해요', '행복하다', 'I''m so happy about 1st place', '행복하다 + 해요 = 감정 표현', 1 FROM contents WHERE youtube_id = 'jK2lM3nO4pQ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 컨셉 예뻐요', '예뻐요', '예쁘다', 'This concept is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'kL3mN4oP5qR';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '누가 이길까?', '이길까', '이기다', 'Who will win?', '이기다 + ㄹ까 = 추측 의문', 1 FROM contents WHERE youtube_id = 'lM4nO5pQ6rS';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '시즈니 사랑해요!', '사랑해요', '사랑하다', 'I love you NCTzen!', '사랑하다 + 해요 = 사랑 표현', 1 FROM contents WHERE youtube_id = 'mN5oP6qR7sT';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '무대 너무 좋았어요', '좋았어요', '좋다', 'The stage was so great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'nO6pQ7rS8tU';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '여기 경치 예뻐요', '경치', NULL, 'The scenery here is pretty', '경치 = 풍경', 1 FROM contents WHERE youtube_id = 'oP7qR8sT9uV';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 가사 좋아요', '가사', NULL, 'I like these lyrics', '가사 = 노래 말', 1 FROM contents WHERE youtube_id = 'pQ8rS9tU0vW';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '잠깐 쉬자', '쉬자', '쉬다', 'Let''s rest for a bit', '쉬다 + 자 = 제안 표현', 1 FROM contents WHERE youtube_id = 'qR9sT0uV1wX';
