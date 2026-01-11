-- Batch 2: Stray Kids, SEVENTEEN, TWICE, LE SSERAFIM (각 10개 콘텐츠, 16개 챌린지)

-- ============================================
-- STRAY KIDS
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'Stray Kids');
DELETE FROM contents WHERE artist_name = 'Stray Kids';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('xDJLyjdFdD4', '[SKZ CODE] 스키즈 일상', 'Stray Kids', 'https://img.youtube.com/vi/xDJLyjdFdD4/maxresdefault.jpg', 'normal', true),
('9lPv-c6O7xo', '[2 Kids Room] 현진 & 리노', 'Stray Kids', 'https://img.youtube.com/vi/9lPv-c6O7xo/maxresdefault.jpg', 'easy', true),
('TQTlCHxyuu8', '[STAYweeK] 팬미팅 비하인드', 'Stray Kids', 'https://img.youtube.com/vi/TQTlCHxyuu8/maxresdefault.jpg', 'normal', true),
('HKFxPkXTC8A', '[SKZ CODE] 게임 대결', 'Stray Kids', 'https://img.youtube.com/vi/HKFxPkXTC8A/maxresdefault.jpg', 'easy', true),
('kQ7G3X8R9qM', '[RACHA LOG] 연습실 일상', 'Stray Kids', 'https://img.youtube.com/vi/kQ7G3X8R9qM/maxresdefault.jpg', 'normal', true),
('nS1dTf9lV6E', '[SKZ CODE] 콘서트 비하인드', 'Stray Kids', 'https://img.youtube.com/vi/nS1dTf9lV6E/maxresdefault.jpg', 'hard', true),
('pR8sJ2kM7vQ', '[2 Kids Room] 필릭스 & 창빈', 'Stray Kids', 'https://img.youtube.com/vi/pR8sJ2kM7vQ/maxresdefault.jpg', 'easy', true),
('qT9uK4lN8wR', '[STAYweeK] 음악방송 비하인드', 'Stray Kids', 'https://img.youtube.com/vi/qT9uK4lN8wR/maxresdefault.jpg', 'normal', true),
('rU0vL5mO9xS', '[SKZ CODE] 요리 대결', 'Stray Kids', 'https://img.youtube.com/vi/rU0vL5mO9xS/maxresdefault.jpg', 'easy', true),
('sV1wM6nP0yT', '[RACHA LOG] 녹음실에서', 'Stray Kids', 'https://img.youtube.com/vi/sV1wM6nP0yT/maxresdefault.jpg', 'hard', true);

-- Stray Kids 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '오늘 뭐 할 거야?', '뭐 할 거야', '하다', 'What are you going to do today?', '뭐 + 하다 + ㄹ 거야 = 미래 계획', 1 FROM contents WHERE youtube_id = 'xDJLyjdFdD4';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '같이 밥 먹자', '같이', NULL, 'Let''s eat together', '같이 = 함께', 2 FROM contents WHERE youtube_id = 'xDJLyjdFdD4';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '형 오늘 기분 좋아 보여', '기분', NULL, 'Hyung, you look happy today', '기분 = 감정 상태', 1 FROM contents WHERE youtube_id = '9lPv-c6O7xo';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '스테이 고마워요!', '고마워요', '고맙다', 'Thank you STAY!', '고맙다 + 워요 = 감사 표현', 1 FROM contents WHERE youtube_id = 'TQTlCHxyuu8';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '내가 이길 거야!', '이길 거야', '이기다', 'I''m going to win!', '이기다 + ㄹ 거야 = 미래 의지', 1 FROM contents WHERE youtube_id = 'HKFxPkXTC8A';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '졌어... 억울해', '억울해', '억울하다', 'I lost... it''s unfair', '억울하다 + 해 = 억울함 표현', 2 FROM contents WHERE youtube_id = 'HKFxPkXTC8A';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이 부분 어려워요', '어려워요', '어렵다', 'This part is difficult', '어렵다 + 어요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'kQ7G3X8R9qM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '콘서트 대박이었어!', '대박', NULL, 'The concert was amazing!', '대박 = 대성공', 1 FROM contents WHERE youtube_id = 'nS1dTf9lV6E';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '요즘 뭐 해요?', '뭐 해요', '하다', 'What are you doing these days?', '뭐 + 하다 + 요 = 근황 묻기', 1 FROM contents WHERE youtube_id = 'pR8sJ2kM7vQ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 너무 행복해요', '행복해요', '행복하다', 'I''m so happy about 1st place', '행복하다 + 해요 = 감정 표현', 1 FROM contents WHERE youtube_id = 'qT9uK4lN8wR';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이거 내가 만들었어', '만들었어', '만들다', 'I made this', '만들다 + 었어 = 과거 완료', 1 FROM contents WHERE youtube_id = 'rU0vL5mO9xS';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '맛있어 보여요', '맛있어 보여요', '맛있다', 'It looks delicious', '맛있다 + 어 보여요 = 추측 표현', 2 FROM contents WHERE youtube_id = 'rU0vL5mO9xS';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 가사 좋아요', '가사', NULL, 'I like these lyrics', '가사 = 노래 말', 1 FROM contents WHERE youtube_id = 'sV1wM6nP0yT';

