-- Final Batch: 실제 YouTube 영상 ID로 ZEROBASEONE, xikers, KISS OF LIFE, Kep1er, MEOVV, WayV 업데이트

-- ============================================
-- ZEROBASEONE (공식 채널 @ZB1_official)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'ZEROBASEONE');
DELETE FROM contents WHERE artist_name = 'ZEROBASEONE';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('KaetebnV9rc', '[ZB1_more] GUN WOOK Day After Day 메이킹 필름', 'ZEROBASEONE', 'https://img.youtube.com/vi/KaetebnV9rc/maxresdefault.jpg', 'normal', true),
('VmgykqIsjk8', '[RE-PILOGUE] 우정 반지 만들기', 'ZEROBASEONE', 'https://img.youtube.com/vi/VmgykqIsjk8/maxresdefault.jpg', 'easy', true),
('PvHGxb3eTzg', '[ZE_pisode] 뮤직뱅크 글로벌 페스티벌 일본 비하인드', 'ZEROBASEONE', 'https://img.youtube.com/vi/PvHGxb3eTzg/maxresdefault.jpg', 'normal', true),
('bmymVJig6yg', '[ZE_pisode] 장하오 OST 레코딩 비하인드', 'ZEROBASEONE', 'https://img.youtube.com/vi/bmymVJig6yg/maxresdefault.jpg', 'hard', true),
('EiA-9cRgwkU', '[유지니트웨니] Over Me Cover 촬영 비하인드', 'ZEROBASEONE', 'https://img.youtube.com/vi/EiA-9cRgwkU/maxresdefault.jpg', 'normal', true),
('U-ddBpIynlY', '[ZE_pisode] 2025 월드투어 타이페이 비하인드', 'ZEROBASEONE', 'https://img.youtube.com/vi/U-ddBpIynlY/maxresdefault.jpg', 'hard', true),
('oFTaPaG3C-I', '[ZB1 CAM] 한빈 일본 출장 VLOG', 'ZEROBASEONE', 'https://img.youtube.com/vi/oFTaPaG3C-I/maxresdefault.jpg', 'easy', true),
('W3aTeAMsLG8', '[ZE_pisode] 매거진 촬영 비하인드', 'ZEROBASEONE', 'https://img.youtube.com/vi/W3aTeAMsLG8/maxresdefault.jpg', 'easy', true),
('xBt4pjo8FLM', '[ZE_pisode] 2025 MAMA AWARDS 비하인드', 'ZEROBASEONE', 'https://img.youtube.com/vi/xBt4pjo8FLM/maxresdefault.jpg', 'normal', true),
('5oo13MA-AGc', '[ZB1 CAM] 매튜 사이타마 콘서트 VLOG', 'ZEROBASEONE', 'https://img.youtube.com/vi/5oo13MA-AGc/maxresdefault.jpg', 'easy', true);

-- ZEROBASEONE 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '촬영 재미있었어요', '재미있었어요', '재미있다', 'The shooting was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'KaetebnV9rc';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '우정 반지 예뻐요', '예뻐요', '예쁘다', 'The friendship ring is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'VmgykqIsjk8';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '제로즈 감사해요!', '감사해요', '감사하다', 'Thank you ZEROS!', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = 'PvHGxb3eTzg';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '녹음 힘들었어요', '힘들었어요', '힘들다', 'The recording was tough', '힘들다 + 었어요 = 과거 상태', 1 FROM contents WHERE youtube_id = 'bmymVJig6yg';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '사진 잘 나왔어요', '잘', NULL, 'The photos came out well', '잘 = 훌륭하게', 1 FROM contents WHERE youtube_id = 'EiA-9cRgwkU';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '투어 좋았어요', '좋았어요', '좋다', 'The tour was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'U-ddBpIynlY';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '일본 좋아요', '좋아요', '좋다', 'I like Japan', '좋다 + 아요 = 호감 표현', 1 FROM contents WHERE youtube_id = 'oFTaPaG3C-I';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '촬영 재미있었어요', '재미있었어요', '재미있다', 'The shooting was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'W3aTeAMsLG8';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '무대 대박이었어요', '대박', NULL, 'The stage was amazing', '대박 = 대단한 성공', 1 FROM contents WHERE youtube_id = 'xBt4pjo8FLM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '쇼핑 재미있었어요', '재미있었어요', '재미있다', 'Shopping was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = '5oo13MA-AGc';

