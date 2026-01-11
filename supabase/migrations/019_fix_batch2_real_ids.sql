-- Batch 2: 실제 YouTube 영상 ID로 Stray Kids, SEVENTEEN, TWICE, LE SSERAFIM, ITZY 업데이트

-- ============================================
-- Stray Kids (공식 채널 @StrayKids)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'Stray Kids');
DELETE FROM contents WHERE artist_name = 'Stray Kids';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('urNLPgalt6o', '[SKZ-TALKER] Ep.77', 'Stray Kids', 'https://img.youtube.com/vi/urNLPgalt6o/maxresdefault.jpg', 'normal', true),
('vPPEfLv1EpE', '[SKZ VLOG] 현진 Holiday 12', 'Stray Kids', 'https://img.youtube.com/vi/vPPEfLv1EpE/maxresdefault.jpg', 'easy', true),
('1ydl2uTMPGo', '[SKZ VLOG] 필릭스 Sunshine mini Vlog 2', 'Stray Kids', 'https://img.youtube.com/vi/1ydl2uTMPGo/maxresdefault.jpg', 'easy', true),
('U9-7JBGRyMc', '[RACHA LOG] Ep.14 행복한 돼끼', 'Stray Kids', 'https://img.youtube.com/vi/U9-7JBGRyMc/maxresdefault.jpg', 'easy', true),
('XU08DOMg2EY', '[SKZ VLOG] 아이엔의 퐁당로그 밀라노', 'Stray Kids', 'https://img.youtube.com/vi/XU08DOMg2EY/maxresdefault.jpg', 'normal', true),
('RJvYHFKknfM', '[RACHA LOG] Ep.13 호빵만두', 'Stray Kids', 'https://img.youtube.com/vi/RJvYHFKknfM/maxresdefault.jpg', 'easy', true),
('HdgpH3_mZEs', '[SKZ-TALKER] Ep.76', 'Stray Kids', 'https://img.youtube.com/vi/HdgpH3_mZEs/maxresdefault.jpg', 'normal', true),
('FCXd9nXSWTM', '[SKZ-TALKER] Ep.73', 'Stray Kids', 'https://img.youtube.com/vi/FCXd9nXSWTM/maxresdefault.jpg', 'normal', true),
('IUreR3zoD3s', '[SKZ-TALKER GO! S5] Ep.33 인천', 'Stray Kids', 'https://img.youtube.com/vi/IUreR3zoD3s/maxresdefault.jpg', 'hard', true),
('V77feEklVzA', '[SKZ-TALKER GO! S5] Ep.32 로마', 'Stray Kids', 'https://img.youtube.com/vi/V77feEklVzA/maxresdefault.jpg', 'hard', true);

-- Stray Kids 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '오늘 일정 많아요', '많아요', '많다', 'There is a lot of schedule today', '많다 + 아요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'urNLPgalt6o';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '오늘 쉬는 날이에요', '쉬는', '쉬다', 'Today is a day off', '쉬다 + 는 = 현재 관형사', 1 FROM contents WHERE youtube_id = 'vPPEfLv1EpE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '날씨가 좋아요', '좋아요', '좋다', 'The weather is nice', '좋다 + 아요 = 현재 상태', 1 FROM contents WHERE youtube_id = '1ydl2uTMPGo';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '행복해요', '행복해요', '행복하다', 'I am happy', '행복하다 + 해요 = 감정 표현', 1 FROM contents WHERE youtube_id = 'U9-7JBGRyMc';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '여기 너무 예뻐요', '예뻐요', '예쁘다', 'This place is so pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'XU08DOMg2EY';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '맛있어요!', '맛있어요', '맛있다', 'It is delicious!', '맛있다 + 어요 = 맛 표현', 1 FROM contents WHERE youtube_id = 'RJvYHFKknfM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '스테이 보고 싶었어요', '보고 싶었어요', '보고 싶다', 'I missed STAY', '보고 싶다 + 었어요 = 과거 그리움', 1 FROM contents WHERE youtube_id = 'HdgpH3_mZEs';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '피곤해요', '피곤해요', '피곤하다', 'I am tired', '피곤하다 + 해요 = 상태 표현', 1 FROM contents WHERE youtube_id = 'FCXd9nXSWTM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 50, 55, '콘서트 좋았어요', '좋았어요', '좋다', 'The concert was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'IUreR3zoD3s';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '여기 음식 맛있어요', '맛있어요', '맛있다', 'The food here is delicious', '맛있다 + 어요 = 맛 표현', 1 FROM contents WHERE youtube_id = 'V77feEklVzA';

