-- Batch 5: 실제 YouTube 영상 ID로 NCT DREAM, Red Velvet, ATEEZ, Hearts2Hearts, IZNA, RIIZE 업데이트

-- ============================================
-- NCT DREAM (공식 채널 @NCTDREAM)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'NCT DREAM');
DELETE FROM contents WHERE artist_name = 'NCT DREAM';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('RKW5Txp4_o4', 'Beat It Up Showcase & Dance Practice 비하인드', 'NCT DREAM', 'https://img.youtube.com/vi/RKW5Txp4_o4/maxresdefault.jpg', 'normal', true),
('__Pia1OWMGI', 'Beat It Up 레코딩 비하인드', 'NCT DREAM', 'https://img.youtube.com/vi/__Pia1OWMGI/maxresdefault.jpg', 'hard', true),
('xqyycAJpMC8', 'Beat It Up Dance Practice 비하인드', 'NCT DREAM', 'https://img.youtube.com/vi/xqyycAJpMC8/maxresdefault.jpg', 'normal', true),
('r-Hok2CL5a0', 'Beat It Up 음악방송 대기실 비하인드', 'NCT DREAM', 'https://img.youtube.com/vi/r-Hok2CL5a0/maxresdefault.jpg', 'easy', true),
('SO5WTkqa0OA', 'Beat It Up MV 비하인드', 'NCT DREAM', 'https://img.youtube.com/vi/SO5WTkqa0OA/maxresdefault.jpg', 'normal', true),
('qmSKhdRLdKY', 'Beat It Up Jacket & Trailer 비하인드', 'NCT DREAM', 'https://img.youtube.com/vi/qmSKhdRLdKY/maxresdefault.jpg', 'easy', true),
('4OifDVqeZ0s', '2025 경희대 대동제 비하인드', 'NCT DREAM', 'https://img.youtube.com/vi/4OifDVqeZ0s/maxresdefault.jpg', 'easy', true),
('RQA48UpWkN0', '2026 시즌 그리팅 비하인드', 'NCT DREAM', 'https://img.youtube.com/vi/RQA48UpWkN0/maxresdefault.jpg', 'easy', true),
('gsLmdj7ljpM', 'SMTOWN LIVE 2025 도쿄 비하인드', 'NCT DREAM', 'https://img.youtube.com/vi/gsLmdj7ljpM/maxresdefault.jpg', 'hard', true),
('mm9SDBQOjIk', 'CHILLER + Beat It Up Performance Practice', 'NCT DREAM', 'https://img.youtube.com/vi/mm9SDBQOjIk/maxresdefault.jpg', 'normal', true);

-- NCT DREAM 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '연습 열심히 했어요', '열심히', NULL, 'We practiced hard', '열심히 = 부지런하게', 1 FROM contents WHERE youtube_id = 'RKW5Txp4_o4';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '녹음 힘들었어요', '힘들었어요', '힘들다', 'The recording was tough', '힘들다 + 었어요 = 과거 상태', 1 FROM contents WHERE youtube_id = '__Pia1OWMGI';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '안무 재미있어요', '재미있어요', '재미있다', 'The choreography is fun', '재미있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'xqyycAJpMC8';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '시즈니 보고 싶어요', '보고 싶어요', '보고 싶다', 'I miss Czennies', '보고 싶다 + 어요 = 현재 그리움', 1 FROM contents WHERE youtube_id = 'r-Hok2CL5a0';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '뮤비 멋있었어요', '멋있었어요', '멋있다', 'The MV was cool', '멋있다 + 었어요 = 과거 감탄', 1 FROM contents WHERE youtube_id = 'SO5WTkqa0OA';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '촬영 재미있었어요', '재미있었어요', '재미있다', 'The shooting was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'qmSKhdRLdKY';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '축제 좋았어요', '좋았어요', '좋다', 'The festival was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = '4OifDVqeZ0s';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '사진 예뻐요', '예뻐요', '예쁘다', 'The photos are pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'RQA48UpWkN0';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '무대 대박이었어요', '대박', NULL, 'The stage was amazing', '대박 = 대단한 성공', 1 FROM contents WHERE youtube_id = 'gsLmdj7ljpM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '안무 어려워요', '어려워요', '어렵다', 'The choreography is difficult', '어렵다 + 어요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'mm9SDBQOjIk';