-- ============================================
-- xikers (공식 채널 @xikers_official)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'xikers');
DELETE FROM contents WHERE artist_name = 'xikers';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('0nBGCaydqKo', '[인싸이커스] AAA & ACON 비하인드', 'xikers', 'https://img.youtube.com/vi/0nBGCaydqKo/maxresdefault.jpg', 'normal', true),
('RPyt55QbOso', '[인싸이커스] 2026 시즌 그리팅 촬영 비하인드', 'xikers', 'https://img.youtube.com/vi/RPyt55QbOso/maxresdefault.jpg', 'easy', true),
('qLybYq1W7h8', '[인싸이커스] 드림콘서트 아부다비 비하인드', 'xikers', 'https://img.youtube.com/vi/qLybYq1W7h8/maxresdefault.jpg', 'hard', true),
('yQNZKV4lStQ', '[인싸이커스] SUPERPOWER 음악방송 비하인드 #2', 'xikers', 'https://img.youtube.com/vi/yQNZKV4lStQ/maxresdefault.jpg', 'easy', true),
('-kR4TsG0cOs', 'ICONIC Performance Video 메이킹 필름', 'xikers', 'https://img.youtube.com/vi/-kR4TsG0cOs/maxresdefault.jpg', 'normal', true),
('VHvsCju24So', '[인싸이커스] SUPERPOWER 음악방송 비하인드 #1', 'xikers', 'https://img.youtube.com/vi/VHvsCju24So/maxresdefault.jpg', 'easy', true),
('kdAkSdHdMFw', 'SUPERPOWER Dance Practice 비하인드', 'xikers', 'https://img.youtube.com/vi/kdAkSdHdMFw/maxresdefault.jpg', 'normal', true),
('C8gFfYarn4g', '[인싸이커스] 쇼케이스 비하인드', 'xikers', 'https://img.youtube.com/vi/C8gFfYarn4g/maxresdefault.jpg', 'easy', true),
('SsRqNRRZoZg', '[인싸이커스] 대학 축제 비하인드', 'xikers', 'https://img.youtube.com/vi/SsRqNRRZoZg/maxresdefault.jpg', 'easy', true),
('uJHrpzgmyb0', '[와싹] 대한민국 문화연예대상 비하인드', 'xikers', 'https://img.youtube.com/vi/uJHrpzgmyb0/maxresdefault.jpg', 'normal', true);

-- xikers 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '상 받아서 기뻐요', '기뻐요', '기쁘다', 'I am happy to receive an award', '기쁘다 + 어요 = 기쁨 표현', 1 FROM contents WHERE youtube_id = '0nBGCaydqKo';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '촬영 재미있었어요', '재미있었어요', '재미있다', 'The shooting was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'RPyt55QbOso';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '무대 좋았어요', '좋았어요', '좋다', 'The stage was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'qLybYq1W7h8';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '활동 재미있었어요', '재미있었어요', '재미있다', 'The promotions were fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'yQNZKV4lStQ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '퍼포먼스 멋있었어요', '멋있었어요', '멋있다', 'The performance was cool', '멋있다 + 었어요 = 과거 감탄', 1 FROM contents WHERE youtube_id = '-kR4TsG0cOs';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '로드투아이 감사해요!', '감사해요', '감사하다', 'Thank you ROADTOAI!', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = 'VHvsCju24So';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '안무 연습 많이 했어요', '많이', NULL, 'We practiced the choreography a lot', '많이 = 다량으로', 1 FROM contents WHERE youtube_id = 'kdAkSdHdMFw';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '쇼케이스 떨렸어요', '떨렸어요', '떨리다', 'I was nervous at the showcase', '떨리다 + 었어요 = 과거 긴장', 1 FROM contents WHERE youtube_id = 'C8gFfYarn4g';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '축제 좋았어요', '좋았어요', '좋다', 'The festival was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'SsRqNRRZoZg';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '시상식 좋았어요', '좋았어요', '좋다', 'The awards ceremony was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'uJHrpzgmyb0';

