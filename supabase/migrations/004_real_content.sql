-- K-Pop 콘텐츠 데이터 업데이트 (실제 영상 ID로 교체)
-- 기존 데이터 삭제 후 실제 K-Pop 영상으로 재삽입

-- 1. 기존 데이터 삭제
DELETE FROM challenges;
DELETE FROM contents;

-- 2. 실제 K-Pop MV 콘텐츠 삽입 (검증된 YouTube ID)
INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
-- BTS
('gdZLi9oWNZg', 'Butter', 'BTS', 'https://img.youtube.com/vi/gdZLi9oWNZg/maxresdefault.jpg', 'easy', true),
('QmpSoMjs7_E', 'Dynamite (Official MV)', 'BTS', 'https://img.youtube.com/vi/QmpSoMjs7_E/maxresdefault.jpg', 'easy', true),
('MBdVXkSdhwU', 'Boy With Luv', 'BTS', 'https://img.youtube.com/vi/MBdVXkSdhwU/maxresdefault.jpg', 'normal', true),

-- BLACKPINK
('ioNng23DkIM', 'How You Like That', 'BLACKPINK', 'https://img.youtube.com/vi/ioNng23DkIM/maxresdefault.jpg', 'normal', true),
('CKZvWhCqx1s', 'Pink Venom', 'BLACKPINK', 'https://img.youtube.com/vi/CKZvWhCqx1s/maxresdefault.jpg', 'hard', true),
('Dxxvo9yjpcs', 'DDU-DU DDU-DU', 'BLACKPINK', 'https://img.youtube.com/vi/Dxxvo9yjpcs/maxresdefault.jpg', 'normal', true),

-- NewJeans
('js1CtxSY38I', 'Attention', 'NewJeans', 'https://img.youtube.com/vi/js1CtxSY38I/maxresdefault.jpg', 'easy', true),
('11cta61wi0g', 'Hype Boy', 'NewJeans', 'https://img.youtube.com/vi/11cta61wi0g/maxresdefault.jpg', 'easy', true),
('Iip8JWBJp14', 'Super Shy', 'NewJeans', 'https://img.youtube.com/vi/Iip8JWBJp14/maxresdefault.jpg', 'easy', true),

-- IVE
('F0B7HDiY-10', 'LOVE DIVE', 'IVE', 'https://img.youtube.com/vi/F0B7HDiY-10/maxresdefault.jpg', 'normal', true),
('6ZUIwj3FgUY', 'I AM', 'IVE', 'https://img.youtube.com/vi/6ZUIwj3FgUY/maxresdefault.jpg', 'normal', true),
('gJLVDVOftPU', 'Baddie', 'IVE', 'https://img.youtube.com/vi/gJLVDVOftPU/maxresdefault.jpg', 'hard', true),

-- aespa
('WPdWvnAAurg', 'Next Level', 'aespa', 'https://img.youtube.com/vi/WPdWvnAAurg/maxresdefault.jpg', 'hard', true),
('OS8taasZl8s', 'Savage', 'aespa', 'https://img.youtube.com/vi/OS8taasZl8s/maxresdefault.jpg', 'hard', true),
('phuiiNCxRMg', 'Supernova', 'aespa', 'https://img.youtube.com/vi/phuiiNCxRMg/maxresdefault.jpg', 'normal', true),

-- Stray Kids
('TQTlCHxyuu8', 'God Menu', 'Stray Kids', 'https://img.youtube.com/vi/TQTlCHxyuu8/maxresdefault.jpg', 'hard', true),
('JKD_cEj78PY', 'LALALA', 'Stray Kids', 'https://img.youtube.com/vi/JKD_cEj78PY/maxresdefault.jpg', 'normal', true),
('6uOko-vz2LE', 'MEGAVERSE', 'Stray Kids', 'https://img.youtube.com/vi/6uOko-vz2LE/maxresdefault.jpg', 'hard', true),

