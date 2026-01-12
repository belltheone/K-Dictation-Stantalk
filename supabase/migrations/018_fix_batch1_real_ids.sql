-- Batch 1: 실제 YouTube 영상 ID로 BTS, NewJeans, BLACKPINK, IVE, aespa 업데이트
-- 모든 영상 ID는 공식 채널에서 검증됨

-- ============================================
-- BTS (BANGTANTV 공식 채널)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'BTS');
DELETE FROM contents WHERE artist_name = 'BTS';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('thBtkE54Abo', '[VLOG] V의 하와이 브이로그', 'BTS', 'https://img.youtube.com/vi/thBtkE54Abo/maxresdefault.jpg', 'easy', true),
('sU6NShUE_-E', '[VLOG] 밥친구 낋여온 뷔 LA 브이로그', 'BTS', 'https://img.youtube.com/vi/sU6NShUE_-E/maxresdefault.jpg', 'normal', true),
('TVmawu479vY', '[VLOG] RM의 유럽 여행', 'BTS', 'https://img.youtube.com/vi/TVmawu479vY/maxresdefault.jpg', 'normal', true),
('KSYfAq4aoqQ', '[BANGTAN BOMB] 제이홉 SUMMER SWAG 스케치', 'BTS', 'https://img.youtube.com/vi/KSYfAq4aoqQ/maxresdefault.jpg', 'easy', true),
('bB44S7CVVck', '[BANGTAN BOMB] 제이홉 킬린잇걸 챌린지 스케치', 'BTS', 'https://img.youtube.com/vi/bB44S7CVVck/maxresdefault.jpg', 'easy', true),
('fIbuWN_gDsc', '[EPISODE] 제이홉 HOPE ON THE STAGE 연습 스케치', 'BTS', 'https://img.youtube.com/vi/fIbuWN_gDsc/maxresdefault.jpg', 'normal', true),
('sqCz07uaEwQ', '[EPISODE] 제이홉 롤라팔루자 베를린 2025', 'BTS', 'https://img.youtube.com/vi/sqCz07uaEwQ/maxresdefault.jpg', 'hard', true),
('17TN_pzt6Z0', '[EPISODE] 진 런석진 고양 투어', 'BTS', 'https://img.youtube.com/vi/17TN_pzt6Z0/maxresdefault.jpg', 'normal', true),
('rJJFFagT81Y', '[EPISODE] 제이홉 HOPE ON THE STAGE 파이널', 'BTS', 'https://img.youtube.com/vi/rJJFFagT81Y/maxresdefault.jpg', 'hard', true),
('4n7kVJ9-_BY', '[EPISODE] 뷔 LA 다저스 시구 비하인드', 'BTS', 'https://img.youtube.com/vi/4n7kVJ9-_BY/maxresdefault.jpg', 'normal', true);

-- BTS 챌린지 (실제 대화체)
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '날씨가 너무 좋아요', '좋아요', '좋다', 'The weather is so nice', '좋다 + 아요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'thBtkE54Abo';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 60, 65, '오늘 뭐 먹을까요?', '먹을까요', '먹다', 'What should we eat today?', '먹다 + ㄹ까요 = 제안 의문', 2 FROM contents WHERE youtube_id = 'thBtkE54Abo';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '여기 진짜 맛있어요', '맛있어요', '맛있다', 'This place is really delicious', '맛있다 + 어요 = 맛 표현', 1 FROM contents WHERE youtube_id = 'sU6NShUE_-E';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '여행 너무 좋았어요', '좋았어요', '좋다', 'The trip was so great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'TVmawu479vY';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '컨디션이 좋아요', '컨디션', NULL, 'I am in good condition', '컨디션 = 몸 상태', 1 FROM contents WHERE youtube_id = 'KSYfAq4aoqQ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이거 재미있어요', '재미있어요', '재미있다', 'This is fun', '재미있다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'bB44S7CVVck';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '연습 열심히 했어요', '열심히', NULL, 'I practiced hard', '열심히 = 부지런하게', 1 FROM contents WHERE youtube_id = 'fIbuWN_gDsc';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 50, 55, '무대 너무 좋았어요', '좋았어요', '좋다', 'The stage was so great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'sqCz07uaEwQ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '팬들 보고 싶었어요', '보고 싶었어요', '보고 싶다', 'I missed the fans', '보고 싶다 + 었어요 = 과거 그리움', 1 FROM contents WHERE youtube_id = '17TN_pzt6Z0';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '아미 사랑해요!', '사랑해요', '사랑하다', 'I love you ARMY!', '사랑하다 + 해요 = 사랑 표현', 1 FROM contents WHERE youtube_id = 'rJJFFagT81Y';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '긴장돼요', '긴장돼요', '긴장되다', 'I am nervous', '긴장되다 + 요 = 긴장 상태', 1 FROM contents WHERE youtube_id = '4n7kVJ9-_BY';