-- ============================================
-- Red Velvet (공식 채널 @RedVelvet)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'Red Velvet');
DELETE FROM contents WHERE artist_name = 'Red Velvet';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('vrVmcx5atjI', '2025 KGMA 비하인드', 'Red Velvet', 'https://img.youtube.com/vi/vrVmcx5atjI/maxresdefault.jpg', 'normal', true),
('HDQMZvUpes4', '2026 시즌 그리팅 비하인드', 'Red Velvet', 'https://img.youtube.com/vi/HDQMZvUpes4/maxresdefault.jpg', 'easy', true),
('1hoLPo-pyYk', 'JOY Love Splash 음악방송 비하인드', 'Red Velvet', 'https://img.youtube.com/vi/1hoLPo-pyYk/maxresdefault.jpg', 'normal', true),
('vnenDyMdhB4', 'SMTOWN LIVE 2025 투어 비하인드', 'Red Velvet', 'https://img.youtube.com/vi/vnenDyMdhB4/maxresdefault.jpg', 'hard', true),
('OXU3NeG75BQ', 'JOY Love Splash 레코딩 비하인드', 'Red Velvet', 'https://img.youtube.com/vi/OXU3NeG75BQ/maxresdefault.jpg', 'hard', true),
('ly0xQY2AADw', 'JOY Love Splash Dance Practice 비하인드', 'Red Velvet', 'https://img.youtube.com/vi/ly0xQY2AADw/maxresdefault.jpg', 'normal', true),
('TisOVfCUa_E', 'JOY KIWOOM HEROES 브이로그', 'Red Velvet', 'https://img.youtube.com/vi/TisOVfCUa_E/maxresdefault.jpg', 'easy', true),
('I_m7mRah69k', 'IRENE SAMSUNG LIONS 브이로그', 'Red Velvet', 'https://img.youtube.com/vi/I_m7mRah69k/maxresdefault.jpg', 'easy', true),
('KagW84RWrR8', 'IRENE & SEULGI TILT 음악방송 비하인드', 'Red Velvet', 'https://img.youtube.com/vi/KagW84RWrR8/maxresdefault.jpg', 'normal', true),
('-T9JlvYZcnI', 'IRENE & SEULGI TILT 레코딩 비하인드', 'Red Velvet', 'https://img.youtube.com/vi/-T9JlvYZcnI/maxresdefault.jpg', 'hard', true);

-- Red Velvet 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '레베럽 감사해요!', '감사해요', '감사하다', 'Thank you ReVeluv!', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = 'vrVmcx5atjI';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '촬영 재미있었어요', '재미있었어요', '재미있다', 'The shooting was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'HDQMZvUpes4';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '무대 좋았어요', '좋았어요', '좋다', 'The stage was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = '1hoLPo-pyYk';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '투어 힘들었어요', '힘들었어요', '힘들다', 'The tour was tough', '힘들다 + 었어요 = 과거 상태', 1 FROM contents WHERE youtube_id = 'vnenDyMdhB4';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '녹음 잘했어요', '잘했어요', '잘하다', 'The recording went well', '잘하다 + 었어요 = 과거 칭찬', 1 FROM contents WHERE youtube_id = 'OXU3NeG75BQ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '안무 예뻐요', '예뻐요', '예쁘다', 'The choreography is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'ly0xQY2AADw';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '야구 재미있어요', '재미있어요', '재미있다', 'Baseball is fun', '재미있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'TisOVfCUa_E';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '경기 좋았어요', '좋았어요', '좋다', 'The game was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'I_m7mRah69k';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '활동 재미있었어요', '재미있었어요', '재미있다', 'The promotions were fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'KagW84RWrR8';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '녹음 힘들었어요', '힘들었어요', '힘들다', 'The recording was tough', '힘들다 + 었어요 = 과거 상태', 1 FROM contents WHERE youtube_id = '-T9JlvYZcnI';