-- ============================================
-- KISS OF LIFE (공식 채널 @kissoflife_official)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'KISS OF LIFE');
DELETE FROM contents WHERE artist_name = 'KISS OF LIFE';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('MZXdbnM8KZA', '[KI-OFF] 일본 데뷔 투어 VCR 촬영 비하인드', 'KISS OF LIFE', 'https://img.youtube.com/vi/MZXdbnM8KZA/maxresdefault.jpg', 'normal', true),
('OIE7x6dia0Y', '[KI-OFF] KLIP-#48 Classy Club 촬영 비하인드', 'KISS OF LIFE', 'https://img.youtube.com/vi/OIE7x6dia0Y/maxresdefault.jpg', 'easy', true),
('399t-LL-rD8', '[KI-OFF] KLIP-#47 Whistle 라이브 클립 촬영 비하인드', 'KISS OF LIFE', 'https://img.youtube.com/vi/399t-LL-rD8/maxresdefault.jpg', 'normal', true),
('HYqAuqVCGBY', '[KI-OFF] 가오슝 미니 하나즈 vlog AAA 비하인드', 'KISS OF LIFE', 'https://img.youtube.com/vi/HYqAuqVCGBY/maxresdefault.jpg', 'easy', true),
('DGoGbfT5Ye0', '[KI-OFF] Lucky 음악방송 비하인드', 'KISS OF LIFE', 'https://img.youtube.com/vi/DGoGbfT5Ye0/maxresdefault.jpg', 'easy', true),
('nJary84sNR0', '[KI-OFF] 2025 KGMA 비하인드', 'KISS OF LIFE', 'https://img.youtube.com/vi/nJary84sNR0/maxresdefault.jpg', 'normal', true),
('0wen4rNxqFc', '[KI-OFF] KLIP-#46 ELLE 화보 촬영 비하인드', 'KISS OF LIFE', 'https://img.youtube.com/vi/0wen4rNxqFc/maxresdefault.jpg', 'easy', true),
('ze4H9j-RRic', '[KI-OFF] KLIP-#45 Vogue 화보 촬영 비하인드', 'KISS OF LIFE', 'https://img.youtube.com/vi/ze4H9j-RRic/maxresdefault.jpg', 'easy', true),
('IALXHYIjFuM', '[KI-OFF] 버추얼 라이브 페스티벌 비하인드', 'KISS OF LIFE', 'https://img.youtube.com/vi/IALXHYIjFuM/maxresdefault.jpg', 'normal', true),
('h2usY942-7c', '[KI-OFF] Sudden Attack 촬영 비하인드', 'KISS OF LIFE', 'https://img.youtube.com/vi/h2usY942-7c/maxresdefault.jpg', 'easy', true);

-- KISS OF LIFE 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '촬영 재미있었어요', '재미있었어요', '재미있다', 'The shooting was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'MZXdbnM8KZA';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '컨셉 예뻐요', '예뻐요', '예쁘다', 'The concept is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'OIE7x6dia0Y';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '노래 좋아요', '좋아요', '좋다', 'I like the song', '좋다 + 아요 = 호감 표현', 1 FROM contents WHERE youtube_id = '399t-LL-rD8';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '가오슝 좋았어요', '좋았어요', '좋다', 'Kaohsiung was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'HYqAuqVCGBY';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '키씨 사랑해요!', '사랑해요', '사랑하다', 'I love you KISSY!', '사랑하다 + 해요 = 사랑 표현', 1 FROM contents WHERE youtube_id = 'DGoGbfT5Ye0';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '상 받아서 기뻐요', '기뻐요', '기쁘다', 'I am happy to receive an award', '기쁘다 + 어요 = 기쁨 표현', 1 FROM contents WHERE youtube_id = 'nJary84sNR0';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '화보 예뻐요', '예뻐요', '예쁘다', 'The photoshoot is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = '0wen4rNxqFc';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '옷 멋있어요', '멋있어요', '멋있다', 'The clothes are cool', '멋있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'ze4H9j-RRic';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '무대 재미있었어요', '재미있었어요', '재미있다', 'The stage was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'IALXHYIjFuM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '게임 재미있어요', '재미있어요', '재미있다', 'The game is fun', '재미있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'h2usY942-7c';

