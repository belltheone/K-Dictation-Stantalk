-- K-Pop 진정한 회화 콘텐츠 (V-Log, 비하인드, 라이브)
-- PRD 의도대로 실제 아이돌의 라이브 방송/예능 클립 사용
-- MV 가사가 아닌 진짜 대화체 한국어

-- 1. 기존 콘텐츠 삭제
DELETE FROM challenges;
DELETE FROM contents;

-- 2. 실제 V-Log/비하인드/라이브 콘텐츠 삽입
INSERT INTO contents (youtube_id, title, artist_name, thumbnail_url, difficulty, is_published) VALUES

-- BTS - BANGTANTV 공식 채널
('j6zWwAoEi_w', '[BANGTAN BOMB] JK & V 형이랑 대화', 'BTS', 'https://img.youtube.com/vi/j6zWwAoEi_w/maxresdefault.jpg', 'easy', true),
('0Wk6rhb_tow', '[BANGTAN BOMB] 진의 생일 축하', 'BTS', 'https://img.youtube.com/vi/0Wk6rhb_tow/maxresdefault.jpg', 'easy', true),
('ttSLLgU8F_I', '[BANGTAN BOMB] 무대 뒤 대화', 'BTS', 'https://img.youtube.com/vi/ttSLLgU8F_I/maxresdefault.jpg', 'normal', true),

-- NewJeans - 공식 채널 비하인드
('2sFNe9fKvdU', '[Light Jeans] 시즌 그리팅 비하인드', 'NewJeans', 'https://img.youtube.com/vi/2sFNe9fKvdU/maxresdefault.jpg', 'easy', true),
('dLJ8bzzLVxE', '[NewJeans DAY] 우리는 뉴진스', 'NewJeans', 'https://img.youtube.com/vi/dLJ8bzzLVxE/maxresdefault.jpg', 'easy', true),
('Iip8JWBJp14', '[NewJeans] 민지와 대화', 'NewJeans', 'https://img.youtube.com/vi/Iip8JWBJp14/maxresdefault.jpg', 'normal', true),

-- BLACKPINK - 공식 채널
('uLdqsX_n0RA', '[BLACKPINK] Weverse Live 귀국 후', 'BLACKPINK', 'https://img.youtube.com/vi/uLdqsX_n0RA/maxresdefault.jpg', 'normal', true),
('mxF6ej8_5Q4', '[BLACKPINK DIARIES] 일상 브이로그', 'BLACKPINK', 'https://img.youtube.com/vi/mxF6ej8_5Q4/maxresdefault.jpg', 'easy', true),
('u1_qmjvn0yE', '[BLACKPINK] 연습실에서', 'BLACKPINK', 'https://img.youtube.com/vi/u1_qmjvn0yE/maxresdefault.jpg', 'hard', true),

-- IVE - 공식 채널 비하인드
('LRy3se8sOrQ', '[IVE ON] 팬미팅 비하인드', 'IVE', 'https://img.youtube.com/vi/LRy3se8sOrQ/maxresdefault.jpg', 'easy', true),
('vD6-K6pE3Kk', '[IVE ON] 시상식 비하인드', 'IVE', 'https://img.youtube.com/vi/vD6-K6pE3Kk/maxresdefault.jpg', 'normal', true),
('6ZUIwj3FgUY', '[IVE ON] KCON 인터뷰', 'IVE', 'https://img.youtube.com/vi/6ZUIwj3FgUY/maxresdefault.jpg', 'normal', true),

-- aespa - 공식 채널 비하인드
('WPdWvnAAurg', '[ae:scenes] 레코딩 비하인드', 'aespa', 'https://img.youtube.com/vi/WPdWvnAAurg/maxresdefault.jpg', 'hard', true),
('Q4i44A8dxMM', '[ae:scenes] 시즌 그리팅 비하인드', 'aespa', 'https://img.youtube.com/vi/Q4i44A8dxMM/maxresdefault.jpg', 'normal', true),
('4TWR90KJl84', '[ae:scenes] MAMA 비하인드', 'aespa', 'https://img.youtube.com/vi/4TWR90KJl84/maxresdefault.jpg', 'hard', true),

-- Stray Kids - 공식 채널
('xDJLyjdFdD4', '[SKZ CODE] 스키즈 일상', 'Stray Kids', 'https://img.youtube.com/vi/xDJLyjdFdD4/maxresdefault.jpg', 'normal', true),
('9lPv-c6O7xo', '[2 Kids Room] 현진 & 리노', 'Stray Kids', 'https://img.youtube.com/vi/9lPv-c6O7xo/maxresdefault.jpg', 'easy', true),
('TQTlCHxyuu8', '[STAYweeK] 팬미팅 비하인드', 'Stray Kids', 'https://img.youtube.com/vi/TQTlCHxyuu8/maxresdefault.jpg', 'normal', true),