-- ============================================
-- SEVENTEEN
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'SEVENTEEN');
DELETE FROM contents WHERE artist_name = 'SEVENTEEN';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('_EyAoXgJcZs', '[GOING SEVENTEEN] 예능 클립', 'SEVENTEEN', 'https://img.youtube.com/vi/_EyAoXgJcZs/maxresdefault.jpg', 'easy', true),
('gT1NJmH2diY', '[INSIDE SVT] 연습실에서', 'SEVENTEEN', 'https://img.youtube.com/vi/gT1NJmH2diY/maxresdefault.jpg', 'normal', true),
('x1b1gEj_8HE', '[GOING SEVENTEEN] 게임 대결', 'SEVENTEEN', 'https://img.youtube.com/vi/x1b1gEj_8HE/maxresdefault.jpg', 'easy', true),
('tU2vW3xY4zA', '[INSIDE SVT] 콘서트 비하인드', 'SEVENTEEN', 'https://img.youtube.com/vi/tU2vW3xY4zA/maxresdefault.jpg', 'hard', true),
('uV3wX4yZ5aB', '[GOING SEVENTEEN] 요리 대결', 'SEVENTEEN', 'https://img.youtube.com/vi/uV3wX4yZ5aB/maxresdefault.jpg', 'easy', true),
('vW4xY5zA6bC', '[INSIDE SVT] 음악방송 비하인드', 'SEVENTEEN', 'https://img.youtube.com/vi/vW4xY5zA6bC/maxresdefault.jpg', 'normal', true),
('wX5yZ6aB7cD', '[GOING SEVENTEEN] 운동 대결', 'SEVENTEEN', 'https://img.youtube.com/vi/wX5yZ6aB7cD/maxresdefault.jpg', 'normal', true),
('xY6zA7bC8dE', '[INSIDE SVT] 녹음실에서', 'SEVENTEEN', 'https://img.youtube.com/vi/xY6zA7bC8dE/maxresdefault.jpg', 'hard', true),
('yZ7aB8cD9eF', '[GOING SEVENTEEN] 캠핑 편', 'SEVENTEEN', 'https://img.youtube.com/vi/yZ7aB8cD9eF/maxresdefault.jpg', 'easy', true),
('zA8bC9dE0fG', '[INSIDE SVT] 해외 투어', 'SEVENTEEN', 'https://img.youtube.com/vi/zA8bC9dE0fG/maxresdefault.jpg', 'hard', true);