-- ============================================
-- SEVENTEEN (공식 채널 @pledis17)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'SEVENTEEN');
DELETE FROM contents WHERE artist_name = 'SEVENTEEN';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('MQ9fqyO0Oc0', '[INSIDE SEVENTEEN] 시작처럼 Live Clip 비하인드', 'SEVENTEEN', 'https://img.youtube.com/vi/MQ9fqyO0Oc0/maxresdefault.jpg', 'normal', true),
('V5IfyFD4LDw', '[INSIDE SEVENTEEN] 도겸&승관 Die With A Smile 비하인드', 'SEVENTEEN', 'https://img.youtube.com/vi/V5IfyFD4LDw/maxresdefault.jpg', 'normal', true),
('Cr9NHLoQjm8', '[GOING SEVENTEEN] EP.149 마피아불 #2', 'SEVENTEEN', 'https://img.youtube.com/vi/Cr9NHLoQjm8/maxresdefault.jpg', 'easy', true),
('B9kF1Momqc0', '[INSIDE SEVENTEEN] 준 포풍추영 비하인드', 'SEVENTEEN', 'https://img.youtube.com/vi/B9kF1Momqc0/maxresdefault.jpg', 'normal', true),
('99DMI3qRYOg', '[INSIDE SEVENTEEN] Tiny Desk Concert 비하인드', 'SEVENTEEN', 'https://img.youtube.com/vi/99DMI3qRYOg/maxresdefault.jpg', 'hard', true),
('MbqitUOcMxw', '[GOING SEVENTEEN] EP.148 마피아불 #1', 'SEVENTEEN', 'https://img.youtube.com/vi/MbqitUOcMxw/maxresdefault.jpg', 'easy', true),
('Z72IxNTKqKo', '[HOSHI TAMTAM] 호시 Fallen Superstar 비하인드', 'SEVENTEEN', 'https://img.youtube.com/vi/Z72IxNTKqKo/maxresdefault.jpg', 'normal', true),
('x-dEKCW3mmc', '[GOING SEVENTEEN] EP.147 Chat Chat #2', 'SEVENTEEN', 'https://img.youtube.com/vi/x-dEKCW3mmc/maxresdefault.jpg', 'easy', true),
('BMeK_rcQfrU', '[GOING SEVENTEEN] EP.146 Chat Chat #1', 'SEVENTEEN', 'https://img.youtube.com/vi/BMeK_rcQfrU/maxresdefault.jpg', 'easy', true),
('u1O2b6tQjtw', '[GOING SEVENTEEN] EP.145 빠퇴 #2', 'SEVENTEEN', 'https://img.youtube.com/vi/u1O2b6tQjtw/maxresdefault.jpg', 'easy', true);

-- SEVENTEEN 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '촬영 재미있었어요', '재미있었어요', '재미있다', 'The recording was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'MQ9fqyO0Oc0';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '노래 좋아요', '좋아요', '좋다', 'I like the song', '좋다 + 아요 = 호감 표현', 1 FROM contents WHERE youtube_id = 'V5IfyFD4LDw';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '재미있어요!', '재미있어요', '재미있다', 'It is fun!', '재미있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'Cr9NHLoQjm8';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '멋있었어요', '멋있었어요', '멋있다', 'It was cool', '멋있다 + 었어요 = 과거 감탄', 1 FROM contents WHERE youtube_id = 'B9kF1Momqc0';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 50, 55, '캐럿 사랑해요!', '사랑해요', '사랑하다', 'I love you CARAT!', '사랑하다 + 해요 = 사랑 표현', 1 FROM contents WHERE youtube_id = '99DMI3qRYOg';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '게임 시작하자', '시작하자', '시작하다', 'Let''s start the game', '시작하다 + 자 = 제안 표현', 1 FROM contents WHERE youtube_id = 'MbqitUOcMxw';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '연습 많이 했어요', '많이', NULL, 'I practiced a lot', '많이 = 다량으로', 1 FROM contents WHERE youtube_id = 'Z72IxNTKqKo';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '얘기 많이 했어요', '얘기', NULL, 'We talked a lot', '얘기 = 이야기', 1 FROM contents WHERE youtube_id = 'x-dEKCW3mmc';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '오랜만이에요', '오랜만', NULL, 'It has been a long time', '오랜만 = 긴 시간 후', 1 FROM contents WHERE youtube_id = 'BMeK_rcQfrU';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '집에 가고 싶어요', '가고 싶어요', '가다', 'I want to go home', '가다 + 고 싶어요 = 소망 표현', 1 FROM contents WHERE youtube_id = 'u1O2b6tQjtw';