-- ============================================
-- ATEEZ (공식 채널 @ATEEZofficial)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'ATEEZ');
DELETE FROM contents WHERE artist_name = 'ATEEZ';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('AZMZFQLwI1c', '성화 Skin Production 비하인드', 'ATEEZ', 'https://img.youtube.com/vi/AZMZFQLwI1c/maxresdefault.jpg', 'hard', true),
('bynhu5nuLtI', '[log_logbook] #202', 'ATEEZ', 'https://img.youtube.com/vi/bynhu5nuLtI/maxresdefault.jpg', 'easy', true),
('8dyAzC28Sjw', '홍중 NO1 Dance Practice 비하인드', 'ATEEZ', 'https://img.youtube.com/vi/8dyAzC28Sjw/maxresdefault.jpg', 'normal', true),
('7_Xy1Xrl-M0', '종호 우리의 마음이 닿는 곳이라면 Production 비하인드', 'ATEEZ', 'https://img.youtube.com/vi/7_Xy1Xrl-M0/maxresdefault.jpg', 'hard', true),
('WqeaMvX3vqw', '[log_logbook] #201', 'ATEEZ', 'https://img.youtube.com/vi/WqeaMvX3vqw/maxresdefault.jpg', 'easy', true),
('fbeCRDQbcII', '[log_logbook] #200', 'ATEEZ', 'https://img.youtube.com/vi/fbeCRDQbcII/maxresdefault.jpg', 'easy', true),
('F5xVDyk-Tr0', '산 Creep Dance Practice 비하인드', 'ATEEZ', 'https://img.youtube.com/vi/F5xVDyk-Tr0/maxresdefault.jpg', 'normal', true),
('AzMxDDKZ-s4', 'Choose Production 비하인드', 'ATEEZ', 'https://img.youtube.com/vi/AzMxDDKZ-s4/maxresdefault.jpg', 'normal', true),
('Lvqj-dzpC-M', '홍중 Petit Coussin 패션쇼 메이킹 필름', 'ATEEZ', 'https://img.youtube.com/vi/Lvqj-dzpC-M/maxresdefault.jpg', 'hard', true),
('FwGBR6xR7bI', '[log_logbook] #199', 'ATEEZ', 'https://img.youtube.com/vi/FwGBR6xR7bI/maxresdefault.jpg', 'easy', true);

-- ATEEZ 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '녹음 힘들었어요', '힘들었어요', '힘들다', 'The recording was tough', '힘들다 + 었어요 = 과거 상태', 1 FROM contents WHERE youtube_id = 'AZMZFQLwI1c';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '에이티니 보고 싶어요', '보고 싶어요', '보고 싶다', 'I miss ATINY', '보고 싶다 + 어요 = 현재 그리움', 1 FROM contents WHERE youtube_id = 'bynhu5nuLtI';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '안무 멋있어요', '멋있어요', '멋있다', 'The choreography is cool', '멋있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = '8dyAzC28Sjw';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '노래 좋아요', '좋아요', '좋다', 'I like the song', '좋다 + 아요 = 호감 표현', 1 FROM contents WHERE youtube_id = '7_Xy1Xrl-M0';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '오늘 행복해요', '행복해요', '행복하다', 'I am happy today', '행복하다 + 해요 = 감정 표현', 1 FROM contents WHERE youtube_id = 'WqeaMvX3vqw';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '팬들 감사해요', '감사해요', '감사하다', 'Thank you fans', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = 'fbeCRDQbcII';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '연습 재미있었어요', '재미있었어요', '재미있다', 'The practice was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'F5xVDyk-Tr0';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '곡 좋았어요', '좋았어요', '좋다', 'The song was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'AzMxDDKZ-s4';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '패션쇼 멋있었어요', '멋있었어요', '멋있다', 'The fashion show was cool', '멋있다 + 었어요 = 과거 감탄', 1 FROM contents WHERE youtube_id = 'Lvqj-dzpC-M';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '휴일이에요!', '휴일', NULL, 'It is a holiday!', '휴일 = 쉬는 날', 1 FROM contents WHERE youtube_id = 'FwGBR6xR7bI';

