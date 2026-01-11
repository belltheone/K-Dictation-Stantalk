-- Batch 3: 실제 YouTube 영상 ID로 G-IDLE, ENHYPEN, TXT, ILLIT, NMIXX 업데이트

-- ============================================
-- G-IDLE (공식 채널 @official_i_dle)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'G-IDLE');
DELETE FROM contents WHERE artist_name = 'G-IDLE';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('Ls2UanIusQU', '[i-talk] 2026 시즌 그리팅 비하인드', 'G-IDLE', 'https://img.youtube.com/vi/Ls2UanIusQU/maxresdefault.jpg', 'easy', true),
('h6I20rdCOqE', '[i-talk] 슈화 AAA 2025 & ACON 비하인드', 'G-IDLE', 'https://img.youtube.com/vi/h6I20rdCOqE/maxresdefault.jpg', 'normal', true),
('hSYoYsrcG-s', '[i-talk] 슈화 타오위안 홍보대사 촬영 비하인드', 'G-IDLE', 'https://img.youtube.com/vi/hSYoYsrcG-s/maxresdefault.jpg', 'normal', true),
('FTjFNBP0AMs', '[HASHTALK] 슈슈 COS 25AW 비하인드', 'G-IDLE', 'https://img.youtube.com/vi/FTjFNBP0AMs/maxresdefault.jpg', 'easy', true),
('U-_6zPm_gHI', '[i-talk] 소연 Coach Spring 2026 Show 비하인드', 'G-IDLE', 'https://img.youtube.com/vi/U-_6zPm_gHI/maxresdefault.jpg', 'hard', true),
('KklkJGkvTmc', '미연 MY Lover 레코딩 비하인드 #2', 'G-IDLE', 'https://img.youtube.com/vi/KklkJGkvTmc/maxresdefault.jpg', 'hard', true),
('diqPSNczuDo', '[MY Talk] Say My Name 음악방송 비하인드 #2', 'G-IDLE', 'https://img.youtube.com/vi/diqPSNczuDo/maxresdefault.jpg', 'normal', true),
('KA2cqiOfrn0', '[i-talk] 미연 2025 SKF 비하인드', 'G-IDLE', 'https://img.youtube.com/vi/KA2cqiOfrn0/maxresdefault.jpg', 'normal', true),
('5FeQADYl2w8', '[i-talk] 우기 WATERBOMB MACAO 비하인드', 'G-IDLE', 'https://img.youtube.com/vi/5FeQADYl2w8/maxresdefault.jpg', 'normal', true),
('DzdYTAjlwjU', '[MY Talk] Say My Name 음악방송 비하인드 #1', 'G-IDLE', 'https://img.youtube.com/vi/DzdYTAjlwjU/maxresdefault.jpg', 'normal', true);

-- G-IDLE 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '촬영 재미있었어요', '재미있었어요', '재미있다', 'The shooting was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'Ls2UanIusQU';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '네버랜드 감사해요!', '감사해요', '감사하다', 'Thank you Neverland!', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = 'h6I20rdCOqE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '고향 가서 좋았어요', '좋았어요', '좋다', 'It was nice to go home', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'hSYoYsrcG-s';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '옷 너무 예뻐요', '예뻐요', '예쁘다', 'The clothes are so pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'FTjFNBP0AMs';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '패션쇼 멋있었어요', '멋있었어요', '멋있다', 'The fashion show was cool', '멋있다 + 었어요 = 과거 감탄', 1 FROM contents WHERE youtube_id = 'U-_6zPm_gHI';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '녹음 힘들었어요', '힘들었어요', '힘들다', 'The recording was tough', '힘들다 + 었어요 = 과거 상태', 1 FROM contents WHERE youtube_id = 'KklkJGkvTmc';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '무대 좋았어요', '좋았어요', '좋다', 'The stage was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'diqPSNczuDo';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '팬들 만나서 기뻐요', '기뻐요', '기쁘다', 'I am happy to meet fans', '기쁘다 + 어요 = 기쁨 표현', 1 FROM contents WHERE youtube_id = 'KA2cqiOfrn0';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '워터밤 재미있었어요', '재미있었어요', '재미있다', 'Waterbomb was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = '5FeQADYl2w8';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '1위 행복해요!', '행복해요', '행복하다', 'I am happy about 1st place!', '행복하다 + 해요 = 감정 표현', 1 FROM contents WHERE youtube_id = 'DzdYTAjlwjU';