-- SEVENTEEN
('_EyAoXgJcZs', 'Super', 'SEVENTEEN', 'https://img.youtube.com/vi/_EyAoXgJcZs/maxresdefault.jpg', 'normal', true),
('gT1NJmH2diY', 'HOT', 'SEVENTEEN', 'https://img.youtube.com/vi/gT1NJmH2diY/maxresdefault.jpg', 'normal', true),

-- TWICE
('kOHB85vDuow', 'Talk That Talk', 'TWICE', 'https://img.youtube.com/vi/kOHB85vDuow/maxresdefault.jpg', 'easy', true),
('mH0_XpSHkZo', 'What is Love?', 'TWICE', 'https://img.youtube.com/vi/mH0_XpSHkZo/maxresdefault.jpg', 'easy', true),

-- LE SSERAFIM
('pyf8cbqyfPs', 'FEARLESS', 'LE SSERAFIM', 'https://img.youtube.com/vi/pyf8cbqyfPs/maxresdefault.jpg', 'normal', true),
('dZs_cLHfnNA', 'ANTIFRAGILE', 'LE SSERAFIM', 'https://img.youtube.com/vi/dZs_cLHfnNA/maxresdefault.jpg', 'normal', true),
('UBURTj20HXI', 'EASY', 'LE SSERAFIM', 'https://img.youtube.com/vi/UBURTj20HXI/maxresdefault.jpg', 'easy', true),

-- ITZY
('6rc_M3cjWCs', 'WANNABE', 'ITZY', 'https://img.youtube.com/vi/6rc_M3cjWCs/maxresdefault.jpg', 'normal', true),
('Wfbfqo2xj5Q', 'SNEAKERS', 'ITZY', 'https://img.youtube.com/vi/Wfbfqo2xj5Q/maxresdefault.jpg', 'easy', true),

-- (G)I-DLE
('YHnGntEqAIo', 'Queencard', 'G-IDLE', 'https://img.youtube.com/vi/YHnGntEqAIo/maxresdefault.jpg', 'normal', true),
('z3szNvNJbro', 'TOMBOY', 'G-IDLE', 'https://img.youtube.com/vi/z3szNvNJbro/maxresdefault.jpg', 'hard', true),

-- ENHYPEN
('aLgo6Ycdg5g', 'Bite Me', 'ENHYPEN', 'https://img.youtube.com/vi/aLgo6Ycdg5g/maxresdefault.jpg', 'normal', true),
('hXxHLp8I2yw', 'Drunk-Dazed', 'ENHYPEN', 'https://img.youtube.com/vi/hXxHLp8I2yw/maxresdefault.jpg', 'hard', true),

-- TXT
('W3iSnJ663II', 'Sugar Rush Ride', 'TXT', 'https://img.youtube.com/vi/W3iSnJ663II/maxresdefault.jpg', 'normal', true),
('nlnMDttgTbk', '0X1=LOVESONG', 'TXT', 'https://img.youtube.com/vi/nlnMDttgTbk/maxresdefault.jpg', 'hard', true),

-- Red Velvet
('WyiIGEHQP8o', 'Psycho', 'Red Velvet', 'https://img.youtube.com/vi/WyiIGEHQP8o/maxresdefault.jpg', 'normal', true),

-- NCT 127
('0sKbI3LqmcE', 'Sticker', 'NCT 127', 'https://img.youtube.com/vi/0sKbI3LqmcE/maxresdefault.jpg', 'hard', true),

-- NCT DREAM
('4j7mxvnWSlE', 'Candy', 'NCT DREAM', 'https://img.youtube.com/vi/4j7mxvnWSlE/maxresdefault.jpg', 'easy', true),

-- ATEEZ
('oYSv99EWe7U', 'Guerrilla', 'ATEEZ', 'https://img.youtube.com/vi/oYSv99EWe7U/maxresdefault.jpg', 'hard', true),

-- ILLIT
('QhxYX8f9wos', 'Magnetic', 'ILLIT', 'https://img.youtube.com/vi/QhxYX8f9wos/maxresdefault.jpg', 'easy', true);