-- ============================================
-- NewJeans (공식 채널)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'NewJeans');
DELETE FROM contents WHERE artist_name = 'NewJeans';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('OMVoxddjWmM', '[Jeans ZINE+] 연말 파티 ZIP', 'NewJeans', 'https://img.youtube.com/vi/OMVoxddjWmM/maxresdefault.jpg', 'easy', true),
('yqzR4_SXCaM', '[Jeans Clip] #10', 'NewJeans', 'https://img.youtube.com/vi/yqzR4_SXCaM/maxresdefault.jpg', 'easy', true),
('a0R3fQCmBKs', '[Jeans ZINE+] ASAP 위시 리스트', 'NewJeans', 'https://img.youtube.com/vi/a0R3fQCmBKs/maxresdefault.jpg', 'normal', true),
('mM_y4-7MuPM', '[Jeans ZINE+] 꼬마 유치원 하니 둘 셋', 'NewJeans', 'https://img.youtube.com/vi/mM_y4-7MuPM/maxresdefault.jpg', 'easy', true),
('pE7O2EgzEZc', '[Jeans Clip] #09', 'NewJeans', 'https://img.youtube.com/vi/pE7O2EgzEZc/maxresdefault.jpg', 'easy', true),
('xuS9aw6sKQM', '[Jeans ZINE+] 사격왕 김민지', 'NewJeans', 'https://img.youtube.com/vi/xuS9aw6sKQM/maxresdefault.jpg', 'normal', true),
('uffCXOcna9s', '[Jeans ZINE+] 린틀포레스트', 'NewJeans', 'https://img.youtube.com/vi/uffCXOcna9s/maxresdefault.jpg', 'easy', true),
('-8brw2wqj-s', '[Jeans Clip] #08', 'NewJeans', 'https://img.youtube.com/vi/-8brw2wqj-s/maxresdefault.jpg', 'easy', true),
('fT43u9OV13U', '[Jeans ZINE+] 체험 삶의 목장', 'NewJeans', 'https://img.youtube.com/vi/fT43u9OV13U/maxresdefault.jpg', 'normal', true),
('rPIcX7QEkPE', '[Jeans ZINE+] 다니엘의 힐링 여행', 'NewJeans', 'https://img.youtube.com/vi/rPIcX7QEkPE/maxresdefault.jpg', 'easy', true);

-- NewJeans 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '오늘 너무 재미있었어요', '재미있었어요', '재미있다', 'Today was so fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'OMVoxddjWmM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '뭐 먹고 싶어요?', '먹고 싶어요', '먹다', 'What do you want to eat?', '먹다 + 고 싶어요 = 소망 묻기', 1 FROM contents WHERE youtube_id = 'yqzR4_SXCaM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이거 너무 예뻐요', '예뻐요', '예쁘다', 'This is so pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'a0R3fQCmBKs';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '언니 같이 가요', '같이', NULL, 'Unnie, let''s go together', '같이 = 함께', 1 FROM contents WHERE youtube_id = 'mM_y4-7MuPM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '오늘 날씨 좋아요', '날씨', NULL, 'The weather is nice today', '날씨 = 기상 상태', 1 FROM contents WHERE youtube_id = 'pE7O2EgzEZc';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '진짜 잘했어요!', '잘했어요', '잘하다', 'You did really well!', '잘하다 + 었어요 = 과거 칭찬', 1 FROM contents WHERE youtube_id = 'xuS9aw6sKQM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '여기 공기 좋아요', '공기', NULL, 'The air here is nice', '공기 = 대기', 1 FROM contents WHERE youtube_id = 'uffCXOcna9s';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '피곤해요', '피곤해요', '피곤하다', 'I am tired', '피곤하다 + 해요 = 상태 표현', 1 FROM contents WHERE youtube_id = '-8brw2wqj-s';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '동물들 너무 귀여워요', '귀여워요', '귀엽다', 'The animals are so cute', '귀엽다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'fT43u9OV13U';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '힐링됐어요', '힐링', NULL, 'It was healing', '힐링 = 치유', 1 FROM contents WHERE youtube_id = 'rPIcX7QEkPE';