-- SEVENTEEN 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '오늘 게임 뭐 해?', '뭐 해', '하다', 'What game are we playing today?', '뭐 + 하다 = 무엇을 하다', 1 FROM contents WHERE youtube_id = '_EyAoXgJcZs';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '내가 이겼다!', '이겼다', '이기다', 'I won!', '이기다 + 었다 = 승리 과거형', 2 FROM contents WHERE youtube_id = '_EyAoXgJcZs';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '연습 한 번 더 하자', '한 번 더', NULL, 'Let''s practice one more time', '한 번 더 = 추가로 한 번', 1 FROM contents WHERE youtube_id = 'gT1NJmH2diY';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '누가 먼저 할래?', '먼저', NULL, 'Who wants to go first?', '먼저 = 다른 것보다 앞서', 1 FROM contents WHERE youtube_id = 'x1b1gEj_8HE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '캐럿 너무 좋아해요', '좋아해요', '좋아하다', 'I really like CARAT', '좋아하다 + 해요 = 호감 표현', 1 FROM contents WHERE youtube_id = 'tU2vW3xY4zA';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '배고파, 빨리 먹자', '배고파', '배고프다', 'I''m hungry, let''s eat quickly', '배고프다 + 아 = 비격식', 1 FROM contents WHERE youtube_id = 'uV3wX4yZ5aB';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '오늘 무대 잘했어', '잘했어', '잘하다', 'We did well on stage today', '잘하다 + 었어 = 과거 칭찬', 1 FROM contents WHERE youtube_id = 'vW4xY5zA6bC';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '운동 열심히 했어요', '열심히', NULL, 'I exercised hard', '열심히 = 부지런하게', 1 FROM contents WHERE youtube_id = 'wX5yZ6aB7cD';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 멜로디 좋아요', '멜로디', NULL, 'I like this melody', '멜로디 = 곡조', 1 FROM contents WHERE youtube_id = 'xY6zA7bC8dE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '날씨 너무 좋다', '날씨', NULL, 'The weather is so nice', '날씨 = 기상 상태', 1 FROM contents WHERE youtube_id = 'yZ7aB8cD9eF';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '여기 경치 예뻐요', '경치', NULL, 'The scenery here is pretty', '경치 = 풍경', 1 FROM contents WHERE youtube_id = 'zA8bC9dE0fG';

-- ============================================
-- TWICE
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'TWICE');
DELETE FROM contents WHERE artist_name = 'TWICE';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('WoGsGl-yqH4', '[TIME TO TWICE] 게임 시간', 'TWICE', 'https://img.youtube.com/vi/WoGsGl-yqH4/maxresdefault.jpg', 'easy', true),
('mH0_XpSHkZo', '[TWICE TV] 일상 브이로그', 'TWICE', 'https://img.youtube.com/vi/mH0_XpSHkZo/maxresdefault.jpg', 'easy', true),
('k6jqx9kZgPM', '[TIME TO TWICE] 요리 대결', 'TWICE', 'https://img.youtube.com/vi/k6jqx9kZgPM/maxresdefault.jpg', 'normal', true),
('i0p1bmr0EmE', '[TWICE TV] 콘서트 비하인드', 'TWICE', 'https://img.youtube.com/vi/i0p1bmr0EmE/maxresdefault.jpg', 'hard', true),
('aB9cD0eF1gH', '[TIME TO TWICE] 운동 편', 'TWICE', 'https://img.youtube.com/vi/aB9cD0eF1gH/maxresdefault.jpg', 'normal', true),
('bC0dE1fG2hI', '[TWICE TV] 음악방송 비하인드', 'TWICE', 'https://img.youtube.com/vi/bC0dE1fG2hI/maxresdefault.jpg', 'normal', true),
('cD1eF2gH3iJ', '[TIME TO TWICE] 캠핑 편', 'TWICE', 'https://img.youtube.com/vi/cD1eF2gH3iJ/maxresdefault.jpg', 'easy', true),
('dE2fG3hI4jK', '[TWICE TV] 연습실 일상', 'TWICE', 'https://img.youtube.com/vi/dE2fG3hI4jK/maxresdefault.jpg', 'normal', true),
('eF3gH4iJ5kL', '[TIME TO TWICE] 카페 투어', 'TWICE', 'https://img.youtube.com/vi/eF3gH4iJ5kL/maxresdefault.jpg', 'easy', true),
('fG4hI5jK6lM', '[TWICE TV] 해외 투어', 'TWICE', 'https://img.youtube.com/vi/fG4hI5jK6lM/maxresdefault.jpg', 'hard', true);