-- ============================================
-- TWICE (공식 채널 @TWICE)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'TWICE');
DELETE FROM contents WHERE artist_name = 'TWICE';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('35kacj9xT9c', '[MOMO-Log] 밀라노', 'TWICE', 'https://img.youtube.com/vi/35kacj9xT9c/maxresdefault.jpg', 'easy', true),
('hTj8JdZN8Ms', '[Secret Cut] Merry & Happy 안무 영상', 'TWICE', 'https://img.youtube.com/vi/hTj8JdZN8Ms/maxresdefault.jpg', 'easy', true),
('3zQraeuNbK8', 'VICTORIA SECRET 패션쇼 비하인드', 'TWICE', 'https://img.youtube.com/vi/3zQraeuNbK8/maxresdefault.jpg', 'hard', true),
('a0rMb-w4P_0', '[MOMO-Log] with AMAFFI', 'TWICE', 'https://img.youtube.com/vi/a0rMb-w4P_0/maxresdefault.jpg', 'easy', true),
('5Agf-XNQ0hA', '[Secret Cut] LIKEY 방송국용 안무 영상', 'TWICE', 'https://img.youtube.com/vi/5Agf-XNQ0hA/maxresdefault.jpg', 'easy', true),
('5NQgPb1htV8', '[Secret Cut] The Feels MV 촬영', 'TWICE', 'https://img.youtube.com/vi/5NQgPb1htV8/maxresdefault.jpg', 'normal', true),
('9wI4ZQLmlhs', '[Secret Cut] MORE & MORE MV 촬영', 'TWICE', 'https://img.youtube.com/vi/9wI4ZQLmlhs/maxresdefault.jpg', 'normal', true),
('aZ-PyKFCfoA', '[Secret Cut] 대기실의 사나 리포터', 'TWICE', 'https://img.youtube.com/vi/aZ-PyKFCfoA/maxresdefault.jpg', 'easy', true),
('eWsxem64nMg', '[Secret Cut] Alcohol-Free MV 촬영', 'TWICE', 'https://img.youtube.com/vi/eWsxem64nMg/maxresdefault.jpg', 'normal', true),
('9JNvdo4UeuA', '2025 팬미팅 10VE UNIVERSE 비하인드', 'TWICE', 'https://img.youtube.com/vi/9JNvdo4UeuA/maxresdefault.jpg', 'normal', true);

-- TWICE 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '여기 너무 예뻐요', '예뻐요', '예쁘다', 'This place is so pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = '35kacj9xT9c';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '안무 연습 했어요', '연습', NULL, 'I practiced the choreography', '연습 = 훈련', 1 FROM contents WHERE youtube_id = 'hTj8JdZN8Ms';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '무대 너무 좋았어요', '좋았어요', '좋다', 'The stage was so great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = '3zQraeuNbK8';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '향기 좋아요', '좋아요', '좋다', 'The scent is nice', '좋다 + 아요 = 호감 표현', 1 FROM contents WHERE youtube_id = 'a0rMb-w4P_0';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '재미있었어요!', '재미있었어요', '재미있다', 'It was fun!', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = '5Agf-XNQ0hA';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '촬영 힘들었어요', '힘들었어요', '힘들다', 'The shooting was tough', '힘들다 + 었어요 = 과거 상태', 1 FROM contents WHERE youtube_id = '5NQgPb1htV8';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '이 장면 좋아요', '좋아요', '좋다', 'I like this scene', '좋다 + 아요 = 호감 표현', 1 FROM contents WHERE youtube_id = '9wI4ZQLmlhs';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '뭐 해요?', '뭐 해요', '하다', 'What are you doing?', '뭐 + 하다 + 요 = 현재 행동', 1 FROM contents WHERE youtube_id = 'aZ-PyKFCfoA';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '이 노래 좋아요', '좋아요', '좋다', 'I like this song', '좋다 + 아요 = 호감 표현', 1 FROM contents WHERE youtube_id = 'eWsxem64nMg';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '원스 사랑해요!', '사랑해요', '사랑하다', 'I love you ONCE!', '사랑하다 + 해요 = 사랑 표현', 1 FROM contents WHERE youtube_id = '9JNvdo4UeuA';

