-- Batch 4: 실제 YouTube 영상 ID로 BABYMONSTER, TWS, BOYNEXTDOOR, fromis_9, NCT 127 업데이트

-- ============================================
-- BABYMONSTER (공식 채널 @BABYMONSTER)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'BABYMONSTER');
DELETE FROM contents WHERE artist_name = 'BABYMONSTER';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('K29r_Y_6K7M', 'SUPA DUPA LUV MV 메이킹 필름', 'BABYMONSTER', 'https://img.youtube.com/vi/K29r_Y_6K7M/maxresdefault.jpg', 'easy', true),
('-kB9Zj47kd8', '2025 MAMA AWARDS 비하인드', 'BABYMONSTER', 'https://img.youtube.com/vi/-kB9Zj47kd8/maxresdefault.jpg', 'normal', true),
('vxXAbY1ouXU', 'PSYCHO 퍼포먼스 비하인드', 'BABYMONSTER', 'https://img.youtube.com/vi/vxXAbY1ouXU/maxresdefault.jpg', 'normal', true),
('E0_WTbwjcYM', 'PSYCHO MV 메이킹 필름', 'BABYMONSTER', 'https://img.youtube.com/vi/E0_WTbwjcYM/maxresdefault.jpg', 'normal', true),
('PsxAtYyMc2o', 'WE GO UP 재킷 비하인드', 'BABYMONSTER', 'https://img.youtube.com/vi/PsxAtYyMc2o/maxresdefault.jpg', 'easy', true),
('DNFLk1bKios', 'WE GO UP 음악방송 비하인드', 'BABYMONSTER', 'https://img.youtube.com/vi/DNFLk1bKios/maxresdefault.jpg', 'easy', true),
('Lsy68wAQdWQ', '[BAEMON HOUSE] EP.8', 'BABYMONSTER', 'https://img.youtube.com/vi/Lsy68wAQdWQ/maxresdefault.jpg', 'easy', true),
('c5aBG9Warls', '[BAEMON HOUSE] EP.7', 'BABYMONSTER', 'https://img.youtube.com/vi/c5aBG9Warls/maxresdefault.jpg', 'easy', true),
('uyxvtl-euzs', 'WE GO UP 녹음 비하인드', 'BABYMONSTER', 'https://img.youtube.com/vi/uyxvtl-euzs/maxresdefault.jpg', 'hard', true),
('WwCU6xujDcY', 'WE GO UP MV 메이킹 필름', 'BABYMONSTER', 'https://img.youtube.com/vi/WwCU6xujDcY/maxresdefault.jpg', 'normal', true);

-- BABYMONSTER 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '촬영 재미있었어요', '재미있었어요', '재미있다', 'The shooting was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'K29r_Y_6K7M';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '상 받아서 기뻐요', '기뻐요', '기쁘다', 'I am happy to receive an award', '기쁘다 + 어요 = 기쁨 표현', 1 FROM contents WHERE youtube_id = '-kB9Zj47kd8';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '무대 멋있었어요', '멋있었어요', '멋있다', 'The stage was cool', '멋있다 + 었어요 = 과거 감탄', 1 FROM contents WHERE youtube_id = 'vxXAbY1ouXU';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '뮤비 예뻐요', '예뻐요', '예쁘다', 'The MV is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'E0_WTbwjcYM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '컨셉 좋았어요', '좋았어요', '좋다', 'The concept was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'PsxAtYyMc2o';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '활동 재미있었어요', '재미있었어요', '재미있다', 'The promotions were fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'DNFLk1bKios';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '맛있어요!', '맛있어요', '맛있다', 'It is delicious!', '맛있다 + 어요 = 맛 표현', 1 FROM contents WHERE youtube_id = 'Lsy68wAQdWQ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '게임 재미있어요', '재미있어요', '재미있다', 'The game is fun', '재미있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'c5aBG9Warls';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '녹음 힘들었어요', '힘들었어요', '힘들다', 'The recording was tough', '힘들다 + 었어요 = 과거 상태', 1 FROM contents WHERE youtube_id = 'uyxvtl-euzs';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '뮤비 대박이에요', '대박', NULL, 'The MV is amazing', '대박 = 대단한 성공', 1 FROM contents WHERE youtube_id = 'WwCU6xujDcY';