-- ============================================
-- ENHYPEN (공식 채널 @ENHYPENOFFICIAL)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'ENHYPEN');
DELETE FROM contents WHERE artist_name = 'ENHYPEN';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('0e5V5TvaZXY', '[EPISODE] 5th ENniversary Night 비하인드', 'ENHYPEN', 'https://img.youtube.com/vi/0e5V5TvaZXY/maxresdefault.jpg', 'easy', true),
('VrYPpCAkGoI', '[EPISODE] 맵탱 광고 비하인드', 'ENHYPEN', 'https://img.youtube.com/vi/VrYPpCAkGoI/maxresdefault.jpg', 'easy', true),
('MXPakR83c8I', '2025 ENniversary 포토이즘 비하인드', 'ENHYPEN', 'https://img.youtube.com/vi/MXPakR83c8I/maxresdefault.jpg', 'easy', true),
('PDmc1Q2jQY0', '[EPISODE] WALK THE LINE IN ASIA 비하인드', 'ENHYPEN', 'https://img.youtube.com/vi/PDmc1Q2jQY0/maxresdefault.jpg', 'normal', true),
('tOuB8TakuUs', 'Eat Sleep EN Dive 비하인드', 'ENHYPEN', 'https://img.youtube.com/vi/tOuB8TakuUs/maxresdefault.jpg', 'normal', true),
('gvYWk91yUX8', '[Vlog] 엔하이픈 유럽 투어 브이로그', 'ENHYPEN', 'https://img.youtube.com/vi/gvYWk91yUX8/maxresdefault.jpg', 'hard', true),
('8vw__rb_Sd4', '[Vlog] 엔하이픈 북미 투어 브이로그', 'ENHYPEN', 'https://img.youtube.com/vi/8vw__rb_Sd4/maxresdefault.jpg', 'hard', true),
('bZLL7pc5rr4', '[EPISODE] WALK THE LINE IN EUROPE 비하인드', 'ENHYPEN', 'https://img.youtube.com/vi/bZLL7pc5rr4/maxresdefault.jpg', 'hard', true),
('cky57UKimIo', '[EN-O CLOCK] EP.25', 'ENHYPEN', 'https://img.youtube.com/vi/cky57UKimIo/maxresdefault.jpg', 'easy', true),
('G9a5yYpiqZM', '[EN-O CLOCK] EP97 우정 캠프', 'ENHYPEN', 'https://img.youtube.com/vi/G9a5yYpiqZM/maxresdefault.jpg', 'easy', true);

-- ENHYPEN 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '엔진 감사해요!', '감사해요', '감사하다', 'Thank you ENGENE!', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = '0e5V5TvaZXY';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '촬영 재미있었어요', '재미있었어요', '재미있다', 'The shooting was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'VrYPpCAkGoI';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '사진 예뻐요', '예뻐요', '예쁘다', 'The photos are pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'MXPakR83c8I';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '투어 좋았어요', '좋았어요', '좋다', 'The tour was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'PDmc1Q2jQY0';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '피곤해요', '피곤해요', '피곤하다', 'I am tired', '피곤하다 + 해요 = 상태 표현', 1 FROM contents WHERE youtube_id = 'tOuB8TakuUs';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '여기 너무 예뻐요', '예뻐요', '예쁘다', 'This place is so pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'gvYWk91yUX8';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 50, 55, '팬들 보고 싶었어요', '보고 싶었어요', '보고 싶다', 'I missed the fans', '보고 싶다 + 었어요 = 과거 그리움', 1 FROM contents WHERE youtube_id = '8vw__rb_Sd4';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '무대 대박이었어요', '대박', NULL, 'The stage was amazing', '대박 = 대단한 성공', 1 FROM contents WHERE youtube_id = 'bZLL7pc5rr4';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '재미있어요!', '재미있어요', '재미있다', 'It is fun!', '재미있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'cky57UKimIo';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '친해지고 싶어요', '친해지다', '친해지다', 'I want to become close', '친해지다 + 고 싶어요 = 소망 표현', 1 FROM contents WHERE youtube_id = 'G9a5yYpiqZM';

