-- aespa 콘텐츠 확장 (10개 이상 문제)
-- 공식 채널 ae:scenes 비하인드 기반

-- 기존 aespa 콘텐츠 삭제 후 재삽입
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'aespa');
DELETE FROM contents WHERE artist_name = 'aespa';

-- aespa 콘텐츠 (10개)
INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('WPdWvnAAurg', '[ae:scenes] 레코딩 비하인드', 'aespa', 'https://img.youtube.com/vi/WPdWvnAAurg/maxresdefault.jpg', 'hard', true),
('Q4i44A8dxMM', '[ae:scenes] 시즌 그리팅 비하인드', 'aespa', 'https://img.youtube.com/vi/Q4i44A8dxMM/maxresdefault.jpg', 'normal', true),
('4TWR90KJl84', '[ae:scenes] MAMA 비하인드', 'aespa', 'https://img.youtube.com/vi/4TWR90KJl84/maxresdefault.jpg', 'hard', true),
('phuiiNCxRMg', '[ae:scenes] 뮤비 촬영 비하인드', 'aespa', 'https://img.youtube.com/vi/phuiiNCxRMg/maxresdefault.jpg', 'normal', true),
('SbBj7V7JOos', '[ae:scenes] 콘서트 비하인드', 'aespa', 'https://img.youtube.com/vi/SbBj7V7JOos/maxresdefault.jpg', 'normal', true),
('HXkh_kd7kN4', '[ae:scenes] 연습실 일상', 'aespa', 'https://img.youtube.com/vi/HXkh_kd7kN4/maxresdefault.jpg', 'easy', true),
('djKPvNDwHv4', '[ae:scenes] 멤버들 게임', 'aespa', 'https://img.youtube.com/vi/djKPvNDwHv4/maxresdefault.jpg', 'easy', true),
('CzWaV_YfMDs', '[ae:scenes] 음악방송 비하인드', 'aespa', 'https://img.youtube.com/vi/CzWaV_YfMDs/maxresdefault.jpg', 'normal', true),
('mXPHsRWzJo8', '[ae:scenes] 해외 투어', 'aespa', 'https://img.youtube.com/vi/mXPHsRWzJo8/maxresdefault.jpg', 'hard', true),
('ZEOaU0-Uts0', '[ae:scenes] 휴식 시간', 'aespa', 'https://img.youtube.com/vi/ZEOaU0-Uts0/maxresdefault.jpg', 'easy', true);

-- aespa 챌린지 (16개)
-- 콘텐츠 1: 레코딩 비하인드
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 부분 다시 해볼게요', '다시', NULL, 'I''ll try this part again', '다시 = 반복하여', 1
FROM contents WHERE youtube_id = 'WPdWvnAAurg';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '수고했어요!', '수고했어요', '수고하다', 'Good job!', '수고하다 + 했어요 = 격려 표현', 2
FROM contents WHERE youtube_id = 'WPdWvnAAurg';

-- 콘텐츠 2: 시즌 그리팅 비하인드
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 촬영 힘들었어요', '힘들었어요', '힘들다', 'Today''s shooting was tough', '힘들다 + 었어요 = 과거 상태', 1
FROM contents WHERE youtube_id = 'Q4i44A8dxMM';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '결과물 예쁘게 나올 거예요', '예쁘게', '예쁘다', 'The result will come out pretty', '예쁘다 + 게 = 부사형', 2
FROM contents WHERE youtube_id = 'Q4i44A8dxMM';

-- 콘텐츠 3: MAMA 비하인드
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '무대 정말 좋았어요', '좋았어요', '좋다', 'The stage was really great', '좋다 + 았어요 = 과거 감상', 1
FROM contents WHERE youtube_id = '4TWR90KJl84';

-- 콘텐츠 4: 뮤비 촬영 비하인드
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '이 의상 정말 예뻐요', '의상', NULL, 'This outfit is really pretty', '의상 = 옷, 복장', 1
FROM contents WHERE youtube_id = 'phuiiNCxRMg';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '컨셉이 독특해요', '독특해요', '독특하다', 'The concept is unique', '독특하다 + 해요 = 평가 표현', 2
FROM contents WHERE youtube_id = 'phuiiNCxRMg';

-- 콘텐츠 5: 콘서트 비하인드
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '마이 너무 보고 싶었어요', '보고 싶었어요', '보고 싶다', 'I missed MY so much', '보고 싶다 + 었어요 = 과거 그리움', 1
FROM contents WHERE youtube_id = 'SbBj7V7JOos';

-- 콘텐츠 6: 연습실 일상
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '오늘 안무 연습 많이 했어요', '많이', NULL, 'We practiced choreography a lot today', '많이 = 다량으로', 1
FROM contents WHERE youtube_id = 'HXkh_kd7kN4';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '이제 좀 익숙해졌어요', '익숙해졌어요', '익숙하다', 'I''ve gotten used to it now', '익숙하다 + 해졌어요 = 상태 변화', 2
FROM contents WHERE youtube_id = 'HXkh_kd7kN4';

-- 콘텐츠 7: 멤버들 게임
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '내가 일등이야!', '일등', NULL, 'I''m first place!', '일등 = 1위', 1
FROM contents WHERE youtube_id = 'djKPvNDwHv4';

-- 콘텐츠 8: 음악방송 비하인드
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '오늘 1위 너무 감사해요', '감사해요', '감사하다', 'Thank you so much for 1st place today', '감사하다 + 해요 = 감사 표현', 1
FROM contents WHERE youtube_id = 'CzWaV_YfMDs';

-- 콘텐츠 9: 해외 투어
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '여기 음식 진짜 맛있어요', '맛있어요', '맛있다', 'The food here is really delicious', '맛있다 + 어요 = 맛 표현', 1
FROM contents WHERE youtube_id = 'mXPHsRWzJo8';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 60, 65, '또 오고 싶어요', '오고 싶어요', '오다', 'I want to come here again', '오다 + 고 싶어요 = 소망 표현', 2
FROM contents WHERE youtube_id = 'mXPHsRWzJo8';

-- 콘텐츠 10: 휴식 시간
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '잠깐 쉬고 싶어요', '쉬고 싶어요', '쉬다', 'I want to rest for a bit', '쉬다 + 고 싶어요 = 소망 표현', 1
FROM contents WHERE youtube_id = 'ZEOaU0-Uts0';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '커피 마실래요?', '마실래요', '마시다', 'Do you want to drink coffee?', '마시다 + ㄹ래요 = 의향 묻기', 2
FROM contents WHERE youtube_id = 'ZEOaU0-Uts0';
