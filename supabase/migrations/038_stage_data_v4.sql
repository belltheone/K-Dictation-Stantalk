-- Dredge Content V4 (YouTube Subtitles)
-- 생성 시각: 2026-01-18 22:01:26.616970


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('WYsdxVuMJsE', '진 (Jin) ‘RUNSEOKJIN_EP.TOUR’ in AMSTERDAM: LIVE VIEWING Tickets are Available', 'BTS', 'normal', 1, 19.5, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 19.5, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15, 21, '아미 여러분, 최고', '최고', '', 'The best!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1ZcB3M7tMTQ', '[EPISODE] 진 (Jin) ‘RUNSEOKJIN_EP.TOUR’ in U.S. & EUROPE - BTS (방탄소년단)', 'BTS', 'normal', 2, 21.666666666666668, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 21.666666666666668, is_locked = true, is_published = true
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
  VALUES ('0hH9gsprag8', '[Episode] 진 (Jin) ''RUNSEOKJIN_EP.TOUR'' ENCORE - BTS (방탄소년단)', 'BTS', 'normal', 3, 28.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 28.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 317, 323, '숨 돌리는 시간 좀 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('TVmawu479vY', '[VLOG] RM''s Trip in Europe', 'BTS', 'normal', 4, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14, 19, '대충 찍었던 거를 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1ZcB3M7tMTQ', '[EPISODE] 진 (Jin) ‘RUNSEOKJIN_EP.TOUR’ in U.S. & EUROPE - BTS (방탄소년단)', 'BTS', 'normal', 5, 35.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 35.0, is_locked = true, is_published = true
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
  VALUES ('TVmawu479vY', '[VLOG] RM''s Trip in Europe', 'BTS', 'normal', 6, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 41, 45, '진짜 미쳐 버렸네 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0hH9gsprag8', '[Episode] 진 (Jin) ''RUNSEOKJIN_EP.TOUR'' ENCORE - BTS (방탄소년단)', 'BTS', 'normal', 7, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 175, 178, '회 먹고 아이 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0hH9gsprag8', '[Episode] 진 (Jin) ''RUNSEOKJIN_EP.TOUR'' ENCORE - BTS (방탄소년단)', 'BTS', 'normal', 8, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 39.0, is_locked = true, is_published = true
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
  VALUES ('TVmawu479vY', '[VLOG] RM''s Trip in Europe', 'BTS', 'normal', 9, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
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
  VALUES ('1ZcB3M7tMTQ', '[EPISODE] 진 (Jin) ‘RUNSEOKJIN_EP.TOUR’ in U.S. & EUROPE - BTS (방탄소년단)', 'BTS', 'normal', 10, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 251, 257, '한 번 더 열심히 해보도록 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0hH9gsprag8', '[Episode] 진 (Jin) ''RUNSEOKJIN_EP.TOUR'' ENCORE - BTS (방탄소년단)', 'BTS', 'normal', 11, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 1, 6, '바퀴 하면서 한번 맛 좀 보자', '보자', '보다', 'Let''s see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0hH9gsprag8', '[Episode] 진 (Jin) ''RUNSEOKJIN_EP.TOUR'' ENCORE - BTS (방탄소년단)', 'BTS', 'normal', 12, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 342, 346, '로 먼저 보여주는 - 그게 좋지', '좋지', '좋다', 'It is good, right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ps1o5KW3298', '[PREVIEW] 진 (Jin) ''RUNSEOKJIN_EP.TOUR in GOYANG'' The Original SPOT 2', 'BTS', 'normal', 13, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 13, 17, '[석진아 첫 솔로 콘서트 축하해', '축하해', '축하하다', 'Congrats');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VgONZ_UO7AQ', '[PREVIEW] 진 (Jin) ''RUNSEOKJIN_EP.TOUR in GOYANG'' The Original SPOT 1', 'BTS', 'normal', 14, 66.33333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 66.33333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 53, 56, '[석진아 첫 솔로 콘서트 축하해', '축하해', '축하하다', 'Congrats');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VgONZ_UO7AQ', '[PREVIEW] 진 (Jin) ''RUNSEOKJIN_EP.TOUR in GOYANG'' The Original SPOT 1', 'BTS', 'normal', 15, 74.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 74.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 55, 58, '녕 나의 우주야 다시 만나 반가워', '반가워', '반갑다', 'Nice to meet you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('jzBa2WqkxvI', '[Light Jeans] Japan Music Show & Coke STUDIO LIVE 2024 Behind🪩 | NewJeans', 'NewJeans', 'normal', 1, 27.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 27.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 101, 105, '(다니엘) 아 귀여워', '귀여워', '귀엽다', 'It is cute');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('zgpIgqsoNAs', '[Light Jeans] Shinhan Securities Campaign behind 🔎 | NewJeans', 'NewJeans', 'normal', 2, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 11, 15, '좀 다양하게 해보자', '보자', '보다', 'Let''s see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('wi9ZBvFFVqI', '[Light Jeans] MINJI & HANNI SPUR Photoshoot Behind 💐ㅣNewJeans', 'NewJeans', 'normal', 3, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 383, 388, '하니가 먼저 퇴근했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YC2KOfxbQsc', '[Jeans'' ZINE] 김장대소동 EP.3 모두 모두~ 김치✌️🙂✌️ | NewJeans', 'NewJeans', 'normal', 4, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8, 12, '멸치 액젓 해볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YC2KOfxbQsc', '[Jeans'' ZINE] 김장대소동 EP.3 모두 모두~ 김치✌️🙂✌️ | NewJeans', 'NewJeans', 'normal', 5, 30.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 30.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15, 18, '네? [이걸로 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pvOR9ED534U', '[Light Jeans] DANIELLE Marie Claire Photoshoot Behind ☀️ㅣNewJeans', 'NewJeans', 'normal', 6, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 46, 50, '저는 여름을 좋아해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('zgpIgqsoNAs', '[Light Jeans] Shinhan Securities Campaign behind 🔎 | NewJeans', 'NewJeans', 'normal', 7, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23, 27, '[(작가님) 조금 더 신나', '신나', '신나다', 'I am excited');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('E12neOzZmpI', 'Jeans'' Clip # 0️⃣ 1️⃣ | NewJeans', 'NewJeans', 'normal', 8, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 73, 77, '비밀 같은 거 없어요', '없어요', '없다', 'There is not / I don''t have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('jzBa2WqkxvI', '[Light Jeans] Japan Music Show & Coke STUDIO LIVE 2024 Behind🪩 | NewJeans', 'NewJeans', 'normal', 9, 34.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 34.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 86, 89, '(다니엘) 어머 예뻐', '예뻐', '예쁘다', 'It is pretty');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('jzBa2WqkxvI', '[Light Jeans] Japan Music Show & Coke STUDIO LIVE 2024 Behind🪩 | NewJeans', 'NewJeans', 'normal', 10, 35.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 35.0, is_locked = true, is_published = true
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
  VALUES ('YC2KOfxbQsc', '[Jeans'' ZINE] 김장대소동 EP.3 모두 모두~ 김치✌️🙂✌️ | NewJeans', 'NewJeans', 'normal', 11, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 47, 52, '난 대파리(?) 향 너무 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pvOR9ED534U', '[Light Jeans] DANIELLE Marie Claire Photoshoot Behind ☀️ㅣNewJeans', 'NewJeans', 'normal', 12, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 43, 46, '너무 마음에 들어요', '들어요', '듣다', 'I listen');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('zgpIgqsoNAs', '[Light Jeans] Shinhan Securities Campaign behind 🔎 | NewJeans', 'NewJeans', 'normal', 13, 49.83333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 49.83333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 174, 177, '귀엽습니다 [토끼도 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YhlFoAslBC4', '[Light Jeans] OLENS Behind💫 | NewJeans', 'NewJeans', 'normal', 14, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 186, 190, '(STAFF) 너무 잘하고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YC2KOfxbQsc', '[Jeans'' ZINE] 김장대소동 EP.3 모두 모두~ 김치✌️🙂✌️ | NewJeans', 'NewJeans', 'normal', 15, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 41, 45, '우리 지금 떠들 시간이 없어요', '없어요', '없다', 'There is not / I don''t have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('wi9ZBvFFVqI', '[Light Jeans] MINJI & HANNI SPUR Photoshoot Behind 💐ㅣNewJeans', 'NewJeans', 'normal', 16, 70.16666666666667, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 70.16666666666667, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 172, 175, ') 둘이 얼굴 가까이 맞대 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('tkFMRobZUPs', '바로 그 That’s My... 👉👑💘 Reaction', 'IVE', 'normal', 1, 25.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 25.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 112, 117, '[(화제의 댄브)] - 가자', '가자', '가다', 'Let''s go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-EF0_W0FcgA', '[IVE ON] JANGWONYOUNG X BVLGARI BEHIND', 'IVE', 'normal', 2, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 126, 131, '[보기만 해도 기분 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('rZPGoc307i0', '[IVE ON] 2025 THE FACT MUSIC AWARDS BEHIND', 'IVE', 'normal', 3, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 105, 109, '- 우 - 너무 예쁜데', '예쁜데', '', 'It is pretty though');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('jJdBoYk-kcM', '[IVE LOG] 삐빅 LA vibe ON⚡｜FALL LOG', 'IVE', 'normal', 4, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 52, 57, '처음 써보는데 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Mlfce17QpPs', '03. Dear, My Feelings', 'IVE', 'normal', 5, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25, 29, '이제부턴 안아 줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Mlfce17QpPs', '03. Dear, My Feelings', 'IVE', 'normal', 6, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 41, 45, '모두 소중해 고마워', '고마워', '고맙다', 'Thanks');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('q_Xq_q9A-qI', '[IVE ON] REI X MILLET BEHIND', 'IVE', 'normal', 7, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 221, 225, '지금 머리띠도 썼어요', '썼어요', '쓰다', 'I wrote');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('rZPGoc307i0', '[IVE ON] 2025 THE FACT MUSIC AWARDS BEHIND', 'IVE', 'normal', 8, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 33.0, is_locked = true, is_published = true
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
  VALUES ('X71QQ_L9LC0', '[IVE ON] ''XOXZ'' 첫주 BEHIND', 'IVE', 'normal', 9, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 33.0, is_locked = true, is_published = true
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
  VALUES ('Xm0z10LfoC0', '[IVE OFF] LIZ와 겨울나기🍊 l ASMR☃️', 'IVE', 'normal', 10, 35.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 35.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 277, 282, '본격적인 ASMR을 시작해', '시작해', '시작하다', 'Let''s start');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('tkFMRobZUPs', '바로 그 That’s My... 👉👑💘 Reaction', 'IVE', 'normal', 11, 35.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 35.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 101, 107, '- 아 마자! 이거 많이 했어', '했어', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Xm0z10LfoC0', '[IVE OFF] LIZ와 겨울나기🍊 l ASMR☃️', 'IVE', 'normal', 12, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 38, 42, '''여름나기 ASMR''을 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('tkFMRobZUPs', '바로 그 That’s My... 👉👑💘 Reaction', 'IVE', 'normal', 13, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 33, 37, '이 언니들 머리가 다 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Xm0z10LfoC0', '[IVE OFF] LIZ와 겨울나기🍊 l ASMR☃️', 'IVE', 'normal', 14, 39.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 39.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 150, 156, '붕어빵이랑 귤을 되게 좋아해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('kueznicDH-E', '05. 삐빅 (♥beats)', 'IVE', 'normal', 15, 39.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 39.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 35, 41, 'o fast 신경회로 돌려 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('X71QQ_L9LC0', '[IVE ON] ''XOXZ'' 첫주 BEHIND', 'IVE', 'normal', 16, 39.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 39.714285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 39, 46, '을 할 수 있어서 너무너무 기뻐요', '기뻐요', '기쁘다', 'I am glad');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hopYX3IyY9s', '[IVE ON] 2025 K-WORLD DREAM AWARDS BEHIND', 'IVE', 'normal', 17, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8, 14, '] 오늘 오랜만에 중단발을 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('rZPGoc307i0', '[IVE ON] 2025 THE FACT MUSIC AWARDS BEHIND', 'IVE', 'normal', 18, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 42.0, is_locked = true, is_published = true
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
  VALUES ('Mlfce17QpPs', '03. Dear, My Feelings', 'IVE', 'normal', 19, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 130, 134, '아팠다면 내가 좀 미안해', '미안해', '미안하다', 'Sorry');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-EF0_W0FcgA', '[IVE ON] JANGWONYOUNG X BVLGARI BEHIND', 'IVE', 'normal', 20, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 296, 301, '많이 많이 기대해 주시고 예뻐', '예뻐', '예쁘다', 'It is pretty');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('X71QQ_L9LC0', '[IVE ON] ''XOXZ'' 첫주 BEHIND', 'IVE', 'normal', 21, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 50.0, is_locked = true, is_published = true
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
  VALUES ('jJdBoYk-kcM', '[IVE LOG] 삐빅 LA vibe ON⚡｜FALL LOG', 'IVE', 'normal', 22, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 89, 93, '(쌈은 신중하고 곱게 싸야 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('q_Xq_q9A-qI', '[IVE ON] REI X MILLET BEHIND', 'IVE', 'normal', 23, 54.83333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 54.83333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 204, 207, '[(빠르게 촬영 끝)] 오 됐어', '됐어', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('X71QQ_L9LC0', '[IVE ON] ''XOXZ'' 첫주 BEHIND', 'IVE', 'normal', 24, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 47, 51, '완전 잘 나온 키티로 가져왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('tkFMRobZUPs', '바로 그 That’s My... 👉👑💘 Reaction', 'IVE', 'normal', 25, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 72, 76, '이때는 언니랑 가을 언니랑 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('q_Xq_q9A-qI', '[IVE ON] REI X MILLET BEHIND', 'IVE', 'normal', 26, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 59.0, is_locked = true, is_published = true
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
  VALUES ('B9kF1Momqc0', '[INSIDE SEVENTEEN] 준 ''포풍추영'' 촬영 비하인드 (JUN "The Shadow''s Edge" Shoot Sketch)', 'SEVENTEEN', 'normal', 1, 24.5, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 24.5, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 157, 163, '[이번 장면은 신나', '신나', '신나다', 'I am excited');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QUrgUJViAZU', '[GOING SEVENTEEN] EP.143 무죄 추정 #2 (Innocent Until Proven Guilty #2)', 'SEVENTEEN', 'normal', 2, 27.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 27.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 104, 108, '(석민) 맞는 걸 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('B9kF1Momqc0', '[INSIDE SEVENTEEN] 준 ''포풍추영'' 촬영 비하인드 (JUN "The Shadow''s Edge" Shoot Sketch)', 'SEVENTEEN', 'normal', 3, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 114, 118, '우리 장난 치러 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QUrgUJViAZU', '[GOING SEVENTEEN] EP.143 무죄 추정 #2 (Innocent Until Proven Guilty #2)', 'SEVENTEEN', 'normal', 4, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 78, 81, '자세히 보진 못했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QUrgUJViAZU', '[GOING SEVENTEEN] EP.143 무죄 추정 #2 (Innocent Until Proven Guilty #2)', 'SEVENTEEN', 'normal', 5, 46.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 46.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 79, 85, '서 두 분이 싸우는 소리를 들었어요', '들었어요', '듣다', 'I listened');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('B9kF1Momqc0', '[INSIDE SEVENTEEN] 준 ''포풍추영'' 촬영 비하인드 (JUN "The Shadow''s Edge" Shoot Sketch)', 'SEVENTEEN', 'normal', 6, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 69, 73, '가면 같은 거 만들러 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('B9kF1Momqc0', '[INSIDE SEVENTEEN] 준 ''포풍추영'' 촬영 비하인드 (JUN "The Shadow''s Edge" Shoot Sketch)', 'SEVENTEEN', 'normal', 7, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 92, 97, '여기는 조금 당기는 느낌이 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('cpalu6tunsE', '[GOING DxS SPECIAL] 악당 뿌도 #2 (Villains BBOODO #2)', 'SEVENTEEN', 'normal', 8, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 299, 303, '트 같은 걸 하는 거지 - 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('cpalu6tunsE', '[GOING DxS SPECIAL] 악당 뿌도 #2 (Villains BBOODO #2)', 'SEVENTEEN', 'normal', 9, 55.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 55.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 215, 219, '♪ 더는 외면할 수 ♪ 가 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QUrgUJViAZU', '[GOING SEVENTEEN] EP.143 무죄 추정 #2 (Innocent Until Proven Guilty #2)', 'SEVENTEEN', 'normal', 10, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 116, 120, '대해서 좀 나가서 얘기를 해보자', '보자', '보다', 'Let''s see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7Ci6PAuyuWk', '[Replay] 우리칠 NI9HT l NCT 127 9TH ANNIVERSARY LIVE', 'NCT 127', 'normal', 1, 30.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 30.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 151, 155, '- 쟈니칼 - 근데 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('OE7KMZWaqeE', '[Replay] NCT 127 ''Again 시티고 1학년 27반 l 127 DAY LIVE'' (Feat. 반장 특전 : 해찬이에게 얼굴 몰아주기✨)', 'NCT 127', 'normal', 2, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 55, 59, '안녕 만나서 반가워', '반가워', '반갑다', 'Nice to meet you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('OE7KMZWaqeE', '[Replay] NCT 127 ''Again 시티고 1학년 27반 l 127 DAY LIVE'' (Feat. 반장 특전 : 해찬이에게 얼굴 몰아주기✨)', 'NCT 127', 'normal', 3, 30.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 30.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 85, 91, '사실 우리 반에 내가 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('OE7KMZWaqeE', '[Replay] NCT 127 ''Again 시티고 1학년 27반 l 127 DAY LIVE'' (Feat. 반장 특전 : 해찬이에게 얼굴 몰아주기✨)', 'NCT 127', 'normal', 4, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 29, 33, '한 때 체대 준비를 했어', '했어', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7Ci6PAuyuWk', '[Replay] 우리칠 NI9HT l NCT 127 9TH ANNIVERSARY LIVE', 'NCT 127', 'normal', 5, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 164, 167, '- 닮았다 - 좋아 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('OE7KMZWaqeE', '[Replay] NCT 127 ''Again 시티고 1학년 27반 l 127 DAY LIVE'' (Feat. 반장 특전 : 해찬이에게 얼굴 몰아주기✨)', 'NCT 127', 'normal', 6, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 152, 156, '내가 누군지 말 안 해도 알지', '알지', '알다', 'You know, right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7Ci6PAuyuWk', '[Replay] 우리칠 NI9HT l NCT 127 9TH ANNIVERSARY LIVE', 'NCT 127', 'normal', 7, 53.66666666666667, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 53.66666666666667, is_locked = true, is_published = true
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
  VALUES ('9tIsyA8Ljp4', '[Replay] NCT DREAM ''Beat It Up'' Countdown Live', 'NCT DREAM', 'normal', 1, 37.5, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 37.5, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 102, 108, '코너씩 다  - 이미 시작됐어', '됐어', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('aiYRyls1RDk', '[Replay] 9OING ON AND ON : NCT DREAM 9th ANNIVERSARY', 'NCT DREAM', 'normal', 2, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
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
  VALUES ('9tIsyA8Ljp4', '[Replay] NCT DREAM ''Beat It Up'' Countdown Live', 'NCT DREAM', 'normal', 3, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 80, 85, '그랬구나 잠깐 까먹고 있었어요', '있었어요', '있다', 'There was / I had');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9tIsyA8Ljp4', '[Replay] NCT DREAM ''Beat It Up'' Countdown Live', 'NCT DREAM', 'normal', 4, 47.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 47.0, is_locked = true, is_published = true
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
  VALUES ('aiYRyls1RDk', '[Replay] 9OING ON AND ON : NCT DREAM 9th ANNIVERSARY', 'NCT DREAM', 'normal', 5, 47.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 47.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 172, 176, '/ - Yes - 마음에 들어요', '들어요', '듣다', 'I listen');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('aiYRyls1RDk', '[Replay] 9OING ON AND ON : NCT DREAM 9th ANNIVERSARY', 'NCT DREAM', 'normal', 6, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 200, 204, '지성이 준비 됐나요? - 예쁜데', '예쁜데', '', 'It is pretty though');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-lqFuhB3Jqg', 'On a Rampage | [TO DO X TXT] EP.165', 'TXT', 'normal', 1, 25.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 25.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 104, 109, '[착한 얼굴에 그렇지', '그렇지', '', 'Right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('bbBGd2PP4vk', '시카고에서 보내는 휴일 🎡  | TXT-LOG | TXT (투모로우바이투게더)️', 'TXT', 'normal', 2, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 306, 310, '다 같이 흔들어보자', '보자', '보다', 'Let''s see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5UshY91R4-g', 'Hoping for Saju and Personal Color''s Amicable Truce | NOT TO DO EP. 〈Sajunal Color〉', 'TXT', 'normal', 3, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 131, 135, '평상시에 제일 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('CF9TZ7W8yHQ', '견뎌 Till the CODA | EP.1 | NO LABELS: PART 01', 'TXT', 'normal', 4, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 162, 166, '가사 쓰고 있었어요', '있었어요', '있다', 'There was / I had');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('WKj-uHaq7Mw', 'Happy New Year 2026 | T:TIME | TXT (투모로우바이투게더)', 'TXT', 'normal', 5, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 125, 129, '함께 즐겁게 보내봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('wX8i9PH0Tog', 'What Happened During the North American Tour | T:TIME | TXT (투모로우바이투게더)', 'TXT', 'normal', 6, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 44, 48, '- 밥 드세요 - 맛있어', '맛있어', '맛있다', 'It is delicious');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('wX8i9PH0Tog', 'What Happened During the North American Tour | T:TIME | TXT (투모로우바이투게더)', 'TXT', 'normal', 7, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 50, 54, '- 끝났어 끝났어 끝났어', '끝났어', '끝나다', 'It is finished');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('wX8i9PH0Tog', 'What Happened During the North American Tour | T:TIME | TXT (투모로우바이투게더)', 'TXT', 'normal', 8, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 98, 102, '- 너무 재미있었다 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('bbBGd2PP4vk', '시카고에서 보내는 휴일 🎡  | TXT-LOG | TXT (투모로우바이투게더)️', 'TXT', 'normal', 9, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 105, 108, '쨍쨍한 것보다 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-Xq7x_Fwx_w', 'Friend Candidate 3. Patricia | HUENINGKAI''s Countless Friends 🌊', 'TXT', 'normal', 10, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 34, 37, '어우 꼴 보기 싫어', '싫어', '싫다', 'I dislike it');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3-l7ZHISQnc', '수빈이의 쉽지 않은 여행 | TXT-LOG | TXT (투모로우바이투게더)️', 'TXT', 'normal', 11, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 39.0, is_locked = true, is_published = true
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
  VALUES ('CF9TZ7W8yHQ', '견뎌 Till the CODA | EP.1 | NO LABELS: PART 01', 'TXT', 'normal', 12, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 135, 141, 'oma''라는 곡을 작업하고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3-l7ZHISQnc', '수빈이의 쉽지 않은 여행 | TXT-LOG | TXT (투모로우바이투게더)️', 'TXT', 'normal', 13, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 74, 78, '이번에 한번 잘 찍어볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('6QFJMTMPNLE', 'Face Card vs Personal Color, Who''s the Winner? | NOT TO DO 〈Personal Color Analysis〉', 'TXT', 'normal', 14, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 79, 83, '얼굴에 혈색을 먼저 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('wX8i9PH0Tog', 'What Happened During the North American Tour | T:TIME | TXT (투모로우바이투게더)', 'TXT', 'normal', 15, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 61, 65, '우린 아직 등장도 안 했어', '했어', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('uEOgLDV3lck', 'To MOA Taking the 2026 College Scholastic Ability Test💌 | T:TIME | TXT (투모로우바이투게더)', 'TXT', 'normal', 16, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 47, 52, '말고 꼭 챙겨 먹기로 약속해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ooj0qLGNTHo', '''NO LABELS: PART 01'' Jacket Behind The Scenes | 연준 (YEONJUN)', 'TXT', 'normal', 17, 46.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 46.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 84, 87, '진짜 미친 듯이 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ooj0qLGNTHo', '''NO LABELS: PART 01'' Jacket Behind The Scenes | 연준 (YEONJUN)', 'TXT', 'normal', 18, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22, 27, '(밥을) 저녁 6시부터 안 먹었어요', '먹었어요', '먹다', 'I ate');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('bbBGd2PP4vk', '시카고에서 보내는 휴일 🎡  | TXT-LOG | TXT (투모로우바이투게더)️', 'TXT', 'normal', 19, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 47.5, is_locked = true, is_published = true
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
  VALUES ('-lqFuhB3Jqg', 'On a Rampage | [TO DO X TXT] EP.165', 'TXT', 'normal', 20, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 28, 33, '는 싸우는 것처럼 보일 수 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('amxokrR8r5U', '2025 U.S. Promotions Behind | EPISODE | TXT (투모로우바이투게더)', 'TXT', 'normal', 21, 51.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 51.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 47, 50, '- 뭐요(?) - 알았어 알았어', '알았어', '알다', 'I got it');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5UshY91R4-g', 'Hoping for Saju and Personal Color''s Amicable Truce | NOT TO DO EP. 〈Sajunal Color〉', 'TXT', 'normal', 22, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 60, 64, '너무 잘생기셨다아 - 아유 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5UshY91R4-g', 'Hoping for Saju and Personal Color''s Amicable Truce | NOT TO DO EP. 〈Sajunal Color〉', 'TXT', 'normal', 23, 53.66666666666667, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 53.66666666666667, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 13, 16, '엄마 이따 아익게 전화할게', '할게', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3-l7ZHISQnc', '수빈이의 쉽지 않은 여행 | TXT-LOG | TXT (투모로우바이투게더)️', 'TXT', 'normal', 24, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 19, 23, '루나 돔 콘서트 마치고 귀국하자', '하자', '하다', 'Let''s do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('amxokrR8r5U', '2025 U.S. Promotions Behind | EPISODE | TXT (투모로우바이투게더)', 'TXT', 'normal', 25, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18, 22, '근데 난 실제로 저거 되게 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('amxokrR8r5U', '2025 U.S. Promotions Behind | EPISODE | TXT (투모로우바이투게더)', 'TXT', 'normal', 26, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 20, 24, '버거 - 비빔 라이스 버거 맛있어', '맛있어', '맛있다', 'It is delicious');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5UshY91R4-g', 'Hoping for Saju and Personal Color''s Amicable Truce | NOT TO DO EP. 〈Sajunal Color〉', 'TXT', 'normal', 27, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 120, 124, '상태에도 - 그래도 알 수 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('6QFJMTMPNLE', 'Face Card vs Personal Color, Who''s the Winner? | NOT TO DO 〈Personal Color Analysis〉', 'TXT', 'normal', 28, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 155, 159, '누가 봐도 화이트가 너무 예뻐요', '예뻐요', '예쁘다', 'It is pretty');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('6QFJMTMPNLE', 'Face Card vs Personal Color, Who''s the Winner? | NOT TO DO 〈Personal Color Analysis〉', 'TXT', 'normal', 29, 66.33333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 66.33333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 64, 67, '(진단하며) 안내 드리도록 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-Xq7x_Fwx_w', 'Friend Candidate 3. Patricia | HUENINGKAI''s Countless Friends 🌊', 'TXT', 'normal', 30, 67.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 67.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 133, 136, '과자를 먹으면서 - 그게 뭐야', '뭐야', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QmgCn_hrlrM', '[EPISODE] 2025 연말 무대 비하인드 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 1, 27.5, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 27.5, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 272, 277, '체감은 영하이긴 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('j3zKr93zpNI', '[EPISODE] ''WALK THE LINE'' : FINAL 비하인드 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 2, 27.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 27.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 116, 121, '너무 좋아! 너무 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QECvPVFuvxU', '[EPISODE] 서울특별시 홍보대사 비하인드 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 3, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 30.0, is_locked = true, is_published = true
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
  VALUES ('KBflOM4VkkI', 'LA에서 있었던 일 -2편- | 뱀파이어 도주일지 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 4, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 115, 119, '저희한테 그럼 완전', '완전', '', 'Totally!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('dsX1i39dj8o', '피렌체에서 있었던 일 -3편- | 뱀파이어 도주일지 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 5, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 62, 66, '그 사람들, 도망갔어요', '갔어요', '가다', 'I went');
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
  VALUES ('BmvJe0I2pzk', '동굴에서 있었던 일 -1편- | 뱀파이어 도주일지 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 7, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 67, 71, '누구 짓인지는 모르겠어', '모르겠어', '모르다', 'I don''t know');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QmgCn_hrlrM', '[EPISODE] 2025 연말 무대 비하인드 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 8, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 231, 237, '평소에 혼자 잘만 가면서 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VrYPpCAkGoI', '[EPISODE] 맵(MEP, 맵탱) 광고 비하인드 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 9, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 37.5, is_locked = true, is_published = true
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
  VALUES ('BmvJe0I2pzk', '동굴에서 있었던 일 -1편- | 뱀파이어 도주일지 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 10, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 182, 187, '그리고 이제 인간 피를 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5ljMMrpTvJk', '[-note] 250802 TEAM Lucifer - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 11, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 16, 21, '엔진 분들 반응이 너무 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('KBflOM4VkkI', 'LA에서 있었던 일 -2편- | 뱀파이어 도주일지 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 12, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 144, 147, '그래서 거기 좋았어', '좋았어', '좋다', 'It was good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('dsX1i39dj8o', '피렌체에서 있었던 일 -3편- | 뱀파이어 도주일지 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 13, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 39.0, is_locked = true, is_published = true
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
  VALUES ('I-CNJV8PnyQ', '[Shout-out] ENHYPEN (엔하이픈) HAPPY NEW YEAR 2026 ', 'ENHYPEN', 'normal', 14, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 100, 104, '- 우리 엔진 최고 - 최고', '최고', '', 'The best!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('j3zKr93zpNI', '[EPISODE] ''WALK THE LINE'' : FINAL 비하인드 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 15, 39.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 39.666666666666664, is_locked = true, is_published = true
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
  VALUES ('QECvPVFuvxU', '[EPISODE] 서울특별시 홍보대사 비하인드 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 16, 39.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 39.714285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 119, 126, '서울시 글로벌 영상을 찍고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('BmvJe0I2pzk', '동굴에서 있었던 일 -1편- | 뱀파이어 도주일지 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 17, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 38, 44, '구로 쓰게 돌 몇 개 주워 왔어', '왔어', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('j3zKr93zpNI', '[EPISODE] ''WALK THE LINE'' : FINAL 비하인드 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 18, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
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
  VALUES ('10_v0wbgyR0', '[EPISODE] ‘WALK THE LINE’ IN U.S. 비하인드 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 19, 46.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 46.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 80, 83, '여기 엔하이픈도 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('KBflOM4VkkI', 'LA에서 있었던 일 -2편- | 뱀파이어 도주일지 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 20, 46.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 46.0, is_locked = true, is_published = true
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
  VALUES ('DxlASO-nTlI', 'ENHYPEN (엔하이픈) ‘Knife’ 응원법', 'ENHYPEN', 'normal', 21, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6, 11, '엔진 여러분들 정말 오래 기다려', '기다려', '기다리다', 'Wait');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5ljMMrpTvJk', '[-note] 250802 TEAM Lucifer - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 22, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 47.5, is_locked = true, is_published = true
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
  VALUES ('DxlASO-nTlI', 'ENHYPEN (엔하이픈) ‘Knife’ 응원법', 'ENHYPEN', 'normal', 23, 48.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 48.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 382, 388, '지금까지 엔하이픈이었습니다 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('BfJKI1FZwCo', '[EN-TER key] 선우의 2025 대한민국사회공헌대상 수상 비하인드 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 24, 49.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 49.0, is_locked = true, is_published = true
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
  VALUES ('I-CNJV8PnyQ', '[Shout-out] ENHYPEN (엔하이픈) HAPPY NEW YEAR 2026 ', 'ENHYPEN', 'normal', 25, 49.83333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 49.83333333333333, is_locked = true, is_published = true
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
  VALUES ('dsX1i39dj8o', '피렌체에서 있었던 일 -3편- | 뱀파이어 도주일지 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 26, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 64, 68, '- 그래서 보험 처리하고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('E6dM9UjF1zY', '[Shout-out] 2026학년도 대학수학능력시험을 보는 엔진에게', 'ENHYPEN', 'normal', 27, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 57, 61, '[수험생 엔진 여러분 수능 대박', '대박', '', 'Amazing!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QECvPVFuvxU', '[EPISODE] 서울특별시 홍보대사 비하인드 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 28, 55.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 55.0, is_locked = true, is_published = true
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
  VALUES ('BmvJe0I2pzk', '동굴에서 있었던 일 -1편- | 뱀파이어 도주일지 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 29, 55.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 55.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 21, 26, '면서 동굴에 가게 될 줄은 몰랐어', '몰랐어', '모르다', 'I didn''t know');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5ljMMrpTvJk', '[-note] 250802 TEAM Lucifer - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 30, 62.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 62.0, is_locked = true, is_published = true
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
  VALUES ('3zQraeuNbK8', 'VICTORIA’S SECRET FASHION SHOW 2025 Behind The Scenes', 'TWICE', 'normal', 1, 33.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 33.0, is_locked = false, is_published = true
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
  VALUES ('3zQraeuNbK8', 'VICTORIA’S SECRET FASHION SHOW 2025 Behind The Scenes', 'TWICE', 'normal', 2, 34.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 34.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 31, 34, '(설렘 가득) 설레요', '설레요', '설레다', 'I am thrilled');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3zQraeuNbK8', 'VICTORIA’S SECRET FASHION SHOW 2025 Behind The Scenes', 'TWICE', 'normal', 3, 42.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 42.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 28, 33, '(무대가 어떨지 너무 궁금해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3zQraeuNbK8', 'VICTORIA’S SECRET FASHION SHOW 2025 Behind The Scenes', 'TWICE', 'normal', 4, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 74, 79, '연: 이 무대 색감이 너무 예뻐', '예뻐', '예쁘다', 'It is pretty');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3zQraeuNbK8', 'VICTORIA’S SECRET FASHION SHOW 2025 Behind The Scenes', 'TWICE', 'normal', 5, 47.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 47.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 77, 81, '여기까지 와서 하는데 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gy5Qg9VCypg', '우기 (YUQI) ‘唯一 (Only One)'' (Cover)', 'G-IDLE', 'normal', 1, 24.428571428571427, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 24.428571428571427, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 57, 71, '네가 흔들릴수록 난 망가져갔어', '갔어', '가다', 'I went');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gy5Qg9VCypg', '우기 (YUQI) ‘唯一 (Only One)'' (Cover)', 'G-IDLE', 'normal', 2, 34.75, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 34.75, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25, 33, '울뿐인 말이 아닌 진심을 원했어', '했어', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('MW_YN5EJ7Gg', 'WHAT? DOOR! | THE ACTION THRILLER | SPECIAL EPISODE - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 1, 30.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 30.0, is_locked = false, is_published = true
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
  VALUES ('x0_6zILSMvo', '재미있어 보이넥4 | 운학이에게 빠진 게 죄는 아니잖아 (feat. 룸메 정하기) | EP.2 - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 2, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 81, 85, '- 아 너무 어려워요', '어려워요', '어렵다', 'It is difficult');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('MW_YN5EJ7Gg', 'WHAT? DOOR! | THE ACTION THRILLER | SPECIAL EPISODE - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 3, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
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
  VALUES ('x0_6zILSMvo', '재미있어 보이넥4 | 운학이에게 빠진 게 죄는 아니잖아 (feat. 룸메 정하기) | EP.2 - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 4, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
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
  VALUES ('MW_YN5EJ7Gg', 'WHAT? DOOR! | THE ACTION THRILLER | SPECIAL EPISODE - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 5, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 45.0, is_locked = true, is_published = true
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
  VALUES ('MW_YN5EJ7Gg', 'WHAT? DOOR! | THE ACTION THRILLER | SPECIAL EPISODE - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 6, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 147, 152, '들이랑 운학이랑 얘기 좀 해보자', '보자', '보다', 'Let''s see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3GSt5u854ek', 'BOYNEXTDOOR 5th EP [The Action] Album Unboxing - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 7, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 47.5, is_locked = true, is_published = true
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
  VALUES ('3GSt5u854ek', 'BOYNEXTDOOR 5th EP [The Action] Album Unboxing - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 8, 53.66666666666667, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 53.66666666666667, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 85, 88, '기분이 좋아지나요 안 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3GSt5u854ek', 'BOYNEXTDOOR 5th EP [The Action] Album Unboxing - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 9, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 56.0, is_locked = true, is_published = true
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
  VALUES ('3GSt5u854ek', 'BOYNEXTDOOR 5th EP [The Action] Album Unboxing - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 10, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 88, 92, '같은 경우는 마찰력이 좀 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('nI8dhbBgZ_E', '[TWS:ERIES] TWS (투어스) 2025 Asia Artist Awards 비하인드', 'TWS', 'normal', 1, 27.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 27.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 50, 54, '- 안 나오긴 했어', '했어', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('nI8dhbBgZ_E', '[TWS:ERIES] TWS (투어스) 2025 Asia Artist Awards 비하인드', 'TWS', 'normal', 2, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 82, 87, '오늘은 AAA에 와써요', '써요', '쓰다', 'I write');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Lw8HRj2rDDU', '[TWS:ERIES] TWS (투어스) ‘play hard’ Showcase Behind', 'TWS', 'normal', 3, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 21, 26, '울 거 같은데 시작하자', '하자', '하다', 'Let''s do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PwgIm8xvoOE', '소문난 탱글즈', 'TWS', 'normal', 4, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 19, 23, '바로 가 바로 가자', '가자', '가다', 'Let''s go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('U7P3lUs-xjc', 'TEAM 경신도 국가대항전', 'TWS', 'normal', 5, 34.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 34.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 11, 14, '- 내가 왼쪽 할게', '할게', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_wTVKbjqEQE', '[TWS:ERIES] TWS (투어스) 2025 SBS 가요대전 비하인드', 'TWS', 'normal', 6, 40.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 40.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 5, '바꿀 예정 [&lt;SBS 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_wTVKbjqEQE', '[TWS:ERIES] TWS (투어스) 2025 SBS 가요대전 비하인드', 'TWS', 'normal', 7, 40.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 40.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15, 20, '서... - 아니야 아니야 잠깐만', '잠깐만', '', 'Wait a moment');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('592GO4Y54Ew', '[TWS:ERIES] TWS (투어스) Open Mic 비하인드', 'TWS', 'normal', 8, 41.642857142857146, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 41.642857142857146, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 147, 154, '이 의상으로 음방도 한다고 들었어요', '들었어요', '듣다', 'I listened');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('q9ocYCFKUsQ', '[TWS:ERIES] TWS (투어스) 2025 MBC 방송연예대상 비하인드', 'TWS', 'normal', 9, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
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
  VALUES ('592GO4Y54Ew', '[TWS:ERIES] TWS (투어스) Open Mic 비하인드', 'TWS', 'normal', 10, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 142, 148, '보니까 진짜 엄청 멋있게 나왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('q9ocYCFKUsQ', '[TWS:ERIES] TWS (투어스) 2025 MBC 방송연예대상 비하인드', 'TWS', 'normal', 11, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4, 9, '소감 준비 중인 신인상 후보자', '보자', '보다', 'Let''s see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Lw8HRj2rDDU', '[TWS:ERIES] TWS (투어스) ‘play hard’ Showcase Behind', 'TWS', 'normal', 12, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 72, 76, '저도 잘 모르겠어요 제가 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Lw8HRj2rDDU', '[TWS:ERIES] TWS (투어스) ‘play hard’ Showcase Behind', 'TWS', 'normal', 13, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 80, 85, '나 아직 마음의 준비가 안 됐어', '됐어', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_wTVKbjqEQE', '[TWS:ERIES] TWS (투어스) 2025 SBS 가요대전 비하인드', 'TWS', 'normal', 14, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 54, 58, '제 되는 부분이 있나요? [신나', '신나', '신나다', 'I am excited');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('nI8dhbBgZ_E', '[TWS:ERIES] TWS (투어스) 2025 Asia Artist Awards 비하인드', 'TWS', 'normal', 15, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 78, 82, '- 뭘 따라 하는지를 모르겠어', '모르겠어', '모르다', 'I don''t know');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('592GO4Y54Ew', '[TWS:ERIES] TWS (투어스) Open Mic 비하인드', 'TWS', 'normal', 16, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 50.0, is_locked = true, is_published = true
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
  VALUES ('PwgIm8xvoOE', '소문난 탱글즈', 'TWS', 'normal', 17, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 53, 57, '막 한 번 더 해볼까? - 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Lw8HRj2rDDU', '[TWS:ERIES] TWS (투어스) ‘play hard’ Showcase Behind', 'TWS', 'normal', 18, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 131, 135, '훈) 느껴지는 모든 걸 즐겨보자', '보자', '보다', 'Let''s see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ivCQsMErNZY', '[TWS:ERIES] TWS (투어스) 2025 TMA 비하인드', 'TWS', 'normal', 19, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 120, 124, '지금 딱 맞아요 이렇게 갈게요', '갈게요', '가다', 'I will go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('HeI1lFFKm3Q', '[TWS:ERIES] TWS (투어스) ROCK IN JAPAN FESTIVAL 2025 비하인드', 'TWS', 'normal', 20, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 57, 61, '연습실에 고라니를 풀었나 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7f4xPa1Wq6w', 'TWS (투어스) ‘Head Shoulders Knees Toes’ Recording Behind', 'TWS', 'normal', 21, 53.66666666666667, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 53.66666666666667, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 162, 165, '킵하고 몇 번 더 해볼게요', '볼게요', '보다', 'I will see');
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
  VALUES ('7f4xPa1Wq6w', 'TWS (투어스) ‘Head Shoulders Knees Toes’ Recording Behind', 'TWS', 'normal', 23, 54.83333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 54.83333333333333, is_locked = true, is_published = true
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
  VALUES ('q9ocYCFKUsQ', '[TWS:ERIES] TWS (투어스) 2025 MBC 방송연예대상 비하인드', 'TWS', 'normal', 24, 55.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 55.0, is_locked = true, is_published = true
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
  VALUES ('avFMTqPt7VQ', 'Paris Mini-Log 🍁| TWS (투어스)', 'TWS', 'normal', 25, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 103, 107, '히 뷔 선배님 한 번도 못 봤어', '봤어', '보다', 'I saw');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('HeI1lFFKm3Q', '[TWS:ERIES] TWS (투어스) ROCK IN JAPAN FESTIVAL 2025 비하인드', 'TWS', 'normal', 26, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 53, 57, '가슴으로 튕겨야 통보인 거 알지', '알지', '알다', 'You know, right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('q9ocYCFKUsQ', '[TWS:ERIES] TWS (투어스) 2025 MBC 방송연예대상 비하인드', 'TWS', 'normal', 27, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 122, 126, '트 먹어야 하거든요 지금 [배고파요', '배고파요', '배고프다', 'I am hungry');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8s0VSMn7dkE', '[TWS:ERIES] TWS (투어스) 2025 뮤직뱅크 글로벌 페스티벌 IN JAPAN 비하인드', 'TWS', 'normal', 28, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 197, 201, '옆에가 부담스러운 이유를 알겠어요', '알겠어요', '알다', 'I understand');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8s0VSMn7dkE', '[TWS:ERIES] TWS (투어스) 2025 뮤직뱅크 글로벌 페스티벌 IN JAPAN 비하인드', 'TWS', 'normal', 29, 62.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 62.0, is_locked = true, is_published = true
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
  VALUES ('592GO4Y54Ew', '[TWS:ERIES] TWS (투어스) Open Mic 비하인드', 'TWS', 'normal', 30, 66.33333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 66.33333333333333, is_locked = true, is_published = true
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
  VALUES ('h3xUXMJRIYw', '[FM_1.24] ''Supersonic'' 안무 연습 비하인드', 'fromis_9', 'normal', 1, 25.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 25.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 106, 111, '근데 플로버들 진짜', '진짜', '', 'Really!');
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
  VALUES ('q4aqoMEXvc4', '[FM_1.24] ''롯데 레드 팬스티벌'' 비하인드', 'fromis_9', 'normal', 3, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 16, 20, '그래서 기분이 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Q_r5b8M08eo', '[FM_1.24] Singles 화보 촬영 비하인드', 'fromis_9', 'normal', 4, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 122, 126, '새롬 언니 오늘 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('skCkIMRwAeo', '[9_log] 하영 Vlog - 단발하러 가는 날💇‍♀️ (edited by 하영)', 'fromis_9', 'normal', 5, 32.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 32.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 62, 68, '이렇게 묶은 머리를 참 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('q4aqoMEXvc4', '[FM_1.24] ''롯데 레드 팬스티벌'' 비하인드', 'fromis_9', 'normal', 6, 32.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 32.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 107, 112, '아무튼 여러분 이따 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('q4aqoMEXvc4', '[FM_1.24] ''롯데 레드 팬스티벌'' 비하인드', 'fromis_9', 'normal', 7, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
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
  VALUES ('q4aqoMEXvc4', '[FM_1.24] ''롯데 레드 팬스티벌'' 비하인드', 'fromis_9', 'normal', 8, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 54, 61, '잔 것 같은데 너무 많이 잤어요', '잤어요', '자다', 'I slept');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('skCkIMRwAeo', '[9_log] 하영 Vlog - 단발하러 가는 날💇‍♀️ (edited by 하영)', 'fromis_9', 'normal', 9, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 39.0, is_locked = true, is_published = true
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
  VALUES ('h3xUXMJRIYw', '[FM_1.24] ''Supersonic'' 안무 연습 비하인드', 'fromis_9', 'normal', 10, 39.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 39.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 32, 38, '무할 때 머리(?)가 너무 힘들어요', '힘들어요', '힘들다', 'It is hard');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('TQQ9sr_r52w', 'fromis_9 (프로미스나인) ‘from’ RECORDING BEHIND', 'fromis_9', 'normal', 11, 41.642857142857146, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 41.642857142857146, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 162, 169, '쉬운데 어떻게 나와야 될지 모르겠어', '모르겠어', '모르다', 'I don''t know');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('skCkIMRwAeo', '[9_log] 하영 Vlog - 단발하러 가는 날💇‍♀️ (edited by 하영)', 'fromis_9', 'normal', 12, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
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
  VALUES ('TQQ9sr_r52w', 'fromis_9 (프로미스나인) ‘from’ RECORDING BEHIND', 'fromis_9', 'normal', 13, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
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
  VALUES ('skCkIMRwAeo', '[9_log] 하영 Vlog - 단발하러 가는 날💇‍♀️ (edited by 하영)', 'fromis_9', 'normal', 14, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 93, 98, '긴 머리 이뻐 보이기 시작했어', '했어', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1weqUr6iyG0', '[FM_1.24] 워터밤 인천 2024 비하인드', 'fromis_9', 'normal', 15, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 64, 69, '롬) 여러분 오늘 진짜 심각해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('h3xUXMJRIYw', '[FM_1.24] ''Supersonic'' 안무 연습 비하인드', 'fromis_9', 'normal', 16, 47.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 47.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 197, 201, '''스튜디오 춤''을 찍고 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('h3xUXMJRIYw', '[FM_1.24] ''Supersonic'' 안무 연습 비하인드', 'fromis_9', 'normal', 17, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 184, 189, '셉트 안무 처음 배운 날로 하자', '하자', '하다', 'Let''s do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('h3xUXMJRIYw', '[FM_1.24] ''Supersonic'' 안무 연습 비하인드', 'fromis_9', 'normal', 18, 49.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 49.0, is_locked = true, is_published = true
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
  VALUES ('TQQ9sr_r52w', 'fromis_9 (프로미스나인) ‘from’ RECORDING BEHIND', 'fromis_9', 'normal', 19, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 50.0, is_locked = true, is_published = true
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
  VALUES ('Q_r5b8M08eo', '[FM_1.24] Singles 화보 촬영 비하인드', 'fromis_9', 'normal', 20, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15, 20, '니까 도착해서 사실 어딘지 몰랐어', '몰랐어', '모르다', 'I didn''t know');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1weqUr6iyG0', '[FM_1.24] 워터밤 인천 2024 비하인드', 'fromis_9', 'normal', 21, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 376, 380, '진짜 워터밤 2024 인천 최고', '최고', '', 'The best!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('zBkvRUsQR2o', '[Special Clip] ATEEZ(에이티즈) ‘Choose’', 'ATEEZ', 'normal', 1, 30.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 30.0, is_locked = false, is_published = true
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
  VALUES ('7xIsS7pUoao', 'ATEEZ(에이티즈) 산 ''Creep'' | ATEEZ Present', 'ATEEZ', 'normal', 2, 34.75, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 34.75, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6, 14, '딪히며 울리는 네 속삭임이 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7xIsS7pUoao', 'ATEEZ(에이티즈) 산 ''Creep'' | ATEEZ Present', 'ATEEZ', 'normal', 3, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
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
  VALUES ('zBkvRUsQR2o', '[Special Clip] ATEEZ(에이티즈) ‘Choose’', 'ATEEZ', 'normal', 4, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 124, 128, '지금도 서투르지만 넌 항상 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('t0UEGX34BNw', '[Replay] SEULGI 슬기 ''Accidentally On Purpose'' Countdown Live', 'Red Velvet', 'normal', 1, 33.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 33.0, is_locked = false, is_published = true
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
  VALUES ('7tTQpfpM804', '[Replay] JOY 조이 ''From JOY, with Love'' Countdown Live', 'Red Velvet', 'normal', 2, 44.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 44.714285714285715, is_locked = true, is_published = true
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
  VALUES ('7tTQpfpM804', '[Replay] JOY 조이 ''From JOY, with Love'' Countdown Live', 'Red Velvet', 'normal', 3, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 128, 133, '번 제가 댓글을 한번 읽어 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PmPLM71TS-0', '산타도 선물이 필요하긴 해🎁 | 크리스마스 선물 배달 대작전 | KIOFriday', 'KISS OF LIFE', 'normal', 1, 25.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 25.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 56, 61, '[모르겠고 기분 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ze4H9j-RRic', '[KI-OFF] KLIP-#45 | Vogue 화보 "Dolce & Gabbana Beauty" 촬영 Behind', 'KISS OF LIFE', 'normal', 2, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 71, 75, '아름답게 찍어볼게요', '볼게요', '보다', 'I will see');
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
  VALUES ('OIE7x6dia0Y', '[KI-OFF] KLIP-#48 | (≽^•˕•^≼) 띠냥이의 ''Classy Club'' 촬영 Behind', 'KISS OF LIFE', 'normal', 4, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 33.0, is_locked = true, is_published = true
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
  VALUES ('OIE7x6dia0Y', '[KI-OFF] KLIP-#48 | (≽^•˕•^≼) 띠냥이의 ''Classy Club'' 촬영 Behind', 'KISS OF LIFE', 'normal', 5, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 54, 58, '얘 지금 완전 편해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ze4H9j-RRic', '[KI-OFF] KLIP-#45 | Vogue 화보 "Dolce & Gabbana Beauty" 촬영 Behind', 'KISS OF LIFE', 'normal', 6, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 130, 134, '무드가 너무 멋있어요', '멋있어요', '멋있다', 'It is cool');
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
  VALUES ('-5iR5n8M2pI', '팅커벨의 ASMR🧚 | 메이크업 도구, 비누, 디저트 | 사심행 : Station BELLE🚉', 'KISS OF LIFE', 'normal', 8, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 555, 562, '이렇게 포장을 끝내보도록 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('m9gsQfCBQPI', '[KI-OFF] KLIP-#44 | 여러분의 청춘을 키오프와 함께!', 'KISS OF LIFE', 'normal', 9, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 39.0, is_locked = true, is_published = true
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
  VALUES ('PmPLM71TS-0', '산타도 선물이 필요하긴 해🎁 | 크리스마스 선물 배달 대작전 | KIOFriday', 'KISS OF LIFE', 'normal', 10, 39.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 39.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 26, 32, '[산타 선물 챙긴 예쁜이 누구야', '누구야', '', 'Who is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('m9gsQfCBQPI', '[KI-OFF] KLIP-#44 | 여러분의 청춘을 키오프와 함께!', 'KISS OF LIFE', 'normal', 11, 39.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 39.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 154, 160, '켜는 퍼포먼스 꼭 하고 싶어요', '하고 싶어요', '', 'I want to do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1_PH5PM_puc', '[KI-OFF] 키오프만 보면 ドキドキ💓 | Japan Debut Tour [Lucky Day] Poster 촬영 Behind', 'KISS OF LIFE', 'normal', 12, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 77, 83, '설레고요 빨리 일본 가고 싶어요', '가고 싶어요', '', 'I want to go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ze4H9j-RRic', '[KI-OFF] KLIP-#45 | Vogue 화보 "Dolce & Gabbana Beauty" 촬영 Behind', 'KISS OF LIFE', 'normal', 13, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 42.0, is_locked = true, is_published = true
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
  VALUES ('1_PH5PM_puc', '[KI-OFF] 키오프만 보면 ドキドキ💓 | Japan Debut Tour [Lucky Day] Poster 촬영 Behind', 'KISS OF LIFE', 'normal', 14, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 30, 35, 'NEW! 네일 자랑] 네일 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1_PH5PM_puc', '[KI-OFF] 키오프만 보면 ドキドキ💓 | Japan Debut Tour [Lucky Day] Poster 촬영 Behind', 'KISS OF LIFE', 'normal', 15, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 59, 64, '다음 스팟으로 이동!] 네 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1_PH5PM_puc', '[KI-OFF] 키오프만 보면 ドキドキ💓 | Japan Debut Tour [Lucky Day] Poster 촬영 Behind', 'KISS OF LIFE', 'normal', 16, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 87, 92, '사랑하고 키씨도 너무 사랑해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('G-9wkRZvXMw', '나띠의 Outfit 추천🛍️ 오늘 뭐 입띠? | 사심행 : Station NATTY🚉', 'KISS OF LIFE', 'normal', 17, 46.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 46.0, is_locked = true, is_published = true
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
  VALUES ('PmPLM71TS-0', '산타도 선물이 필요하긴 해🎁 | 크리스마스 선물 배달 대작전 | KIOFriday', 'KISS OF LIFE', 'normal', 18, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 49, 53, '고 소리 질러!] 아니에요 됐어', '됐어', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('G-9wkRZvXMw', '나띠의 Outfit 추천🛍️ 오늘 뭐 입띠? | 사심행 : Station NATTY🚉', 'KISS OF LIFE', 'normal', 19, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 200, 204, '세서리는 필수?] 되게 중요해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('6XvdnKuQzJU', '[KI-OFF] 궁전🏰으로 갈 수도 있는 일본 콘서트🎤 | Japan Debut Tour [Lucky Day] Concert Behind', 'KISS OF LIFE', 'normal', 20, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 56.0, is_locked = true, is_published = true
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
  VALUES ('PmPLM71TS-0', '산타도 선물이 필요하긴 해🎁 | 크리스마스 선물 배달 대작전 | KIOFriday', 'KISS OF LIFE', 'normal', 21, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 56.0, is_locked = true, is_published = true
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
  VALUES ('PmPLM71TS-0', '산타도 선물이 필요하긴 해🎁 | 크리스마스 선물 배달 대작전 | KIOFriday', 'KISS OF LIFE', 'normal', 22, 66.33333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 66.33333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 47, 50, '여자 모먼트] 그냥 이렇게 하자', '하자', '하다', 'Let''s do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('6XvdnKuQzJU', '[KI-OFF] 궁전🏰으로 갈 수도 있는 일본 콘서트🎤 | Japan Debut Tour [Lucky Day] Concert Behind', 'KISS OF LIFE', 'normal', 23, 70.16666666666667, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 70.16666666666667, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 66, 69, 'ck star''까지만 하고 놀아요', '놀아요', '놀다', 'I play');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PJZLvoc-6Xw', 'MD & POSTER SHOOTING Behind | Into The Orbit : Kep1asia', 'Kep1er', 'normal', 1, 30.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 30.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 79, 84, '...?)] [손을 사용해 보자', '보자', '보다', 'Let''s see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7sfM0zRmtVU', '2025 REWIND : We Are Kep1er POP-UP Behind | Kep1us 케플러스', 'Kep1er', 'normal', 2, 31.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 31.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 122, 128, '이 있어요!] - 오! - 뭐야', '뭐야', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('4XLJ8gBoEDA', 'IN TOKYO Behind | Into The Orbit : Kep1asia', 'Kep1er', 'normal', 3, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 47, 53, '(''I GOT A BOY'' 귀여워', '귀여워', '귀엽다', 'It is cute');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Em1J5mka4Io', 'IN FUKUOKA Behind | Into The Orbit : Kep1asia', 'Kep1er', 'normal', 4, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 12, 18, '준비된 ''MVSK''로 시작할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Y-u_60mBlCs', 'IN SEOUL Behind | Into The Orbit : Kep1asia', 'Kep1er', 'normal', 5, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 241, 247, '퍼지고)] 우리 같이 파이팅하자', '하자', '하다', 'Let''s do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('JuszK1-pppM', 'NTV ‘Best Artist 2025’ Behind | Kep1us 케플러스', 'Kep1er', 'normal', 6, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 73, 76, '넘길 수 있게 됐어', '됐어', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('fl77Iivka8o', '''THE STAR'' Photo Shoot Behind | Kep1us 케플러스', 'Kep1er', 'normal', 7, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 88, 92, '사진도 너무 잘 나왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PJZLvoc-6Xw', 'MD & POSTER SHOOTING Behind | Into The Orbit : Kep1asia', 'Kep1er', 'normal', 8, 39.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 39.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23, 29, '전) 빨간 머리가 뭔가 강렬했어', '했어', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('JuszK1-pppM', 'NTV ‘Best Artist 2025’ Behind | Kep1us 케플러스', 'Kep1er', 'normal', 9, 40.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 40.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 127, 132, '(발레)한다고 얘기를 안 했어', '했어', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Em1J5mka4Io', 'IN FUKUOKA Behind | Into The Orbit : Kep1asia', 'Kep1er', 'normal', 10, 40.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 40.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 72, 77, '(예상 가능한 사유)] - 잤어요', '잤어요', '자다', 'I slept');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7sfM0zRmtVU', '2025 REWIND : We Are Kep1er POP-UP Behind | Kep1us 케플러스', 'Kep1er', 'normal', 11, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23, 29, '둥이들 포토 카드로 꾸며진 최고', '최고', '', 'The best!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('FnWWCa5kt_8', '[BETWEEN FRIENDS&FOREVER] Behind | Kep1er 2026 Season’s greetings', 'Kep1er', 'normal', 12, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 260, 264, '신발도 되게 마음에 들어요', '들어요', '듣다', 'I listen');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('h5foYkuRpkQ', 'ただいま、福岡！ | 히카루 VLOG | Kep1og 케플로그', 'Kep1er', 'normal', 13, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 42.0, is_locked = true, is_published = true
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
  VALUES ('4XLJ8gBoEDA', 'IN TOKYO Behind | Into The Orbit : Kep1asia', 'Kep1er', 'normal', 14, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
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
  VALUES ('Y-u_60mBlCs', 'IN SEOUL Behind | Into The Orbit : Kep1asia', 'Kep1er', 'normal', 15, 42.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 42.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 299, 304, '[(갑자기 분위기 몸으로 말해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('FnWWCa5kt_8', '[BETWEEN FRIENDS&FOREVER] Behind | Kep1er 2026 Season’s greetings', 'Kep1er', 'normal', 16, 46.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 46.0, is_locked = true, is_published = true
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
  VALUES ('JuszK1-pppM', 'NTV ‘Best Artist 2025’ Behind | Kep1us 케플러스', 'Kep1er', 'normal', 17, 46.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 46.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 189, 195, '곳에서 조명 켜면 예쁘게 나와요', '와요', '오다', 'I come');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7sfM0zRmtVU', '2025 REWIND : We Are Kep1er POP-UP Behind | Kep1us 케플러스', 'Kep1er', 'normal', 18, 49.83333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 49.83333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 128, 131, '야 히에 너 너무 귀여워', '귀여워', '귀엽다', 'It is cute');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xQNDhPUFd1k', '김채현 ‘넌 날 잊지 못할거야’ Recording Behind | Kep1us 케플러스', 'Kep1er', 'normal', 19, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23, 27, '조 신호(?)와 함께 녹음 시작해', '시작해', '시작하다', 'Let''s start');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('h5foYkuRpkQ', 'ただいま、福岡！ | 히카루 VLOG | Kep1og 케플로그', 'Kep1er', 'normal', 20, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 50.0, is_locked = true, is_published = true
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
  VALUES ('fl77Iivka8o', '''THE STAR'' Photo Shoot Behind | Kep1us 케플러스', 'Kep1er', 'normal', 21, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 65, 69, '(순조롭게 촬영 종료!)] 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('fl77Iivka8o', '''THE STAR'' Photo Shoot Behind | Kep1us 케플러스', 'Kep1er', 'normal', 22, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 148, 152, '오랜만에 화보 찍어서 어색해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Y-u_60mBlCs', 'IN SEOUL Behind | Into The Orbit : Kep1asia', 'Kep1er', 'normal', 23, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 149, 153, '] 어디서 찍어도 잘 안 나와요', '와요', '오다', 'I come');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PJZLvoc-6Xw', 'MD & POSTER SHOOTING Behind | Into The Orbit : Kep1asia', 'Kep1er', 'normal', 24, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 86, 90, '뭐해) / 다연이가 다연이 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('dBE7asHA9T8', 'KCON LA 2025 Behind | Kep1us 케플러스', 'Kep1er', 'normal', 25, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 13, 17, '으로 나온 히에)] 날씨가 좋네요', '좋네요', '좋다', 'It is good!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7sfM0zRmtVU', '2025 REWIND : We Are Kep1er POP-UP Behind | Kep1us 케플러스', 'Kep1er', 'normal', 26, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 40, 44, '칵을) 반대로 얘기하는 줄 알았어', '알았어', '알다', 'I got it');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xQNDhPUFd1k', '김채현 ‘넌 날 잊지 못할거야’ Recording Behind | Kep1us 케플러스', 'Kep1er', 'normal', 27, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 56.0, is_locked = true, is_published = true
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
  VALUES ('xQNDhPUFd1k', '김채현 ‘넌 날 잊지 못할거야’ Recording Behind | Kep1us 케플러스', 'Kep1er', 'normal', 28, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 56.0, is_locked = true, is_published = true
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
  VALUES ('4XLJ8gBoEDA', 'IN TOKYO Behind | Into The Orbit : Kep1asia', 'Kep1er', 'normal', 29, 58.66666666666667, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 58.66666666666667, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 187, 190, '(폭로)] 아까부터 저것만 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PJZLvoc-6Xw', 'MD & POSTER SHOOTING Behind | Into The Orbit : Kep1asia', 'Kep1er', 'normal', 30, 66.33333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 66.33333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 88, 91, '(이번에는) 앉아서 촬영해 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Bc6N1WVBsic', 'Is this right…? | ''💫Time-Travel Rhapsody: Jazz Love Lost Beyond Time'' Behind the Scenes 🎬', 'WayV', 'normal', 1, 17.5, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 17.5, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 181, 189, '(끝나는 동시에 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ZJi5Ep1V1sk', 'WayV 威神V ''BIG BANDS'' Mood Film & Jacket Behind the Scenes', 'WayV', 'normal', 2, 30.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 30.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 116, 122, '방금 자켓 촬영하고 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('eNt9EN6K4Fg', 'Poster & VCR Shooting | 2025 WayV Concert Tour [NO Way OUT] Behind Ep.2', 'WayV', 'normal', 3, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 80, 84, '(촬영 종료!) 감사합니다', '감사합니다', '감사하다', 'Thank you');
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
  VALUES ('eNt9EN6K4Fg', 'Poster & VCR Shooting | 2025 WayV Concert Tour [NO Way OUT] Behind Ep.2', 'WayV', 'normal', 5, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 26, 30, '포스터 촬영하러 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('aTSLMTSXpO0', '🏆Thanks to our WayZenNies! | Weibo Music Awards 2025 Behind', 'WayV', 'normal', 6, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 77, 81, '1.5 - 3으로 서볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_-Zlb_DsIc4', '📜Now everyone at the company knows🔍 | ‘BIG BANDS’ Recruiting Behind the Scenes', 'WayV', 'normal', 7, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 36.0, is_locked = true, is_published = true
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
  VALUES ('duZ3Bw_Uvk0', 'Concert Setlist Meeting | 2025 WayV Concert Tour [NO Way OUT] Behind Ep.1', 'WayV', 'normal', 8, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 37.5, is_locked = true, is_published = true
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
  VALUES ('duZ3Bw_Uvk0', 'Concert Setlist Meeting | 2025 WayV Concert Tour [NO Way OUT] Behind Ep.1', 'WayV', 'normal', 9, 38.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 38.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 31, 35, 't;???&gt; 좀... 모르겠어요', '모르겠어요', '모르다', 'I don''t know');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('duZ3Bw_Uvk0', 'Concert Setlist Meeting | 2025 WayV Concert Tour [NO Way OUT] Behind Ep.1', 'WayV', 'normal', 10, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 87, 90, '"이제 내가 준비됐다', '됐다', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Bc6N1WVBsic', 'Is this right…? | ''💫Time-Travel Rhapsody: Jazz Love Lost Beyond Time'' Behind the Scenes 🎬', 'WayV', 'normal', 11, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 165, 168, '(PD) 네 시작할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('A7b9QG7lNT0', '☺️💪今日も頑張ります! | SMTOWN LIVE 2025 in TOKYO Behind the Scenes', 'WayV', 'normal', 12, 39.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 39.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 78, 84, '상 (일본) 공연 기대하고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('A7b9QG7lNT0', '☺️💪今日も頑張ります! | SMTOWN LIVE 2025 in TOKYO Behind the Scenes', 'WayV', 'normal', 13, 39.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 39.714285714285715, is_locked = true, is_published = true
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
  VALUES ('_-Zlb_DsIc4', '📜Now everyone at the company knows🔍 | ‘BIG BANDS’ Recruiting Behind the Scenes', 'WayV', 'normal', 14, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23, 26, '뭐 있는지 한번 보자', '보자', '보다', 'Let''s see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('g1k222I3jhM', 'WayV 威神V ''第五个季节 (The Fifth Season)'' Live Clip Behind the Scenes', 'WayV', 'normal', 15, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 44.0, is_locked = true, is_published = true
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
  VALUES ('_-Zlb_DsIc4', '📜Now everyone at the company knows🔍 | ‘BIG BANDS’ Recruiting Behind the Scenes', 'WayV', 'normal', 19, 47.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 47.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 43, 47, '럼 우리 지금... 붙이러 가자', '가자', '가다', 'Let''s go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('eNt9EN6K4Fg', 'Poster & VCR Shooting | 2025 WayV Concert Tour [NO Way OUT] Behind Ep.2', 'WayV', 'normal', 20, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 89, 94, '색다른 매력을 보여드리고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('duZ3Bw_Uvk0', 'Concert Setlist Meeting | 2025 WayV Concert Tour [NO Way OUT] Behind Ep.1', 'WayV', 'normal', 21, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 37, 42, '거 보고 싶어하는 사람들이 진짜', '진짜', '', 'Really!');
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
  VALUES (v_content_id, 9, 13, '(녹음 우등생) 헤헤 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('SmFKf7DXYkc', 'WayV 威神V ''Ice Tea'' Recording Behind the Scenes', 'WayV', 'normal', 23, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 50.0, is_locked = true, is_published = true
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
  VALUES ('T4NWf-pSa1g', 'WayV 威神V ''白色定格 (Eternal White)'' Mood Sampler & Jacket Behind the Scenes', 'WayV', 'normal', 24, 50.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 50.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 182, 188, '서분이 움직이는 느낌을 표현하고 싶어요', '하고 싶어요', '', 'I want to do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('T4NWf-pSa1g', 'WayV 威神V ''白色定格 (Eternal White)'' Mood Sampler & Jacket Behind the Scenes', 'WayV', 'normal', 25, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 25, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 105, 109, '지금 더 찍고 싶은 거 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('g1k222I3jhM', 'WayV 威神V ''第五个季节 (The Fifth Season)'' Live Clip Behind the Scenes', 'WayV', 'normal', 26, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 26, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 121, 125, '오늘 저희 컨디션이 너무 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('4muCVVMHQ0M', '2026 WayV SEASON’S GREETINGS BEHIND', 'WayV', 'normal', 27, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 27, difficulty_score = 53.0, is_locked = true, is_published = true
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
  VALUES ('dXzWKztDBsk', 'WayV 威神V ''BIG BANDS (狂想曲)'' Recording Behind the Scenes', 'WayV', 'normal', 28, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 28, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 154, 158, '으흠 이렇게 한 번만 더 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('dXzWKztDBsk', 'WayV 威神V ''BIG BANDS (狂想曲)'' Recording Behind the Scenes', 'WayV', 'normal', 29, 62.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 29, difficulty_score = 62.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 33, 37, 'iangjihao" (다시 하고 싶어요', '하고 싶어요', '', 'I want to do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('4muCVVMHQ0M', '2026 WayV SEASON’S GREETINGS BEHIND', 'WayV', 'normal', 30, 74.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 30, difficulty_score = 74.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 62, 65, '여러분도 좋아할 거예요! 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('AcrbQBLLDRA', 'Speed Makeup ASMR 🐹 | Welcome to Guinea’s Makeup Shop! | ILLIT (아일릿)', 'ILLIT', 'normal', 1, 30.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 30.0, is_locked = false, is_published = true
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
  VALUES ('11GqXEYZq4I', 'Watching something fun in the office | MINJU at work❤︎ | Kongguksu mukbang | ILLIT (아일릿) [PLAY-IT]', 'ILLIT', 'normal', 2, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 38, 42, '안녕 [부장님 카리스마 대박', '대박', '', 'Amazing!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('11GqXEYZq4I', 'Watching something fun in the office | MINJU at work❤︎ | Kongguksu mukbang | ILLIT (아일릿) [PLAY-IT]', 'ILLIT', 'normal', 3, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 30, 34, '[부장님인데 실수로 잘못 불렀어요', '불렀어요', '부르다', 'I sang/called');
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


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('CnbcfwxZ_fA', '(ENG SUB) 공룡의 악마 마젠타', 'QWER', 'normal', 2, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 117, 120, '언니는 술 마셨어요', '마셨어요', '마시다', 'I drank');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('CnbcfwxZ_fA', '(ENG SUB) 공룡의 악마 마젠타', 'QWER', 'normal', 3, 54.83333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 54.83333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23, 26, '너무 재밌는데 여기 뭐야?', '뭐야?', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('CnbcfwxZ_fA', '(ENG SUB) 공룡의 악마 마젠타', 'QWER', 'normal', 4, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 158, 162, '나중에 카메라 켜졌을때 알려줄게', '줄게', '주다', 'I will give');
END $$;