-- ============================================
-- LE SSERAFIM (공식 채널 @LESSERAFIM_official)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'LE SSERAFIM');
DELETE FROM contents WHERE artist_name = 'LE SSERAFIM';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('z5gBKOW0Peg', '[EPISODE] 2025 AAA 비하인드 3관왕', 'LE SSERAFIM', 'https://img.youtube.com/vi/z5gBKOW0Peg/maxresdefault.jpg', 'normal', true),
('c4My2q8w6BY', '[FIM-LOG] LA 다저스 경기 직관', 'LE SSERAFIM', 'https://img.youtube.com/vi/c4My2q8w6BY/maxresdefault.jpg', 'easy', true),
('LFVtGJ7J70Q', '[EPISODE] 배스킨라빈스 광고 비하인드', 'LE SSERAFIM', 'https://img.youtube.com/vi/LFVtGJ7J70Q/maxresdefault.jpg', 'easy', true),
('_tebQjSLKWY', '[FIM-LOG] 사쿠라 크로셰 홀리데이', 'LE SSERAFIM', 'https://img.youtube.com/vi/_tebQjSLKWY/maxresdefault.jpg', 'easy', true),
('DQovntVrl6Y', '[EPISODE] SPAGHETTI 녹음 비하인드', 'LE SSERAFIM', 'https://img.youtube.com/vi/DQovntVrl6Y/maxresdefault.jpg', 'normal', true),
('kPxsXslJvGU', '[EPISODE] SPAGHETTI 안무 연습 비하인드', 'LE SSERAFIM', 'https://img.youtube.com/vi/kPxsXslJvGU/maxresdefault.jpg', 'normal', true),
('Tdz9axRGD30', '[EPISODE] SPAGHETTI MV 비하인드', 'LE SSERAFIM', 'https://img.youtube.com/vi/Tdz9axRGD30/maxresdefault.jpg', 'normal', true),
('BPAryWcO6jI', '[EPISODE] SPAGHETTI 재킷 촬영 비하인드', 'LE SSERAFIM', 'https://img.youtube.com/vi/BPAryWcO6jI/maxresdefault.jpg', 'easy', true),
('ytGMTGIFkyE', '[EPISODE] Americas Got Talent 비하인드', 'LE SSERAFIM', 'https://img.youtube.com/vi/ytGMTGIFkyE/maxresdefault.jpg', 'hard', true),
('BDCIizloBKg', '[FIM-LOG] 아시아 투어 모음집', 'LE SSERAFIM', 'https://img.youtube.com/vi/BDCIizloBKg/maxresdefault.jpg', 'normal', true);

-- LE SSERAFIM 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '대상 너무 기뻐요', '기뻐요', '기쁘다', 'I am so happy about the grand prize', '기쁘다 + 어요 = 기쁨 표현', 1 FROM contents WHERE youtube_id = 'z5gBKOW0Peg';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '야구 재미있어요', '재미있어요', '재미있다', 'Baseball is fun', '재미있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'c4My2q8w6BY';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '아이스크림 맛있어요', '맛있어요', '맛있다', 'Ice cream is delicious', '맛있다 + 어요 = 맛 표현', 1 FROM contents WHERE youtube_id = 'LFVtGJ7J70Q';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '피어나 선물이에요', '선물', NULL, 'This is a gift for FEARNOT', '선물 = 증정품', 1 FROM contents WHERE youtube_id = '_tebQjSLKWY';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '녹음 즐거웠어요', '즐거웠어요', '즐겁다', 'The recording was enjoyable', '즐겁다 + 었어요 = 과거 감정', 1 FROM contents WHERE youtube_id = 'DQovntVrl6Y';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '칼군무 연습 많이 했어요', '칼군무', NULL, 'We practiced the synchronized dance a lot', '칼군무 = 칼같은 군무', 1 FROM contents WHERE youtube_id = 'kPxsXslJvGU';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '제이홉 오빠 감사해요', '감사해요', '감사하다', 'Thank you j-hope oppa', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = 'Tdz9axRGD30';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '컨셉 예뻐요', '예뻐요', '예쁘다', 'The concept is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'BPAryWcO6jI';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 50, 55, '무대 대박이었어요', '대박', NULL, 'The stage was amazing', '대박 = 대단한 성공', 1 FROM contents WHERE youtube_id = 'ytGMTGIFkyE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '팬들 너무 좋았어요', '좋았어요', '좋다', 'The fans were so great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'BDCIizloBKg';