-- ============================================
-- Kep1er (공식 채널 @Kep1er_Offcl)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'Kep1er');
DELETE FROM contents WHERE artist_name = 'Kep1er';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('OAcxiqfwCdI', '홍콩 비하인드 Into The Orbit', 'Kep1er', 'https://img.youtube.com/vi/OAcxiqfwCdI/maxresdefault.jpg', 'normal', true),
('i3cBMa0-Ob8', '[Kep1og] 망한 여행도 여행 드라이브', 'Kep1er', 'https://img.youtube.com/vi/i3cBMa0-Ob8/maxresdefault.jpg', 'easy', true),
('7sfM0zRmtVU', '[Kep1us] 2025 REWIND POP-UP 비하인드', 'Kep1er', 'https://img.youtube.com/vi/7sfM0zRmtVU/maxresdefault.jpg', 'normal', true),
('JuszK1-pppM', '[Kep1us] NTV Best Artist 2025 비하인드', 'Kep1er', 'https://img.youtube.com/vi/JuszK1-pppM/maxresdefault.jpg', 'normal', true),
('fl77Iivka8o', '[Kep1us] THE STAR 화보 촬영 비하인드', 'Kep1er', 'https://img.youtube.com/vi/fl77Iivka8o/maxresdefault.jpg', 'easy', true),
('xQNDhPUFd1k', '[Kep1us] 김채현 레코딩 비하인드', 'Kep1er', 'https://img.youtube.com/vi/xQNDhPUFd1k/maxresdefault.jpg', 'hard', true),
('PCwJ11zDm2E', '[Kep1us] 김채현 MV 비하인드', 'Kep1er', 'https://img.youtube.com/vi/PCwJ11zDm2E/maxresdefault.jpg', 'normal', true),
('4XLJ8gBoEDA', '도쿄 비하인드 Into The Orbit', 'Kep1er', 'https://img.youtube.com/vi/4XLJ8gBoEDA/maxresdefault.jpg', 'normal', true),
('VLVy8OvPvIY', '[Kep1og] 샤오팅 생일 VLOG', 'Kep1er', 'https://img.youtube.com/vi/VLVy8OvPvIY/maxresdefault.jpg', 'easy', true),
('Em1J5mka4Io', '후쿠오카 비하인드 Into The Orbit', 'Kep1er', 'https://img.youtube.com/vi/Em1J5mka4Io/maxresdefault.jpg', 'normal', true);

-- Kep1er 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '홍콩 좋았어요', '좋았어요', '좋다', 'Hong Kong was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'OAcxiqfwCdI';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '여행 재미있었어요', '재미있었어요', '재미있다', 'The trip was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'i3cBMa0-Ob8';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '케플리안 감사해요!', '감사해요', '감사하다', 'Thank you Kep1ians!', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = '7sfM0zRmtVU';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '무대 좋았어요', '좋았어요', '좋다', 'The stage was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'JuszK1-pppM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '화보 예뻐요', '예뻐요', '예쁘다', 'The photoshoot is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'fl77Iivka8o';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '녹음 힘들었어요', '힘들었어요', '힘들다', 'The recording was tough', '힘들다 + 었어요 = 과거 상태', 1 FROM contents WHERE youtube_id = 'xQNDhPUFd1k';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '뮤비 멋있었어요', '멋있었어요', '멋있다', 'The MV was cool', '멋있다 + 었어요 = 과거 감탄', 1 FROM contents WHERE youtube_id = 'PCwJ11zDm2E';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '도쿄 좋았어요', '좋았어요', '좋다', 'Tokyo was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = '4XLJ8gBoEDA';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '생일 행복해요', '행복해요', '행복하다', 'I am happy for my birthday', '행복하다 + 해요 = 감정 표현', 1 FROM contents WHERE youtube_id = 'VLVy8OvPvIY';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '후쿠오카 좋았어요', '좋았어요', '좋다', 'Fukuoka was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'Em1J5mka4Io';