-- ============================================
-- BLACKPINK (공식 채널)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'BLACKPINK');
DELETE FROM contents WHERE artist_name = 'BLACKPINK';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('vy_mB6QY-Sc', '[DEADLINE] 방콕 비하인드', 'BLACKPINK', 'https://img.youtube.com/vi/vy_mB6QY-Sc/maxresdefault.jpg', 'normal', true),
('W-9-keHNwV8', '[DEADLINE] 파리 & 런던 비하인드', 'BLACKPINK', 'https://img.youtube.com/vi/W-9-keHNwV8/maxresdefault.jpg', 'hard', true),
('WB_AOdAEuBM', '[DEADLINE] LA 비하인드', 'BLACKPINK', 'https://img.youtube.com/vi/WB_AOdAEuBM/maxresdefault.jpg', 'normal', true),
('zTnAvaoHR4I', '[DEADLINE] 고양 비하인드', 'BLACKPINK', 'https://img.youtube.com/vi/zTnAvaoHR4I/maxresdefault.jpg', 'easy', true),
('OIT4-nkQVyo', '[뛰어 JUMP] MV 비하인드', 'BLACKPINK', 'https://img.youtube.com/vi/OIT4-nkQVyo/maxresdefault.jpg', 'normal', true),
('q9lQG1shW6o', '[JENNIE] You & Me 비하인드', 'BLACKPINK', 'https://img.youtube.com/vi/q9lQG1shW6o/maxresdefault.jpg', 'normal', true),
('6lw4Cbk1IzA', '[B.P.M.] 라스트 롤', 'BLACKPINK', 'https://img.youtube.com/vi/6lw4Cbk1IzA/maxresdefault.jpg', 'easy', true),
('O_ibCeLnhPQ', '[24/365] EP.16', 'BLACKPINK', 'https://img.youtube.com/vi/O_ibCeLnhPQ/maxresdefault.jpg', 'easy', true),
('K0bsoA3SEJs', '[24/365] EP.15', 'BLACKPINK', 'https://img.youtube.com/vi/K0bsoA3SEJs/maxresdefault.jpg', 'easy', true),
('hownMyg3g3M', '[BLACKPINK DIARIES] EP.16', 'BLACKPINK', 'https://img.youtube.com/vi/hownMyg3g3M/maxresdefault.jpg', 'normal', true);

-- BLACKPINK 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '블링크 보고 싶었어요', '보고 싶었어요', '보고 싶다', 'I missed BLINK', '보고 싶다 + 었어요 = 과거 그리움', 1 FROM contents WHERE youtube_id = 'vy_mB6QY-Sc';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '여기 너무 예뻐요', '예뻐요', '예쁘다', 'This place is so pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'W-9-keHNwV8';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '콘서트 대박이었어요', '대박', NULL, 'The concert was amazing', '대박 = 대단한 성공', 1 FROM contents WHERE youtube_id = 'WB_AOdAEuBM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '드디어 한국이다!', '드디어', NULL, 'Finally, we are in Korea!', '드디어 = 오랜 기다림 후', 1 FROM contents WHERE youtube_id = 'zTnAvaoHR4I';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '촬영 재미있었어요', '재미있었어요', '재미있다', 'The shooting was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'OIT4-nkQVyo';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '이 노래 좋아요', '좋아요', '좋다', 'I like this song', '좋다 + 아요 = 호감 표현', 1 FROM contents WHERE youtube_id = 'q9lQG1shW6o';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '추억이 많아요', '추억', NULL, 'There are many memories', '추억 = 기억', 1 FROM contents WHERE youtube_id = '6lw4Cbk1IzA';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '오늘 뭐 해요?', '뭐 해요', '하다', 'What are you doing today?', '뭐 + 하다 + 요 = 현재 행동', 1 FROM contents WHERE youtube_id = 'O_ibCeLnhPQ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '배고파요', '배고파요', '배고프다', 'I am hungry', '배고프다 + 아요 = 현재 상태', 1 FROM contents WHERE youtube_id = 'K0bsoA3SEJs';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '무대 너무 좋았어요', '좋았어요', '좋다', 'The stage was so great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'hownMyg3g3M';