-- ============================================
-- TWS (공식 채널 @TWS_PLEDIS)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'TWS');
DELETE FROM contents WHERE artist_name = 'TWS';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('8s0VSMn7dkE', '[TWS:ERIES] 뮤직뱅크 글로벌 페스티벌 일본 비하인드', 'TWS', 'https://img.youtube.com/vi/8s0VSMn7dkE/maxresdefault.jpg', 'normal', true),
('nI8dhbBgZ_E', '[TWS:ERIES] 2025 AAA 비하인드', 'TWS', 'https://img.youtube.com/vi/nI8dhbBgZ_E/maxresdefault.jpg', 'normal', true),
('piS2sDPTwho', '[TWS:ERIES] Snow Prince 라이브 클립 촬영 비하인드', 'TWS', 'https://img.youtube.com/vi/piS2sDPTwho/maxresdefault.jpg', 'easy', true),
('xJzDAz5pktY', '[TWS:ERIES] 2025 MAMA AWARDS 비하인드', 'TWS', 'https://img.youtube.com/vi/xJzDAz5pktY/maxresdefault.jpg', 'normal', true),
('6zWM6FL8aRY', '[TWS:ERIES] play hard 챌린지 비하인드', 'TWS', 'https://img.youtube.com/vi/6zWM6FL8aRY/maxresdefault.jpg', 'easy', true),
('_qYtq8St8jE', '[TWS:ERIES] play hard 활동 비하인드 #3', 'TWS', 'https://img.youtube.com/vi/_qYtq8St8jE/maxresdefault.jpg', 'easy', true),
('ZiPr3q6MU4o', '[TWS:ERIES] play hard 활동 비하인드 #2', 'TWS', 'https://img.youtube.com/vi/ZiPr3q6MU4o/maxresdefault.jpg', 'easy', true),
('1FKqdV7Zl30', '[TWS:ERIES] play hard 활동 비하인드 #1', 'TWS', 'https://img.youtube.com/vi/1FKqdV7Zl30/maxresdefault.jpg', 'easy', true),
('Lw8HRj2rDDU', '[TWS:ERIES] play hard 쇼케이스 비하인드', 'TWS', 'https://img.youtube.com/vi/Lw8HRj2rDDU/maxresdefault.jpg', 'normal', true),
('avFMTqPt7VQ', '파리 미니 로그', 'TWS', 'https://img.youtube.com/vi/avFMTqPt7VQ/maxresdefault.jpg', 'easy', true);

-- TWS 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '일본 좋았어요', '좋았어요', '좋다', 'Japan was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = '8s0VSMn7dkE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '상 받아서 기뻐요', '기뻐요', '기쁘다', 'I am happy to receive an award', '기쁘다 + 어요 = 기쁨 표현', 1 FROM contents WHERE youtube_id = 'nI8dhbBgZ_E';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '촬영 재미있었어요', '재미있었어요', '재미있다', 'The shooting was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'piS2sDPTwho';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '무대 좋았어요', '좋았어요', '좋다', 'The stage was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'xJzDAz5pktY';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '챌린지 재미있어요', '재미있어요', '재미있다', 'The challenge is fun', '재미있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = '6zWM6FL8aRY';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '활동 재미있었어요', '재미있었어요', '재미있다', 'The promotions were fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = '_qYtq8St8jE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '팬들 보고 싶었어요', '보고 싶었어요', '보고 싶다', 'I missed the fans', '보고 싶다 + 었어요 = 과거 그리움', 1 FROM contents WHERE youtube_id = 'ZiPr3q6MU4o';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '음악 좋아요', '좋아요', '좋다', 'I like the music', '좋다 + 아요 = 호감 표현', 1 FROM contents WHERE youtube_id = '1FKqdV7Zl30';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '쇼케이스 긴장됐어요', '긴장됐어요', '긴장되다', 'I was nervous at the showcase', '긴장되다 + 었어요 = 과거 긴장', 1 FROM contents WHERE youtube_id = 'Lw8HRj2rDDU';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '파리 예뻐요', '예뻐요', '예쁘다', 'Paris is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'avFMTqPt7VQ';