-- ============================================
-- TXT (공식 채널 @TXT_bighit)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'TXT');
DELETE FROM contents WHERE artist_name = 'TXT';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('WKj-uHaq7Mw', '[T:TIME] Happy New Year 2026', 'TXT', 'https://img.youtube.com/vi/WKj-uHaq7Mw/maxresdefault.jpg', 'easy', true),
('lPuLM5F4GcM', '[T:TIME] AICHI에서 있었던 일들', 'TXT', 'https://img.youtube.com/vi/lPuLM5F4GcM/maxresdefault.jpg', 'normal', true),
('3-l7ZHISQnc', '[TXT-LOG] 수빈이의 쉽지 않은 여행', 'TXT', 'https://img.youtube.com/vi/3-l7ZHISQnc/maxresdefault.jpg', 'normal', true),
('O1z7Qp7Mye4', '[T:TIME] 귀여운 아이템 사수하라', 'TXT', 'https://img.youtube.com/vi/O1z7Qp7Mye4/maxresdefault.jpg', 'easy', true),
('uEOgLDV3lck', '[T:TIME] 수능 보는 모아에게', 'TXT', 'https://img.youtube.com/vi/uEOgLDV3lck/maxresdefault.jpg', 'easy', true),
('ooj0qLGNTHo', '연준 NO LABELS Jacket 비하인드', 'TXT', 'https://img.youtube.com/vi/ooj0qLGNTHo/maxresdefault.jpg', 'normal', true),
('ryfFuVCydFI', '연준 NO LABELS MV 비하인드', 'TXT', 'https://img.youtube.com/vi/ryfFuVCydFI/maxresdefault.jpg', 'normal', true),
('wX8i9PH0Tog', '[T:TIME] 북미 투어에서 있었던 일들', 'TXT', 'https://img.youtube.com/vi/wX8i9PH0Tog/maxresdefault.jpg', 'hard', true),
('bbBGd2PP4vk', '[TXT-LOG] 시카고에서 보내는 휴일', 'TXT', 'https://img.youtube.com/vi/bbBGd2PP4vk/maxresdefault.jpg', 'easy', true),
('ksg0BUnzi2w', '[TXT-LOG] 북미투어 행복 모음', 'TXT', 'https://img.youtube.com/vi/ksg0BUnzi2w/maxresdefault.jpg', 'easy', true);

-- TXT 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '새해 복 많이 받으세요', '받으세요', '받다', 'Happy New Year', '받다 + 으세요 = 격식 기원', 1 FROM contents WHERE youtube_id = 'WKj-uHaq7Mw';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '일본 좋았어요', '좋았어요', '좋다', 'Japan was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'lPuLM5F4GcM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '여행 쉽지 않았어요', '쉽지', '쉽다', 'The trip was not easy', '쉽다 + 지 않았어요 = 부정 과거', 1 FROM contents WHERE youtube_id = '3-l7ZHISQnc';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이거 귀여워요!', '귀여워요', '귀엽다', 'This is cute!', '귀엽다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'O1z7Qp7Mye4';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '모아 화이팅!', '화이팅', NULL, 'Fighting MOA!', '화이팅 = 응원', 1 FROM contents WHERE youtube_id = 'uEOgLDV3lck';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '촬영 재미있었어요', '재미있었어요', '재미있다', 'The shooting was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'ooj0qLGNTHo';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '뮤비 멋있었어요', '멋있었어요', '멋있다', 'The MV was cool', '멋있다 + 었어요 = 과거 감탄', 1 FROM contents WHERE youtube_id = 'ryfFuVCydFI';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '투어 좋았어요', '좋았어요', '좋다', 'The tour was great', '좋다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'wX8i9PH0Tog';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '휴일이에요!', '휴일', NULL, 'It is a holiday!', '휴일 = 쉬는 날', 1 FROM contents WHERE youtube_id = 'bbBGd2PP4vk';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '행복해요', '행복해요', '행복하다', 'I am happy', '행복하다 + 해요 = 감정 표현', 1 FROM contents WHERE youtube_id = 'ksg0BUnzi2w';