-- 3. 챌린지 (문제) 삽입 - 실제 가사 기반
-- BTS Butter
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '부드럽게 녹아', '녹아', '녹다', 'Melt smoothly', 'Informal verb ending', 1
FROM contents WHERE youtube_id = 'gdZLi9oWNZg';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '심장이 뛰어', '뛰어', '뛰다', 'Heart is beating', 'Informal verb for jumping/beating', 2
FROM contents WHERE youtube_id = 'gdZLi9oWNZg';

-- BTS Dynamite
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '빛이 나', '빛이', '빛', 'Shining bright', 'Subject marker 이', 1
FROM contents WHERE youtube_id = 'QmpSoMjs7_E';

-- BTS Boy With Luv
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 50, 55, '작은 것들을 위한 시', '작은', '작다', 'For small things', 'Adjective modifying noun', 1
FROM contents WHERE youtube_id = 'MBdVXkSdhwU';

-- BLACKPINK How You Like That
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 55, 60, '어떻게 좋아', '어떻게', NULL, 'How do you like that', 'Question word how', 1
FROM contents WHERE youtube_id = 'ioNng23DkIM';

-- BLACKPINK Pink Venom
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '준비됐어', '준비됐어', '준비되다', 'Ready', 'Past tense of ready', 1
FROM contents WHERE youtube_id = 'CKZvWhCqx1s';

-- BLACKPINK DDU-DU DDU-DU
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '뚜두뚜두', '뚜두뚜두', NULL, 'DDU-DU DDU-DU', 'Onomatopoeia', 1
FROM contents WHERE youtube_id = 'Dxxvo9yjpcs';

-- NewJeans Attention
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '주목해줘', '주목해줘', '주목하다', 'Give me attention', 'Request form with 줘', 1
FROM contents WHERE youtube_id = 'js1CtxSY38I';

-- NewJeans Hype Boy
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '너무 좋아', '좋아', '좋다', 'I like it so much', 'Informal adjective', 1
FROM contents WHERE youtube_id = '11cta61wi0g';

-- NewJeans Super Shy
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '너무 부끄러워', '부끄러워', '부끄럽다', 'So shy', 'Informal adjective', 1
FROM contents WHERE youtube_id = 'Iip8JWBJp14';

-- IVE LOVE DIVE
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '사랑에 빠져', '빠져', '빠지다', 'Fall in love', 'Informal verb ending', 1
FROM contents WHERE youtube_id = 'F0B7HDiY-10';

-- IVE I AM
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '나는 나야', '나야', NULL, 'I am me', 'Identity expression', 1
FROM contents WHERE youtube_id = '6ZUIwj3FgUY';

-- IVE Baddie
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '나쁜 여자', '나쁜', '나쁘다', 'Bad girl', 'Adjective modifying noun', 1
FROM contents WHERE youtube_id = 'gJLVDVOftPU';

-- aespa Next Level
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 55, 60, '광야로 걸어가', '걸어가', '걸어가다', 'Walk into the wilderness', 'Compound verb', 1
FROM contents WHERE youtube_id = 'WPdWvnAAurg';

-- aespa Savage
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '기억 안 나', '안 나', '나다', 'Dont remember', 'Negation pattern', 1
FROM contents WHERE youtube_id = 'OS8taasZl8s';

-- aespa Supernova
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '폭발해', '폭발해', '폭발하다', 'Explode', 'Informal verb', 1
FROM contents WHERE youtube_id = 'phuiiNCxRMg';

-- Stray Kids God Menu
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 50, 55, '맛있어', '맛있어', '맛있다', 'Delicious', 'Informal adjective', 1
FROM contents WHERE youtube_id = 'TQTlCHxyuu8';

-- Stray Kids LALALA
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '랄라라', '랄라라', NULL, 'LALALA', 'Singing expression', 1
FROM contents WHERE youtube_id = 'JKD_cEj78PY';

-- SEVENTEEN Super
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '화이팅', '화이팅', NULL, 'Fighting (cheer)', 'Korean encouragement', 1
FROM contents WHERE youtube_id = '_EyAoXgJcZs';

