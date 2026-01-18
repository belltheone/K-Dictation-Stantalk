-- Dredge Content V3 (Official Channels + Google STT)
-- 생성 시각: 2026-01-18 00:09:59.944373


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('snsU9ol4jvc', '[PREVIEW] j-hope Tour ‘HOPE ON THE STAGE’ The Original SPOT #1', 'BTS', 'normal', 1, 11.666666666666668, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 11.666666666666668, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '지금 제가 듣기로는 사랑해', '사랑해', '사랑하다', 'I love you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5q9-MtXKhJM', '[EPISODE] 진 (Jin) ‘RUNSEOKJIN_EP.TOUR’ in JAPAN - BTS (방탄소년단)', 'BTS', 'normal', 2, 12.384615384615383, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 12.384615384615383, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 26, '아 대전 바로 시작하기 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('fIbuWN_gDsc', '[EPISODE] j-hope Tour ''HOPE ON THE STAGE'' Practice Sketch - BTS (방탄소년단)', 'BTS', 'normal', 3, 19.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 19.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '6시로 다니 아 아, 아 까먹었어', '먹었어', '먹다', 'I ate');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('TKogagK4Tpo', '[PREVIEW] j-hope Tour ‘HOPE ON THE STAGE’ The Original SPOT #2', 'BTS', 'normal', 4, 19.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 19.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 10, '일단 저는 플레이어 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('TVmawu479vY', '[VLOG] RM''s Trip in Europe', 'BTS', 'normal', 5, 19.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 19.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 24, '브이로그 정직 어떤 거를 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('zr_RUOXAqh0', '진 (Jin) ‘RUNSEOKJIN_EP.TOUR’ in AMSTERDAM: LIVE VIEWING 한국 티켓 안내', 'BTS', 'normal', 6, 20.583333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 20.583333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 24, '요 아 미안합니다 극장에서 신나', '신나', '신나다', 'I am excited');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vMg1KAFAKiY', '‘Are You Sure?! Season 2'' Main Trailer', 'BTS', 'normal', 7, 26.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 26.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 6, '하시는 겁니까 배고파요', '배고파요', '배고프다', 'I am hungry');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0hH9gsprag8', '[Episode] 진 (Jin) ''RUNSEOKJIN_EP.TOUR'' ENCORE - BTS (방탄소년단)', 'BTS', 'normal', 8, 28.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 28.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 16, '바퀴 하면서 한번 맛 좀 보자', '보자', '보다', 'Let''s see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5q9-MtXKhJM', '[EPISODE] 진 (Jin) ‘RUNSEOKJIN_EP.TOUR’ in JAPAN - BTS (방탄소년단)', 'BTS', 'normal', 9, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 27, 31, '이거 하나 밖에 안 갖고 왔어', '왔어', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('y82zHUsqRUc', '[Jeans'' ZINE+] 우천 시 취소 특집🌦.ZIP | NewJeans', 'NewJeans', 'normal', 1, 12.152173913043477, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 12.152173913043477, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4, 27, '9시 다 뭐 하고 싶어요', '하고 싶어요', '', 'I want to do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('wLApx-mWc5Y', '[Jeans'' ZINE+] 뉴진스파랜드♨.ZIP | NewJeans', 'NewJeans', 'normal', 2, 12.338709677419356, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 12.338709677419356, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '사우나 나 사랑해 우리 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7G6iDGlZNlY', 'Jeans'' Clip # 0️⃣ 5️⃣ | NewJeans', 'NewJeans', 'normal', 3, 13.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 13.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 5, 21, '굉장히 킹 받네요 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('p4Z2uH2dFOA', '[Jeans'' ZINE+] GRANNIE''S FARM🍓.ZIP | NewJeans', 'NewJeans', 'normal', 4, 16.875, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 16.875, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 16, '할머니 살기 농협 갔다 와요', '와요', '오다', 'I come');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('A6JJa5s5yqE', '[Jeans'' ZINE+] 하루 종일 체육 시간!🎾.ZIP | NewJeans', 'NewJeans', 'normal', 5, 17.338709677419356, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 17.338709677419356, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '시간 나면 무슨 생각을 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gP3ubOac1tI', '[Jeans'' ZINE+] 김장대소동🥬.ZIP | NewJeans', 'NewJeans', 'normal', 6, 18.161290322580644, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 18.161290322580644, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '? 사과랑 나는 열무김치를 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('10LfhmKMWW8', '[Jeans'' ZINE+] 버킷리스트🪂.ZIP | NewJeans', 'NewJeans', 'normal', 7, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '치도 좋아하고 맛있지 우와 완전', '완전', '', 'Totally!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9INxDob4YT4', '[Jeans'' ZINE+] 오엠지 프로덕션🎬.ZIP | NewJeans', 'NewJeans', 'normal', 8, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '르겠어. 원래 안경 쓰세요 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YC2KOfxbQsc', '[Jeans'' ZINE] 김장대소동 EP.3 모두 모두~ 김치✌️🙂✌️ | NewJeans', 'NewJeans', 'normal', 9, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '무 매실청 하겠습니다 해 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('rPIcX7QEkPE', '[Jeans'' ZINE+] 다니엘의 힐링 여행🐢.ZIP | NewJeans', 'NewJeans', 'normal', 10, 19.362068965517242, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 19.362068965517242, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 29, '나거든요. 이런 거야 풀은 없어요', '없어요', '없다', 'There is not / I don''t have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('yWvzZW_g5b0', '[Jeans'' ZINE+] 엉망잔칭 토론회👑.ZIP | NewJeans', 'NewJeans', 'normal', 11, 19.806451612903224, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 19.806451612903224, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '금부터 큰 건 없는 토론을 시작해', '시작해', '시작하다', 'Let''s start');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YzUsB8MXTlw', 'Jeans'' Clip # 0️⃣ 4️⃣ | NewJeans', 'NewJeans', 'normal', 12, 20.629032258064516, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 20.629032258064516, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '제일 첫 번째 눈물 차량은 누구예요?', '누구예요?', '', 'Who is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('BHhRlI9o0PU', '[Jeans'' ZINE+] 우밤당낮 아케이드👽.ZIP | NewJeans', 'NewJeans', 'normal', 13, 20.629032258064516, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 20.629032258064516, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '여워 이거 다 아는게 너무 힘들어요', '힘들어요', '힘들다', 'It is hard');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('jzBa2WqkxvI', '[Light Jeans] Japan Music Show & Coke STUDIO LIVE 2024 Behind🪩 | NewJeans', 'NewJeans', 'normal', 14, 20.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 20.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 27, '안녕 저희 지금 도쿄에 와 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('mZeRbgRF2H0', '[Light Jeans] KGMA 2024 Dance Practice Behind🎤 | NewJeans', 'NewJeans', 'normal', 15, 20.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 20.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 3, 30, '메인보드 연습 영상 찍으러 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('yYznzbLNecA', '[Jeans'' ZINE+] 봄맞이 피크닉🧺.ZIP | NewJeans', 'NewJeans', 'normal', 16, 20.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 20.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 27, '처음 보는 모양이 이제 밥 먹어요', '먹어요', '먹다', 'I eat');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('a0R3fQCmBKs', '[Jeans'' ZINE+] ASAP Wish List🦄.ZIP | NewJeans', 'NewJeans', 'normal', 17, 24.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 24.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 13, 31, '여러분 다들 앉아 계시죠서 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gY8_MPI3p4Q', '[Jeans'' ZINE+] 요리퀸을 찾아라👩‍🍳.ZIP | NewJeans', 'NewJeans', 'normal', 18, 24.806451612903224, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 24.806451612903224, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '셋 짜장면 짬뽕을 간짜장맛 먹어요', '먹어요', '먹다', 'I eat');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('bqX3vLRJLgg', 'Jeans'' Clip # 0️⃣ 2️⃣  | NewJeans', 'NewJeans', 'normal', 19, 28.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 28.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 25, '는데 저는 샌드위치가 제일 맛있었어요', '맛있었어요', '맛있다', 'It was delicious');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5X2__AA0IdU', 'Jeans'' Clip # 0️⃣ 3️⃣ | NewJeans', 'NewJeans', 'normal', 20, 30.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 30.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4, 14, '달려가는 한 명 밖에 못 먹어요', '먹어요', '먹다', 'I eat');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('mM_y4-7MuPM', '[Jeans'' ZINE+] 꼬마 유치원 하니 둘 셋🧺.ZIP | NewJeans', 'NewJeans', 'normal', 21, 40.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 40.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22, 30, '셨거든요. 근데 자 유치원 가고 싶어요', '가고 싶어요', '', 'I want to go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('L-Gx8ry3i20', 'BLACKPINK WORLD TOUR [BORN PINK] FINALE IN SEOUL MESSAGE VIDEO (KOR ver.)', 'BLACKPINK', 'normal', 1, 18.983870967741936, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 18.983870967741936, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '되었습니다. 작년 10월에 시작해', '시작해', '시작하다', 'Let''s start');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('D4SEVu4_Ko0', 'BLACKPINK THE GAME OST ''THE GIRLS'' CELEBRATION PARTY', 'BLACKPINK', 'normal', 2, 19.806451612903224, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 19.806451612903224, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '합니다네 오늘은 여러분들이 그렇지', '그렇지', '', 'Right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('TL5dFyAuUKU', 'BLACKPINK WORLD TOUR [BORN PINK] FINALE IN SEOUL SPOT VIDEO', 'BLACKPINK', 'normal', 3, 21.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 21.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10, 30, '당연한 말이지만 민트 사랑해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('OIT4-nkQVyo', 'BLACKPINK - ‘뛰어(JUMP)’ M/V Behind the Scenes', 'BLACKPINK', 'normal', 4, 22.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 22.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 20, '돌아가는 느낌 그래도 너무 신나', '신나', '신나다', 'I am excited');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('l1PmdYuPkow', '[IVE ON] LIZ X 에스네이처 BEHIND', 'IVE', 'normal', 1, 8.703703703703702, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 8.703703703703702, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 27, '아니 이거 너무해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('X71QQ_L9LC0', '[IVE ON] ''XOXZ'' 첫주 BEHIND', 'IVE', 'normal', 2, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '그렸어요 얘는 1004천사 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('zbXg3zi9sLE', 'Note #2 : DANCE PRACTICE & BAND REHEARSAL | IVE WORLD TOUR〈SHOW WHAT I AM〉', 'IVE', 'normal', 3, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '. 회전목마를 하려고 하고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('NuEdFQi6PUE', '[IVE ON] ꒰인가 막내 공주 졸업식에 초대합니다꒱｜인기가요 이서 MC 막방 BEHIND', 'IVE', 'normal', 4, 20.20689655172414, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 20.20689655172414, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 29, '오늘은 얼그레이 티랑 요즘 축하해', '축하해', '축하하다', 'Congrats');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('D75a8yfvvu0', '[Special Clip] IVE 2025 Christmas Message', 'IVE', 'normal', 5, 21.451612903225808, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 21.451612903225808, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '데 우리 다 읽은 어떻나요 행복했어요', '행복했어요', '행복하다', 'I was happy');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0dBL9w5HvxE', 'IVE 아이브 PHOTOSHOOT ''IVE SECRET'' - Behind The Scenes', 'IVE', 'normal', 6, 22.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 22.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9, 29, '고 있어 자이브 노래 기도 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xJDMMcY8-1U', '[EP.05] 아우디즈의 찾아서 투어✈️ | 미역 수제비를 찾아서🍲🍚', 'aespa', 'normal', 1, 18.161290322580644, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 18.161290322580644, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '몇 달이나 돼 있을 걸요 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('z_vix1Jk95g', '에스파 리치 트럭을 소개합니다. [오디오 有]', 'aespa', 'normal', 2, 18.161290322580644, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 18.161290322580644, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '아닙니다. 싱싱한 체리가 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3HwEyEpRey4', 'KARINA ‘GOOD STUFF’+GISELLE ‘Tornado’ Recording Behind', 'aespa', 'normal', 3, 19.796296296296298, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 19.796296296296298, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 27, '더 높여 줄 수 있을까요 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('tKDa8g1ZOG0', '[aenniversary] 50년, 500년도 같이 하자 | 5th aenniversary Girls’ Night', 'aespa', 'normal', 4, 20.42857142857143, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 20.42857142857143, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 3, 31, '리 오늘 많이 집으로 놀러 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('fBPWMss8S_A', '[ae:scenes] 🥟갈비 만두🥟 Nice👍 | 에스파 닝닝 마뗑킴 비하인드 (aespa NINGNING Matin Kim Behind)', 'aespa', 'normal', 5, 21.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 21.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 24, '세요 땡큐 오늘 차량 잘 해볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('lPbJ3cno950', '저는 오늘 23살 됐고🦋 VOGUE CHINA도 20살🎂 | NINGNING X  VOGUE Forces Of Fashion Gala', 'aespa', 'normal', 6, 24.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 24.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 11, 31, '안녕하세요 축하해 주세요 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('4rQzMFCwq78', '[ae:scenes] 세상을 신라면으로 물들이는 중…❤️ | 에스파 신라면 비하인드 (aespa Shin Ramyun Behind)', 'aespa', 'normal', 7, 24.362068965517242, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 24.362068965517242, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 29, '런 거 아닌데 라면을 먹고 잤어', '잤어', '자다', 'I slept');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PiLh0Kp4guU', 'Ordinary Notes #2 | 도겸X승관 (SEVENTEEN)', 'SEVENTEEN', 'normal', 1, 8.225806451612904, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 8.225806451612904, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '가이드가 너무 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('fflda62lN1g', '[GOING DxS SPECIAL] 악당 뿌도 (Villains BBOODO) TEASER', 'SEVENTEEN', 'normal', 2, 9.347826086956522, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 9.347826086956522, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8, 31, '우리의 정수가 뭐야', '뭐야', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('2mX5i40-kEw', 'THE VIBERS CHALLENGE ZIP | 에스쿱스X민규 (SEVENTEEN)', 'SEVENTEEN', 'normal', 3, 9.574074074074073, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 9.574074074074073, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 27, '아 이거 원래 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('maWbO6-yo18', '[INSIDE SEVENTEEN] 호시 BAPE 캠페인 촬영 비하인드 (HOSHI''s BAPE Campaign Shoot Sketch)', 'SEVENTEEN', 'normal', 4, 11.827586206896552, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 11.827586206896552, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 29, '엄마 이거 원래 되게 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('BMeK_rcQfrU', '[GOING SEVENTEEN] EP.146 Chat, Chat #1', 'SEVENTEEN', 'normal', 5, 18.161290322580644, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 18.161290322580644, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '어떨 때 제일 꼴 보기 싫어요', '싫어요', '싫다', 'I dislike it');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('OBKeDG0Lr3Q', '[하니왔쫑] I-GOYA in HOMETOWN | 그 시절 동네 한 바퀴🏃💭 | 정한이가 들려주는 어린 시절 SSUL🏡', 'SEVENTEEN', 'normal', 6, 18.161290322580644, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 18.161290322580644, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '변동이라는 겁니다. 여기가 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('kjh8hKdQ7oI', '세븐틴(SEVENTEEN)이 전하는 2026 새해 인사 메시지 💌', 'SEVENTEEN', 'normal', 7, 18.8125, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 18.8125, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 32, '더 말을 한 통 할게요. 고마워요', '고마워요', '고맙다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_ejTP_t7SJs', '[하니왔쫑] ‘なんでもないよ、(아무것도 아니야)’ 녹음 비하인드 (It''s Nothing (Nanndemonaiyo,) Recording Shoot Sketch)', 'SEVENTEEN', 'normal', 8, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '이거 어떻게 해야 돼요 어 뭐야', '뭐야', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('14CCOkVHLm0', '세븐틴(SEVENTEEN)이 전하는 2026학년도 수능 응원 메시지', 'SEVENTEEN', 'normal', 9, 19.806451612903224, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 19.806451612903224, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '열심히 달려온 여러분 너무 멋져요', '멋져요', '멋지다', 'It is cool');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('x-dEKCW3mmc', '[GOING SEVENTEEN] EP.147 Chat, Chat #2', 'SEVENTEEN', 'normal', 10, 20.20689655172414, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 20.20689655172414, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 29, '이브 한번 불러 드려야 돼 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('mrKd-qt0Xls', '[HOSHI TAMTAM] HOT 했던 글래스톤베리 2024🔥 I 해리포터 정기 모임 살루떼🥂 | 호랑이의 시선', 'SEVENTEEN', 'normal', 11, 23.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 23.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 17, '밥을 먹으러 가려고 하고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Z72IxNTKqKo', '[HOSHI TAMTAM] 호시 ‘Fallen Superstar’ 비하인드(HOSHI’s ‘Fallen Superstar’ Recording & Video Shoot Sketch)', 'SEVENTEEN', 'normal', 12, 24.428571428571427, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 24.428571428571427, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 17, 31, '일부터 먼저 진행을 해 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('cpalu6tunsE', '[GOING DxS SPECIAL] 악당 뿌도 #2 (Villains BBOODO #2)', 'SEVENTEEN', 'normal', 13, 25.055555555555557, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 25.055555555555557, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 5, 23, '위해서 캠핑장이 갈 것인가 알겠어요', '알겠어요', '알다', 'I understand');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('WZHE3-RmN1U', '[GOING DxS SPECIAL] 악당 뿌도 #1 (Villains BBOODO #1)', 'SEVENTEEN', 'normal', 14, 26.857142857142858, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 26.857142857142858, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 17, 31, '왔단 말이지 너 음악 듣고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('t3QYengDjr0', 'Stray Kids 2026 Season’s Greetings [STARLIGHT SUPPER CLUB] MAKING FILM', 'Stray Kids', 'normal', 1, 10.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 10.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '시즌 그리팅 전화 왔어', '왔어', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0oTtNyRhpm8', '[Stray Kids : SKZ-TALKER GO! Season 5] Ep.31 PARIS', 'Stray Kids', 'normal', 2, 10.137931034482758, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 10.137931034482758, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2, 31, '저는 지금 집에 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('U9-7JBGRyMc', '[RACHA LOG] Ep.14 행복한 돼끼 : Changbin X HAN X Felix', 'Stray Kids', 'normal', 3, 10.833333333333334, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 10.833333333333334, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '징어 징어, 오랜만 배고파', '배고파', '배고프다', 'I am hungry');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ZeoHs2zfXPE', 'Holiday House #2｜[SKZ CODE] Ep.90', 'Stray Kids', 'normal', 4, 13.055555555555555, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 13.055555555555555, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 27, '휴지로 닦아요 있냐고 못해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('bpnab0Aa5mE', '[Stray Kids : SKZ-TALKER] Ep.78', 'Stray Kids', 'normal', 5, 15.166666666666668, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 15.166666666666668, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 15, '찬영이 럭키드로우 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9bHJc5Hv9Vw', '[2 Kids Room 2025] Ep.27 Lee Know X Seungmin', 'Stray Kids', 'normal', 6, 18.161290322580644, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 18.161290322580644, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '보고 싶은 마음이 있기는 뭐야', '뭐야', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Csaxd97bVJE', '[2 Kids Room 2025] Ep.20 HAN X I.N', 'Stray Kids', 'normal', 7, 18.161290322580644, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 18.161290322580644, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '워 주세요 아 이것도 이거 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('y7z55mObLO8', '[2 Kids Room 2025] Ep.18 Bang Chan X Felix', 'Stray Kids', 'normal', 8, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '아 이거는 킹덤 버스 데뷔 완전', '완전', '', 'Totally!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('V77feEklVzA', '[Stray Kids : SKZ-TALKER GO! Season 5] Ep.32 ROMA', 'Stray Kids', 'normal', 9, 19.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 19.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 1, 31, '번 찍어 보도록 해 볼게요 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('k4IsJDwRKz4', '[2 Kids Room 2025] Ep.22 HAN X Seungmin', 'Stray Kids', 'normal', 10, 19.57142857142857, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 19.57142857142857, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 28, '무 좋았다 인상이 말 같네 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pPfpE6pOapA', '[2 Kids Room 2025] Ep.19 Lee Know X Changbin', 'Stray Kids', 'normal', 11, 19.57142857142857, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 19.57142857142857, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 28, '달란 얼굴이 막 쓰는 형이 뭐야', '뭐야', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('wgfPkWSDUHU', '[2 Kids Room 2025] Ep.25 Hyunjin X Felix', 'Stray Kids', 'normal', 12, 20.833333333333332, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 20.833333333333332, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 1, 31, '만해도 약간 패션 줄 알고 있었어요', '있었어요', '있다', 'There was / I had');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('2kQENtCRu6Y', '[SKZ VLOG] Hyunjin : Hyun.e''s Holiday 11', 'Stray Kids', 'normal', 13, 21.285714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 21.285714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 28, '가 터져 가지고 해서 그거 먹었어요', '먹었어요', '먹다', 'I ate');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('nv6WtNmPXZU', '[2 Kids Room 2025] Ep.26 Bang Chan X I.N', 'Stray Kids', 'normal', 14, 23.161290322580644, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 23.161290322580644, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '서바이벌 때문에 기억나는데 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1ydl2uTMPGo', '[SKZ VLOG] Felix : Sunshine mini Vlog 2', 'Stray Kids', 'normal', 15, 25.642857142857142, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 25.642857142857142, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9, 23, '너무 예쁘게 머리 염색도 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XU08DOMg2EY', '[SKZ VLOG] I.N : I.N의 퐁당로그 10 in Milano', 'Stray Kids', 'normal', 16, 27.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 27.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 24, 29, '소리나는 기계 축하해', '축하해', '축하하다', 'Congrats');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('4kmnXpI9faY', '🌿우리칠 힐링하우스🏡 | NCT 127 9th Anniversary', 'NCT 127', 'normal', 1, 18.925925925925924, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 18.925925925925924, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2, 29, '2주 년인데 소감이 어떠신가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5JqR5phjk-Q', 'Stage Practice Behind | Ep.2 | THE MOMENTUM LOG', 'NCT 127', 'normal', 2, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '린 음식 이래 몸에다 너무 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7IQ1oG_wDqg', 'Kick off meeting & Stage Practice Behind | Ep.1 | THE MOMENTUM LOG', 'NCT 127', 'normal', 3, 19.806451612903224, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 19.806451612903224, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '타이틀부터 정리를 하고 시작할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ZjAAGg5bLmA', 'Concert D-Day Behind in JAKARTA, BANGKOK, TAIPEI, MACAU | Ep.5 | THE MOMENTUM LOG', 'NCT 127', 'normal', 4, 22.18181818181818, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 22.18181818181818, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 22, '고맙다 바다 영웅 한번 해 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9Qof0SCMPCQ', '🎧ྀི♪⋆ ✮ 무대로 보여드릴게요!ˎˊ˗🚶❤️‍🔥 | 2024 해외 행사 무대 비하인드', 'NCT 127', 'normal', 5, 22.57142857142857, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 22.57142857142857, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 21, '자기 계속 이런 거 쓸 거 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('kS8Ta2mYVjw', '🐱🍒🍑🐻', 'NCT 127', 'normal', 6, 24.57142857142857, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 24.57142857142857, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 28, '약간 조금 떨어지면 앞에만 예뻐', '예뻐', '예쁘다', 'It is pretty');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('bsAuiWvXcRA', 'DREAM THE FUTURE : Page #2 - Dance Practice, Stage Practice | THE DREAM SHOW 4 BEHIND', 'NCT DREAM', 'normal', 1, 17.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 17.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 11, 25, '사장님 보고 싶은게 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('c_qqX5VnmTQ', '기다렸어 어서와〰️🌈 7DREAM만의 색으로 물든 하루 | 825-9번지 Home Sweet DREAM🏠', 'NCT DREAM', 'normal', 2, 18.161290322580644, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 18.161290322580644, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '집들이 안녕하세요 현진아 뭐야', '뭐야', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('CS5_tj8Frzo', 'Dream VS Dream | 3 VS 4', 'NCT DREAM', 'normal', 3, 19.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 19.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '이기는 거야 이팀에 막내가 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gsLmdj7ljpM', '함께 가봅시다!!! 시즈니랑 드림이들 안아…🫂 | SMTOWN LIVE 2025 in TOKYO Behind', 'NCT DREAM', 'normal', 4, 20.03846153846154, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 20.03846153846154, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 26, '등이 술을 먹고 있습니다 말했어', '했어', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('__Pia1OWMGI', 'NCT DREAM ‘Beat It Up’ Recording Behind the Scenes', 'NCT DREAM', 'normal', 5, 20.61904761904762, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 20.61904761904762, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 21, '갈 수 있는 데까지 해 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ZSNfqYNDXYE', '🔍부품 찾기 미션‼️ 얼렁뚱땅 와진창(?) 게임🔨💥 | Beat It Up Project | EP. 2', 'NCT DREAM', 'normal', 6, 29.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 29.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14, 26, '니다 스트레칭 하시고요 밥 먹었어', '먹었어', '먹다', 'I ate');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3-l7ZHISQnc', '수빈이의 쉽지 않은 여행 | TXT-LOG | TXT (투모로우바이투게더)️', 'TXT', 'normal', 1, 18.983870967741936, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 18.983870967741936, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '만 자고 바로 집만 싸고 나왔어', '왔어', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-Xq7x_Fwx_w', 'Friend Candidate 3. Patricia | HUENINGKAI''s Countless Friends 🌊', 'TXT', 'normal', 2, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '지금 제대하고 나서 제 입금했어', '했어', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('OYELCzdZZU8', '[GREETING] TXT (투모로우바이투게더) GLOBAL OFFICIAL FANCLUB MOA MEMBERSHIP', 'TXT', 'normal', 3, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '블 멤버십 카드 점은 무엇인가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5UshY91R4-g', 'Hoping for Saju and Personal Color''s Amicable Truce | NOT TO DO EP. 〈Sajunal Color〉', 'TXT', 'normal', 4, 19.57142857142857, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 19.57142857142857, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 28, '빨리 해야 되니까 이따 전화할게', '할게', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('O1z7Qp7Mye4', '귀여운 아이템을 사수하라👊💕 | T:TIME | TXT (투모로우바이투게더)️', 'TXT', 'normal', 5, 19.796296296296298, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 19.796296296296298, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 27, '지금 헤어졌어요 모자 쓰고 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('U2tMYydCudw', '그냥 즐기려고요 나답게 | EP.2 | NO LABELS: PART 01', 'TXT', 'normal', 6, 23.161290322580644, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 23.161290322580644, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '꼭 들어가야 되면 내일 짜보자', '보자', '보다', 'Let''s see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XSIcaZW21Vk', '휴닝카이 친구들도 첨벙첨벙 | HUENINGKAI’s Countless Friends | Teaser', 'TXT', 'normal', 7, 32.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 32.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 5, '준이가 틀려 만들어 줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('saf4szIZc2I', 'ENHYPEN (엔하이픈) ‘Mistletoe’ (Holiday Special Clip)', 'ENHYPEN', 'normal', 1, 12.857142857142858, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 12.857142857142858, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 28, '내가 어떻게 하는지 모르겠어', '모르겠어', '모르다', 'I don''t know');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('DxlASO-nTlI', 'ENHYPEN (엔하이픈) ‘Knife’ 응원법', 'ENHYPEN', 'normal', 2, 18.517241379310345, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 18.517241379310345, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 29, '다리셨죠? 어제 정말 많이 했어', '했어', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('nhT7repqPW0', '[-note] 241110 JAKE - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 3, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '간을 내서 와 많은 분들께 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('jMPoXUZCypk', 'ENHYPEN 2026 SEASON''S GREETINGS Teaser#2', 'ENHYPEN', 'normal', 4, 19.806451612903224, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 19.806451612903224, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '나랑 같이 갈래 물어 물어 봤어요', '봤어요', '보다', 'I saw/watched');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('6-d1MYvW_To', '[EPISODE] ENHYPEN ‘THE SIN : VANISH’ Chapter Film & Still 비하인드 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 5, 20.03846153846154, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 20.03846153846154, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 26, '데 여기는 사막입니다 진짜 대박', '대박', '', 'Amazing!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5ljMMrpTvJk', '[-note] 250802 TEAM Lucifer - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 6, 20.629032258064516, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 20.629032258064516, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '좋아서 대게 분위기가 너무 좋았어요', '좋았어요', '좋다', 'It was good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('BfJKI1FZwCo', '[EN-TER key] 선우의 2025 대한민국사회공헌대상 수상 비하인드 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 7, 20.891304347826086, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 20.891304347826086, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 23, '사진을 받을 수 있다는게 그렇지', '그렇지', '', 'Right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('j3zKr93zpNI', '[EPISODE] ''WALK THE LINE'' : FINAL 비하인드 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 8, 20.923076923076923, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 20.923076923076923, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 26, 'n I can 어딘데요 연락할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('NrtupZNyN68', '[EPISODE] ENHYPEN (엔하이픈) @ 2025 MAMA ', 'ENHYPEN', 'normal', 9, 23.161290322580644, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 23.161290322580644, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '잘 왔습니다 하면은 그게 됐어', '됐어', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('BmvJe0I2pzk', '동굴에서 있었던 일 -1편- | 뱀파이어 도주일지 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 10, 25.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 25.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '살면서 동글 가게 될 줄은 몰랐어', '몰랐어', '모르다', 'I didn''t know');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('fd68xm_7BKk', 'ITZY “TUNNEL VISION” BEHIND #2', 'ITZY', 'normal', 1, 10.982758620689655, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 10.982758620689655, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 29, '뮤직뱅크입니다 오늘 완전', '완전', '', 'Totally!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('W06KjJ-0u-g', '[All Tastes of ITZY] EP.5 | Following Ryujin''s Taste - Board game', 'ITZY', 'normal', 2, 18.161290322580644, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 18.161290322580644, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '평생 잘해 간다니까 여기 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('q1J3_riebjo', 'Yuna''s B-DAY 100 QnA📝', 'ITZY', 'normal', 3, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '궁금한데요 지금부터 바로 시작해', '시작해', '시작하다', 'Let''s start');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('nByx9J-VL7o', 'ITZY “TUNNEL VISION” BEHIND #1', 'ITZY', 'normal', 4, 19.362068965517242, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 19.362068965517242, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2, 31, '게 미안하지만 차라리 인기 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ByvjDGtVr9s', '[ITZY?ITZY!] EP 231 l Yuna''s FENDI 2026 S/S Fashion Show & Ryujin''s Polo Ralph Lauren', 'ITZY', 'normal', 5, 19.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 19.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6, 30, '담고 또 즐기다가 착해서 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('4W-1cVLnoUc', '[ITZY?ITZY!] EP 230 | Yuna''s DYNAFIT Shooting', 'ITZY', 'normal', 6, 20.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 20.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '께 사람이기 때문에 굉장히 많아요', '많아요', '많다', 'There are many');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VXM77tkRnVw', '[ITZY?ITZY!] EP 220 l ITZY MIDZY, LET''S FLY! “ON AIR” Practice Behind', 'ITZY', 'normal', 7, 20.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 20.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4, 29, '고 해 가지고 그걸 그렇게 됐어', '됐어', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('rYcGGy2GiKQ', 'ITZY “TUNNEL VISION” M/V Reaction Video', 'ITZY', 'normal', 8, 20.944444444444443, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 20.944444444444443, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18, 27, '이때 계속 내가 참 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hoOMOem60LA', '[ITZY?ITZY!] EP 223 l ITZY 2026 SEASON''S GREETINGS BEHIND', 'ITZY', 'normal', 9, 21.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 21.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 5, 29, '즌그리팅 찍는 돌아왔습니다 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7HTeRmfG7rc', 'ITZY “TUNNEL VISION” Cheer Guide', 'ITZY', 'normal', 10, 23.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 23.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 16, '니다. 사십시오 잘 보세요 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('bglipwyal-U', '[ITZY? ITZY!] EP 225 | Spotify ''Line by Line'' & ''TUNNEL VISION'' POP-UP STORE', 'ITZY', 'normal', 11, 23.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 23.714285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 28, '노래를 하면 더 생각하는 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8fy4A3YKTzw', '[ITZY VLOG] CHAERYEONG｜Introvert’s Comfort Vlog ☁ | Abs Routine | Hangang Run | Self-Care Day', 'ITZY', 'normal', 12, 25.307692307692307, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 25.307692307692307, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 12, 25, '줬거든요. 정말 정말 가기 싫어', '싫어', '싫다', 'I dislike it');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Nh46QnqX9wY', 'Because that’s what TUNNEL VISION is l School Look & Cats Ver. Behind', 'ITZY', 'normal', 13, 25.891304347826086, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 25.891304347826086, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 23, '다 없으면 내 이름이 채경 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ltZNE-yx1u4', '[ITZY?ITZY!] EP 221 l ITZY MIDZY, LET''S FLY! “ON AIR” Rehearsal & D-Day Behind', 'ITZY', 'normal', 14, 41.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 41.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4, 12, '비 되셨으면 제가 한번 해 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('kBRBBr-grz4', '[📂Secret Cut] 17_Lunch Squad Having Fun With Just One Prop.mp4 ⏵ ‘Feel Special’ Jacket Shoot', 'TWICE', 'normal', 1, 11.25, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 11.25, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14, 30, '나 아들 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('y9WlnvIfn2M', 'TWICE 2026 Season''s Greetings [RED WHISPERS] Behind', 'TWICE', 'normal', 2, 18.161290322580644, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 18.161290322580644, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '러 왔습니다. 오늘 컨셉은 완전', '완전', '', 'Totally!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9E9I5xqJJ4I', '[📂Secret Cut] 13_They Have Fun Even With Just The Two.mp4 ⏵ ‘MORE & MORE’ MV shoot', 'TWICE', 'normal', 3, 18.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 18.714285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 28, '올게 머리 맞아 너 맞춰 볼게', '볼게', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('FyVnLgJWs8U', '[📂Secret Cut] 21_SHAMO’s Talk Marathon.mp4 ⏵ ‘SCIENTIST’ MV Filming', 'TWICE', 'normal', 4, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '머리가 터져 버려 가지고 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gWk6wMY8jvI', '[📂Secret Cut] 20_Body Language Game.mp4 ⏵ ‘MORE & MORE’ Jacket Shoot', 'TWICE', 'normal', 5, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '가 문제 내 봐 내가 맞춰 볼게', '볼게', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('C4cM66WbWYs', '[📂Secret Cut] 18_What''s in My Bag.mp4 ⏵ ‘I CAN’T STOP ME’ M COUNTDOWN Green Room', 'TWICE', 'normal', 6, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '가려고 하지 그래서 문자 예뻐요', '예뻐요', '예쁘다', 'It is pretty');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Grm16vOuLOs', '[📂Secret Cut] 07_TALL TZU.mp4 ⏵ ’MORE & MORE’ jacket shoot', 'TWICE', 'normal', 7, 19.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 19.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 24, '거 아니야. 이렇게 올려야 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7G-gd0hf2-4', '[📂Secret Cut] 10_Hotpot Studies w/. Prof. Lim and JEONGYEON.mp4 ⏵ NA-JEONGxTWO-YEONS Driving lessons', 'TWICE', 'normal', 8, 19.796296296296298, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 19.796296296296298, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4, 31, '창이 언니의 최선이야 이게 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7OlnywoBX8w', '[📂Secret Cut] 09_The secret behind the drawing in the green room.mp4 ⏵ MINA Melody Project', 'TWICE', 'normal', 9, 19.806451612903224, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 19.806451612903224, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '근에 그래도 알을 먹기 시작했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('sZg99XaoxEU', '[📂Secret Cut] 27_Zyo PD on online concert day.mp4 ⏵TWICE : World in A Day', 'TWICE', 'normal', 10, 20.20689655172414, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 20.20689655172414, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 29, '고요 제가 자랑하고 싶은게 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('oQ_ljhIot-k', '[📂Secret Cut] 08_The beginning of Actress DAHYUN.mp4 ⏵ Movie ‘Run To You’', 'TWICE', 'normal', 11, 22.18181818181818, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 22.18181818181818, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9, 31, '데 잠을 한숨도 못 자고 나왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('zToJ6GWq-U4', '[📂Secret Cut] 25_Dancing Tzu.mp4 ⏵ ‘MORE & MORE’ MV Shoot', 'TWICE', 'normal', 12, 22.274193548387096, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 22.274193548387096, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '시 중지 보여주세요 춤 춤 보고 싶어요', '보고 싶어요', '', 'I want to see / I miss');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('2R2W_CXrp3E', '🩷HAPPY NEW YEAR, ONCE🩷', 'TWICE', 'normal', 13, 25.20689655172414, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 25.20689655172414, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 29, '이어서 웃으면서 많이 많이 축하해', '축하해', '축하하다', 'Congrats');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('sEPMFwTAeZk', '[📂Secret Cut] 11_Chaotic TWICE Secret Friend Detectives.mp4 ⏵ TW-LOG with SECRET FRIEND', 'TWICE', 'normal', 14, 27.666666666666668, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 27.666666666666668, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 17, 29, '아닐 거 같아 아 그래 나 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7yFgIQ4MPAY', '2nd Mini Album [MY, Lover] FAN SHOWCASE 비하인드 [MY, Talk] #4 | 미연 (MIYEON)ㅣSUB', 'G-IDLE', 'normal', 1, 12.152173913043477, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 12.152173913043477, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8, 31, '너무 졸려서 어떻게 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Azorr0JBGmw', '''F.F.L.Y'' SPECIAL CLIP 촬영 비하인드 [MY, Talk] #5 | 미연 (MIYEON)ㅣSUB', 'G-IDLE', 'normal', 2, 18.161290322580644, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 18.161290322580644, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '날입니다. 양평 좀 멀리 없어요', '없어요', '없다', 'There is not / I don''t have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('OK7RZNpyDQg', '미연 (MIYEON) ''Say My Name'' Recording BehindㅣSUB', 'G-IDLE', 'normal', 3, 18.161290322580644, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 18.161290322580644, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '녹음 있습니다 화이팅 해 줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('df43xVUh_I8', 'SUMMER SONIC 2025 비하인드 [i-talk] #228 | i-dle (아이들)ㅣSUB', 'G-IDLE', 'normal', 4, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '라가야 되는 상황인데 바로 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ee5VdVv5Hk4', '소연의 중앙일보 창간 60주년 글로벌 미디어 컨퍼런스 스피치 비하인드 [i-talk] #226 | i-dle (아이들)ㅣSUB', 'G-IDLE', 'normal', 5, 19.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 19.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '하는 사람인데 파란색으로 뭐예요?', '뭐예요?', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('rZKx-SnGC6o', '성만 빼고 다 빼앗긴 거예요? 제 이름을? [Say MY Name] | 미연 (MIYEON)ㅣSUB', 'G-IDLE', 'normal', 6, 19.4, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 19.4, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 25, '호 재밌는 거 없나? 이게 뭐야?', '뭐야?', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YB3-vM7UGAU', '미연 (MIYEON) ''Say My Name'' 응원법ㅣSUB', 'G-IDLE', 'normal', 7, 19.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 19.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 24, '을 알려 드리려고 합니다. 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GCmKM7Y0-D4', '''M.O.'' 음악방송 비하인드 [SONG TALK TALK] #11 | 우기 (YUQI)ㅣSUB', 'G-IDLE', 'normal', 8, 20.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 20.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '른 전화 이사도 시간 너무 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Ls2UanIusQU', '2026 시즌 그리팅 비하인드 [i-talk] #234 | i-dle (아이들)ㅣSUB', 'G-IDLE', 'normal', 9, 23.473684210526315, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 23.473684210526315, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 19, '고 싶었습니다 날씨가 너무 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('U-_6zPm_gHI', '소연의 Coach Spring 2026 Show 비하인드 [i-talk] #231 | i-dle (아이들)ㅣSUB', 'G-IDLE', 'normal', 10, 23.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 23.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '게 많은 말했는데요 달렸나 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('DzdYTAjlwjU', '''Say My Name'' 음악방송 비하인드 PART 1 [MY, Talk] #6 | 미연 (MIYEON)ㅣSUB', 'G-IDLE', 'normal', 11, 25.583333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 25.583333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 24, '에 막 나왔는데 너무 좋지 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YB3-vM7UGAU', '미연 (MIYEON) ''Say My Name'' 응원법ㅣSUB', 'G-IDLE', 'normal', 12, 36.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 36.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23, 31, '어제 버클리 어디 많이 기대할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('p9_0-aetRGI', 'NMIXX만의 아이스크림을 만들어볼까요🍦 | 벤슨 크리머리 서울 매장 방문기, 벤슨 블루 발렌타인 플레이버 | MIXX Log', 'NMIXX', 'normal', 1, 18.983870967741936, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 18.983870967741936, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '고 싶은데 아니 그 초콜릿 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('FborVGP1aS8', 'NMIXX(엔믹스) 2026학년도 대학수학능력시험 응원 메시지🍀', 'NMIXX', 'normal', 2, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '니다. 위에 앉아서 원하는 잠깐만', '잠깐만', '', 'Wait a moment');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('nvxrD_6wESo', '2026년도 잘 부탁해 ⊹ ࣪ ˖ | 2025 연말 시상식 비하인드 | Day MIXX', 'NMIXX', 'normal', 3, 19.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 19.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '하세요 자 KBS 뮤직뱅크 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hTbWPRHoVTY', 'NMIXX(엔믹스) “ADORE U & Shape of Love” Recording Behind | Recording MIXX', 'NMIXX', 'normal', 4, 19.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 19.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '가 되셨나요? 지금도 너무 좋은데', '좋은데', '', 'It is good though');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_GAXkx9reHg', '누가 범인일까..? | 파티케이크 살인사건🎂 TEASER | PICK NMIXX', 'NMIXX', 'normal', 5, 19.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 19.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '하 파티 된다 이거는 열어 볼게', '볼게', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('fRXd-juZcoE', 'Concert DAY 2 Behind EP.03 | NMIXX 1ST WORLD TOUR ‘EPISODE 1: ZERO FRONTIER’ IN INCHEON', 'NMIXX', 'normal', 6, 19.806451612903224, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 19.806451612903224, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '이팅 너무 사랑해요 좀 더 신나요', '신나요', '신나다', 'I am excited');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('37nIXmdfP-Q', 'NMIXX 2026 New Year Greeting Message🐴', 'NMIXX', 'normal', 7, 19.806451612903224, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 19.806451612903224, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '난 한해동안 응원해 주시고 사랑해', '사랑해', '사랑하다', 'I love you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-esuLZmzBFo', 'NMIXX(엔믹스) “Blue Valentine” MV Commentary Behind EP.02', 'NMIXX', 'normal', 8, 20.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 20.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 20, '얘기잖아요. 이런 노래는 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Prr6VkwiSWI', 'NMIXX(엔믹스) “Blue Valentine” MV Commentary Behind EP.01', 'NMIXX', 'normal', 9, 21.421052631578945, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 21.421052631578945, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9, 28, '같아요 처음 걸어요 LA 왔어', '왔어', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XX0lvvx5eKU', '오늘 밤 주인공 산타는 나야🎄 | Who’s The Next Santa? | PICK NMIXX', 'NMIXX', 'normal', 10, 24.833333333333332, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 24.833333333333332, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 16, 31, '앨리스마샤 산타마을 이것은 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-kB9Zj47kd8', 'BABYMONSTER - 2025 MAMA AWARDS BEHIND', 'BABYMONSTER', 'normal', 1, 16.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 16.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 17, 29, '안녕하세요 너무 떨려요', '떨려요', '떨리다', 'I am nervous');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GttvatKV014', 'BABYMONSTER - ''HOT SAUCE'' MUSIC SHOW BEHIND', 'BABYMONSTER', 'normal', 2, 18.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 18.714285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 28, '안녕하십니까 여기는 인기 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('yHfbPFIfglc', 'BAEMON HOUSE Teaser', 'BABYMONSTER', 'normal', 3, 19.362068965517242, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 19.362068965517242, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 1, 30, '니요 아니요 편의점 오셨나 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('wBHKLsujSNA', 'BABYMONSTER ‘HOT SAUCE’ 응원법🔥', 'BABYMONSTER', 'normal', 4, 19.362068965517242, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 19.362068965517242, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 29, '오늘은 저희가 핫소스를 더 신나', '신나', '신나다', 'I am excited');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('cwlh2mo45tg', 'BABYMONSTER - ‘HOT SAUCE’ M/V MAKING FILM', 'BABYMONSTER', 'normal', 5, 20.42857142857143, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 20.42857142857143, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 28, '게 한 건 처음이야 가지고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('c5aBG9Warls', 'BAEMON HOUSE EP.7', 'BABYMONSTER', 'normal', 6, 22.44736842105263, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 22.44736842105263, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10, 29, '고양이 혹시 숙소 주인 이신가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('WwCU6xujDcY', 'BABYMONSTER - ‘WE GO UP’ M/V MAKING FILM', 'BABYMONSTER', 'normal', 7, 23.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 23.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '비를 찍는장면 생각 다 못 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hWxqlDg5nmM', 'CAMCORDOORㅣJAEHYUN’s M COUNTDOWN MC Graduation - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 1, 8.333333333333332, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 8.333333333333332, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '즐거웠다 보내 줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('G7kmXun8uvk', 'What feelings of love and fight does BND express?💜 | ‘Count To Love’ Recording Behind - BOYNEXTDOOR', 'BOYNEXTDOOR', 'normal', 2, 18.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 18.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 10, '남자 시체 옷이 없어요', '없어요', '없다', 'There is not / I don''t have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ajc_SAy1dC4', 'BOYNEXTDOOR (보이넥스트도어) 2026 SEASON''S GREETINGS SPOT', 'BOYNEXTDOOR', 'normal', 3, 18.517241379310345, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 18.517241379310345, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 29, '감정의 만족도 1위. 너도 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('CBeSDx4853E', 'WHAT?DOOR! SPIN-OFF | TEASER | BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 4, 18.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 18.714285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2, 30, '스로를 참가하셨습니다. 또 뭐야', '뭐야', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('dNYXxVC5cpA', 'BOYNEXTDOOR (보이넥스트도어) GLOBAL OFFICIAL FANCLUB ONEDOOR MEMBERSHIP RENEWAL', 'BOYNEXTDOOR', 'normal', 5, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '키워드를 힌트 한번 드려 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('s-fmkALAF6s', 'Snacks, Natto, and More(?) | LEEHAN & WOONHAK ’s Japanese Convenience Store SNACK RUN!🍫', 'BOYNEXTDOOR', 'normal', 6, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '잠깐 편의점에 가서 자기가 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3GSt5u854ek', 'BOYNEXTDOOR 5th EP [The Action] Album Unboxing - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 7, 19.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 19.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '영화의 이제 저희도 이제 시작해', '시작해', '시작하다', 'Let''s start');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QZYLdtUFcus', 'BOYNEXTDOOR(보이넥스트도어) ‘Hollywood Action’ MV reaction', 'BOYNEXTDOOR', 'normal', 8, 19.57142857142857, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 19.57142857142857, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 28, '가도 시작을 한 해도 한번 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('4xs6DdLtLX4', '추구미 : 고양이🐈 도달가능미 : 먉😽 | 새해가 오는 건 너무 수동적인 듯 우리가 2026년에게 간다 | 병오년 추구미 발표회 | BOYNEXTDOOR', 'BOYNEXTDOOR', 'normal', 9, 20.20689655172414, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 20.20689655172414, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 29, '거트를 보시라고 심겠습니다 기뻐요', '기뻐요', '기쁘다', 'I am glad');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Inf4ZQY7rUM', 'WHAT?DOOR! SPIN-OFF | 1초의 빈틈 | EP.2 - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 10, 21.227272727272727, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 21.227272727272727, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 5, 27, '까 뭐가 있더라고 아 이게 뭐야', '뭐야', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('zGZ9N1DfkPo', 'WHAT?DOOR! SPIN-OFF | 인생역전 | EP.3 - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 11, 21.451612903225808, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 21.451612903225808, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '겠더라고 아니 리우가 진짜 어려웠어요', '어려웠어요', '어렵다', 'It was difficult');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('x0_6zILSMvo', '재미있어 보이넥4 | 운학이에게 빠진 게 죄는 아니잖아 (feat. 룸메 정하기) | EP.2 - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 12, 22.18181818181818, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 22.18181818181818, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 22, '날이다 걱정했던만큼 햇빛이 그렇지', '그렇지', '', 'Right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GR1h-dMDYco', 'Taking photos with bias | BBNEXDO POP-UP Photo Booth Behind', 'BOYNEXTDOOR', 'normal', 13, 24.796296296296298, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 24.796296296296298, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 27, '찍어 봤는데 이렇게 나오네 뭐야?', '뭐야?', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('rpoMDaxSkxQ', 'BEHINDOOR | EP.59 | ‘Hollywood Action’ MV & Trailer Shoot Sketch - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 14, 26.451612903225808, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 26.451612903225808, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '저 뒤에 그 뭐니 있는데 가고 싶어요', '가고 싶어요', '', 'I want to go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PwgIm8xvoOE', '소문난 탱글즈', 'TWS', 'normal', 1, 9.574074074074073, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 9.574074074074073, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 27, '난 준비 됐어 미안해', '미안해', '미안하다', 'Sorry');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7f4xPa1Wq6w', 'TWS (투어스) ‘Head Shoulders Knees Toes’ Recording Behind', 'TWS', 'normal', 2, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '려 쵸파맨 준비해서 널 왜 뭐야', '뭐야', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vdmunoBhUS0', 'Locker No.42 | EP.2 어제도 오늘도 준비됐어 난 | TWS (투어스)', 'TWS', 'normal', 3, 19.796296296296298, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 19.796296296296298, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 27, '니다. 예쁜 느낌 다시 해 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('w6VGRH7mqMk', '면접이 원래 다 이런가요? | OVERDRIVE LICENSE 모의 면접 | TWS (투어스)', 'TWS', 'normal', 4, 19.806451612903224, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 19.806451612903224, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '명해야 되지 어 엄마 아빠 미안해', '미안해', '미안하다', 'Sorry');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LkbRrm1q9P8', 'TWS TOURS in JEJU | EP.4', 'TWS', 'normal', 5, 22.57142857142857, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 22.57142857142857, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9, 30, '안 돼 멤버가 진짜 진짜 고마워요', '고마워요', '고맙다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('4n7hb8X2NP0', 'TWS TOURS in JEJU | EP.2', 'TWS', 'normal', 6, 23.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 23.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 11, 28, '준비되어 있는 상황인데 아 뭐야', '뭐야', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9nDvWCMDxRM', '[TWS:CLUB] Teaser', 'TWS', 'normal', 7, 24.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 24.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '면 안 했습니다. 샴푸 얘기할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vSvgO1oarCo', '[TWS:ERIES] TWS (투어스) ‘OVERDRIVE’ MV Shoot Sketch', 'TWS', 'normal', 8, 24.796296296296298, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 24.796296296296298, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 27, '락해 밖에 나갈 수 있으면 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('2UCyK6lyhsM', 'TWS TOURS in JEJU | EP.3', 'TWS', 'normal', 9, 26.595238095238095, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 26.595238095238095, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9, 30, '고 있었는데 뭔 소리요 아닌가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('wFxF3u5JGv8', 'TWS네 막내 경민이 수능 도시락 싸기 | 형들이 요리한 절대 기죽지 않을 최고의 도시락🍱', 'TWS', 'normal', 10, 27.666666666666668, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 27.666666666666668, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 12, '종이도시락 사진으로 마트에 왔어', '왔어', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Z4D53WtfceE', '[fl▶ylist] ‘신인류 - 날씨의 요정’ cover by 새롬', 'fromis_9', 'normal', 1, 13.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 13.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 1, 21, '질 수 없는 날이 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('yiSqJzEThCc', '프로미스나인(fromis_9)이 전하는 2024년 추석 인사 메시지💌', 'fromis_9', 'normal', 2, 18.161290322580644, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 18.161290322580644, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '뜨거운 여름을 보낸 덕에 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('s0s4zDfCjF4', '프로미스나인(fromis_9)이 전하는 2025년 수능 응원 메시지💌', 'fromis_9', 'normal', 3, 18.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 18.714285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2, 30, '생 해 주는 수험생여러분들 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('BfOdkA4E50o', '플카소 선발대회👩‍🎨🧑‍🎨', 'fromis_9', 'normal', 4, 19.362068965517242, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 19.362068965517242, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 29, '잖아 그런 거를 잘하나 봐 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Hc8U-RoMGvM', '[FM_1.24] DAZED 화보 촬영 비하인드', 'fromis_9', 'normal', 5, 19.57142857142857, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 19.57142857142857, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 28, '오늘 첫 촬영을 하고 빨리 먹자', '먹자', '먹다', 'Let''s eat');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('skCkIMRwAeo', '[9_log] 하영 Vlog - 단발하러 가는 날💇‍♀️ (edited by 하영)', 'fromis_9', 'normal', 6, 19.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 19.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 24, '잘 배우고 첫 단발을 도전해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('q4aqoMEXvc4', '[FM_1.24] ''롯데 레드 팬스티벌'' 비하인드', 'fromis_9', 'normal', 7, 19.806451612903224, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 19.806451612903224, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '서 기분이 좋아서 지금까지 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('B2dYN_UKVNk', '[9_log] 하영 Vlog - 홋카이도⛄️ 힐링 여행✈️', 'fromis_9', 'normal', 8, 20.923076923076923, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 20.923076923076923, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 26, '시작 일본 가는 거 비밀로 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('U4aGtf6SjMQ', '[FM_1.24] ''Supersonic'' 활동기 비하인드 Part.1', 'fromis_9', 'normal', 9, 25.642857142857142, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 25.642857142857142, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 16, 30, '벽 7분 음악 방송을 하러 왔어', '왔어', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('yR5yzO_Y3as', 'ATEEZ(에이티즈) log_logbook#197', 'ATEEZ', 'normal', 1, 14.642857142857142, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 14.642857142857142, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8, 29, '조금 있다 빨리 너무 좋은데', '좋은데', '', 'It is good though');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('FwGBR6xR7bI', 'ATEEZ(에이티즈) log_logbook#199', 'ATEEZ', 'normal', 2, 17.72222222222222, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 17.72222222222222, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10, 19, '얼굴 얼굴이 얼굴 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('E6gWWCQ_Do4', 'ATEEZ(에이티즈) 산타를 찾아서', 'ATEEZ', 'normal', 3, 18.161290322580644, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 18.161290322580644, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '없다 아니라 통일 있는 걸 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8alWFP5tBjw', 'ATEEZ(에이티즈) 2025 크리스마스 메시지', 'ATEEZ', 'normal', 4, 18.161290322580644, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 18.161290322580644, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '가 찾아왔습니다. 반짝이네 신나', '신나', '신나다', 'I am excited');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('dHa_FqLnyOk', 'ATEEZ(에이티즈) 홍중''s Perfect Birthday Plan⏰', 'ATEEZ', 'normal', 5, 18.925925925925924, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 18.925925925925924, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4, 31, '함께 할지 고민이 되고는 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gNX0WUmST2A', 'ATEEZ(에이티즈) log_logbook#204', 'ATEEZ', 'normal', 6, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '카메라 보고 인사 아 오늘 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('MDu4ZIWHYGk', '[Special Clip] ATEEZ(에이티즈) 성화 ''로이킴 - 달리 표현할 수 없어요''', 'ATEEZ', 'normal', 7, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '속에 있는 거라 그저 안 편해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gQwebJ3RuZs', 'ATEEZ(에이티즈) 2026 새해 인사 (New Year''s Greetings for 2026)', 'ATEEZ', 'normal', 8, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, 'h0a 있으니까 함께 만들어가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5to_Vzgz8d0', 'ATEEZ(에이티즈) Goodbye 2025 티즈나잇', 'ATEEZ', 'normal', 9, 22.44736842105263, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 22.44736842105263, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8, 27, '성호 형 뭐 좀 시켜 줘 배고파', '배고파', '배고프다', 'I am hungry');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('AZMZFQLwI1c', 'ATEEZ(에이티즈) 성화 ''Skin'' Production Behind', 'ATEEZ', 'normal', 10, 23.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 23.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 5, 25, '떤데 오케이 아 아 좀 당황했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vUxlgo0XsRQ', 'ATEEZ(에이티즈) [TOWARDS THE LIGHT : WILL TO POWER] FINALE IN SEOUL PLAYCODE Preview', 'ATEEZ', 'normal', 11, 33.18181818181818, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 33.18181818181818, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 11, '티스트 보내도록 하겠습니다 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('I6AmDjuFNeo', '행복한 생일이 되길 바라며🪄 | IRENE''s B-Day🩷All Day Long', 'Red Velvet', 'normal', 1, 18.983870967741936, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 18.983870967741936, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '후 0시게 여러분들도 그거 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3JN0MvGWIbk', 'Joy’s summer playlist is calling 💞☀️ #JOY #조이 #LoveSplash! #JOY_LoveSplash! #RedVelvet #레드벨벳', 'Red Velvet', 'normal', 2, 19.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 19.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '뜻한 쉼터가 되기를 가사를 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LkWne3QQ1z8', 'Seulgi, Not Seulgi😎 #1 | Accidentally On Purpose vlog', 'Red Velvet', 'normal', 3, 19.362068965517242, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 19.362068965517242, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 1, 30, '하다가 첫 녹음 시작 안 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('i8tm-_ZktwI', 'JOY 조이 ''품 (Cuddle)'' Mood Film', 'Red Velvet', 'normal', 4, 20.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 20.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 1, 26, '음 본 사이에 병원을 믿게 됐다', '됐다', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vnenDyMdhB4', '벌써 끝나다니 아쉬워요🥲 | 레드벨벳 Red Velvet SMTOWN LIVE 2025 tour Behind The Scenes', 'Red Velvet', 'normal', 5, 21.537037037037038, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 21.537037037037038, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 27, '네가 약속 건데 괜찮아 뭐 먹었어요', '먹었어요', '먹다', 'I ate');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('b32h9TXyNg8', 'ReVeluv❤️ | Baby, Not Baby | SEULGI 슬기 ''Baby, Not Baby'' 응원법', 'Red Velvet', 'normal', 6, 24.57142857142857, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 24.57142857142857, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 28, '준비되셨나요 그러면 바로 시작해', '시작해', '시작하다', 'Let''s start');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LuuUfpoeyIo', '베러바이오 많이 사랑해 주시고 저도 사랑해 주세요💚 | BetterBio Behind', 'Red Velvet', 'normal', 7, 27.666666666666668, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 27.666666666666668, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18, 30, '안녕하세요 저는 지금 뵈러 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('n3cKMjLId-8', '❮BOSS RIIZE : SHANGHAI IMPOSSIBLE❯ 6회 예고🐉', 'RIIZE', 'normal', 1, 9.870967741935484, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 9.870967741935484, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '아 좋아요 너무 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YZiN4ssGmGw', '❮BOSS RIIZE❯ 달라도 너무 다른 RIIZE네🫶 ㅣ 💂극과 극 텐션의 또리와 앤토니🦕 #BOSSRIIZE #보스라이즈 #RIIZE #라이즈 #SMTOWNFriends', 'RIIZE', 'normal', 2, 11.516129032258064, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 11.516129032258064, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '차이나힐링 예쁘긴 하다. 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Mp6ZbPFJOO8', 'SHOTARO''s GRWM (w/WONBIN''s Dubbing)', 'RIIZE', 'normal', 3, 17.338709677419356, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 17.338709677419356, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '해야 때 보겠습니다. 내가 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('81QYAxvO3Ik', 'RIIZE ''Something’s in the Water'' (Official Audio)', 'RIIZE', 'normal', 4, 18.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 18.714285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 28, '깊게 가져간 신세 진 거 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-k-bb77geTo', 'Dubai Chewy Cookies Review', 'RIIZE', 'normal', 5, 19.362068965517242, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 19.362068965517242, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2, 31, '자주 사용하는 배달 앞에 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('dimOIMaAsxg', 'AAA 2025 | RISE & REALIZE EP.86', 'RIIZE', 'normal', 6, 19.362068965517242, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 19.362068965517242, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 29, '것 일정 끝나고 바꾸고 시작할게', '할게', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('cFSzAa5bU9g', '''Fame'' dance practice | pre-alize_05', 'RIIZE', 'normal', 7, 20.42857142857143, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 20.42857142857143, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 28, '지금 나가고 이게 기계는 모르겠어', '모르겠어', '모르다', 'I don''t know');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ZRihDThinJ4', '2025 MAMA AWARDS | RISE & REALIZE EP.85', 'RIIZE', 'normal', 8, 20.891304347826086, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 20.891304347826086, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 23, '좀 보이는 무대로 구성을 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pOFhWW65HLE', 'UNBOXING of RIIZE ‘Fame’ Album', 'RIIZE', 'normal', 9, 23.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 23.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '저 프레임을 봤는데 아주 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0Xug9pHJri4', '❮BOSS RIIZE❯ 🐈‍⬛원빈이랑 타로랑 게임하는 거 보고가쇼🦦 ㅣ 귀엽고 멋있고 웃기고 둘이서 다 해요❤️ #BOSSRIIZE #보스라이즈 #RIIZE #라이즈', 'RIIZE', 'normal', 10, 24.727272727272727, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 24.727272727272727, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 11, '이상한게 있는데 뭐야 뭐야', '뭐야', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Ac461YWctts', '브리즈 춥지? 나 안아🫂 | RIIZE 라이즈 ''Fame’ Premiere & 음악방송 대기실 비하인드', 'RIIZE', 'normal', 11, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2, 7, '일요일 어디 가요 인기 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('DsNnBkh55fc', 'SOHEE & SHOTARO''s SURPRIIZE B-DAY (DIY Ver.)', 'RIIZE', 'normal', 12, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 6, '를 했다 다 모이라고 형이 잠깐만', '잠깐만', '', 'Wait a moment');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('oRQmYIYG18k', '[ZB1_more] JI WOONG ‘1214°C’ Making Film 🎬. more', 'ZEROBASEONE', 'normal', 1, 14.147058823529411, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 14.147058823529411, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14, 31, '생일도 되게 맡기고 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8lXSeJcsQ9k', '''와르르 ♥'' Colde (콜드) Covered by ZEROBASEONE (제로베이스원) GUN WOOK | RECORDING RM 01.', 'ZEROBASEONE', 'normal', 2, 16.516129032258064, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 16.516129032258064, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '그래 나만 보면 너는 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5oo13MA-AGc', '[ZB1 CAM] 매튜 VLOG | 사이타마 콘서트 DAY OFF | 데이트 메이트 태래랑 아키하바라 & 시부야 쇼핑🛍️ | 무한 포켓몬 카드 뽑기❤️', 'ZEROBASEONE', 'normal', 3, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '께 아키하바라가 저는 부평 가자', '가자', '가다', 'Let''s go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QEbB7x9s4U0', '''스물다섯, 스물하나'' 자우림 Covered by ZEROBASEONE (제로베이스원) HAN BIN & GUN WOOK | RECORDING RM 01.', 'ZEROBASEONE', 'normal', 4, 19.796296296296298, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 19.796296296296298, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 27, '지금처럼 사무치게 날지 못 했어', '했어', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('TEwPZnyWYAU', '[ZBTVing] 미담 폭로전 🤣 진실 혹은 거짓 송년회 | 2025 연말파티 #2 | ZBTVing 외전 | ZEROBASEONE', 'ZEROBASEONE', 'normal', 5, 20.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 20.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '말 파티 하지 않아요 너무 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('UjubjCx2ZM4', '[ZE_pisode] ZEROBASEONE (제로베이스원) 2025 WORLD TOUR [𝗛𝗘𝗥𝗘&𝗡𝗢𝗪] IN SINGAPORE Behind', 'ZEROBASEONE', 'normal', 6, 21.051724137931032, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 21.051724137931032, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 29, '다가 영상 친구 맞지 기어 모르겠어', '모르겠어', '모르다', 'I don''t know');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('q3DSEfNfTcs', '[ZE_pisode] ZEROBASEONE (제로베이스원) HAO FILA FUSION Shooting Behind PART.3', 'ZEROBASEONE', 'normal', 7, 21.595238095238095, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 21.595238095238095, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 21, '지 하니까 함께해서 너무 급해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_p52QeiOzxU', '[ZB1_more] 하오의 뷰티박스 ASMR 🎬. more', 'ZEROBASEONE', 'normal', 8, 26.421052631578945, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 26.421052631578945, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 3, 22, '30분 됐어요. 아 그러면 완전', '완전', '', 'Totally!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('kdAkSdHdMFw', 'xikers(싸이커스) - ‘SUPERPOWER (Peak)’ Dance Practice Behind', 'xikers', 'normal', 1, 8.333333333333332, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 8.333333333333332, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '맞아서 에너지 졸려', '졸려', '졸리다', 'I am sleepy');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('qLybYq1W7h8', 'DREAM CONCERT Abu Dhabi 2025 BEHIND | xikers(싸이커스) 인싸이커스 #119', 'xikers', 'normal', 2, 10.693548387096774, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 10.693548387096774, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '주미영 있죠 구미 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('U4r0daBObZc', 'Filming Support : xikers JUNMIN | xikers Wa-xx #97', 'xikers', 'normal', 3, 10.693548387096774, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 10.693548387096774, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '지켰나 치킨지도 모르겠어', '모르겠어', '모르다', 'I don''t know');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('fLdRwSy0U6I', 'xikers(싸이커스) 2025 The Golden Bell Challenge🔔 | HYUNWOO Special', 'xikers', 'normal', 4, 18.161290322580644, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 18.161290322580644, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '오늘은 이제 제가 굉장히 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('a9z_nmjcTD0', 'xikers(싸이커스) 2025 크리스마스 메시지', 'xikers', 'normal', 5, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '크리스마스가 되니까 오래 어디야', '어디야', '', 'Where is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Dg_Mvlsix3U', 'xikers(싸이커스) - What’s that X-pocket?! #1', 'xikers', 'normal', 6, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '에서부터 진행되는 컨텐츠가 됐다', '됐다', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('rFk06wDkqC8', 'Vacation Vlog with friends🐶🎳 | In Daegu with Teddy, Bowling, Board Game | xikers SEEUN Daily x_SEEUN', 'xikers', 'normal', 7, 20.583333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 20.583333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 7, 31, '니다. 이제 슬슬 출발해서 갈게요', '갈게요', '가다', 'I will go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('l-GGYqMtC_k', 'Family Trip to Hongcheon 🐶 | Kong&Chocho, Hongcheon, Billiards, Pasta | xikers(싸이커스) Daily x_JUNMIN', 'xikers', 'normal', 8, 21.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 21.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 24, '족 여행을 오랜만에 가기로 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('a3DT81BbxOY', 'xikers(싸이커스) [HOUSE OF TRICKY : WRECKING THE HOUSE] | SUPERPOWER LAB🔬', 'xikers', 'normal', 9, 25.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 25.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 27, '러 왔는데 한번 해 보도록 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-kR4TsG0cOs', 'xikers(싸이커스) - ‘ICONIC’ Performance Video Making Film', 'xikers', 'normal', 10, 26.576923076923077, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 26.576923076923077, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9, 22, '들어 들고 처음에이 다리를 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0nBGCaydqKo', '2025 AAA & ACON BEHIND | xikers(싸이커스) 인싸이커스 #121', 'xikers', 'normal', 11, 29.125, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 29.125, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 16, '가리는데 이렇게 오래 걸려 뭐야', '뭐야', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('l-GGYqMtC_k', 'Family Trip to Hongcheon 🐶 | Kong&Chocho, Hongcheon, Billiards, Pasta | xikers(싸이커스) Daily x_JUNMIN', 'xikers', 'normal', 12, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 24, 31, '리긴 하지만 이제 어제로서 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('m9gsQfCBQPI', '[KI-OFF] KLIP-#44 | 여러분의 청춘을 키오프와 함께!', 'KISS OF LIFE', 'normal', 1, 8.225806451612904, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 8.225806451612904, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '심심한 일로 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('DGoGbfT5Ye0', '[KI-OFF] 갸루 언니들의 Lucky 빔✨ 맞고 Lucky 받아가세요  (๑ - ̫ • ) ☆ | ''Lucky (Korean Ver.)'' 음악 방송 Behind', 'KISS OF LIFE', 'normal', 2, 18.517241379310345, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 18.517241379310345, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 29, '네가 엠씨를 하러 갑니다 하자', '하자', '하다', 'Let''s do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('OIE7x6dia0Y', '[KI-OFF] KLIP-#48 | (≽^•˕•^≼) 띠냥이의 ''Classy Club'' 촬영 Behind', 'KISS OF LIFE', 'normal', 3, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '에서부터 시작해서 이제 들어왔어', '왔어', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('IALXHYIjFuM', '[KI-OFF] KIOF가 대기실에서 하루를 보내는 방법ꉂ(˶ᵔꇴᵔ˶) | 버추얼 라이브 페스티벌 Behind', 'KISS OF LIFE', 'normal', 4, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '아 이렇게 줘서 심장이 안 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YGdX260eCgA', '머거보고 시퍼서.. | 하늘이가 만들어 본 애니메이션 음식  | 사심행 : Station HANEUL🚉', 'KISS OF LIFE', 'normal', 5, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '오에 잖아요 거기에 영화를 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('MZXdbnM8KZA', '[KI-OFF] 키씨 나랑 게임하러 갈래?🎮 | Japan Debut Tour [Lucky Day] VCR 촬영 Behind', 'KISS OF LIFE', 'normal', 6, 19.153846153846153, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 19.153846153846153, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 26, '임 방에 갑니다. 오락실에 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('24WDmWCROxA', '[KI-OFF] LuckyLucky하다 LuckyLucky한🍀 | ''Lucky'' Recording Behind', 'KISS OF LIFE', 'normal', 7, 19.57142857142857, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 19.57142857142857, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 28, '은 1분 반 럭키라는 곡을 왜요', '왜요', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XhZ40pXHBBw', 'KISS OF LIFE (키스오브라이프) ''Lucky'' 응원법 (Fanchants Guide)', 'KISS OF LIFE', 'normal', 8, 20.20689655172414, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 20.20689655172414, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 29, '다 잘 할 수 있죠 이번에 쉬워요', '쉬워요', '쉽다', 'It is easy');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('TnV57dAvIcQ', 'What Happened in Laip-ri, Obu-myeon, Gwisu-eup👒 | KISSY Village Ep.1 | KIOFriday', 'KISS OF LIFE', 'normal', 9, 20.629032258064516, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 20.629032258064516, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '니다. 이산이자 넣었습니다 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('h2usY942-7c', '[KI-OFF] 키씨 마음에 하트 투척!💥 | "Sudden Attack" 촬영 Behind', 'KISS OF LIFE', 'normal', 10, 21.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 21.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '벌써 다 끝난 거야 멀티큐 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('T_6GZyWZZiE', '[KI-OFF] 부르고 부르고 또 부르는  | "TOKYO MISSION START" 수록곡 Recording Behind', 'KISS OF LIFE', 'normal', 11, 21.82608695652174, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 21.82608695652174, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 23, '키 일본어 녹음하러 왔어요 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-5iR5n8M2pI', '팅커벨의 ASMR🧚 | 메이크업 도구, 비누, 디저트 | 사심행 : Station BELLE🚉', 'KISS OF LIFE', 'normal', 12, 22.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 22.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 11, 31, '너무 너무 너무 너무 너무 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vK8mgEUWH7s', 'KISS OF LIFE | 2026 College Scholastic Ability Test Support Message', 'KISS OF LIFE', 'normal', 13, 23.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 23.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '얼마 안 남았다고 들었는데 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('O85YOLnTqmY', '[KI-OFF] 緊張したけど, でも! We did it great🍀 | 긴장했지만 역시나 잘했죠?  | "TOKYO MISSION START" 일본 프로모션 활동 Behind', 'KISS OF LIFE', 'normal', 14, 24.806451612903224, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 24.806451612903224, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '데 돌렸는데도 12시까지 잘했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XurmdEajYi0', '오케이! 진짜 빠르게 갈게😎 | 도전! ''BUBBLE GUM'' 한 호흡 챌린지🌬️', 'Kep1er', 'normal', 1, 12.338709677419356, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 12.338709677419356, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '이거 안 된대 안녕하세요 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('oeAKiuHONAU', 'Memories of SEOUL – 2025 Kep1er CONCERT TOUR [Into The Orbit : Kep1asia]', 'Kep1er', 'normal', 2, 14.147058823529411, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 14.147058823529411, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 17, '이거 안 했어 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('h5foYkuRpkQ', 'ただいま、福岡！ | 히카루 VLOG | Kep1og 케플로그', 'Kep1er', 'normal', 3, 18.055555555555557, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 18.055555555555557, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 27, '갑니다. 3가 어디가 안 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('mddfVto-EK8', '월급은 안 주고 있어요☺🔥 | Don’t Be Dumb! EP.01', 'Kep1er', 'normal', 4, 18.161290322580644, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 18.161290322580644, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '대표님인가 사장님 이게 나와요', '와요', '오다', 'I come');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xQNDhPUFd1k', '김채현 ‘넌 날 잊지 못할거야’ Recording Behind | Kep1us 케플러스', 'Kep1er', 'normal', 5, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '에 달 거야. 녹음을 하러 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('EVbQ10lxsHk', '이 GUM은 이제 제 겁니다😉🍓💕 | BUBBLE GUM TALK💬🫧', 'Kep1er', 'normal', 6, 19.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 19.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '데 뭐 어찌 궁금하다 이거 뭐야', '뭐야', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('zmLtnqjIcRY', '''BUBBLE GUM'' POP-UP STORE Behind | Kep1us 케플러스', 'Kep1er', 'normal', 7, 20.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 20.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '꼭 하루 빠빠빠빠빠 건물도 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('dBE7asHA9T8', 'KCON LA 2025 Behind | Kep1us 케플러스', 'Kep1er', 'normal', 8, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 7, 14, '티스트 수 있기 때문에 도착하자', '하자', '하다', 'Let''s do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5-MnOdMvG1w', 'ㅇㅏ니! 근데 미야오 데이트 볼래?🤔 | A date with MEOVV🐈‍⬛🐾 | vievv by MEOVV', 'MEOVV', 'normal', 1, 8.225806451612904, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 8.225806451612904, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '아니, 아니 아니 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('IM5E6hs3KiA', 'INSIDE MEOVV | 2025 FASHION WEEK BEHIND', 'MEOVV', 'normal', 2, 11.217391304347826, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 11.217391304347826, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8, 31, '밀라노 오늘 느낌 완전', '완전', '', 'Totally!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7quW17Yr9UY', '시골냥이로 컨셉 폭싹 바꿨수다🥬🐈 | MEOVV in countryside | EP.4 | CATCH MEOVV SEASON 2', 'MEOVV', 'normal', 3, 11.516129032258064, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 11.516129032258064, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '우리 20 바꼈다 신발 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0Noobo05AyI', 'INSIDE MEOVV | THE 1st EP [MY EYES OPEN VVIDE] TAIPEI & HONG KONG FAN SIGN EVENT BEHIND', 'MEOVV', 'normal', 4, 12.338709677419356, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 12.338709677419356, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '안녕하세요 오늘 공항에 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Hy329xs1IhU', '[LET’S MEOVV!] 미야오, 데뷔 직전으로 돌아간다면? 🐈‍⬛ | MEOVV’s 1st Anniversary Interview', 'MEOVV', 'normal', 5, 17.338709677419356, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 17.338709677419356, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '현석이 거 같아요. 이건 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-uzc_eYR4A0', 'MEOVV(미야오) - ‘BURNING UP’ 응원법 (FAN CHANT)', 'MEOVV', 'normal', 6, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '미안합니다 되었습니다 함께 신나', '신나', '신나다', 'I am excited');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ZlVHxxgj5CE', '[LET’S MEOVV!] 미야오의 타임캡슐🥚 To. MEOVV & PAWMPAWM 💌 | MEOVV''s 1st Anniversary', 'MEOVV', 'normal', 7, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '그리고 나 혼자 쓰는 거는 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('AvyDuJvXIUg', 'INSIDE MEOVV | THE FACT MUSIC AWARDS 2025 BEHIND', 'MEOVV', 'normal', 8, 20.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 20.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '있어. 근데 내일은 나도 모르겠어요', '모르겠어요', '모르다', 'I don''t know');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_yWNZe4LGOM', '[LET’S MEOVV!] 다 같이 즐겨요❤️ Highlight Medley 🎤🎵 | MEOVV''s 1st Anniversary', 'MEOVV', 'normal', 9, 20.583333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 20.583333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 24, '여러분들께 보여드렸던 가장 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vR4QLHHs3mw', '댓글 예쁘게 써라? 😼 #Shorts', 'MEOVV', 'normal', 10, 21.595238095238095, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 21.595238095238095, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10, 31, '이거 완전 노란색인데 음악 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('dAF-H7gei14', 'INSIDE MEOVV | THE 1st EP [MY EYES OPEN VVIDE] GUANGZHOU & CHONGQING FAN SIGN EVENT BEHIND', 'MEOVV', 'normal', 11, 21.82608695652174, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 21.82608695652174, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6, 29, '희는 지금 펜타 하러 가고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vR4QLHHs3mw', '댓글 예쁘게 써라? 😼 #Shorts', 'MEOVV', 'normal', 12, 34.75, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 34.75, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 8, '안녕 우리 막내 올라가 소개할게', '할게', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('52v1y6jiwIY', 'REACTION to ❄️''白色定格 (Eternal White)''❄️ MV (+Secret Mission🤫) | WayV 威神V Reaction', 'WayV', 'normal', 1, 13.722222222222221, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 13.722222222222221, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 18, '저희가 저희가 저희가 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hryYssgBYBo', 'WayV ''BIG BANDS (Korean Ver.)'' Cheering Guide | Yea we hit ya like Big bands 🥁', 'WayV', 'normal', 2, 18.161290322580644, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 18.161290322580644, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '열심히 연습해서 같이 물어봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('UzGK58P-2Bk', '🧑‍🍳This is our first time cooking🍝 | TEN & YANGYANG’s Vacation Ep.4', 'WayV', 'normal', 3, 18.925925925925924, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 18.925925925925924, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 3, 30, '할머니는 선생님은 그리고 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('A7b9QG7lNT0', '☺️💪今日も頑張ります! | SMTOWN LIVE 2025 in TOKYO Behind the Scenes', 'WayV', 'normal', 4, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '안녕하세요 형님이다 다 먹었어요', '먹었어요', '먹다', 'I ate');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ZJi5Ep1V1sk', 'WayV 威神V ''BIG BANDS'' Mood Film & Jacket Behind the Scenes', 'WayV', 'normal', 5, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '앞으로 가려버렸다. 지금 멋있어요', '멋있어요', '멋있다', 'It is cool');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('dl3p4LYFqp4', '✈️This is what traveling''s like🧳 | TEN & YANGYANG’s Vacation Ep.1', 'WayV', 'normal', 6, 20.03846153846154, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 20.03846153846154, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 1, 27, '같이 간 소감 나는 1시간 잤어', '잤어', '자다', 'I slept');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('SmFKf7DXYkc', 'WayV 威神V ''Ice Tea'' Recording Behind the Scenes', 'WayV', 'normal', 7, 20.42857142857143, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 20.42857142857143, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 28, '있나 와 하 하 하 하 응 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hFEDg7itej0', '[WayV Road] 🛍️A chill day in NANJING(feat.TEN🐱) | YOLO Ep.5', 'WayV', 'normal', 8, 20.891304347826086, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 20.891304347826086, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 7, 30, '은 상추 엔아이건축 원거리 좋지', '좋지', '좋다', 'It is good, right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('duZ3Bw_Uvk0', 'Concert Setlist Meeting | 2025 WayV Concert Tour [NO Way OUT] Behind Ep.1', 'WayV', 'normal', 9, 23.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 23.714285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 28, '터 형부 했으면 좋겠어요. 완전', '완전', '', 'Totally!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('n9RPEnotTyk', 'A pencil and paper? (˙σｰ˙)  | ☃️ILLIT Holiday Photo Contest (feat. Treasure hunt)☃️ | ILLIT (아일릿)', 'ILLIT', 'normal', 1, 10.285714285714285, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 10.285714285714285, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 28, '오늘 자기가 여기에 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('kH3-xYGkE28', 'We shine brighter when we’re together! l ILLIT (아일릿) “GLITTER DAY ENCORE” D-day Sketch', 'ILLIT', 'normal', 2, 12.338709677419356, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 12.338709677419356, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '수가 있어서 지금 배터리 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3Sgn2P9CeGA', 'ILLIT is NOT CUTE but COOL instead ✨😎 | ILLIT (아일릿) ‘MMA2025’ Behind Sketch', 'ILLIT', 'normal', 3, 15.230769230769232, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 15.230769230769232, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 13, '안녕하세요 먹고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('qwtxe6D-VqY', 'FIMLIT Special 🎁 Year-end Gift Exchange | ILLIT (아일릿)', 'ILLIT', 'normal', 4, 18.161290322580644, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 18.161290322580644, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '제가 좋아하는 브랜드향수 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0v-SGVRWS04', 'ILLIT''s 2026 Suneung Support Message', 'ILLIT', 'normal', 5, 18.333333333333332, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 18.333333333333332, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '험 코앞으로 다가왔습니다. 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('DiAlJkQeuP0', 'ILLIT (아일릿) 2025 Chuseok Greetings 🧡', 'ILLIT', 'normal', 6, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '즐거운 시간 잘 보내고 계신가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('bjYuX7-dAI4', 'Mission! Maintain a NOT CUTE Attitude😎 | "NOT CUTE ANYMORE" INTERVIEW FILM | ILLIT (아일릿)', 'ILLIT', 'normal', 7, 19.362068965517242, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 19.362068965517242, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 29, '지 마라 앞으로도 계속 해 줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('AnK5bUXQ0ac', 'Secret Mission💌 l Chuseok🍂Chores Contest l Immersion Alert l ILLIT (아일릿) [Battle of ILL Sisters]', 'ILLIT', 'normal', 8, 19.362068965517242, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 19.362068965517242, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 29, '맛있겠지 빠르게 왔지롱 잘했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('6vkcGnfqXLs', 'ILLIT (아일릿) ''NOT CUTE ANYMORE'' Music Show Promotions Sketch', 'ILLIT', 'normal', 9, 20.42857142857143, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 20.42857142857143, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 28, '알고 있습니다 그리고 어제 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1LdSXItiQSg', 'ILLIT''s 2026 New Year Greeting', 'ILLIT', 'normal', 10, 20.629032258064516, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 20.629032258064516, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '6년에 튼튼하게 시작할 수 있었어요', '있었어요', '있다', 'There was / I had');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3WFHaaZhvck', 'The Long and Bumpy Road to NOT CUTE 🎤 | ILLIT (아일릿) “NOT CUTE ANYMORE” Recording Sketch', 'ILLIT', 'normal', 11, 21.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 21.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 24, '다 나왔다 여기 저기 사격 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('98f9z_qhqwE', 'ILLIT is happy thanks to GLLIT💜 l GLITTER DAY IN JAPAN Behind the Scenes l ILLIT (아일릿) [BEHIND-IT]', 'ILLIT', 'normal', 12, 23.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 23.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '비행기를 타고 왔는데요 도착하자', '하자', '하다', 'Let''s do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1qfs77--B68', 'ILLIT''s Perfect Night', 'ILLIT', 'normal', 13, 25.526315789473685, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 25.526315789473685, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 19, '설레고 빨리 와서 현장에 가고 싶어요', '가고 싶어요', '', 'I want to go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('qbSofYOKwwE', '[Behind the Scenes] Finally Here, Ballet-zna🩰 Let’s Fill 2026 Together💖 |  2026 SEASON’S GREETINGS', 'IZNA', 'normal', 1, 16.516129032258064, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 16.516129032258064, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '있어요 하려면 하러 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gFdHXqlvUbE', '[Behind the Scenes] Final Check!🔥 izna’s Energy Up Thinking of naya💖 | ‘Mamma Mia’ Dance Practice', 'IZNA', 'normal', 2, 18.363636363636363, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 18.363636363636363, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 22, '두 번째 간다고 하는데 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('wjYIS2NhtGI', '[izna''s Room] Grandma, we''re here🏡 A Chaotic Chuseok with the izna Family🌕 | Chuseok Special TEASER', 'IZNA', 'normal', 3, 19.796296296296298, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 19.796296296296298, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 27, '반대로 언니 말 잘 들어라 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('j6J7tqj6XVA', 'Not Just Pretty Diary #BANGJEEMIN #방지민', 'IZNA', 'normal', 4, 19.806451612903224, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 19.806451612903224, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '나요 이거 찍는 나랑 커플 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('v3zLfwPsuQY', '“Are you playing with me!?”❤️‍🩹A Soul Zone of friendship, suspicion & twists🏡 | ''SOULMATE'' Teaser', 'IZNA', 'normal', 5, 20.833333333333332, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 20.833333333333332, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '일단 전화 해야 되고 저기 귀여워요', '귀여워요', '귀엽다', 'It is cute');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('qfWmnMUJzp0', 'The Final Choice❗️ After Crossed Paths, Who Is the True Soulmate?👭🔍 | ‘SOULMATE’ #2', 'IZNA', 'normal', 6, 23.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 23.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '운 거 같으면 치는데 같이 하자', '하자', '하다', 'Let''s do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vcztVagfvec', '[Behind the Scenes] Hidden Talent!💥 BangCheese🍞🧀 Aims for naya’s Heart💘 | 2025 ISAC Practice', 'IZNA', 'normal', 7, 24.57142857142857, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 24.57142857142857, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 28, '하면 되는 거 맞지 이렇게 됐어', '됐어', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-SmKQwHGTXc', '자 다음은 다 같이 안아~ (つ｡˃ ᵕ ˂)つ ⸝♡ | Hearts2Hearts 하츠투하츠 2025 KGMA BH2ND', 'Hearts2Hearts', 'normal', 1, 10.738095238095237, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 10.738095238095237, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10, 31, '나는 꽃을 밥이 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('qhnA7u2ezFs', '절대로 뒤를 돌아봐서는 안 됩니다🩸 비명과 비겁이 난무하는 공포 체험😱 ✦ʚ Hearts Chase EP.13 ɞ✦', 'Hearts2Hearts', 'normal', 2, 17.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 17.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 20, 28, '잘 먹겠습니다 대박', '대박', '', 'Amazing!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('E4eggaqtjr8', '[vlog] NUNGGUIN YAAA!! ٩(ˊᗜˋ*)و 발리 연휴 브이로그🌴 | 인도네시아 음식 먹방 ・ 발리 해변 ・ 팔라벨라 첫 만남(?) | I’M A BALI GIRL𓂃𓇼', 'Hearts2Hearts', 'normal', 3, 18.333333333333332, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 18.333333333333332, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '거예요 근데 이거 아니야 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_xqnBLjzdzQ', 'Hearts2Hearts 하츠투하츠 ‘FOCUS’ Dance Practice BH2ND', 'Hearts2Hearts', 'normal', 4, 18.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 18.714285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 28, '앞에 있잖아 거짓말 갑자기 왜?', '왜?', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('41tLl4MNnhk', '오늘 양갈래도 완전 귀엽게 했어요⋆౨ৎ˚⟡˖ ࣪  | Hearts2Hearts 하츠투하츠 2025 THE FACT MUSIC AWARDS in MACAO BH2ND', 'Hearts2Hearts', 'normal', 5, 19.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 19.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '기 너무 습해서 카메라가 일해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ey7ZzAmPbGw', '아니 그렇게 하면 더 울어! (˚˃̣̣̥⌓˂̣̣̥ )づ♡ | Hearts2Hearts 하츠투하츠 LaLaLa Festival in Jakarta BH2ND', 'Hearts2Hearts', 'normal', 6, 19.806451612903224, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 19.806451612903224, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '을 즐겨 오창에서 10시간 잤어요', '잤어요', '자다', 'I slept');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Wvd4GTugNtE', '나도 저런 양 갈래 해보고 싶다 (• ᴖ •｡ ) | 2025 MUSIC BANK GLOBAL FESTIVAL IN JAPAN BH2ND', 'Hearts2Hearts', 'normal', 7, 20.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 20.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '또 하게 되어서 너무 너무 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Nc6vB6u49go', '하츄 낯가리지 말고 Come on (⸝⸝• ᴗ •⸝⸝) | Hearts2Hearts 하츠투하츠 ‘Pretty Please’ Music Show BH2ND', 'Hearts2Hearts', 'normal', 8, 20.629032258064516, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 20.629032258064516, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '다 방 아주 아주 귀엽고 만들었어요', '들었어요', '듣다', 'I listened');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('uxkJL3ZWjlw', '저희 숭숭이들이! 원숭이들에게 영상 편지 남겨보겠습니다 ⸜(｡˃ ᵕ ˂ )⸝♡  | Hearts2Hearts 하츠투하츠 Fan Sign Event in Japan BH2ND', 'Hearts2Hearts', 'normal', 9, 21.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 21.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 24, '왔어 너무 너무 너무 너무 설레요', '설레요', '설레다', 'I am thrilled');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('O130JxSAJcE', '[vlog] 🌊괌 가족여행 다녀왔지우🌊 | 스노클링 ・ 호텔 수영 ・ KMART 쇼핑 ・ 기념품 쇼핑 ・ 슈림프 먹방 | Berry Very Me🍓 in GUAM', 'Hearts2Hearts', 'normal', 10, 25.307692307692307, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 25.307692307692307, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14, 27, '방금 막 음악 좀 이따가 줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('JWfsMjcu8tY', '눈물: 흐를게💧 눈물 없이 볼 수 없는 진대 타임 ✦ʚ Hearts Chase EP.11 ɞ✦', 'Hearts2Hearts', 'normal', 11, 25.307692307692307, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 25.307692307692307, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18, 31, '있게 먹었습니다. 내가 준비했어', '했어', '하다', 'I did');
END $$;