-- ============================================
-- BOYNEXTDOOR (공식 채널 @BOYNEXTDOOR_official)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'BOYNEXTDOOR');
DELETE FROM contents WHERE artist_name = 'BOYNEXTDOOR';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('TF81uwBguJ4', '[BEHINDOOR] MMA2025 비하인드', 'BOYNEXTDOOR', 'https://img.youtube.com/vi/TF81uwBguJ4/maxresdefault.jpg', 'normal', true),
('pLVAzxIR6F4', '[BEHINDOOR] 2025 MAMA AWARDS 비하인드', 'BOYNEXTDOOR', 'https://img.youtube.com/vi/pLVAzxIR6F4/maxresdefault.jpg', 'normal', true),
('QlWPZhCP3PA', '[BEHINDOOR] The Action 음악방송 비하인드', 'BOYNEXTDOOR', 'https://img.youtube.com/vi/QlWPZhCP3PA/maxresdefault.jpg', 'easy', true),
('JNszVwRgpuc', '[BEHINDOOR] The Action 안무 & 라이브 연습 비하인드', 'BOYNEXTDOOR', 'https://img.youtube.com/vi/JNszVwRgpuc/maxresdefault.jpg', 'normal', true),
('Jlh81SnrDOI', '[BEHINDOOR] Hollywood Action 녹음 비하인드', 'BOYNEXTDOOR', 'https://img.youtube.com/vi/Jlh81SnrDOI/maxresdefault.jpg', 'hard', true),
('rpoMDaxSkxQ', '[BEHINDOOR] Hollywood Action MV 비하인드', 'BOYNEXTDOOR', 'https://img.youtube.com/vi/rpoMDaxSkxQ/maxresdefault.jpg', 'normal', true),
('0NjnQ4NcxBY', '[BEHINDOOR] 2025 대학 축제 비하인드', 'BOYNEXTDOOR', 'https://img.youtube.com/vi/0NjnQ4NcxBY/maxresdefault.jpg', 'easy', true),
('piA-lG0Ii_k', '[BEHINDOOR] The Action 콘셉트 포토 비하인드', 'BOYNEXTDOOR', 'https://img.youtube.com/vi/piA-lG0Ii_k/maxresdefault.jpg', 'easy', true),
('temQH0FdLF4', '[BEHINDOOR] 비비앙 광고 촬영 비하인드', 'BOYNEXTDOOR', 'https://img.youtube.com/vi/temQH0FdLF4/maxresdefault.jpg', 'easy', true),
('dskOC5z7Myg', 'JP BOYLIFE 비하인드', 'BOYNEXTDOOR', 'https://img.youtube.com/vi/dskOC5z7Myg/maxresdefault.jpg', 'normal', true);

-- BOYNEXTDOOR 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '무대 찢었어요!', '찢었어요', '찢다', 'We slayed the stage!', '찢다 + 었어요 = 대단한 성과', 1 FROM contents WHERE youtube_id = 'TF81uwBguJ4';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '원도어 감사해요!', '감사해요', '감사하다', 'Thank you ONEDOOR!', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = 'pLVAzxIR6F4';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '활동 재미있었어요', '재미있었어요', '재미있다', 'The promotions were fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'QlWPZhCP3PA';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '연습 열심히 했어요', '열심히', NULL, 'We practiced hard', '열심히 = 부지런하게', 1 FROM contents WHERE youtube_id = 'JNszVwRgpuc';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '녹음 힘들었어요', '힘들었어요', '힘들다', 'The recording was tough', '힘들다 + 었어요 = 과거 상태', 1 FROM contents WHERE youtube_id = 'Jlh81SnrDOI';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '뮤비 멋있었어요', '멋있었어요', '멋있다', 'The MV was cool', '멋있다 + 었어요 = 과거 감탄', 1 FROM contents WHERE youtube_id = 'rpoMDaxSkxQ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '축제 좋았어요', '좋았어요', '좋다', 'The festival was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = '0NjnQ4NcxBY';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '사진 예뻐요', '예뻐요', '예쁘다', 'The photos are pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'piA-lG0Ii_k';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '향수 좋아요', '좋아요', '좋다', 'I like the perfume', '좋다 + 아요 = 호감 표현', 1 FROM contents WHERE youtube_id = 'temQH0FdLF4';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '일본 활동 좋았어요', '좋았어요', '좋다', 'Japanese promotions were great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'dskOC5z7Myg';