-- ============================================
-- Hearts2Hearts (공식 채널 @hearts2hearts.official)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'Hearts2Hearts');
DELETE FROM contents WHERE artist_name = 'Hearts2Hearts';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('uxkJL3ZWjlw', '[BH2ND] 일본 팬사인회 비하인드', 'Hearts2Hearts', 'https://img.youtube.com/vi/uxkJL3ZWjlw/maxresdefault.jpg', 'easy', true),
('Wvd4GTugNtE', '[BH2ND] 2025 뮤직뱅크 글로벌 페스티벌 비하인드', 'Hearts2Hearts', 'https://img.youtube.com/vi/Wvd4GTugNtE/maxresdefault.jpg', 'normal', true),
('kKVrzt2ELPs', '[BH2ND] 2025 MAMA AWARDS 3관왕 비하인드', 'Hearts2Hearts', 'https://img.youtube.com/vi/kKVrzt2ELPs/maxresdefault.jpg', 'normal', true),
('soTavjj85Iw', '[BH2ND] FOCUS Showcase 비하인드', 'Hearts2Hearts', 'https://img.youtube.com/vi/soTavjj85Iw/maxresdefault.jpg', 'easy', true),
('CL4UlVw4kGE', '[HSH] 집에서 보낸 연휴 브이로그', 'Hearts2Hearts', 'https://img.youtube.com/vi/CL4UlVw4kGE/maxresdefault.jpg', 'easy', true),
('XUbdua2mS1k', '[BH2ND] FOCUS Music Show 비하인드 #2', 'Hearts2Hearts', 'https://img.youtube.com/vi/XUbdua2mS1k/maxresdefault.jpg', 'easy', true),
('E4eggaqtjr8', '[vlog] 발리 연휴 브이로그', 'Hearts2Hearts', 'https://img.youtube.com/vi/E4eggaqtjr8/maxresdefault.jpg', 'easy', true),
('JJwiWgmraoA', '[BH2ND] FOCUS Music Show 비하인드 #1', 'Hearts2Hearts', 'https://img.youtube.com/vi/JJwiWgmraoA/maxresdefault.jpg', 'easy', true),
('O130JxSAJcE', '[vlog] 괌 가족여행 브이로그', 'Hearts2Hearts', 'https://img.youtube.com/vi/O130JxSAJcE/maxresdefault.jpg', 'easy', true),
('XVdM_RZGnok', '[BH2ND] FOCUS 레코딩 비하인드', 'Hearts2Hearts', 'https://img.youtube.com/vi/XVdM_RZGnok/maxresdefault.jpg', 'hard', true);

-- Hearts2Hearts 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '하츄 감사해요!', '감사해요', '감사하다', 'Thank you Hatchu!', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = 'uxkJL3ZWjlw';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '무대 좋았어요', '좋았어요', '좋다', 'The stage was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'Wvd4GTugNtE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '3관왕 기뻐요!', '기뻐요', '기쁘다', 'I am happy about 3 awards!', '기쁘다 + 어요 = 기쁨 표현', 1 FROM contents WHERE youtube_id = 'kKVrzt2ELPs';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '쇼케이스 떨렸어요', '떨렸어요', '떨리다', 'I was nervous at the showcase', '떨리다 + 었어요 = 과거 긴장', 1 FROM contents WHERE youtube_id = 'soTavjj85Iw';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '휴일이에요', '휴일', NULL, 'It is a holiday', '휴일 = 쉬는 날', 1 FROM contents WHERE youtube_id = 'CL4UlVw4kGE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '활동 재미있었어요', '재미있었어요', '재미있다', 'The promotions were fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'XUbdua2mS1k';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '발리 예뻐요', '예뻐요', '예쁘다', 'Bali is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'E4eggaqtjr8';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '무대 좋아요', '좋아요', '좋다', 'I like the stage', '좋다 + 아요 = 호감 표현', 1 FROM contents WHERE youtube_id = 'JJwiWgmraoA';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '괌 좋았어요', '좋았어요', '좋다', 'Guam was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'O130JxSAJcE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '녹음 힘들었어요', '힘들었어요', '힘들다', 'The recording was tough', '힘들다 + 었어요 = 과거 상태', 1 FROM contents WHERE youtube_id = 'XVdM_RZGnok';

