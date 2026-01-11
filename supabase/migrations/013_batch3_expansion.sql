-- Batch 3: ITZY, G-IDLE, ENHYPEN, TXT (각 10개 콘텐츠)

-- ============================================
-- ITZY
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'ITZY');
DELETE FROM contents WHERE artist_name = 'ITZY';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('6rc_M3cjWCs', '[ITZY?ITZY!] 게임 타임', 'ITZY', 'https://img.youtube.com/vi/6rc_M3cjWCs/maxresdefault.jpg', 'easy', true),
('fE2h3lGlOsk', '[ITZY LOG] 비하인드 대화', 'ITZY', 'https://img.youtube.com/vi/fE2h3lGlOsk/maxresdefault.jpg', 'normal', true),
('Wfbfqo2xj5Q', '[ITZY LOG] 연습실 일상', 'ITZY', 'https://img.youtube.com/vi/Wfbfqo2xj5Q/maxresdefault.jpg', 'normal', true),
('oP3qR4sT5uV', '[ITZY?ITZY!] 요리 대결', 'ITZY', 'https://img.youtube.com/vi/oP3qR4sT5uV/maxresdefault.jpg', 'easy', true),
('pQ4rS5tU6vW', '[ITZY LOG] 콘서트 비하인드', 'ITZY', 'https://img.youtube.com/vi/pQ4rS5tU6vW/maxresdefault.jpg', 'hard', true),
('qR5sT6uV7wX', '[ITZY?ITZY!] 운동 편', 'ITZY', 'https://img.youtube.com/vi/qR5sT6uV7wX/maxresdefault.jpg', 'normal', true),
('rS6tU7vW8xY', '[ITZY LOG] 음악방송 비하인드', 'ITZY', 'https://img.youtube.com/vi/rS6tU7vW8xY/maxresdefault.jpg', 'normal', true),
('sT7uV8wX9yZ', '[ITZY?ITZY!] 카페 투어', 'ITZY', 'https://img.youtube.com/vi/sT7uV8wX9yZ/maxresdefault.jpg', 'easy', true),
('tU8vW9xY0zA', '[ITZY LOG] 해외 투어', 'ITZY', 'https://img.youtube.com/vi/tU8vW9xY0zA/maxresdefault.jpg', 'hard', true),
('uV9wX0yZ1aB', '[ITZY LOG] 휴식 시간', 'ITZY', 'https://img.youtube.com/vi/uV9wX0yZ1aB/maxresdefault.jpg', 'easy', true);

-- ITZY 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '누가 먼저 할래?', '누가', NULL, 'Who wants to go first?', '누가 = 누구의 주격', 1 FROM contents WHERE youtube_id = '6rc_M3cjWCs';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 50, 55, '나 졌어!', '졌어', '지다', 'I lost!', '지다 + 었어 = 패배 과거형', 2 FROM contents WHERE youtube_id = '6rc_M3cjWCs';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '오늘 너무 행복해요', '행복해요', '행복하다', 'I''m so happy today', '행복하다 + 해요 = 감정 표현', 1 FROM contents WHERE youtube_id = 'fE2h3lGlOsk';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 안무 어려워요', '어려워요', '어렵다', 'This choreography is hard', '어렵다 + 어요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'Wfbfqo2xj5Q';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '맛있어 보여요!', '맛있어 보여요', '맛있다', 'It looks delicious!', '맛있다 + 어 보여요 = 추측', 1 FROM contents WHERE youtube_id = 'oP3qR4sT5uV';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '믿지 보고 싶었어요', '보고 싶었어요', '보고 싶다', 'I missed MIDZY', '보고 싶다 + 었어요 = 과거 그리움', 1 FROM contents WHERE youtube_id = 'pQ4rS5tU6vW';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '운동 힘들어요', '힘들어요', '힘들다', 'Exercise is tough', '힘들다 + 어요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'qR5sT6uV7wX';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 감사해요!', '감사해요', '감사하다', 'Thank you for 1st place!', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = 'rS6tU7vW8xY';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '커피 마실래요?', '마실래요', '마시다', 'Do you want to drink coffee?', '마시다 + ㄹ래요 = 의향 묻기', 1 FROM contents WHERE youtube_id = 'sT7uV8wX9yZ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '여기 음식 맛있어요', '맛있어요', '맛있다', 'The food here is delicious', '맛있다 + 어요 = 맛 표현', 1 FROM contents WHERE youtube_id = 'tU8vW9xY0zA';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '너무 피곤해요', '피곤해요', '피곤하다', 'I''m so tired', '피곤하다 + 해요 = 상태 표현', 1 FROM contents WHERE youtube_id = 'uV9wX0yZ1aB';