-- ============================================
-- ILLIT (공식 채널 @ILLIT_official)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'ILLIT');
DELETE FROM contents WHERE artist_name = 'ILLIT';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('UuhDk9M0dfI', '[BEHIND-IT] 엘소드 광고 촬영 비하인드', 'ILLIT', 'https://img.youtube.com/vi/UuhDk9M0dfI/maxresdefault.jpg', 'easy', true),
('R0vTuKNeLOg', '[BEHIND-IT] 메가패스 광고 촬영 비하인드', 'ILLIT', 'https://img.youtube.com/vi/R0vTuKNeLOg/maxresdefault.jpg', 'easy', true),
('g7rZdj4m2H0', '[BEHIND-IT] 민주 LCK 결승전 오프닝 비하인드', 'ILLIT', 'https://img.youtube.com/vi/g7rZdj4m2H0/maxresdefault.jpg', 'normal', true),
('98f9z_qhqwE', '[BEHIND-IT] GLITTER DAY IN JAPAN 비하인드', 'ILLIT', 'https://img.youtube.com/vi/98f9z_qhqwE/maxresdefault.jpg', 'easy', true),
('tpbJ6JIOZOo', '[BEHIND-IT] ROCK IN JAPAN 비하인드', 'ILLIT', 'https://img.youtube.com/vi/tpbJ6JIOZOo/maxresdefault.jpg', 'normal', true),
('mWL3oSkEfbo', '[BEHIND-IT] 유니클로 광고 촬영 비하인드', 'ILLIT', 'https://img.youtube.com/vi/mWL3oSkEfbo/maxresdefault.jpg', 'easy', true),
('aXM8kesoYJg', '[BEHIND-IT] TIMA 시상식 비하인드', 'ILLIT', 'https://img.youtube.com/vi/aXM8kesoYJg/maxresdefault.jpg', 'normal', true),
('i7pmr6MVtNY', '[LOG-IT] 마카오 여행 브이로그', 'ILLIT', 'https://img.youtube.com/vi/i7pmr6MVtNY/maxresdefault.jpg', 'easy', true),
('xwovSt1n3Hc', '나는 HOLO EP.2', 'ILLIT', 'https://img.youtube.com/vi/xwovSt1n3Hc/maxresdefault.jpg', 'easy', true),
('3CpsUB9l77w', '[BEHIND-IT] K-WORLD DREAM AWARDS 비하인드', 'ILLIT', 'https://img.youtube.com/vi/3CpsUB9l77w/maxresdefault.jpg', 'normal', true);

-- ILLIT 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '게임 재미있어요', '재미있어요', '재미있다', 'The game is fun', '재미있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'UuhDk9M0dfI';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '글릿 감사해요!', '감사해요', '감사하다', 'Thank you GLLIT!', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = 'R0vTuKNeLOg';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '무대 떨렸어요', '떨렸어요', '떨리다', 'I was nervous on stage', '떨리다 + 었어요 = 과거 긴장', 1 FROM contents WHERE youtube_id = 'g7rZdj4m2H0';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '팬들 만나서 행복해요', '행복해요', '행복하다', 'I am happy to meet fans', '행복하다 + 해요 = 감정 표현', 1 FROM contents WHERE youtube_id = '98f9z_qhqwE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '페스티벌 좋았어요', '좋았어요', '좋다', 'The festival was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'tpbJ6JIOZOo';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '옷 예뻐요', '예뻐요', '예쁘다', 'The clothes are pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'mWL3oSkEfbo';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '상 받아서 기뻐요', '기뻐요', '기쁘다', 'I am happy to receive an award', '기쁘다 + 어요 = 기쁨 표현', 1 FROM contents WHERE youtube_id = 'aXM8kesoYJg';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '음식 맛있어요', '맛있어요', '맛있다', 'The food is delicious', '맛있다 + 어요 = 맛 표현', 1 FROM contents WHERE youtube_id = 'i7pmr6MVtNY';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '선택 어려워요', '어려워요', '어렵다', 'The choice is difficult', '어렵다 + 어요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'xwovSt1n3Hc';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '상 또 받았어요!', '받았어요', '받다', 'We received an award again!', '받다 + 았어요 = 과거 행동', 1 FROM contents WHERE youtube_id = '3CpsUB9l77w';

