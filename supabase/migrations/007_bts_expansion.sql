-- BTS 콘텐츠 확장 (10개 이상 문제)
-- 공식 채널 BANGTANTV 비하인드/V-Log 기반

-- 기존 BTS 콘텐츠 삭제 후 재삽입
DELETE FROM challenges WHERE content_id IN (SELECT id FROM contents WHERE artist_name = 'BTS');
DELETE FROM contents WHERE artist_name = 'BTS';

-- BTS 콘텐츠 (10개)
INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES
('j6zWwAoEi_w', '[BANGTAN BOMB] 정국이랑 대화', 'BTS', 'https://img.youtube.com/vi/j6zWwAoEi_w/maxresdefault.jpg', 'easy', true),
('0Wk6rhb_tow', '[BANGTAN BOMB] 생일 파티', 'BTS', 'https://img.youtube.com/vi/0Wk6rhb_tow/maxresdefault.jpg', 'easy', true),
('ttSLLgU8F_I', '[BANGTAN BOMB] 무대 뒤에서', 'BTS', 'https://img.youtube.com/vi/ttSLLgU8F_I/maxresdefault.jpg', 'normal', true),
('bT62yCMNtJs', '[BANGTAN BOMB] 연습실 대화', 'BTS', 'https://img.youtube.com/vi/bT62yCMNtJs/maxresdefault.jpg', 'easy', true),
('UWv59sQ_OMg', '[BANGTAN BOMB] 게임 시간', 'BTS', 'https://img.youtube.com/vi/UWv59sQ_OMg/maxresdefault.jpg', 'normal', true),
('OgFf4NGFwgc', '[BANGTAN BOMB] 아침 인사', 'BTS', 'https://img.youtube.com/vi/OgFf4NGFwgc/maxresdefault.jpg', 'easy', true),
('e1_hHi3fU-s', '[BANGTAN BOMB] 대기실에서', 'BTS', 'https://img.youtube.com/vi/e1_hHi3fU-s/maxresdefault.jpg', 'normal', true),
('x0sEwV4Ys_0', '[BANGTAN BOMB] 콘서트 비하인드', 'BTS', 'https://img.youtube.com/vi/x0sEwV4Ys_0/maxresdefault.jpg', 'hard', true),
('DnpVAtyaTM0', '[BANGTAN BOMB] 녹음실에서', 'BTS', 'https://img.youtube.com/vi/DnpVAtyaTM0/maxresdefault.jpg', 'hard', true),
('jhLv1b3Kz7w', '[BANGTAN BOMB] 멤버들과 식사', 'BTS', 'https://img.youtube.com/vi/jhLv1b3Kz7w/maxresdefault.jpg', 'easy', true);

-- BTS 챌린지 (10개 콘텐츠 x 각 1-2개 = 15개 이상)
-- 콘텐츠 1: 정국이랑 대화
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '오늘 뭐 먹었어?', '먹었어', '먹다', 'What did you eat today?', '먹다 + 었어 = 과거 비격식 종결', 1
FROM contents WHERE youtube_id = 'j6zWwAoEi_w';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '형, 잠깐만요', '잠깐만요', '잠깐', 'Wait a moment', '잠깐 + 만 + 요 = 정중한 요청', 2
FROM contents WHERE youtube_id = 'j6zWwAoEi_w';

-- 콘텐츠 2: 생일 파티
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '생일 축하해요!', '축하해요', '축하하다', 'Happy birthday!', '축하하다 + 해요 = 정중한 축하', 1
FROM contents WHERE youtube_id = '0Wk6rhb_tow';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '케이크 먹을래?', '먹을래', '먹다', 'Do you want to eat cake?', '먹다 + ㄹ래 = 의향 물어보기', 2
FROM contents WHERE youtube_id = '0Wk6rhb_tow';

-- 콘텐츠 3: 무대 뒤에서
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 10, 15, '오늘 무대 어땠어?', '어땠어', '어떻다', 'How was today''s stage?', '어떻다 + 었어 = 과거 감상 묻기', 1
FROM contents WHERE youtube_id = 'ttSLLgU8F_I';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '너무 잘했어!', '잘했어', '잘하다', 'You did great!', '잘하다 + 었어 = 과거 칭찬', 2
FROM contents WHERE youtube_id = 'ttSLLgU8F_I';

-- 콘텐츠 4: 연습실 대화
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '한 번 더 해보자', '한 번 더', NULL, 'Let''s try one more time', '한 번 더 = 추가 시도', 1
FROM contents WHERE youtube_id = 'bT62yCMNtJs';

-- 콘텐츠 5: 게임 시간
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '내가 이길 거야', '이길 거야', '이기다', 'I''m going to win', '이기다 + ㄹ 거야 = 미래 의지', 1
FROM contents WHERE youtube_id = 'UWv59sQ_OMg';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '졌어... 다시 하자', '다시', NULL, 'I lost... let''s do it again', '다시 = 반복하여', 2
FROM contents WHERE youtube_id = 'UWv59sQ_OMg';

-- 콘텐츠 6: 아침 인사
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 10, 15, '좋은 아침이에요', '좋은 아침', NULL, 'Good morning', '좋은 아침 = 아침 인사', 1
FROM contents WHERE youtube_id = 'OgFf4NGFwgc';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '잘 잤어요?', '잘 잤어요', '자다', 'Did you sleep well?', '자다 + 았어요 = 과거 정중', 2
FROM contents WHERE youtube_id = 'OgFf4NGFwgc';

-- 콘텐츠 7: 대기실에서
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '오늘 스케줄 뭐야?', '스케줄', NULL, 'What''s the schedule today?', '스케줄 = 일정', 1
FROM contents WHERE youtube_id = 'e1_hHi3fU-s';

-- 콘텐츠 8: 콘서트 비하인드
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '아미 너무 보고 싶었어요', '보고 싶었어요', '보고 싶다', 'I missed ARMY so much', '보고 싶다 + 었어요 = 과거 그리움', 1
FROM contents WHERE youtube_id = 'x0sEwV4Ys_0';

-- 콘텐츠 9: 녹음실에서
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '이 부분 다시 녹음할게요', '녹음', NULL, 'I''ll record this part again', '녹음 = 소리 기록', 1
FROM contents WHERE youtube_id = 'DnpVAtyaTM0';

-- 콘텐츠 10: 멤버들과 식사
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '배고파요, 빨리 먹자', '배고파요', '배고프다', 'I''m hungry, let''s eat quickly', '배고프다 + 아요 = 현재 상태', 1
FROM contents WHERE youtube_id = 'jhLv1b3Kz7w';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '이거 진짜 맛있다', '맛있다', NULL, 'This is really delicious', '맛있다 = 맛이 좋다', 2
FROM contents WHERE youtube_id = 'jhLv1b3Kz7w';