-- ============================================
-- G-IDLE
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'G-IDLE');
DELETE FROM contents WHERE artist_name = 'G-IDLE';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('YHnGntEqAIo', '[(G)I-DLE LOG] 일상 브이로그', 'G-IDLE', 'https://img.youtube.com/vi/YHnGntEqAIo/maxresdefault.jpg', 'normal', true),
('z3szNvNJbro', '[(G)I-DLE] 게임 타임', 'G-IDLE', 'https://img.youtube.com/vi/z3szNvNJbro/maxresdefault.jpg', 'hard', true),
('mxlloass-08', '[(G)I-DLE LOG] 연습실', 'G-IDLE', 'https://img.youtube.com/vi/mxlloass-08/maxresdefault.jpg', 'normal', true),
('Jh4QFaPmdss', '[(G)I-DLE LOG] 콘서트 비하인드', 'G-IDLE', 'https://img.youtube.com/vi/Jh4QFaPmdss/maxresdefault.jpg', 'hard', true),
('vW0xY1zA2bC', '[(G)I-DLE] 음악방송 비하인드', 'G-IDLE', 'https://img.youtube.com/vi/vW0xY1zA2bC/maxresdefault.jpg', 'normal', true),
('wX1yZ2aB3cD', '[(G)I-DLE LOG] 뮤비 촬영', 'G-IDLE', 'https://img.youtube.com/vi/wX1yZ2aB3cD/maxresdefault.jpg', 'normal', true),
('xY2zA3bC4dE', '[(G)I-DLE] 요리 시간', 'G-IDLE', 'https://img.youtube.com/vi/xY2zA3bC4dE/maxresdefault.jpg', 'easy', true),
('yZ3aB4cD5eF', '[(G)I-DLE LOG] 해외 투어', 'G-IDLE', 'https://img.youtube.com/vi/yZ3aB4cD5eF/maxresdefault.jpg', 'hard', true),
('zA4bC5dE6fG', '[(G)I-DLE] 팬미팅', 'G-IDLE', 'https://img.youtube.com/vi/zA4bC5dE6fG/maxresdefault.jpg', 'easy', true),
('aB5cD6eF7gH', '[(G)I-DLE LOG] 녹음실', 'G-IDLE', 'https://img.youtube.com/vi/aB5cD6eF7gH/maxresdefault.jpg', 'hard', true);

-- G-IDLE 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 일정 뭐야?', '일정', NULL, 'What''s the schedule today?', '일정 = 계획된 활동', 1 FROM contents WHERE youtube_id = 'YHnGntEqAIo';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '카페 가고 싶어요', '가고 싶어요', '가다', 'I want to go to a cafe', '가다 + 고 싶어요 = 소망 표현', 2 FROM contents WHERE youtube_id = 'YHnGntEqAIo';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이거 어떻게 해요?', '어떻게', NULL, 'How do you do this?', '어떻게 = 방법 묻기', 1 FROM contents WHERE youtube_id = 'z3szNvNJbro';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이 안무 멋있어요', '멋있어요', '멋있다', 'This choreography is cool', '멋있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'mxlloass-08';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '네버랜드 사랑해요!', '사랑해요', '사랑하다', 'I love you Neverland!', '사랑하다 + 해요 = 사랑 표현', 1 FROM contents WHERE youtube_id = 'Jh4QFaPmdss';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 감사합니다!', '감사합니다', '감사하다', 'Thank you for 1st place!', '감사하다 + ㅂ니다 = 격식 감사', 1 FROM contents WHERE youtube_id = 'vW0xY1zA2bC';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 컨셉 예뻐요', '예뻐요', '예쁘다', 'This concept is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'wX1yZ2aB3cD';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '배고파요, 뭐 먹을까?', '배고파요', '배고프다', 'I''m hungry, what should we eat?', '배고프다 + 아요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'xY2zA3bC4dE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '여기 너무 예뻐요', '예뻐요', '예쁘다', 'This place is so pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'yZ3aB4cD5eF';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '팬들 너무 좋아요', '좋아요', '좋다', 'I love the fans', '좋다 + 아요 = 호감 표현', 1 FROM contents WHERE youtube_id = 'zA4bC5dE6fG';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 가사 좋아요', '가사', NULL, 'I like these lyrics', '가사 = 노래 말', 1 FROM contents WHERE youtube_id = 'aB5cD6eF7gH';