-- SEVENTEEN - 공식 채널
('_EyAoXgJcZs', '[GOING SEVENTEEN] 예능 클립', 'SEVENTEEN', 'https://img.youtube.com/vi/_EyAoXgJcZs/maxresdefault.jpg', 'easy', true),
('gT1NJmH2diY', '[INSIDE SVT] 연습실에서', 'SEVENTEEN', 'https://img.youtube.com/vi/gT1NJmH2diY/maxresdefault.jpg', 'normal', true),

-- TWICE - 공식 채널
('WoGsGl-yqH4', '[TIME TO TWICE] 게임 시간', 'TWICE', 'https://img.youtube.com/vi/WoGsGl-yqH4/maxresdefault.jpg', 'easy', true),
('mH0_XpSHkZo', '[TWICE TV] 일상 브이로그', 'TWICE', 'https://img.youtube.com/vi/mH0_XpSHkZo/maxresdefault.jpg', 'easy', true),

-- LE SSERAFIM - 공식 채널
('pyf8cbqyfPs', '[LE SSERAFIM LOG] 연습실', 'LE SSERAFIM', 'https://img.youtube.com/vi/pyf8cbqyfPs/maxresdefault.jpg', 'normal', true),
('UBURTj20HXI', '[LE SSERAFIM LOG] 일상 대화', 'LE SSERAFIM', 'https://img.youtube.com/vi/UBURTj20HXI/maxresdefault.jpg', 'easy', true),

-- ITZY - 공식 채널
('6rc_M3cjWCs', '[ITZY?ITZY!] 게임 타임', 'ITZY', 'https://img.youtube.com/vi/6rc_M3cjWCs/maxresdefault.jpg', 'easy', true),
('fE2h3lGlOsk', '[ITZY LOG] 비하인드 대화', 'ITZY', 'https://img.youtube.com/vi/fE2h3lGlOsk/maxresdefault.jpg', 'normal', true),

-- (G)I-DLE - 공식 채널
('YHnGntEqAIo', '[(G)I-DLE LOG] 일상 브이로그', 'G-IDLE', 'https://img.youtube.com/vi/YHnGntEqAIo/maxresdefault.jpg', 'normal', true),
('z3szNvNJbro', '[(G)I-DLE] 게임 타임', 'G-IDLE', 'https://img.youtube.com/vi/z3szNvNJbro/maxresdefault.jpg', 'hard', true),

-- ENHYPEN - 공식 채널
('aLgo6Ycdg5g', '[EN-LOG] 멤버들 대화', 'ENHYPEN', 'https://img.youtube.com/vi/aLgo6Ycdg5g/maxresdefault.jpg', 'normal', true),
('hXxHLp8I2yw', '[EN-O CLOCK] 게임 타임', 'ENHYPEN', 'https://img.youtube.com/vi/hXxHLp8I2yw/maxresdefault.jpg', 'hard', true);

-- 3. 실제 대화체 챌린지 (회화 표현)
-- BTS 일상 대화
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '오늘 뭐 먹었어?', '먹었어', '먹다', 'What did you eat today?', '먹다 + 었어 = 과거 비격식 종결', 1
FROM contents WHERE youtube_id = 'j6zWwAoEi_w';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '형, 잠깐만요', '잠깐만요', '잠깐', 'Wait a moment', '잠깐 + 만 + 요 = 정중한 요청', 2
FROM contents WHERE youtube_id = 'j6zWwAoEi_w';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '생일 축하해요!', '축하해요', '축하하다', 'Happy birthday!', '축하하다 + 해요 = 정중한 축하', 1
FROM contents WHERE youtube_id = '0Wk6rhb_tow';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '케이크 먹을래?', '먹을래', '먹다', 'Do you want to eat cake?', '먹다 + ㄹ래 = 의향 물어보기', 2
FROM contents WHERE youtube_id = '0Wk6rhb_tow';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 10, 15, '오늘 무대 어땠어?', '어땠어', '어떻다', 'How was today''s stage?', '어떻다 + 었어 = 과거 감상 묻기', 1
FROM contents WHERE youtube_id = 'ttSLLgU8F_I';