-- ============================================
-- fromis_9 (공식 채널 @Officialfromis9)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'fromis_9');
DELETE FROM contents WHERE artist_name = 'fromis_9';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('TQQ9sr_r52w', 'from 레코딩 비하인드', 'fromis_9', 'https://img.youtube.com/vi/TQQ9sr_r52w/maxresdefault.jpg', 'hard', true),
('skCkIMRwAeo', '[9_log] 하영 단발 브이로그', 'fromis_9', 'https://img.youtube.com/vi/skCkIMRwAeo/maxresdefault.jpg', 'easy', true),
('8x87yHfo4bQ', 'Supersonic 레코딩 비하인드', 'fromis_9', 'https://img.youtube.com/vi/8x87yHfo4bQ/maxresdefault.jpg', 'hard', true),
('B2dYN_UKVNk', '[9_log] 하영 홋카이도 힐링 여행', 'fromis_9', 'https://img.youtube.com/vi/B2dYN_UKVNk/maxresdefault.jpg', 'easy', true),
('mO3nMcuEFO0', '[HoneY_log] 백지헌 콘서트 브이로그', 'fromis_9', 'https://img.youtube.com/vi/mO3nMcuEFO0/maxresdefault.jpg', 'easy', true),
('8jjGCmkMs68', '[9_log] 하영&서연&지헌 첫눈 데이트', 'fromis_9', 'https://img.youtube.com/vi/8jjGCmkMs68/maxresdefault.jpg', 'easy', true),
('u2BZ6asoekg', '[9_log] 지선&채영 증명사진 촬영 데이트', 'fromis_9', 'https://img.youtube.com/vi/u2BZ6asoekg/maxresdefault.jpg', 'easy', true),
('OBACOd3v-ZU', '[9_log] 후쿠오카 고양이 섬 료칸', 'fromis_9', 'https://img.youtube.com/vi/OBACOd3v-ZU/maxresdefault.jpg', 'easy', true),
('tOaI9imaVT0', '[9_log] 지선&서연 퍼스널 컬러', 'fromis_9', 'https://img.youtube.com/vi/tOaI9imaVT0/maxresdefault.jpg', 'easy', true),
('idRHvXTIeTc', '[9_log] 단체 회식 비하인드', 'fromis_9', 'https://img.youtube.com/vi/idRHvXTIeTc/maxresdefault.jpg', 'easy', true);

-- fromis_9 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '녹음 힘들었어요', '힘들었어요', '힘들다', 'The recording was tough', '힘들다 + 었어요 = 과거 상태', 1 FROM contents WHERE youtube_id = 'TQQ9sr_r52w';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '단발 예뻐요', '예뻐요', '예쁘다', 'The short hair is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'skCkIMRwAeo';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '노래 좋아요', '좋아요', '좋다', 'I like the song', '좋다 + 아요 = 호감 표현', 1 FROM contents WHERE youtube_id = '8x87yHfo4bQ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '홋카이도 예뻐요', '예뻐요', '예쁘다', 'Hokkaido is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'B2dYN_UKVNk';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '콘서트 좋았어요', '좋았어요', '좋다', 'The concert was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'mO3nMcuEFO0';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '첫눈이에요!', '첫눈', NULL, 'It is the first snow!', '첫눈 = 처음 눈', 1 FROM contents WHERE youtube_id = '8jjGCmkMs68';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '사진 예뻐요', '예뻐요', '예쁘다', 'The photos are pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'u2BZ6asoekg';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '고양이 귀여워요', '귀여워요', '귀엽다', 'The cat is cute', '귀엽다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'OBACOd3v-ZU';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '웜톤이에요', '웜톤', NULL, 'I am warm tone', '웜톤 = 따뜻 색조', 1 FROM contents WHERE youtube_id = 'tOaI9imaVT0';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '고생했어요!', '고생했어요', '고생하다', 'Good job everyone!', '고생하다 + 했어요 = 수고 표현', 1 FROM contents WHERE youtube_id = 'idRHvXTIeTc';