-- ============================================
-- ENHYPEN
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'ENHYPEN');
DELETE FROM contents WHERE artist_name = 'ENHYPEN';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('aLgo6Ycdg5g', '[EN-LOG] 멤버들 대화', 'ENHYPEN', 'https://img.youtube.com/vi/aLgo6Ycdg5g/maxresdefault.jpg', 'normal', true),
('hXxHLp8I2yw', '[EN-O CLOCK] 게임 타임', 'ENHYPEN', 'https://img.youtube.com/vi/hXxHLp8I2yw/maxresdefault.jpg', 'hard', true),
('wXFLzODIdUI', '[EN-LOG] 연습실 일상', 'ENHYPEN', 'https://img.youtube.com/vi/wXFLzODIdUI/maxresdefault.jpg', 'normal', true),
('Fd_CpSLLsFs', '[EN-LOG] 콘서트 비하인드', 'ENHYPEN', 'https://img.youtube.com/vi/Fd_CpSLLsFs/maxresdefault.jpg', 'hard', true),
('bC6dE7fG8hI', '[EN-O CLOCK] 요리 대결', 'ENHYPEN', 'https://img.youtube.com/vi/bC6dE7fG8hI/maxresdefault.jpg', 'easy', true),
('cD7eF8gH9iJ', '[EN-LOG] 음악방송 비하인드', 'ENHYPEN', 'https://img.youtube.com/vi/cD7eF8gH9iJ/maxresdefault.jpg', 'normal', true),
('dE8fG9hI0jK', '[EN-O CLOCK] 운동 편', 'ENHYPEN', 'https://img.youtube.com/vi/dE8fG9hI0jK/maxresdefault.jpg', 'normal', true),
('eF9gH0iJ1kL', '[EN-LOG] 해외 투어', 'ENHYPEN', 'https://img.youtube.com/vi/eF9gH0iJ1kL/maxresdefault.jpg', 'hard', true),
('fG0hI1jK2lM', '[EN-LOG] 팬미팅', 'ENHYPEN', 'https://img.youtube.com/vi/fG0hI1jK2lM/maxresdefault.jpg', 'easy', true),
('gH1iJ2kL3mN', '[EN-LOG] 휴식 시간', 'ENHYPEN', 'https://img.youtube.com/vi/gH1iJ2kL3mN/maxresdefault.jpg', 'easy', true);

-- ENHYPEN 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '오늘 날씨 춥다', '춥다', NULL, 'It''s cold today', '춥다 = 낮은 온도', 1 FROM contents WHERE youtube_id = 'aLgo6Ycdg5g';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '코트 입어야겠다', '입어야겠다', '입다', 'I should wear a coat', '입다 + 어야겠다 = 필요성 표현', 2 FROM contents WHERE youtube_id = 'aLgo6Ycdg5g';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '게임 시작하자!', '시작하자', '시작하다', 'Let''s start the game!', '시작하다 + 자 = 제안 표현', 1 FROM contents WHERE youtube_id = 'hXxHLp8I2yw';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 50, 55, '너무 즐거웠어요', '즐거웠어요', '즐겁다', 'It was so enjoyable', '즐겁다 + 었어요 = 과거 감정', 2 FROM contents WHERE youtube_id = 'hXxHLp8I2yw';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 동작 좀 어려워요', '어려워요', '어렵다', 'This move is a bit hard', '어렵다 + 어요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'wXFLzODIdUI';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '엔진 보고 싶었어요', '보고 싶었어요', '보고 싶다', 'I missed ENGENE', '보고 싶다 + 었어요 = 과거 그리움', 1 FROM contents WHERE youtube_id = 'Fd_CpSLLsFs';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '이거 맛있어요!', '맛있어요', '맛있다', 'This is delicious!', '맛있다 + 어요 = 맛 표현', 1 FROM contents WHERE youtube_id = 'bC6dE7fG8hI';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 너무 기뻐요', '기뻐요', '기쁘다', 'I''m so happy about 1st place', '기쁘다 + 어요 = 기쁨 표현', 1 FROM contents WHERE youtube_id = 'cD7eF8gH9iJ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '운동 열심히 했어요', '열심히', NULL, 'I exercised hard', '열심히 = 부지런하게', 1 FROM contents WHERE youtube_id = 'dE8fG9hI0jK';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '여기 경치 예뻐요', '경치', NULL, 'The scenery here is pretty', '경치 = 풍경', 1 FROM contents WHERE youtube_id = 'eF9gH0iJ1kL';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '팬들 너무 좋아요', '좋아요', '좋다', 'I love the fans', '좋다 + 아요 = 호감 표현', 1 FROM contents WHERE youtube_id = 'fG0hI1jK2lM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '잠깐 쉬고 싶어요', '쉬고 싶어요', '쉬다', 'I want to rest for a bit', '쉬다 + 고 싶어요 = 소망 표현', 1 FROM contents WHERE youtube_id = 'gH1iJ2kL3mN';

