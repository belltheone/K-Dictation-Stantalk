-- K-Pop 추가 콘텐츠 데이터 (20곡 추가)
-- Supabase SQL Editor에서 실행

-- 추가 콘텐츠 (영상) 삽입
INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
-- aespa
('WPdWvnAAurg', 'Next Level MV', 'aespa', 'https://img.youtube.com/vi/WPdWvnAAurg/maxresdefault.jpg', 'hard', true),
('OS8taasZl8s', 'Savage MV', 'aespa', 'https://img.youtube.com/vi/OS8taasZl8s/maxresdefault.jpg', 'normal', true),
-- TWICE
('kOHB85vDuow', 'Talk That Talk MV', 'TWICE', 'https://img.youtube.com/vi/kOHB85vDuow/maxresdefault.jpg', 'normal', true),
('mH0_XpSHkZo', 'What is Love? MV', 'TWICE', 'https://img.youtube.com/vi/mH0_XpSHkZo/maxresdefault.jpg', 'easy', true),
-- (G)I-DLE
('YHnGntEqAIo', 'Queencard MV', 'G-IDLE', 'https://img.youtube.com/vi/YHnGntEqAIo/maxresdefault.jpg', 'normal', true),
('z3szNvNJbro', 'TOMBOY MV', 'G-IDLE', 'https://img.youtube.com/vi/z3szNvNJbro/maxresdefault.jpg', 'hard', true),
-- LE SSERAFIM
('pyf8cbqyfPs', 'FEARLESS MV', 'LE SSERAFIM', 'https://img.youtube.com/vi/pyf8cbqyfPs/maxresdefault.jpg', 'normal', true),
('dZs_cLHfnNA', 'ANTIFRAGILE MV', 'LE SSERAFIM', 'https://img.youtube.com/vi/dZs_cLHfnNA/maxresdefault.jpg', 'normal', true),
-- ENHYPEN
('aLgo6Ycdg5g', 'Bite Me MV', 'ENHYPEN', 'https://img.youtube.com/vi/aLgo6Ycdg5g/maxresdefault.jpg', 'normal', true),
('hXxHLp8I2yw', 'Drunk-Dazed MV', 'ENHYPEN', 'https://img.youtube.com/vi/hXxHLp8I2yw/maxresdefault.jpg', 'hard', true),
-- TXT
('W3iSnJ663II', 'Sugar Rush Ride MV', 'TXT', 'https://img.youtube.com/vi/W3iSnJ663II/maxresdefault.jpg', 'normal', true),
('nlnMDttgTbk', '0X1=LOVESONG MV', 'TXT', 'https://img.youtube.com/vi/nlnMDttgTbk/maxresdefault.jpg', 'hard', true),
-- ITZY
('MjCZfZfucEc', 'SNEAKERS MV', 'ITZY', 'https://img.youtube.com/vi/MjCZfZfucEc/maxresdefault.jpg', 'easy', true),
('6rc_M3cjWCs', 'WANNABE MV', 'ITZY', 'https://img.youtube.com/vi/6rc_M3cjWCs/maxresdefault.jpg', 'normal', true),
-- Red Velvet
('WyiIGEHQP8o', 'Psycho MV', 'Red Velvet', 'https://img.youtube.com/vi/WyiIGEHQP8o/maxresdefault.jpg', 'normal', true),
('c9RzZpV460k', 'Feel My Rhythm MV', 'Red Velvet', 'https://img.youtube.com/vi/c9RzZpV460k/maxresdefault.jpg', 'normal', true),
-- ATEEZ
('p1bjnyDqIGc', 'HALAZIA MV', 'ATEEZ', 'https://img.youtube.com/vi/p1bjnyDqIGc/maxresdefault.jpg', 'hard', true),
('oYSv99EWe7U', 'Guerrilla MV', 'ATEEZ', 'https://img.youtube.com/vi/oYSv99EWe7U/maxresdefault.jpg', 'hard', true),
-- NCT
('0sKbI3LqmcE', 'Sticker MV', 'NCT 127', 'https://img.youtube.com/vi/0sKbI3LqmcE/maxresdefault.jpg', 'hard', true),
('gj-VU9oK2Yo', '2 Baddies MV', 'NCT 127', 'https://img.youtube.com/vi/gj-VU9oK2Yo/maxresdefault.jpg', 'normal', true);