-- ============================================
-- MEOVV (공식 채널 @MEOVV_OFFICIAL)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'MEOVV');
DELETE FROM contents WHERE artist_name = 'MEOVV';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('fzdoRd5ErPM', '[INSIDE MEOVV] AAA 2025 비하인드', 'MEOVV', 'https://img.youtube.com/vi/fzdoRd5ErPM/maxresdefault.jpg', 'normal', true),
('1BiBjVCHzEI', '1st 시즌 그리팅 비하인드', 'MEOVV', 'https://img.youtube.com/vi/1BiBjVCHzEI/maxresdefault.jpg', 'easy', true),
('kogXkh3t388', '[INSIDE MEOVV] 2025 KGMA 비하인드', 'MEOVV', 'https://img.youtube.com/vi/kogXkh3t388/maxresdefault.jpg', 'normal', true),
('ETvhGZGN1yU', '[INSIDE MEOVV] SKY FESTIVAL 2025 비하인드', 'MEOVV', 'https://img.youtube.com/vi/ETvhGZGN1yU/maxresdefault.jpg', 'easy', true),
('0pUIc8dLVb4', '[INSIDE MEOVV] 수인 DAZED KOREA 화보 비하인드', 'MEOVV', 'https://img.youtube.com/vi/0pUIc8dLVb4/maxresdefault.jpg', 'easy', true),
('IM5E6hs3KiA', '[INSIDE MEOVV] 2025 패션위크 비하인드', 'MEOVV', 'https://img.youtube.com/vi/IM5E6hs3KiA/maxresdefault.jpg', 'hard', true),
('4ZJpBdDh5Ng', '[INSIDE MEOVV] TOKYO GIRLS COLLECTION 비하인드', 'MEOVV', 'https://img.youtube.com/vi/4ZJpBdDh5Ng/maxresdefault.jpg', 'normal', true),
('AvyDuJvXIUg', '[INSIDE MEOVV] TMA 2025 비하인드', 'MEOVV', 'https://img.youtube.com/vi/AvyDuJvXIUg/maxresdefault.jpg', 'normal', true),
('27KfbRFgB4s', 'BURNING UP Dance Practice 비하인드', 'MEOVV', 'https://img.youtube.com/vi/27KfbRFgB4s/maxresdefault.jpg', 'easy', true),
('QCLmz6lD-iA', 'BURNING UP MV 메이킹 필름', 'MEOVV', 'https://img.youtube.com/vi/QCLmz6lD-iA/maxresdefault.jpg', 'normal', true);

-- MEOVV 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '상 받아서 기뻐요', '기뻐요', '기쁘다', 'I am happy to receive an award', '기쁘다 + 어요 = 기쁨 표현', 1 FROM contents WHERE youtube_id = 'fzdoRd5ErPM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '촬영 재미있었어요', '재미있었어요', '재미있다', 'The shooting was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = '1BiBjVCHzEI';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '무대 좋았어요', '좋았어요', '좋다', 'The stage was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'kogXkh3t388';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '페스티벌 재미있었어요', '재미있었어요', '재미있다', 'The festival was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'ETvhGZGN1yU';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '화보 예뻐요', '예뻐요', '예쁘다', 'The photoshoot is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = '0pUIc8dLVb4';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '패션위크 멋있었어요', '멋있었어요', '멋있다', 'Fashion week was cool', '멋있다 + 었어요 = 과거 감탄', 1 FROM contents WHERE youtube_id = 'IM5E6hs3KiA';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '도쿄 좋았어요', '좋았어요', '좋다', 'Tokyo was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = '4ZJpBdDh5Ng';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '미로니 감사해요!', '감사해요', '감사하다', 'Thank you MIRONI!', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = 'AvyDuJvXIUg';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '안무 멋있어요', '멋있어요', '멋있다', 'The choreography is cool', '멋있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = '27KfbRFgB4s';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '뮤비 대박이에요', '대박', NULL, 'The MV is amazing', '대박 = 대단한 성공', 1 FROM contents WHERE youtube_id = 'QCLmz6lD-iA';