-- NewJeans 일상 대화  
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '여기 너무 예뻐요', '예뻐요', '예쁘다', 'This place is so pretty', '예쁘다 + 어요 = 감탄 표현', 1
FROM contents WHERE youtube_id = '2sFNe9fKvdU';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '사진 찍어줄래?', '찍어줄래', '찍다', 'Can you take a photo?', '찍다 + 어줄래 = 부탁 표현', 2
FROM contents WHERE youtube_id = '2sFNe9fKvdU';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '안녕하세요, 뉴진스입니다', '안녕하세요', '안녕', 'Hello, we are NewJeans', '안녕 + 하세요 = 정중한 인사', 1
FROM contents WHERE youtube_id = 'dLJ8bzzLVxE';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '오늘 재미있었어요', '재미있었어요', '재미있다', 'Today was fun', '재미있다 + 었어요 = 과거 감상', 2
FROM contents WHERE youtube_id = 'dLJ8bzzLVxE';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '언니, 뭐 해요?', '뭐 해요', '하다', 'Unnie, what are you doing?', '뭐 + 하다 + 요 = 현재 진행 묻기', 1
FROM contents WHERE youtube_id = 'Iip8JWBJp14';

-- BLACKPINK 일상 대화
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '드디어 한국이다!', '드디어', NULL, 'Finally, we''re in Korea!', '드디어 = 오랜 기다림 후 도착', 1
FROM contents WHERE youtube_id = 'uLdqsX_n0RA';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 50, 55, '보고 싶었어요', '보고 싶었어요', '보고 싶다', 'I missed you', '보고 싶다 + 었어요 = 그리움 표현', 2
FROM contents WHERE youtube_id = 'uLdqsX_n0RA';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 날씨 좋다', '날씨', NULL, 'The weather is nice today', '날씨 = 기상 상태', 1
FROM contents WHERE youtube_id = 'mxF6ej8_5Q4';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '연습 열심히 했어요', '열심히', NULL, 'We practiced hard', '열심히 = 부지런하게', 1
FROM contents WHERE youtube_id = 'u1_qmjvn0yE';

-- IVE 일상 대화
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '다이브 여러분 안녕!', '안녕', NULL, 'Hello DIVE!', '안녕 = 비격식 인사', 1
FROM contents WHERE youtube_id = 'LRy3se8sOrQ';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '너무 떨려요', '떨려요', '떨리다', 'I''m so nervous', '떨리다 + 어요 = 긴장 상태', 2
FROM contents WHERE youtube_id = 'LRy3se8sOrQ';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '상 받아서 기뻐요', '기뻐요', '기쁘다', 'I''m happy to receive the award', '기쁘다 + 어요 = 기쁨 표현', 1
FROM contents WHERE youtube_id = 'vD6-K6pE3Kk';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '미국 처음이에요', '처음', NULL, 'It''s my first time in America', '처음 = 첫 번째 경험', 1
FROM contents WHERE youtube_id = '6ZUIwj3FgUY';

-- aespa 일상 대화
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이 부분 다시 해볼게요', '다시', NULL, 'I''ll try this part again', '다시 = 반복하여', 1
FROM contents WHERE youtube_id = 'WPdWvnAAurg';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '수고했어요!', '수고했어요', '수고하다', 'Good job!', '수고하다 + 했어요 = 격려 표현', 2
FROM contents WHERE youtube_id = 'WPdWvnAAurg';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 촬영 힘들었어요', '힘들었어요', '힘들다', 'Today''s shooting was tough', '힘들다 + 었어요 = 과거 상태', 1
FROM contents WHERE youtube_id = 'Q4i44A8dxMM';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '무대 정말 좋았어요', '좋았어요', '좋다', 'The stage was really great', '좋다 + 았어요 = 과거 감상', 1
FROM contents WHERE youtube_id = '4TWR90KJl84';

-- Stray Kids 일상 대화
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '오늘 뭐 할 거야?', '뭐 할 거야', '하다', 'What are you going to do today?', '뭐 + 하다 + ㄹ 거야 = 미래 계획', 1
FROM contents WHERE youtube_id = 'xDJLyjdFdD4';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '같이 밥 먹자', '같이', NULL, 'Let''s eat together', '같이 = 함께', 2
FROM contents WHERE youtube_id = 'xDJLyjdFdD4';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '형 오늘 기분 좋아 보여', '기분', NULL, 'Hyung, you look happy today', '기분 = 감정 상태', 1
FROM contents WHERE youtube_id = '9lPv-c6O7xo';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '스테이 고마워요!', '고마워요', '고맙다', 'Thank you STAY!', '고맙다 + 워요 = 감사 표현', 1
FROM contents WHERE youtube_id = 'TQTlCHxyuu8';

