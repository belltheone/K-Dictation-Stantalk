-- Full Scan V7 Data


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1ZcB3M7tMTQ', '[EPISODE] 진 (Jin) ‘RUNSEOKJIN_EP.TOUR’ in U.S. & EUROPE - BTS (방탄소년단)', 'BTS', 'normal', 1, 21.666666666666668, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 21.666666666666668, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 17, 23, '여기서 이렇게 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Xenek9a_WKE', '진 (Jin) ‘Happy’ Special Stage Behind - BTS (방탄소년단)', 'BTS', 'normal', 2, 26.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 26.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 78, 84, '연락만 몇 번 해봤어요', '봤어요', '보다', 'I saw/watched');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('aegG5-ms4rc', '[지민의 아미로그] 그저 머글미 가득한 영상 l Jimin ‘FACE’ 앨범깡 • ASMR UNBOXING • 포카 • 탑꾸 • 데코덴 • 예절샷 - BTS (방탄소년단)', 'BTS', 'normal', 3, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 306, 311, '벌써 예쁘거든요? 예쁜데', '예쁜데', '', 'It is pretty though');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9oqUwz0UWFg', '[EPISODE] j-hope @ Dick Clark’s New Year''s Rockin'' Eve 2023 - BTS (방탄소년단)', 'BTS', 'normal', 4, 31.25, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 31.25, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 74, 82, '깜냥인가?''라는 생각부터 시작해', '시작해', '시작하다', 'Let''s start');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('wxrRW2aGxRU', '[EPISODE] 진 (Jin) @ 2024년 6월 13일의 석진, 날씨 맑음☀️ - BTS (방탄소년단)', 'BTS', 'normal', 5, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 97, 101, '♪ 네 빛이 되어 줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1ZcB3M7tMTQ', '[EPISODE] 진 (Jin) ‘RUNSEOKJIN_EP.TOUR’ in U.S. & EUROPE - BTS (방탄소년단)', 'BTS', 'normal', 6, 35.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 35.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 51, 56, '시차 적응 전혀 못 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('aWW2fQwIRvE', 'j-hope ''HOPE ON THE STREET'' Recording Behind', 'BTS', 'normal', 7, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 82, 86, '오늘은 여기까지, 피곤해', '피곤해', '피곤하다', 'I am tired');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0TARS2nsu-w', '[V VLOG] V-log in Tokyo', 'BTS', 'normal', 8, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 102, 107, '근데 나도 진짜 빨리 먹어요', '먹어요', '먹다', 'I eat');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VPRLfV57hZQ', '[EPISODE] SUGA | Agust D TOUR ‘D-DAY’ THE FINAL - BTS (방탄소년단)', 'BTS', 'normal', 9, 38.25, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 38.25, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 72, 80, '오늘 오신 분들 너무너무 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0hH9gsprag8', '[Episode] 진 (Jin) ''RUNSEOKJIN_EP.TOUR'' ENCORE - BTS (방탄소년단)', 'BTS', 'normal', 10, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 183, 187, '♪ 형, 형 나 좀 데려가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('uYDledeI33E', '[SUGA VLOG] D-DAY TOUR in Chicago', 'BTS', 'normal', 11, 41.642857142857146, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 41.642857142857146, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 73, 80, '다 보니까 뭘 즐길 여유가 없었어요', '없었어요', '없다', 'There was not');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('na1vAkq3bSA', '[EPISODE] SUGA | Agust D TOUR ''D-DAY'' in ASIA - BTS (방탄소년단)', 'BTS', 'normal', 12, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 307, 313, '건 라이브 세팅을 하는 게 좋지', '좋지', '좋다', 'It is good, right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('TVmawu479vY', '[VLOG] RM''s Trip in Europe', 'BTS', 'normal', 13, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 112, 115, '힘들어서 쉬고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('a5Z2WjMUuuk', '[SUGA VLOG] D-DAY TOUR in Phuket', 'BTS', 'normal', 14, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18, 21, '색감이 이렇게 나와요', '와요', '오다', 'I come');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('wxrRW2aGxRU', '[EPISODE] 진 (Jin) @ 2024년 6월 13일의 석진, 날씨 맑음☀️ - BTS (방탄소년단)', 'BTS', 'normal', 15, 42.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 42.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 148, 153, '내게 형, 형 나 좀 데려가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XFEz4dOE-YE', '진 (Jin) ''Don''t Say You Love Me @ Seongsu'' & ‘하이석진’ Behind - BTS (방탄소년단)', 'BTS', 'normal', 16, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 49, 53, '모니터 체크 한 번만 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Xenek9a_WKE', '진 (Jin) ‘Happy’ Special Stage Behind - BTS (방탄소년단)', 'BTS', 'normal', 17, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 64, 68, '이렇게 해서 마치도록 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('aegG5-ms4rc', '[지민의 아미로그] 그저 머글미 가득한 영상 l Jimin ‘FACE’ 앨범깡 • ASMR UNBOXING • 포카 • 탑꾸 • 데코덴 • 예절샷 - BTS (방탄소년단)', 'BTS', 'normal', 18, 46.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 46.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 282, 288, '이 다르게 2개로 꾸며보면 좋지', '좋지', '좋다', 'It is good, right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('aegG5-ms4rc', '[지민의 아미로그] 그저 머글미 가득한 영상 l Jimin ‘FACE’ 앨범깡 • ASMR UNBOXING • 포카 • 탑꾸 • 데코덴 • 예절샷 - BTS (방탄소년단)', 'BTS', 'normal', 19, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 291, 296, '버전으로 제가 해보고 싶긴 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('S1ZdFMz0RSw', '[EPISODE] BTS (방탄소년단) @ THE FACT MUSIC AWARDS', 'BTS', 'normal', 20, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 30, 35, ', 여러분 오른손 들고 들어갈게요', '갈게요', '가다', 'I will go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('uYDledeI33E', '[SUGA VLOG] D-DAY TOUR in Chicago', 'BTS', 'normal', 21, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 92, 97, '여기서 제일 추천하는 거 먹을게요', '먹을게요', '먹다', 'I will eat');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('adC8Tmjy1Go', '[EPISODE] j-hope @ Le Gala des Pièces Jaunes 2025 - BTS (방탄소년단)', 'BTS', 'normal', 22, 52.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 52.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 296, 300, '되면 ''Let''s go'' 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VPRLfV57hZQ', '[EPISODE] SUGA | Agust D TOUR ‘D-DAY’ THE FINAL - BTS (방탄소년단)', 'BTS', 'normal', 23, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 199, 203, '빨리 가서 빨리 회복해야 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('adC8Tmjy1Go', '[EPISODE] j-hope @ Le Gala des Pièces Jaunes 2025 - BTS (방탄소년단)', 'BTS', 'normal', 24, 55.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 55.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 285, 290, '전 하면 제가 여기로 빠져나갈게요', '갈게요', '가다', 'I will go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('G-hj7deXdZo', '[EPISODE] j-hope Tour ‘HOPE ON THE STAGE’ in SEOUL - BTS (방탄소년단)', 'BTS', 'normal', 25, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 271, 275, '려주시는 게 좋을 것 같긴 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('nPj_8rKOdrE', '진 (Jin) ''The Tonight Show Starring Jimmy Fallon'' Behind - BTS (방탄소년단)', 'BTS', 'normal', 26, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 121, 125, '물론이에요, 같이 해줘서 고마워요', '고마워요', '고맙다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('l1-00U3GIsI', '[EPISODE] SUGA | Agust D TOUR ''D-DAY'' in the USA - BTS (방탄소년단)', 'BTS', 'normal', 27, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 173, 177, '긴장되거나 이런 게 전혀 없어요', '없어요', '없다', 'There is not / I don''t have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-JXOep6LPK0', '지민 (Jimin) ‘MUSE’ Recording Behind', 'BTS', 'normal', 28, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 88, 92, '간 아쉬운데 한 번만 더 해볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('l1-00U3GIsI', '[EPISODE] SUGA | Agust D TOUR ''D-DAY'' in the USA - BTS (방탄소년단)', 'BTS', 'normal', 29, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 403, 407, '나 진짜 클릭 하나만 듣고 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('uYDledeI33E', '[SUGA VLOG] D-DAY TOUR in Chicago', 'BTS', 'normal', 30, 62.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 62.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 33, 37, '시카고 대체로 날씨가 되게 좋았어요', '좋았어요', '좋다', 'It was good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('OC-vrNs6K8w', '[About Jeans] 오늘을, 기록혠 1 ⊹ 파리의 오늘 | HYEIN vlog', 'NewJeans', 'normal', 1, 30.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 30.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 144, 148, '다른 꽃이 껴있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YhlFoAslBC4', '[Light Jeans] OLENS Behind💫 | NewJeans', 'NewJeans', 'normal', 2, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 217, 221, '- 어머, 어머! - 그렇지', '그렇지', '', 'Right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('u8319ZVFAx8', '[Making Jeans] NewJeans (뉴진스) ''Super Shy'' Recording Behind', 'NewJeans', 'normal', 3, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22, 26, '뒤에가 다 멘붕 와요', '와요', '오다', 'I come');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('SAbXCLI7DG8', '[Light Jeans] HANNI Armani beauty Behind 💋 | NewJeans', 'NewJeans', 'normal', 4, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 294, 298, '이런 거 처음 해봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('jzBa2WqkxvI', '[Light Jeans] Japan Music Show & Coke STUDIO LIVE 2024 Behind🪩 | NewJeans', 'NewJeans', 'normal', 5, 35.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 35.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4, 9, '저희 지금 도쿄에 와있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QSRbkcdNuwg', '[Light Jeans] STONEHENgE F/W Campaign Behind ❄️ | NewJeans', 'NewJeans', 'normal', 6, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 158, 162, '이제 유닛 찍고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GOgwYxOQ0xc', '[About Jeans] 미술관 나들이☀️ | NewJeans Vlog', 'NewJeans', 'normal', 7, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 39, 43, '진짜 너무 보고 싶어요', '보고 싶어요', '', 'I want to see / I miss');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('wJcTtHJhd2Q', '[Light Jeans] 2023 Weverse Con Festival Behind 🎈 | NewJeans', 'NewJeans', 'normal', 8, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10, 15, '저 지금 신발끈 묶고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GOgwYxOQ0xc', '[About Jeans] 미술관 나들이☀️ | NewJeans Vlog', 'NewJeans', 'normal', 9, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 20, 25, '저희 오늘은 미술관에 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xwUkRvwJ79E', '[Light Jeans] McDonald''s Behind | NewJeans', 'NewJeans', 'normal', 10, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 31, 36, '-맥도날드~ -마음에 들었어요', '들었어요', '듣다', 'I listened');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('aOzWJYJjvM0', '[Light Jeans] HANNI Gucci Horsebit Campaign Behind🤎 | NewJeans', 'NewJeans', 'normal', 11, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 246, 249, '그런 느낌이 들어요', '들어요', '듣다', 'I listen');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('SAbXCLI7DG8', '[Light Jeans] HANNI Armani beauty Behind 💋 | NewJeans', 'NewJeans', 'normal', 12, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 201, 204, '예쁘게 집어야 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QsJzosJzxRo', '[About Jeans] 재미로 하니🙃 EP.2 밀라노 가는 재미 | HANNI vlog', 'NewJeans', 'normal', 13, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 46, 49, '아래 반바지 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vMaBr2NdaVc', '[Light Jeans] DANIELLE YSL Beauty Behind 💄 | NewJeans', 'NewJeans', 'normal', 14, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 16, 20, '여기서 눈만 옆에 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('iVi4PgN3ndw', '[Light Jeans] NIKE Air Max Behind | NewJeans', 'NewJeans', 'normal', 15, 39.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 39.714285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 211, 218, '도 이렇게 큰 공에 올라가 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xwUkRvwJ79E', '[Light Jeans] McDonald''s Behind | NewJeans', 'NewJeans', 'normal', 16, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 7, 10, '저 자랑할 거 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('u8319ZVFAx8', '[Making Jeans] NewJeans (뉴진스) ''Super Shy'' Recording Behind', 'NewJeans', 'normal', 17, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 85, 91, '상태가 아니라는 게 너무 아쉬워요', '쉬워요', '쉽다', 'It is easy');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QsJzosJzxRo', '[About Jeans] 재미로 하니🙃 EP.2 밀라노 가는 재미 | HANNI vlog', 'NewJeans', 'normal', 18, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 35, 41, '옷을 거울에서 보여드리도록 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('KEDZ9z7tlCw', '[Light Jeans] KCON 2022 SAUDI ARABIA BehindㅣNewJeans', 'NewJeans', 'normal', 19, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 5, 11, '녕하세요 저 지금 연습실에 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0UQeLKExXx0', '[About Jeans] MINJI SCENE🎬 #1 졸업식 가요? | MINJI vlog', 'NewJeans', 'normal', 20, 47.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 47.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 77, 81, '''언니 잘 다녀와요~ 축하해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('KnnwBG1RzPc', '[About Jeans] MINJI SCENE🎬 #7 파리 가요? | MINJI vlog', 'NewJeans', 'normal', 21, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 87, 92, '지금 마지막 영화를 보고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('HDx16EP2OGU', '[Light Jeans] HYEIN Harper''s BAZAAR Behind 🍃 | NewJeans', 'NewJeans', 'normal', 22, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 227, 232, '로 많이 안 찍은 것 같긴 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GOgwYxOQ0xc', '[About Jeans] 미술관 나들이☀️ | NewJeans Vlog', 'NewJeans', 'normal', 23, 49.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 49.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 32, 38, '에 처음 와보는데 너무너무 설레요', '설레요', '설레다', 'I am thrilled');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('kIDFwr4WIns', '[Light Jeans] 랜덤 지목 댄스 Behind | NewJeans', 'NewJeans', 'normal', 24, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 47, 51, '-뭐라고 했어요, 뭐라고 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YBJk2dUzLiY', '[Light Jeans] ''Ditto'' & ''OMG'' Music Show Behind | NewJeans', 'NewJeans', 'normal', 25, 51.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 51.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 77, 83, '떤 별명을 지어줬는데 저 까먹었어요', '먹었어요', '먹다', 'I ate');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xwUkRvwJ79E', '[Light Jeans] McDonald''s Behind | NewJeans', 'NewJeans', 'normal', 26, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 118, 122, '-저는 맥크리스피 먹으러 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('wJcTtHJhd2Q', '[Light Jeans] 2023 Weverse Con Festival Behind 🎈 | NewJeans', 'NewJeans', 'normal', 27, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 68, 72, '그래서 그것만으로도 너무 신나요', '신나요', '신나다', 'I am excited');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('83kvhmsfGk4', '[Light Jeans] Shinhan SOL Travel Check Card Campaign Behind 💳 | NewJeans', 'NewJeans', 'normal', 28, 57.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 57.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 70, 73, '오늘 새로운 단어를 배웠어요', '배웠어요', '배우다', 'I learned');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('KnnwBG1RzPc', '[About Jeans] MINJI SCENE🎬 #7 파리 가요? | MINJI vlog', 'NewJeans', 'normal', 29, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 32, 36, '영화도 엄청 많이 다운받아 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xbUoOT4gXZg', '[About Jeans] 재미로 하니🙃 EP.1 LA 가는 재미 | HANNI vlog', 'NewJeans', 'normal', 30, 66.33333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 66.33333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 95, 98, '이따 비행기에서 먹으려고 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3W6ocxQe_Jg', '[IVE ON] JANGWONYOUNG X 다우니 BEHIND', 'IVE', 'normal', 1, 21.666666666666668, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 21.666666666666668, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 12, 18, '어머! 너무 귀여워요', '귀여워요', '귀엽다', 'It is cute');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VWOEzT7fzFg', '[IVE ON] GAEUL X LG트윈스 시구 BEHIND', 'IVE', 'normal', 2, 27.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 27.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 147, 152, '제 이름이 적혀있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Fv7L91UqtEY', '[IVE LOG] 우당탕탕💫 리즈의 브이로그 in 삿포로🌲❄', 'IVE', 'normal', 3, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 17, 21, '해주셔서 감사했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7W20_VLSoT8', '[IVE ON] JANGWONYOUNG 2024 AAA MC BEHIND', 'IVE', 'normal', 4, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 69, 73, '퍼레이드 다녀왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('BRFq6LHc0GU', '[IVE ON] JANGWONYOUNG X MALTO BEHIND', 'IVE', 'normal', 5, 32.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 32.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 57, 62, '전 원 없이 먹고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('rZPGoc307i0', '[IVE ON] 2025 THE FACT MUSIC AWARDS BEHIND', 'IVE', 'normal', 6, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 38, 42, '계란프라이가 있었어요', '있었어요', '있다', 'There was / I had');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('X71QQ_L9LC0', '[IVE ON] ''XOXZ'' 첫주 BEHIND', 'IVE', 'normal', 7, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25, 29, '키티랑 하트가 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('C9aHg7J101k', '[IVE LOG] 우리집 아기가요 어디가요? 인기가요! 아기MC의 돌잔치 ✍', 'IVE', 'normal', 8, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25, 29, '제 방에 다시 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('C9aHg7J101k', '[IVE LOG] 우리집 아기가요 어디가요? 인기가요! 아기MC의 돌잔치 ✍', 'IVE', 'normal', 9, 33.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 33.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 27, 33, '곧 있으면 이제 인기가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PZNAdBKK5SU', '[IVE ON] 상하이에서 만난 다이브💖✍️ (with.트립닷컴)｜상하이 팬사인회 BEHIND', 'IVE', 'normal', 10, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 87, 92, '추천 관광명소가 엄청 많아요', '많아요', '많다', 'There are many');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xOXqFgZLi1M', '[IVE ON] 2025 SBS 가요대전 Summer BEHIND', 'IVE', 'normal', 11, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 67, 73, '오늘은 ''2025 SBS 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hopYX3IyY9s', '[IVE ON] 2025 K-WORLD DREAM AWARDS BEHIND', 'IVE', 'normal', 12, 39.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 39.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8, 14, '오늘 오랜만에 중단발을 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('rZPGoc307i0', '[IVE ON] 2025 THE FACT MUSIC AWARDS BEHIND', 'IVE', 'normal', 13, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10, 14, '밥을 먹어서 기분이 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Fv7L91UqtEY', '[IVE LOG] 우당탕탕💫 리즈의 브이로그 in 삿포로🌲❄', 'IVE', 'normal', 14, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 16, 19, '"노래 잘 듣고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('WAoCw2mnmqw', '[IVE ON] ANYUJIN x LIZ x 최강야구 시구시타 BEHIND', 'IVE', 'normal', 15, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 12, 15, '저 시구 처음 해봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('bGm8YgeMG1A', '[IVE ON] JANGWONYOUNG X BETTER BEHIND', 'IVE', 'normal', 16, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 19, 24, '예쁘게 꾸며주셔서 너무 감사해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3W6ocxQe_Jg', '[IVE ON] JANGWONYOUNG X 다우니 BEHIND', 'IVE', 'normal', 17, 49.83333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 49.83333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 11, 14, '저도 만나서 너무 기뻐요', '기뻐요', '기쁘다', 'I am glad');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PZNAdBKK5SU', '[IVE ON] 상하이에서 만난 다이브💖✍️ (with.트립닷컴)｜상하이 팬사인회 BEHIND', 'IVE', 'normal', 18, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 62, 67, '가 저의 부끄러움 달래주고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('X71QQ_L9LC0', '[IVE ON] ''XOXZ'' 첫주 BEHIND', 'IVE', 'normal', 19, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10, 15, '역조공 휘낭시에 세트를 만들었어요', '들었어요', '듣다', 'I listened');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('mJbD6geV7iI', '[IVE ON] REI X LUNA BEHIND', 'IVE', 'normal', 20, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 19, 24, '더는 제가 다섯 통째 쓰고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('BRFq6LHc0GU', '[IVE ON] JANGWONYOUNG X MALTO BEHIND', 'IVE', 'normal', 21, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 5, 10, '건 뒤에 하고 표지를 먼저 갈게요', '갈게요', '가다', 'I will go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('bBZHez6hu4M', '[IVE ON] IVE X COSMOPOLITAN X dyson BEHIND', 'IVE', 'normal', 22, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 43, 48, '찍고 대기실로 와서 쉬고 있었어요', '있었어요', '있다', 'There was / I had');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('fjZGCo_rLFU', '[IVE ON] IVE with 2025 파파존스 BEHIND', 'IVE', 'normal', 23, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 169, 173, '사실 하와이안 피자도 좋아해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('NZZSeXIiWvo', '[IVE ON] 3rd FAN CONCERT ''IVE SCOUT'' VCR BEHIND', 'IVE', 'normal', 24, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 111, 115, '이렇게 움직인다고 생각해 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('fjZGCo_rLFU', '[IVE ON] IVE with 2025 파파존스 BEHIND', 'IVE', 'normal', 25, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 165, 169, '러분들의 파파존스 원픽은 뭔가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('bBZHez6hu4M', '[IVE ON] IVE X COSMOPOLITAN X dyson BEHIND', 'IVE', 'normal', 26, 58.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 58.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 62, 66, '뭔가 촬영하면서 되게 기뻤어요', '기뻤어요', '기쁘다', 'I was glad');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('q_Xq_q9A-qI', '[IVE ON] REI X MILLET BEHIND', 'IVE', 'normal', 27, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 97, 101, '순조로운 것 같아서 기분이 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('NZZSeXIiWvo', '[IVE ON] 3rd FAN CONCERT ''IVE SCOUT'' VCR BEHIND', 'IVE', 'normal', 28, 62.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 62.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 78, 82, '근데 빙어 낚시 뭔가 해보고 싶어요', '보고 싶어요', '', 'I want to see / I miss');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('fjZGCo_rLFU', '[IVE ON] IVE with 2025 파파존스 BEHIND', 'IVE', 'normal', 29, 64.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 64.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 51, 55, '부터 들었는데 먹어본 적이 없어요', '없어요', '없다', 'There is not / I don''t have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Bcew5Zz02Xc', '[IVE ON] LIZ X LG트윈스 시구 BEHIND', 'IVE', 'normal', 30, 66.33333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 66.33333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 83, 86, '제가 무거운 걸 잘 못 들어요', '들어요', '듣다', 'I listen');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('cHc5uHoZZkI', '같이 즐길 수 있었으면 좋겠어요🎶🫶 | aespa 에스파 ‘Hot Mess’ 응원법 (Cheering Guide)', 'aespa', 'normal', 1, 23.833333333333332, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 23.833333333333332, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 233, 239, '무대도 엄청나게 신나', '신나', '신나다', 'I am excited');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hmZbsfel4jM', 'Artist on The Rise: aespa', 'aespa', 'normal', 2, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 172, 176, '그리고 스웨그 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('IVZXL3jkaec', '[Replay] aespa 에스파 ''Whiplash'' Countdown Live', 'aespa', 'normal', 3, 34.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 34.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 113, 116, '- 좋아요 - 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('IVZXL3jkaec', '[Replay] aespa 에스파 ''Whiplash'' Countdown Live', 'aespa', 'normal', 4, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 142, 148, '께하고 있는 이 곳이 어디인가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-kzJf088xIs', '[EP.03] Better Things To Do | aespa 에스파 ''Better Things'' Sitcom 🐠', 'aespa', 'normal', 5, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 48, 53, '기 너무 어두워요 너무 이상해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('cHc5uHoZZkI', '같이 즐길 수 있었으면 좋겠어요🎶🫶 | aespa 에스파 ‘Hot Mess’ 응원법 (Cheering Guide)', 'aespa', 'normal', 6, 49.83333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 49.83333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 211, 214, '생각보다 난이도가 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('SRX39frhiCs', 'ae-ttuddae, aespa의 Better Things 틀어줘 🎵 | aespa 에스파 ''Better Things'' Sitcom Behind 🏡', 'aespa', 'normal', 7, 57.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 57.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 94, 97, '다 같이 카메라 한번 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('cdBWTfXTwnU', 'aespa at UN 🇺🇳 | speech for the High-level Political Forum 2022 Behind', 'aespa', 'normal', 8, 74.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 74.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 75, 78, 'pa에 대하여 좋은 얘기들 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('skFitVsel3s', '[INSIDE SEVENTEEN] Raindrops (SEUNGKWAN Solo) Live Clip BEHIND (with 하현상)', 'SEVENTEEN', 'normal', 1, 30.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 30.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14, 18, '때깔이 되게 좋은데', '좋은데', '', 'It is good though');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('dEIPXXNPybw', '[SVT Record] 얼루어와 함께한 화보 촬영 현장📸 | 힐링 가득 몰디브 🌊 | 어딘가 이상하고(?) 즐거운 겸슈 브이로그 ✨ #30', 'SEVENTEEN', 'normal', 2, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 101, 105, '받아들이기로 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('jcvo4vnh_0w', '[Artist-Made Collection by SEVENTEEN] Season 3. Making of Log - DINO', 'SEVENTEEN', 'normal', 3, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 3, 7, '저는 R&B 좋아해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('uu0e3nzWWag', '[SVT Record] 돌아온 패션위크 브이로그 | 디젤 쇼핑 TIME 🕶️ | 밀라노에서 틈새 여유 즐기기 🌿', 'SEVENTEEN', 'normal', 4, 30.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 30.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 169, 175, '-세븐틴 포즈는 어떤 건가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('uu0e3nzWWag', '[SVT Record] 돌아온 패션위크 브이로그 | 디젤 쇼핑 TIME 🕶️ | 밀라노에서 틈새 여유 즐기기 🌿', 'SEVENTEEN', 'normal', 5, 35.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 35.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18, 23, '분량을 확보해 보려고 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('AZiKTSB_WQU', 'JEONGHAN X WONWOO (SEVENTEEN) ‘THIS MAN’ PROLOGUE FILM BEHIND THE SCENES', 'SEVENTEEN', 'normal', 6, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 43, 47, '-슬프게 바라보셔야 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pG-1RtanGT4', '[SVT Record] 에잇이의 중국 Vlog l 비 오는 날이 제일 좋아🐸 l 힐링 다도 타임🫖', 'SEVENTEEN', 'normal', 7, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 39, 43, '그럼, 쇼 장으로 갈게요', '갈게요', '가다', 'I will go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('kDI3afKcitc', '[SVT Record] 명호의 두 번째 파리 Vlog | 늘 설레는 패션위크🐸🎵 | 파리의 여름밤', 'SEVENTEEN', 'normal', 8, 36.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 36.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 11, 19, '려고 오늘 일부러 많이 안 잤어요', '잤어요', '자다', 'I slept');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5UfIln1OY1E', '[INSIDE SEVENTEEN] 승관 FoRest X Allure 촬영 비하인드 (SEUNGKWAN''s FoRest X Allure Ad Shoot)', 'SEVENTEEN', 'normal', 9, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 20, 27, '서 앨범 드릴게요 너무 감사해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xKuvMiv0XwE', '[SVT Record] THE 8의 중국 쿤밍 Day off | 근손실 방지 고단백 섭취(?) | 바쁜 일상 속 소중한 다도의 시간 🍵', 'SEVENTEEN', 'normal', 10, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 114, 120, '완전히 대단한 게 하나 나왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('aN1B_7NzMUA', '[Artist-Made Collection by SEVENTEEN] Season 3. Making of Log - SEUNGKWAN', 'SEVENTEEN', 'normal', 11, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 36, 40, '괄사 좋은데요? 괄사 좋은데', '좋은데', '', 'It is good though');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('uu0e3nzWWag', '[SVT Record] 돌아온 패션위크 브이로그 | 디젤 쇼핑 TIME 🕶️ | 밀라노에서 틈새 여유 즐기기 🌿', 'SEVENTEEN', 'normal', 12, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 156, 159, '-감사합니다 -감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('M7VxE1xwkHQ', 'SEVENTEEN (세븐틴) 10TH ANNIVERSARY B-DAY PARTY : BURST Stage @잠수교 BEHIND THE SCENES', 'SEVENTEEN', 'normal', 13, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 26, 31, '''도 핸드로 가도 상관없긴 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('mmQOfqWJjv8', 'S.COUPS (에스쿱스) MET GALA 25’ VLOG', 'SEVENTEEN', 'normal', 14, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 24, 29, '항상 크고 긴 코트를 좋아해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('aN1B_7NzMUA', '[Artist-Made Collection by SEVENTEEN] Season 3. Making of Log - SEUNGKWAN', 'SEVENTEEN', 'normal', 15, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 38, 42, '하나 만들 때도 됐긴 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('M2sYzbBMjyk', 'HOSHI X WOOZI (SEVENTEEN) ‘STUPID IDIOT’ Special Video BEHIND THE SCENES', 'SEVENTEEN', 'normal', 16, 46.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 46.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 48, 51, '호시 님 너무 좋았어요', '좋았어요', '좋다', 'It was good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VVEEq8z3TAQ', '[Artist-Made Collection by SEVENTEEN] Season 3. Making of Log - DK', 'SEVENTEEN', 'normal', 17, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 121, 126, '그럼 제가 찍은 걸 좀 봐볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('M2sYzbBMjyk', 'HOSHI X WOOZI (SEVENTEEN) ‘STUPID IDIOT’ Special Video BEHIND THE SCENES', 'SEVENTEEN', 'normal', 18, 49.83333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 49.83333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 52, 55, '정말 빠르게 찍고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LkwXCbSSeP0', '[SVT Record] 밀라노 패션위크에 호랑이 등.장. | 슈퍼스타 권호시⭐️ | 브이로그는 아직 어색해', 'SEVENTEEN', 'normal', 19, 49.83333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 49.83333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 27, 30, 'd''Alba를 바르곤 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('q6KAaT4n6r4', '[EVERY WONWOO] ‘고개’ 녹음 비하인드', 'SEVENTEEN', 'normal', 20, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 67, 71, '2절 후렴구 가사가, 잠깐만요', '잠깐만요', '', 'Wait a moment');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('JxL8FmhG0AQ', '[MINITEEN] Making of Log part.1', 'SEVENTEEN', 'normal', 21, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 266, 271, '건 눈꼬리가 긴 이 시안이 예쁜데', '예쁜데', '', 'It is pretty though');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('qFw70-LYQGQ', '[하니왔쫑] I-GOYA in Hungary #1 | 브이로그의 탈을 쓴 밥이나 먹자요🍚🥢 | 여유낭만 넘치는 부다페스트 산책🏃✨', 'SEVENTEEN', 'normal', 22, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 51, 56, '근데 그 강에 유람선이 또 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('skFitVsel3s', '[INSIDE SEVENTEEN] Raindrops (SEUNGKWAN Solo) Live Clip BEHIND (with 하현상)', 'SEVENTEEN', 'normal', 23, 52.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 52.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 41, 46, '앉아서 끝까지 가겠습니다 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('lOId9qFL0lA', '[MINITEEN] Making of Log part.2', 'SEVENTEEN', 'normal', 24, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 81, 85, '설거지하는 걸 굉장히 싫어해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('mmQOfqWJjv8', 'S.COUPS (에스쿱스) MET GALA 25’ VLOG', 'SEVENTEEN', 'normal', 25, 55.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 55.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6, 11, '만나서 반갑습니다 와주셔서 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('M7VxE1xwkHQ', 'SEVENTEEN (세븐틴) 10TH ANNIVERSARY B-DAY PARTY : BURST Stage @잠수교 BEHIND THE SCENES', 'SEVENTEEN', 'normal', 26, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 46, 50, '위치 한 번만 잡아서 마킹할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-2kI5ezT0zk', '[EVERY WONWOO] 겨울 길 산책 | 잔잔한 음악을 깔아주세요 | 런던 브이로그', 'SEVENTEEN', 'normal', 27, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 202, 206, '캐럿이 됐던 걸로 기억하고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('RDZUIKq_J0A', '[INSIDE SEVENTEEN] 2024 SVT 8th FAN MEETING ＜SEVENTEEN in CARAT LAND＞UNIT REVERSE RECORDING BEHIND', 'SEVENTEEN', 'normal', 28, 66.33333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 66.33333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 36, 39, '다른 애들 키 어떻게 맞췄어요', '췄어요', '추다', 'I danced');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('BtxxRbe-MdA', '[SVT Record] 버논이와 함께 산책해요 🌿 | 캐럿들에게 추천하는 영화 🎬 | KENZO와 함께한 파리 브이로그 ✨', 'SEVENTEEN', 'normal', 29, 66.33333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 66.33333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 36, 39, '이건 숟가락 없이 그냥 마셔요', '마셔요', '마시다', 'I drink');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ZDxbGPQlL-M', '[INSIDE SEVENTEEN] SEVENTEEN [RIGHT HERE] WORLD TOUR IN U.S. BEHIND #2', 'SEVENTEEN', 'normal', 30, 70.16666666666667, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 70.16666666666667, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 11, 14, 'me back''이라고 쓰여 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('KW-jSV1P8WQ', 'Bang Chan X Changbin X HAN | [Stray Kids : SKZ-PLAYER]', 'Stray Kids', 'normal', 1, 21.214285714285715, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 21.214285714285715, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 28, 35, '일단 여기에서 말할게', '할게', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VmyDXNsWB8c', 'Stray Kids "STEP OUT 2022"', 'Stray Kids', 'normal', 2, 27.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 27.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 165, 170, '상 받은 거 축하해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VmyDXNsWB8c', 'Stray Kids "STEP OUT 2022"', 'Stray Kids', 'normal', 3, 35.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 35.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 17, 27, '자리에 함께해 주셔서 정말 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('bVtw8ndiuO0', 'Stray Kids "24 to 25” Video', 'Stray Kids', 'normal', 4, 35.857142857142854, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 35.857142857142854, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 76, 83, '쌓인 지친 하루들 다 털어줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hJiFSgGvQs0', '[Stray Kids: 제 9구역(The 9th)] EP.01', 'Stray Kids', 'normal', 5, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 190, 194, '안녕하세요 이사 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QsbpzuViT0Y', 'Hyunjin "hey you" | [Stray Kids : SKZ-RECORD]', 'Stray Kids', 'normal', 6, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 86, 90, '내 마음을 그대에게 줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VmyDXNsWB8c', 'Stray Kids "STEP OUT 2022"', 'Stray Kids', 'normal', 7, 41.642857142857146, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 41.642857142857146, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 123, 130, 'AY가 만들어준 우승 정말 고마워요', '고마워요', '고맙다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('b4zq-KJLUf0', 'Bang Chan "Eternity" | [Stray Kids : SKZ-RECORD]', 'Stray Kids', 'normal', 8, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 73, 78, '사랑을 듬뿍 주겠다고 약속할게', '할게', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XJytuR1MGcE', 'Stray Kids “JJAM” (Feat. STAY) Guide Video', 'Stray Kids', 'normal', 9, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 186, 190, 'ah ''JJAM'' - 많이 사랑해', '사랑해', '사랑하다', 'I love you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QsbpzuViT0Y', 'Hyunjin "hey you" | [Stray Kids : SKZ-RECORD]', 'Stray Kids', 'normal', 10, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 56, 60, '가 우리를 위해 최선을 다해볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-LOr8PXw5y4', 'Bonus Clip #1 | Analog Trip NCT 127: Escape From Magic Island', 'NCT 127', 'normal', 1, 25.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 25.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 93, 98, '- 옳다구나. - 그렇지', '그렇지', '', 'Right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('axpxtlwRwzA', 'Bonus Clip #3 | Analog Trip NCT 127: Escape From Magic Island', 'NCT 127', 'normal', 2, 30.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 30.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 11, 14, '- 이쪽! - 그렇지', '그렇지', '', 'Right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('bpDJgTY8RUg', '[Replay] NCT 127 ''WALK'' Comeback Live l Walk Daily Magazine LAUNCH PARTY', 'NCT 127', 'normal', 3, 32.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 32.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 47, 53, '오신 시즈니 여러분 환영해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('sUja5bVmEFE', 'WALKING CLUB 127', 'NCT 127', 'normal', 4, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 106, 110, '숨을 크게 들이마셔요', '마셔요', '마시다', 'I drink');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('cEqXdlor2Jg', 'NCT 127 Relay Interview #2 | 아날로그 트립 (Analog Trip NCT 127: Escape From Magic Island)', 'NCT 127', 'normal', 5, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 45, 51, '좀 길지만 이렇게 말하고 싶어요', '하고 싶어요', '', 'I want to do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pGdL_NkmuJw', '👀SHOW YOU #JOHNNY #WalkDailyMagazine', 'NCT 127', 'normal', 6, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18, 23, '127 WALK이라고 되어있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pGdL_NkmuJw', '👀SHOW YOU #JOHNNY #WalkDailyMagazine', 'NCT 127', 'normal', 7, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6, 11, '께 오늘의 룩을 보여드리러 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('B-5wDgBNTU0', 'Ep1.Everyone Has Disappeared?The Secret of the Island! Analog Trip NCT 127: Escape From Magic Island', 'NCT 127', 'normal', 8, 51.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 51.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 12, 15, '- 야! - 뭐야, 뭐야, 뭐야', '뭐야', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('sUja5bVmEFE', 'WALKING CLUB 127', 'NCT 127', 'normal', 9, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14, 18, '우리에겐 더 큰 의미가 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7Ci6PAuyuWk', '[Replay] 우리칠 NI9HT l NCT 127 9TH ANNIVERSARY LIVE', 'NCT 127', 'normal', 10, 53.66666666666667, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 53.66666666666667, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 141, 144, '각자 또 이름이 있나 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('KG9uQSY8etk', 'NCT 127 Relay Interview #1 | 아날로그 트립 (Analog Trip NCT 127: Escape From Magic Island)', 'NCT 127', 'normal', 11, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 79, 83, '니까 담요도 많이 가져가야 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('saNkgVFhZBw', '[STARSTRUCK] Ep.5 STAR''s TRUCK for 시즈니', 'NCT DREAM', 'normal', 1, 27.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 27.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 202, 206, '- 저분요 - 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vFclqznDQ5s', 'NCT DREAM 엔시티 드림 ''Rains in Heaven'' Live Clip', 'NCT DREAM', 'normal', 2, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 80, 85, '네 존재 자체를 사랑해', '사랑해', '사랑하다', 'I love you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7OGconGouyQ', '[CONTOUR:BACKSTAGE] NCT DREAM EP.1 (360º VR)', 'NCT DREAM', 'normal', 3, 35.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 35.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 68, 73, '너무 오랜만이니까 좋았어요', '좋았어요', '좋다', 'It was good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VpymB3S3O_s', '[STARSTRUCK] Ep.2 덩크슛 in LA', 'NCT DREAM', 'normal', 4, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 53, 57, '축구는 이길 수 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3S2a84vJkG4', 'ISTJ ↔ ENFP', 'NCT DREAM', 'normal', 5, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 204, 209, '약속은 잘 지키시는 편인가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XnhHwkHO9AY', '[STARSTRUCK] Ep.3 Everywhere I go bring the BEATBOX!', 'NCT DREAM', 'normal', 6, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 248, 252, '여러분 모두 한 팀인가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-DAD8rQio30', '[CONTOUR:BACKSTAGE] NCT DREAM EP.2 (360º VR)', 'NCT DREAM', 'normal', 7, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 58, 62, '만들려고 하는 그게 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('aiYRyls1RDk', '[Replay] 9OING ON AND ON : NCT DREAM 9th ANNIVERSARY', 'NCT DREAM', 'normal', 8, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 41, 44, '오늘 재밌게 놀아봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QwSz1iH7PoQ', '[Replay] 8ESTIE, 7DREAM & NCTzen : NCT DREAM 8th ANNIVERSARY', 'NCT DREAM', 'normal', 9, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 93, 98, '노야 - 8살이 된 걸 축하해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9tIsyA8Ljp4', '[Replay] NCT DREAM ''Beat It Up'' Countdown Live', 'NCT DREAM', 'normal', 10, 47.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 47.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 76, 80, '- 안녕하십니까 - 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vFclqznDQ5s', 'NCT DREAM 엔시티 드림 ''Rains in Heaven'' Live Clip', 'NCT DREAM', 'normal', 11, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 160, 165, '그곳이 어디든 내가 널 잡아줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XnhHwkHO9AY', '[STARSTRUCK] Ep.3 Everywhere I go bring the BEATBOX!', 'NCT DREAM', 'normal', 12, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 133, 138, '어가 나 여기서 버스 타고 갈게', '갈게', '가다', 'I will go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('TdFiXIhdFqY', '[STARSTRUCK] Ep.1 마크를 찾아서', 'NCT DREAM', 'normal', 13, 49.83333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 49.83333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 111, 114, '전 항상 준비되어 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('mSX7vBPlIe0', 'HUENINGKAI ''BAZAAR GALA'' Behind | EPISODE | TXT (투모로우바이투게더)', 'TXT', 'normal', 1, 30.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 30.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 13, 17, '날씨가 덥고 습해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('mSX7vBPlIe0', 'HUENINGKAI ''BAZAAR GALA'' Behind | EPISODE | TXT (투모로우바이투게더)', 'TXT', 'normal', 2, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 47, 51, '그게 기분이 좋았어요', '좋았어요', '좋다', 'It was good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('fo1JHtAnUI8', 'Production Behind #2 ''Dance With You'' - 휴닝카이 (HUENINGKAI) | TXT (투모로우바이투게더)', 'TXT', 'normal', 3, 35.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 35.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 51, 56, '후보 곡이 몇 곡 있었어요', '있었어요', '있다', 'There was / I had');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('v3kOcqTpLrI', 'Production Behind #1 ‘Take My Half’ - 범규 (BEOMGYU) | TXT (투모로우바이투게더)', 'TXT', 'normal', 4, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 42, 46, '- 점점 좋아지고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GOWWaZhzhKI', '''범이디오(BEOMEDIO) EP.08'' Behind | EPISODE | TXT (투모로우바이투게더)', 'TXT', 'normal', 5, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 53, 57, '휴가 잘 보내고 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3-l7ZHISQnc', '수빈이의 쉽지 않은 여행 | TXT-LOG | TXT (투모로우바이투게더)️', 'TXT', 'normal', 6, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 24, 28, '바로 짐만 싸고 나왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('v3kOcqTpLrI', 'Production Behind #1 ‘Take My Half’ - 범규 (BEOMGYU) | TXT (투모로우바이투게더)', 'TXT', 'normal', 7, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 21, 25, '네 아까 병원 갔다 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('kkobRbaGjMY', '''The 39th GOLDEN DISC AWARDS'' Behind | EPISODE | TXT (투모로우바이투게더)', 'TXT', 'normal', 8, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 19, 22, '여기가 제일 힘들어요', '힘들어요', '힘들다', 'It is hard');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('I0BqX0_6vk4', 'Huekangz'' Staycation🛏️ | Toys🦖 | Lounging💤 | Fro-yo🍨 | TXT-LOG | TXT (투모로우바이투게더)', 'TXT', 'normal', 9, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 73, 76, '단 거 잘 못 먹어요', '먹어요', '먹다', 'I eat');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('h5KfSX3jmqk', '‘광복 80년 전야제'' Behind | EPISODE | TXT (투모로우바이투게더)', 'TXT', 'normal', 10, 42.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 42.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 104, 109, ''' - 그다음 그다음이 중요해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('H6cYtR5_o8g', 'Production Behind #3 ‘Bird of Night’ - 태현 (TAEHYUN) | TXT (투모로우바이투게더)', 'TXT', 'normal', 11, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 102, 108, '의 춤과 노래를 모두 하고 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('tiOzUlj8l-M', '''2025 Weverse Con Festival'' Behind | EPISODE | TXT (투모로우바이투게더)', 'TXT', 'normal', 12, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 28, 33, '지 내려가 - 무대에서 내려줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('I0BqX0_6vk4', 'Huekangz'' Staycation🛏️ | Toys🦖 | Lounging💤 | Fro-yo🍨 | TXT-LOG | TXT (투모로우바이투게더)', 'TXT', 'normal', 13, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 84, 89, '좋긴 해요 - 꿀에 몸이 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XYHhHr6l3Js', '''BEOMGYU''s Mixtape: Panic'' Behind the Scenes #2 | TXT (투모로우바이투게더)', 'TXT', 'normal', 14, 46.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 46.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 198, 201, '좀 더 타이트 컷인가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('bbBGd2PP4vk', '시카고에서 보내는 휴일 🎡  | TXT-LOG | TXT (투모로우바이투게더)️', 'TXT', 'normal', 15, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 97, 102, '서는 거 보니까 인기 많나 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('i7p-siiws2s', '‘Starkissed’ Recording Behind | TXT (투모로우바이투게더)', 'TXT', 'normal', 16, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 73, 78, '먼저 하고 다음으로 넘어가볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('UhWMso10J9E', '''AXE 세레모니아 (AXE Ceremonia)'' Behind | EPISODE | TXT (투모로우바이투게더)', 'TXT', 'normal', 17, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15, 20, '니다 - 같이 일하게 돼서 기뻐요', '기뻐요', '기쁘다', 'I am glad');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('fo1JHtAnUI8', 'Production Behind #2 ''Dance With You'' - 휴닝카이 (HUENINGKAI) | TXT (투모로우바이투게더)', 'TXT', 'normal', 18, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 46, 50, '''맘'' 한 50 정도 긁어볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XYHhHr6l3Js', '''BEOMGYU''s Mixtape: Panic'' Behind the Scenes #2 | TXT (투모로우바이투게더)', 'TXT', 'normal', 19, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 26, 31, '저희 얼굴 대문짝만하게 걸려있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('034mGebZ9wk', '‘BEOMGYU''s Mixtape: Panic’ Behind the Scenes #1 | TXT (투모로우바이투게더)', 'TXT', 'normal', 20, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 40, 45, '음악가의 콘셉트로 촬영하고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('fo1JHtAnUI8', 'Production Behind #2 ''Dance With You'' - 휴닝카이 (HUENINGKAI) | TXT (투모로우바이투게더)', 'TXT', 'normal', 21, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 91, 95, '인정 그루브 감도 없긴 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('dpy5kKbaiuw', '‘2025 SBS 가요대전 Summer’ Behind | EPISODE | TXT (투모로우바이투게더)', 'TXT', 'normal', 22, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 156, 160, '한 김에 이것저것 해보고 싶어요', '보고 싶어요', '', 'I want to see / I miss');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('H6cYtR5_o8g', 'Production Behind #3 ‘Bird of Night’ - 태현 (TAEHYUN) | TXT (투모로우바이투게더)', 'TXT', 'normal', 23, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 84, 88, '어떻게 하루만에 이걸 다 봤어요', '봤어요', '보다', 'I saw/watched');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('n5eo3FHsZ-4', '‘HELLO STRANGERS’ Behind | EPISODE | TXT (투모로우바이투게더)', 'TXT', 'normal', 24, 58.66666666666667, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 58.66666666666667, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 60, 63, '그러면 옥상에 흙이 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XYHhHr6l3Js', '''BEOMGYU''s Mixtape: Panic'' Behind the Scenes #2 | TXT (투모로우바이투게더)', 'TXT', 'normal', 25, 58.66666666666667, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 58.66666666666667, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 201, 204, '- 가끔씩만 볼게요 - 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('i7p-siiws2s', '‘Starkissed’ Recording Behind | TXT (투모로우바이투게더)', 'TXT', 'normal', 26, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 57, 61, '연준이만 빠르게 해보고 결정할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('SzGuFk6RHZI', '‘Love Language’ Behind | EPISODE | TXT (투모로우바이투게더)', 'TXT', 'normal', 27, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 109, 113, '한 획 긋기로 그리는 사람 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('RLe5ejpFj6A', 'UPPUZ''s Cozy Jongno Vlog❄️ | Vintage Cameras, Records, and Tea 📸🎼🌿 | TXT-LOG | TXT (투모로우바이투게더)', 'TXT', 'normal', 28, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 79, 83, '제일 오래된 것들은 이쪽에 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('UhWMso10J9E', '''AXE 세레모니아 (AXE Ceremonia)'' Behind | EPISODE | TXT (투모로우바이투게더)', 'TXT', 'normal', 29, 62.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 62.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14, 17, '- 만나서 반가워요 - 감사해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('H8y6xuvPivg', '2024 Year-End Shows Behind | EPISODE | TXT (투모로우바이투게더)', 'TXT', 'normal', 30, 64.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 64.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 116, 120, '- 밥 먹을 때도 이러면서 먹었어요', '먹었어요', '먹다', 'I ate');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-hqdnaaXBGk', '[EN-TER key] Scary Adventure Behind-The-Scenes - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 1, 27.5, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 27.5, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15, 20, '그런 게 안 무서워요', '무서워요', '무섭다', 'It is scary');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QECvPVFuvxU', '[EPISODE] 서울특별시 홍보대사 비하인드 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 2, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 89, 93, '- 서울 진짜 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('JhB2G28Y2Lg', '[EN-loG] 함께라서 더 즐거운 니키의 브이로그✌️ NI-KI DAY - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 3, 32.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 32.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18, 23, '저희가 볼링 치러 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('6dgenoHwXx4', '[EN-CORE] ‘DESIRE : UNLEASH’ 음악방송 비하인드 EP.1 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 4, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 93, 97, '디테일이 되게 예쁜데', '예쁜데', '', 'It is pretty though');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Zx3mjgc0DlI', 'ENHYPEN (엔하이픈) ‘Big Girls Don''t Cry’ 응원법', 'ENHYPEN', 'normal', 5, 35.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 35.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 28, 33, '그럼 응원법 설명을 시작해', '시작해', '시작하다', 'Let''s start');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('j3zKr93zpNI', '[EPISODE] ''WALK THE LINE'' : FINAL 비하인드 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 6, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 13, 17, 'Okay 이걸로 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VrYPpCAkGoI', '[EPISODE] 맵(MEP, 맵탱) 광고 비하인드 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 7, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 144, 149, '근데 아더 물 줄 거 없어요', '없어요', '없다', 'There is not / I don''t have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('c0MF5Q2SLHs', 'Artist-Made Collection by EN- Making of Log : NI-KI', 'ENHYPEN', 'normal', 8, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 68, 71, '이게 제일 중요해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-hqdnaaXBGk', '[EN-TER key] Scary Adventure Behind-The-Scenes - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 9, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2, 5, '아파트 여기 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('dsX1i39dj8o', '피렌체에서 있었던 일 -3편- | 뱀파이어 도주일지 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 10, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23, 27, '싱싱해서 되게 맛있었어요', '맛있었어요', '맛있다', 'It was delicious');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('j3zKr93zpNI', '[EPISODE] ''WALK THE LINE'' : FINAL 비하인드 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 11, 39.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 39.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 80, 86, '칠게요 수고하셨습니다! - 좋은데', '좋은데', '', 'It is good though');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('j3zKr93zpNI', '[EPISODE] ''WALK THE LINE'' : FINAL 비하인드 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 12, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 103, 106, '체조가 생각보다 커요', '커요', '크다', 'It is big');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('sVvDaAa7JyQ', '[EN-loG] 뭘 좋아할지 몰라 다 준비했다! 희승이의 스윗한 하루🎵 HEESEUNG DAY - ENHYPEN(엔하이픈)', 'ENHYPEN', 'normal', 13, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 75, 80, '일단은 편하게 한번 둘러볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('KBflOM4VkkI', 'LA에서 있었던 일 -2편- | 뱀파이어 도주일지 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 14, 46.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 46.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 74, 77, '갑자기 삑 이렇게 됐다', '됐다', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8Grptt3UtxY', '[EPISODE] ''WALK THE LINE'' IN JAPAN -SUMMER EDITION- 비하인드 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 15, 46.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 46.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 72, 78, '라 할지 지금 얘기를 하고 있었어요', '있었어요', '있다', 'There was / I had');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Zx3mjgc0DlI', 'ENHYPEN (엔하이픈) ‘Big Girls Don''t Cry’ 응원법', 'ENHYPEN', 'normal', 16, 47.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 47.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 101, 105, '''Salut''는 무슨 뜻인가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5ljMMrpTvJk', '[-note] 250802 TEAM Lucifer - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 17, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 51, 56, '- 구름이, 구름이 하나도 없었어요', '없었어요', '없다', 'There was not');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('BfJKI1FZwCo', '[EN-TER key] 선우의 2025 대한민국사회공헌대상 수상 비하인드 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 18, 49.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 49.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 16, 22, '소감을 계속 준비를 하면서 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('I-CNJV8PnyQ', '[Shout-out] ENHYPEN (엔하이픈) HAPPY NEW YEAR 2026 ', 'ENHYPEN', 'normal', 19, 49.83333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 49.83333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 134, 137, '- 감사합니다 - 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PK4YeyDN1sU', '[EN-loG] 예쁘게 빚어보는 정원이의 하루 🌙 JUNGWON DAY - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 20, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 33, 37, '네, 머그컵 만드실 수 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8Grptt3UtxY', '[EPISODE] ''WALK THE LINE'' IN JAPAN -SUMMER EDITION- 비하인드 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 21, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 100, 104, '남은 리허설도 잘할 수 있어요', '할 수 있어요', '', 'I can do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('KDpGqjqt-sk', '[EPISODE] ENHYPEN UNTOLD 콘셉트 시네마 비하인드 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 22, 53.66666666666667, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 53.66666666666667, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8, 11, '조금만 연습 한번 해볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QECvPVFuvxU', '[EPISODE] 서울특별시 홍보대사 비하인드 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 23, 55.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 55.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 112, 114, '한 번 더 가볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('lnI4-MVhb0k', 'Artist-Made Collection by EN- Making of Log : JAY', 'ENHYPEN', 'normal', 24, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 32, 36, '크한 느낌으로 만들고 싶긴 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PK4YeyDN1sU', '[EN-loG] 예쁘게 빚어보는 정원이의 하루 🌙 JUNGWON DAY - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 25, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 55, 59, '- 너무 잘 그리실 필요는 없어요', '없어요', '없다', 'There is not / I don''t have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PK4YeyDN1sU', '[EN-loG] 예쁘게 빚어보는 정원이의 하루 🌙 JUNGWON DAY - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 26, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 114, 118, '네 그리고 흙을 살짝 안아볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('lnI4-MVhb0k', 'Artist-Made Collection by EN- Making of Log : JAY', 'ENHYPEN', 'normal', 27, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 82, 86, '이름 같은 게 있는 것들이 많아요', '많아요', '많다', 'There are many');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Zx3mjgc0DlI', 'ENHYPEN (엔하이픈) ‘Big Girls Don''t Cry’ 응원법', 'ENHYPEN', 'normal', 28, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 21, 25, '활동을 할 수 있어서 정말 좋네요', '좋네요', '좋다', 'It is good!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5ljMMrpTvJk', '[-note] 250802 TEAM Lucifer - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 29, 62.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 62.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25, 29, '되게 이렇게 분위기가 너무 좋았어요', '좋았어요', '좋다', 'It was good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8j4mdpJwn2w', '[EPISODE] 2025 Weverse Con Festival Behind - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 30, 67.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 67.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 225, 229, '햄버거 먹을 수 있는데 안 먹었어요', '먹었어요', '먹다', 'I ate');
END $$;

-- Full Scan V7 Continuation Data (LE SSERAFIM onwards)


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('FhzPAhkN35c', '[EPISODE] KIM CHAEWON ‘Inkigayo’ Special MC Behind', 'LE SSERAFIM', 'normal', 1, 25.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 25.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 5, 10, '제가 오늘 인기가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('SF6jBiWUg10', 'The Pride of our Family👏 | "Presidential Committee on Popular Culture Exchange" Behind | EPISODE', 'LE SSERAFIM', 'normal', 2, 26.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 26.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 56, 62, '여러분 즐기고 계신가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('He7IomOuYXU', '[EPISODE] LE SSERAFIM (르세라핌) ‘DIFFERENT (English ver.)’ Music Show Behind', 'LE SSERAFIM', 'normal', 3, 27.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 27.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22, 26, '- 신발이 멋있어요', '멋있어요', '멋있다', 'It is cool');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('b-rLECNeei4', '[EPISODE] LE SSERAFIM (르세라핌) 2024 MTV EMAs Behind', 'LE SSERAFIM', 'normal', 4, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4, 8, '영국에 처음 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('NdExiLt1erE', '[EPISODE] LE SSERAFIM (르세라핌) ‘CRAZY’ 북미 Promotion & 2024 MTV VMAs Behind', 'LE SSERAFIM', 'normal', 5, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 11, 15, '가방 너무 유용해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('A0yXkR0UaTU', '[EPISODE] LE SSERAFIM (르세라핌) 북미 Promotion Behind', 'LE SSERAFIM', 'normal', 6, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 54, 58, '기분이 너무 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1anXrZrdVws', '[EPISODE] HUH YUNJIN ''MAX Live in Seoul'' Guest Behind', 'LE SSERAFIM', 'normal', 7, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 7, 11, '아뇨, 제가 고마워요', '고마워요', '고맙다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('2T_G7gPO8HY', 'Long time no see NY!!!!!!!! ✈️ | Pieces from North America Tour 🫶 | FIM-LOG', 'LE SSERAFIM', 'normal', 8, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 59, 63, '네 저도 벌써 졸려요', '졸려요', '졸리다', 'I am sleepy');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GLeEPAgtNIY', '[EPISODE] LE SSERAFIM (르세라핌) ‘HOT’ Music Show Behind #2', 'LE SSERAFIM', 'normal', 9, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 19, 23, '처음 봐요 처음 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('CVnEHBqdIzw', '[FIM-LOG] in United Kingdom🇬🇧 | 맨체스터 유나이티드 홈구장⚽️ 구경부터 비틀즈 스토리 관람까지👀', 'LE SSERAFIM', 'normal', 10, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9, 13, '저희 영국 도착했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('n7nyPjWMOlA', 'LE SSERAFIM''s Waiting Room Mukbang (?) included | K-WORLD DREAM AWARDS Behind | EPISODE', 'LE SSERAFIM', 'normal', 11, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 79, 83, '7시까지 그렇게 잤어요', '잤어요', '자다', 'I slept');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('kXmgjfsPtk0', '[EPISODE] LE SSERAFIM (르세라핌) @ 2025 Weverse Con Festival', 'LE SSERAFIM', 'normal', 12, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 168, 172, '♪ 이게 뭐야 이게 뭐야', '뭐야', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YgdtTzp8S1U', '[EPISODE] LE SSERAFIM (르세라핌) 2025 IPSELENTI KOREA UNIVERSITY Festival Behind', 'LE SSERAFIM', 'normal', 13, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 56, 60, '오랜만이라 너무 설레요', '설레요', '설레다', 'I am thrilled');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('CVnEHBqdIzw', '[FIM-LOG] in United Kingdom🇬🇧 | 맨체스터 유나이티드 홈구장⚽️ 구경부터 비틀즈 스토리 관람까지👀', 'LE SSERAFIM', 'normal', 14, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14, 18, '저 영국에 처음 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('JxNsDgcpUiY', '[EUNCHAE''s Hobby Diary] Making PotteryㅣA Chill Day Painting Pottery', 'LE SSERAFIM', 'normal', 15, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 53, 58, '이번 거는 좀 더 잘해볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('He7IomOuYXU', '[EPISODE] LE SSERAFIM (르세라핌) ‘DIFFERENT (English ver.)’ Music Show Behind', 'LE SSERAFIM', 'normal', 16, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 21, 24, '오늘 신발 멋있네요', '멋있네요', '멋있다', 'It is cool!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('cGlqI-IEpxs', '[EPISODE] HONG EUNCHAE ‘Music Bank’ Last MC Behind', 'LE SSERAFIM', 'normal', 17, 39.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 39.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 38, 44, '최강 막내 은채 항상 응원할게', '할게', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('agGu553lfeg', 'Beginner Driver KIM CHAEWON l From the Drawer to the Road - Dusty License Episode', 'LE SSERAFIM', 'normal', 18, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 117, 121, '그냥 떼는 게 없는 건가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QTBabng4TpM', 'LE SSERAFIM (르세라핌) 2025 SEASON''S GREETINGS MAKING BEHIND', 'LE SSERAFIM', 'normal', 19, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9, 12, '- 놀러 와 - 환영해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('KKzXseRjvHE', '[FIM-LOG] in Japan 😎 | Universal Studios Japan & Shopping 🎢🛍️ | Happy Moments 💕', 'LE SSERAFIM', 'normal', 20, 42.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 42.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8, 13, '- 와 감사합니다 - 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YW35OjGH9c4', '[FIM-LOG] 은채 브이로그 #8 l 꾸준히 쓰는 은채의 감정 일기📝 | 이번에 만채 어머니 지분율 뭐예요🥰', 'LE SSERAFIM', 'normal', 21, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 20, 26, '일기를 쓰고 싶은 마음이 있었어요', '있었어요', '있다', 'There was / I had');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('uE65VjXYiDw', '[EPISODE] LE SSERAFIM (르세라핌) The 39th GOLDEN DISC AWARDS Behind', 'LE SSERAFIM', 'normal', 22, 46.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 46.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 50, 53, '그렇지만 마음에 들어요', '들어요', '듣다', 'I listen');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('iCIPMtDIXoY', '[FIM-LOG] 카즈하 브이로그 #7 l 즈하의 다채로운 나날들✨ | 리무진 서비스 라이브 연습🎤', 'LE SSERAFIM', 'normal', 23, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 41, 45, '먹으면서 얘기하려고 켜봤어요', '봤어요', '보다', 'I saw/watched');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GLeEPAgtNIY', '[EPISODE] LE SSERAFIM (르세라핌) ‘HOT’ Music Show Behind #2', 'LE SSERAFIM', 'normal', 24, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 53, 58, '려서 잔디에서 쓰러질 수도 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('TjeoXVRDX7A', '[EPISODE] LE SSERAFIM (르세라핌) 5th Mini Album ‘HOT’ Comeback Showcase Behind', 'LE SSERAFIM', 'normal', 25, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 99, 103, '- 수고하셨습니다 - 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('CVnEHBqdIzw', '[FIM-LOG] in United Kingdom🇬🇧 | 맨체스터 유나이티드 홈구장⚽️ 구경부터 비틀즈 스토리 관람까지👀', 'LE SSERAFIM', 'normal', 26, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 37, 41, '- 잠깐만 내가 한마디 해볼게', '볼게', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('iX0HPbOK96k', '[FIM-LOG] 2024 대학 축제🌟 | 르세라핌의 대학 축제 퍼펙트하게 즐기기😆 버스 타고 전국 투어🚌', 'LE SSERAFIM', 'normal', 27, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 49, 54, '무선 충전할 수 있는 곳이 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QTBabng4TpM', 'LE SSERAFIM (르세라핌) 2025 SEASON''S GREETINGS MAKING BEHIND', 'LE SSERAFIM', 'normal', 28, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 7, 11, '''르세라핌 랜드''에서 같이 놀아요', '놀아요', '놀다', 'I play');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1anXrZrdVws', '[EPISODE] HUH YUNJIN ''MAX Live in Seoul'' Guest Behind', 'LE SSERAFIM', 'normal', 29, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10, 14, '인이어 많이 올려주실 수 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('SF6jBiWUg10', 'The Pride of our Family👏 | "Presidential Committee on Popular Culture Exchange" Behind | EPISODE', 'LE SSERAFIM', 'normal', 30, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 46, 50, '창 하나만 깔아봐 주실 수 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3487g9Ua9lo', 'ITZY “Imaginary Friend” LIVE CLIP (4K)', 'ITZY', 'normal', 1, 29.166666666666668, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 29.166666666666668, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 64, 73, 'w, I’m 너의 밤이 되어줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('x8G8exSi8TM', '[CSI] Codename : Secret ITZY EP.12 Highlight', 'ITZY', 'normal', 2, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23, 27, '아, 잠깐만요! 잠깐만요', '잠깐만요', '', 'Wait a moment');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('06sScdfVbzk', 'ITZY "CRAZY IN LOVE" Billboard 200 NEW ENTRY', 'ITZY', 'normal', 3, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15, 21, '음악과 무대를 응원해주시고 사랑해', '사랑해', '사랑하다', 'I love you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('x0dObH-qePs', '[ #TheSofaClub ] This is What ITZY Thinks About the New Album! 🤭', 'ITZY', 'normal', 4, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 63, 68, '하세요, 채령입니다 만나서 반가워요', '반가워요', '반갑다', 'Nice to meet you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('x0dObH-qePs', '[ #TheSofaClub ] This is What ITZY Thinks About the New Album! 🤭', 'ITZY', 'normal', 5, 58.66666666666667, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 58.66666666666667, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 116, 119, '저부터 할까요? - 네, 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3jrLxnPf_sk', 'Ep 8. TWICE ''LIGHTS'' to Everyone | TWICE: Seize the Light', 'TWICE', 'normal', 1, 21.666666666666668, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 21.666666666666668, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 193, 199, '정말 오프닝 시작해', '시작해', '시작하다', 'Let''s start');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LG_dTjivZx8', 'Ep 2. Fierce Days of 9 Trainees | TWICE: Seize the Light', 'TWICE', 'normal', 2, 23.833333333333332, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 23.833333333333332, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 57, 63, '그래서 너무 행복해요', '행복해요', '행복하다', 'I am happy');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('eMpMgEyp7yg', 'TWICE: Seize the Light | ALL ABOUT CHAEYOUNG', 'TWICE', 'normal', 3, 26.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 26.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2, 8, '못된 말을 잘 못 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3zQraeuNbK8', 'VICTORIA’S SECRET FASHION SHOW 2025 Behind The Scenes', 'TWICE', 'normal', 4, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 42, 46, '따뜻하게 입고 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('t4eIRbA4zw8', 'TWICE: Seize the Light | ALL ABOUT JEONGYEON', 'TWICE', 'normal', 5, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 44, 48, '그런 트와이스도 좋지', '좋지', '좋다', 'It is good, right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LG_dTjivZx8', 'Ep 2. Fierce Days of 9 Trainees | TWICE: Seize the Light', 'TWICE', 'normal', 6, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 144, 151, '동안 지효랑 한마디도 안 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-GhAieTmmxI', 'TWICE: Seize the Light | Premiere Live Stream', 'TWICE', 'normal', 7, 42.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 42.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 524, 529, '배운 것이 있다면 무엇인가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8mkYWAuo-2M', 'Special Ep 9. Together, With the Lights | TWICE: Seize the Light', 'TWICE', 'normal', 8, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 21, 25, '다시 뭉쳐서 뭔가 해도 좋지', '좋지', '좋다', 'It is good, right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8mkYWAuo-2M', 'Special Ep 9. Together, With the Lights | TWICE: Seize the Light', 'TWICE', 'normal', 9, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 96, 101, '나 ''콘서트 취소, 많이 아쉬워요', '쉬워요', '쉽다', 'It is easy');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-GhAieTmmxI', 'TWICE: Seize the Light | Premiere Live Stream', 'TWICE', 'normal', 10, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 668, 673, '관심을 많이 가져주시고 사랑해', '사랑해', '사랑하다', 'I love you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('rFxaGZ9xMPg', 'Ep 4. TWICE is TWICE | TWICE: Seize the Light', 'TWICE', 'normal', 11, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 125, 130, '려고 영화나 드라마를 많이 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7kV7urmtsWE', 'TWICE: Seize the Light | ALL ABOUT MINA', 'TWICE', 'normal', 12, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25, 30, '미소가 나오는 게 너무 기뻤어요', '기뻤어요', '기쁘다', 'I was glad');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('sgey4Z91Xd8', 'TWICE: Seize the Light | ALL ABOUT TZUYU', 'TWICE', 'normal', 13, 49.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 49.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8, 14, '해지면 많이 재밌게 놀 수 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-GhAieTmmxI', 'TWICE: Seize the Light | Premiere Live Stream', 'TWICE', 'normal', 14, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 27, 32, '무 아프고 너무 힘든 날도 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('mEtUkIDqbog', 'Ep 1. First Step Towards Our Dream | TWICE: Seize the Light', 'TWICE', 'normal', 15, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 275, 280, '니 앞에서 장기자랑을 맨날 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ot9-jK4suUk', 'Ep 5. Breathless but Unstoppable | TWICE: Seize the Light', 'TWICE', 'normal', 16, 52.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 52.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 20, 25, '분명히 갖고 있다는 확신이 있었어요', '있었어요', '있다', 'There was / I had');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pVAzjbBu4ek', '[NMIXX IN WONDERLAND] 이상한 나라의 엔믹스 EP.9 | 하드털이 쭈아하세욥?', 'NMIXX', 'normal', 1, 38.333333333333336, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 38.333333333333336, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 56, 59, '-아는 일본어 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0n68a3NN9kY', '[NMIXX] 크리스마스전 엔믹스와 같이 놀아볼래? | K-POP 조교님 해원 등장🎤', 'NMIXX', 'normal', 2, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 19, 23, 'LILY: 저 자신 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('WSrYSNpBQ0A', 'Fill up our winter place #MIXXPLORE EP.2 | PICK NMIXX', 'NMIXX', 'normal', 3, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14, 17, '호박 고구마가 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('tDB57NV6tbI', '[NMIXX] 템플스테이 우리만 이렇게 하는거 아니지? | 차개듀 우리만 재밌는 거 아니지? EP.3', 'NMIXX', 'normal', 4, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25, 30, '은 모아서 찻잔을 감싸기만 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PxA7lXSzX60', 'NMIXX 1st Anniversary cover ''TO MY DREAM'' | PICK NMIXX', 'NMIXX', 'normal', 5, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 326, 331, '화로 레슨을 받았던 기억이 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('tDB57NV6tbI', '[NMIXX] 템플스테이 우리만 이렇게 하는거 아니지? | 차개듀 우리만 재밌는 거 아니지? EP.3', 'NMIXX', 'normal', 6, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22, 27, '뜨거울 때 손을 데일 수가 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Fs65FzqUQLk', '[NMIXX IN WONDERLAND] 이상한 나라의 엔믹스 EP.5 | 안 고독방 등판 썰 푼다📱', 'NMIXX', 'normal', 7, 51.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 51.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 76, 79, '-맞추면 내가 이거 줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PxA7lXSzX60', 'NMIXX 1st Anniversary cover ''TO MY DREAM'' | PICK NMIXX', 'NMIXX', 'normal', 8, 55.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 55.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 83, 88, '면서 정말 닮고 싶다고 생각했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0n68a3NN9kY', '[NMIXX] 크리스마스전 엔믹스와 같이 놀아볼래? | K-POP 조교님 해원 등장🎤', 'NMIXX', 'normal', 9, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15, 19, 'Y: 맞히기 게임을 하기로 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Fs65FzqUQLk', '[NMIXX IN WONDERLAND] 이상한 나라의 엔믹스 EP.5 | 안 고독방 등판 썰 푼다📱', 'NMIXX', 'normal', 10, 61.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 61.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 49, 53, '-있었는데 어디 갔는지 모르겠어요', '모르겠어요', '모르다', 'I don''t know');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0n68a3NN9kY', '[NMIXX] 크리스마스전 엔믹스와 같이 놀아볼래? | K-POP 조교님 해원 등장🎤', 'NMIXX', 'normal', 11, 74.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 74.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9, 12, '겨울을 맞이한 엔믹스가 찾아왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pvrd3VGRd8M', 'BOYNEXTDOOR (보이넥스트도어) ''재미있어 보이넥'' EP.5', 'BOYNEXTDOOR', 'normal', 1, 20.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 20.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 122, 127, '- 그렇지, 그렇지', '그렇지', '', 'Right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('fzv0B8IiiX0', 'WHAT? DOOR! | 힐링데이는 핑계고 : 운수 좋은 찜찜 DAY 1편 | EP.31 - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 2, 24.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 24.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 44, 48, '요새는 뭐... 뭐야', '뭐야', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('MW_YN5EJ7Gg', 'WHAT? DOOR! | THE ACTION THRILLER | SPECIAL EPISODE - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 3, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 59, 63, '옥상? 예 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('yB8t-6BXUDE', '3HR STUDY WITH ME | Background Noise | ASMR | Writing Sounds | No Music | Ambient ver. - BOYNEXTDOOR', 'BOYNEXTDOOR', 'normal', 4, 30.77777777777778, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 30.77777777777778, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 109, 118, '고3 운학의 수능 공부 시작해', '시작해', '시작하다', 'Let''s start');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('KlJn3n_4imE', 'OPEN DOOR｜이런 생각을 해요 저는 지금 아름다운 시간을 보내고 있구나💭｜운학이의 감성 가득한 셀프 토크 타임🧸 - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 5, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23, 27, '사실 이런 생각을 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('yB8t-6BXUDE', '3HR STUDY WITH ME | Background Noise | ASMR | Writing Sounds | No Music | Ambient ver. - BOYNEXTDOOR', 'BOYNEXTDOOR', 'normal', 6, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 39, 44, '평소랑 똑같이 공부해 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ENGW7wWzsY4', 'OPEN DOOR｜멋있는 게 뭐가 있지..🤔｜작정하고 귀여운 포즈를 해보았다👍 - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 7, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 154, 159, '- 하하하하하하! - 아 뭐해', '뭐해', '', 'What are you doing?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('MW_YN5EJ7Gg', 'WHAT? DOOR! | THE ACTION THRILLER | SPECIAL EPISODE - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 8, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14, 17, '어 뭐야 뭐야 뭐야', '뭐야', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('x0_6zILSMvo', '재미있어 보이넥4 | 운학이에게 빠진 게 죄는 아니잖아 (feat. 룸메 정하기) | EP.2 - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 9, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 71, 74, '형이 한 번 해봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('I011fKkou1c', 'Behind The DOOR | EP.7 | 2023 Weverse Con Festival - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 10, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 56, 60, '♪ 잘생긴 사람을 소개할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('a-xf6iBnr68', '''재미있어 보이넥2'' | 즐거운 MT 근데 이제 내기를 곁들인 | EP.2 - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 11, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 56, 60, '- 애초에 질 자신이 없어요', '없어요', '없다', 'There is not / I don''t have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('a-xf6iBnr68', '''재미있어 보이넥2'' | 즐거운 MT 근데 이제 내기를 곁들인 | EP.2 - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 12, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 27, 30, '네? 미션이요? 잠깐만요', '잠깐만요', '', 'Wait a moment');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('MW_YN5EJ7Gg', 'WHAT? DOOR! | THE ACTION THRILLER | SPECIAL EPISODE - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 13, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 112, 117, '계모임 사람들 좀 다 불러볼게', '볼게', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('tTHzZy5JBhI', '새벽부터 빡센 컴백 첫 주 아이돌의 갓생 | 엠카운트다운 첫방 브이로그 - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 14, 46.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 46.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 12, 18, '진짜 너무 많이 해주셔서 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('tTHzZy5JBhI', '새벽부터 빡센 컴백 첫 주 아이돌의 갓생 | 엠카운트다운 첫방 브이로그 - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 15, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 30, 35, '한번 빼고 체크해 보기로 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3GSt5u854ek', 'BOYNEXTDOOR 5th EP [The Action] Album Unboxing - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 16, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 32, 37, '의가 필요하다는 리액션 - 그렇지', '그렇지', '', 'Right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xoj2jbmrpro', 'CAMCORDOOR l BOYNEXTDOOR in LA 🇺🇸 행복 가득했던 순간들 🕺🎥🏊🛒🥰 #LA로그 (2) - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 17, 49.83333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 49.83333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 31, 34, '오늘 컨디션은 어떠신가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('fzv0B8IiiX0', 'WHAT? DOOR! | 힐링데이는 핑계고 : 운수 좋은 찜찜 DAY 1편 | EP.31 - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 18, 49.83333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 49.83333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 30, 33, '- 감사합니다 - 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('IFCdxZfbuD8', 'BEHINDOOR | ‘IF I SAY, I LOVE YOU’ Music show Behind | EP.44  - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 19, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 48, 53, 'DOOR! 1등 했습니다! 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('E12YrBlSraA', 'WHAT? DOOR!｜설날 이렇게 놀면 실례인가요?｜EP.8 - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 20, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 85, 90, '거지 그럼 밥을 어쩌자고 만들어요', '들어요', '듣다', 'I listen');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('45tKCbs73m8', 'Behind The DOOR | EP.25 | KOREA ON STAGE IN LONDON - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 21, 52.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 52.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 33, 38, 'YNEXTDOOR였습니다, 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('IFCdxZfbuD8', 'BEHINDOOR | ‘IF I SAY, I LOVE YOU’ Music show Behind | EP.44  - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 22, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 56, 60, '거든요? 계속 달려 나가야 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('tTHzZy5JBhI', '새벽부터 빡센 컴백 첫 주 아이돌의 갓생 | 엠카운트다운 첫방 브이로그 - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 23, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 36, 40, '준비하고 올게요, 좀 이따 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('qYBahH-pDDk', 'CAMCORDOOR｜빙글빙글 바삐 돌아가는 옆집 소년들의 나날들 아주 #돌아버리겠다 😵‍💫💫 #데뷔로그 (1) - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 24, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 213, 217, '록 하겠습니다 - 형은 안 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XuJ_tqltGKs', 'WITH BOYNEXTDOOR｜Playing Mafia Game☠️ - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 25, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 39, 43, '이 형? - 지금 재현이가 없어요', '없어요', '없다', 'There is not / I don''t have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pvrd3VGRd8M', 'BOYNEXTDOOR (보이넥스트도어) ''재미있어 보이넥'' EP.5', 'BOYNEXTDOOR', 'normal', 26, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 55, 59, '축하합니다, 여러분! - 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('wlX3oN_Daak', 'DOORVIEW｜아침에 일어나자마자 한 일은?🛌 SUNGHO’s view #일상 - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 27, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 155, 159, '거의 안대가 마스크가 되어있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3GSt5u854ek', 'BOYNEXTDOOR 5th EP [The Action] Album Unboxing - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 28, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 78, 82, '디테일이, 디테일이 굉장히 많아요', '많아요', '많다', 'There are many');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('KlJn3n_4imE', 'OPEN DOOR｜이런 생각을 해요 저는 지금 아름다운 시간을 보내고 있구나💭｜운학이의 감성 가득한 셀프 토크 타임🧸 - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 29, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 21, 25, '차분하게 진행을 해 보도록 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('I011fKkou1c', 'Behind The DOOR | EP.7 | 2023 Weverse Con Festival - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 30, 71.33333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 71.33333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 33, 36, '학아 업어주면 안 돼? - 싫어요', '싫어요', '싫다', 'I dislike it');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('lqfZ2fBvqZo', '[24/7📹LOG] 먹방, 코인 세탁소, 편의점까지 일본에서의 일상🍜ㅣTWS(투어스)', 'TWS', 'normal', 1, 21.666666666666668, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 21.666666666666668, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 83, 89, '여기다가 부어볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('DThRRTVaUQg', '2025 TWS TOUR ‘24/7:WITH:US’ IN JAPAN Behind #2', 'TWS', 'normal', 2, 23.142857142857142, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 23.142857142857142, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 19, 26, '이제 나고야부터 시작해', '시작해', '시작하다', 'Let''s start');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('CxkELjEEDvU', '[TWS:ERIES] TWS (투어스) ‘W KOREA'' 화보 촬영 비하인드', 'TWS', 'normal', 3, 25.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 25.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 52, 57, '날씨 요정인가 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('qdqIZVNJfxc', '2025 TWS TOUR ‘24/7:WITH:US’ IN JAPAN Behind #3', 'TWS', 'normal', 4, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18, 22, '이거 엄청 잘 나와요', '와요', '오다', 'I come');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('CxkELjEEDvU', '[TWS:ERIES] TWS (투어스) ‘W KOREA'' 화보 촬영 비하인드', 'TWS', 'normal', 5, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 34, 38, '-감사합니다 -감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-uB9o0jb_AQ', '[24/7📹LOG] 투어스가 휴일을 즐기는 법😎 | 여섯명의 6가지 하루 | TWS(투어스)', 'TWS', 'normal', 6, 35.857142857142854, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 35.857142857142854, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 36, 43, '쪽도 한번 돌아다녀 볼까 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('JvOiRyxDkas', '[24/7📹LOG] 상하이에서 훠궈를 먹으러 가요🥣ㅣTWS(투어스)', 'TWS', 'normal', 7, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 70, 74, '오늘 형 제 옷 봐봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('AHfw-E1W5Bs', '[TWS:ERIES] TWS (투어스) 치바 롯데 마린즈 시구&퍼포먼스 비하인드', 'TWS', 'normal', 8, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 68, 72, '방금 일본어를 배웠어요', '배웠어요', '배우다', 'I learned');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('qdqIZVNJfxc', '2025 TWS TOUR ‘24/7:WITH:US’ IN JAPAN Behind #3', 'TWS', 'normal', 9, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25, 31, '장히 센다이에서 유명하다고 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('oWLeS25s-5M', '[24/7📹LOG] 42들과 행복한 만남으로 채워진 오사카에서의 순간들💙 I TWS(투어스)', 'TWS', 'normal', 10, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15, 19, '두 번 만에 성공해 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('q9ocYCFKUsQ', '[TWS:ERIES] TWS (투어스) 2025 MBC 방송연예대상 비하인드', 'TWS', 'normal', 11, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 17, 20, '받을 수 있다고 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Ln8CUDylodE', '[TWS:ERIES] TWS (투어스) 일본 데뷔 비하인드', 'TWS', 'normal', 12, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 42, 46, '-이따가 만나요~ -이따 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('AHfw-E1W5Bs', '[TWS:ERIES] TWS (투어스) 치바 롯데 마린즈 시구&퍼포먼스 비하인드', 'TWS', 'normal', 13, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 51, 57, '그리고 오늘 공연 우리밖에 없어요', '없어요', '없다', 'There is not / I don''t have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('rsrXt2pY7c8', '[TWS:ERIES] TWS (투어스) ‘2025 Weverse Con Festival’ 비하인드', 'TWS', 'normal', 14, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 65, 69, '노래 1절까지 한번 해볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('rsrXt2pY7c8', '[TWS:ERIES] TWS (투어스) ‘2025 Weverse Con Festival’ 비하인드', 'TWS', 'normal', 15, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 159, 164, '한번 조정 해볼게요 -어 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xE7lxISFFmc', '2025 TWS TOUR ‘24/7:WITH:US’ IN JAPAN Behind #1', 'TWS', 'normal', 16, 46.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 46.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 31, 34, '영재 형 얼마나 잤어요', '잤어요', '자다', 'I slept');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('JvOiRyxDkas', '[24/7📹LOG] 상하이에서 훠궈를 먹으러 가요🥣ㅣTWS(투어스)', 'TWS', 'normal', 17, 46.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 46.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 85, 88, '어때요 지금 잘 나와요', '와요', '오다', 'I come');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('AHfw-E1W5Bs', '[TWS:ERIES] TWS (투어스) 치바 롯데 마린즈 시구&퍼포먼스 비하인드', 'TWS', 'normal', 18, 48.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 48.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 33, 39, '에 TWS를 초대 해주셔서 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('592GO4Y54Ew', '[TWS:ERIES] TWS (투어스) Open Mic 비하인드', 'TWS', 'normal', 19, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 80, 84, '! - 괜찮아요, 하나 더 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('lqfZ2fBvqZo', '[24/7📹LOG] 먹방, 코인 세탁소, 편의점까지 일본에서의 일상🍜ㅣTWS(투어스)', 'TWS', 'normal', 20, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10, 14, '찾았거든요? 그래서 사 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Lfx-o6qrtWQ', '[24/7📹LOG] 이번 TWS의 자유시간은 TWS (Tower, Walk, Shopping)ㅣTWS(투어스)', 'TWS', 'normal', 21, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 60, 64, '오늘 저는 딱히 계획이 없어요', '없어요', '없다', 'There is not / I don''t have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('HeI1lFFKm3Q', '[TWS:ERIES] TWS (투어스) ROCK IN JAPAN FESTIVAL 2025 비하인드', 'TWS', 'normal', 22, 53.66666666666667, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 53.66666666666667, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 36, 39, '개인 필 이번에 한번 볼게', '볼게', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('JvOiRyxDkas', '[24/7📹LOG] 상하이에서 훠궈를 먹으러 가요🥣ㅣTWS(투어스)', 'TWS', 'normal', 23, 53.66666666666667, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 53.66666666666667, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25, 28, '제가 어둡게 만들어 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7f4xPa1Wq6w', 'TWS (투어스) ‘Head Shoulders Knees Toes’ Recording Behind', 'TWS', 'normal', 24, 54.83333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 54.83333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 146, 149, '''터'' 말고 ''토우즈''로 갈게요', '갈게요', '가다', 'I will go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('P2teUNTEJJk', '2025 TWS TOUR ‘24/7:WITH:US’ IN JAPAN Behind #4', 'TWS', 'normal', 25, 54.83333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 54.83333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 124, 127, '2, 3, 4, 5조로 갈게요', '갈게요', '가다', 'I will go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('q9ocYCFKUsQ', '[TWS:ERIES] TWS (투어스) 2025 MBC 방송연예대상 비하인드', 'TWS', 'normal', 26, 55.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 55.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 110, 115, '시간 보내보도록 하겠습니다 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('J9z_xSxX7Xg', '[TWS:ERIES] TWS (투어스) ''はじめまして'' Special Film 비하인드', 'TWS', 'normal', 27, 58.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 58.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8, 12, '여름에 할머니 댁 오면 잤어요', '잤어요', '자다', 'I slept');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8s0VSMn7dkE', '[TWS:ERIES] TWS (투어스) 2025 뮤직뱅크 글로벌 페스티벌 IN JAPAN 비하인드', 'TWS', 'normal', 28, 62.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 62.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 44, 48, '잘한다고 와우하고 있는 게 멋있네요', '멋있네요', '멋있다', 'It is cool!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('592GO4Y54Ew', '[TWS:ERIES] TWS (투어스) Open Mic 비하인드', 'TWS', 'normal', 29, 66.33333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 66.33333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 24, 27, '많네 오늘? - 겹치는 게 많아요', '많아요', '많다', 'There are many');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Oyp3MY96Fms', '[TWS:ERIES] TWS (투어스) SBS MEGA 콘서트 비하인드', 'TWS', 'normal', 30, 71.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 71.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 30, 34, '또 우리 이렇게 큰 공연을 할 수 있어요', '할 수 있어요', '', 'I can do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('lT42ddE42UE', '[FM_1.24] 2023 K 글로벌 하트 드림 어워즈 비하인드', 'fromis_9', 'normal', 1, 25.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 25.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 11, 16, '제 TMI가 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Q_r5b8M08eo', '[FM_1.24] Singles 화보 촬영 비하인드', 'fromis_9', 'normal', 2, 27.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 27.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 104, 108, '죄송해요! 죄송해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('NgEQjHJR0pg', '[FM_1.24] 2023 대학 축제 비하인드', 'fromis_9', 'normal', 3, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 54, 59, '인하공전 축제에 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8kiSuEQvX4s', '[FM_1.24] 새롬 ‘let me Know K-POP!’ 첫 촬영 비하인드', 'fromis_9', 'normal', 4, 32.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 32.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 31, 38, 'K-POP!'' 첫 촬영하러 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1weqUr6iyG0', '[FM_1.24] 워터밤 인천 2024 비하인드', 'fromis_9', 'normal', 5, 35.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 35.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 64, 69, '여러분 오늘 진짜 심각해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('JU2FqEsTr78', '[FM_1.24] #menow 활동 마지막 대면 팬 사인회 비하인드', 'fromis_9', 'normal', 6, 35.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 35.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23, 27, '-저희 그러면 시작해', '시작해', '시작하다', 'Let''s start');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('oYZdVrNIbFg', '[FM_1.24] ‘Unlock My World’ 자켓 촬영 비하인드 #1', 'fromis_9', 'normal', 7, 35.857142857142854, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 35.857142857142854, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 33, 40, '지금 저의 자아가 담겨 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-rh1LW-XNAw', '[9_log] 채영 Vlog - 나만의 운동화 만들기👟💦', 'fromis_9', 'normal', 8, 35.857142857142854, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 35.857142857142854, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 12, 19, '가능한 디자인이 정해져 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('q4aqoMEXvc4', '[FM_1.24] ''롯데 레드 팬스티벌'' 비하인드', 'fromis_9', 'normal', 9, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25, 32, '아빠가 어제 전화로 날씨가 좋지', '좋지', '좋다', 'It is good, right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('dHmkXU4WEpA', '[FM_1.24] ''HIT THE STYLE'' CJ 온스타일 홈쇼핑 비하인드', 'fromis_9', 'normal', 10, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 116, 123, '가서 꼭 매진을 시키도록 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('oYZdVrNIbFg', '[FM_1.24] ‘Unlock My World’ 자켓 촬영 비하인드 #1', 'fromis_9', 'normal', 11, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 49, 56, 'k My World'' 많이 사랑해', '사랑해', '사랑하다', 'I love you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('skCkIMRwAeo', '[9_log] 하영 Vlog - 단발하러 가는 날💇‍♀️ (edited by 하영)', 'fromis_9', 'normal', 12, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 43, 47, '머리 자르려니까 아쉬워요', '쉬워요', '쉽다', 'It is easy');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('bBTcfI6vy3Q', '[FM_1.24] 2023 Weverse Con Festival 비하인드', 'fromis_9', 'normal', 13, 39.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 39.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 165, 171, '너무 깜짝 놀랐어요, 심쿵했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8kiSuEQvX4s', '[FM_1.24] 새롬 ‘let me Know K-POP!’ 첫 촬영 비하인드', 'fromis_9', 'normal', 14, 39.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 39.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 11, 17, '보이나요? 다리를 건너고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Plto28665RQ', '[FM_1.24] ''#menow'' 녹음 비하인드', 'fromis_9', 'normal', 15, 41.642857142857146, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 41.642857142857146, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 120, 127, '의 곡일 것 같다는 생각이 들었어요', '들었어요', '듣다', 'I listened');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('skCkIMRwAeo', '[9_log] 하영 Vlog - 단발하러 가는 날💇‍♀️ (edited by 하영)', 'fromis_9', 'normal', 16, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4, 10, '가 데뷔하고 첫 단발을 도전해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('dHmkXU4WEpA', '[FM_1.24] ''HIT THE STYLE'' CJ 온스타일 홈쇼핑 비하인드', 'fromis_9', 'normal', 17, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 103, 109, 'T THE STYLE''에 나왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('lT42ddE42UE', '[FM_1.24] 2023 K 글로벌 하트 드림 어워즈 비하인드', 'fromis_9', 'normal', 18, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 20, 24, '지금 옛날에 쓰던 거 써요', '써요', '쓰다', 'I write');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('TQQ9sr_r52w', 'fromis_9 (프로미스나인) ‘from’ RECORDING BEHIND', 'fromis_9', 'normal', 19, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 84, 87, '다음 ''특별했던'' 갈게요', '갈게요', '가다', 'I will go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('tOaI9imaVT0', '[9_log] 지선&서연 Vlog - 퍼스널 컬러🎨, 웜톤 저녁 식사🍝', 'fromis_9', 'normal', 20, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 66, 72, ', 실물이 훨씬 예쁘세요 -감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Plto28665RQ', '[FM_1.24] ''#menow'' 녹음 비하인드', 'fromis_9', 'normal', 21, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 32, 38, '위기가 되게 좋다는 생각을 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('f6xK2EphDoA', '[FM_1.24] ''Unlock My World'' 자켓 촬영 비하인드 #2', 'fromis_9', 'normal', 22, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 135, 140, '이번 사진도 너무 잘 나왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('h3xUXMJRIYw', '[FM_1.24] ''Supersonic'' 안무 연습 비하인드', 'fromis_9', 'normal', 23, 46.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 46.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 32, 38, '이 안무할 때 머리가 너무 힘들어요', '힘들어요', '힘들다', 'It is hard');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('bBTcfI6vy3Q', '[FM_1.24] 2023 Weverse Con Festival 비하인드', 'fromis_9', 'normal', 24, 46.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 46.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 126, 132, '끼면 다른 사람 말을 못 들어요', '들어요', '듣다', 'I listen');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('NgEQjHJR0pg', '[FM_1.24] 2023 대학 축제 비하인드', 'fromis_9', 'normal', 25, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 24, 29, '청색과 노란색이 어우러져 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('AX66GLNiSpE', '[FM_1.24] #wenow 팬 파티 현장 비하인드', 'fromis_9', 'normal', 26, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 44, 49, '멋있게 많이 보여드리도록 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('h3xUXMJRIYw', '[FM_1.24] ''Supersonic'' 안무 연습 비하인드', 'fromis_9', 'normal', 27, 49.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 49.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 24, 30, '야 하는데 목이 아직 자고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('TQQ9sr_r52w', 'fromis_9 (프로미스나인) ‘from’ RECORDING BEHIND', 'fromis_9', 'normal', 28, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 86, 90, '진성으로 가야 되나? - 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('NgEQjHJR0pg', '[FM_1.24] 2023 대학 축제 비하인드', 'fromis_9', 'normal', 29, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 47, 51, '진짜 저희 날씨 요정 맞나 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7IbaZSlJkPk', '[FM_1.24] ''#menow'' 활동기 비하인드 Part.1', 'fromis_9', 'normal', 30, 62.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 62.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 24, 28, '가 200명이나 들어온다고 들었어요', '들었어요', '듣다', 'I listened');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('55qd4q-DBis', 'ATEEZ(에이티즈) BY. HONGJOONG #6 - Lemon Tree (Original. Fools Garden)', 'ATEEZ', 'normal', 1, 16.11111111111111, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 16.11111111111111, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 120, 129, '외로움은 내게 좋지', '좋지', '좋다', 'It is good, right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('HdJYRz0AL4c', 'ATEEZ(에이티즈) 우영 ''Sagittarius'' | ATEEZ Present', 'ATEEZ', 'normal', 2, 27.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 27.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 100, 105, '잊혀진대도 널 향할게', '할게', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('zBkvRUsQR2o', '[Special Clip] ATEEZ(에이티즈) ‘Choose’', 'ATEEZ', 'normal', 3, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 115, 120, '내가 배경이 되어 줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GZZn4JwM7xY', 'ATEEZ(에이티즈) - MINGI in Off-White FW25 "STATE OF RESISTANCE"', 'ATEEZ', 'normal', 4, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 31, 35, '와주셔서 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('RN0qfrtBfzM', '[Special Clip] ATEEZ(에이티즈) 여상 ''정준일 - 안아줘''', 'ATEEZ', 'normal', 5, 30.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 30.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 234, 244, '난 너를 사랑해 난 너를 사랑해', '사랑해', '사랑하다', 'I love you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('kpwjvoDnGBE', 'ATEEZ(에이티즈) - HONGJOONG''s Dear Diary Moment with JACQUEMUS SS25 "LA CROISIÈRE"', 'ATEEZ', 'normal', 6, 39.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 39.714285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 24, 31, 'US 재킷을 리폼해본 적도 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7xIsS7pUoao', 'ATEEZ(에이티즈) 산 ''Creep'' | ATEEZ Present', 'ATEEZ', 'normal', 7, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 28, 34, '필요로 하는 것도 뭐든 다 줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('kpwjvoDnGBE', 'ATEEZ(에이티즈) - HONGJOONG''s Dear Diary Moment with JACQUEMUS SS25 "LA CROISIÈRE"', 'ATEEZ', 'normal', 8, 46.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 46.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14, 20, 'US 쇼에 초대받아서 너무 신났어요', '신났어요', '신나다', 'I was excited');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('kpwjvoDnGBE', 'ATEEZ(에이티즈) - HONGJOONG''s Dear Diary Moment with JACQUEMUS SS25 "LA CROISIÈRE"', 'ATEEZ', 'normal', 9, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 33, 38, '늘은 더욱 뜻깊은 날로 다가와요', '와요', '오다', 'I come');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GZZn4JwM7xY', 'ATEEZ(에이티즈) - MINGI in Off-White FW25 "STATE OF RESISTANCE"', 'ATEEZ', 'normal', 10, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 36, 40, '제 목소리가 좋지 않아 죄송해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('zfFgd8DCS_I', '[Special Clip] ATEEZ(에이티즈) ''My Way'' : where our journey began', 'ATEEZ', 'normal', 11, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 58, 62, '도 괜찮지만 오늘은 순수히 축하해', '축하해', '축하하다', 'Congrats');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xjzMgH_V16M', 'Red Velvet 레드벨벳 ''Feel My Rhythm'' Stage Video', 'Red Velvet', 'normal', 1, 27.5, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 27.5, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 46, 51, '지금부터 시작해 볼게', '볼게', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xjzMgH_V16M', 'Red Velvet 레드벨벳 ''Feel My Rhythm'' Stage Video', 'Red Velvet', 'normal', 2, 32.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 32.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 175, 181, 'Come on 또다시 시작해', '시작해', '시작하다', 'Let''s start');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('t0UEGX34BNw', '[Replay] SEULGI 슬기 ''Accidentally On Purpose'' Countdown Live', 'Red Velvet', 'normal', 3, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 127, 131, '준비를 하고 있었어요', '있었어요', '있다', 'There was / I had');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('SafyAWcgVXg', 'IRENE 아이린 ''Like A Flower'' Special Stagegraphy', 'Red Velvet', 'normal', 4, 35.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 35.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 320, 325, '버텨냈던 밤 모두 지켜줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('AFD-GdWgdfA', '[Replay] IRENE 아이린 ''Like A Flower'' Countdown Live', 'Red Velvet', 'normal', 5, 39.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 39.714285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 74, 81, '진행이 되려나 걱정도 되고 그렇지', '그렇지', '', 'Right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7tTQpfpM804', '[Replay] JOY 조이 ''From JOY, with Love'' Countdown Live', 'Red Velvet', 'normal', 6, 44.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 44.714285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 94, 101, '렇게 케이크 촛불을 불면서 시작해', '시작해', '시작하다', 'Let''s start');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PIsEm-0I-l4', 'DIY Candy Kits ASMR', 'RIIZE', 'normal', 1, 33.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 33.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25, 29, '이거 스시 젤리인가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('eb1KhLB1R8s', 'RIIZE 라이즈 ''Be My Next'' Special Video for BRIIZE', 'RIIZE', 'normal', 2, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 57, 63, '솔직한 모습을 보여주면 줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YwEijv4TGsc', 'Browsing around a Music Shop', 'RIIZE', 'normal', 3, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 24, 30, '들이 몇 개 다 몰려 있나 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('jYt9f6NIRfE', '[Replay] RIIZE''s BRIIZING NIGHT l RIIZE 1st Anniversary', 'RIIZE', 'normal', 4, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 57, 62, '제 본격적인 파자마 파티를 시작해', '시작해', '시작하다', 'Let''s start');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('jYt9f6NIRfE', '[Replay] RIIZE''s BRIIZING NIGHT l RIIZE 1st Anniversary', 'RIIZE', 'normal', 5, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 63, 67, '- 옷걸이 옷걸이 이쪽에 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('USXiTkNnqVw', '[ZBTV] 우리의 첫 뮤직드라마, 주인공은 과연 누구? | ZBTV Ep.12 | ZEROBASEONE', 'ZEROBASEONE', 'normal', 1, 32.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 32.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 117, 127, '요로 로댕 웅댕 아 판다는 뭐예요', '뭐예요', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('i0Bk73OEYq8', 'ZEROBASEONE (제로베이스원) ''Back to ZEROBASE'' Film', 'ZEROBASEONE', 'normal', 2, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 69, 75, '가장 눈부신 지금을 너에게 줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ZFshunkNuFI', 'xikers(싸이커스) - ‘Sunny Side’ Special Video for road𝓨', 'xikers', 'normal', 1, 21.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 21.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 267, 277, '사랑했고 사랑하고 사랑할게', '할게', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('sdfyzq_LqpA', 'xikers(싸이커스) ''고츠렛 xikers'' EP.04-2', 'xikers', 'normal', 2, 28.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 28.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18, 24, '- 감사합니다 - 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('nWxfJZsLJss', 'xikers(싸이커스) ''고츠렛 xikers'' EP.04-1', 'xikers', 'normal', 3, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 29, 33, '격자를 계속해줘야 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('sdfyzq_LqpA', 'xikers(싸이커스) ''고츠렛 xikers'' EP.04-2', 'xikers', 'normal', 4, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 96, 100, '희 포인트 안무를 해주셔야 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('R1sW6IIgPX0', '[KI-OFF] KIOF''s voice slowly reaches KISSY🎶 | [224] Recording Behind Part 1', 'KISS OF LIFE', 'normal', 1, 24.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 24.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10, 14, '''날'' 여기 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('iYvQu9tNquw', 'KISS OF LIFE (키스오브라이프) | KISS OF Radio📻 | Debut 2nd anniversary', 'KISS OF LIFE', 'normal', 2, 25.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 25.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 52, 57, '키씨! 2주년 축하해', '축하해', '축하하다', 'Congrats');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('G-9wkRZvXMw', '나띠의 Outfit 추천🛍️ 오늘 뭐 입띠? | 사심행 : Station NATTY🚉', 'KISS OF LIFE', 'normal', 3, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 88, 93, '제스처로 한번 해볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('CHBDRYMXtIs', 'KISS OF LIFE (키스오브라이프) ''Painting'' Behind the Scenes', 'KISS OF LIFE', 'normal', 4, 32.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 32.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 76, 81, '저는 개인적으로 좋았어요', '좋았어요', '좋다', 'It was good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('OIE7x6dia0Y', '[KI-OFF] KLIP-#48 | (≽^•˕•^≼) 띠냥이의 ''Classy Club'' 촬영 Behind', 'KISS OF LIFE', 'normal', 5, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8, 12, '얘 코에 점이 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('qsXMG3nvYKI', '[KIOF LOG] EP.14 This is so delicious! 🤤 | Haneul''s Japanese Convenience Store Food Review 🍮 | NE...', 'KISS OF LIFE', 'normal', 6, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 32, 36, '빨리 가보도록 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('OIE7x6dia0Y', '[KI-OFF] KLIP-#48 | (≽^•˕•^≼) 띠냥이의 ''Classy Club'' 촬영 Behind', 'KISS OF LIFE', 'normal', 7, 35.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 35.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25, 30, '한국 성수부터 이제 시작해', '시작해', '시작하다', 'Let''s start');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Jh6Ssc6YrG0', '환장(?)의 나라 키오프랜드🎡| 킷망진창 추석 보내기🌕 | KIOF in EVERLAND', 'KISS OF LIFE', 'normal', 8, 35.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 35.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 24, 29, '그냥 냅다 아침부터 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('iYvQu9tNquw', 'KISS OF LIFE (키스오브라이프) | KISS OF Radio📻 | Debut 2nd anniversary', 'KISS OF LIFE', 'normal', 9, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 36, 40, '이렇게 케이크도 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('m9gsQfCBQPI', '[KI-OFF] KLIP-#44 | 여러분의 청춘을 키오프와 함께!', 'KISS OF LIFE', 'normal', 10, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 3, 7, '오늘 키씨 웬일로 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('T3qZtvQ_e2A', '[KI-OFF] KLIP-#41 | 잊을 수 없는 Jay Park 선배님 콘서트🎤', 'KISS OF LIFE', 'normal', 11, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 158, 162, '더 열심히 준비해 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ze4H9j-RRic', '[KI-OFF] KLIP-#45 | Vogue 화보 "Dolce & Gabbana Beauty" 촬영 Behind', 'KISS OF LIFE', 'normal', 12, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 28, 32, '오늘 약간 트윈룩인가 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('qsXMG3nvYKI', '[KIOF LOG] EP.14 This is so delicious! 🤤 | Haneul''s Japanese Convenience Store Food Review 🍮 | NE...', 'KISS OF LIFE', 'normal', 13, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 46, 50, '맨날 맨날 오이오차 먹어요', '먹어요', '먹다', 'I eat');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('G-9wkRZvXMw', '나띠의 Outfit 추천🛍️ 오늘 뭐 입띠? | 사심행 : Station NATTY🚉', 'KISS OF LIFE', 'normal', 14, 46.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 46.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 68, 71, '제 사복을 입고 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('CHBDRYMXtIs', 'KISS OF LIFE (키스오브라이프) ''Painting'' Behind the Scenes', 'KISS OF LIFE', 'normal', 15, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 79, 84, '개인적으로 저는 되게 힘들었어요', '힘들었어요', '힘들다', 'It was hard');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('qsXMG3nvYKI', '[KIOF LOG] EP.14 This is so delicious! 🤤 | Haneul''s Japanese Convenience Store Food Review 🍮 | NE...', 'KISS OF LIFE', 'normal', 16, 52.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 52.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 54, 59, '일본에 오면 꼭 담는 게 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Jh6Ssc6YrG0', '환장(?)의 나라 키오프랜드🎡| 킷망진창 추석 보내기🌕 | KIOF in EVERLAND', 'KISS OF LIFE', 'normal', 17, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 38, 42, '다들 추석 잘 보내고 계신가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('6XvdnKuQzJU', '[KI-OFF] 궁전🏰으로 갈 수도 있는 일본 콘서트🎤 | Japan Debut Tour [Lucky Day] Concert Behind', 'KISS OF LIFE', 'normal', 18, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23, 27, 'ye'' 해볼 건데 인트로 가볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PmPLM71TS-0', '산타도 선물이 필요하긴 해🎁 | 크리스마스 선물 배달 대작전 | KIOFriday', 'KISS OF LIFE', 'normal', 19, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 64, 68, '인비테이션 카드 같은 게 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('F6Z4sorDTFM', '저와 함께 독일로 갑시다💜 | 샤오팅 VLOG | Kep1og 케플로그', 'Kep1er', 'normal', 1, 30.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 30.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 59, 64, '드디어 호텔 도착했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1Z1qnFM5jEs', 'Kep1us 케플러스 | EP.103 THE STAR 화보 Behind', 'Kep1er', 'normal', 2, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 198, 202, '저 오늘 네일 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('rFVi39iaiWg', '‘BUBBLE GUM’ Fanchant Guide | Kep1er 케플러', 'Kep1er', 'normal', 3, 35.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 35.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 155, 161, '히카루! 히에! 서영은! 사랑해', '사랑해', '사랑하다', 'I love you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Fjb0YSeKrE0', 'Kep1us 케플러스 | EP.102 2024 하이커 페스타 Behind', 'Kep1er', 'normal', 4, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15, 18, '날씨가 너무 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('h5foYkuRpkQ', 'ただいま、福岡！ | 히카루 VLOG | Kep1og 케플로그', 'Kep1er', 'normal', 5, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14, 18, '후쿠오카! 카루네 고향 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('32MVjmywQHs', 'Memories of FUKUOKA – 2025 Kep1er CONCERT TOUR [Into The Orbit : Kep1asia]', 'Kep1er', 'normal', 6, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 29, 33, '드디어 드디어 우리 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('4XLJ8gBoEDA', 'IN TOKYO Behind | Into The Orbit : Kep1asia', 'Kep1er', 'normal', 7, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 178, 181, '알아보실지 지켜볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('4XLJ8gBoEDA', 'IN TOKYO Behind | Into The Orbit : Kep1asia', 'Kep1er', 'normal', 8, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 187, 190, '아까부터 저것만 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('sCnTNX-d4-M', '히히즈의 독일 나들이🍑 | 휴닝바히에 VLOG | Kep1og 케플로그', 'Kep1er', 'normal', 9, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 122, 125, '뭔가 안정감이 들어요', '들어요', '듣다', 'I listen');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XurmdEajYi0', '오케이! 진짜 빠르게 갈게😎 | 도전! ''BUBBLE GUM'' 한 호흡 챌린지🌬️', 'Kep1er', 'normal', 10, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23, 26, '나는 내 거 읽어볼게', '볼게', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('F6Z4sorDTFM', '저와 함께 독일로 갑시다💜 | 샤오팅 VLOG | Kep1og 케플로그', 'Kep1er', 'normal', 11, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 77, 83, '행기에서 생각보다 많이 안 잤어요', '잤어요', '자다', 'I slept');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Y-u_60mBlCs', 'IN SEOUL Behind | Into The Orbit : Kep1asia', 'Kep1er', 'normal', 12, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 149, 153, '어디서 찍어도 잘 안 나와요', '와요', '오다', 'I come');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('FnWWCa5kt_8', '[BETWEEN FRIENDS&FOREVER] Behind | Kep1er 2026 Season’s greetings', 'Kep1er', 'normal', 13, 46.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 46.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 68, 71, '이런 안경 처음 써봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('FZNdpZwque8', '‘EBS FM 경청’ 막방 Behind | Kep1us 케플러스', 'Kep1er', 'normal', 14, 47.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 47.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 31, 35, '- 맞아요 영은이도! - 축하해', '축하해', '축하하다', 'Congrats');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Qq4nyjfwf4s', 'Part.0 | Into The Orbit : Kep1asia', 'Kep1er', 'normal', 15, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 29, 34, '세 팀으로도 나눠보고 싶긴 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('czcle4GuoTk', 'Kep1er 케플러 | ''TIPI-TAP'' New Connection Behind', 'Kep1er', 'normal', 16, 49.83333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 49.83333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 40, 43, '머리 스타일 하러 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('h5foYkuRpkQ', 'ただいま、福岡！ | 히카루 VLOG | Kep1og 케플로그', 'Kep1er', 'normal', 17, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 75, 80, '일 우리 집에 놀러 오기로 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('euZrlX81XoY', '산타가 거짓말을 해🎅⁉️ | 크리스마스를 부탁해🎄❄️', 'Kep1er', 'normal', 18, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 21, 25, '이렇게 꾸미고 오면 어떡해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('z95mL_ZUXU4', 'Kep1er 케플러 | Anson Seabra - Keep Your Head Up Princess (Cover by MASHIRO)', 'Kep1er', 'normal', 19, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 45, 50, '관이 떨어지기 전에 고개를 들어요', '들어요', '듣다', 'I listen');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('i_BBVsVBp6g', 'Memories of TAIPEI – 2025 Kep1er CONCERT TOUR [Into The Orbit : Kep1asia]', 'Kep1er', 'normal', 20, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 40, 44, '너무너무 행복합니다, 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xQNDhPUFd1k', '김채현 ‘넌 날 잊지 못할거야’ Recording Behind | Kep1us 케플러스', 'Kep1er', 'normal', 21, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 42, 46, '그러니까요 지금 좀 너무 슬퍼요', '슬퍼요', '슬프다', 'I am sad');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xQNDhPUFd1k', '김채현 ‘넌 날 잊지 못할거야’ Recording Behind | Kep1us 케플러스', 'Kep1er', 'normal', 22, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 98, 102, '한 음악에도''까지 다시 불러볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XurmdEajYi0', '오케이! 진짜 빠르게 갈게😎 | 도전! ''BUBBLE GUM'' 한 호흡 챌린지🌬️', 'Kep1er', 'normal', 23, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 7, 11, '을 때 내일 사각 턱 되어 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('WtSoS1ZSWpM', 'Have a great day🦁🌻 | 휴닝바히에 VLOG | Kep1og 케플로그', 'Kep1er', 'normal', 24, 62.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 62.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 26, 30, '너무 너무 너무 X 727 고마워요', '고마워요', '고맙다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QM6aVnwiS3I', '🍓🎵It’s our honor to be here! | Strawberry Music Festival 2025 Behind', 'WayV', 'normal', 1, 30.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 30.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 44, 48, '거울 한 번 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('i5GK8reHZu0', 'Stage Practice & Showcase Behind | WayV Showcase Tour ''On My Youth'' Behind Ep.4', 'WayV', 'normal', 2, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 127, 132, '<Phantom> 가볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-lOi9z9jGiU', '🎤🩰Want to do it better | 2023 Tencent Entertainment White Paper Gala Behind', 'WayV', 'normal', 3, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 110, 114, '저 무요신발 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('dXzWKztDBsk', 'WayV 威神V ''BIG BANDS (狂想曲)'' Recording Behind the Scenes', 'WayV', 'normal', 4, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 81, 85, '- 이거 되게 좋았어요', '좋았어요', '좋다', 'It was good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('r9ODjPwgOiI', '[Un Cut] Take #4 | ''Poppin'' Love (心动预告)'' Track Video Behind the Scenes', 'WayV', 'normal', 5, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 78, 82, '컷! 네 오케이 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_-Zlb_DsIc4', '📜Now everyone at the company knows🔍 | ‘BIG BANDS’ Recruiting Behind the Scenes', 'WayV', 'normal', 6, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10, 14, '이거 보여줄 수 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('duZ3Bw_Uvk0', 'Concert Setlist Meeting | 2025 WayV Concert Tour [NO Way OUT] Behind Ep.1', 'WayV', 'normal', 7, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15, 20, '이거는 편곡할 생각은 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('duZ3Bw_Uvk0', 'Concert Setlist Meeting | 2025 WayV Concert Tour [NO Way OUT] Behind Ep.1', 'WayV', 'normal', 8, 38.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 38.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 31, 35, '근데 <???> 좀... 모르겠어요', '모르겠어요', '모르다', 'I don''t know');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('A7b9QG7lNT0', '☺️💪今日も頑張ります! | SMTOWN LIVE 2025 in TOKYO Behind the Scenes', 'WayV', 'normal', 9, 39.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 39.714285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 57, 64, '이제 일본에서 투어한다고 들었어요', '들었어요', '듣다', 'I listened');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('u4WWso3wArk', '[Un Cut] Take #7 | ''On My Youth (遗憾效应)'' Recording Behind the Scenes', 'WayV', 'normal', 10, 41.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 41.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 83, 91, '아니면 그런 거 있을 수도 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Bc6N1WVBsic', 'Is this right…? | ''💫Time-Travel Rhapsody: Jazz Love Lost Beyond Time'' Behind the Scenes 🎬', 'WayV', 'normal', 11, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 202, 208, '오쥔이 수줍은 표정 지어야 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7QTVpK9HA3I', 'Custom Mic Unboxing | 2024 WayV CONCERT ''ON THE Way'' Behind Ep.2', 'WayV', 'normal', 12, 42.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 42.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23, 28, '뒤에 ''덕'' 자도 들어가 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('g1k222I3jhM', 'WayV 威神V ''第五个季节 (The Fifth Season)'' Live Clip Behind the Scenes', 'WayV', 'normal', 13, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 114, 120, 'Live Clip 촬영하고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7QTVpK9HA3I', 'Custom Mic Unboxing | 2024 WayV CONCERT ''ON THE Way'' Behind Ep.2', 'WayV', 'normal', 14, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6, 12, '- 취향이 조금 독특하다고 들었어요', '들었어요', '듣다', 'I listened');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('i5GK8reHZu0', 'Stage Practice & Showcase Behind | WayV Showcase Tour ''On My Youth'' Behind Ep.4', 'WayV', 'normal', 15, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 81, 87, '혹시 단체 사진 찍는 코너 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('aTSLMTSXpO0', '🏆Thanks to our WayZenNies! | Weibo Music Awards 2025 Behind', 'WayV', 'normal', 16, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 35, 40, '같이 이번 무대 잘 만들어봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1x1n1mWZgB0', '🥹I’m nervous… | ''BIG BANDS'' SHOWCASE Behind the Scenes', 'WayV', 'normal', 17, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 82, 87, 'BANDS" 한 번 더 해볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('dXzWKztDBsk', 'WayV 威神V ''BIG BANDS (狂想曲)'' Recording Behind the Scenes', 'WayV', 'normal', 18, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 35, 39, '거기만 그럼 한 번 해볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8ChthRTbsxM', '🧐Guess many WayZenNies are I(introverts) | Rising Land Behind', 'WayV', 'normal', 19, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 12, 17, '대부분은 리얼리티 공간에 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8ChthRTbsxM', '🧐Guess many WayZenNies are I(introverts) | Rising Land Behind', 'WayV', 'normal', 20, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 35, 40, '전체적인 녹화 시간이 좀 길어요', '길어요', '길다', 'It is long');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('u4WWso3wArk', '[Un Cut] Take #7 | ''On My Youth (遗憾效应)'' Recording Behind the Scenes', 'WayV', 'normal', 21, 49.83333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 49.83333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15, 18, '이거는 설명을 딱 해줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('SmFKf7DXYkc', 'WayV 威神V ''Ice Tea'' Recording Behind the Scenes', 'WayV', 'normal', 22, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 36, 41, '짝 더 세게 한 거 한번 해볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LJ3jbOtj-do', '2024, let’s go! ✊🔥｜ZJSTV 2023 2024 New Year’s Eve Gala Behind', 'WayV', 'normal', 23, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 68, 72, '아니면 이렇게 하셔도 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-lOi9z9jGiU', '🎤🩰Want to do it better | 2023 Tencent Entertainment White Paper Gala Behind', 'WayV', 'normal', 24, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 118, 123, 'te Paoer Gala에 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('4muCVVMHQ0M', '2026 WayV SEASON’S GREETINGS BEHIND', 'WayV', 'normal', 25, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 56, 60, '이번 콘셉트 너무 맘에 들어요', '들어요', '듣다', 'I listen');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7znumdEfRic', '💚💪We will make you be proud of us | QQ Music Dianfeng Awards Behind', 'WayV', 'normal', 26, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9, 13, '신체를 건강하게 할 수 있어요', '할 수 있어요', '', 'I can do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LJ3jbOtj-do', '2024, let’s go! ✊🔥｜ZJSTV 2023 2024 New Year’s Eve Gala Behind', 'WayV', 'normal', 27, 53.66666666666667, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 53.66666666666667, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 72, 75, 'level일 필요가 없어요', '없어요', '없다', 'There is not / I don''t have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7znumdEfRic', '💚💪We will make you be proud of us | QQ Music Dianfeng Awards Behind', 'WayV', 'normal', 28, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 30, 34, '기본적으로 다 한 구역에 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LJ3jbOtj-do', '2024, let’s go! ✊🔥｜ZJSTV 2023 2024 New Year’s Eve Gala Behind', 'WayV', 'normal', 29, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25, 29, 'ick Back> 한 번 가볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8ChthRTbsxM', '🧐Guess many WayZenNies are I(introverts) | Rising Land Behind', 'WayV', 'normal', 30, 61.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 61.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 19, 23, '끝나면 프로그램이 끝나는 건가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('11GqXEYZq4I', 'Watching something fun in the office | MINJU at work❤︎ | Kongguksu mukbang | ILLIT (아일릿) [PLAY-IT]', 'ILLIT', 'normal', 1, 25.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 25.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 61, 66, '브이로그 찍어볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('AcrbQBLLDRA', 'Speed Makeup ASMR 🐹 | Welcome to Guinea’s Makeup Shop! | ILLIT (아일릿)', 'ILLIT', 'normal', 2, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 142, 147, '일단 퍼프로 막 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('mCgrsOulijo', 'Wonhee’s Beauty Item ASMR💖 | Current Favorite Beauty Items | ILLIT (아일릿)', 'ILLIT', 'normal', 3, 32.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 32.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 179, 185, '붉은 메이크업 할 때 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Dbhya_sWNTA', 'ILLIT (아일릿) ''I’LL LIKE IT!'' EP.4 큰 거 왔다ㄷㄷ 초블록(?)버스터 미션 대작전', 'ILLIT', 'normal', 4, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 69, 74, '우리 몇 시에 일어나야 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('x5TzAyA6V5o', 'ILLIT (아일릿) ''I’LL LIKE IT! 2'' EP.2 Mascot Daejeon ✷ but with a liar in the mix...', 'ILLIT', 'normal', 5, 41.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 41.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 64, 68, '- 이거 로하가 잘하는데', '잘하는데', '', 'You are good at it');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('t_cHqq39FOY', 'Find the hamster hidden among the cats🔎 l ILLIT (아일릿) Find the Billyeoon Goyangi', 'ILLIT', 'normal', 6, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 77, 81, '저 하고 싶은 벌칙 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('x5TzAyA6V5o', 'ILLIT (아일릿) ''I’LL LIKE IT! 2'' EP.2 Mascot Daejeon ✷ but with a liar in the mix...', 'ILLIT', 'normal', 7, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 45, 49, '저희가 매시업을 좀 잘해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('aj9wCuTPqnk', 'ILLIT (아일릿) ‘Magnetic’ Fanchant Guide', 'ILLIT', 'normal', 8, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 205, 209, '열심히 따라 해 주셔야 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('andT_5w_a3w', 'Zombie Apocalypse Roleplay with YUNAH&MOKAㅣCherish (My Love) Music Show BackstageㅣILLIT [BESIDE-IT]', 'ILLIT', 'normal', 9, 61.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 61.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 40, 44, '소리 크게 내면 좀비가 쫓아와요', '와요', '오다', 'I come');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('EXt2UBLt7oI', '(ENG SUB) 영어 알려주러 왔다가 기빨리고 간 k-코미디언 (with. Kevin 성원킴)', 'QWER', 'normal', 1, 34.5, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 34.5, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 19, 22, '아뇨, 머리 길어요', '길어요', '길다', 'It is long');
END $$;

-- Multi-Stage Extraction Data


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('cHc5uHoZZkI_9', 'Multi-Stage 9', 'aespa', 'normal', 9, 23.833333333333332, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 23.833333333333332, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 233, 239, '무대도 엄청나게 신나', '신나', '신나다', 'I am excited');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('cdBWTfXTwnU_10', 'Multi-Stage 10', 'aespa', 'normal', 10, 25.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 25.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 162, 167, '역사시간에 배웠어요', '배웠어요', '배우다', 'I learned');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hmZbsfel4jM_11', 'Multi-Stage 11', 'aespa', 'normal', 11, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 172, 176, '그리고 스웨그 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hmZbsfel4jM_12', 'Multi-Stage 12', 'aespa', 'normal', 12, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 369, 373, 'ae-지젤을 만나게 됐다', '됐다', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('cdBWTfXTwnU_13', 'Multi-Stage 13', 'aespa', 'normal', 13, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 183, 188, '옆에 있던 사람이 "이거 예쁘네요', '예쁘네요', '예쁘다', 'It is pretty!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('cHc5uHoZZkI_14', 'Multi-Stage 14', 'aespa', 'normal', 14, 49.83333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 49.83333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 211, 214, '생각보다 난이도가 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hmZbsfel4jM_15', 'Multi-Stage 15', 'aespa', 'normal', 15, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 179, 184, '갑자기 영어 해서 너무 멋있었어요', '있었어요', '있다', 'There was / I had');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('cdBWTfXTwnU_16', 'Multi-Stage 16', 'aespa', 'normal', 16, 55.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 55.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 168, 173, '처음 보면은 계속 이러고 있었어요', '있었어요', '있다', 'There was / I had');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('cdBWTfXTwnU_17', 'Multi-Stage 17', 'aespa', 'normal', 17, 74.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 74.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 75, 78, 'pa에 대하여 좋은 얘기들 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('KW-jSV1P8WQ_11', 'Multi-Stage 11', 'Stray Kids', 'normal', 11, 21.214285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 21.214285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 28, 35, '일단 여기에서 말할게', '할게', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VmyDXNsWB8c_12', 'Multi-Stage 12', 'Stray Kids', 'normal', 12, 27.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 27.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 165, 170, '상 받은 거 축하해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hJiFSgGvQs0_13', 'Multi-Stage 13', 'Stray Kids', 'normal', 13, 32.388888888888886, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 32.388888888888886, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 356, 365, '녹음할 때 내가 이렇게 닫아줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VmyDXNsWB8c_14', 'Multi-Stage 14', 'Stray Kids', 'normal', 14, 35.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 35.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 17, 27, '자리에 함께해 주셔서 정말 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('bVtw8ndiuO0_15', 'Multi-Stage 15', 'Stray Kids', 'normal', 15, 35.857142857142854, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 35.857142857142854, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 76, 83, '쌓인 지친 하루들 다 털어줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hJiFSgGvQs0_16', 'Multi-Stage 16', 'Stray Kids', 'normal', 16, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 190, 194, '안녕하세요 이사 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QsbpzuViT0Y_17', 'Multi-Stage 17', 'Stray Kids', 'normal', 17, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 86, 90, '내 마음을 그대에게 줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VmyDXNsWB8c_18', 'Multi-Stage 18', 'Stray Kids', 'normal', 18, 41.642857142857146, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 41.642857142857146, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 123, 130, 'AY가 만들어준 우승 정말 고마워요', '고마워요', '고맙다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hJiFSgGvQs0_19', 'Multi-Stage 19', 'Stray Kids', 'normal', 19, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 208, 214, '낯선데 사실 원래 숙소보다 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('b4zq-KJLUf0_20', 'Multi-Stage 20', 'Stray Kids', 'normal', 20, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 73, 78, '사랑을 듬뿍 주겠다고 약속할게', '할게', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XJytuR1MGcE_21', 'Multi-Stage 21', 'Stray Kids', 'normal', 21, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 186, 190, 'ah ''JJAM'' - 많이 사랑해', '사랑해', '사랑하다', 'I love you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QsbpzuViT0Y_22', 'Multi-Stage 22', 'Stray Kids', 'normal', 22, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 56, 60, '가 우리를 위해 최선을 다해볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('axpxtlwRwzA_12', 'Multi-Stage 12', 'NCT 127', 'normal', 12, 22.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 22.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 148, 153, '- 에이, 이게 뭐야', '뭐야', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-LOr8PXw5y4_13', 'Multi-Stage 13', 'NCT 127', 'normal', 13, 25.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 25.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 93, 98, '- 옳다구나. - 그렇지', '그렇지', '', 'Right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-LOr8PXw5y4_14', 'Multi-Stage 14', 'NCT 127', 'normal', 14, 27.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 27.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 159, 164, '이 뒤에 칼이 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('axpxtlwRwzA_15', 'Multi-Stage 15', 'NCT 127', 'normal', 15, 30.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 30.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 11, 14, '- 이쪽! - 그렇지', '그렇지', '', 'Right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('sUja5bVmEFE_16', 'Multi-Stage 16', 'NCT 127', 'normal', 16, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 106, 110, '숨을 크게 들이마셔요', '마셔요', '마시다', 'I drink');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-LOr8PXw5y4_17', 'Multi-Stage 17', 'NCT 127', 'normal', 17, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 165, 169, '희로애락 중 어떤 건가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('cEqXdlor2Jg_18', 'Multi-Stage 18', 'NCT 127', 'normal', 18, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 45, 51, '좀 길지만 이렇게 말하고 싶어요', '하고 싶어요', '', 'I want to do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pGdL_NkmuJw_19', 'Multi-Stage 19', 'NCT 127', 'normal', 19, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18, 23, '127 WALK이라고 되어있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('B-5wDgBNTU0_20', 'Multi-Stage 20', 'NCT 127', 'normal', 20, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 119, 124, '래 - 제가 우리를 구하고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('B-5wDgBNTU0_21', 'Multi-Stage 21', 'NCT 127', 'normal', 21, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 222, 227, '라는 뒤쪽인데 뒷모습 연출인가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pGdL_NkmuJw_22', 'Multi-Stage 22', 'NCT 127', 'normal', 22, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6, 11, '께 오늘의 룩을 보여드리러 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('B-5wDgBNTU0_23', 'Multi-Stage 23', 'NCT 127', 'normal', 23, 51.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 51.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 12, 15, '- 야! - 뭐야, 뭐야, 뭐야', '뭐야', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('sUja5bVmEFE_24', 'Multi-Stage 24', 'NCT 127', 'normal', 24, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14, 18, '우리에겐 더 큰 의미가 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7Ci6PAuyuWk_25', 'Multi-Stage 25', 'NCT 127', 'normal', 25, 53.66666666666667, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 53.66666666666667, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 141, 144, '각자 또 이름이 있나 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('KG9uQSY8etk_26', 'Multi-Stage 26', 'NCT 127', 'normal', 26, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 79, 83, '니까 담요도 많이 가져가야 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-LOr8PXw5y4_27', 'Multi-Stage 27', 'NCT 127', 'normal', 27, 66.33333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 66.33333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 240, 243, '이런 식으로 한번만 더 갈게요', '갈게요', '가다', 'I will go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7Ci6PAuyuWk_28', 'Multi-Stage 28', 'NCT 127', 'normal', 28, 70.16666666666667, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 70.16666666666667, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 297, 300, '진짜 요즘에 근황 너무 좋았어요', '좋았어요', '좋다', 'It was good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7OGconGouyQ_14', 'Multi-Stage 14', 'NCT DREAM', 'normal', 14, 35.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 35.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 68, 73, '너무 오랜만이니까 좋았어요', '좋았어요', '좋다', 'It was good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VpymB3S3O_s_15', 'Multi-Stage 15', 'NCT DREAM', 'normal', 15, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 53, 57, '축구는 이길 수 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3S2a84vJkG4_16', 'Multi-Stage 16', 'NCT DREAM', 'normal', 16, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 204, 209, '약속은 잘 지키시는 편인가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XnhHwkHO9AY_17', 'Multi-Stage 17', 'NCT DREAM', 'normal', 17, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 248, 252, '여러분 모두 한 팀인가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VpymB3S3O_s_18', 'Multi-Stage 18', 'NCT DREAM', 'normal', 18, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 212, 216, '자 이제 어떻게 할 건가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-DAD8rQio30_19', 'Multi-Stage 19', 'NCT DREAM', 'normal', 19, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 58, 62, '만들려고 하는 그게 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XnhHwkHO9AY_20', 'Multi-Stage 20', 'NCT DREAM', 'normal', 20, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 452, 456, '손은 그대로 두는 게 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XnhHwkHO9AY_21', 'Multi-Stage 21', 'NCT DREAM', 'normal', 21, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 133, 138, '어가 나 여기서 버스 타고 갈게', '갈게', '가다', 'I will go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XnhHwkHO9AY_22', 'Multi-Stage 22', 'NCT DREAM', 'normal', 22, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 470, 475, '요, 너무 힘들게 갈 필요 없어요', '없어요', '없다', 'There is not / I don''t have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VpymB3S3O_s_23', 'Multi-Stage 23', 'NCT DREAM', 'normal', 23, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 161, 165, '안에서 하면 1점으로 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VpymB3S3O_s_24', 'Multi-Stage 24', 'NCT DREAM', 'normal', 24, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 163, 167, '전, 후반 5분씩 나눠서 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VpymB3S3O_s_25', 'Multi-Stage 25', 'NCT DREAM', 'normal', 25, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 151, 155, '자체적으로 규칙을 만들까 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VpymB3S3O_s_26', 'Multi-Stage 26', 'NCT DREAM', 'normal', 26, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 155, 159, '점으로 할까 봐요! - 네 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-DAD8rQio30_27', 'Multi-Stage 27', 'NCT DREAM', 'normal', 27, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 111, 115, '항상 그런 파이팅을 하고 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-DAD8rQio30_28', 'Multi-Stage 28', 'NCT DREAM', 'normal', 28, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 304, 308, '여러분, 시청해주셔서 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-DAD8rQio30_29', 'Multi-Stage 29', 'NCT DREAM', 'normal', 29, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 182, 186, '를 그렇게 많이 신경을 안 써요', '써요', '쓰다', 'I write');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VpymB3S3O_s_30', 'Multi-Stage 30', 'NCT DREAM', 'normal', 30, 61.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 61.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 133, 137, '나 바로 - 지성이가 더 잘하는데', '잘하는데', '', 'You are good at it');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3487g9Ua9lo_6', 'Multi-Stage 6', 'ITZY', 'normal', 6, 29.166666666666668, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 29.166666666666668, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 64, 73, 'w, I’m 너의 밤이 되어줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('x8G8exSi8TM_7', 'Multi-Stage 7', 'ITZY', 'normal', 7, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23, 27, '아, 잠깐만요! 잠깐만요', '잠깐만요', '', 'Wait a moment');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('x0dObH-qePs_8', 'Multi-Stage 8', 'ITZY', 'normal', 8, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 245, 252, '느낌도 나고 비트도 굉장히 신나', '신나', '신나다', 'I am excited');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('x8G8exSi8TM_9', 'Multi-Stage 9', 'ITZY', 'normal', 9, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 144, 147, '자, 언니가 봉인해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('x0dObH-qePs_10', 'Multi-Stage 10', 'ITZY', 'normal', 10, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 122, 128, '앨범을 발매한 소감이 어떠신가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('06sScdfVbzk_11', 'Multi-Stage 11', 'ITZY', 'normal', 11, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15, 21, '음악과 무대를 응원해주시고 사랑해', '사랑해', '사랑하다', 'I love you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('x0dObH-qePs_12', 'Multi-Stage 12', 'ITZY', 'normal', 12, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 223, 228, '굉장히 좋아하실 거라 생각해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('x0dObH-qePs_13', 'Multi-Stage 13', 'ITZY', 'normal', 13, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 242, 247, '애곡이 될 거야’ 라고 생각했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('x0dObH-qePs_14', 'Multi-Stage 14', 'ITZY', 'normal', 14, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 63, 68, '하세요, 채령입니다 만나서 반가워요', '반가워요', '반갑다', 'Nice to meet you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('06sScdfVbzk_15', 'Multi-Stage 15', 'ITZY', 'normal', 15, 52.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 52.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 34, 39, '지금까지 ITZY였습니다! 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('x0dObH-qePs_16', 'Multi-Stage 16', 'ITZY', 'normal', 16, 58.66666666666667, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 58.66666666666667, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 116, 119, '저부터 할까요? - 네, 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LG_dTjivZx8_17', 'Multi-Stage 17', 'TWICE', 'normal', 17, 23.833333333333332, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 23.833333333333332, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 57, 63, '그래서 너무 행복해요', '행복해요', '행복하다', 'I am happy');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('eMpMgEyp7yg_18', 'Multi-Stage 18', 'TWICE', 'normal', 18, 26.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 26.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2, 8, '못된 말을 잘 못 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LG_dTjivZx8_19', 'Multi-Stage 19', 'TWICE', 'normal', 19, 27.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 27.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 511, 516, '그게 조금 힘들었어요', '힘들었어요', '힘들다', 'It was hard');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3zQraeuNbK8_20', 'Multi-Stage 20', 'TWICE', 'normal', 20, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 42, 46, '따뜻하게 입고 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('t4eIRbA4zw8_21', 'Multi-Stage 21', 'TWICE', 'normal', 21, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 44, 48, '그런 트와이스도 좋지', '좋지', '좋다', 'It is good, right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LG_dTjivZx8_22', 'Multi-Stage 22', 'TWICE', 'normal', 22, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 144, 151, '동안 지효랑 한마디도 안 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LG_dTjivZx8_23', 'Multi-Stage 23', 'TWICE', 'normal', 23, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 304, 310, '왔을 때 그날도 되게 정신없었어요', '없었어요', '없다', 'There was not');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LG_dTjivZx8_24', 'Multi-Stage 24', 'TWICE', 'normal', 24, 46.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 46.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 303, 306, '진짜 잊을 수가 없어요', '없어요', '없다', 'There is not / I don''t have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LG_dTjivZx8_25', 'Multi-Stage 25', 'TWICE', 'normal', 25, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 459, 464, '달에 1번씩 월말 평가가 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LG_dTjivZx8_26', 'Multi-Stage 26', 'TWICE', 'normal', 26, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 575, 580, '생각이 저도 모르게 있었나 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3zQraeuNbK8_27', 'Multi-Stage 27', 'TWICE', 'normal', 27, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 245, 250, '길었을 텐데 짧게 계셔서 아쉬워요', '쉬워요', '쉽다', 'It is easy');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3zQraeuNbK8_28', 'Multi-Stage 28', 'TWICE', 'normal', 28, 52.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 52.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 274, 279, '멋있게, 반응 좋게 하고 가고 싶어요', '가고 싶어요', '', 'I want to go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3zQraeuNbK8_29', 'Multi-Stage 29', 'TWICE', 'normal', 29, 57.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 57.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 138, 141, 'HIGH를 한번 올려 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3zQraeuNbK8_30', 'Multi-Stage 30', 'TWICE', 'normal', 30, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 261, 265, '우리 Nerdy미로 가기로 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pVAzjbBu4ek_12', 'Multi-Stage 12', 'NMIXX', 'normal', 12, 27.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 27.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 251, 255, '-메추리알이야 뭐야', '뭐야', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pVAzjbBu4ek_13', 'Multi-Stage 13', 'NMIXX', 'normal', 13, 32.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 32.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 228, 233, '-맞아 요즘 소파가 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0n68a3NN9kY_14', 'Multi-Stage 14', 'NMIXX', 'normal', 14, 34.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 34.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 42, 45, '- 좋아요~ - 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('WSrYSNpBQ0A_15', 'Multi-Stage 15', 'NMIXX', 'normal', 15, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 213, 217, '여러분 저 1등 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('tDB57NV6tbI_16', 'Multi-Stage 16', 'NMIXX', 'normal', 16, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 223, 230, '번 연도 안에 꼭 데리고 가줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pVAzjbBu4ek_17', 'Multi-Stage 17', 'NMIXX', 'normal', 17, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 56, 59, '-아는 일본어 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pVAzjbBu4ek_18', 'Multi-Stage 18', 'NMIXX', 'normal', 18, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 256, 259, '-저 오이 잘 먹어요', '먹어요', '먹다', 'I eat');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pVAzjbBu4ek_19', 'Multi-Stage 19', 'NMIXX', 'normal', 19, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 254, 258, '-배이 언니 오이 좋아해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0n68a3NN9kY_20', 'Multi-Stage 20', 'NMIXX', 'normal', 20, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 19, 23, 'LILY: 저 자신 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('WSrYSNpBQ0A_21', 'Multi-Stage 21', 'NMIXX', 'normal', 21, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14, 17, '호박 고구마가 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('WSrYSNpBQ0A_22', 'Multi-Stage 22', 'NMIXX', 'normal', 22, 46.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 46.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 345, 348, '언니 왜 먼저 출발해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('tDB57NV6tbI_23', 'Multi-Stage 23', 'NMIXX', 'normal', 23, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25, 30, '은 모아서 찻잔을 감싸기만 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('tDB57NV6tbI_24', 'Multi-Stage 24', 'NMIXX', 'normal', 24, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22, 27, '뜨거울 때 손을 데일 수가 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0n68a3NN9kY_25', 'Multi-Stage 25', 'NMIXX', 'normal', 25, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15, 19, 'Y: 맞히기 게임을 하기로 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pVAzjbBu4ek_26', 'Multi-Stage 26', 'NMIXX', 'normal', 26, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 90, 94, '제가 이거 하나만 정정하고 갈게요', '갈게요', '가다', 'I will go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Fs65FzqUQLk_27', 'Multi-Stage 27', 'NMIXX', 'normal', 27, 61.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 61.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 49, 53, '-있었는데 어디 갔는지 모르겠어요', '모르겠어요', '모르다', 'I don''t know');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0n68a3NN9kY_28', 'Multi-Stage 28', 'NMIXX', 'normal', 28, 70.16666666666667, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 70.16666666666667, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 28, 31, 'AEWON: 그거 되게 잘 들어요', '들어요', '듣다', 'I listen');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0n68a3NN9kY_29', 'Multi-Stage 29', 'NMIXX', 'normal', 29, 74.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 74.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9, 12, '겨울을 맞이한 엔믹스가 찾아왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0n68a3NN9kY_30', 'Multi-Stage 30', 'NMIXX', 'normal', 30, 93.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 93.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 37, 39, 'UJIN: 맞아요 엄청나게 신나', '신나', '신나다', 'I am excited');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('55qd4q-DBis_12', 'Multi-Stage 12', 'ATEEZ', 'normal', 12, 16.11111111111111, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 16.11111111111111, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 120, 129, '외로움은 내게 좋지', '좋지', '좋다', 'It is good, right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('zBkvRUsQR2o_13', 'Multi-Stage 13', 'ATEEZ', 'normal', 13, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 115, 120, '내가 배경이 되어 줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GZZn4JwM7xY_14', 'Multi-Stage 14', 'ATEEZ', 'normal', 14, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 31, 35, '와주셔서 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GZZn4JwM7xY_15', 'Multi-Stage 15', 'ATEEZ', 'normal', 15, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 43, 48, '한데요, 괜찮아요. 정말 행복해요', '행복해요', '행복하다', 'I am happy');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GZZn4JwM7xY_16', 'Multi-Stage 16', 'ATEEZ', 'normal', 16, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 36, 40, '제 목소리가 좋지 않아 죄송해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YwEijv4TGsc_6', 'Multi-Stage 6', 'RIIZE', 'normal', 6, 27.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 27.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 306, 311, '''앤톤 했다''라고 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PIsEm-0I-l4_7', 'Multi-Stage 7', 'RIIZE', 'normal', 7, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25, 29, '이거 스시 젤리인가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YwEijv4TGsc_8', 'Multi-Stage 8', 'RIIZE', 'normal', 8, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 24, 30, '들이 몇 개 다 몰려 있나 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YwEijv4TGsc_9', 'Multi-Stage 9', 'RIIZE', 'normal', 9, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 284, 287, '여우와 두루미야 뭐야', '뭐야', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PIsEm-0I-l4_10', 'Multi-Stage 10', 'RIIZE', 'normal', 10, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 382, 387, '게 좀 시간이 지나야 하나 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PIsEm-0I-l4_11', 'Multi-Stage 11', 'RIIZE', 'normal', 11, 55.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 55.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 131, 136, '이건 어떻게 사용하는 건지 모르겠어요', '모르겠어요', '모르다', 'I don''t know');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('USXiTkNnqVw_3', 'Multi-Stage 3', 'ZEROBASEONE', 'normal', 3, 21.214285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 21.214285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 335, 342, '제거요건 안 나왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('USXiTkNnqVw_4', 'Multi-Stage 4', 'ZEROBASEONE', 'normal', 4, 32.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 32.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 117, 127, '요로 로댕 웅댕 아 판다는 뭐예요', '뭐예요', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('USXiTkNnqVw_5', 'Multi-Stage 5', 'ZEROBASEONE', 'normal', 5, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 259, 266, '할은 거기서 좀비를 잘시나 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('USXiTkNnqVw_6', 'Multi-Stage 6', 'ZEROBASEONE', 'normal', 6, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 146, 152, '타 최근 재밌게 본 드라마 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('USXiTkNnqVw_7', 'Multi-Stage 7', 'ZEROBASEONE', 'normal', 7, 48.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 48.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 137, 143, '아 판다가 뭐냐 손 될게요 모르겠어요', '모르겠어요', '모르다', 'I don''t know');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ZFshunkNuFI_5', 'Multi-Stage 5', 'xikers', 'normal', 5, 21.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 21.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 267, 277, '사랑했고 사랑하고 사랑할게', '할게', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('iYvQu9tNquw_20', 'Multi-Stage 20', 'KISS OF LIFE', 'normal', 20, 25.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 25.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 52, 57, '키씨! 2주년 축하해', '축하해', '축하하다', 'Congrats');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('G-9wkRZvXMw_21', 'Multi-Stage 21', 'KISS OF LIFE', 'normal', 21, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 88, 93, '제스처로 한번 해볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Jh6Ssc6YrG0_22', 'Multi-Stage 22', 'KISS OF LIFE', 'normal', 22, 35.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 35.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 24, 29, '그냥 냅다 아침부터 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('iYvQu9tNquw_23', 'Multi-Stage 23', 'KISS OF LIFE', 'normal', 23, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 36, 40, '이렇게 케이크도 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('G-9wkRZvXMw_24', 'Multi-Stage 24', 'KISS OF LIFE', 'normal', 24, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 214, 218, '진짜 사이즈 별로 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('G-9wkRZvXMw_25', 'Multi-Stage 25', 'KISS OF LIFE', 'normal', 25, 40.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 40.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 211, 216, '저는 ''링 귀''를 너무 사랑해', '사랑해', '사랑하다', 'I love you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('iYvQu9tNquw_26', 'Multi-Stage 26', 'KISS OF LIFE', 'normal', 26, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 162, 168, '생각나는 킬링 파트를 뽑아왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('iYvQu9tNquw_27', 'Multi-Stage 27', 'KISS OF LIFE', 'normal', 27, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 358, 364, '디의 음색을 진짜 너무 좋아해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('G-9wkRZvXMw_28', 'Multi-Stage 28', 'KISS OF LIFE', 'normal', 28, 46.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 46.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 68, 71, '제 사복을 입고 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Jh6Ssc6YrG0_29', 'Multi-Stage 29', 'KISS OF LIFE', 'normal', 29, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 38, 42, '다들 추석 잘 보내고 계신가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('iYvQu9tNquw_30', 'Multi-Stage 30', 'KISS OF LIFE', 'normal', 30, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 141, 145, '아웃사이더 선배님인 줄 알았어요', '줄 알았어요', '', 'I thought');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('F6Z4sorDTFM_25', 'Multi-Stage 25', 'Kep1er', 'normal', 25, 24.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 24.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 194, 198, '- 멈춰 - 좋은데', '좋은데', '', 'It is good though');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('F6Z4sorDTFM_26', 'Multi-Stage 26', 'Kep1er', 'normal', 26, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 59, 64, '드디어 호텔 도착했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('F6Z4sorDTFM_27', 'Multi-Stage 27', 'Kep1er', 'normal', 27, 32.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 32.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 285, 291, '지금 드디어 호텔 들어왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('F6Z4sorDTFM_28', 'Multi-Stage 28', 'Kep1er', 'normal', 28, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 89, 95, '30분 후에 연습하러 가야 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('F6Z4sorDTFM_29', 'Multi-Stage 29', 'Kep1er', 'normal', 29, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 77, 83, '행기에서 생각보다 많이 안 잤어요', '잤어요', '자다', 'I slept');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('F6Z4sorDTFM_30', 'Multi-Stage 30', 'Kep1er', 'normal', 30, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 307, 311, '정신이 나갔어요, 영혼이 나갔어요', '갔어요', '가다', 'I went');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('11GqXEYZq4I_10', 'Multi-Stage 10', 'ILLIT', 'normal', 10, 25.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 25.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 61, 66, '브이로그 찍어볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('AcrbQBLLDRA_11', 'Multi-Stage 11', 'ILLIT', 'normal', 11, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 142, 147, '일단 퍼프로 막 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('mCgrsOulijo_12', 'Multi-Stage 12', 'ILLIT', 'normal', 12, 32.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 32.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 179, 185, '붉은 메이크업 할 때 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('11GqXEYZq4I_13', 'Multi-Stage 13', 'ILLIT', 'normal', 13, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 148, 152, '- 진짜요? - 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('11GqXEYZq4I_14', 'Multi-Stage 14', 'ILLIT', 'normal', 14, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 154, 158, '저도 너무 먹고 싶어요', '먹고 싶어요', '', 'I want to eat');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('t_cHqq39FOY_15', 'Multi-Stage 15', 'ILLIT', 'normal', 15, 40.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 40.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 207, 212, '''빌려온 고양이 '' 가사인가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('mCgrsOulijo_16', 'Multi-Stage 16', 'ILLIT', 'normal', 16, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 319, 323, '립 라이너를 이걸로 썼어요', '썼어요', '쓰다', 'I wrote');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('t_cHqq39FOY_17', 'Multi-Stage 17', 'ILLIT', 'normal', 17, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 77, 81, '저 하고 싶은 벌칙 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('11GqXEYZq4I_18', 'Multi-Stage 18', 'ILLIT', 'normal', 18, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 86, 90, '받아들이는 자세 아주 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('aj9wCuTPqnk_19', 'Multi-Stage 19', 'ILLIT', 'normal', 19, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 205, 209, '열심히 따라 해 주셔야 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('AcrbQBLLDRA_20', 'Multi-Stage 20', 'ILLIT', 'normal', 20, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 467, 472, '게 시야가 조금 방해될 수 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('andT_5w_a3w_21', 'Multi-Stage 21', 'ILLIT', 'normal', 21, 61.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 61.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 40, 44, '소리 크게 내면 좀비가 쫓아와요', '와요', '오다', 'I come');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('EXt2UBLt7oI_2', 'Multi-Stage 2', 'QWER', 'normal', 2, 27.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 27.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 111, 116, '제가 개인기가 많아요', '많아요', '많다', 'There are many');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('EXt2UBLt7oI_3', 'Multi-Stage 3', 'QWER', 'normal', 3, 34.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 34.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 19, 22, '아뇨, 머리 길어요', '길어요', '길다', 'It is long');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('EXt2UBLt7oI_4', 'Multi-Stage 4', 'QWER', 'normal', 4, 46.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 46.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 62, 65, '저, 초등학생 때 봤어요', '봤어요', '보다', 'I saw/watched');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('EXt2UBLt7oI_5', 'Multi-Stage 5', 'QWER', 'normal', 5, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 108, 113, 'ag Concert"에 출연했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('EXt2UBLt7oI_6', 'Multi-Stage 6', 'QWER', 'normal', 6, 53.66666666666667, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 53.66666666666667, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 72, 75, '월드 투어 간다고 들었어요', '들었어요', '듣다', 'I listened');
END $$;

-- VAD-STT Extracted Data (V2)


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('RSLa0cdXs38_stt_17', '[ITZY?ITZY!] EP 234 l 2025 SBS Gayo Daejeon', 'ITZY', 'normal', 17, 26.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 26.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 643.33, 650.53, '너 진짜 센스 있다 해 달라고.', '달라고.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('RSLa0cdXs38_stt_18', '[ITZY?ITZY!] EP 234 l 2025 SBS Gayo Daejeon', 'ITZY', 'normal', 18, 31.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 31.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 794.82, 799.26, '빨간색인 거 같아.', '같아.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('RSLa0cdXs38_stt_19', '[ITZY?ITZY!] EP 234 l 2025 SBS Gayo Daejeon', 'ITZY', 'normal', 19, 35.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 35.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 687.59, 691.55, '나도 생겼어요.', '생겼어요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('RSLa0cdXs38_stt_20', '[ITZY?ITZY!] EP 234 l 2025 SBS Gayo Daejeon', 'ITZY', 'normal', 20, 39.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 39.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 577.60, 583.26, '잠 깨 버려 가지고 잠을 완전히 설쳤어.', '설쳤어.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('RSLa0cdXs38_stt_21', '[ITZY?ITZY!] EP 234 l 2025 SBS Gayo Daejeon', 'ITZY', 'normal', 21, 41.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 41.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 625.22, 631.97, '떡볶이 먹었잖아 윤아야 너무 많은 걸 알잖아.', '알잖아.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('RSLa0cdXs38_stt_22', '[ITZY?ITZY!] EP 234 l 2025 SBS Gayo Daejeon', 'ITZY', 'normal', 22, 42.9, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 42.9, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 811.65, 819.74, '신대리 먹는 방법 팔아야 되는데요, 뚜껑에 담아서.', '담아서.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('RSLa0cdXs38_stt_23', '[ITZY?ITZY!] EP 234 l 2025 SBS Gayo Daejeon', 'ITZY', 'normal', 23, 43.9, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 43.9, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 774.47, 777.09, '완전 딴딴 합니다.', '합니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('RSLa0cdXs38_stt_24', '[ITZY?ITZY!] EP 234 l 2025 SBS Gayo Daejeon', 'ITZY', 'normal', 24, 57.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 57.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 589.03, 593.34, '빨리 가서 기다려 줘 거기서 궁금하단 말이야.', '말이야.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('RSLa0cdXs38_stt_25', '[ITZY?ITZY!] EP 234 l 2025 SBS Gayo Daejeon', 'ITZY', 'normal', 25, 62.9, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 62.9, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 417.99, 421.21, '평소에 너무 좋아하는 쇼핑 센터 언니!', '언니!', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('e-vBLQD-9uU_stt_26', '[ITZY? ITZY!] EP 229 | Yeji Roger Vivier 2026 S/S Presentation & Lia Rockfish Weatherwear Shanghai', 'ITZY', 'normal', 26, 65.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 65.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 27.94, 29.99, '최근에 팬미팅을 했나?', '했나?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8fy4A3YKTzw_stt_27', '[ITZY VLOG] CHAERYEONG｜Introvert’s Comfort Vlog ☁ | Abs Routine | Hangang Run | Self-Care Day', 'ITZY', 'normal', 27, 71.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 71.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6.98, 10.62, '교차편집 보면서 훌라후프를 30분 돌리고.', '돌리고.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('q1J3_riebjo_stt_28', 'Yuna''s B-DAY 100 QnA📝', 'ITZY', 'normal', 28, 73.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 73.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0.29, 2.81, '안녕하세요 이제 윤아입니다.', '윤아입니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('q1J3_riebjo_stt_29', 'Yuna''s B-DAY 100 QnA📝', 'ITZY', 'normal', 29, 73.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 73.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10.21, 18.46, '생일을 맞아서 100문 100답을 진행해 보려고 하는데요. 평소에 생각해 보지 못했던 질문들에 답해 보면서.', '보면서.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('e-vBLQD-9uU_stt_30', '[ITZY? ITZY!] EP 229 | Yeji Roger Vivier 2026 S/S Presentation & Lia Rockfish Weatherwear Shanghai', 'ITZY', 'normal', 30, 76.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 76.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23.11, 25.89, '엄마가 못 해서 이걸 들고 와 버려진 거예요.', '거예요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('2q5TQgQ8W8Q_stt_17', 'ATEEZ(에이티즈) ANEWZ 2026 New Year''s Edition', 'ATEEZ', 'normal', 17, 34.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 34.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0.07, 5.73, '어쩌고 어쩌고 어쩌고?', '어쩌고?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('AZMZFQLwI1c_stt_18', 'ATEEZ(에이티즈) 성화 ''Skin'' Production Behind', 'ATEEZ', 'normal', 18, 38.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 38.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 20.99, 25.02, '아, 아 아 좀 당황했어요.', '당황했어요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gNX0WUmST2A_stt_19', 'ATEEZ(에이티즈) log_logbook#204', 'ATEEZ', 'normal', 19, 41.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 41.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10.08, 14.91, '주방장 추석입니다.', '추석입니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('2q5TQgQ8W8Q_stt_20', 'ATEEZ(에이티즈) ANEWZ 2026 New Year''s Edition', 'ATEEZ', 'normal', 20, 50.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 50.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 21.06, 24.25, '모습으로 했습니다.', '했습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gQwebJ3RuZs_stt_21', 'ATEEZ(에이티즈) 2026 새해 인사 (New Year''s Greetings for 2026)', 'ATEEZ', 'normal', 21, 58.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 58.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0.23, 5.76, '안녕하세요 2016년 병원이 밝았습니다.', '밝았습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8alWFP5tBjw_stt_22', 'ATEEZ(에이티즈) 2025 크리스마스 메시지', 'ATEEZ', 'normal', 22, 59.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 59.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0.13, 7.65, '안녕하세요 올해도 어김없이 선물 같은 크리스마스가 찾아왔습니다.', '찾아왔습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('AZMZFQLwI1c_stt_23', 'ATEEZ(에이티즈) 성화 ''Skin'' Production Behind', 'ATEEZ', 'normal', 23, 67.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 67.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25.44, 29.99, '너 하던 대로 하면 부담 가지면 못 해 그냥 와도 그냥 하면 되니까.', '되니까.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('E6gWWCQ_Do4_stt_24', 'ATEEZ(에이티즈) 산타를 찾아서', 'ATEEZ', 'normal', 24, 70.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 70.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23.49, 25.89, '지우는 자차 잘못됐습니다.', '잘못됐습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vUxlgo0XsRQ_stt_25', 'ATEEZ(에이티즈) [TOWARDS THE LIGHT : WILL TO POWER] FINALE IN SEOUL PLAYCODE Preview', 'ATEEZ', 'normal', 25, 71.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 71.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 1.41, 5.09, '제가 늘 말씀드렸던 올해는 저에게 생명입니다.', '생명입니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gNX0WUmST2A_stt_26', 'ATEEZ(에이티즈) log_logbook#204', 'ATEEZ', 'normal', 26, 71.9, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 71.9, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22.37, 27.52, '다들 축제 왔는데 이렇게 가까이 준비해 주시고 몸 둘 바를 모르겠습니다.', '모르겠습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('E6gWWCQ_Do4_stt_27', 'ATEEZ(에이티즈) 산타를 찾아서', 'ATEEZ', 'normal', 27, 81.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 81.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 26.08, 29.99, '있다 없다 아니라 통일 있는 걸 왜 없다라고 떠나 없다고 생각하니?', '생각하니?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gQwebJ3RuZs_stt_28', 'ATEEZ(에이티즈) 2026 새해 인사 (New Year''s Greetings for 2026)', 'ATEEZ', 'normal', 28, 82.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 82.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10.88, 14.11, '마무리할 수 있었습니다. 일주일 너무 고마워요.', '고마워요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gQwebJ3RuZs_stt_29', 'ATEEZ(에이티즈) 2026 새해 인사 (New Year''s Greetings for 2026)', 'ATEEZ', 'normal', 29, 84.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 84.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15.27, 19.61, '올해도 h&a 쓰니까 함께 만들어가요 추억들이 너무 기대되는데요.', '기대되는데요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vUxlgo0XsRQ_stt_30', 'ATEEZ(에이티즈) [TOWARDS THE LIGHT : WILL TO POWER] FINALE IN SEOUL PLAYCODE Preview', 'ATEEZ', 'normal', 30, 88.9, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 88.9, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 5.31, 10.05, '멋있는 모습으로 말보다 그냥 행동으로 보여 드린 아티스트 보내도록 하겠습니다.', '하겠습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('f3Nb0Ls9m8c_stt_12', 'Our First Night in Austin', 'RIIZE', 'normal', 12, 37.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 37.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 27.30, 29.99, '너 참 못생겼어.', '못생겼어.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('tBvrzORGT2Q_stt_13', 'MMA 2025 | RISE & REALIZE EP.87', 'RIIZE', 'normal', 13, 39.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 39.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 16.58, 20.93, '올라 올라 가서 공부 할게요.', '할게요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YZiN4ssGmGw_stt_14', '❮BOSS RIIZE❯ 달라도 너무 다른 RIIZE네🫶 ㅣ 💂극과 극 텐션의 또리와 앤토니🦕 #BOSSRIIZE #보스라이즈 #RIIZE #라이즈 #SMTOWNFriends', 'RIIZE', 'normal', 14, 39.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 39.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 20.83, 23.10, '왜 다 찍고 있지?', '있지?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ZW1NoiubXEQ_stt_15', '❮BOSS RIIZE❯ 🦌게임 휩쓸고 다니는 성찬이와 게임에 휩쓸려 버린 은석이🪨 ㅣ 게임 스톤의 운수 좋은 날😭😭 #BOSSRIIZE #보스라이즈 #RIIZE #라이즈', 'RIIZE', 'normal', 15, 41.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 41.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 13.19, 16.61, '그렇지 않아 보인다.', '보인다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('U1_thRAs9ho_stt_16', '''Fame'' recording day | pre-alize_04', 'RIIZE', 'normal', 16, 43.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 43.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8.48, 12.16, '궁금한 거 있으면 물어봐.', '물어봐.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('U1_thRAs9ho_stt_17', '''Fame'' recording day | pre-alize_04', 'RIIZE', 'normal', 17, 51.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 51.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 12.32, 14.40, '사막에 물어봐.', '물어봐.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('f3Nb0Ls9m8c_stt_18', 'Our First Night in Austin', 'RIIZE', 'normal', 18, 51.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 51.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4.77, 7.23, '아, 여기 있었구나.', '있었구나.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('tBvrzORGT2Q_stt_19', 'MMA 2025 | RISE & REALIZE EP.87', 'RIIZE', 'normal', 19, 52.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 52.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 13.92, 16.41, '올라가면 있잖아.', '있잖아.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ZW1NoiubXEQ_stt_20', '❮BOSS RIIZE❯ 🦌게임 휩쓸고 다니는 성찬이와 게임에 휩쓸려 버린 은석이🪨 ㅣ 게임 스톤의 운수 좋은 날😭😭 #BOSSRIIZE #보스라이즈 #RIIZE #라이즈', 'RIIZE', 'normal', 20, 52.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 52.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 57.38, 59.39, '5시 사랑해요.', '사랑해요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ncJWB1bzr04_stt_21', 'Merry RIIZEmas🎁🎄🎅 (‘Fame'' Part Switch ver.)', 'RIIZE', 'normal', 21, 52.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 52.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 13.67, 26.05, '멤버들의 이름표가 틀어 줘 크리스마스 코스튬에 들어 있습니다. 그래서까지 초벌 생각입니다 볼까요?', '볼까요?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Ac461YWctts_stt_22', '브리즈 춥지? 나 안아🫂 | RIIZE 라이즈 ''Fame’ Premiere & 음악방송 대기실 비하인드', 'RIIZE', 'normal', 22, 55.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 55.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9.41, 13.50, '인가에서 생방송 하는 교회 처량하다.', '처량하다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YZiN4ssGmGw_stt_23', '❮BOSS RIIZE❯ 달라도 너무 다른 RIIZE네🫶 ㅣ 💂극과 극 텐션의 또리와 앤토니🦕 #BOSSRIIZE #보스라이즈 #RIIZE #라이즈 #SMTOWNFriends', 'RIIZE', 'normal', 23, 60.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 60.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8.48, 10.88, '글씨 좀 필요 없을 수도 있어.', '있어.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Ac461YWctts_stt_24', '브리즈 춥지? 나 안아🫂 | RIIZE 라이즈 ''Fame’ Premiere & 음악방송 대기실 비하인드', 'RIIZE', 'normal', 24, 60.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 60.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 3.52, 5.98, '일요일 어디 가요 인기 가요?', '가요?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pOFhWW65HLE_stt_25', 'UNBOXING of RIIZE ‘Fame’ Album', 'RIIZE', 'normal', 25, 61.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 61.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22.63, 26.24, '이번 새 앨범이 총 4종으로 나오는데요.', '나오는데요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-k-bb77geTo_stt_26', 'Dubai Chewy Cookies Review', 'RIIZE', 'normal', 26, 67.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 67.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 7.87, 10.05, '왜 근데 하필 저희 둘일까요?', '둘일까요?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pOFhWW65HLE_stt_27', 'UNBOXING of RIIZE ‘Fame’ Album', 'RIIZE', 'normal', 27, 69.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 69.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0.19, 3.84, '안녕하세요입니다.', '안녕하세요입니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('w7RVP6QFNsk_stt_28', '𝑭𝒂𝒎𝒆 𝒐𝒓 𝑭𝒂𝒌𝒆 ❮여섯 왕자들의 왕위 계승전❯ | WE RIIZE EP.47', 'RIIZE', 'normal', 28, 74.4, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 74.4, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 24.00, 26.21, '왕위계승전의 열기로 한다.', '한다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('w7RVP6QFNsk_stt_29', '𝑭𝒂𝒎𝒆 𝒐𝒓 𝑭𝒂𝒌𝒆 ❮여섯 왕자들의 왕위 계승전❯ | WE RIIZE EP.47', 'RIIZE', 'normal', 29, 76.9, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 76.9, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 20.29, 23.49, '왕국의 미래와 번영을 이어 글자를 정하기 위해.', '위해.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Mp6ZbPFJOO8_stt_30', 'SHOTARO''s GRWM (w/WONBIN''s Dubbing)', 'RIIZE', 'normal', 30, 99.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 99.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 3.81, 6.88, '안녕하세요 저는 세상에서 제일 잘생긴 우산 리포터입니다.', '리포터입니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('CtOtrfh2atI_stt_8', '[RE-PILOGUE] #2 우리들의 PROM PARTY | ZEROBASEONE', 'ZEROBASEONE', 'normal', 8, 28.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 28.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 21.03, 29.76, '인사 드리고 있습니다.', '있습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7zrYkYj5o7Y_stt_9', '[ZE_pisode] ZEROBASEONE (제로베이스원) 성한빈 ''스프링 피버'' OST ''너란 봄'' Recording Behind', 'ZEROBASEONE', 'normal', 9, 34.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 34.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 135.30, 140.83, '살짝 밴딩 지진 거 너무 좋아요.', '좋아요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('h0m9UWa2RZw_stt_10', '[ZB1 CAM] 유진 VLOG | 3학년 5반 한유진 학생🎓 | 드디어 고등학교 졸업 | 🏆표창장도 받아 기분 좋았어여어어ㅓ', 'ZEROBASEONE', 'normal', 10, 38.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 38.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 102.79, 108.51, '너무 작은 거 같아 그래도 말을 못 했고.', '했고.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LtVOu2K-dBs_stt_11', '[RE-PILOGUE] #3 여행 Part.1 | ZEROBASEONE', 'ZEROBASEONE', 'normal', 11, 39.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 39.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 1751.01, 1754.17, '왼쪽을 맞춰요.', '맞춰요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7zrYkYj5o7Y_stt_12', '[ZE_pisode] ZEROBASEONE (제로베이스원) 성한빈 ''스프링 피버'' OST ''너란 봄'' Recording Behind', 'ZEROBASEONE', 'normal', 12, 40.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 40.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 107.20, 119.17, '어쨌든 내 하루가 조금씩 너에게 달려가고 있어 나도 모르게 시작된 것만 같아.', '같아.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LtVOu2K-dBs_stt_13', '[RE-PILOGUE] #3 여행 Part.1 | ZEROBASEONE', 'ZEROBASEONE', 'normal', 13, 43.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 43.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6.34, 21.82, '열어 보세요 오늘 뭐 하러 오랜만에 또 여행을 가잖아요. 그러면 오랜만에 하니까 인형 밤 되기 전에 재밌었는데.', '재밌었는데.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LtVOu2K-dBs_stt_14', '[RE-PILOGUE] #3 여행 Part.1 | ZEROBASEONE', 'ZEROBASEONE', 'normal', 14, 45.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 45.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2988.51, 2991.52, '아 씻으라 너무 아파요.', '아파요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LtVOu2K-dBs_stt_15', '[RE-PILOGUE] #3 여행 Part.1 | ZEROBASEONE', 'ZEROBASEONE', 'normal', 15, 48.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 48.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2657.22, 2661.76, '형 오늘 한국인데 지금 하고 있으니까.', '있으니까.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LtVOu2K-dBs_stt_16', '[RE-PILOGUE] #3 여행 Part.1 | ZEROBASEONE', 'ZEROBASEONE', 'normal', 16, 51.4, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 51.4, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 136.67, 155.58, '휴게소 들릴 사람 가면서 만나요. 친구들이 간다는 갈게요. 이걸로 한다. 앞으로 이걸로 한다. 아니면 휴게소에서 한번 멤버를 바꿀까 휴게소에서 멤버라고.', '멤버라고.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7zrYkYj5o7Y_stt_17', '[ZE_pisode] ZEROBASEONE (제로베이스원) 성한빈 ''스프링 피버'' OST ''너란 봄'' Recording Behind', 'ZEROBASEONE', 'normal', 17, 52.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 52.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 155.27, 157.76, '뒤에서 먹을게요.', '먹을게요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7zrYkYj5o7Y_stt_18', '[ZE_pisode] ZEROBASEONE (제로베이스원) 성한빈 ''스프링 피버'' OST ''너란 봄'' Recording Behind', 'ZEROBASEONE', 'normal', 18, 53.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 53.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 66.66, 71.58, '메가 아르타니 걸인 맞어 괜히 어색한 것만 같아.', '같아.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('h0m9UWa2RZw_stt_19', '[ZB1 CAM] 유진 VLOG | 3학년 5반 한유진 학생🎓 | 드디어 고등학교 졸업 | 🏆표창장도 받아 기분 좋았어여어어ㅓ', 'ZEROBASEONE', 'normal', 19, 53.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 53.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 108.74, 110.75, '표창장 못 받아서.', '받아서.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LtVOu2K-dBs_stt_20', '[RE-PILOGUE] #3 여행 Part.1 | ZEROBASEONE', 'ZEROBASEONE', 'normal', 20, 56.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 56.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2465.95, 2468.80, '진짜로 나 이거 못 하겠어 그래?', '그래?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7zrYkYj5o7Y_stt_21', '[ZE_pisode] ZEROBASEONE (제로베이스원) 성한빈 ''스프링 피버'' OST ''너란 봄'' Recording Behind', 'ZEROBASEONE', 'normal', 21, 56.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 56.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 86.31, 91.45, '평범한 알았엉 내 마주쳤던 그 날의 기억들이 생각나.', '생각나.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7zrYkYj5o7Y_stt_22', '[ZE_pisode] ZEROBASEONE (제로베이스원) 성한빈 ''스프링 피버'' OST ''너란 봄'' Recording Behind', 'ZEROBASEONE', 'normal', 22, 57.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 57.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 61.19, 66.27, '평범한 나를 속는 마주쳤던 그 날의 기억들이 생각나.', '생각나.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0DyFoCxchxY_stt_23', '[ZB1_more] 매튜의 저주받은 인형 공장 탐방기 | Poppy Playtime Chapter 1 🎬. more', 'ZEROBASEONE', 'normal', 23, 58.4, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 58.4, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 948.93, 951.01, '한농 와이프가 있어.', '있어.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('CtOtrfh2atI_stt_24', '[RE-PILOGUE] #2 우리들의 PROM PARTY | ZEROBASEONE', 'ZEROBASEONE', 'normal', 24, 60.4, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 60.4, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10.05, 14.01, '학교 갔나 등장이 오라네 11이 굉장하다.', '굉장하다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7zrYkYj5o7Y_stt_25', '[ZE_pisode] ZEROBASEONE (제로베이스원) 성한빈 ''스프링 피버'' OST ''너란 봄'' Recording Behind', 'ZEROBASEONE', 'normal', 25, 63.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 63.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 72.16, 78.27, '마주쳤던 너무 좋아요 생각만 해도 똑같이 조금 더 끝은 가끔 안 될 수 있어요네.', '있어요네.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0DyFoCxchxY_stt_26', '[ZB1_more] 매튜의 저주받은 인형 공장 탐방기 | Poppy Playtime Chapter 1 🎬. more', 'ZEROBASEONE', 'normal', 26, 64.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 64.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 338.79, 340.83, '다시 와야 싶나 비가 오네.', '오네.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7zrYkYj5o7Y_stt_27', '[ZE_pisode] ZEROBASEONE (제로베이스원) 성한빈 ''스프링 피버'' OST ''너란 봄'' Recording Behind', 'ZEROBASEONE', 'normal', 27, 67.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 67.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 5.41, 12.00, '제가 이번에 드라마 스프링 비버의 OST 너랑 보험이라는 곡을 부르게 됐는데요.', '됐는데요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7zrYkYj5o7Y_stt_28', '[ZE_pisode] ZEROBASEONE (제로베이스원) 성한빈 ''스프링 피버'' OST ''너란 봄'' Recording Behind', 'ZEROBASEONE', 'normal', 28, 67.4, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 67.4, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 249.86, 257.73, '더 많이 약간 몽글몽글해지는 거 같고 또 드라마 스프링피버 OST 11 봄도 많은 관심 부탁드립니다.', '부탁드립니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7zrYkYj5o7Y_stt_29', '[ZE_pisode] ZEROBASEONE (제로베이스원) 성한빈 ''스프링 피버'' OST ''너란 봄'' Recording Behind', 'ZEROBASEONE', 'normal', 29, 70.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 70.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 242.95, 249.73, '이렇게 또 오늘 녹음을 잘 맞췄는데요 또 이렇게 약간 따뜻한 봄을 기다리는 노래를 부르게 돼서.', '돼서.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('TEwPZnyWYAU_stt_30', '[ZBTVing] 미담 폭로전 🤣 진실 혹은 거짓 송년회 | 2025 연말파티 #2 | ZBTVing 외전 | ZEROBASEONE', 'ZEROBASEONE', 'normal', 30, 89.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 89.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 17.60, 22.05, '이렇게 다 꾸미고 진짜 이렇게 맛있는 거까지 있으니까 10분 연말파티 갔잖아.', '갔잖아.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('txcRRZ3wDpo_stt_6', '2025 MUSIC BANK GLOBAL FESTIVAL IN JAPAN BEHIND | xikers(싸이커스) 인싸이커스 #123', 'xikers', 'normal', 6, 18.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 18.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 67.84, 82.88, '너무 웃기지 않나?', '않나?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('txcRRZ3wDpo_stt_7', '2025 MUSIC BANK GLOBAL FESTIVAL IN JAPAN BEHIND | xikers(싸이커스) 인싸이커스 #123', 'xikers', 'normal', 7, 26.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 26.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 435.91, 443.17, '공항리무진 할 거 없어.', '없어.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('txcRRZ3wDpo_stt_8', '2025 MUSIC BANK GLOBAL FESTIVAL IN JAPAN BEHIND | xikers(싸이커스) 인싸이커스 #123', 'xikers', 'normal', 8, 33.9, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 33.9, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 394.47, 398.08, '너 오늘 1시 안 잤어?', '잤어?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('txcRRZ3wDpo_stt_9', '2025 MUSIC BANK GLOBAL FESTIVAL IN JAPAN BEHIND | xikers(싸이커스) 인싸이커스 #123', 'xikers', 'normal', 9, 36.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 36.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 471.01, 474.46, '멍 때리다가 혼자.', '혼자.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LmF-1RFcgJ8_stt_10', 'Waiting for a call from Running Man📞 | xikers(싸이커스) Wa-xx(와싹) #98', 'xikers', 'normal', 10, 36.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 36.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 26.43, 29.25, '너무 막 뭐라고?', '뭐라고?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LmF-1RFcgJ8_stt_11', 'Waiting for a call from Running Man📞 | xikers(싸이커스) Wa-xx(와싹) #98', 'xikers', 'normal', 11, 42.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 42.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 37.99, 40.29, '밤엔 뭐가 있어?', '있어?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LmF-1RFcgJ8_stt_12', 'Waiting for a call from Running Man📞 | xikers(싸이커스) Wa-xx(와싹) #98', 'xikers', 'normal', 12, 46.4, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 46.4, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 62.34, 66.11, '항상 감사드립니다.', '감사드립니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('txcRRZ3wDpo_stt_13', '2025 MUSIC BANK GLOBAL FESTIVAL IN JAPAN BEHIND | xikers(싸이커스) 인싸이커스 #123', 'xikers', 'normal', 13, 47.4, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 47.4, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 415.36, 418.75, '나는 인생에서 처음 써 봤다.', '봤다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('txcRRZ3wDpo_stt_14', '2025 MUSIC BANK GLOBAL FESTIVAL IN JAPAN BEHIND | xikers(싸이커스) 인싸이커스 #123', 'xikers', 'normal', 14, 55.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 55.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 600.19, 602.40, '아니 다음에 아니야.', '아니야.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0nBGCaydqKo_stt_15', '2025 AAA & ACON BEHIND | xikers(싸이커스) 인싸이커스 #121', 'xikers', 'normal', 15, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 26.08, 28.38, '방금 드립 같은 경우는?', '경우는?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LmF-1RFcgJ8_stt_16', 'Waiting for a call from Running Man📞 | xikers(싸이커스) Wa-xx(와싹) #98', 'xikers', 'normal', 16, 56.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 56.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 54.15, 61.44, '동구 사건 때 벨트랑 너무 달라서 10 mm 점점 멀어지는 기분이 너무 무섭고.', '무섭고.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('U4r0daBObZc_stt_17', 'Filming Support : xikers JUNMIN | xikers Wa-xx #97', 'xikers', 'normal', 17, 59.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 59.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 27.43, 29.47, '얼굴이 재밌잖아.', '재밌잖아.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LmF-1RFcgJ8_stt_18', 'Waiting for a call from Running Man📞 | xikers(싸이커스) Wa-xx(와싹) #98', 'xikers', 'normal', 18, 60.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 60.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 13.73, 19.36, '끝나면 굉장히 싹 풀리면서 와 이거는 진짜 안 된다 생각을 했어요.', '했어요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('txcRRZ3wDpo_stt_19', '2025 MUSIC BANK GLOBAL FESTIVAL IN JAPAN BEHIND | xikers(싸이커스) 인싸이커스 #123', 'xikers', 'normal', 19, 63.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 63.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 456.87, 462.27, '김도 음악 많이 아픈 거야, 저장해 놓고 보니까 어제 딱 들어 가지고.', '가지고.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LmF-1RFcgJ8_stt_20', 'Waiting for a call from Running Man📞 | xikers(싸이커스) Wa-xx(와싹) #98', 'xikers', 'normal', 20, 64.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 64.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 84.45, 86.56, '좀비 잡히면 감염이다.', '감염이다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('txcRRZ3wDpo_stt_21', '2025 MUSIC BANK GLOBAL FESTIVAL IN JAPAN BEHIND | xikers(싸이커스) 인싸이커스 #123', 'xikers', 'normal', 21, 65.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 65.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 503.62, 505.76, '다른 한쪽은 더 커졌어요.', '커졌어요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('txcRRZ3wDpo_stt_22', '2025 MUSIC BANK GLOBAL FESTIVAL IN JAPAN BEHIND | xikers(싸이커스) 인싸이커스 #123', 'xikers', 'normal', 22, 67.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 67.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 109.60, 113.15, '하세요 오늘 미숙 뱅크 떼쓰고 하러 왔는데요.', '왔는데요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('txcRRZ3wDpo_stt_23', '2025 MUSIC BANK GLOBAL FESTIVAL IN JAPAN BEHIND | xikers(싸이커스) 인싸이커스 #123', 'xikers', 'normal', 23, 69.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 69.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 203.39, 206.56, '제가 이게 지낸 음식에 CGV 들어갈 거야.', '거야.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pb1IGTSj62A_stt_24', 'xikers(싸이커스) 2026 새해 인사 (New Year''s Greetings for 2026)', 'xikers', 'normal', 24, 72.4, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 72.4, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4.64, 7.97, '혈압은 2026년 새해가 밝았습니다.', '밝았습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LmF-1RFcgJ8_stt_25', 'Waiting for a call from Running Man📞 | xikers(싸이커스) Wa-xx(와싹) #98', 'xikers', 'normal', 25, 75.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 75.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 40.80, 45.31, '여기 이거 초원에서 아까 그 본인의 어떤 그 재미를 해서 하시는 거 같아.', '같아.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('txcRRZ3wDpo_stt_26', '2025 MUSIC BANK GLOBAL FESTIVAL IN JAPAN BEHIND | xikers(싸이커스) 인싸이커스 #123', 'xikers', 'normal', 26, 84.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 84.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 631.91, 634.08, '좋아하는 언니 그래 이렇게 하는데.', '하는데.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('txcRRZ3wDpo_stt_27', '2025 MUSIC BANK GLOBAL FESTIVAL IN JAPAN BEHIND | xikers(싸이커스) 인싸이커스 #123', 'xikers', 'normal', 27, 89.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 89.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 297.09, 300.38, '후쿠오카 후쿠오카 일찍 상품인 모츠나베가 있었어요.', '있었어요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('txcRRZ3wDpo_stt_28', '2025 MUSIC BANK GLOBAL FESTIVAL IN JAPAN BEHIND | xikers(싸이커스) 인싸이커스 #123', 'xikers', 'normal', 28, 91.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 91.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 281.12, 284.54, '중에 고민하고 지난달 예쁜 거 갖고 왔는데 진짜 자기가 많이 나네.', '나네.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LmF-1RFcgJ8_stt_29', 'Waiting for a call from Running Man📞 | xikers(싸이커스) Wa-xx(와싹) #98', 'xikers', 'normal', 29, 98.9, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 98.9, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 11.30, 13.37, '좋은게 아니라 그냥 눈물이 나더라고요.', '나더라고요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LmF-1RFcgJ8_stt_30', 'Waiting for a call from Running Man📞 | xikers(싸이커스) Wa-xx(와싹) #98', 'xikers', 'normal', 30, 104.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 104.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 71.68, 74.05, '아까처럼 이메일을 정말 사랑하는 사람으로서.', '사람으로서.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('2QyCKzsS9BY_stt_22', 'Stay NOT CUTE in 2026⊹₊❤️⋆｡°✩ | Special MC YUNAH & WONHEE & IROHA | ILLIT (아일릿) at "M COUNTDOWN"', 'ILLIT', 'normal', 22, 30.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 30.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 284.93, 291.39, '따뜻하게 따로 있을 텐데.', '텐데.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('2QyCKzsS9BY_stt_23', 'Stay NOT CUTE in 2026⊹₊❤️⋆｡°✩ | Special MC YUNAH & WONHEE & IROHA | ILLIT (아일릿) at "M COUNTDOWN"', 'ILLIT', 'normal', 23, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 234.56, 238.62, '강매 강매 합니다.', '합니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('qwtxe6D-VqY_stt_24', 'FIMLIT Special 🎁 Year-end Gift Exchange | ILLIT (아일릿)', 'ILLIT', 'normal', 24, 35.9, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 35.9, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 13.38, 20.99, '세라 어제 입었을 하셨더라고요.', '하셨더라고요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('2QyCKzsS9BY_stt_25', 'Stay NOT CUTE in 2026⊹₊❤️⋆｡°✩ | Special MC YUNAH & WONHEE & IROHA | ILLIT (아일릿) at "M COUNTDOWN"', 'ILLIT', 'normal', 25, 37.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 37.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 315.65, 322.75, '세명이 없으면 얼마나 조용하네.', '조용하네.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8RvWZDUYg-g_stt_26', 'ILLIT (아일릿) ''Sunday Morning 응원법', 'ILLIT', 'normal', 26, 40.4, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 40.4, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 3.55, 10.65, '상대 모닝 변호인 호호호 여인시대 마시다.', '마시다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('2QyCKzsS9BY_stt_27', 'Stay NOT CUTE in 2026⊹₊❤️⋆｡°✩ | Special MC YUNAH & WONHEE & IROHA | ILLIT (아일릿) at "M COUNTDOWN"', 'ILLIT', 'normal', 27, 46.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 46.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 216.67, 223.36, '자신감은 없지만 가지도록 하겠습니다.', '하겠습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('2QyCKzsS9BY_stt_28', 'Stay NOT CUTE in 2026⊹₊❤️⋆｡°✩ | Special MC YUNAH & WONHEE & IROHA | ILLIT (아일릿) at "M COUNTDOWN"', 'ILLIT', 'normal', 28, 54.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 54.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 35.04, 38.30, '아 그리고 오늘 제가 MC 합니다.', '합니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('2QyCKzsS9BY_stt_29', 'Stay NOT CUTE in 2026⊹₊❤️⋆｡°✩ | Special MC YUNAH & WONHEE & IROHA | ILLIT (아일릿) at "M COUNTDOWN"', 'ILLIT', 'normal', 29, 69.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 69.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 270.08, 272.38, 'MC 너무 오랜만에 해 가지고.', '가지고.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('2QyCKzsS9BY_stt_30', 'Stay NOT CUTE in 2026⊹₊❤️⋆｡°✩ | Special MC YUNAH & WONHEE & IROHA | ILLIT (아일릿) at "M COUNTDOWN"', 'ILLIT', 'normal', 30, 84.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 84.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 255.11, 257.69, '저는 보다시피 좀 프리미엄가 붙어 가지고.', '가지고.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vnN1-K_PYu8_stt_7', '(ENG SUB) 아이돌인 걸 숨기고 서코에 가면 생기는 일.. l 마젠타&히나 서울 코믹월드', 'QWER', 'normal', 7, 25.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 25.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 667.97, 672.93, '최고 어떻게 돼?', '돼?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('scgREq65MLw_stt_8', '(ENG SUB) [단독] 롯데월드에서 포착된 교복 차림의 QWER', 'QWER', 'normal', 8, 29.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 29.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 237.09, 247.55, '햄스터 이거 나 이거 나 이거 이거 한번 먹으면 안 돼?', '돼?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('scgREq65MLw_stt_9', '(ENG SUB) [단독] 롯데월드에서 포착된 교복 차림의 QWER', 'QWER', 'normal', 9, 32.4, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 32.4, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 346.24, 364.67, '어떤 놀이 기구를 타고 싶으신가? 오늘 안 오면 두 명을 데려가는게 좋지 않을까 왔지요.', '왔지요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vnN1-K_PYu8_stt_10', '(ENG SUB) 아이돌인 걸 숨기고 서코에 가면 생기는 일.. l 마젠타&히나 서울 코믹월드', 'QWER', 'normal', 10, 39.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 39.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 222.66, 236.22, '어떤 인사가 괜찮을까요? 근데 오늘도 확실히 박신혜 박신혜 속은 내 책임이야.', '책임이야.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vnN1-K_PYu8_stt_11', '(ENG SUB) 아이돌인 걸 숨기고 서코에 가면 생기는 일.. l 마젠타&히나 서울 코믹월드', 'QWER', 'normal', 11, 41.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 41.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 766.88, 770.24, '뭐야, 뭐야, 뭐야?', '뭐야?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vnN1-K_PYu8_stt_12', '(ENG SUB) 아이돌인 걸 숨기고 서코에 가면 생기는 일.. l 마젠타&히나 서울 코믹월드', 'QWER', 'normal', 12, 42.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 42.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 1227.68, 1229.76, '안 가면 안 되지.', '되지.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vnN1-K_PYu8_stt_13', '(ENG SUB) 아이돌인 걸 숨기고 서코에 가면 생기는 일.. l 마젠타&히나 서울 코믹월드', 'QWER', 'normal', 13, 45.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 45.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 474.75, 478.75, '사진도 찍혀 나 빼고 있습니다.', '있습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vnN1-K_PYu8_stt_14', '(ENG SUB) 아이돌인 걸 숨기고 서코에 가면 생기는 일.. l 마젠타&히나 서울 코믹월드', 'QWER', 'normal', 14, 49.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 49.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 131.68, 133.92, '세팅 바꿔 가지고.', '가지고.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('scgREq65MLw_stt_15', '(ENG SUB) [단독] 롯데월드에서 포착된 교복 차림의 QWER', 'QWER', 'normal', 15, 52.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 52.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 309.15, 313.53, '학생 때로 돌아간 거 같으니까 너무 뒤 아니.', '아니.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vnN1-K_PYu8_stt_16', '(ENG SUB) 아이돌인 걸 숨기고 서코에 가면 생기는 일.. l 마젠타&히나 서울 코믹월드', 'QWER', 'normal', 16, 60.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 60.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 982.50, 984.89, '하세요 감사합니다.', '감사합니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vnN1-K_PYu8_stt_17', '(ENG SUB) 아이돌인 걸 숨기고 서코에 가면 생기는 일.. l 마젠타&히나 서울 코믹월드', 'QWER', 'normal', 17, 60.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 60.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 405.25, 407.74, '돈 있어 이런 것들이 많아서.', '많아서.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vnN1-K_PYu8_stt_18', '(ENG SUB) 아이돌인 걸 숨기고 서코에 가면 생기는 일.. l 마젠타&히나 서울 코믹월드', 'QWER', 'normal', 18, 61.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 61.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 1745.22, 1748.89, '진짜 약간 왜 행사 코스프레하고 와 보는게?', '보는게?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vnN1-K_PYu8_stt_19', '(ENG SUB) 아이돌인 걸 숨기고 서코에 가면 생기는 일.. l 마젠타&히나 서울 코믹월드', 'QWER', 'normal', 19, 62.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 62.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 698.37, 702.27, '네가 선택한 코스프레 괜찮아 내가 지켜 줄게.', '줄게.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('scgREq65MLw_stt_20', '(ENG SUB) [단독] 롯데월드에서 포착된 교복 차림의 QWER', 'QWER', 'normal', 20, 63.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 63.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 580.67, 586.11, '어 너 먹고 싶고 구슬 아이스크림 사 먹기로 했고 여기 삼겹살 팔아요.', '팔아요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('scgREq65MLw_stt_21', '(ENG SUB) [단독] 롯데월드에서 포착된 교복 차림의 QWER', 'QWER', 'normal', 21, 64.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 64.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 539.81, 542.37, '눈뜬채로 죽었는데요.', '죽었는데요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('scgREq65MLw_stt_22', '(ENG SUB) [단독] 롯데월드에서 포착된 교복 차림의 QWER', 'QWER', 'normal', 22, 64.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 64.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 195.23, 198.53, '목포에서 제 1탄 머리띠 신비거든요.', '신비거든요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('scgREq65MLw_stt_23', '(ENG SUB) [단독] 롯데월드에서 포착된 교복 차림의 QWER', 'QWER', 'normal', 23, 65.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 65.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 219.11, 221.47, '왜냐면 여기 쥐가 많은 거 같아.', '같아.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('scgREq65MLw_stt_24', '(ENG SUB) [단독] 롯데월드에서 포착된 교복 차림의 QWER', 'QWER', 'normal', 24, 66.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 66.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 26.63, 34.27, '많은 분들이 이제 친구랑 커플분들이 교복 입고 가잖아요. 챙겨보기 없기 때문에 대여를 할 건데.', '건데.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vnN1-K_PYu8_stt_25', '(ENG SUB) 아이돌인 걸 숨기고 서코에 가면 생기는 일.. l 마젠타&히나 서울 코믹월드', 'QWER', 'normal', 25, 67.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 67.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 1685.70, 1688.41, '침대 조사서 너무 잘 하시는 거예요.', '거예요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('scgREq65MLw_stt_26', '(ENG SUB) [단독] 롯데월드에서 포착된 교복 차림의 QWER', 'QWER', 'normal', 26, 69.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 69.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 98.75, 100.89, '솔직히 놀이동산이 왔어.', '왔어.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('scgREq65MLw_stt_27', '(ENG SUB) [단독] 롯데월드에서 포착된 교복 차림의 QWER', 'QWER', 'normal', 27, 72.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 72.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 61.09, 63.29, '지금 벌써 이렇게 흔들고 있고.', '있고.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vnN1-K_PYu8_stt_28', '(ENG SUB) 아이돌인 걸 숨기고 서코에 가면 생기는 일.. l 마젠타&히나 서울 코믹월드', 'QWER', 'normal', 28, 76.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 76.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 525.95, 528.32, '공식 굿즈는이 색깔이거든요.', '색깔이거든요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('scgREq65MLw_stt_29', '(ENG SUB) [단독] 롯데월드에서 포착된 교복 차림의 QWER', 'QWER', 'normal', 29, 76.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 76.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 132.55, 135.77, '그러면 좀 있다 다시 한번 진심으로 대화를 해 보자.', '보자.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('scgREq65MLw_stt_30', '(ENG SUB) [단독] 롯데월드에서 포착된 교복 차림의 QWER', 'QWER', 'normal', 30, 81.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 81.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 737.15, 739.68, '사람이 나이를 먹어 가면서 농 있더라고.', '있더라고.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8G5n1IcoBH8_stt_1', '여러분들에게도 소중한 추억이 되었길 바라요☺️✨ | 레드벨벳 Red Velvet SMTOWN LIVE 2025 @SEOUL Behind The Scenes', 'Red Velvet', 'normal', 1, 41.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 41.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 1009.44, 1012.93, '별로 있다는 거죠 이게.', '이게.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8G5n1IcoBH8_stt_2', '여러분들에게도 소중한 추억이 되었길 바라요☺️✨ | 레드벨벳 Red Velvet SMTOWN LIVE 2025 @SEOUL Behind The Scenes', 'Red Velvet', 'normal', 2, 43.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 43.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 1064.51, 1068.32, '소중히 간직해 주세요.', '주세요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LkWne3QQ1z8_stt_3', 'Seulgi, Not Seulgi😎 #1 | Accidentally On Purpose vlog', 'Red Velvet', 'normal', 3, 49.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 49.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10.08, 13.63, '이제 드디어 제 앨범 제작하는?', '제작하는?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('a17sYWzZ_vE_stt_4', 'Happy New Year🫶ㅣLet''s Celebrate 2026 Behind', 'Red Velvet', 'normal', 4, 50.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 50.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 636.51, 638.69, '원래 안 좋았는데.', '좋았는데.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LkWne3QQ1z8_stt_5', 'Seulgi, Not Seulgi😎 #1 | Accidentally On Purpose vlog', 'Red Velvet', 'normal', 5, 53.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 53.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18.43, 27.26, '계속 미팅을 하고 침대에서 좋은 곡들 받고 이렇게 하다가 첫 녹음을 이미 시작을 했어요.', '했어요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('a17sYWzZ_vE_stt_6', 'Happy New Year🫶ㅣLet''s Celebrate 2026 Behind', 'Red Velvet', 'normal', 6, 57.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 57.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 471.04, 474.08, '나 하나만 주라 그래 날도 추운데.', '추운데.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vnenDyMdhB4_stt_7', '벌써 끝나다니 아쉬워요🥲 | 레드벨벳 Red Velvet SMTOWN LIVE 2025 tour Behind The Scenes', 'Red Velvet', 'normal', 7, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9.44, 13.95, '아프면서 어디를 그렇게 돌아다녔어요.', '돌아다녔어요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('a17sYWzZ_vE_stt_8', 'Happy New Year🫶ㅣLet''s Celebrate 2026 Behind', 'Red Velvet', 'normal', 8, 59.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 59.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 474.91, 476.93, '하나만 이랬더니.', '이랬더니.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('b32h9TXyNg8_stt_9', 'ReVeluv❤️ | Baby, Not Baby | SEULGI 슬기 ''Baby, Not Baby'' 응원법', 'Red Velvet', 'normal', 9, 60.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 60.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6.24, 10.33, '오늘은 저의 두 번째 미니앨범 타이틀곡 그죠?', '그죠?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LuuUfpoeyIo_stt_10', '베러바이오 많이 사랑해 주시고 저도 사랑해 주세요💚 | BetterBio Behind', 'Red Velvet', 'normal', 10, 61.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 61.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18.59, 24.73, '안녕하세요 저는 지금 뵈러 가요 건강식품 광고 촬영장에 왔습니다.', '왔습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('i8tm-_ZktwI_stt_11', 'JOY 조이 ''품 (Cuddle)'' Mood Film', 'Red Velvet', 'normal', 11, 61.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 61.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9.99, 13.18, '너를 처음 본 차이나 영원을 믿게 됐다.', '됐다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LuuUfpoeyIo_stt_12', '베러바이오 많이 사랑해 주시고 저도 사랑해 주세요💚 | BetterBio Behind', 'Red Velvet', 'normal', 12, 61.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 61.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25.31, 28.99, '데려가 요강 식품들 잘 챙겨 먹고 있는데요.', '있는데요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('a17sYWzZ_vE_stt_13', 'Happy New Year🫶ㅣLet''s Celebrate 2026 Behind', 'Red Velvet', 'normal', 13, 62.4, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 62.4, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 594.21, 597.21, '다니지 않아서 너무 좋은 거 같아요.', '같아요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('I6AmDjuFNeo_stt_14', '행복한 생일이 되길 바라며🪄 | IRENE''s B-Day🩷All Day Long', 'Red Velvet', 'normal', 14, 64.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 64.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22.34, 25.60, '그런 거를 한번 찍어 보는게 좋지 않을까?', '않을까?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-T9JlvYZcnI_stt_15', 'Red Velvet - IRENE & SEULGI ''TILT'' Recording Behind | TILT Week Irene/Seulgi 2025 #3', 'Red Velvet', 'normal', 15, 64.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 64.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 50.88, 53.44, '바다 생선 없애 줘 이렇게 살 거야.', '거야.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XZHOlkbNs28_stt_16', 'ReVeluv💚 From JOY, with Love | JOY 조이 ''Love Splash!'' 응원법 Cheering Guide', 'Red Velvet', 'normal', 16, 65.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 65.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4.39, 9.73, '저의 첫 번째 비닐 건 promise of가 드디어 나왔습니다.', '나왔습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1r_0af07W_c_stt_17', '아기곰 소녀의 반전! 골 때리는 악동 슬기의 이야기 🕶🔥 (결말 포함) | 접속! 슬기앨범 ✮⋆˙', 'Red Velvet', 'normal', 17, 67.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 67.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 21.73, 24.61, '오늘 소개할 앨범은 세계 미니이지.', '미니이지.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XZHOlkbNs28_stt_18', 'ReVeluv💚 From JOY, with Love | JOY 조이 ''Love Splash!'' 응원법 Cheering Guide', 'Red Velvet', 'normal', 18, 67.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 67.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0.71, 3.52, '네 여러분 안녕하세요 주입니다.', '주입니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-iy4WFswH3o_stt_19', 'Seulgi, Not Seulgi😎 #2 | Accidentally On Purpose vlog', 'Red Velvet', 'normal', 19, 67.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 67.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6.47, 9.60, '팅 하는 거는 또 처음 보여 드리는 거 같은데?', '같은데?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LkWne3QQ1z8_stt_20', 'Seulgi, Not Seulgi😎 #1 | Accidentally On Purpose vlog', 'Red Velvet', 'normal', 20, 67.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 67.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15.23, 18.08, '조금 일찍부터 준비를 하고 싶어서.', '싶어서.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XZHOlkbNs28_stt_21', 'ReVeluv💚 From JOY, with Love | JOY 조이 ''Love Splash!'' 응원법 Cheering Guide', 'Red Velvet', 'normal', 21, 69.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 69.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23.14, 27.23, '설렘 가득한 마음을 담아서 응원 법을 해 보려고 하는데.', '하는데.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('I6AmDjuFNeo_stt_22', '행복한 생일이 되길 바라며🪄 | IRENE''s B-Day🩷All Day Long', 'Red Velvet', 'normal', 22, 69.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 69.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 27.59, 29.99, '풍차 보냈더라구요 그래서.', '그래서.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XZHOlkbNs28_stt_23', 'ReVeluv💚 From JOY, with Love | JOY 조이 ''Love Splash!'' 응원법 Cheering Guide', 'Red Velvet', 'normal', 23, 71.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 71.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14.40, 18.30, '타이틀곡 러브 스플래시는 서로에게 풍덩 빠지네.', '빠지네.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1r_0af07W_c_stt_24', '아기곰 소녀의 반전! 골 때리는 악동 슬기의 이야기 🕶🔥 (결말 포함) | 접속! 슬기앨범 ✮⋆˙', 'Red Velvet', 'normal', 24, 72.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 72.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4.99, 7.33, '귀여운 얼굴에 상큼한 눈웃음.', '눈웃음.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1r_0af07W_c_stt_25', '아기곰 소녀의 반전! 골 때리는 악동 슬기의 이야기 🕶🔥 (결말 포함) | 접속! 슬기앨범 ✮⋆˙', 'Red Velvet', 'normal', 25, 73.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 73.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0.35, 3.74, '여기 아기 곰이라고 불리는 한 소녀가 있습니다.', '있습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LkWne3QQ1z8_stt_26', 'Seulgi, Not Seulgi😎 #1 | Accidentally On Purpose vlog', 'Red Velvet', 'normal', 26, 73.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 73.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 5.06, 8.06, '내렸어요 약간 폭설처럼 내리고 있는데.', '있는데.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_2tKRvzfwvc_stt_27', 'Back by Popular Demand 🩷 It’s Me IRENE🙋‍♀️ㅣ여러분의 성원에 힘입어 돌아온 ‘나야 아이린이’', 'Red Velvet', 'normal', 27, 73.9, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 73.9, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2.50, 4.54, '마카오에는 처음인데.', '처음인데.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3JN0MvGWIbk_stt_28', 'Joy’s summer playlist is calling 💞☀️ #JOY #조이 #LoveSplash! #JOY_LoveSplash! #RedVelvet #레드벨벳', 'Red Velvet', 'normal', 28, 79.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 79.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 26.24, 28.48, '이 노래를 들으면 좋을 거 같습니다.', '같습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-T9JlvYZcnI_stt_29', 'Red Velvet - IRENE & SEULGI ''TILT'' Recording Behind | TILT Week Irene/Seulgi 2025 #3', 'Red Velvet', 'normal', 29, 83.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 83.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 13.86, 16.06, '올린게 더 이쁘게 나오긴 하거든요.', '하거든요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1r_0af07W_c_stt_30', '아기곰 소녀의 반전! 골 때리는 악동 슬기의 이야기 🕶🔥 (결말 포함) | 접속! 슬기앨범 ✮⋆˙', 'Red Velvet', 'normal', 30, 103.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 103.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 24.90, 27.17, '엑시던트 on purpose입니다.', 'purpose입니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('KklkJGkvTmc_stt_1', '미연 (MIYEON) 2nd Mini Album [MY, Lover] 수록곡 Recording Behind #2ㅣSUB', 'G-IDLE', 'normal', 1, 41.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 41.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 20.35, 22.88, '한번 더 할 건데요.', '건데요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('6uCcpCagpgE_stt_2', '우기의 2025 절강위성 TV 연말 무대 비하인드 [i-talk] #236 | i-dle (아이들)ㅣSUB', 'G-IDLE', 'normal', 2, 49.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 49.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 610.98, 615.42, '민준이가 20 달렸어 왔으니까.', '왔으니까.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('KklkJGkvTmc_stt_3', '미연 (MIYEON) 2nd Mini Album [MY, Lover] 수록곡 Recording Behind #2ㅣSUB', 'G-IDLE', 'normal', 3, 50.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 50.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23.14, 26.11, '쓸쓸함 이렇게 잘랐다.', '잘랐다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('DzdYTAjlwjU_stt_4', '''Say My Name'' 음악방송 비하인드 PART 1 [MY, Talk] #6 | 미연 (MIYEON)ㅣSUB', 'G-IDLE', 'normal', 4, 50.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 50.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18.79, 27.36, '친구 줘 진짜 그거 왜 생각 못 진짜 너무 또 오랜만이라서 많은 분들 너무 깜짝 놀랐고.', '놀랐고.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('6uCcpCagpgE_stt_5', '우기의 2025 절강위성 TV 연말 무대 비하인드 [i-talk] #236 | i-dle (아이들)ㅣSUB', 'G-IDLE', 'normal', 5, 51.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 51.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 252.26, 255.97, '달라졌어요 하려 올려 됐어요.', '됐어요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('KklkJGkvTmc_stt_6', '미연 (MIYEON) 2nd Mini Album [MY, Lover] 수록곡 Recording Behind #2ㅣSUB', 'G-IDLE', 'normal', 6, 53.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 53.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 12.35, 16.70, '녹음 있는 날인데요 엄청 좋은 노래여서.', '노래여서.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hSYoYsrcG-s_stt_7', '슈화의 타오위안 홍보대사 촬영 비하인드 [i-talk] #232 | i-dle (아이들)ㅣSUB', 'G-IDLE', 'normal', 7, 53.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 53.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25.41, 27.84, '나 여기서 찍을 때마다.', '때마다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('6uCcpCagpgE_stt_8', '우기의 2025 절강위성 TV 연말 무대 비하인드 [i-talk] #236 | i-dle (아이들)ㅣSUB', 'G-IDLE', 'normal', 8, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 234.37, 237.82, '너무 한다는 것을 어떻게 할 겁니다.', '겁니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hSYoYsrcG-s_stt_9', '슈화의 타오위안 홍보대사 촬영 비하인드 [i-talk] #232 | i-dle (아이들)ㅣSUB', 'G-IDLE', 'normal', 9, 56.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 56.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14.66, 17.15, '방금 찍으러 왔습니다.', '왔습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Ei5L6bl32f4_stt_10', '우기의 ''2025 YUQI FAN-CON SUPERSTAR琦妙夜'' 비하인드 [i-talk] #227 | i-dle (아이들)ㅣSUB', 'G-IDLE', 'normal', 10, 58.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 58.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9.06, 11.17, '광주에 있습니다.', '있습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YB3-vM7UGAU_stt_11', '미연 (MIYEON) ''Say My Name'' 응원법ㅣSUB', 'G-IDLE', 'normal', 11, 58.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 58.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 27.62, 29.99, '진짜 많이 기대할게요.', '기대할게요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5FeQADYl2w8_stt_12', '우기의 WATERBOMB MACAO 2025 비하인드 [i-talk] #229 | i-dle (아이들)ㅣSUB', 'G-IDLE', 'normal', 12, 59.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 59.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9.83, 11.87, '여기 어디입니까?', '어디입니까?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('2KOJHHfR3Is_stt_13', '🎂 HAPPY MINNIE DAY 🩷 (Feat. 민니의 소소하지만 확실한 생일 브이로그)ㅣSUB', 'G-IDLE', 'normal', 13, 59.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 59.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25.41, 29.82, '같이 못 할 수도 있어서 일단 미리 카메라를 켰어요.', '켰어요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Ls2UanIusQU_stt_14', '2026 시즌 그리팅 비하인드 [i-talk] #234 | i-dle (아이들)ㅣSUB', 'G-IDLE', 'normal', 14, 61.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 61.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9.92, 13.79, '안녕하세요 오늘은 첫 번째 처리 안 오기 고요.', '고요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Ls2UanIusQU_stt_15', '2026 시즌 그리팅 비하인드 [i-talk] #234 | i-dle (아이들)ㅣSUB', 'G-IDLE', 'normal', 15, 62.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 62.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14.18, 16.38, '오늘 농구 싶었답니다.', '싶었답니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Ei5L6bl32f4_stt_16', '우기의 ''2025 YUQI FAN-CON SUPERSTAR琦妙夜'' 비하인드 [i-talk] #227 | i-dle (아이들)ㅣSUB', 'G-IDLE', 'normal', 16, 64.4, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 64.4, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18.79, 21.21, '이번에는 15 정도 하는데.', '하는데.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Ei5L6bl32f4_stt_17', '우기의 ''2025 YUQI FAN-CON SUPERSTAR琦妙夜'' 비하인드 [i-talk] #227 | i-dle (아이들)ㅣSUB', 'G-IDLE', 'normal', 17, 66.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 66.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 26.47, 29.99, '나 재워 주는게 많더라고요 가사 있는거다.', '있는거다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Azorr0JBGmw_stt_18', '''F.F.L.Y'' SPECIAL CLIP 촬영 비하인드 [MY, Talk] #5 | 미연 (MIYEON)ㅣSUB', 'G-IDLE', 'normal', 18, 69.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 69.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 21.67, 27.04, '긴 여행을 떠나고 기분이랄까 서울에서 이런 거는 어떻게 다 되신 거예요?', '거예요?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('AOSYpBGD4eA_stt_19', '미연 (MIYEON) 2nd Mini Album [MY, Lover] 수록곡 Recording Behind #1ㅣSUB', 'G-IDLE', 'normal', 19, 72.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 72.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15.49, 19.97, '긴장되기도 하고 설레기도 하는데 열심히 잘 해 보도록 합시다.', '합시다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YB3-vM7UGAU_stt_20', '미연 (MIYEON) ''Say My Name'' 응원법ㅣSUB', 'G-IDLE', 'normal', 20, 73.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 73.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10.37, 19.97, '이번 타이틀곡은 세이마이네임 인데요 오랜만에 내 버버리 찾아오는 큰 저 미연이 이름을 크게 불러 줄 수 있는 응원 법을 알려 드리려고 합니다.', '합니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Azorr0JBGmw_stt_21', '''F.F.L.Y'' SPECIAL CLIP 촬영 비하인드 [MY, Talk] #5 | 미연 (MIYEON)ㅣSUB', 'G-IDLE', 'normal', 21, 73.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 73.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18.27, 21.53, '좀 멀리 없어요. 한 2시간 2시간 정도 왔어요.', '왔어요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('U-_6zPm_gHI_stt_22', '소연의 Coach Spring 2026 Show 비하인드 [i-talk] #231 | i-dle (아이들)ㅣSUB', 'G-IDLE', 'normal', 22, 74.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 74.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 20.83, 29.31, '아까 녹화된 거야 안 들어와 있었던 거 같은데 제가 아까 방금 되게 많은 말했는데요 달렸나 봐요 중요한 얘기는 몰라서 하자면요.', '하자면요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YB3-vM7UGAU_stt_23', '미연 (MIYEON) ''Say My Name'' 응원법ㅣSUB', 'G-IDLE', 'normal', 23, 74.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 74.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4.35, 9.53, '드디어 기다리고 기다리던 미안해 미니 일찍 마이러브 공개 되었습니다.', '되었습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YB3-vM7UGAU_stt_24', '미연 (MIYEON) ''Say My Name'' 응원법ㅣSUB', 'G-IDLE', 'normal', 24, 75.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 75.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 20.19, 22.65, '미안해 이런 진짜 거의 불러 줄 수 있죠.', '있죠.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Ei5L6bl32f4_stt_25', '우기의 ''2025 YUQI FAN-CON SUPERSTAR琦妙夜'' 비하인드 [i-talk] #227 | i-dle (아이들)ㅣSUB', 'G-IDLE', 'normal', 25, 76.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 76.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14.82, 17.76, '생일 기억 내 콘서트를 준비하고 있는데요.', '있는데요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('6uCcpCagpgE_stt_26', '우기의 2025 절강위성 TV 연말 무대 비하인드 [i-talk] #236 | i-dle (아이들)ㅣSUB', 'G-IDLE', 'normal', 26, 79.9, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 79.9, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 558.79, 561.47, '일이 없어 근데 돌아왔나 24일 대구 뭐야?', '뭐야?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('rZKx-SnGC6o_stt_27', '성만 빼고 다 빼앗긴 거예요? 제 이름을? [Say MY Name] | 미연 (MIYEON)ㅣSUB', 'G-IDLE', 'normal', 27, 80.4, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 80.4, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14.47, 19.55, '지루한 일상에서 도파민을 찾는 당신을 세이마이네임 모임에 초대합니다.', '초대합니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('KklkJGkvTmc_stt_28', '미연 (MIYEON) 2nd Mini Album [MY, Lover] 수록곡 Recording Behind #2ㅣSUB', 'G-IDLE', 'normal', 28, 84.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 84.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 26.40, 28.48, '밥 좀 느리게 바로 간다고 생각하고.', '생각하고.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('6uCcpCagpgE_stt_29', '우기의 2025 절강위성 TV 연말 무대 비하인드 [i-talk] #236 | i-dle (아이들)ㅣSUB', 'G-IDLE', 'normal', 29, 87.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 87.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 147.87, 152.19, '이거 진짜 거짓말 아니라 제가 이번에 원래 캐리어를 하나 들고 오라 그랬는데.', '그랬는데.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('6uCcpCagpgE_stt_30', '우기의 2025 절강위성 TV 연말 무대 비하인드 [i-talk] #236 | i-dle (아이들)ㅣSUB', 'G-IDLE', 'normal', 30, 100.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 100.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 549.63, 552.73, '하루가 없어질 데가 있어요. 그래서 한번 민현이 생일이니까.', '생일이니까.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gqCi4vuObsA_stt_1', 'BABYMONSTER - 2024 SBS GayoDaejeon BEHIND', 'BABYMONSTER', 'normal', 1, 24.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 24.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 117.41, 124.29, '아 너무 기대 되는데.', '되는데.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gqCi4vuObsA_stt_2', 'BABYMONSTER - 2024 SBS GayoDaejeon BEHIND', 'BABYMONSTER', 'normal', 2, 27.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 27.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 232.99, 245.05, '그냥 긴장 하더라도 마인드는.', '마인드는.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('EiSPHqAQ28w_stt_3', 'BABYMONSTER - [HELLO MONSTERS] BEHIND in LA #2 | WORLD TOUR DIARY', 'BABYMONSTER', 'normal', 3, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 16.45, 23.10, '매실 데이트 하는 날이에요.', '날이에요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gqCi4vuObsA_stt_4', 'BABYMONSTER - 2024 SBS GayoDaejeon BEHIND', 'BABYMONSTER', 'normal', 4, 33.4, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 33.4, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 103.30, 111.55, '안되는 즐기는거다.', '즐기는거다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gqCi4vuObsA_stt_5', 'BABYMONSTER - 2024 SBS GayoDaejeon BEHIND', 'BABYMONSTER', 'normal', 5, 34.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 34.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 38.27, 44.41, '아마 여기가 1번에서 해요.', '해요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gqCi4vuObsA_stt_6', 'BABYMONSTER - 2024 SBS GayoDaejeon BEHIND', 'BABYMONSTER', 'normal', 6, 34.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 34.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 74.24, 81.31, '걱정되는 거 없어요 동선이나.', '동선이나.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gqCi4vuObsA_stt_7', 'BABYMONSTER - 2024 SBS GayoDaejeon BEHIND', 'BABYMONSTER', 'normal', 7, 36.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 36.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 30.98, 33.21, '아직 안 되나?', '되나?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9O7GZKZBak8_stt_8', 'BAEMON HOUSE EP.0', 'BABYMONSTER', 'normal', 8, 37.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 37.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22.08, 28.67, '식물 창문 자연광 들어오는 5단 크게.', '크게.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('P6jk7mlOl7w_stt_9', 'BABYMONSTER - 2025 SBS GayoDaejeon BEHIND', 'BABYMONSTER', 'normal', 9, 38.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 38.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23.87, 28.54, '야 연습하는 날이에요.', '날이에요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GttvatKV014_stt_10', 'BABYMONSTER - ''HOT SAUCE'' MUSIC SHOW BEHIND', 'BABYMONSTER', 'normal', 10, 39.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 39.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23.52, 29.99, '이번에는 저번에는 잡아 먹잖아.', '먹잖아.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gqCi4vuObsA_stt_11', 'BABYMONSTER - 2024 SBS GayoDaejeon BEHIND', 'BABYMONSTER', 'normal', 11, 39.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 39.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 294.18, 297.28, '반쪽 열려 있냐고?', '있냐고?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('iGjY31tyzUc_stt_12', 'BABYMONSTER - [HELLO MONSTERS] BEHIND in NY #3 | WORLD TOUR DIARY', 'BABYMONSTER', 'normal', 12, 46.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 46.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 24.87, 29.12, '재미가 지나가고 있어 왔는데.', '왔는데.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gqCi4vuObsA_stt_13', 'BABYMONSTER - 2024 SBS GayoDaejeon BEHIND', 'BABYMONSTER', 'normal', 13, 49.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 49.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 266.50, 276.51, '안녕하세요 반갑습니다 오늘은 저희가 멋진 모델들을 준비했습니다.', '준비했습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-kB9Zj47kd8_stt_14', 'BABYMONSTER - 2025 MAMA AWARDS BEHIND', 'BABYMONSTER', 'normal', 14, 53.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 53.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25.31, 28.06, '맘마 처음이라 가지고.', '가지고.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GttvatKV014_stt_15', 'BABYMONSTER - ''HOT SAUCE'' MUSIC SHOW BEHIND', 'BABYMONSTER', 'normal', 15, 53.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 53.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18.11, 20.13, '좀 더 작아졌네요.', '작아졌네요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gqCi4vuObsA_stt_16', 'BABYMONSTER - 2024 SBS GayoDaejeon BEHIND', 'BABYMONSTER', 'normal', 16, 53.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 53.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 325.60, 327.74, '손을 저 멤버 하니까.', '하니까.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xNF9Sru4IN4_stt_17', 'BABYMONSTER - [HELLO MONSTERS] BEHIND in SINGAPORE | BM TALKPAWON', 'BABYMONSTER', 'normal', 17, 54.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 54.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 21.22, 24.29, '할머니들 콘서트 준비나?', '준비나?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GttvatKV014_stt_18', 'BABYMONSTER - ''HOT SAUCE'' MUSIC SHOW BEHIND', 'BABYMONSTER', 'normal', 18, 54.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 54.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 11.84, 16.80, '안녕하십니까 여기는 인기 가요 셋입니다.', '셋입니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('4mRw7AFO89g_stt_19', 'BABYMONSTER - ''DRIP & CLIK CLAK'' 1st MUSIC SHOW BEHIND', 'BABYMONSTER', 'normal', 19, 54.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 54.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 19.46, 22.17, '많이 연습을 해서 그런지.', '그런지.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9O7GZKZBak8_stt_20', 'BAEMON HOUSE EP.0', 'BABYMONSTER', 'normal', 20, 58.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 58.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9.76, 14.17, '던지면 꿈이 이루어지는 거니까 만들게요.', '만들게요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xNF9Sru4IN4_stt_21', 'BABYMONSTER - [HELLO MONSTERS] BEHIND in SINGAPORE | BM TALKPAWON', 'BABYMONSTER', 'normal', 21, 60.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 60.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25.57, 27.93, '현장을 급습해 볼 겁니다.', '겁니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9O7GZKZBak8_stt_22', 'BAEMON HOUSE EP.0', 'BABYMONSTER', 'normal', 22, 61.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 61.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2.91, 9.50, '일단 해 드리면 여러분들이 원하는 모든게 다 이루어지는 드림 하우스인 걸.', '걸.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('wBHKLsujSNA_stt_23', 'BABYMONSTER ‘HOT SAUCE’ 응원법🔥', 'BABYMONSTER', 'normal', 23, 63.4, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 63.4, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 12.03, 15.10, '카스트로 들어왔습니다.', '들어왔습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('RX5cXuenZ-Y_stt_24', 'BABYMONSTER - [HELLO MONSTERS] BEHIND in JAPAN #1 | WORLD TOUR DIARY', 'BABYMONSTER', 'normal', 24, 63.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 63.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 98.27, 101.82, '팬 분들이 많이 오셨으니까 잘 해주고 싶어.', '싶어.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('x4b_9YdhT8M_stt_25', 'BABYMONSTER ‘WE GO UP’ 응원법🆙', 'BABYMONSTER', 'normal', 25, 65.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 65.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 17.67, 26.24, '그리고 스케줄도 저희랑 같이 위고 업 하려면 진작에 있죠. 오늘은 저희가 응원 법을 알려 드리려고 합니다.', '합니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('x4b_9YdhT8M_stt_26', 'BABYMONSTER ‘WE GO UP’ 응원법🆙', 'BABYMONSTER', 'normal', 26, 66.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 66.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 7.01, 17.41, '저 베이비몬스터 두 번째 미니앨범 이거 모두 잘 듣고 있나요? 이제 곧 몬스터에게 뮤직비디오만큼 멋진 무대를 보여드릴텐데요.', '보여드릴텐데요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xNF9Sru4IN4_stt_27', 'BABYMONSTER - [HELLO MONSTERS] BEHIND in SINGAPORE | BM TALKPAWON', 'BABYMONSTER', 'normal', 27, 67.9, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 67.9, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 17.89, 21.05, '여기는 저희 a 스튜디오에 나와 있는데.', '있는데.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gqCi4vuObsA_stt_28', 'BABYMONSTER - 2024 SBS GayoDaejeon BEHIND', 'BABYMONSTER', 'normal', 28, 68.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 68.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 308.74, 311.20, '기사님들 바로 받으시고요.', '받으시고요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('uyxvtl-euzs_stt_29', 'BABYMONSTER - ‘WE GO UP’ RECORDING BEHIND', 'BABYMONSTER', 'normal', 29, 75.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 75.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22.79, 24.99, '위에다가 그냥 몇 번 연습해 볼까?', '볼까?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('wBHKLsujSNA_stt_30', 'BABYMONSTER ‘HOT SAUCE’ 응원법🔥', 'BABYMONSTER', 'normal', 30, 86.4, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 86.4, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 3.46, 6.53, '안녕하세요 베이비몬스터입니다.', '베이비몬스터입니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('yGHgqMK9YtQ_stt_1', 'MEOVV(미야오) - ''BURNING UP’ 활동 비하인드 #2', 'MEOVV', 'normal', 1, 15.4, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 15.4, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0.23, 11.26, '날 새고 있어.', '있어.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('sTTAMgUBTTY_stt_2', '[산악린산악회] 강해지기 위해,,,아침 산행💪 | Solo leveling through winter hiking⛰️ | vievv by NARIN', 'MEOVV', 'normal', 2, 24.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 24.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 269.57, 273.82, '무슨 말 하지?', '하지?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5-MnOdMvG1w_stt_3', 'ㅇㅏ니! 근데 미야오 데이트 볼래?🤔 | A date with MEOVV🐈‍⬛🐾 | vievv by MEOVV', 'MEOVV', 'normal', 3, 26.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 26.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4.32, 11.36, '아니 아니 아니 아니 아니?', '아니?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xQcEI7M0SrM_stt_4', 'MEOVV(미야오) - ''BURNING UP’ 활동 비하인드 #1', 'MEOVV', 'normal', 4, 30.4, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 30.4, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10.47, 19.01, '우리 마지막에 마지막에 뭐 했대?', '했대?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-uzc_eYR4A0_stt_5', 'MEOVV(미야오) - ‘BURNING UP’ 응원법 (FAN CHANT)', 'MEOVV', 'normal', 5, 36.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 36.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 3.81, 8.64, '밤이 되었습니다.', '되었습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5-MnOdMvG1w_stt_6', 'ㅇㅏ니! 근데 미야오 데이트 볼래?🤔 | A date with MEOVV🐈‍⬛🐾 | vievv by MEOVV', 'MEOVV', 'normal', 6, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 27.20, 29.99, '양고기 양곡 있어.', '있어.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('sTTAMgUBTTY_stt_7', '[산악린산악회] 강해지기 위해,,,아침 산행💪 | Solo leveling through winter hiking⛰️ | vievv by NARIN', 'MEOVV', 'normal', 7, 43.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 43.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 469.38, 472.16, '받으면 뭐 할 거예요?', '거예요?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ZiZ5Rz3iz6Y_stt_8', 'MEOVV(미야오) - OFFICIAL LIGHT STICK UNBOXING🐈‍⬛', 'MEOVV', 'normal', 8, 44.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 44.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 24.51, 29.99, '오늘은 저희가 직접 언급 생을 해 볼 건데요.', '건데요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('dAF-H7gei14_stt_9', 'INSIDE MEOVV | THE 1st EP [MY EYES OPEN VVIDE] GUANGZHOU & CHONGQING FAN SIGN EVENT BEHIND', 'MEOVV', 'normal', 9, 44.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 44.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 24.99, 28.29, '오늘은요 있고요.', '있고요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('AvyDuJvXIUg_stt_10', 'INSIDE MEOVV | THE FACT MUSIC AWARDS 2025 BEHIND', 'MEOVV', 'normal', 10, 46.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 46.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 17.83, 24.29, '오늘 비 온다고 했는데 아직 안 내려서 안 맞을 수 있을까?', '있을까?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ZiZ5Rz3iz6Y_stt_11', 'MEOVV(미야오) - OFFICIAL LIGHT STICK UNBOXING🐈‍⬛', 'MEOVV', 'normal', 11, 46.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 46.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18.40, 24.25, '드디어 미워 왜 공식응원봉 이리 와 너무 예쁘다.', '예쁘다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Q_GsIqUecPc_stt_12', '25학번 새내기 먀옹이들의 청춘 캠퍼스 라이프🏫🩵  | MEOVV in University | EP.6 | CATCH MEOVV SEASON 2', 'MEOVV', 'normal', 12, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14.69, 22.59, '어디로 왔겠어요 대학교 왔었잖아. 두 번째 방문입니다.', '방문입니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('sTTAMgUBTTY_stt_13', '[산악린산악회] 강해지기 위해,,,아침 산행💪 | Solo leveling through winter hiking⛰️ | vievv by NARIN', 'MEOVV', 'normal', 13, 47.9, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 47.9, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 510.08, 512.38, '내려가고 있어.', '있어.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('dAF-H7gei14_stt_14', 'INSIDE MEOVV | THE 1st EP [MY EYES OPEN VVIDE] GUANGZHOU & CHONGQING FAN SIGN EVENT BEHIND', 'MEOVV', 'normal', 14, 53.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 53.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 21.19, 24.09, '지금 판사 하러 가고 있어요.', '있어요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('IM5E6hs3KiA_stt_15', 'INSIDE MEOVV | 2025 FASHION WEEK BEHIND', 'MEOVV', 'normal', 15, 54.9, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 54.9, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10.95, 13.95, '오늘 PC 미카는 어디에요?', '어디에요?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ZlVHxxgj5CE_stt_16', '[LET’S MEOVV!] 미야오의 타임캡슐🥚 To. MEOVV & PAWMPAWM 💌 | MEOVV''s 1st Anniversary', 'MEOVV', 'normal', 16, 55.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 55.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 3.01, 11.45, '이렇게 모인 이유는 여기 앞에 편지지 보이져 있을 거예요. 근데 지금 두 개가 있잖아요.', '있잖아요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('sTTAMgUBTTY_stt_17', '[산악린산악회] 강해지기 위해,,,아침 산행💪 | Solo leveling through winter hiking⛰️ | vievv by NARIN', 'MEOVV', 'normal', 17, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 101.19, 103.49, '거기서 길 잃어 가지고.', '가지고.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('EJQgeEbRLD8_stt_18', 'INSIDE MEOVV | ‘HANDS UP’ MUSIC SHOW BEHIND', 'MEOVV', 'normal', 18, 56.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 56.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 17.28, 19.42, '한 사람 있으면 할 거야.', '거야.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('sTTAMgUBTTY_stt_19', '[산악린산악회] 강해지기 위해,,,아침 산행💪 | Solo leveling through winter hiking⛰️ | vievv by NARIN', 'MEOVV', 'normal', 19, 59.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 59.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 150.02, 153.76, '등산 고수분들이 많이 드시는 거 같은데.', '같은데.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('sTTAMgUBTTY_stt_20', '[산악린산악회] 강해지기 위해,,,아침 산행💪 | Solo leveling through winter hiking⛰️ | vievv by NARIN', 'MEOVV', 'normal', 20, 60.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 60.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 248.29, 257.15, '휴가 사 주면 안 막창이랑 같이 맛있는 거 먹으러 가기로 했거든요. 앞날이 제일 좋아하는 곳이 있어요.', '있어요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('sTTAMgUBTTY_stt_21', '[산악린산악회] 강해지기 위해,,,아침 산행💪 | Solo leveling through winter hiking⛰️ | vievv by NARIN', 'MEOVV', 'normal', 21, 61.9, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 61.9, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 67.84, 70.40, '등산을 재밌게 하고 갈게요.', '갈게요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Q_GsIqUecPc_stt_22', '25학번 새내기 먀옹이들의 청춘 캠퍼스 라이프🏫🩵  | MEOVV in University | EP.6 | CATCH MEOVV SEASON 2', 'MEOVV', 'normal', 22, 62.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 62.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9.15, 14.33, '실제로 대학생 한번 하루 통화해 보고 싶다. 난 강의 듣고 싶어.', '싶어.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('sTTAMgUBTTY_stt_23', '[산악린산악회] 강해지기 위해,,,아침 산행💪 | Solo leveling through winter hiking⛰️ | vievv by NARIN', 'MEOVV', 'normal', 23, 62.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 62.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2.43, 4.61, '내일 등산을 하라고요.', '하라고요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('sTTAMgUBTTY_stt_24', '[산악린산악회] 강해지기 위해,,,아침 산행💪 | Solo leveling through winter hiking⛰️ | vievv by NARIN', 'MEOVV', 'normal', 24, 69.4, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 69.4, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 328.35, 330.56, '제가이 노래가 너무 좋아서.', '좋아서.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ZiZ5Rz3iz6Y_stt_25', 'MEOVV(미야오) - OFFICIAL LIGHT STICK UNBOXING🐈‍⬛', 'MEOVV', 'normal', 25, 71.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 71.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14.72, 17.25, '안녕하세요 미안합니다.', '미안합니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ZlVHxxgj5CE_stt_26', '[LET’S MEOVV!] 미야오의 타임캡슐🥚 To. MEOVV & PAWMPAWM 💌 | MEOVV''s 1st Anniversary', 'MEOVV', 'normal', 26, 73.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 73.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 21.51, 25.76, '맞이해서 애들이 볼 수 있을 거예요. 그리고 나 혼자 쓰는 거는?', '거는?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('sTTAMgUBTTY_stt_27', '[산악린산악회] 강해지기 위해,,,아침 산행💪 | Solo leveling through winter hiking⛰️ | vievv by NARIN', 'MEOVV', 'normal', 27, 73.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 73.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 621.76, 628.35, '뒤에 오늘의 하이라이트 보여 본드를 너무 좋아하거든요. 오늘 메뉴 선정을 너무 잘한 거 같고.', '같고.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('sTTAMgUBTTY_stt_28', '[산악린산악회] 강해지기 위해,,,아침 산행💪 | Solo leveling through winter hiking⛰️ | vievv by NARIN', 'MEOVV', 'normal', 28, 78.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 78.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 414.21, 416.38, '안녕하세요 안녕하세요.', '안녕하세요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('sTTAMgUBTTY_stt_29', '[산악린산악회] 강해지기 위해,,,아침 산행💪 | Solo leveling through winter hiking⛰️ | vievv by NARIN', 'MEOVV', 'normal', 29, 85.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 85.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 355.75, 358.24, '저는 무조건 바다를 몰랐었거든요 근데.', '근데.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vR4QLHHs3mw_stt_30', '댓글 예쁘게 써라? 😼 #Shorts', 'MEOVV', 'normal', 30, 95.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 95.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 3.20, 5.37, '소개할게 있다고 해서 많이 가져왔는데.', '가져왔는데.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('cyuvTH6mymk_stt_1', 'Welcome to the Soul Zone!💫 Six Mates’ Unpredictable Journey to Find a Soulmate👭✨ | ‘SOULMATE’ #1', 'IZNA', 'normal', 1, 36.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 36.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 21.89, 28.41, '첫날부터 너무 설렜어요 저는.', '저는.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('qfWmnMUJzp0_stt_2', 'The Final Choice❗️ After Crossed Paths, Who Is the True Soulmate?👭🔍 | ‘SOULMATE’ #2', 'IZNA', 'normal', 2, 36.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 36.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14.95, 19.29, '언니 킬러 자 나 처음이야.', '처음이야.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('60oWvZnf-xY_stt_3', '[izlog] The Last Day Going to School 🏫🥺 Had So Much Fun, Bye 👋 | Sarang’s Graduation Vlog 🎓✨', 'IZNA', 'normal', 3, 36.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 36.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 294.37, 296.61, '언제 올 건데?', '건데?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('lpchjN9k5FI_stt_4', '[Behind the Scenes] Heartfelt 1st Win🏆 A Dazzling Ride with naya🏎️ | ‘Not Just Pretty’ PROMOTION #2', 'IZNA', 'normal', 4, 38.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 38.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18.47, 28.64, '나 오늘 머리 좀 긴 머리를 그렇게이 사람은 아니니까 괜찮아요.', '괜찮아요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vcztVagfvec_stt_5', '[Behind the Scenes] Hidden Talent!💥 BangCheese🍞🧀 Aims for naya’s Heart💘 | 2025 ISAC Practice', 'IZNA', 'normal', 5, 39.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 39.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22.72, 28.89, '게임 장애 있는 것 그런 것만 해 봤지 이렇게.', '이렇게.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8kLoNwV0u9U_stt_6', '[izlog] Varsity IZNA Steals Naya’s Heart 💗 izna’s Sparkling Campus Festivals✨ | Campus Festival Vlog', 'IZNA', 'normal', 6, 44.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 44.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 24.39, 29.99, '콩나물 비빔밥 유명하잖아요.', '유명하잖아요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('60oWvZnf-xY_stt_7', '[izlog] The Last Day Going to School 🏫🥺 Had So Much Fun, Bye 👋 | Sarang’s Graduation Vlog 🎓✨', 'IZNA', 'normal', 7, 46.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 46.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 304.32, 308.16, '친구들 날씨가 장난 아니야.', '아니야.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('qfWmnMUJzp0_stt_8', 'The Final Choice❗️ After Crossed Paths, Who Is the True Soulmate?👭🔍 | ‘SOULMATE’ #2', 'IZNA', 'normal', 8, 47.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 47.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23.81, 29.99, '기운이 좋지 않다 기운이 안 좋다는 궁합도 안 맞는데.', '맞는데.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8mWECkkhyN8_stt_9', 'Endless izna Night🌙 A Year of Running Together✨ izna Forever with naya💓 | izna 1st Anniversary #2', 'IZNA', 'normal', 9, 48.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 48.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14.40, 19.07, '오늘도 먹고 있는 애들 먹여 살린 힘드네.', '힘드네.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9dagO-faFhw_stt_10', '[Behind the Scenes] naya is happy because izna won’t stop🔥 | ''Not Just Pretty'' PROMOTION #1', 'IZNA', 'normal', 10, 48.9, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 48.9, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18.18, 21.31, '분위기가 바뀐 거 같죠네?', '같죠네?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('cCsiaotXRQU_stt_11', 'izna 2026학년도 수능 응원 메시지💌', 'IZNA', 'normal', 11, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 3.71, 7.71, '앞으로 다가왔습니다.', '다가왔습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('bd65wPXr_gc_stt_12', '[🧠=?] izna 1st Anniversary : Mind Connect #izna #이즈나', 'IZNA', 'normal', 12, 50.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 50.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25.70, 29.99, '불땡 볶음면 포기할 수 없습니다 거는?', '거는?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('bd65wPXr_gc_stt_13', '[🧠=?] izna 1st Anniversary : Mind Connect #izna #이즈나', 'IZNA', 'normal', 13, 54.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 54.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 16.03, 25.25, '조금 방금 집에서 금방이랑 비슷한 방이 더 맛있는 빵이 나을 것 같아 그래서 그거 먹으면 될 거 같아.', '같아.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9hzk4cnBVS4_stt_14', '[Behind the Scenes] Japan Fan Signing, More Special After a Year✨ Let’s Meet More❣️| JAPAN PROMOTION', 'IZNA', 'normal', 14, 56.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 56.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15.87, 18.08, '인터넷은 좋겠다.', '좋겠다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('qfWmnMUJzp0_stt_15', 'The Final Choice❗️ After Crossed Paths, Who Is the True Soulmate?👭🔍 | ‘SOULMATE’ #2', 'IZNA', 'normal', 15, 56.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 56.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6.40, 14.81, '고생했으니까 하나도 안 추운 거 같으면 치면네 철벽을 치시네요 갖고 있어요 같이 하자.', '하자.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('lcQulHUZ38w_stt_16', '[izlog] Where you at 👀? izna’s first ''Mamma Mia’ stage in Lisbon🇵🇹💓 | MUSIC BANK in LISBON', 'IZNA', 'normal', 16, 57.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 57.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15.59, 17.82, '병 공항에 와 있습니다.', '있습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PmaMzoVA140_stt_17', '[Behind the Scenes] Operation: Perfect💯 P.R.O izna Sending naya High&Low💞 | ‘Psycho’ OST RECORDING', 'IZNA', 'normal', 17, 59.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 59.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18.18, 21.53, '세계 제일 열심히 연습 했던 거 같은데.', '같은데.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('cCsiaotXRQU_stt_18', 'izna 2026학년도 수능 응원 메시지💌', 'IZNA', 'normal', 18, 59.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 59.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14.08, 19.84, '지금까지 노력한만큼 좋은 결과 있었으면 좋겠습니다.', '좋겠습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('cCsiaotXRQU_stt_19', 'izna 2026학년도 수능 응원 메시지💌', 'IZNA', 'normal', 19, 59.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 59.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 20.07, 26.17, '날씨가 많이 추우니까 따뜻하게 챙겨 드시고 꼭 잊지 말고 챙기세요.', '챙기세요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('60oWvZnf-xY_stt_20', '[izlog] The Last Day Going to School 🏫🥺 Had So Much Fun, Bye 👋 | Sarang’s Graduation Vlog 🎓✨', 'IZNA', 'normal', 20, 60.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 60.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 63.81, 66.78, '나오셔서 아침에 가셔 가지고.', '가지고.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('cCsiaotXRQU_stt_21', 'izna 2026학년도 수능 응원 메시지💌', 'IZNA', 'normal', 21, 61.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 61.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8.19, 13.34, '혼자 열심히 달려 오신 선생님들 너무 고생 많으셨습니다.', '많으셨습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('60oWvZnf-xY_stt_22', '[izlog] The Last Day Going to School 🏫🥺 Had So Much Fun, Bye 👋 | Sarang’s Graduation Vlog 🎓✨', 'IZNA', 'normal', 22, 62.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 62.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 593.86, 596.03, '샵에서 학교로 가는데.', '가는데.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PmaMzoVA140_stt_23', '[Behind the Scenes] Operation: Perfect💯 P.R.O izna Sending naya High&Low💞 | ‘Psycho’ OST RECORDING', 'IZNA', 'normal', 23, 62.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 62.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10.95, 15.61, '오늘은 작정명 순정 웹툰 OST를 녹음 알았으니까.', '알았으니까.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('bd65wPXr_gc_stt_24', '[🧠=?] izna 1st Anniversary : Mind Connect #izna #이즈나', 'IZNA', 'normal', 24, 63.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 63.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8.55, 15.93, '안녕입니다 저는 그럼 지금부터 멤버들 뭐를 선택했을 찜질을 하도록 하겠습니다.', '하겠습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9dagO-faFhw_stt_25', '[Behind the Scenes] naya is happy because izna won’t stop🔥 | ''Not Just Pretty'' PROMOTION #1', 'IZNA', 'normal', 25, 65.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 65.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 21.99, 28.70, '단체 인사도 더 드리겠습니다. 안녕하세요입니다 부탁드립니다.', '부탁드립니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('60oWvZnf-xY_stt_26', '[izlog] The Last Day Going to School 🏫🥺 Had So Much Fun, Bye 👋 | Sarang’s Graduation Vlog 🎓✨', 'IZNA', 'normal', 26, 66.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 66.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 576.10, 580.03, '저보다 더 저 졸업식에 기대하고 축하해 줘 가지고.', '가지고.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('60oWvZnf-xY_stt_27', '[izlog] The Last Day Going to School 🏫🥺 Had So Much Fun, Bye 👋 | Sarang’s Graduation Vlog 🎓✨', 'IZNA', 'normal', 27, 67.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 67.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 466.91, 470.43, '스무살 케이크는 제가 직접 만들어 보는 거야.', '거야.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('60oWvZnf-xY_stt_28', '[izlog] The Last Day Going to School 🏫🥺 Had So Much Fun, Bye 👋 | Sarang’s Graduation Vlog 🎓✨', 'IZNA', 'normal', 28, 75.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 75.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 491.68, 495.39, '끝나면 먹을 거야 언젠지는 비밀 이렇게 얘기했는데.', '얘기했는데.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('60oWvZnf-xY_stt_29', '[izlog] The Last Day Going to School 🏫🥺 Had So Much Fun, Bye 👋 | Sarang’s Graduation Vlog 🎓✨', 'IZNA', 'normal', 29, 79.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 79.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 559.52, 563.93, '멤버들이 학교에서 추워서 축하를 해 주고 싶다고 얘기를 했었는데.', '했었는데.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('60oWvZnf-xY_stt_30', '[izlog] The Last Day Going to School 🏫🥺 Had So Much Fun, Bye 👋 | Sarang’s Graduation Vlog 🎓✨', 'IZNA', 'normal', 30, 80.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 80.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 482.63, 485.85, '오늘 졸업식에 위해서 둘이 호텔을 했었단 말이죠.', '말이죠.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('uxkJL3ZWjlw_stt_1', '저희 숭숭이들이! 원숭이들에게 영상 편지 남겨보겠습니다 ⸜(｡˃ ᵕ ˂ )⸝♡  | Hearts2Hearts 하츠투하츠 Fan Sign Event in Japan BH2ND', 'Hearts2Hearts', 'normal', 1, 32.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 32.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15.04, 28.38, '그래서 너무 오랜만에 왔어 그 자체가 입술 안 발라 가지고 좀 그렇대.', '그렇대.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_Lx7isLHT5g_stt_2', '저희는 미녀모션이에요! 𓂃ෆ˚ | Hearts2Hearts 하츠투하츠 2025 MBC 가요대제전 BH2ND #1', 'Hearts2Hearts', 'normal', 2, 34.9, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 34.9, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 978.95, 984.99, '오늘 셀프 메이크업 했어요.', '했어요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XUbdua2mS1k_stt_3', '막방 찢어버릴 거예요! ( ◡̀_◡́) | Hearts2Hearts 하츠투하츠 ‘FOCUS’ Music Show BH2ND #2', 'Hearts2Hearts', 'normal', 3, 36.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 36.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 16.32, 22.94, '오늘은 조금 다 돼도 예쁘고 귀엽게 해 봐.', '봐.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_Lx7isLHT5g_stt_4', '저희는 미녀모션이에요! 𓂃ෆ˚ | Hearts2Hearts 하츠투하츠 2025 MBC 가요대제전 BH2ND #1', 'Hearts2Hearts', 'normal', 4, 40.9, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 40.9, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 1008.83, 1014.62, '그리고 이거는 하나만 아 그렇군요.', '그렇군요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('JJwiWgmraoA_stt_5', '여기 집중하세요 F.O.C.U.S (˵ - _ - ˵ )✧˖  | Hearts2Hearts 하츠투하츠 ‘FOCUS’ Music Show BH2ND #1', 'Hearts2Hearts', 'normal', 5, 42.8, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 42.8, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 17.06, 29.99, '삼계탕 원래는 안 먹으려고 하거든요. 저도 막 방송이니까 든든하게 먹어야 될 거 같아서.', '같아서.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-SmKQwHGTXc_stt_6', '자 다음은 다 같이 안아~ (つ｡˃ ᵕ ˂)つ ⸝♡ | Hearts2Hearts 하츠투하츠 2025 KGMA BH2ND', 'Hearts2Hearts', 'normal', 6, 47.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 47.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 20.07, 22.43, '말하면 끊어요.', '끊어요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('CL4UlVw4kGE_stt_7', '[vlog] 집에서 보낸 연휴 브이로그🏠ㅣ쌍둥이랑 칸쵸깡 ・ 고양이랑 놀기 ・ 가족들과 호캉스 ・ 사랑 가득 집밥ㅣHSH (HOME SWEET HOME)', 'Hearts2Hearts', 'normal', 7, 50.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 50.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 24.29, 26.46, '우리랑 같이 뭐야?', '뭐야?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_Lx7isLHT5g_stt_8', '저희는 미녀모션이에요! 𓂃ෆ˚ | Hearts2Hearts 하츠투하츠 2025 MBC 가요대제전 BH2ND #1', 'Hearts2Hearts', 'normal', 8, 53.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 53.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 37.79, 39.81, '오늘도 자주 있는.', '있는.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_Lx7isLHT5g_stt_9', '저희는 미녀모션이에요! 𓂃ෆ˚ | Hearts2Hearts 하츠투하츠 2025 MBC 가요대제전 BH2ND #1', 'Hearts2Hearts', 'normal', 9, 54.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 54.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 424.67, 430.46, '마지막에 하고 일어날 때 이거 요렇게 점점 내려오면서.', '내려오면서.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hgbFhkIUTWU_stt_10', 'A Day in Coloane Village, Macau𓇼 ⋆.˚ Egg Tarts, Bubble Tea & Dinner!(๑ᵔ⤙ᵔ๑) ✧ S2cret Diary ꒰ EP.8 ꒱', 'Hearts2Hearts', 'normal', 10, 59.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 59.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 24.96, 29.99, '이 옷을 마치고 처음 에그타르트가 유명하잖아요.', '유명하잖아요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-SmKQwHGTXc_stt_11', '자 다음은 다 같이 안아~ (つ｡˃ ᵕ ˂)つ ⸝♡ | Hearts2Hearts 하츠투하츠 2025 KGMA BH2ND', 'Hearts2Hearts', 'normal', 11, 59.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 59.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22.53, 26.94, '라면 전자레인지 1분 30초 물 조금 먹어야지.', '먹어야지.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_Lx7isLHT5g_stt_12', '저희는 미녀모션이에요! 𓂃ෆ˚ | Hearts2Hearts 하츠투하츠 2025 MBC 가요대제전 BH2ND #1', 'Hearts2Hearts', 'normal', 12, 61.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 61.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 756.51, 759.42, '엄마 알았어 엄마 감사합니다.', '감사합니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hgbFhkIUTWU_stt_13', 'A Day in Coloane Village, Macau𓇼 ⋆.˚ Egg Tarts, Bubble Tea & Dinner!(๑ᵔ⤙ᵔ๑) ✧ S2cret Diary ꒰ EP.8 ꒱', 'Hearts2Hearts', 'normal', 13, 61.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 61.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 17.31, 19.61, '여기 되게 예쁘고 어때요?', '어때요?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('uxkJL3ZWjlw_stt_14', '저희 숭숭이들이! 원숭이들에게 영상 편지 남겨보겠습니다 ⸜(｡˃ ᵕ ˂ )⸝♡  | Hearts2Hearts 하츠투하츠 Fan Sign Event in Japan BH2ND', 'Hearts2Hearts', 'normal', 14, 62.7, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 62.7, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4.51, 7.33, '아나타와 다이스키 데스까?', '데스까?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('CL4UlVw4kGE_stt_15', '[vlog] 집에서 보낸 연휴 브이로그🏠ㅣ쌍둥이랑 칸쵸깡 ・ 고양이랑 놀기 ・ 가족들과 호캉스 ・ 사랑 가득 집밥ㅣHSH (HOME SWEET HOME)', 'Hearts2Hearts', 'normal', 15, 63.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 63.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9.38, 15.29, '어제 저녁에 집에 도착해서 가족들이랑 같이 밥을 먹으러 나갈 겁니다.', '겁니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('qhnA7u2ezFs_stt_16', '절대로 뒤를 돌아봐서는 안 됩니다🩸 비명과 비겁이 난무하는 공포 체험😱 ✦ʚ Hearts Chase EP.13 ɞ✦', 'Hearts2Hearts', 'normal', 16, 64.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 64.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23.65, 26.97, '아무튼 너무 많이 속상해 대박이네요.', '대박이네요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('CL4UlVw4kGE_stt_17', '[vlog] 집에서 보낸 연휴 브이로그🏠ㅣ쌍둥이랑 칸쵸깡 ・ 고양이랑 놀기 ・ 가족들과 호캉스 ・ 사랑 가득 집밥ㅣHSH (HOME SWEET HOME)', 'Hearts2Hearts', 'normal', 17, 64.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 64.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15.43, 20.25, '파리를 잡겠습니다. 파스타를 먹으러 갔는데요.', '갔는데요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('KSARBfbflV4_stt_18', '오늘은! MMA-NA 생일 ⋆✴︎˚｡⋆🎂  ༘⋆ | Hearts2Hearts 하츠투하츠 2025 MMA BH2ND', 'Hearts2Hearts', 'normal', 18, 64.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 64.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18.05, 22.85, '언젠간 하겠지 했는데 애기 빨리 하게 될지 몰라서 안 했잖아.', '했잖아.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XUbdua2mS1k_stt_19', '막방 찢어버릴 거예요! ( ◡̀_◡́) | Hearts2Hearts 하츠투하츠 ‘FOCUS’ Music Show BH2ND #2', 'Hearts2Hearts', 'normal', 19, 65.3, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 65.3, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 13.09, 15.74, '다른 느낌의 갈래꽃 찾읍니다.', '찾읍니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_Lx7isLHT5g_stt_20', '저희는 미녀모션이에요! 𓂃ෆ˚ | Hearts2Hearts 하츠투하츠 2025 MBC 가요대제전 BH2ND #1', 'Hearts2Hearts', 'normal', 20, 66.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 66.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 1037.63, 1047.81, '그리고 오늘 야간 고양이 같은 눈물 위에 올려 버려 갖고요 돈은 내가 쿨톤 메이크업을 위해서 핑크블러셔 핑크 208 나왔습니다.', '나왔습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('agnZiB74OYc_stt_21', '대학 축제 우리 조금 통하는듯~ ദ്ദി ˃ ᴗ ˂ ෆෆ  | Hearts2Hearts 하츠투하츠 University Festival 2025 BH2ND', 'Hearts2Hearts', 'normal', 21, 66.4, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 66.4, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 17.31, 19.90, '안녕하세요 영어로 나와요.', '나와요.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hgbFhkIUTWU_stt_22', 'A Day in Coloane Village, Macau𓇼 ⋆.˚ Egg Tarts, Bubble Tea & Dinner!(๑ᵔ⤙ᵔ๑) ✧ S2cret Diary ꒰ EP.8 ꒱', 'Hearts2Hearts', 'normal', 22, 67.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 67.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 20.26, 24.80, '카카오톡으로 다니는 건 처음인데 저희가 내일 있을까?', '있을까?', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Wvd4GTugNtE_stt_23', '나도 저런 양 갈래 해보고 싶다 (• ᴖ •｡ ) | 2025 MUSIC BANK GLOBAL FESTIVAL IN JAPAN BH2ND', 'Hearts2Hearts', 'normal', 23, 68.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 68.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 13.63, 15.77, '많이 했거든요 성을 말해 봐.', '봐.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_Lx7isLHT5g_stt_24', '저희는 미녀모션이에요! 𓂃ෆ˚ | Hearts2Hearts 하츠투하츠 2025 MBC 가요대제전 BH2ND #1', 'Hearts2Hearts', 'normal', 24, 69.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 69.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 777.60, 783.58, '안무를 재해석해서 새로 짜져서 정말 멋있는 퍼포먼스가 탄생을 했답니다.', '했답니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_Lx7isLHT5g_stt_25', '저희는 미녀모션이에요! 𓂃ෆ˚ | Hearts2Hearts 하츠투하츠 2025 MBC 가요대제전 BH2ND #1', 'Hearts2Hearts', 'normal', 25, 70.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 70.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 636.03, 638.72, '안녕하세요 진짜지 아닙니다.', '아닙니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_Lx7isLHT5g_stt_26', '저희는 미녀모션이에요! 𓂃ෆ˚ | Hearts2Hearts 하츠투하츠 2025 MBC 가요대제전 BH2ND #1', 'Hearts2Hearts', 'normal', 26, 72.1, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 72.1, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 558.08, 563.01, '나무 자체가 뭔가 연습생때 2월 되게 오랜만에 해 보는데 김해 오면서.', '오면서.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('KSARBfbflV4_stt_27', '오늘은! MMA-NA 생일 ⋆✴︎˚｡⋆🎂  ༘⋆ | Hearts2Hearts 하츠투하츠 2025 MMA BH2ND', 'Hearts2Hearts', 'normal', 27, 75.2, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 75.2, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8.39, 10.88, '정원에서 약간 도시 쪽으로 가는데.', '가는데.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('KSARBfbflV4_stt_28', '오늘은! MMA-NA 생일 ⋆✴︎˚｡⋆🎂  ༘⋆ | Hearts2Hearts 하츠투하츠 2025 MMA BH2ND', 'Hearts2Hearts', 'normal', 28, 75.6, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 75.6, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23.33, 25.41, '분들이 좋아해 주실 것 같아서.', '같아서.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_Lx7isLHT5g_stt_29', '저희는 미녀모션이에요! 𓂃ෆ˚ | Hearts2Hearts 하츠투하츠 2025 MBC 가요대제전 BH2ND #1', 'Hearts2Hearts', 'normal', 29, 77.4, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 77.4, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4.58, 6.91, '애니모션 연습하러 왔습니다.', '왔습니다.', '', '');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_Lx7isLHT5g_stt_30', '저희는 미녀모션이에요! 𓂃ෆ˚ | Hearts2Hearts 하츠투하츠 2025 MBC 가요대제전 BH2ND #1', 'Hearts2Hearts', 'normal', 30, 78.4, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 78.4, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 1100.58, 1107.10, '촉촉한 숯불 해야 돼요. 차가운 우유랑 먹어 줘야 되거든요. 근데 우유가 없으니까 높여 넣어 줄게요.', '줄게요.', '', '');
END $$;

