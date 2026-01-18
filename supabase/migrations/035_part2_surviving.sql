-- Dredge Content Batch

DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('M05Ok_N0oEI', '뎐받음을 견디지 못한 샤오팅', 'Kep1er', 'normal', 1, 21.214285714285715, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 21.214285714285715, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 7, '아니, 나 핑크색 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QXo_J32p9DU', '[퀸덤2] 케플러 샤오팅을 위해 중국어로 대화해주는 우주소녀 은서(WJSN Eunseo speaks Chinese for Kep1er Xiaoting)', 'Kep1er', 'normal', 2, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 7, 11, '전국말을 해야 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('SaMXoiPC2vU', '샤오팅 한국어', 'Kep1er', 'normal', 3, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 5, '지금 저는 회사 하러 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('apKny6CX_18', '그녀도 어쩔 수 없는 한국인이었다', 'Kep1er', 'normal', 4, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '오늘 곡갈 게임 시작하자', '하자', '하다', 'Let''s do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('w7PqSUE2GiE', '[한글자막/번역] 천신웨이 V-LOG CutㅣKep1er 케플러 沈小婷 샤오팅', 'Kep1er', 'normal', 5, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2, 6, '지금 열심히 고정하고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pEmuT9Xq6Es', '쁘걸 선배님한테 권태기 설명 듣고 놀란 케플러 ㅋㅋㅋ', 'Kep1er', 'normal', 6, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10, 15, '그 사람을 봤는데 꼴등을 싫어', '싫어', '싫다', 'I dislike it');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XP-KSJLsnTQ', 'Kep1er 최유진 (Choi Yujin) 놀리는 히카루 (Hikaru)', 'Kep1er', 'normal', 7, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '아저씨 아줌마라는 말이 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('yzKk8uybSsI', '[한글자막/‪번역‬] 210909 걸스플래닛999 인스타 라이브ㅣKep1er 케플러 沈小婷 샤오팅', 'Kep1er', 'normal', 8, 57.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 57.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14, 17, '저는 정말 행복하고 행복해요', '행복해요', '행복하다', 'I am happy');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('SUtyx10NgRg', '[한글자막/번역] WAVES漫潮 쾌문쾌답 인터뷰ㅣKep1er 케플러 沈小婷 샤오팅', 'Kep1er', 'normal', 9, 57.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 57.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 31, 34, '제 음식을 관리할 수 있어요', '할 수 있어요', '', 'I can do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('o48_29nh4_Q', 'Idols que atuaram em K-dramas famosos! #케이팝 #아이즈원 #FIESTA #조유리', 'MEOVV', 'normal', 1, 14.666666666666666, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 14.666666666666666, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 12, '이 노래는 제가 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0cPAuQKtCQY', '[한글자막] BTS RM에게 2022년 소득세를 묻다', 'MEOVV', 'normal', 2, 18.31818181818182, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 18.31818181818182, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4, 15, '시청해 주셔서 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('kNqCWzbm9Dc', '[몬베베 브이로그] kyo야, 혼자 페스티벌 어디까지 가봤니 / 2025 슈퍼팝 브이로그 / 쌈박쌈박삼박자! / 근데 이제 유바롬씨 이야기도 함께... / 부제 ''융균이를 찾아서''', 'MEOVV', 'normal', 3, 23.833333333333332, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 23.833333333333332, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 52, 58, '그래서 침대가 개커요', '커요', '크다', 'It is big');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('iYefeD7RtlM', 'Algumas dasdols femininas mais altas! #kpop #GFRIEND #SeasonOfMemories #우리의다정한계절속에 #SOWON', 'MEOVV', 'normal', 4, 32.388888888888886, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 32.388888888888886, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9, 18, '널 기다렸어 끝까지 너를 택할게', '할게', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0EpbZJajvR0', '올데이프로젝트 타잔때문에 분열된 흑인들 의견?', 'MEOVV', 'normal', 5, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22, 26, '이를 두고 일부 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('NzxjKdEht_o', 'はい？', 'MEOVV', 'normal', 6, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2, 6, '지훈이 형 그거 색깔 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7DDLHicA1w8', '''시신 15구'' 발견되자…"산책 나가지 말라고" 인천 공포 #뉴스다 / JTBC News', 'MEOVV', 'normal', 7, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 29, 34, '나가지 말라는 얘기를 많이 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('6F0aSb6RMGw', '진 (Jin) ''The Astronaut'' Official MV Tepki | KPOP TEPKİ | KPOP REACTION | BTS', 'MEOVV', 'normal', 8, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 1, 6, 'nachLee와와 함께 들어가자', '가자', '가다', 'Let''s go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LEHMXIV9xu0', '210318 WayV 웨이션브이 헨드리 이즈보 라이브 (한글자막)', 'WayV', 'normal', 1, 19.285714285714285, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 19.285714285714285, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 30, 37, '왜 방송을 시작해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0UBsru5i0PA', '[한국어 자막] [WayV-log] 귀여운 귀신과 애기 왔어요', 'WayV', 'normal', 2, 23.833333333333332, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 23.833333333333332, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 6, '이곳에 괴로가 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('iIy4GSjb4GM', '[한국어 자막] [WayV-log] 첫인상 이야기1', 'WayV', 'normal', 3, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, 'Q. 양양이 제일 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('DEk4Rd2zLzs', '[한국어 자막] [WayV-log] 《Dream Launch Plan》가 원래는 안무가 있었다구요？', 'WayV', 'normal', 4, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 80, 84, '이 노래는 제가 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GXyLvaI1UDg', '[한국어 자막] 威神V WayV 猫眼大明星 인터뷰', 'WayV', 'normal', 5, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 132, 136, '맞아요, 너무 감사해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8isQBM3FAFc', '[WayV/웨이션브이/쿤] [한국어 자막] 2021 시즌그리팅', 'WayV', 'normal', 6, 34.75, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 34.75, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 44, 52, '1년에도 더 열심히 우리의 최고', '최고', '', 'The best!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('IZ-aVgMqgqY', '[한국어자막] [WayV-Log] KUN WINWIN LUCAS 감자칩광고', 'WayV', 'normal', 7, 35.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 35.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 68, 74, '. 첸쿤... 첸쿤은 뒤에 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('73GC5lUUnd4', '[한국어 자막] [WayV-log] 그렇게 간단하지 않아요', 'WayV', 'normal', 8, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 47, 51, '우리 지금 이름 정리하자', '하자', '하다', 'Let''s do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('fwyNFXtJpm4', '200930 WayV 웨이션브이 大眼星推荐 인터뷰 (한글자막)', 'WayV', 'normal', 9, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 45, 49, '여러분 저 이름이 뭐예요?', '뭐예요?', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('tzsezACrKZc', '[wayv/양양]200508 양양 인스타 라이브 (한글자막)', 'WayV', 'normal', 10, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 29, 33, '다들 지금 뭐 하고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('G2eDkyB4qqM', 'WayV 윈윈 그릇 비우기 브이로그 - 光盘要从源头开始，#董思成干饭要光盘# 你学会了吗?跟#奔跑吧# 一起保护粮食!', 'WayV', 'normal', 11, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 31, 35, '그럼 상쾌한 음식을 좀 먹자', '먹자', '먹다', 'Let''s eat');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pRkqEKvIaIw', '[WAYV/쿤]한글자막, SM유영진이사를 흡족시킨 쿤의 실력', 'WayV', 'normal', 12, 46.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 46.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 20, 26, '도 fish 10보다 많이 들었어요', '들었어요', '듣다', 'I listened');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('m3S-IBBm8lE', '[한국어 자막] [WayV-log] 특파원 기자 KUN이 현장 보도를 들고왔어요 4', 'WayV', 'normal', 13, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 28, 33, '직원은 안전 조치를 하고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Em5BaUE2Dtk', '[한국어 자막] [WayV-log] 어떤 만화 보셨어요?', 'WayV', 'normal', 14, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 29, 33, 'TV, 동화편을 많이 못 봤어', '봤어', '보다', 'I saw');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('yhcuKTcI8F8', '[한국어 자막] [WayV-log] 달콤한 티타임', 'WayV', 'normal', 15, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 16, 20, '우크라니에 있는 거 재미있어요', '재미있어요', '재미있다', 'It is fun');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('zDo20UrdDBM', '[한국어 자막] [WayV-log] WINWIN 제 이어폰을 소개합니다', 'WayV', 'normal', 16, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 40, 44, '어떻게 들리는지 알 수 없어요', '없어요', '없다', 'There is not / I don''t have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('BRXahcizKN8', '[WayV-log] WayV소극장 (한글자막)', 'WayV', 'normal', 17, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '가장 좋아하는 영화가 무엇인가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('F4R4Zd9K7s8', 'WayV(威神V) 빌리빌리 공식계정 인사 (한글자막)', 'WayV', 'normal', 18, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14, 18, '요, 저희는 여기 기다리고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9ninWlkEthY', '민지 - 踊り子 (Odoriko) 무희  l 2024 Bunnies camp in tokyo Dom ver. M/V', 'ILLIT', 'normal', 1, 21.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 21.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 72, 80, '아, 너, 나, 너에게 왔어', '왔어', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('srM_QDjtgN0', '그렇게 성덕이 되었습니다 [아일릿 팬싸로그]', 'ILLIT', 'normal', 2, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 30, 34, '여러분 구독 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_7m5DBtMEo8', '외국어 빨리 배우는 법 #MOKA #모카 #ILLIT #아일릿', 'ILLIT', 'normal', 3, 34.75, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 34.75, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4, 12, '서 배우는 게 최고라고 생각해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Klupl5laMwc', '[Mrs. GREEN APPLE] 모토키와 히로토의 한국어 대화 (미세스 그린 애플) #mrsgreenapple #미세스그린애플', 'ILLIT', 'normal', 4, 36.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 36.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6, 14, '로토의 인스타 라임을 하고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('MoezWJrhzUE', 'ILLIT MINJU가 12분 동안이나 나한테 엉뚱한 융기염을 줬어 (민주 재밌는 순간🐰🐤)', 'ILLIT', 'normal', 5, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 35, 38, '물가가 나고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('BJFvFvSvXcc', '[2025.01.12] 히히라이브 || 원희 [자막]', 'ILLIT', 'normal', 6, 41.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 41.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 49, 57, '니 왜냐면 이제 진짜 제가 없어요', '없어요', '없다', 'There is not / I don''t have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('NotkL0w7dWg', '아기 앞에서 찬 물도 함부로 마시면 안 되는 이유 #ILLIT #아일릿 #IROHA #이로하', 'ILLIT', 'normal', 7, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 5, 9, '저는 오늘 머리띠를 썼어요', '썼어요', '쓰다', 'I wrote');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('KrVZYCa-TL0', '&TEAM EJ&NICHOLAS - Cupid (pH-1 feat. PENOMECO)', 'ILLIT', 'normal', 8, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 96, 100, '도도한 모습 배운 거야 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Fd_En3y2amo', '[ENG] ROSÉ sings her favorite carol! What''s In My Bag🖤 | MY VOGUE', 'ILLIT', 'normal', 9, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9, 14, 'at''s in my bag 시작해', '시작해', '시작하다', 'Let''s start');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('j2H3qk0ZN5Q', 'LE SSERAFIM’s HUH YUNJIN on Her Skin Care Routine & Eyelash Curling Trick | Beauty Secrets | Vogue', 'ILLIT', 'normal', 10, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9, 13, 'a answering 하고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1zXFljJ6FMc', '아일릿 모카가 말하는 일본 학교의 충격적 진실', 'ILLIT', 'normal', 11, 62.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 62.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '평소에 몇 개 덮기지 가서 먹었어요', '먹었어요', '먹다', 'I ate');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5KxoG1OAlT4', '[자막뉴스] "한국인 마음 이제 알겠냐"…구글 검색어까지 점령한 케데헌 열풍 / YTN', 'IZNA', 'normal', 1, 29.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 29.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15, 25, 'k-pop이 들어가는 만큼 신나', '신나', '신나다', 'I am excited');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('g00kcuxXMa0', '[ENG] 소녀시대 20주년이면 메인보컬 바꿀 때도 됐잖아 (ft.효리수 데뷔 임박) / 가짜 김효연 EP.04 보컬 편', 'Hearts2Hearts', 'normal', 1, 27.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 27.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 43, 47, '괜찮아요, 고마워요', '고마워요', '고맙다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gBh6CT-ZJqE', '[하츄로그]상여자는 앨범깡하면서 미녀모션으로 새해 맞이 함…!! |하츠투하츠|앨범깡|덕질로그|덕질브이로그|', 'Hearts2Hearts', 'normal', 2, 35.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 35.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 5, '전장에서 산 택배가 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9gArquoEyy4', '위시선배님 안녕하세요 신인가수 해찬입니다 #HAECHAN #CRZY #HAECHAN_CRZY #NCT #NCT127 #NCTDREAM #NCTWISH', 'Hearts2Hearts', 'normal', 3, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 16, 20, '앨범은 혹시 필요하신가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('FYV1xNFhDdM', '[SUB] 호캉스 온 김에 겟레디윗미부터 Q&A까지 뽕뽑는 브이로그 | 명동 헬로키티 애플카페 스시 🍣', 'Hearts2Hearts', 'normal', 4, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 81, 87, '지고 그냥 서로 얼굴 보고 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8s5d7f3y6q0', '🩷SM Family All Together🩷 Behind the Scenes of Super Junior Leader Leeteuk at Japan SMTOWN concert', 'Hearts2Hearts', 'normal', 5, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 34, 39, 'SM시코드에 같이 좀 만나 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('eobwG5YmKHk', '오늘도 평화로운 하츠투하츠', 'Hearts2Hearts', 'normal', 6, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '지효가 메이크업 해주고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('JEpqhNZzmmE', '더체이스 멤버별 분량알아보자 #h2h #하츠투하츠 #하투하 #The Chase', 'Hearts2Hearts', 'normal', 7, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '스 멤버 별 파트 그냥 알아보자', '보자', '보다', 'Let''s see');
END $$;