-- SEVENTEEN 일상 대화
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '오늘 게임 뭐 해?', '뭐 해', '하다', 'What game are we playing today?', '뭐 + 하다 = 무엇을 하다', 1
FROM contents WHERE youtube_id = '_EyAoXgJcZs';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 35, 40, '내가 이겼다!', '이겼다', '이기다', 'I won!', '이기다 + 었다 = 승리 과거형', 2
FROM contents WHERE youtube_id = '_EyAoXgJcZs';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '연습 한 번 더 하자', '한 번 더', NULL, 'Let''s practice one more time', '한 번 더 = 추가로 한 번', 1
FROM contents WHERE youtube_id = 'gT1NJmH2diY';

-- TWICE 일상 대화
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '지금 뭐 하는 거야?', '뭐 하는 거야', '하다', 'What are you doing right now?', '뭐 + 하다 + 는 거야 = 현재 행동 묻기', 1
FROM contents WHERE youtube_id = 'WoGsGl-yqH4';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '진짜 재미있다!', '재미있다', NULL, 'This is really fun!', '재미있다 = 즐거운 상태', 2
FROM contents WHERE youtube_id = 'WoGsGl-yqH4';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 15, 20, '오늘 뭐 했어요?', '뭐 했어요', '하다', 'What did you do today?', '뭐 + 하다 + 했어요 = 과거 행동 묻기', 1
FROM contents WHERE youtube_id = 'mH0_XpSHkZo';

-- LE SSERAFIM 일상 대화
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '오늘 연습 많이 했어', '많이', NULL, 'We practiced a lot today', '많이 = 다량으로', 1
FROM contents WHERE youtube_id = 'pyf8cbqyfPs';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '피곤해 보여요', '피곤해', '피곤하다', 'You look tired', '피곤하다 + 해 = 비격식 상태 표현', 1
FROM contents WHERE youtube_id = 'UBURTj20HXI';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '내일 쉬고 싶어', '쉬고 싶어', '쉬다', 'I want to rest tomorrow', '쉬다 + 고 싶어 = 소망 표현', 2
FROM contents WHERE youtube_id = 'UBURTj20HXI';

-- ITZY 일상 대화
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '누가 먼저 할래?', '누가', NULL, 'Who wants to go first?', '누가 = 누구의 주격', 1
FROM contents WHERE youtube_id = '6rc_M3cjWCs';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 50, 55, '나 졌어!', '졌어', '지다', 'I lost!', '지다 + 었어 = 패배 과거형', 2
FROM contents WHERE youtube_id = '6rc_M3cjWCs';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '오늘 너무 행복해요', '행복해요', '행복하다', 'I''m so happy today', '행복하다 + 해요 = 감정 표현', 1
FROM contents WHERE youtube_id = 'fE2h3lGlOsk';

-- (G)I-DLE 일상 대화
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 20, 25, '오늘 일정 뭐야?', '일정', NULL, 'What''s the schedule today?', '일정 = 계획된 활동', 1
FROM contents WHERE youtube_id = 'YHnGntEqAIo';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 40, 45, '카페 가고 싶어요', '가고 싶어요', '가다', 'I want to go to a cafe', '가다 + 고 싶어요 = 소망 표현', 2
FROM contents WHERE youtube_id = 'YHnGntEqAIo';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '이거 어떻게 해요?', '어떻게', NULL, 'How do you do this?', '어떻게 = 방법 묻기', 1
FROM contents WHERE youtube_id = 'z3szNvNJbro';

-- ENHYPEN 일상 대화
INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 25, 30, '오늘 날씨 춥다', '춥다', NULL, 'It''s cold today', '춥다 = 낮은 온도', 1
FROM contents WHERE youtube_id = 'aLgo6Ycdg5g';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 45, 50, '코트 입어야겠다', '입어야겠다', '입다', 'I should wear a coat', '입다 + 어야겠다 = 필요성 표현', 2
FROM contents WHERE youtube_id = 'aLgo6Ycdg5g';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 30, 35, '게임 시작하자!', '시작하자', '시작하다', 'Let''s start the game!', '시작하다 + 자 = 제안 표현', 1
FROM contents WHERE youtube_id = 'hXxHLp8I2yw';

INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en, grammar_explanation, order_index)
SELECT id, 50, 55, '너무 즐거웠어요', '즐거웠어요', '즐겁다', 'It was so enjoyable', '즐겁다 + 었어요 = 과거 감정', 2
FROM contents WHERE youtube_id = 'hXxHLp8I2yw';