-- ============================================
-- NCT 127 (공식 채널 @nct127)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'NCT 127');
DELETE FROM contents WHERE artist_name = 'NCT 127';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('RmZ_ExuHJhY', 'KCON 2025 in LA 비하인드', 'NCT 127', 'https://img.youtube.com/vi/RmZ_ExuHJhY/maxresdefault.jpg', 'normal', true),
('xyZQM1pQbJI', '2026 시즌 그리팅 비하인드', 'NCT 127', 'https://img.youtube.com/vi/xyZQM1pQbJI/maxresdefault.jpg', 'easy', true),
('xvns7MYW72U', 'SMTOWN LIVE 2025 도쿄 비하인드', 'NCT 127', 'https://img.youtube.com/vi/xvns7MYW72U/maxresdefault.jpg', 'hard', true),
('fOexzUH7EqQ', 'SMTOWN LIVE 2025 월드투어 비하인드', 'NCT 127', 'https://img.youtube.com/vi/fOexzUH7EqQ/maxresdefault.jpg', 'hard', true),
('4kmnXpI9faY', 'NCT 127 힐링하우스 9주년', 'NCT 127', 'https://img.youtube.com/vi/4kmnXpI9faY/maxresdefault.jpg', 'easy', true),
('wSyvqAnTQUQ', '[THE MOMENTUM LOG] 나고야 도쿄 비하인드 Ep.8', 'NCT 127', 'https://img.youtube.com/vi/wSyvqAnTQUQ/maxresdefault.jpg', 'normal', true),
('rYEorvzF_pM', '[THE MOMENTUM LOG] 오사카 후쿠오카 비하인드 Ep.7', 'NCT 127', 'https://img.youtube.com/vi/rYEorvzF_pM/maxresdefault.jpg', 'normal', true),
('ITRXsRT6P6A', '[THE MOMENTUM LOG] 북미 투어 비하인드 Ep.6', 'NCT 127', 'https://img.youtube.com/vi/ITRXsRT6P6A/maxresdefault.jpg', 'hard', true),
('ZjAAGg5bLmA', '[THE MOMENTUM LOG] 아시아 투어 비하인드 Ep.5', 'NCT 127', 'https://img.youtube.com/vi/ZjAAGg5bLmA/maxresdefault.jpg', 'hard', true),
('FQcTFJ0y2xA', '[THE MOMENTUM LOG] VCR & 포스터 촬영 비하인드 Ep.4', 'NCT 127', 'https://img.youtube.com/vi/FQcTFJ0y2xA/maxresdefault.jpg', 'easy', true);

-- NCT 127 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '시즈니 보고 싶었어요', '보고 싶었어요', '보고 싶다', 'I missed Czennies', '보고 싶다 + 었어요 = 과거 그리움', 1 FROM contents WHERE youtube_id = 'RmZ_ExuHJhY';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '촬영 재미있었어요', '재미있었어요', '재미있다', 'The shooting was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'xyZQM1pQbJI';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '무대 좋았어요', '좋았어요', '좋다', 'The stage was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'xvns7MYW72U';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '투어 힘들었어요', '힘들었어요', '힘들다', 'The tour was tough', '힘들다 + 었어요 = 과거 상태', 1 FROM contents WHERE youtube_id = 'fOexzUH7EqQ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '힐링됐어요', '힐링', NULL, 'I was healed', '힐링 = 치유', 1 FROM contents WHERE youtube_id = '4kmnXpI9faY';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '콘서트 대박이었어요', '대박', NULL, 'The concert was amazing', '대박 = 대단한 성공', 1 FROM contents WHERE youtube_id = 'wSyvqAnTQUQ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '팬들 좋았어요', '좋았어요', '좋다', 'The fans were great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'rYEorvzF_pM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '북미 투어 좋았어요', '좋았어요', '좋다', 'North America tour was great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'ITRXsRT6P6A';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '아시아 투어 재미있었어요', '재미있었어요', '재미있다', 'Asia tour was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'ZjAAGg5bLmA';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '포스터 예뻐요', '예뻐요', '예쁘다', 'The poster is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'FQcTFJ0y2xA';