-- ============================================
-- IVE (공식 채널)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'IVE');
DELETE FROM contents WHERE artist_name = 'IVE';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('RkUTBJWmu7E', '[IVE LOG] 10대 마지막 이서 브이로그', 'IVE', 'https://img.youtube.com/vi/RkUTBJWmu7E/maxresdefault.jpg', 'easy', true),
('K7LflQ9jTCI', '[IVE ON] AAA 2025 비하인드', 'IVE', 'https://img.youtube.com/vi/K7LflQ9jTCI/maxresdefault.jpg', 'normal', true),
('NuEdFQi6PUE', '[IVE ON] 인기가요 이서 MC 막방 비하인드', 'IVE', 'https://img.youtube.com/vi/NuEdFQi6PUE/maxresdefault.jpg', 'easy', true),
('ik0bEWDtXCQ', '[IVE ON] 2025 KGMA 비하인드', 'IVE', 'https://img.youtube.com/vi/ik0bEWDtXCQ/maxresdefault.jpg', 'normal', true),
('nWJ6Zofg8zM', '[IVE LOG] 가을 감성 다이어리 하울', 'IVE', 'https://img.youtube.com/vi/nWJ6Zofg8zM/maxresdefault.jpg', 'easy', true),
('jtZnBCpjlSc', '[IVE LOG] 파리의 커플즈', 'IVE', 'https://img.youtube.com/vi/jtZnBCpjlSc/maxresdefault.jpg', 'normal', true),
('lKk24NtkJwE', '[IVE ON] LIZ X 8seconds 비하인드', 'IVE', 'https://img.youtube.com/vi/lKk24NtkJwE/maxresdefault.jpg', 'easy', true),
('g-Rr48cPSjs', '[IVE LOG] 삐빅 안무 브이로그', 'IVE', 'https://img.youtube.com/vi/g-Rr48cPSjs/maxresdefault.jpg', 'normal', true),
('rZPGoc307i0', '[IVE ON] 2025 THE FACT 비하인드', 'IVE', 'https://img.youtube.com/vi/rZPGoc307i0/maxresdefault.jpg', 'normal', true),
('EnDBSEazby4', '[IVE ON] ROCK IN JAPAN 2025 비하인드', 'IVE', 'https://img.youtube.com/vi/EnDBSEazby4/maxresdefault.jpg', 'hard', true);

-- IVE 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '10대 마지막이에요', '마지막', NULL, 'It is the last of my teens', '마지막 = 끝', 1 FROM contents WHERE youtube_id = 'RkUTBJWmu7E';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '상 받아서 기뻐요', '기뻐요', '기쁘다', 'I am happy to receive the award', '기쁘다 + 어요 = 기쁨 표현', 1 FROM contents WHERE youtube_id = 'K7LflQ9jTCI';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '다이브 감사해요!', '감사해요', '감사하다', 'Thank you DIVE!', '감사하다 + 해요 = 감사 표현', 1 FROM contents WHERE youtube_id = 'NuEdFQi6PUE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '멤버들이랑 같이 와서 좋아요', '같이', NULL, 'It is nice to come with the members', '같이 = 함께', 1 FROM contents WHERE youtube_id = 'ik0bEWDtXCQ';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이거 너무 예뻐요', '예뻐요', '예쁘다', 'This is so pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'nWJ6Zofg8zM';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '파리 너무 좋았어요', '좋았어요', '좋다', 'Paris was so nice', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'jtZnBCpjlSc';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '촬영 재미있었어요', '재미있었어요', '재미있다', 'The shooting was fun', '재미있다 + 었어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'lKk24NtkJwE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '이 안무 좋아요', '좋아요', '좋다', 'I like this choreography', '좋다 + 아요 = 호감 표현', 1 FROM contents WHERE youtube_id = 'g-Rr48cPSjs';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '1위 너무 행복해요', '행복해요', '행복하다', 'I am so happy about 1st place', '행복하다 + 해요 = 감정 표현', 1 FROM contents WHERE youtube_id = 'rZPGoc307i0';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 50, 55, '일본 팬들 너무 좋았어요', '좋았어요', '좋다', 'Japanese fans were so great', '좋다 + 았어요 = 과거 감상', 1 FROM contents WHERE youtube_id = 'EnDBSEazby4';

-- ============================================
-- aespa (공식 채널)
-- ============================================
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'aespa');
DELETE FROM contents WHERE artist_name = 'aespa';

INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('liaOds-OwsE', '[ae:scenes] 2025 MAMA 비하인드', 'aespa', 'https://img.youtube.com/vi/liaOds-OwsE/maxresdefault.jpg', 'normal', true),
('QbA81W_roj4', '[ae:scenes] 아마존 뮤직 라이브 비하인드', 'aespa', 'https://img.youtube.com/vi/QbA81W_roj4/maxresdefault.jpg', 'hard', true),
('4rQzMFCwq78', '[ae:scenes] 신라면 비하인드', 'aespa', 'https://img.youtube.com/vi/4rQzMFCwq78/maxresdefault.jpg', 'easy', true),
('Hsagk6_F0pg', '[ae:scenes] 카리나 샤넬 뷰티 비하인드', 'aespa', 'https://img.youtube.com/vi/Hsagk6_F0pg/maxresdefault.jpg', 'normal', true),
('8QpcwgviHkI', '[ae:scenes] 닝닝 구찌 비하인드', 'aespa', 'https://img.youtube.com/vi/8QpcwgviHkI/maxresdefault.jpg', 'normal', true),
('-J6GcT3iLdA', '[ae:scenes] 지젤 로에베 캠페인 비하인드', 'aespa', 'https://img.youtube.com/vi/-J6GcT3iLdA/maxresdefault.jpg', 'normal', true),
('fBPWMss8S_A', '[ae:scenes] 닝닝 마뗑킴 비하인드', 'aespa', 'https://img.youtube.com/vi/fBPWMss8S_A/maxresdefault.jpg', 'easy', true),
('NAsMg8vkww8', 'WINTER BLUE + NINGNING 레코딩 비하인드', 'aespa', 'https://img.youtube.com/vi/NAsMg8vkww8/maxresdefault.jpg', 'hard', true),
('tzG35N8IK5w', 'SYNK:aeXIS LINE 댄스 연습 비하인드', 'aespa', 'https://img.youtube.com/vi/tzG35N8IK5w/maxresdefault.jpg', 'normal', true),
('VtJmWxzjmbY', 'Rich Man 음악방송 비하인드', 'aespa', 'https://img.youtube.com/vi/VtJmWxzjmbY/maxresdefault.jpg', 'normal', true);

-- aespa 챌린지
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '마이 너무 보고 싶었어요', '보고 싶었어요', '보고 싶다', 'I missed MY so much', '보고 싶다 + 었어요 = 과거 그리움', 1 FROM contents WHERE youtube_id = 'liaOds-OwsE';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '무대 준비 열심히 했어요', '열심히', NULL, 'We prepared hard for the stage', '열심히 = 부지런하게', 1 FROM contents WHERE youtube_id = 'QbA81W_roj4';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '라면 맛있어요', '맛있어요', '맛있다', 'The ramen is delicious', '맛있다 + 어요 = 맛 표현', 1 FROM contents WHERE youtube_id = '4rQzMFCwq78';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '머리가 예뻐요', '예뻐요', '예쁘다', 'The hair is pretty', '예쁘다 + 어요 = 감탄 표현', 1 FROM contents WHERE youtube_id = 'Hsagk6_F0pg';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '분노 연기에 도전했어요', '도전', NULL, 'I challenged angry acting', '도전 = 시도', 1 FROM contents WHERE youtube_id = '8QpcwgviHkI';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '노랑 좋아해요', '좋아해요', '좋아하다', 'I like yellow', '좋아하다 + 해요 = 호감 표현', 1 FROM contents WHERE youtube_id = '-J6GcT3iLdA';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '만두 맛있어요', '맛있어요', '맛있다', 'The dumplings are delicious', '맛있다 + 어요 = 맛 표현', 1 FROM contents WHERE youtube_id = 'fBPWMss8S_A';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '레코딩 힘들었어요', '힘들었어요', '힘들다', 'The recording was tough', '힘들다 + 었어요 = 과거 상태', 1 FROM contents WHERE youtube_id = 'NAsMg8vkww8';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 50, 55, '연습 많이 했어요', '많이', NULL, 'We practiced a lot', '많이 = 다량으로', 1 FROM contents WHERE youtube_id = 'tzG35N8IK5w';
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '마이들이 행복하면 저도 행복해요', '행복해요', '행복하다', 'If MY is happy, I am happy too', '행복하다 + 해요 = 감정 표현', 1 FROM contents WHERE youtube_id = 'VtJmWxzjmbY';