-- ============================================
-- NMIXX (공식 채널 @NMIXXOfficial)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'NMIXX');
DELETE FROM contents WHERE artist_name = 'NMIXX';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('FhLcWKNDSjM', '[Day MIXX] 2025 K-Content Planet 시드니 비하인드', 'NMIXX', 'https://img.youtube.com/vi/FhLcWKNDSjM/maxresdefault.jpg', 'easy', true),
('fRXd-juZcoE', '월드투어 인천 DAY 2 비하인드 EP.03', 'NMIXX', 'https://img.youtube.com/vi/fRXd-juZcoE/maxresdefault.jpg', 'normal', true),
('fENU25KrwGo', '월드투어 인천 D-1 리허설 비하인드 EP.02', 'NMIXX', 'https://img.youtube.com/vi/fENU25KrwGo/maxresdefault.jpg', 'normal', true),
('3fom7HRnxgU', '월드투어 밴드 & 스튜디오 리허설 비하인드 EP.01', 'NMIXX', 'https://img.youtube.com/vi/3fom7HRnxgU/maxresdefault.jpg', 'normal', true),
('iwhRN-JDKwo', '[MIXX Log] 설윤의 고향 방문 브이로그', 'NMIXX', 'https://img.youtube.com/vi/iwhRN-JDKwo/maxresdefault.jpg', 'easy', true),
('ZiGjX-G2t0Y', '[Day MIXX] MD 촬영 비하인드', 'NMIXX', 'https://img.youtube.com/vi/ZiGjX-G2t0Y/maxresdefault.jpg', 'easy', true),
('epG7pyre7_I', '[Day MIXX] VCR 비하인드', 'NMIXX', 'https://img.youtube.com/vi/epG7pyre7_I/maxresdefault.jpg', 'easy', true),
('hTbWPRHoVTY', '[Recording MIXX] ADORE U & Shape of Love 녹음', 'NMIXX', 'https://img.youtube.com/vi/hTbWPRHoVTY/maxresdefault.jpg', 'hard', true),
('Z6RQOfY4c84', '[Recording MIXX] PODIUM & Crush On You 녹음', 'NMIXX', 'https://img.youtube.com/vi/Z6RQOfY4c84/maxresdefault.jpg', 'hard', true),
('0-ZDEfxj6eI', '[Recording MIXX] RICO & Game Face 녹음', 'NMIXX', 'https://img.youtube.com/vi/0-ZDEfxj6eI/maxresdefault.jpg', 'hard', true);

-- NMIXX 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '시드니 좋았어요', '좋았어요', '좋다', 'Sydney was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'FhLcWKNDSjM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '콘서트 대박이었어요', '대박', NULL, 'The concert was amazing', '대박 = 대단한 성공', 1 FROM contents WHERE youtube_id = 'fRXd-juZcoE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '리허설 긴장됐어요', '긴장됐어요', '긴장되다', 'I was nervous at the rehearsal', '긴장되다 + 었어요 = 과거 긴장', 1 FROM contents WHERE youtube_id = 'fENU25KrwGo';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '밴드 분들 멋있었어요', '멋있었어요', '멋있다', 'The band was cool', '멋있다 + 었어요 = 과거 감탄', 1 FROM contents WHERE youtube_id = '3fom7HRnxgU';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '고향 가서 좋았어요', '좋았어요', '좋다', 'It was nice to go home', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'iwhRN-JDKwo';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, 'MD 예뻐요', '예뻐요', '예쁘다', 'The MD is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'ZiGjX-G2t0Y';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '엔스워 콘서트에서 만나요', '만나요', '만나다', 'See you NSWER at the concert', '만나다 + 요 = 현재/미래 약속', 1 FROM contents WHERE youtube_id = 'epG7pyre7_I';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '녹음 힘들었어요', '힘들었어요', '힘들다', 'The recording was tough', '힘들다 + 었어요 = 과거 상태', 1 FROM contents WHERE youtube_id = 'hTbWPRHoVTY';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 노래 좋아요', '좋아요', '좋다', 'I like this song', '좋다 + 아요 = 호감 표현', 1 FROM contents WHERE youtube_id = 'Z6RQOfY4c84';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '녹음 재미있었어요', '재미있었어요', '재미있다', 'The recording was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = '0-ZDEfxj6eI';