-- ============================================
-- IZNA (공식 채널 @izna_offcl)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'IZNA');
DELETE FROM contents WHERE artist_name = 'IZNA';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('9hzk4cnBVS4', '[BTS] 일본 팬사인회 비하인드', 'IZNA', 'https://img.youtube.com/vi/9hzk4cnBVS4/maxresdefault.jpg', 'easy', true),
('fRc91exe5fs', '[BTS] 2025 뮤직뱅크 글로벌 페스티벌 비하인드', 'IZNA', 'https://img.youtube.com/vi/fRc91exe5fs/maxresdefault.jpg', 'normal', true),
('AVGQFeweQW4', '[BTS] 2025 MAMA AWARDS 비하인드', 'IZNA', 'https://img.youtube.com/vi/AVGQFeweQW4/maxresdefault.jpg', 'normal', true),
('P33ZFQ_Rg0A', '[BTS] 2025 MAMA AWARDS 연습 비하인드', 'IZNA', 'https://img.youtube.com/vi/P33ZFQ_Rg0A/maxresdefault.jpg', 'easy', true),
('qbSofYOKwwE', '[BTS] 2026 시즌 그리팅 비하인드', 'IZNA', 'https://img.youtube.com/vi/qbSofYOKwwE/maxresdefault.jpg', 'easy', true),
('kpwCc66_EXM', '[BTS] 1st FAN-CON 비하인드', 'IZNA', 'https://img.youtube.com/vi/kpwCc66_EXM/maxresdefault.jpg', 'normal', true),
('g8IqIm-617Y', '[BTS] THE SHOW 마지막 회 비하인드', 'IZNA', 'https://img.youtube.com/vi/g8IqIm-617Y/maxresdefault.jpg', 'easy', true),
('PmaMzoVA140', '[BTS] Psycho 레코딩 비하인드', 'IZNA', 'https://img.youtube.com/vi/PmaMzoVA140/maxresdefault.jpg', 'hard', true),
('3DTj4IYaJmw', '[BTS] Not Just Pretty 활동 비하인드 #3', 'IZNA', 'https://img.youtube.com/vi/3DTj4IYaJmw/maxresdefault.jpg', 'easy', true),
('8kLoNwV0u9U', '[izlog] 대학 축제 브이로그', 'IZNA', 'https://img.youtube.com/vi/8kLoNwV0u9U/maxresdefault.jpg', 'easy', true);

-- IZNA 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '네이야 감사해요!', '감사해요', '감사하다', 'Thank you NAYA!', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = '9hzk4cnBVS4';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '무대 좋았어요', '좋았어요', '좋다', 'The stage was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'fRc91exe5fs';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '상 받아서 기뻐요', '기뻐요', '기쁘다', 'I am happy to receive an award', '기쁘다 + 어요 = 기쁨 표현', 1 FROM contents WHERE youtube_id = 'AVGQFeweQW4';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '연습 열심히 했어요', '열심히', NULL, 'We practiced hard', '열심히 = 부지런하게', 1 FROM contents WHERE youtube_id = 'P33ZFQ_Rg0A';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '촬영 재미있었어요', '재미있었어요', '재미있다', 'The shooting was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'qbSofYOKwwE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '팬콘 행복했어요', '행복했어요', '행복하다', 'The fan-con was happy', '행복하다 + 했어요 = 과거 감정', 1 FROM contents WHERE youtube_id = 'kpwCc66_EXM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '세비 사랑해요', '사랑해요', '사랑하다', 'I love you SEBI', '사랑하다 + 해요 = 사랑 표현', 1 FROM contents WHERE youtube_id = 'g8IqIm-617Y';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '녹음 잘했어요', '잘했어요', '잘하다', 'The recording went well', '잘하다 + 었어요 = 과거 칭찬', 1 FROM contents WHERE youtube_id = 'PmaMzoVA140';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '활동 재미있었어요', '재미있었어요', '재미있다', 'The promotions were fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = '3DTj4IYaJmw';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '축제 좋았어요', '좋았어요', '좋다', 'The festival was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = '8kLoNwV0u9U';

