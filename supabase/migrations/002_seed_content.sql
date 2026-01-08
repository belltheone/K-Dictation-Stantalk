-- K-Pop 샘플 콘텐츠 데이터 (10개)
-- Supabase SQL Editor에서 실행

-- 1. 콘텐츠 (영상) 삽입
INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('4TWR90KJl84', 'Dynamite MV', 'BTS', 'https://img.youtube.com/vi/4TWR90KJl84/maxresdefault.jpg', 'easy', true),
('pBuZEGYXA6E', 'How You Like That MV', 'BLACKPINK', 'https://img.youtube.com/vi/pBuZEGYXA6E/maxresdefault.jpg', 'normal', true),
('ArmDp-zijuc', 'Attention MV', 'NewJeans', 'https://img.youtube.com/vi/ArmDp-zijuc/maxresdefault.jpg', 'easy', true),
('JQGRg8XBnB4', 'Magnetic MV', 'ILLIT', 'https://img.youtube.com/vi/JQGRg8XBnB4/maxresdefault.jpg', 'easy', true),
('gdZLi9oWNZg', 'Butter MV', 'BTS', 'https://img.youtube.com/vi/gdZLi9oWNZg/maxresdefault.jpg', 'normal', true),
('CKZvWhCqx1s', 'Pink Venom MV', 'BLACKPINK', 'https://img.youtube.com/vi/CKZvWhCqx1s/maxresdefault.jpg', 'hard', true),
('sVTy_wmn5SU', 'Hype Boy MV', 'NewJeans', 'https://img.youtube.com/vi/sVTy_wmn5SU/maxresdefault.jpg', 'easy', true),
('yKV-IVNQP8I', 'God''s Menu MV', 'Stray Kids', 'https://img.youtube.com/vi/yKV-IVNQP8I/maxresdefault.jpg', 'hard', true),
('MjCZfZfucEc', 'Love Dive MV', 'IVE', 'https://img.youtube.com/vi/MjCZfZfucEc/maxresdefault.jpg', 'normal', true),
('_EyAoXgJcZs', 'Super MV', 'SEVENTEEN', 'https://img.youtube.com/vi/_EyAoXgJcZs/maxresdefault.jpg', 'normal', true);

-- 2. 챌린지 (문제) 삽입
-- BTS Dynamite
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '밥 먹었어?', '먹었어', '먹다', 'Did you eat?', 'Past tense informal ending (-었어)', 1
FROM contents WHERE youtube_id = '4TWR90KJl84';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '오늘 뭐 했어?', '했어', '하다', 'What did you do today?', 'Past tense of 하다', 2
FROM contents WHERE youtube_id = '4TWR90KJl84';

-- BLACKPINK How You Like That
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '어떻게 지내?', '어떻게', '어떻다', 'How are you?', 'Question word for "how"', 1
FROM contents WHERE youtube_id = 'pBuZEGYXA6E';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 60, 65, '보고 싶었어', '싶었어', '싶다', 'I missed you', 'Past tense of wanting (-고 싶다)', 2
FROM contents WHERE youtube_id = 'pBuZEGYXA6E';

-- NewJeans Attention
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '사랑해요', '사랑해요', '사랑하다', 'I love you', 'Polite form of love', 1
FROM contents WHERE youtube_id = 'ArmDp-zijuc';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '잘 지냈어?', '지냈어', '지내다', 'Have you been well?', 'Past tense of to spend time', 2
FROM contents WHERE youtube_id = 'ArmDp-zijuc';

-- ILLIT Magnetic
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '좋아해요', '좋아해요', '좋아하다', 'I like you', 'Polite form of like', 1
FROM contents WHERE youtube_id = 'JQGRg8XBnB4';

-- BTS Butter
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '기분이 좋아', '좋아', '좋다', 'I feel good', 'Informal adjective ending', 1
FROM contents WHERE youtube_id = 'gdZLi9oWNZg';

-- BLACKPINK Pink Venom
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 50, 55, '준비됐어?', '준비됐어', '준비되다', 'Are you ready?', 'Past tense of to be ready', 1
FROM contents WHERE youtube_id = 'CKZvWhCqx1s';

-- NewJeans Hype Boy
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '괜찮아요', '괜찮아요', '괜찮다', 'It''s okay', 'Polite form of okay', 1
FROM contents WHERE youtube_id = 'sVTy_wmn5SU';

-- Stray Kids God's Menu
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '맛있어요', '맛있어요', '맛있다', 'It''s delicious', 'Polite form of delicious', 1
FROM contents WHERE youtube_id = 'yKV-IVNQP8I';

-- IVE Love Dive
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '예뻐요', '예뻐요', '예쁘다', 'You''re pretty', 'Polite form of pretty', 1
FROM contents WHERE youtube_id = 'MjCZfZfucEc';

-- SEVENTEEN Super
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 55, 60, '화이팅!', '화이팅', NULL, 'Fighting! (Good luck)', 'Korean cheer expression', 1
FROM contents WHERE youtube_id = '_EyAoXgJcZs';