-- 추가 챌린지 (문제) 삽입
-- aespa Next Level
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '광야로 걸어가', '걸어가', '걸어가다', 'Walk into the kwangya', 'Imperative form of walking', 1
FROM contents WHERE youtube_id = 'WPdWvnAAurg';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 55, 60, '내가 좀 세게 나가', '나가', '나가다', 'I go a bit hard', 'Informal verb ending', 2
FROM contents WHERE youtube_id = 'WPdWvnAAurg';

-- aespa Savage
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '기억 안 나', '안 나', '나다', 'I don''t remember', 'Negation pattern 안 + verb', 1
FROM contents WHERE youtube_id = 'OS8taasZl8s';

-- TWICE Talk That Talk
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '내 맘 알잖아', '알잖아', '알다', 'You know my heart', 'Informal ending with 잖아 (right?)', 1
FROM contents WHERE youtube_id = 'kOHB85vDuow';

-- TWICE What is Love
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '사랑이 어떤 느낌인지', '느낌', NULL, 'What love feels like', 'Noun: feeling', 1
FROM contents WHERE youtube_id = 'mH0_XpSHkZo';

-- G-IDLE Queencard
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '난 예뻐요', '예뻐요', '예쁘다', 'I''m pretty', 'Polite form of pretty', 1
FROM contents WHERE youtube_id = 'YHnGntEqAIo';

-- G-IDLE TOMBOY
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '신경 안 써', '안 써', '쓰다', 'I don''t care', 'Negation with 안', 1
FROM contents WHERE youtube_id = 'z3szNvNJbro';

-- LE SSERAFIM FEARLESS
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 50, 55, '두려워하지 마', '마', NULL, 'Don''t be afraid', 'Negative imperative (don''t)', 1
FROM contents WHERE youtube_id = 'pyf8cbqyfPs';

-- LE SSERAFIM ANTIFRAGILE
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '더 강해져', '강해져', '강해지다', 'Get stronger', 'Imperative of becoming strong', 1
FROM contents WHERE youtube_id = 'dZs_cLHfnNA';

-- ENHYPEN Bite Me
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '물어봐', '물어봐', '물어보다', 'Ask me', 'Informal imperative', 1
FROM contents WHERE youtube_id = 'aLgo6Ycdg5g';

-- ENHYPEN Drunk-Dazed
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '취해버려', '취해버려', '취하다', 'Get drunk', 'Casual command with 버리다', 1
FROM contents WHERE youtube_id = 'hXxHLp8I2yw';

-- TXT Sugar Rush Ride
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 50, 55, '달콤해', '달콤해', '달콤하다', 'It''s sweet', 'Descriptive verb informal', 1
FROM contents WHERE youtube_id = 'W3iSnJ663II';

-- TXT 0X1=LOVESONG
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 55, 60, '너 없인 안 돼', '안 돼', '되다', 'I can''t without you', 'Negation of 되다', 1
FROM contents WHERE youtube_id = 'nlnMDttgTbk';

-- ITZY SNEAKERS
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '신어', '신어', '신다', 'Put on (shoes)', 'Informal imperative', 1
FROM contents WHERE youtube_id = 'MjCZfZfucEc';

-- ITZY WANNABE
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '나는 나야', '나야', NULL, 'I am me', 'Identity expression with 이다', 1
FROM contents WHERE youtube_id = '6rc_M3cjWCs';

-- Red Velvet Psycho
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '미쳐가', '미쳐가', '미치다', 'Going crazy', 'Progressive action with 가다', 1
FROM contents WHERE youtube_id = 'WyiIGEHQP8o';

-- Red Velvet Feel My Rhythm
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 50, 55, '느껴봐', '느껴봐', '느끼다', 'Feel it', 'Try doing with 보다', 1
FROM contents WHERE youtube_id = 'c9RzZpV460k';

-- ATEEZ HALAZIA
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '일어나', '일어나', '일어나다', 'Get up', 'Imperative form', 1
FROM contents WHERE youtube_id = 'p1bjnyDqIGc';

-- ATEEZ Guerrilla
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '싸워', '싸워', '싸우다', 'Fight', 'Informal imperative', 1
FROM contents WHERE youtube_id = 'oYSv99EWe7U';

-- NCT 127 Sticker
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 50, 55, '붙여', '붙여', '붙이다', 'Stick it', 'Informal imperative', 1
FROM contents WHERE youtube_id = '0sKbI3LqmcE';

-- NCT 127 2 Baddies
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '멋있어', '멋있어', '멋있다', 'It''s cool', 'Informal descriptive', 1
FROM contents WHERE youtube_id = 'gj-VU9oK2Yo';