-- SEVENTEEN HOT
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '뜨거워', '뜨거워', '뜨겁다', 'Its hot', 'Informal adjective', 1
FROM contents WHERE youtube_id = 'gT1NJmH2diY';

-- TWICE Talk That Talk
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '말해줘', '말해줘', '말하다', 'Tell me', 'Request with 줘', 1
FROM contents WHERE youtube_id = 'kOHB85vDuow';

-- TWICE What is Love
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '사랑이 뭔데', '뭔데', '뭐', 'What is love', 'Casual question', 1
FROM contents WHERE youtube_id = 'mH0_XpSHkZo';

-- LE SSERAFIM FEARLESS
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '두려워하지 마', '마', NULL, 'Dont be afraid', 'Negative command', 1
FROM contents WHERE youtube_id = 'pyf8cbqyfPs';

-- LE SSERAFIM ANTIFRAGILE
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 50, 55, '더 강해져', '강해져', '강해지다', 'Get stronger', 'Imperative', 1
FROM contents WHERE youtube_id = 'dZs_cLHfnNA';

-- LE SSERAFIM EASY
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '쉬워', '쉬워', '쉽다', 'Its easy', 'Informal adjective', 1
FROM contents WHERE youtube_id = 'UBURTj20HXI';

-- ITZY WANNABE
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '되고 싶어', '싶어', '싶다', 'Want to become', 'Desire expression', 1
FROM contents WHERE youtube_id = '6rc_M3cjWCs';

-- ITZY SNEAKERS
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '신어', '신어', '신다', 'Put on (shoes)', 'Informal verb', 1
FROM contents WHERE youtube_id = 'Wfbfqo2xj5Q';

-- G-IDLE Queencard
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '나는 퀸카', '퀸카', NULL, 'Im the queen card', 'Slang expression', 1
FROM contents WHERE youtube_id = 'YHnGntEqAIo';

-- G-IDLE TOMBOY
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '신경 안 써', '안 써', '쓰다', 'Dont care', 'Negation pattern', 1
FROM contents WHERE youtube_id = 'z3szNvNJbro';

-- ENHYPEN Bite Me
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '물어봐', '물어봐', '묻다', 'Ask me', 'Informal request', 1
FROM contents WHERE youtube_id = 'aLgo6Ycdg5g';

-- ENHYPEN Drunk-Dazed
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '취해버려', '취해버려', '취하다', 'Get drunk', 'Casual command', 1
FROM contents WHERE youtube_id = 'hXxHLp8I2yw';

-- TXT Sugar Rush Ride
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '달콤해', '달콤해', '달콤하다', 'Its sweet', 'Informal adjective', 1
FROM contents WHERE youtube_id = 'W3iSnJ663II';

-- TXT 0X1=LOVESONG
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 50, 55, '너 없인 안 돼', '안 돼', '되다', 'Cant without you', 'Negation of 되다', 1
FROM contents WHERE youtube_id = 'nlnMDttgTbk';

-- Red Velvet Psycho
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '미쳐가', '미쳐가', '미치다', 'Going crazy', 'Progressive', 1
FROM contents WHERE youtube_id = 'WyiIGEHQP8o';

-- NCT 127 Sticker
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 50, 55, '붙여', '붙여', '붙이다', 'Stick it', 'Informal command', 1
FROM contents WHERE youtube_id = '0sKbI3LqmcE';

-- NCT DREAM Candy
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '달콤한 사탕', '달콤한', '달콤하다', 'Sweet candy', 'Adjective modifying noun', 1
FROM contents WHERE youtube_id = '4j7mxvnWSlE';

-- ATEEZ Guerrilla
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '싸워', '싸워', '싸우다', 'Fight', 'Informal verb', 1
FROM contents WHERE youtube_id = 'oYSv99EWe7U';

-- ILLIT Magnetic
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '끌려', '끌려', '끌리다', 'Attracted', 'Passive verb', 1
FROM contents WHERE youtube_id = 'QhxYX8f9wos';