-- TWICE 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '지금 뭐 하는 거야?', '뭐 하는 거야', '하다', 'What are you doing right now?', '뭐 + 하다 + 는 거야 = 현재 행동 묻기', 1 FROM contents WHERE youtube_id = 'WoGsGl-yqH4';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '진짜 재미있다!', '재미있다', NULL, 'This is really fun!', '재미있다 = 즐거운 상태', 2 FROM contents WHERE youtube_id = 'WoGsGl-yqH4';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '오늘 뭐 했어요?', '뭐 했어요', '하다', 'What did you do today?', '뭐 + 하다 + 했어요 = 과거 행동 묻기', 1 FROM contents WHERE youtube_id = 'mH0_XpSHkZo';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이거 맛있어 보여요', '맛있어 보여요', '맛있다', 'This looks delicious', '맛있다 + 어 보여요 = 추측 표현', 1 FROM contents WHERE youtube_id = 'k6jqx9kZgPM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '원스 보고 싶었어요', '보고 싶었어요', '보고 싶다', 'I missed ONCE', '보고 싶다 + 었어요 = 과거 그리움', 1 FROM contents WHERE youtube_id = 'i0p1bmr0EmE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '운동 힘들어요', '힘들어요', '힘들다', 'Exercise is tough', '힘들다 + 어요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'aB9cD0eF1gH';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 감사해요', '감사해요', '감사하다', 'Thank you for 1st place', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = 'bC0dE1fG2hI';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '여기 공기 좋아요', '공기', NULL, 'The air here is nice', '공기 = 대기', 1 FROM contents WHERE youtube_id = 'cD1eF2gH3iJ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이 안무 좀 어려워', '안무', NULL, 'This choreography is a bit hard', '안무 = 댄스 동작', 1 FROM contents WHERE youtube_id = 'dE2fG3hI4jK';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '커피 마시고 싶어요', '마시고 싶어요', '마시다', 'I want to drink coffee', '마시다 + 고 싶어요 = 소망 표현', 1 FROM contents WHERE youtube_id = 'eF3gH4iJ5kL';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '여기 음식 맛있어요', '맛있어요', '맛있다', 'The food here is delicious', '맛있다 + 어요 = 맛 표현', 1 FROM contents WHERE youtube_id = 'fG4hI5jK6lM';