-- ============================================
-- ITZY (공식 채널 @ITZY)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'ITZY');
DELETE FROM contents WHERE artist_name = 'ITZY';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('qClKD0V4AdM', '[ITZY VLOG] 류진의 퇴근 후 일상', 'ITZY', 'https://img.youtube.com/vi/qClKD0V4AdM/maxresdefault.jpg', 'easy', true),
('9VrSvyeR7Aw', '[ITZY?ITZY!] EP.232 류진 화보 & 리아 OST', 'ITZY', 'https://img.youtube.com/vi/9VrSvyeR7Aw/maxresdefault.jpg', 'normal', true),
('RU_5XWAfED4', '[ITZY VLOG] 유나 애정템 공개', 'ITZY', 'https://img.youtube.com/vi/RU_5XWAfED4/maxresdefault.jpg', 'easy', true),
('ByvjDGtVr9s', '[ITZY?ITZY!] EP.231 유나 펜디 패션쇼', 'ITZY', 'https://img.youtube.com/vi/ByvjDGtVr9s/maxresdefault.jpg', 'normal', true),
('8fy4A3YKTzw', '[ITZY VLOG] 채령 내향인 브이로그', 'ITZY', 'https://img.youtube.com/vi/8fy4A3YKTzw/maxresdefault.jpg', 'easy', true),
('4W-1cVLnoUc', '[ITZY?ITZY!] EP.230 유나 다이나핏 촬영', 'ITZY', 'https://img.youtube.com/vi/4W-1cVLnoUc/maxresdefault.jpg', 'easy', true),
('bBcD5kacquk', '[ITZY VLOG] 리아 코어', 'ITZY', 'https://img.youtube.com/vi/bBcD5kacquk/maxresdefault.jpg', 'easy', true),
('M8MoJWmTYZs', 'TUNNEL VISION Challenge 비하인드', 'ITZY', 'https://img.youtube.com/vi/M8MoJWmTYZs/maxresdefault.jpg', 'normal', true),
('fd68xm_7BKk', 'TUNNEL VISION 비하인드 #2', 'ITZY', 'https://img.youtube.com/vi/fd68xm_7BKk/maxresdefault.jpg', 'normal', true),
('nByx9J-VL7o', 'TUNNEL VISION 비하인드 #1', 'ITZY', 'https://img.youtube.com/vi/nByx9J-VL7o/maxresdefault.jpg', 'normal', true);

-- ITZY 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '퇴근 후 쉬어요', '쉬어요', '쉬다', 'I rest after work', '쉬다 + 어요 = 현재 행동', 1 FROM contents WHERE youtube_id = 'qClKD0V4AdM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '촬영 재미있었어요', '재미있었어요', '재미있다', 'The shooting was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = '9VrSvyeR7Aw';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이거 좋아해요', '좋아해요', '좋아하다', 'I like this', '좋아하다 + 해요 = 호감 표현', 1 FROM contents WHERE youtube_id = 'RU_5XWAfED4';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '패션쇼 멋있었어요', '멋있었어요', '멋있다', 'The fashion show was cool', '멋있다 + 었어요 = 과거 감탄', 1 FROM contents WHERE youtube_id = 'ByvjDGtVr9s';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '한강 러닝 좋아요', '좋아요', '좋다', 'I like running at Han River', '좋다 + 아요 = 호감 표현', 1 FROM contents WHERE youtube_id = '8fy4A3YKTzw';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '운동 열심히 해요', '열심히', NULL, 'I exercise hard', '열심히 = 부지런하게', 1 FROM contents WHERE youtube_id = '4W-1cVLnoUc';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '칼국수 맛있어요', '맛있어요', '맛있다', 'Kalguksu is delicious', '맛있다 + 어요 = 맛 표현', 1 FROM contents WHERE youtube_id = 'bBcD5kacquk';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '챌린지 재미있어요', '재미있어요', '재미있다', 'The challenge is fun', '재미있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'M8MoJWmTYZs';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '믿지 보고 싶어요', '보고 싶어요', '보고 싶다', 'I miss MIDZY', '보고 싶다 + 어요 = 현재 그리움', 1 FROM contents WHERE youtube_id = 'fd68xm_7BKk';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '준비 많이 했어요', '많이', NULL, 'We prepared a lot', '많이 = 다량으로', 1 FROM contents WHERE youtube_id = 'nByx9J-VL7o';