-- ============================================
-- TXT
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'TXT');
DELETE FROM contents WHERE artist_name = 'TXT';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('MY_lsEEKeg0', '[T:TIME] 일상 브이로그', 'TXT', 'https://img.youtube.com/vi/MY_lsEEKeg0/maxresdefault.jpg', 'normal', true),
('d5bbqKYu51w', '[T:TIME] 게임 타임', 'TXT', 'https://img.youtube.com/vi/d5bbqKYu51w/maxresdefault.jpg', 'easy', true),
('hI2jK3lM4nO', '[T:TIME] 연습실 일상', 'TXT', 'https://img.youtube.com/vi/hI2jK3lM4nO/maxresdefault.jpg', 'normal', true),
('iJ3kL4mN5oP', '[T:TIME] 콘서트 비하인드', 'TXT', 'https://img.youtube.com/vi/iJ3kL4mN5oP/maxresdefault.jpg', 'hard', true),
('jK4lM5nO6pQ', '[T:TIME] 요리 시간', 'TXT', 'https://img.youtube.com/vi/jK4lM5nO6pQ/maxresdefault.jpg', 'easy', true),
('kL5mN6oP7qR', '[T:TIME] 음악방송 비하인드', 'TXT', 'https://img.youtube.com/vi/kL5mN6oP7qR/maxresdefault.jpg', 'normal', true),
('lM6nO7pQ8rS', '[T:TIME] 해외 투어', 'TXT', 'https://img.youtube.com/vi/lM6nO7pQ8rS/maxresdefault.jpg', 'hard', true),
('mN7oP8qR9sT', '[T:TIME] 팬미팅', 'TXT', 'https://img.youtube.com/vi/mN7oP8qR9sT/maxresdefault.jpg', 'easy', true),
('nO8pQ9rS0tU', '[T:TIME] 녹음실', 'TXT', 'https://img.youtube.com/vi/nO8pQ9rS0tU/maxresdefault.jpg', 'hard', true),
('oP9qR0sT1uV', '[T:TIME] 휴식 시간', 'TXT', 'https://img.youtube.com/vi/oP9qR0sT1uV/maxresdefault.jpg', 'easy', true);

-- TXT 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 뭐 할 거야?', '뭐 할 거야', '하다', 'What are you going to do today?', '뭐 + 하다 + ㄹ 거야 = 미래 계획', 1 FROM contents WHERE youtube_id = 'MY_lsEEKeg0';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '같이 놀자!', '같이', NULL, 'Let''s play together!', '같이 = 함께', 2 FROM contents WHERE youtube_id = 'MY_lsEEKeg0';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '내가 이길 거야!', '이길 거야', '이기다', 'I''m going to win!', '이기다 + ㄹ 거야 = 미래 의지', 1 FROM contents WHERE youtube_id = 'd5bbqKYu51w';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 안무 어려워요', '어려워요', '어렵다', 'This choreography is hard', '어렵다 + 어요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'hI2jK3lM4nO';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '모아 사랑해요!', '사랑해요', '사랑하다', 'I love you MOA!', '사랑하다 + 해요 = 사랑 표현', 1 FROM contents WHERE youtube_id = 'iJ3kL4mN5oP';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '배고파요!', '배고파요', '배고프다', 'I''m hungry!', '배고프다 + 아요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'jK4lM5nO6pQ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 감사해요!', '감사해요', '감사하다', 'Thank you for 1st place!', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = 'kL5mN6oP7qR';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '여기 예뻐요', '예뻐요', '예쁘다', 'This place is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'lM6nO7pQ8rS';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '팬들 너무 좋아요', '좋아요', '좋다', 'I love the fans', '좋다 + 아요 = 호감 표현', 1 FROM contents WHERE youtube_id = 'mN7oP8qR9sT';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 멜로디 좋아요', '멜로디', NULL, 'I like this melody', '멜로디 = 곡조', 1 FROM contents WHERE youtube_id = 'nO8pQ9rS0tU';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '너무 피곤해요', '피곤해요', '피곤하다', 'I''m so tired', '피곤하다 + 해요 = 상태 표현', 1 FROM contents WHERE youtube_id = 'oP9qR0sT1uV';