-- ============================================
-- LE SSERAFIM
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'LE SSERAFIM');
DELETE FROM contents WHERE artist_name = 'LE SSERAFIM';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('pyf8cbqyfPs', '[LE SSERAFIM LOG] 연습실', 'LE SSERAFIM', 'https://img.youtube.com/vi/pyf8cbqyfPs/maxresdefault.jpg', 'normal', true),
('UBURTj20HXI', '[LE SSERAFIM LOG] 일상 대화', 'LE SSERAFIM', 'https://img.youtube.com/vi/UBURTj20HXI/maxresdefault.jpg', 'easy', true),
('gH5iJ6kL7mN', '[LE SSERAFIM LOG] 콘서트 비하인드', 'LE SSERAFIM', 'https://img.youtube.com/vi/gH5iJ6kL7mN/maxresdefault.jpg', 'hard', true),
('hI6jK7lM8nO', '[LE SSERAFIM LOG] 음악방송 비하인드', 'LE SSERAFIM', 'https://img.youtube.com/vi/hI6jK7lM8nO/maxresdefault.jpg', 'normal', true),
('iJ7kL8mN9oP', '[LE SSERAFIM LOG] 뮤비 촬영', 'LE SSERAFIM', 'https://img.youtube.com/vi/iJ7kL8mN9oP/maxresdefault.jpg', 'normal', true),
('jK8lM9nO0pQ', '[LE SSERAFIM LOG] 게임 시간', 'LE SSERAFIM', 'https://img.youtube.com/vi/jK8lM9nO0pQ/maxresdefault.jpg', 'easy', true),
('kL9mN0oP1qR', '[LE SSERAFIM LOG] 해외 투어', 'LE SSERAFIM', 'https://img.youtube.com/vi/kL9mN0oP1qR/maxresdefault.jpg', 'hard', true),
('lM0nO1pQ2rS', '[LE SSERAFIM LOG] 팬미팅', 'LE SSERAFIM', 'https://img.youtube.com/vi/lM0nO1pQ2rS/maxresdefault.jpg', 'easy', true),
('mN1oP2qR3sT', '[LE SSERAFIM LOG] 녹음실', 'LE SSERAFIM', 'https://img.youtube.com/vi/mN1oP2qR3sT/maxresdefault.jpg', 'hard', true),
('nO2pQ3rS4tU', '[LE SSERAFIM LOG] 휴식 시간', 'LE SSERAFIM', 'https://img.youtube.com/vi/nO2pQ3rS4tU/maxresdefault.jpg', 'easy', true);

-- LE SSERAFIM 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '오늘 연습 많이 했어', '많이', NULL, 'We practiced a lot today', '많이 = 다량으로', 1 FROM contents WHERE youtube_id = 'pyf8cbqyfPs';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '이 동작 좀 어려워', '어려워', '어렵다', 'This move is a bit hard', '어렵다 + 어 = 비격식', 2 FROM contents WHERE youtube_id = 'pyf8cbqyfPs';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '피곤해 보여요', '피곤해', '피곤하다', 'You look tired', '피곤하다 + 해 = 비격식 상태 표현', 1 FROM contents WHERE youtube_id = 'UBURTj20HXI';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '내일 쉬고 싶어', '쉬고 싶어', '쉬다', 'I want to rest tomorrow', '쉬다 + 고 싶어 = 소망 표현', 2 FROM contents WHERE youtube_id = 'UBURTj20HXI';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '페러님 사랑해요!', '사랑해요', '사랑하다', 'I love you FEARNOT!', '사랑하다 + 해요 = 사랑 표현', 1 FROM contents WHERE youtube_id = 'gH5iJ6kL7mN';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 너무 기뻐요', '기뻐요', '기쁘다', 'I''m so happy about 1st place', '기쁘다 + 어요 = 기쁨 표현', 1 FROM contents WHERE youtube_id = 'hI6jK7lM8nO';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 컨셉 멋있어요', '멋있어요', '멋있다', 'This concept is cool', '멋있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'iJ7kL8mN9oP';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '내가 이길 거야!', '이길 거야', '이기다', 'I''m going to win!', '이기다 + ㄹ 거야 = 미래 의지', 1 FROM contents WHERE youtube_id = 'jK8lM9nO0pQ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '언니 졌어요!', '졌어요', '지다', 'Unnie lost!', '지다 + 었어요 = 과거 패배', 2 FROM contents WHERE youtube_id = 'jK8lM9nO0pQ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '여기 진짜 예뻐요', '예뻐요', '예쁘다', 'This place is really pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'kL9mN0oP1qR';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '팬들 너무 좋아요', '좋아요', '좋다', 'I love the fans', '좋다 + 아요 = 호감 표현', 1 FROM contents WHERE youtube_id = 'lM0nO1pQ2rS';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이 가사 좋아요', '가사', NULL, 'I like these lyrics', '가사 = 노래 말', 1 FROM contents WHERE youtube_id = 'mN1oP2qR3sT';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '배고파요, 뭐 먹을까?', '배고파요', '배고프다', 'I''m hungry, what should we eat?', '배고프다 + 아요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'nO2pQ3rS4tU';