-- ============================================
-- RIIZE (공식 채널 @RIIZE_official)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'RIIZE');
DELETE FROM contents WHERE artist_name = 'RIIZE';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('GsW4_awsoOQ', '[RISE & REALIZE] Sticky Like Dance Practice EP.88', 'RIIZE', 'https://img.youtube.com/vi/GsW4_awsoOQ/maxresdefault.jpg', 'normal', true),
('tBvrzORGT2Q', '[RISE & REALIZE] MMA 2025 EP.87', 'RIIZE', 'https://img.youtube.com/vi/tBvrzORGT2Q/maxresdefault.jpg', 'normal', true),
('dimOIMaAsxg', '[RISE & REALIZE] AAA 2025 EP.86', 'RIIZE', 'https://img.youtube.com/vi/dimOIMaAsxg/maxresdefault.jpg', 'normal', true),
('ZRihDThinJ4', '[RISE & REALIZE] 2025 MAMA AWARDS EP.85', 'RIIZE', 'https://img.youtube.com/vi/ZRihDThinJ4/maxresdefault.jpg', 'normal', true),
('qoK6iWm5oLo', '[Vlog] 워싱턴 기념탑 산책 EP.3', 'RIIZE', 'https://img.youtube.com/vi/qoK6iWm5oLo/maxresdefault.jpg', 'easy', true),
('QaNFnxee36I', '[RISE & REALIZE] 북미 Memories #2 EP.84', 'RIIZE', 'https://img.youtube.com/vi/QaNFnxee36I/maxresdefault.jpg', 'normal', true),
('6xCLXDtLMcQ', '[RISE & REALIZE] 북미 Memories #1 EP.83', 'RIIZE', 'https://img.youtube.com/vi/6xCLXDtLMcQ/maxresdefault.jpg', 'normal', true),
('RLBMT2DMT2I', '[RISE & REALIZE] Fame Dance Practice EP.82', 'RIIZE', 'https://img.youtube.com/vi/RLBMT2DMT2I/maxresdefault.jpg', 'normal', true),
('S-t06OCkQYg', '[RISE & REALIZE] Fame Recording EP.81', 'RIIZE', 'https://img.youtube.com/vi/S-t06OCkQYg/maxresdefault.jpg', 'hard', true),
('ZH2Rh7JXBJ8', 'Fame MV 비하인드', 'RIIZE', 'https://img.youtube.com/vi/ZH2Rh7JXBJ8/maxresdefault.jpg', 'normal', true);

-- RIIZE 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '안무 연습 많이 했어요', '많이', NULL, 'We practiced the choreography a lot', '많이 = 다량으로', 1 FROM contents WHERE youtube_id = 'GsW4_awsoOQ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '무대 대박이었어요', '대박', NULL, 'The stage was amazing', '대박 = 대단한 성공', 1 FROM contents WHERE youtube_id = 'tBvrzORGT2Q';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '상 받아서 기뻐요', '기뻐요', '기쁘다', 'I am happy to receive an award', '기쁘다 + 어요 = 기쁨 표현', 1 FROM contents WHERE youtube_id = 'dimOIMaAsxg';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '브리즈 감사해요!', '감사해요', '감사하다', 'Thank you BRIIZE!', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = 'ZRihDThinJ4';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '여기 예뻐요', '예뻐요', '예쁘다', 'This place is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'qoK6iWm5oLo';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '투어 좋았어요', '좋았어요', '좋다', 'The tour was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'QaNFnxee36I';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '팬들 보고 싶었어요', '보고 싶었어요', '보고 싶다', 'I missed the fans', '보고 싶다 + 었어요 = 과거 그리움', 1 FROM contents WHERE youtube_id = '6xCLXDtLMcQ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '안무 멋있어요', '멋있어요', '멋있다', 'The choreography is cool', '멋있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'RLBMT2DMT2I';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '녹음 힘들었어요', '힘들었어요', '힘들다', 'The recording was tough', '힘들다 + 었어요 = 과거 상태', 1 FROM contents WHERE youtube_id = 'S-t06OCkQYg';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '뮤비 멋있었어요', '멋있었어요', '멋있다', 'The MV was cool', '멋있다 + 었어요 = 과거 감탄', 1 FROM contents WHERE youtube_id = 'ZH2Rh7JXBJ8';