-- ============================================
-- WayV (공식 채널 @WayV)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'WayV');
DELETE FROM contents WHERE artist_name = 'WayV';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('k4KBtZifDpY', 'Eternal White Dance Practice 비하인드', 'WayV', 'https://img.youtube.com/vi/k4KBtZifDpY/maxresdefault.jpg', 'normal', true),
('EDubEpUpBYA', 'Eternal White MV 비하인드', 'WayV', 'https://img.youtube.com/vi/EDubEpUpBYA/maxresdefault.jpg', 'normal', true),
('T4NWf-pSa1g', 'Eternal White Jacket 비하인드', 'WayV', 'https://img.youtube.com/vi/T4NWf-pSa1g/maxresdefault.jpg', 'easy', true),
('g1k222I3jhM', 'The Fifth Season Live Clip 비하인드', 'WayV', 'https://img.youtube.com/vi/g1k222I3jhM/maxresdefault.jpg', 'normal', true),
('4muCVVMHQ0M', '2026 시즌 그리팅 비하인드', 'WayV', 'https://img.youtube.com/vi/4muCVVMHQ0M/maxresdefault.jpg', 'easy', true),
('aTSLMTSXpO0', 'Weibo Music Awards 2025 비하인드', 'WayV', 'https://img.youtube.com/vi/aTSLMTSXpO0/maxresdefault.jpg', 'normal', true),
('A7b9QG7lNT0', 'SMTOWN LIVE 2025 도쿄 비하인드', 'WayV', 'https://img.youtube.com/vi/A7b9QG7lNT0/maxresdefault.jpg', 'hard', true),
('NaWTSZWl1vM', 'BIG BANDS 음악방송 비하인드', 'WayV', 'https://img.youtube.com/vi/NaWTSZWl1vM/maxresdefault.jpg', 'easy', true),
('1x1n1mWZgB0', 'BIG BANDS 쇼케이스 비하인드', 'WayV', 'https://img.youtube.com/vi/1x1n1mWZgB0/maxresdefault.jpg', 'easy', true),
('SmFKf7DXYkc', 'Ice Tea 레코딩 비하인드', 'WayV', 'https://img.youtube.com/vi/SmFKf7DXYkc/maxresdefault.jpg', 'hard', true);

-- WayV 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '안무 연습 많이 했어요', '많이', NULL, 'We practiced the choreography a lot', '많이 = 다량으로', 1 FROM contents WHERE youtube_id = 'k4KBtZifDpY';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '뮤비 멋있었어요', '멋있었어요', '멋있다', 'The MV was cool', '멋있다 + 었어요 = 과거 감탄', 1 FROM contents WHERE youtube_id = 'EDubEpUpBYA';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '사진 예뻐요', '예뻐요', '예쁘다', 'The photos are pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'T4NWf-pSa1g';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '라이브 좋았어요', '좋았어요', '좋다', 'The live was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'g1k222I3jhM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '촬영 재미있었어요', '재미있었어요', '재미있다', 'The shooting was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = '4muCVVMHQ0M';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '위젠니 감사해요!', '감사해요', '감사하다', 'Thank you WayZenNies!', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = 'aTSLMTSXpO0';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '무대 좋았어요', '좋았어요', '좋다', 'The stage was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'A7b9QG7lNT0';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '활동 재미있었어요', '재미있었어요', '재미있다', 'The promotions were fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'NaWTSZWl1vM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '쇼케이스 떨렸어요', '떨렸어요', '떨리다', 'I was nervous at the showcase', '떨리다 + 었어요 = 과거 긴장', 1 FROM contents WHERE youtube_id = '1x1n1mWZgB0';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '녹음 힘들었어요', '힘들었어요', '힘들다', 'The recording was tough', '힘들다 + 었어요 = 과거 상태', 1 FROM contents WHERE youtube_id = 'SmFKf7DXYkc';
