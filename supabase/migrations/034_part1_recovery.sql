-- Dredge Content Batch (Recovery)

DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xOyBzghUhtc', '[한글자막] 밍왕(明望)여행 서울여행 남산편(2) BTS错生착생', 'BTS', 'normal', 1, 16.5, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 16.5, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 169, 182, '시청해 주셔서 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('zVW8zkbodQI', '[자막뉴스] ''신세계 그룹 손녀'' 아이돌...라방 중 공개된 재벌가 일상 화제 / YTN', 'BTS', 'normal', 2, 22.555555555555557, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 22.555555555555557, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 51, 60, '엄마 나 사실 가수를 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('CimgcT7nH5A', '[방탄소년단/BTS] 170902 지민이 LOG. (자막 ver.)', 'BTS', 'normal', 3, 23.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 23.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 72, 87, '얼마나 대단하신 분인지는 알지', '알지', '알다', 'You know, right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XXb_6yBApS0', '[자막] 김재중 "한국의 출연료가 일본에 비해 9배 높아요"', 'BTS', 'normal', 4, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 21, 25, '한국의가 더 비싸요', '비싸요', '비싸다', 'It is expensive');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('iLXaOWRRCtc', '[방탄소년단/BTS] 151105 뷔의 로그 (자막ver.)', 'BTS', 'normal', 5, 30.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 30.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6, 12, '오늘은 중국에서 한중 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('EDVsc80kA2k', '[BTS VLOG] Jin l COOKING VLOG', 'BTS', 'normal', 6, 30.77777777777778, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 30.77777777777778, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 120, 129, '여기 가르쳐 주셔서 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('lL7nB5cTXNA', '[방탄소년단/BTS] 161113 지민이 로그 (자막ver.)', 'BTS', 'normal', 7, 32.388888888888886, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 32.388888888888886, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 84, 93, '얼마나 우리를 진심으로 또 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('TsqdG6xsgGE', '[ENG/ 한국어 자막] MY ARMY-log 아미로그: BTS Week (하이브 Daydream Believers, 민속촌, 미도파 카페, 엠카운트다운 V M-Countdown)', 'BTS', 'normal', 8, 32.388888888888886, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 32.388888888888886, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 9, '교환학생이니까 한국어 잘 못해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('idcJbsGekhw', '[BTS VLOG] V l DRIVE VLOG', 'BTS', 'normal', 9, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '오늘 1시부터 시작해', '시작해', '시작하다', 'Let''s start');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Go1-d1akias', 'VLOG ''V` [BTS VLOG]DRIVE VLOG SUBTITULADO AL ESPAÑOL', 'BTS', 'normal', 10, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '오늘 1시부터 시작해', '시작해', '시작하다', 'Let''s start');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('OZ225TQp-wA', '[자막뉴스] ''생각했던 것이 현실로''...BTS 자필 편지에 담긴 희소식 / YTN', 'BTS', 'normal', 11, 34.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 34.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 9, '다 다른 글씨체로 변함없이 기다려', '기다려', '기다리다', 'Wait');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('p5r8hWhNuI4', '[BTS VLOG] j-hope l 확신의 J VLOG', 'BTS', 'normal', 12, 35.857142857142854, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 35.857142857142854, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 114, 121, '좀 이따 작업실 가서 켜볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0PDku7tnCzk', '[방탄소년단/BTS] 150513 랩몬스터 로그 (자막ver.)', 'BTS', 'normal', 13, 37.388888888888886, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 37.388888888888886, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 12, 21, '보는 말레이시아 섬이었는데 완전', '완전', '', 'Totally!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('M6wpkLCiHoI', '[슈취타] EP.18 SUGA with V', 'BTS', 'normal', 14, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 53, 59, '돌맹이어도, 할아버지여도 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XcO-AAUgPSw', '자막)BTS방탄소년단 맵솔콘//늦덕아미 초보티켓팅 성공기', 'BTS', 'normal', 15, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 12, 19, '어와서 티켓팅을 시작하려고 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('T1jFETCxpbc', '(한글 자막) BTS 꿀 FM 06.13 ''2017 BTS FESTA'' full', 'BTS', 'normal', 16, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22, 25, '내가 보기에는 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pXS9_dJ7qi0', '[VLOG] RM | 9일간의 유럽 여행기 #미술관투어 #친구랑룰루랄라', 'BTS', 'normal', 17, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 106, 110, '그다음에 제가 엄청 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('oVZ8aT_ocnI', 'BTS 방탄소년단 미국 콘서트 ROSE BOWL Day 1 LY: Speak Yourself Tour | 로즈볼 스타디움 | Vlog pt.1/3 | 한글자막 | 4K', 'BTS', 'normal', 18, 39.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 39.714285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 26, 33, '은 시간에 로즈볼에 도착을 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('u6bF__ytLjI', '[BTS VLOG] SUGA l 목공방 VLOG', 'BTS', 'normal', 19, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 80, 86, '들고 싶으신 거 뭔가 있으신가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Ks4u0Lka-kI', '[BTS VLOG] Jimin l 팔찌공방 VLOG', 'BTS', 'normal', 20, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 40, 46, '다시피 제가 악세사리를 또 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5V-nJYL_2pA', '[방탄소년단/BTS] 161120 지민이 로그(자막ver.)', 'BTS', 'normal', 21, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 56, 62, '게 생각해야 될지가 아니라 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9YZzI94t2yw', '[ 방탄소년단 / BTS ] 지우님 브이로그 속 호비 목소리 (자막 추가) #BTS #방탄소년단 #JHOPE #HOSEOK #HOBI #호석 #제이홉 #호비', 'BTS', 'normal', 22, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 11, 15, '또 써는 소리를 듣기 싫어해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('eGM77UW82nI', '자막 없는 영상🩵|혜인 포포💙#포장계 #다이브로그 #추천 #kpop #newjeans', 'NewJeans', 'normal', 1, 14.428571428571429, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 14.428571428571429, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 28, '잘 지내셨다면 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('emQOkfNmDsU', '자막없이 보는 포카포장💦#newjeans #버니즈 #다이브로그 #ive #버니즈로그 #추천 #포카포장 #자막없이보는 포카포장 #알고리즘떠라', 'NewJeans', 'normal', 2, 25.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 25.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 47, 52, '봐주셔서 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ESegAHR5FtI', '#네번째컨텐츠 #아이브,뉴진스 엘범깡 #자막 없는 영상 #아이와함께만든', 'NewJeans', 'normal', 3, 26.333333333333332, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 26.333333333333332, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 30, 42, '오늘도 시청해주셔서 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('p5OmXSnEEPo', '자막이 좀(?)빠른 다이소깡#쑤윤의 깡#쑤윤#다이소깡#학교에서 문 부신 썰 #newjeans', 'NewJeans', 'normal', 4, 27.666666666666668, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 27.666666666666668, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 12, 'know is now 알게 됐어', '됐어', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Y4Shq7i06sc', '정말 떨리는 화장실에서 초대형 클리어 슬라임 만들기! #newjeans #kpop #asmr #만들기 #슬라임asmr #slime #made', 'NewJeans', 'normal', 5, 27.666666666666668, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 27.666666666666668, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 12, 'know is now 알게 됐어', '됐어', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hyPzslNYQaM', '아이돌Vlog) Newjeans 6? 뉴진스 유퀴즈에서 통편집 됐던 새 멤버 공개 브이로그', 'NewJeans', 'normal', 6, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15, 19, '붕어빵을 하나 사왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('RE5Sc_zZUUA', '오늘도 자막 없는 영상💥🫰 제 쇼츠에서 보고 싶으신 영상 있으신가요?! #다이브로그 #포장asmr #덕질로그 #아이브 #포장브이로그 #포카포장', 'NewJeans', 'normal', 7, 39.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 39.714285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4, 11, '단점이라건 그 허세도 마냥 좋았어', '좋았어', '좋다', 'It was good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QCIH1zKvy3M', '뉴진스 OMG 뮤비 느낌 자막 폰트 찾는 법! (NewJeans 감성)', 'NewJeans', 'normal', 8, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 3, 9, '울리는 영화자막 폰트를 소개해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('jHXviG6GsFo', '[자막뉴스] 1년 만에 공식 복귀한 민희진...새 기획사는 뉴진스와? / YTN', 'NewJeans', 'normal', 9, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6, 12, '난 16일 자신이 세운 새 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1NKz7wnchyM', '(찐 경험)직장인 N잡러 퇴근후 할수있는 부업5가지 추천해요. https://m.blog.naver.com/daonism_/223435726510', 'NewJeans', 'normal', 10, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 6, 'ain the time 인정할게', '할게', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ykutp5G0YBM', '내가 네일아트 안하는 이유', 'NewJeans', 'normal', 11, 46.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 46.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23, 26, '물론 나는 오히려 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GtGufZVWwo8', '르세라핌 핌로그의 자막을 르세라핌이 직접 쓰는지 궁금했던 아이브 이서🤍 #이서 #리즈 #은채 #은채의스타일기 출처: 은채의 스타일기 아이브 리즈, 이서편💓', 'NewJeans', 'normal', 12, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '데 그거 자막 진짜 자기가 써요', '써요', '쓰다', 'I write');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('uCiwu-kqJmQ', '유독 성형 의혹이 없는 여자 아이돌🥇(올데이프로젝트, 올데이 프로젝트)', 'NewJeans', 'normal', 13, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 35, 39, '첫 연습생 생활을 시작하게 됐다', '됐다', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('55XKfyJ-WwM', '[자막뉴스] ＂이럴거면 유튜브로 봤지＂ 블랙핑크 콘서트에 관객 ''분통'' | 이슈픽', 'BLACKPINK', 'normal', 1, 26.333333333333332, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 26.333333333333332, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 31, 43, '유튜브 틀어놓고 그냥 있지 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('TY8amOYzQ6c', '[V LIVE] BLACKPINK - 블핑과 함께 천국 문 앞까지만 딱 붙어있겠습니다 한 808만년쯤?🖤💖 (BLACKPINK''s 3rd anniversary)', 'BLACKPINK', 'normal', 2, 27.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 27.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 79, 83, '너는 별명이 뭐야?', '뭐야?', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-aBZtJ4zHKQ', '[러비브이로그] 틸트, 아슬콘이 끝났다고? 난 이제 베낫베 시작인ㄷㅔ?', 'BLACKPINK', 'normal', 3, 27.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 27.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 38, 43, '앨범 숨겨서 개 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9gDhl3m3xKs', 'vlog 대학생 일상 브이로그🖤💗 | BLACKPINK 온라인콘서트, ITZY 덕질, 시간표 짜기, 천개의 파랑 독서하고 필사', 'BLACKPINK', 'normal', 4, 27.75, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 27.75, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 113, 121, '이제 먼저 면을 끓여줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7qeTowO6jH4', 'LONDON VLOG | I went to my first PRIDE parade🏳️‍🌈 and BLACK PINK concert🖤🩷', 'BLACKPINK', 'normal', 5, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 32, 36, '오늘 수업을 끝났어', '끝났어', '끝나다', 'It is finished');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('n75y1QD6Hh8', '제니가 젠틀 홈 콜라보가서 뭐라고 했냐면.... | 블랙핑크 한영자막', 'BLACKPINK', 'normal', 6, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23, 28, '인데 가끔은 너무 신나', '신나', '신나다', 'I am excited');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LJQksxMBVdc', '[제니한글자막] 블랙핑크 제니 빌보드 영어인터뷰 한글자막', 'BLACKPINK', 'normal', 7, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 81, 85, '믿을 수가 없었어요', '없었어요', '없다', 'There was not');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('afbBmkqu-Z4', '“이것이 바로 운명?” 블랙핑크 지수, 파리 브이로그 공개 #blackpink #jisoo', 'BLACKPINK', 'normal', 8, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 16, 21, '지수는 제가 너무 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('eB-wDmkbdio', '미국콘서트Vlog | BLACKPINK CONCERT | San Francisco | 블링크 | 지수보고 반한 후기 | 2023 | Oracle Park', 'BLACKPINK', 'normal', 9, 30.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 30.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 6, '블랙핑크 공연을 보러 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('L5MDnLyMh_M', '[SUB ESP] Blackpink Detrás de escenas Kill This Love(킬 디스 러브)', 'BLACKPINK', 'normal', 10, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 33, 37, '신곡을 다 뽑아왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ah8yn3xCzvk', '다 영어임 한국어자막 없다 알아서보세요 서현 브이로그 블랙핑크 사랑해요', 'BLACKPINK', 'normal', 11, 36.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 36.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14, 22, 'aland에서 학습을 하고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-tdbnrWdM5Q', '애슐리 브이로그 챙 포커스 [BLACKPINK ROSÉ In Ashley’s V-log]', 'BLACKPINK', 'normal', 12, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 3, 7, '어떤 네일아트 하실 건가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('sze49q8Zxes', '[ENG] What''s Rosé''s favorite ramen snack? Ask Rosé anything Rosé | VOGUE MEETS', 'BLACKPINK', 'normal', 13, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23, 29, 'e Anything을 이제 시작해', '시작해', '시작하다', 'Let''s start');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Cago7_Cw2Yw', '(KOR/ENG) 나의 21살 생일 기록 How I spent my 21st Birthday (ft. BLACKPINK, SKULLPANDA)', 'BLACKPINK', 'normal', 14, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10, 14, '오늘의 날은 블랙핑크에 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('cKq8OSJOBqc', 'BLACKPINK FUNNY AWKWARD MOMENTS..', 'BLACKPINK', 'normal', 15, 46.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 46.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 133, 136, '우리 매니저 오빠 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Fd_En3y2amo', '[ENG] ROSÉ sings her favorite carol! What''s In My Bag🖤 | MY VOGUE', 'BLACKPINK', 'normal', 16, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 47.5, is_locked = true, is_published = true
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
  VALUES ('s3GTfZZ3p54', 'BLACKPINK, the first K-pop girl group to perform at Wembley Stadium! [ENG SUB]', 'BLACKPINK', 'normal', 17, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23, 28, '희 드디어 블랙핑크 만나러 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('wLhnzTK41wY', '블링크 브이로그#35|🥹왜 이렇게까지 하시는거에요!?|✨윙크제니😉|덕질 브이로그|BlackPink Blink|블링크로그|반택깡|준등기깡|택배깡|선물깡|포장|비공굿', 'BLACKPINK', 'normal', 18, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '방금 택배에 총 3개 뜯어볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('h-snpzQ2ejo', 'ENG│블랙핑크 커버의상 만드는 자취일상. 명란우동엔 삼겹살, 만두밥과 누가크래커 먹으며 지수한복 완성하는 브이로그│플랜디VLOG', 'BLACKPINK', 'normal', 19, 57.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 57.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 5, '그리고 제가 좋아하는 면을 먹었어요', '먹었어요', '먹다', 'I ate');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('tCCtZ6J5vs8', '[Eng Sub] Jang Wonyoung is pretty', 'IVE', 'normal', 1, 37.785714285714285, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 37.785714285714285, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 7, '1977년 장국중 데뷔 후 최고', '최고', '', 'The best!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_gkZjoDeC3k', '혼자 가는 에스파 콘서트 브이로그 (자막 없는..)', 'aespa', 'normal', 1, 30.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 30.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 97, 102, '오늘은 제가 가장 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('dcfOXczg2hA', 'GYM젤 🏋‍♀ + 솜젤의 Q&A 🖤 | GiGi-log', 'aespa', 'normal', 2, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 5, 9, '아 맞아요 죄송해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vSVXp0Spfus', '찐 교포들의 영어 대화 에스파 지젤 전소미', 'aespa', 'normal', 3, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22, 26, '너가 넣을 수 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('mBsc8gvkkUk', '*자막필수*일본에서에스파사랑하기 | 칼프마이로그 덕질브이로그 도쿄돔 사이타마아리나 | 日韓同時字幕 | 韓国人が日本でaespa推し活 | 東京に住む韓国人 | エスパ  mylog カリナ', 'aespa', 'normal', 4, 34.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 34.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 54, 63, '던지 펜 라이트가 약간 흐릿했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VeYLBOyrncs', '한국여자(카리나) vs 중국여자(에스파 닝닝)#카리나#에스파#닝닝', 'aespa', 'normal', 5, 35.857142857142854, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 35.857142857142854, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22, 29, '다리에 되게 많이 비셨나 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('c1-qagApi3I', '이건 ''피드백이 아니''라는 에스파 팬들', 'aespa', 'normal', 6, 35.857142857142854, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 35.857142857142854, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 12, 19, '표정과 라이브가 모두 개선됐다', '됐다', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8t-N_tculaY', '승무원 준비하면서 배웠다는 카리나의 중국어 실력', 'aespa', 'normal', 7, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 6, '일을 하고 있을까? 생각해봤어', '봤어', '보다', 'I saw');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('tCCtZ6J5vs8', '[Eng Sub] Jang Wonyoung is pretty', 'aespa', 'normal', 8, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 7, '1977년 장국중 데뷔 후 최고', '최고', '', 'The best!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hgtGdlVLC-A', '채원이만 알아들은 꾸라 발음', 'aespa', 'normal', 9, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15, 19, '아니 약 먹어야지라고 했어', '했어', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('DuK-NbDIr_4', '카페 알바 닝닝☕️', 'aespa', 'normal', 10, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 3, '근데 닝닝이는 어디야?', '어디야?', '', 'Where is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('SsBZkxWuEHQ', '에스파말고 스파브이로그', 'aespa', 'normal', 11, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 5, 9, '맞네 저기 표지판 나와 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('uT6FJxvzmvA', '닝닝… 뭘 쳐요? #에스파 #닝닝 #라방', 'aespa', 'normal', 12, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '만요 제가 한번 필터를 찾아볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('N5f-3qkDOUw', '(ENG SUB O) 8dairy Ep.02│SEVENTEEN THE 8''s VLOG', 'SEVENTEEN', 'normal', 1, 22.5, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 22.5, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 5, 'Hi! 날씨 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ECwrUuj7xRk', '[한국어자막有] JUN’s VLOG “잘 먹고 마시고” / 건대입구, 한강 / 230205 小红书 xhs 샤오홍슈', 'SEVENTEEN', 'normal', 2, 27.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 27.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 30, 35, '이건 제가 정말 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('RPn7CuJK-lE', '[세븐틴/준](자막有) JUN’s VLOG | in CARATLAND | 小红书 xhs', 'SEVENTEEN', 'normal', 3, 28.928571428571427, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 28.928571428571427, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 7, 14, '지금 촬영장으로 가고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('R99urMxmJLw', '파워디렉터 17 강좌 - 8강 자막 테두리 / 예능 자막 / 자막바 만들기', 'SEVENTEEN', 'normal', 4, 29.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 29.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 38, 48, '이쪽에다가 한번 입력해 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('CDk3hxEfT0I', '[ENG SUB O] JUN''s VLOG EP.07 (with T8)│SVT JUN&THE 8', 'SEVENTEEN', 'normal', 5, 30.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 30.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 107, 113, '자 같은 경험 되었나 봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('BPOcuRV9sFg', '루카스 버버리쇼 브이로그 (자막有）', 'SEVENTEEN', 'normal', 6, 32.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 32.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 33, 38, '안녕하세요, 런던에 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('jEHQ3zWV-vI', '국제가족 Vlog｜딸이 17개월이 되면 변하는 일상｜자막 SUB｜Korea Vlog', 'SEVENTEEN', 'normal', 7, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 5, '와우 이름 얘기하는거 봤어요', '봤어요', '보다', 'I saw/watched');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('exb7tsdpzM8', '파워디렉터 17 강좌 - 4강 자막 기초 편집 / 자막 만들기 / 트랜지션 효과', 'SEVENTEEN', 'normal', 8, 39.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 39.714285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22, 29, 'title Room 이라고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_HAYU8zy_IY', '파워디렉터365 13강  - 브이로그 자막넣기(예제있음) 이것만 보면 브이로그자막 완벽하게 해결!', 'SEVENTEEN', 'normal', 9, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 6, '를 운영할 수 있을까? 생각했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('mS1HErZNx8I', '말자막은 타이핑만 하면 되는거 아니야? [한달만에 편집자 ep.2]', 'SEVENTEEN', 'normal', 10, 42.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 42.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 54, 59, '말자막이란 무엇이냐? 간단해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('v8gAuUgg9xk', '파워디렉터 17  12강 : 브이로그 자막 삽입하기', 'SEVENTEEN', 'normal', 11, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 59, 65, '는 예능 자막너키 한번 배워볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('wHDiBfdXtfI', '파워디렉터 17  13강 : 꿀팁! 무료 자막 이미지 다운로드하기', 'SEVENTEEN', 'normal', 12, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 42, 48, '있는 사이트를 제가 발견을 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('B5OiGkN_74Q', '[자막로그] 메자마시 세븐틴편 : 의역오역 포함', 'SEVENTEEN', 'normal', 13, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 5, '일본의 오리지널 곡은 어떤가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('yRjv0sAbcBc', '채널명이 따라다니는 자막 이제 초간단하게 만드세요 ( 이제 노가다 안녕~!!!!! ) :: 다빈치리졸브17', 'SEVENTEEN', 'normal', 14, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 12, 17, '영상 보시기 전에 구독과 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pB0T5ZiY1r0', '파워디렉터 17 56강 : 스크린 텍스쳐로 감각있는 자막 만들기', 'SEVENTEEN', 'normal', 15, 49.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 49.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 39, 45, '러면 얘가 적용된 걸 한번 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('JenSbS84ocY', '(ENG SUB O) 8dairy Ep.05│SEVENTEEN THE 8''s VLOG', 'SEVENTEEN', 'normal', 16, 49.83333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 49.83333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 65, 68, '한올 운동을 하고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('v6fg63Cv5h8', '[세븐틴/준] (자막O) JUN’s VLOG | in LOVE | 일본 팬미팅 | 小红书 샤오홍슈 xhs', 'SEVENTEEN', 'normal', 17, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 27, 31, '아니야 온자 rugby는 완전', '완전', '', 'Totally!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('afYlAPILyGw', 'carat vlog ep3 | seventeen | ひとりじゃない unboxing (한국어 자막)', 'SEVENTEEN', 'normal', 18, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 78, 82, '일단은 이거 아직 전부 안 봤어', '봤어', '보다', 'I saw');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('26H2y7V2tl4', '[세븐틴/준] (한글자막) 격리 첫날 ☝★🍚 ''ep.1 문준휘의 휘일상기록''', 'SEVENTEEN', 'normal', 19, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 29, 33, '랑 visions를 만들고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('2bRvuH249KU', '자막을 다음 프로젝트에서 사용하는 법  [다빈치 리졸브 20]', 'SEVENTEEN', 'normal', 20, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 75, 79, '럼 이렇게 많이 만들 수가 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LGnwEIc7fGU', '[스테이 브이로그 #01] 파도 VLOG | 스트레이키즈 팬미팅 | 빠순로그', 'Stray Kids', 'normal', 1, 27.5, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 27.5, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 38, 43, '저는 쿠라를 안 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0ua3nBQxzvQ', '당연하지 게임 도중 삐진 한지성[스트레이키즈/창빈/한/아이엔]', 'Stray Kids', 'normal', 2, 35.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 35.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 5, '병수염 안 깎으면 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('rZ-NjVS_C4U', '베르사체 쇼에 참석한 스키즈 현진 현장 반응 #SKZ #HYUNJIN', 'Stray Kids', 'normal', 3, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18, 25, '사체 재펜씨 이오는 현진을 보자', '보자', '보다', 'Let''s see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('nQkvbN934ZY', '스테이로그, 뭔가 누리끼리한 스테이 4기 키트깡', 'Stray Kids', 'normal', 4, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 6, '3기키트가 왔습니다. 한번 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('uu1eCwmAA1w', '[스테이 브이로그] 킬포 너무 많은 220918 스트레이 키즈 매니악 언베일 콘서트 / 애교 부분 / 소감 / 마무리 멘트 / STAY VLOG', 'Stray Kids', 'normal', 5, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 16, 20, '너무 부담스러워 저한테 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('m8lDUcE_yYQ', '호주 브이로그 [스트레이키즈/필릭스]', 'Stray Kids', 'normal', 6, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 30, 34, '너는 그 말을 안 생각했어', '했어', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('6_NjakIqCw0', '[스트레이키즈 필릭스] 호주에서 낯선 사람과 스몰톡하는 용보(자막O)', 'Stray Kids', 'normal', 7, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6, 9, '호프스테이크에 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xui4a834oi4', '[스트레이키즈] 까꿍 할 때마다 표정이 바뀌는 디덩이', 'Stray Kids', 'normal', 8, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9, 13, '실제로 가니까 너무 좋았어요', '좋았어요', '좋다', 'It was good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('iTce4hJ50w4', '일본이 낳지 못한 이리노..', 'Stray Kids', 'normal', 9, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '스테이 여러분 정말 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('N3qfymUWR_A', '리노 필릭스 조합명은 냥냥라차', 'Stray Kids', 'normal', 10, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '합을 스테이가 뭐라 부른지 알지', '알지', '알다', 'You know, right?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('JvUrIOZsN3M', 'NCT 127 Road to japan  #10_02 (한글자막)', 'NCT 127', 'normal', 1, 20.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 20.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22, 27, '아! 이건 뭐예요?', '뭐예요?', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('O5gx5Zq06ds', '편견 없는 엔시티위시 #nctwish', 'NCT 127', 'normal', 2, 27.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 27.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 5, 'Q. 이곳은 어디인가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Miu6gCmNGSw', '🎀#SAKUYA’ʂ Sυɾρɾιʂҽ Bιɾƚԋԃαყ ραɾƚყ❀˖° w/ #NCTWISH', 'NCT 127', 'normal', 3, 32.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 32.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 27, 32, '생일 축하해 생일 축하해', '축하해', '축하하다', 'Congrats');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7OZyhGedNwo', '[210603] 우리chill💚💚 | NCT 127 브이앱', 'NCT 127', 'normal', 4, 33.18181818181818, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 33.18181818181818, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 11, '러분 오늘 함께 모여주셔서 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('L8oJxxoPar4', '[4K/231117/자막] NCT 127 더유니티(The Unity) 첫콘 소감멘트 Full', 'NCT 127', 'normal', 5, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 86, 90, '아직 날앞에 더 꿋가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9gArquoEyy4', '위시선배님 안녕하세요 신인가수 해찬입니다 #HAECHAN #CRZY #HAECHAN_CRZY #NCT #NCT127 #NCTDREAM #NCTWISH', 'NCT 127', 'normal', 6, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 39.0, is_locked = true, is_published = true
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
  VALUES ('0FKjlX0-PHI', '#02 #칠프 의 #NCT127 앨범 다시 보기 | 칠프라면 자막보고 피식 보장합니다', 'NCT 127', 'normal', 7, 39.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 39.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 42, 48, '근데 진짜 엔시티 앨범은 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ame16ipaykQ', '[NCT] 시티대 김도영의 파리 여행 브이로그', 'NCT 127', 'normal', 8, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 34, 38, '그리고 여기가 진짜 예뻐요', '예뻐요', '예쁘다', 'It is pretty');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('55y9TD0inaQ', '[쟈니] 미국식 일본어ㅋㅋㅋㅋㅋㅋ', 'NCT 127', 'normal', 9, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 27, 31, '그냥 정말 그렇게 읽었어요', '읽었어요', '읽다', 'I read');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1G4zcKmKrdg', 'NCT WISH 유우시, 탈색으로 머리 개털되자 생긴 버릇 #kpop #유우시 #yushi #nctwish #아이돌 #엔시티위시', 'NCT 127', 'normal', 10, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6, 12, '한동안 머릿결 상태가 꽤 안좋았다', '좋았다', '좋다', 'It was good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-KTCzafbG5E', '[시즈니 브이로그]  상처만 남은 NCT 127 엘르 재팬 (Elle Japan) 5월 특별판 언박싱 ・ 인터뷰 해석 (사랑하는 파 vs 사랑받는 파) ・ 사랑은 자해다', 'NCT 127', 'normal', 11, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2, 8, '0 5월호 언박싱 해보도록 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('yGgWiJfEdqE', '[V LIVE] NCT 127 - 이모님 듣고 계세요⁉️ 저희 1등했어요❗️ (NCT 127’s 3rd win)', 'NCT 127', 'normal', 12, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 29, 34, '즈니와 우리의 꽃 1등 축하해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('lLHmzbhQLVI', '[ENG/KR] MARK''s Day🐯💚 | The Firstfruit | 1999 | 한영자막 | VLOG', 'NCT 127', 'normal', 13, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 60, 65, '가 요즘 번역을 많이 하고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('A3fdzKIROlI', 'NCT 127 ‘Ay-Yo’ COMBACK LIVE (자막)', 'NCT 127', 'normal', 14, 74.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 74.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22, 25, '가장 기억에 남는 도시 또 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3syflXnjY1w', 'D[●REC]TOR : 지성 🎥 in BANGKOK⎜NCT DREAM 투어 비하인드 (태국어 자막)', 'NCT DREAM', 'normal', 1, 25.642857142857142, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 25.642857142857142, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 14, '이제 하러 공항으로 가고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('UzidSHLw25o', '드림쇼2 올콘 올먹장 브이로그 | 재민아 미안하다 이미 첫콘 끝나고 만취다 | 드림은 날 울려', 'NCT DREAM', 'normal', 2, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 132, 136, '기다려봐, 내가 잘해볼게', '볼게', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vhCJaUUHGl8', '[vlog]요드림! 시즈니는 앨범을 찢어!|엔시티드림 7명 모두 스크랩하기|글리치모드 비트박스 앨범스크랩 NCT Dream Album Scraping', 'NCT DREAM', 'normal', 3, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8, 15, '범 스크랩을 다시 해보려고 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9gArquoEyy4', '위시선배님 안녕하세요 신인가수 해찬입니다 #HAECHAN #CRZY #HAECHAN_CRZY #NCT #NCT127 #NCTDREAM #NCTWISH', 'NCT DREAM', 'normal', 4, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 39.0, is_locked = true, is_published = true
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
  VALUES ('V__F7mgU2GI', '영화 속을 걷는 기분 (งᐛ)ว (งᐖ)ว 𓈒𓏸⋆꙳ | 映画の中を歩いている気分🎞️🍃 | LOG in WISH #HONGKONG', 'NCT DREAM', 'normal', 5, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '여기, 석진아 여기로 갔어', '갔어', '가다', 'I went');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('55y9TD0inaQ', '[쟈니] 미국식 일본어ㅋㅋㅋㅋㅋㅋ', 'NCT DREAM', 'normal', 6, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 27, 31, '그냥 정말 그렇게 읽었어요', '읽었어요', '읽다', 'I read');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('H_x5wvDG_bw', '일본멤버들이 지어주는 한국식 이름 #nctwish', 'NCT DREAM', 'normal', 7, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 7, 10, '한국어 할 수 있어요', '할 수 있어요', '', 'I can do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1G4zcKmKrdg', 'NCT WISH 유우시, 탈색으로 머리 개털되자 생긴 버릇 #kpop #유우시 #yushi #nctwish #아이돌 #엔시티위시', 'NCT DREAM', 'normal', 8, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6, 12, '한동안 머릿결 상태가 꽤 안좋았다', '좋았다', '좋다', 'It was good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_k6__K-b37I', '시즈니 브이로그 준등기,택배/비트박스 md/슬로건/드림쇼2 후기', 'NCT DREAM', 'normal', 9, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 6, '림쇼 티켓이 와서 한번 뜯어볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('WiZlzKDucEI', '[ENG/JP] 티나게 쌍수 성형해서 논란된 SM 남자 아이돌 엔시티 지성 #남돌 #얼굴 #nct #チソン', 'NCT DREAM', 'normal', 10, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15, 19, '여러분들의 생각은 어떠신가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('jdHaRj-vuEM', '[vlog]새싹즈니 인사 올립니다|엔시티드림 팝업스토어 방문기|팝업 엠디 리뷰 NCT DREAM Pop-up store review', 'NCT DREAM', 'normal', 11, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 45, 50, '제가 글리치모드 악기를 다녀왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GZpXUrFHkeE', '🍬 I''ll always be by your side, right? I will | Season Vlog | NCT DREAM Candy Album Kang • Photobo...', 'NCT DREAM', 'normal', 12, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6, 10, '두 개랑 시민이는 아예 안 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ysgspGsHVxE', '일본아이돌 대타 뛴 르세라핌 홍은채', 'TXT', 'normal', 1, 27.545454545454547, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 27.545454545454547, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 11, '키웽 파트를 대신 화제가 됐다', '됐다', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('6TR0vyfHNs0', '😎잘나가는 언니들은 다 쓴다는 레트로 입체 자막 효과(3D TEXT) 만들기 / 프리미어프로 자막 강좌 (feat. 걍밍경님 브이로그 스타일)', 'TXT', 'normal', 2, 39.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 39.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 60, 66, '이기 위해서 100%로 맞춰줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('80Xuu2EULk4', 'Mastering the base of the #capcut in 5 minutes - beginning', 'TXT', 'normal', 3, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 13, 19, '보거나 바로 가져올 수도 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('u4OcrKqCDjM', '미군한테 절대 깝치면 안되는 이유ㄷㄷ', 'TXT', 'normal', 4, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 13, 19, '게 말해도 말길을 못 알아 먹자', '먹자', '먹다', 'Let''s eat');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('uKGc4xPWvpg', 'AI 내 목소리는 브루 어플로 만들 수 있어요', 'TXT', 'normal', 5, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9, 13, 'AI 리지팡 목소리 어떤가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('qlm9honfqLo', '100만유튜버 편집자가 사용하는 프리미어프로 자막작업 방법 🔥꿀팁 + 무료폰트 + 빠른작업', 'TXT', 'normal', 6, 46.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 46.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 66, 69, '이 외에 굳이 추가하자', '하자', '하다', 'Let''s do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3Gzq_LBLjNw', '🎬 따라가는 자막 무료버전 편집법 #캡컷', 'TXT', 'normal', 7, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 5, '따라다니는 거 본 적 있으신가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('jh2TQpQqVUs', 'China''s TikTok factory', 'TXT', 'normal', 8, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 16, 21, '나 찍어서 틱톡에 올려놓고 대박', '대박', '', 'Amazing!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('BHWobGfaRY0', '브이로그 스타일 인스타 스토리 꾸미기', 'TXT', 'normal', 9, 49.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 49.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6, 12, '으로 쭉 내리면 레이아웃이 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('lntR8qvAap4', '2 ways to add English subtitles for foreign subscribers on YouTube /ft.YouTube, Premier Pro', 'TXT', 'normal', 10, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 5, '방법 두 가지를 알아보도록 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8JFg6Mn7d90', '자막 쓸 때, 이 선 모르면 안 돼요! 자막 배치 가이드라인 알려드림', 'TXT', 'normal', 11, 55.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 55.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 172, 177, '보면 안쪽 라인에 벗어나고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QeZdNO95fbg', '영상 편집자가 자주쓰는 자막용 폰트추천 3가지! #영상편집 #영상제작', 'TXT', 'normal', 12, 61.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 61.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15, 19, '포인트를 찾는다면 강력 추천해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('kReHwAcNkDA', '영상 자막넣기가 이렇게 쉬웠다고요? 편집 어플 자막 치트기 #릴스꿀팁 #캡컷 #자동자막 #편집어플 #무료편집어플', 'TXT', 'normal', 13, 62.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 62.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 16, 20, '달랑 나누기를 한 번 할 수 있어요', '할 수 있어요', '', 'I can do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pNp026R2h4s', '[엔하이픈/제이] 내 얼굴 봐봐 생활애교가 많을 것 같이 생기진 않았잖아 (풀자막/편집)', 'ENHYPEN', 'normal', 1, 32.5, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 32.5, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22, 27, '네 밥 먹고 바로 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('IfF6ElTZ_zk', '［EN-Log］ENHYPEN💋幕張 Meet & Greet ♡ Vlog［엔진로그/엔하이픈/한국어/자막］', 'ENHYPEN', 'normal', 2, 32.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 32.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 21, 26, '왜냐하면 여기에 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Q9Dz9zZhApg', '유학생 엔진의 영통이벤트 브이로그( 브이로그,, 메인)', 'ENHYPEN', 'normal', 3, 32.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 32.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 5, '� 분들이ここ 아끼라 대박', '대박', '', 'Amazing!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('E83qLtRFsY8', 'Vlog l 엔하이픈과 함께 한 하루.. 🪄 포멜라토 런칭 행사ㅣ그리고 급 떠나는 한국.. ✈️', 'ENHYPEN', 'normal', 4, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 86, 94, ', 최지우, 이보양이 오고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('rTKcERD1Vms', '(Sub) [엔진로그] 연말🎄✨', 'ENHYPEN', 'normal', 5, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 30, 34, '이 노래 안 들어봤어', '봤어', '보다', 'I saw');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XSkE6-U79CA', '[엔하이픈/정원] 아 이런 거 좀 오글거리는데 (풀자막/편집)', 'ENHYPEN', 'normal', 6, 39.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 39.714285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 33, 40, '가 뭐 아무튼 브이로그가 나왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('eWFvz8O3GVk', '［EN-Log］ENHYPEN❤️‍🔥Spotify & POPUP🐹🦮［엔진로그/한국어/자막］', 'ENHYPEN', 'normal', 7, 39.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 39.714285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22, 29, '포티파에 가서 엔하이픈을 가봤어요', '봤어요', '보다', 'I saw/watched');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Pm9JK0Z4uQQ', '[EN-TER 키] 쏘가리즈가 EN-log 자막을 쓰고 있어요 -ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 8, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9, 12, '아 이거 무조건 써요', '써요', '쓰다', 'I write');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('2tzd_-I1eTc', '[EN-loG] 득음 가능🙀 세 남자의 풀빌라 여행 - ENHYPEN(엔하이픈)', 'ENHYPEN', 'normal', 9, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 39, 42, '형 귀 찍고 있었어요', '있었어요', '있다', 'There was / I had');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('dVhIZmL5b5E', '［EN-Log］WALK THE LINE in 埼玉❤️［엔진로그/엔하이픈/한국어/자막］', 'ENHYPEN', 'normal', 10, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18, 23, '예! 지금서부터 특전으로 갈게요', '갈게요', '가다', 'I will go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('efIu4hOBkOQ', '［EN-Log］ENHYPEN🇯🇵STADIUM❤️‍🔥SUMMER EDITION🌻🐬［엔하이픈/엔진로그/한국어/자막］', 'ENHYPEN', 'normal', 11, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 3, 7, '타이 베이브 기다리고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QWXMbj5WX2s', '[엔하이픈/정원] 훌륭한 남편을 두셨네… (풀자막/편집)', 'ENHYPEN', 'normal', 12, 53.66666666666667, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 53.66666666666667, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4, 7, '지금은 점심을 먹고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('6dY1ba9eKoc', '[엔하이픈/정원] 저 질투 많아요 (풀자막/편집)', 'ENHYPEN', 'normal', 13, 55.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 55.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 39, 44, '왔는데 내가 한 끼밖에 못 먹었어', '먹었어', '먹다', 'I ate');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hajJm-CBWvc', '[ENG/JPN] First time revealing ENHYPEN''s dorm full of personality! #ENHYPEN', 'ENHYPEN', 'normal', 14, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '나 너무 우울해서 머리 염색했어', '했어', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vh4iAe3uy3o', '[EN-TER 키] EN-LoG (feat. Hanlimz) 자막 쓰기 - ENHYPEN (엔하이픈)', 'ENHYPEN', 'normal', 15, 58.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 58.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 20, 24, '쓰실거 있으면 알려주세요 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LZByU32sjXQ', '[FIM-LOG] 윤진 브이로그 #4 l 제니퍼의 알찬 일상(모닝 루틴🌱☕️ & ''I ≠ DOLL'' 제작기📝)과 Get ready with me💄', 'LE SSERAFIM', 'normal', 1, 21.666666666666668, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 21.666666666666668, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 38, 44, '헤어크립을 써볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-gxNRpbBSlA', '[FIM-LOG] 사쿠라 브이로그 #2 | 꾸라의 소중한 일상을 담은 VLOG📓🌸', 'LE SSERAFIM', 'normal', 2, 21.666666666666668, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 21.666666666666668, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 7, 13, '여기 김치찌개 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-p4rH3ayKj0', '[FIM-LOG] 사쿠라 브이로그 #3 l 많이 기다렸쬬? 꾸라’s 일상 브이로그 컴백😼', 'LE SSERAFIM', 'normal', 3, 23.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 23.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 15, '오늘은 일찍 끝나서 퇴근했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('zE7dsVf_ksc', '[FIM-LOG] 카즈하 브이로그 l 스트레칭 도구 11가지 소개, 꽃잎즈 먹방🧘🏻‍♀️🌿🌸', 'LE SSERAFIM', 'normal', 4, 25.25, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 25.25, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 32, 48, '알아 찾아가는 그런 촬영을 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ysgspGsHVxE', '일본아이돌 대타 뛴 르세라핌 홍은채', 'LE SSERAFIM', 'normal', 5, 28.954545454545453, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 28.954545454545453, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 11, '의 키웅파트를 대신 화제가 됐다', '됐다', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GbSE2_pkp6Y', '[FIM-LOG] 채원이의 브이로그 l 바쁘다 바빠 부지런히 움직이는 채채 🏃🏻‍♀️🎼', 'LE SSERAFIM', 'normal', 6, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6, 10, '저는 이제 퇴근해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('f9zE0uDtg4w', '[FIM-LOG] UNIT #1 l 푸린즈의 막걸리 제조 체험🍶& 기분 전환 데이뚜🌿', 'LE SSERAFIM', 'normal', 7, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 36, 41, '막걸리 만드는 거 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('EZM1rRZyXd0', '일하기 싫은 사쿠라 인턴, 브이로그만 찍는 카즈하 사원 ㅋㅋ', 'LE SSERAFIM', 'normal', 8, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 28, 32, '가방 하나 샀나봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1nk-c9oeOBU', '[FIM-LOG] in JAPAN #2 🎏 l 기분 전환 쇼핑🕶️ 🛍️ + 새해 맞이🎊 = ✨행복 만땅✨ 일본 브이로그 시즌2', 'LE SSERAFIM', 'normal', 9, 30.363636363636363, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 30.363636363636363, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10, 21, '으로 밤 비행기라는 걸 다 봤어요', '봤어요', '보다', 'I saw/watched');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_5uUvXAgEts', '[FIM-LOG] 은채 브이로그 #2 | 귀염뽀짝 사랑둥이 만채의 하루하루🤗❣️', 'LE SSERAFIM', 'normal', 10, 32.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 32.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14, 20, '지금은 회사에 출근을 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('W2Z7VP7nw2c', '[FIM-LOG] ✨정규 1집✨ 자켓 촬영기 l 새로운 친구와 함께🐴 UNFORGIVEN 그 잡채인 우리 어떤데', 'LE SSERAFIM', 'normal', 11, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 16, 20, '검정색으로 덮어야 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('yFVsXoaTCXQ', '[FIM-LOG] 채원 브이로그 #4 l 우당탕탕 천방지축 채채의 일상 🐆💨 | KCON까지 접수한 아기 치타 🔥', 'LE SSERAFIM', 'normal', 12, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 16, 20, '어머 채원씨 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('l6zvUQm3vT8', '[FIM-LOG] 윤진 브이로그 #3 l 윤진이의 꾸밈없는 일상, 100일 비하인드🎵', 'LE SSERAFIM', 'normal', 13, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 26, 30, '매운 거 매운 거 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('JfCGhGJiuzI', '[FIM-LOG] in JAPAN #1🎏 l 돌아왔다 핌둥이들의 일본 브이로그 시즌2 (스포 : 🍱✈️🎤🏠🥔)', 'LE SSERAFIM', 'normal', 14, 36.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 36.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2, 10, '일본 브이로그 시작해보도록 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('eStOZa52HqA', '[FIM-LOG] 채원 브이로그 #3 l 채채는 열일 중❤️‍🔥 | 스케줄🎤, 캔들 DIY🕯️🍓, 브이로그 자막 작업👩🏻‍💻', 'LE SSERAFIM', 'normal', 15, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23, 30, '드 디즈니 노래 정말 정말 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hgtGdlVLC-A', '채원이만 알아들은 꾸라 발음', 'LE SSERAFIM', 'normal', 16, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15, 19, '아니 약 먹어야지라고 했어', '했어', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('J7DLsgUrC3Y', '[르세라핌] 도도독이 일상이 된 김채원', 'LE SSERAFIM', 'normal', 17, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 7, 10, '여기서 문장이 끝났어', '끝났어', '끝나다', 'It is finished');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('IATnI2lUIQU', '[르세라핌] 거울 속 자기 얼굴에 빠져든다는 김채원 ㅋㅋㅋ', 'LE SSERAFIM', 'normal', 18, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 5, 10, '화장실에서 거울 보고 연습해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('u1R-UILflT8', '[FIM-LOG] 윤진 브이로그 #5 l 샐러드파냐🥗 밥파냐🍚 그것이 문제로다 & 냉장고에서 사라진 아이스크림의 비밀🍦🤫', 'LE SSERAFIM', 'normal', 19, 46.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 46.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14, 20, '리 치킨 오면 그것도 같이 먹자', '먹자', '먹다', 'Let''s eat');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('u4p_QwVvjP0', 'LE SSERAFIM Reaction with Gio [FIM-LOG] 채원 브이로그 #3 l 채채는 열일 중❤️‍🔥 | 스케줄🎤, 캔들 DIY🕯️🍓, 브이로그 자막 작업👩🏻‍💻', 'LE SSERAFIM', 'normal', 20, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 43, 48, '부르기 위해서 김밥을 먹고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ipF5UfyUCQg', '허윤진 미국이름이 제니퍼인 충격적인 이유.. #르세라핌 #lesserafim #허윤진', 'LE SSERAFIM', 'normal', 21, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '비를 accordingly 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GtGufZVWwo8', '르세라핌 핌로그의 자막을 르세라핌이 직접 쓰는지 궁금했던 아이브 이서🤍 #이서 #리즈 #은채 #은채의스타일기 출처: 은채의 스타일기 아이브 리즈, 이서편💓', 'LE SSERAFIM', 'normal', 22, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 22, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '데 그거 자막 진짜 자기가 써요', '써요', '쓰다', 'I write');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GMMiz3eu9jc', '[FIM-LOG] 채원 브이로그 #2 | 끝난 줄 알았지? 돌아온 채채의 브이로그😘💕', 'LE SSERAFIM', 'normal', 23, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 23, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 140, 144, '우리 멤버들을 많이 찍고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-mFBapMzot0', '[FIM-LOG] 카즈하 브이로그 #3 l What’s in my 🧳 w.꾸라 언니, 보석 십자수 도전💎 and 소소한 기록들🎞', 'LE SSERAFIM', 'normal', 24, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 24, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4, 8, '아 저 자랑하고 싶은 거 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('OoqSvVQZ6yw', '채령&류진(ITZY CHAERYUNG&RYUJIN) 한림예고 졸업식 포토월 ｜Graduation ceremony', 'ITZY', 'normal', 1, 16.5, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 16.5, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 10, '이제 왼쪽부터 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('e9WrByhTuBY', '[SPAIN VLOG] 마드리드 투어, 케이팝축제, 하비아에서 요트타기🚤ㅣMadrid Tour, Kpop Festival, Xàbiaㅣ(자막, Subtitle ⭕️) EP03', 'ITZY', 'normal', 2, 19.153846153846153, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 19.153846153846153, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 26, '오늘은 시내를 나가기로 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('FS04cBlie8k', '오~소리나는 winwincrew ITZY wannabe V-log 윈윈크루 있지 워너비 브이로그', 'ITZY', 'normal', 3, 27.666666666666668, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 27.666666666666668, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 82, 94, '근이 이제 또 대만으로 돌아가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0QEkhECKuK4', 'My real Korean ~ vlog in Korean', 'ITZY', 'normal', 4, 27.846153846153847, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 27.846153846153847, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23, 36, '안녕하세요. 여기에 소파가 있었어요', '있었어요', '있다', 'There was / I had');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3S1mDK5up_I', 'ITZY가 블루룸에 있지! 1편 | ITZY 트위터 블루룸 하이라이트', 'ITZY', 'normal', 5, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 67, 71, '그렇게 눈치없이 하자', '하자', '하다', 'Let''s do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('mMwGEv6Sibs', '쉽게 써먹을 수 있는 ITZY 달라달라 MV 영상효과 5가지! (1부)', 'ITZY', 'normal', 6, 34.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 34.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 26, 35, '과만 골라서 한번 소개를 해볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('JfCGhGJiuzI', '[FIM-LOG] in JAPAN #1🎏 l 돌아왔다 핌둥이들의 일본 브이로그 시즌2 (스포 : 🍱✈️🎤🏠🥔)', 'ITZY', 'normal', 7, 36.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 36.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2, 10, '일본 브이로그 시작해보도록 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('UNWvGdtuwGA', '[한/EN 자막] 한국 라면 13개 맛보기! | Livia 리비아', 'ITZY', 'normal', 8, 39.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 39.714285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 11, 18, '도 있고 본 적 없는 것도 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('e_tjKjTflMA', 'BOYSTORY가 연습생 시절 아이스크림 몰래 먹다 걸렸다고? YEJI가 말을 해. #HEXINLONG #허씬롱 #ホーシンロン #贺鑫隆  #BOYS2PLANET #보이즈2플래닛', 'ITZY', 'normal', 9, 41.642857142857146, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 41.642857142857146, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 29, 36, '들끼리의 뭔가 톡방이 따로 있었어요', '있었어요', '있다', 'There was / I had');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hS991vxGvD8', 'ITZY 예지 생일 투어!', 'ITZY', 'normal', 10, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 31, 37, '수 있는 날이 좋다고 생각했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('j2H3qk0ZN5Q', 'LE SSERAFIM’s HUH YUNJIN on Her Skin Care Routine & Eyelash Curling Trick | Beauty Secrets | Vogue', 'ITZY', 'normal', 11, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14, 20, '저는 이 클리어 클립을 사용해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('w7PqSUE2GiE', '[한글자막/번역] 천신웨이 V-LOG CutㅣKep1er 케플러 沈小婷 샤오팅', 'ITZY', 'normal', 12, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 45.0, is_locked = true, is_published = true
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
  VALUES ('6H3QzD3Afeg', '요즘 핫한 뮤직비디오 ITZY-달라달라 영상 효과 여기에 다 있지! 2부 [애프터이펙트/프리미어 효과]', 'ITZY', 'normal', 13, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 81, 85, '컵 홀더의 색깔을 바꿔볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('u4p_QwVvjP0', 'LE SSERAFIM Reaction with Gio [FIM-LOG] 채원 브이로그 #3 l 채채는 열일 중❤️‍🔥 | 스케줄🎤, 캔들 DIY🕯️🍓, 브이로그 자막 작업👩🏻‍💻', 'ITZY', 'normal', 14, 46.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 46.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2, 5, '이제 채채와 함께 놀자', '놀자', '놀다', 'Let''s play');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9gDhl3m3xKs', 'vlog 대학생 일상 브이로그🖤💗 | BLACKPINK 온라인콘서트, ITZY 덕질, 시간표 짜기, 천개의 파랑 독서하고 필사', 'ITZY', 'normal', 15, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 148, 152, '도 지금 고민을 좀 해보고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('rZPwny_D4HA', '[SUB] 거 짓 말...캣츠아이 K-고딩 맞잖아요? | 돌들의침묵 | 캣츠아이(KATSEYE) ''Gnarly''', 'ITZY', 'normal', 16, 74.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 74.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 73, 76, 'lma 빅 Nasıl 하고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XClEPDcRck8', 'ITZY chaeryeong and lia birthday tour! - not shy behind | ITZY 채령 생일 광고 카페 브이로그', 'ITZY', 'normal', 17, 115.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 115.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 2, 'IC REVIEW מאוד 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-3hQ4YU6BAw', '【한국어 자막/日本語字幕/ENG SUB】Vapp 20210222【TWICE VLIVE】', 'TWICE', 'normal', 1, 19.727272727272727, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 19.727272727272727, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 11, '아직 한 명도 안 들어왔어', '왔어', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QFLJ0CCmB1A', '자막 겹칠 때 해결법', 'TWICE', 'normal', 2, 37.388888888888886, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 37.388888888888886, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4, 13, '분은 안보이는데 확인해보니 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('rZPwny_D4HA', '[SUB] 거 짓 말...캣츠아이 K-고딩 맞잖아요? | 돌들의침묵 | 캣츠아이(KATSEYE) ''Gnarly''', 'TWICE', 'normal', 3, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 77, 81, '제가 질문을 하고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1koZHiS6PvI', '[트와이스] 일본에 한국 문화(?)를 전파하는 나연', 'TWICE', 'normal', 4, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4, 10, '수산 한국의 VTR을 많이 봤어요', '봤어요', '보다', 'I saw/watched');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7O9EmhFta3s', '아직까지도 ‘엄마 샤넬‘ 입는다는 제니', 'TWICE', 'normal', 5, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 19, 24, '엄마가 이 머리 꼭 하라고 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9dB_ckcnPIA', '[(여자)아이들] 중국팬들에게 한국말로 영상편지 보내는 중국출신 월드스타 우기', 'G-IDLE', 'normal', 1, 30.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 30.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8, 12, '좀 올라가고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('WPwwmjTm9nk', '[자막 포함] 250923 i-dle의 여름 팝업 스토어! | 빼빼로 게임, 풍선 터뜨리기 게임, 요리', 'G-IDLE', 'normal', 2, 30.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 30.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15, 25, '슈스가 오픈런 한다는 매점 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8O4Tukhim0c', '아빠 아들 송우기', 'G-IDLE', 'normal', 3, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8, 12, '저한테 연락이 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('P50KkELDQ4c', '[한글자막] 민니 바자 화보 인터뷰(의역있음) BAZAAR | (여자)아이들 민니', 'G-IDLE', 'normal', 4, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 32, 36, '1년이 넘게 안 됐어', '됐어', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ey-sq9FaYuA', '태국 금수저(?) 민니 아빠가 충격받은 ’큐브 숙소 상태‘', 'G-IDLE', 'normal', 5, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 3, 7, '우리 아빠가 같이 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('2sFnGME_iGQ', '(G)I-DLE - Minnie''s VLOG : Schedules in Bangkok Part 2 🙌', 'G-IDLE', 'normal', 6, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 68, 72, '한국어 까먹었네 잠깐만요', '잠깐만요', '', 'Wait a moment');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1OBP-GS7NA8', '민니 하퍼스 바자 인터뷰 (한국어 자막)', 'G-IDLE', 'normal', 7, 39.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 39.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 32, 38, '. 아이돌의 아이돌은 누구인가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('krzXdipQK2o', '(G)I-DLE - Minnie''s VLOG : Bangkok performance Part 3 🙌 (ENG)', 'G-IDLE', 'normal', 8, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 5, 10, '제가 오랜만에 또 스케줄 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vCQydTgLDUE', '(여자)아이들 뮤비 따라하기! 필모라로 잡지 자막 만드는 방법 | Wondershare Filmora', 'G-IDLE', 'normal', 9, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 86, 91, '크기를 잘 조정해서 배치해 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('zSHbM1I31gY', '221024 나홀로 JYP🏡   다시 돌아온 소개팅 녀 [NMIXX VLIVE]', 'NMIXX', 'normal', 1, 19.285714285714285, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 19.285714285714285, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 11, 18, '오이? 누구야 누구야', '누구야', '', 'Who is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('eahz_-v2oMk', '(SUB) 짱믹스와 함께 한 여름 밤의 개그 파티 🎉 [키코의 스몰룸] EP.09 #Kik5o #NMIXX (ENG, JPN,TUR)', 'NMIXX', 'normal', 2, 27.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 27.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4, 9, '와 이거 편곡이 대박', '대박', '', 'Amazing!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('nj9BphJffZw', '먹방브이로그(자막X) / 프링글스 한통 다 먹어본적있어?? 응.', 'NMIXX', 'normal', 3, 27.545454545454547, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 27.545454545454547, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 170, 181, '오늘도 시청해주셔서 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QzqEdmaPgwU', '[업텐션/규진] 브이로그  편집본', 'NMIXX', 'normal', 4, 28.833333333333332, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 28.833333333333332, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 6, '자 이걸 비하면 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Is433I9EgPE', '완전 중앙자리 앉아서  엔믹스 실물 보고 옴 (엔믹스 단독 콘서트)', 'NMIXX', 'normal', 5, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2, 6, '저 플로어석으로 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('D8w2dgXOD2Y', '엔믹스 ''O.O'' 뮤비를 보는 남녀 댄서의 반응 차이 | NMIXX ‘O.O'' MV REACTION', 'NMIXX', 'normal', 6, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 26, 30, '뭐죠? 바다 소리인가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-hfL_gXMW_g', 'NMIXX(엔믹스) "Blue Valentine" 뮤직비디오 리액션 | 첫 정규 앨범 "Blue Valentine"', 'NMIXX', 'normal', 7, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 43, 47, '얼른 보자 얼른 보자', '보자', '보다', 'Let''s see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8ktFkBSSwsg', '[청소년KPOP] NMIXX(엔믹스) - ''DICE'' │ 초중등댄스 │ 아이돌댄스 │ 브로드 댄스 학원', 'NMIXX', 'normal', 8, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 51, 55, '모든 걸 펼쳐도 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ubkN8guPF0Q', '민이 그림에 대한 윤아의 반응! [펀스타우랑 스타들의 최고 레시피/ENG/2020.06.09]', 'NMIXX', 'normal', 9, 34.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 34.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18, 21, '잠깐만, 내가 할게', '할게', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('6kl9YTa_QH0', '{다이브로그#2} 거지다이브의 다이브로그☃️(자막 조금!)| ive | leeseo | 반택깡 | 택배깡 | 바인더 정리 | 다이브로그 | 다이브 |  아이팅 | 잇프 | 포카 |', 'NMIXX', 'normal', 10, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 158, 162, '이제 어안처 어디갔어요', '갔어요', '가다', 'I went');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('WHoF7B72t5U', 'NMIXX Reaction with Gio [NMIXX] NMIXX In Paris✨ #MIXXTREAM | 파리에서 감성 사진 찍기, 크루즈 타보기📸🛳', 'NMIXX', 'normal', 11, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 33, 36, '에플리타 밑에 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('EI4Be-JUN7Y', '[My Log] Less than a week until the comeback? 🙊 | Jun Deung-gi Kang | aespa | Calf | Fan Log | mylog', 'NMIXX', 'normal', 12, 42.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 42.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23, 28, '키링랜덤인데 이게 왔네? 대박', '대박', '', 'Amazing!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('MTkU9jrbLXI', 'blemishes, blackheads, pimples. Perfect cover pink makeup (TWICE''s under eye fat to cover troubles)', 'NMIXX', 'normal', 13, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 26, 31, '유튜브에서 봐주셔서 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('u4p_QwVvjP0', 'LE SSERAFIM Reaction with Gio [FIM-LOG] 채원 브이로그 #3 l 채채는 열일 중❤️‍🔥 | 스케줄🎤, 캔들 DIY🕯️🍓, 브이로그 자막 작업👩🏻‍💻', 'NMIXX', 'normal', 14, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 27, 32, '새 디즈니 노래 정말 정말 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ZrfnxJN4Y8M', 'YG 걸그룹 ''베이비몬스터'', 11월 데뷔…블랙핑크 이후 7년만 / SBS / 굿모닝연예', 'BABYMONSTER', 'normal', 1, 30.071428571428573, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 30.071428571428573, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 16, 23, '늦어졌는데요. YG는 최고', '최고', '', 'The best!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('C6i1yTPu9tM', '케이팝 데몬 헌터스 코스프레 가장잘한 아이돌은?', 'BABYMONSTER', 'normal', 2, 30.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 30.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 13, 19, '싱크가 너무 잘 맞아 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('MhJ4cMuvleg', 'T 만랩 vs F만랩(베이비몬스터 아현 vs 라미)#베몬#베이비몬스터#아현#라미', 'BABYMONSTER', 'normal', 3, 32.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 32.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6, 12, '왜 왜 왜 왜 왜 왜 왜 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('HJnf1men6c4', '[ENG] 3YE(써드아이) | Fairy Tale [ Barcelona : Third page of Europe ]', 'BABYMONSTER', 'normal', 4, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6, 10, '저희 바르셀로나 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('E_L3H5iy4CY', '베이비몬스터 블랙핑크 싱가포르 커버 - 헬로몬스터즈 월드투어 20250517', 'BABYMONSTER', 'normal', 5, 35.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 35.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 30, 35, '이 시력 꿈꾸기는 걸 가자', '가자', '가다', 'Let''s go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('W2Z7VP7nw2c', '[FIM-LOG] ✨정규 1집✨ 자켓 촬영기 l 새로운 친구와 함께🐴 UNFORGIVEN 그 잡채인 우리 어떤데', 'BABYMONSTER', 'normal', 6, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 16, 20, '검정색으로 덮어야 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PyqODOyJW2E', '일본 출신이 의심되는 아사 #베이비몬스터 #babymonster', 'BABYMONSTER', 'normal', 7, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 5, 9, '음.. 그거 좀 생각해볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GgLhsTEpwP8', '‘방송에서 공개된’ 아현의 하루 식사량', 'BABYMONSTER', 'normal', 8, 42.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 42.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 3, '여돌들 중 누가 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1G4zcKmKrdg', 'NCT WISH 유우시, 탈색으로 머리 개털되자 생긴 버릇 #kpop #유우시 #yushi #nctwish #아이돌 #엔시티위시', 'BABYMONSTER', 'normal', 9, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6, 12, '한동안 머릿결 상태가 꽤 안좋았다', '좋았다', '좋다', 'It was good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5ihFB4ZCnFY', 'Rosé Cooks Kimchi Fried Rice Dinner | Now Serving | Vogue', 'BABYMONSTER', 'normal', 10, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 24, 30, 'T는 제 싱글 이름이 들어 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('u4p_QwVvjP0', 'LE SSERAFIM Reaction with Gio [FIM-LOG] 채원 브이로그 #3 l 채채는 열일 중❤️‍🔥 | 스케줄🎤, 캔들 DIY🕯️🍓, 브이로그 자막 작업👩🏻‍💻', 'BABYMONSTER', 'normal', 11, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 43, 48, '부르기 위해서 김밥을 먹고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('rEO1n89uyjM', '力強い歌声とスポンジのような取得力！！本当に中学生？！　【BABYMONSTER - Introducing RORA】Japanese Reaction', 'BABYMONSTER', 'normal', 12, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8, 13, '오늘은 로라의 소개 영상을 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('j2H3qk0ZN5Q', 'LE SSERAFIM’s HUH YUNJIN on Her Skin Care Routine & Eyelash Curling Trick | Beauty Secrets | Vogue', 'BABYMONSTER', 'normal', 13, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8, 12, '다 시irs에 있는 날이고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('U6KsOQSDeAc', '[ 원도어 브이로그 ] 20만원 어치 비공굿 발주깡 보실 분?· 자막 수다 주의 🤭🤭 · 보이넥스트도어 · 보넥도 비공굿 · 보넥도 랜박', 'BOYNEXTDOOR', 'normal', 1, 19.5, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 19.5, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 10, '발주한 거 한 번 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('f90Q6Chd0-Y', '메자메시테레비인터뷰 - 보이넥스트도어/Boynextdoor/보넥도/번역자막/고화질/20240312', 'BOYNEXTDOOR', 'normal', 2, 25.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 25.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22, 27, '오늘은 즐거워할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('OPStnSrDCrk', '[원도어 브이로그] 택배깡·보넥도·보이넥스트도어·윗치폼·덕질·포카', 'BOYNEXTDOOR', 'normal', 3, 27.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 27.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 37, 42, '이거는 비개봉인가봐요', '봐요', '보다', 'I see/watch');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hcK_2t0ew_E', '[원도어 브이로그 ONEDOOR VLOG]  보넥도 2주년 경축 ♥ 주최자의 하루~ BND 2nd DEBUT ANNIVERSARY ♥ 보이넥스트도어 • 원도어로그', 'BOYNEXTDOOR', 'normal', 4, 32.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 32.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 49, 54, '사장님이 운혀받았�Вы 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('83mutoKunfY', '【♥ONEDOOR VLOG♥】今更すぎるNo Genre SHOWCASE & POP UP 渡韓log🎸💜컴백쇼케이스랑 팝업 가는 원도어브이로그🫟', 'BOYNEXTDOOR', 'normal', 5, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 117, 121, '원해요 원해요 원해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pb9qkAb3zVM', '[원도어 브이로그] 포카가 너무 예뻐서 일단 총대 맡긴했는데 살면서 처음 맡아봐… | 럭드 • 포장 • 분철 • 보이넥스트도어 • 원도어로그 • the action • 탯프', 'BOYNEXTDOOR', 'normal', 6, 36.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 36.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10, 18, '와서 뮤직코리아꺼 먼저 뜯어볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('JPdyeLKQGqo', '[원도어 브이로그] 잠옷입고 편집없이 잔잔히 말하는 2026년 보넥도 시그깡｜수면영상 일지도...?', 'BOYNEXTDOOR', 'normal', 7, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 82, 89, '잘 넣어서 한 번 더 만들어볼게', '볼게', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('qBjIsMc9Urk', '[보넥도] 리우의 놀라운 링요일 🎵', 'BOYNEXTDOOR', 'normal', 8, 39.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 39.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 6, '? 듣고 싶은 노래가 있으신가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ibPMpsX-ka0', '🐈‍⬛ 네?제가한태산사랑녀라고요? | 걸넥도 브이로그 | 앨범깡 브이로그 | 보이넥스트도어 | 중복파티....', 'BOYNEXTDOOR', 'normal', 9, 41.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 41.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 49, 53, '여기 이 정도면 좋은데', '좋은데', '', 'It is good though');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9g5gcH0TqFU', 'ワンドアのオタクな1日①원도어한 하루【🇯🇵원도어브이로그】한국어자막◎', 'BOYNEXTDOOR', 'normal', 10, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 28, 34, '케이스가 너무 좋아서 구매했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YrQsey2CGqk', '【🚪일본원도어첫브이로그🚪】241214 BOYNEXTDOOR Knock on Vol.1 첫콘vlog/ 링프/원도어브이로그/한국어자막', 'BOYNEXTDOOR', 'normal', 11, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 58, 62, '이 장면을 보고 계신가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('tQHozGQpjhg', 'BEHINDOOR | 2024 MAMA AWARDS Behind The Scenes | EP.38 - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 12, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10, 15, '정도 일부분 많이 픽스가 됐어', '됐어', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('qNxlmrMl8_E', 'CAMCORDOOR | JAEHYUN & TAESAN & LEEHAN CSAT Day Vlog | Packing Lunchbox🍱 - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 13, 46.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 46.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25, 28, '애들이 대고 근데 자요', '자요', '자다', 'I sleep');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('tTHzZy5JBhI', '새벽부터 빡센 컴백 첫 주 아이돌의 갓생 | 엠카운트다운 첫방 브이로그 - BOYNEXTDOOR (보이넥스트도어)', 'BOYNEXTDOOR', 'normal', 14, 46.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 46.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 12, 18, '진짜 너무 많이 해주셔서 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('4-fIhuopboA', '아니 근데', 'BOYNEXTDOOR', 'normal', 15, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 21, 25, '평파는 돼요? 이렇게 지금가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vEAM8lny088', '𐙚 EP.5 원도어 브이로그 | 멤버쉽 추첨으로 펜스잡은 썰 푼다… | 두달 후에 올리는 뒷북 앙콘 브이로그 | 레전드 깁을 받은 사건 | BOYNEXTDOOR | 보이넥스트도어', 'BOYNEXTDOOR', 'normal', 16, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 93, 97, '먹을 것도 먹을 거 같아 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('k8lEDzY_XTk', '[원도어로그] Hollywood Action 활동 2주동안 따라다닌 ''걔''', 'BOYNEXTDOOR', 'normal', 17, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 40, 44, '기차도 졸려 자고 있었어 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('fOEPqzRe0sM', '[걸넥도로그] 친구 최애에게 편지를 대신 써봤다💌ㅣ걸넥도, 피스, 견주 모임ㅣ빠순이 브이로그①', 'BOYNEXTDOOR', 'normal', 18, 61.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 61.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 56, 60, '러면 고영 오빠한테 먼저 써줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xuSDScKsZ9E', 'BOYNEXTDOOR’s Message of Support for the 2026 CSAT💌', 'BOYNEXTDOOR', 'normal', 19, 62.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 62.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 41, 45, 'next door였습니다. 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('iLSxllssnOg', '[자막] 류쩨한테 한드 보라고 협박 문자 보낸 죠군 (ㅋㅋㅋㅋ)', 'TWS', 'normal', 1, 30.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 30.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 5, '조우씨는 뭐하고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pzf2nGmxIEg', '(jp/kr)42VLOG: 合同コンでTWSをみてきたとある春/ 또이보고왔또이 인 서스페', 'TWS', 'normal', 2, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 11, 15, '올림픽 공원 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('x49NkeAlQqg', '42VLOG:) 運に付かれてないオタク/ 투어스쇼케이스방문기록 / 마지막이라고 하지마 애기들 / 42로그', 'TWS', 'normal', 3, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 27, 31, '나 아이스크림 사줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('BGOfdeYQcCo', '42VLOG :みんなTWSが日本デビューしたよ！/1회당 200엔 인형뽑기 도전자/ 사이로그', 'TWS', 'normal', 4, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 60, 65, '이날이 정말 날씨가 좋았어요', '좋았어요', '좋다', 'It was good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('fkMq9YkJHkw', '보플 폭로전 시작💥 파이널 3분할부터 야릇한 스킨십까지🔞ㅣ동네스타K쇼 EP.23 한음 립우 동규 리즈하오 쉬에수런', 'TWS', 'normal', 5, 37.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 37.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9, 14, '임팩트를 강하게 담긴 참가자', '가자', '가다', 'Let''s go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YsWazOu-Jjg', 'JBL Wave 300 TWS PC에 페어링하는 방법', 'TWS', 'normal', 6, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 12, 19, '눌러서 블루투스를 입력해야 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_IkyThv2nrY', '[포트폴리오] (제품 소개 영상) - 스컬캔디 PUSH TWS', 'TWS', 'normal', 7, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 7, '은데 가격이 너무 부담되시는가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8rYxACyp8B4', '[42로그] 첫 쇼케 가자마자 3열이래?!•앨범깡• 익룡 출몰 주의📢 •최애잡이? 신유잡이?• 학교에서 하는 앨범깡•내가 S면 넌 나의 N이 되어줘', 'TWS', 'normal', 8, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 31, 35, '미친 신이 나가지고, 대박', '대박', '', 'Amazing!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('amoDdHYy1TE', '무선마이크 무브링크로 정착했습니다', 'TWS', 'normal', 9, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22, 26, '뜯어보질 못하고 있었어요', '있었어요', '있다', 'There was / I had');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('z5wuHjWSaYE', '[BOYS ll PLANET/3회 직캠] 허씬롱 HE XIN LONG ♬첫 만남은 계획대로 되지 않아 - TWS @1vs1 계급 배틀', 'TWS', 'normal', 10, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 91, 97, '염려 안 여친 너의 이름이 뭐야', '뭐야', '', 'What is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('v43cTBntbF8', '[투어스] 진짜 너무 불미스러운 멍삐즈 모음.zip', 'TWS', 'normal', 11, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 21, 25, '제가 룸임 큐브 진짜 잘해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gpEt7dEwRQU', '[24/7📹LOG] Shh! The Hyper Up-close VLOG👀 Exclusive for 42🤭| POV LOG | TWS', 'TWS', 'normal', 12, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9, 13, '신우형 방금 밥을 다 먹었어요', '먹었어요', '먹다', 'I ate');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LcGfixuPS_M', 'sub) 🎁 내가 나에게 주는 선물4ㅣ최고의 인생템 에어팟 프로•• [노이즈 캔슬링 신세계] 🤭❤︎', 'TWS', 'normal', 13, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15, 19, '늘 굉장한 인기를 받고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('qNxlmrMl8_E', 'CAMCORDOOR | JAEHYUN & TAESAN & LEEHAN CSAT Day Vlog | Packing Lunchbox🍱 - BOYNEXTDOOR (보이넥스트도어)', 'TWS', 'normal', 14, 54.83333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 54.83333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25, 28, '애들이 대고 있는데 자요', '자요', '자다', 'I sleep');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('hajJm-CBWvc', '[ENG/JPN] First time revealing ENHYPEN''s dorm full of personality! #ENHYPEN', 'TWS', 'normal', 15, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '나 너무 우울해서 머리 염색했어', '했어', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('67D-_tq7CN8', '제주도 다녀왔어요 | #프로미스나인 #이새롬', 'fromis_9', 'normal', 1, 26.857142857142858, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 26.857142857142858, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 14, '네 맞아요 저 제주도 갔다 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('VsgTh6Ru2WI', '메뉴 추천해줘 플로버', 'fromis_9', 'normal', 2, 27.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 27.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10, 15, '얼굴 보여주러 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('fR5EnaYkD-w', '중소기업의 회식문화는 어떨까? ㅣ 하남자 브이로그', 'fromis_9', 'normal', 3, 27.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 27.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8, 13, '근데 저 테이블은 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('wIDHFrcujpo', '덕질로그 | 안녕하세요 다꾸유튜버중에 스크랩유튜버 최쪼말이라고 합니다 | 스크랩 | 플로버로그 | fromis_9 ''Stay This Way'' Album | 최쪼말', 'fromis_9', 'normal', 4, 28.954545454545453, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 28.954545454545453, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 45, 56, '에 있는 이 새로운 일을 해줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YJ0KJ-R83j8', '프로미스나인 (fromis_9) - 지원&채영 두근두근 부산 투어 Part.2', 'fromis_9', 'normal', 5, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 58, 62, '자연스러움을 추구해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('qTwpvA-F3fo', '첫 자취 이사 브이로그 + 영상 편집 꿀팁?!🧐', 'fromis_9', 'normal', 6, 35.857142857142854, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 35.857142857142854, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 21, 28, '이렇게 따로 영상을 찍게 됐어', '됐어', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('e8-n8ayctE4', '단체 회식 나경 FOCUS 프로미스나인 이나경', 'fromis_9', 'normal', 7, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 91, 95, '간식으로 발매기 먹었어', '먹었어', '먹다', 'I ate');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('cbDX9QJtj7g', '[플로버로그] 본진이 월드투어가서 콘서트 할 때 부본진으로 바로 바람피는 사람 누구? 그건 바로 나 • 앨범깡 | 플로버 브이로그', 'fromis_9', 'normal', 8, 37.22222222222222, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 37.22222222222222, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10, 19, '배가 너무 커서 뜯어 주기 힘들었어요', '힘들었어요', '힘들다', 'It was hard');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7DEngUTTBpY', '''Chaewon Loves Macarons''', 'fromis_9', 'normal', 9, 37.388888888888886, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 37.388888888888886, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 17, 26, '렇게 돌돌 말아서 가져가면 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('BCZGSawO9Bg', 'I messed up...💩 Good food, meeting a fromis_9, the Queen''s palace & more! [Korea Vlog]', 'fromis_9', 'normal', 10, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '제육볶음 김밥을 사왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QpX5WVuDmsk', 'IZ*ONE (아이즈원) x fromis 9 (프로미스나인) - With Me With You 🌙 [2019.01.10]', 'fromis_9', 'normal', 11, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 5, 9, '잘한 요정들이 또 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('5CZPR9OtqQs', '프로미스나인 멤버별 발작버튼 - 백지헌편', 'fromis_9', 'normal', 12, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 8, 12, '저는 정말 열심히 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('q-WtiFYb5lQ', '프로미스나인 (fromis_9) - (Air) Drop The Beat', 'fromis_9', 'normal', 13, 39.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 39.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4, 10, '네 에어 드랍 더 비트 할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('2Df_d2GmPrU', '히나타님 10분간 WEGO 맘껏 코디 영상 한글자막 번역본 | 은밤', 'fromis_9', 'normal', 14, 39.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 39.714285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 3, 10, '에는 아직 기획을 안 듣고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('q7nGjuTBCY4', 'FROMIS_9 Chaeyoung VLIVE (2022.05.14)', 'fromis_9', 'normal', 15, 41.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 41.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 35, 39, '그러면 2부로 불러줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('qnCQaduBPZ0', '"색다른 기분이네욬ㅋㅋ" 프로미스나인(fromis_9) 이채영의 한림예고 졸업식(190212)', 'fromis_9', 'normal', 16, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 136, 142, '아침, 퇴근자인이었습니다. 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('m7GS2pn9_oA', '[플로버로그] 이번에도 여름 노래 기강 잡으시려고 짱미스나인 컴백 🍀  • 키노깡 • 송하영,백지헌 포카 안 나오면 죽음 뿐 ☠️ 사실 죽지 않음', 'fromis_9', 'normal', 17, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 13, 18, '알라딘에서 방금 택배가 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('4jAw3o2_czs', '올리브영에서 2시간 동안 쇼핑하고 온 이채영 백지헌  아이돌 뷰티템 싹다 공개!! 쿨톤 필수 시청', 'fromis_9', 'normal', 18, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 19, 24, '코덕 둘이 올리브영을 찾아왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('TCe0-Mag8dU', '(ENG) 03년생 현 고3 리얼한 9월 모의고사 풀이 현장.mp4 바로 옆에서 과목별 ASMR 쌔려주니까 집중력 MAX찍음ㅋㅋㅋㅋ / [문명특급 EP.212]', 'fromis_9', 'normal', 19, 49.83333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 49.83333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 13, 16, '미안해 지현 언니 미안해', '미안해', '미안하다', 'Sorry');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('RUI6o-rsEAw', '[CHANNEL_9] 프로미스나인 숙소 관찰일기 full ver [fromis_9]', 'fromis_9', 'normal', 20, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 33, 37, '보니까 시간이 엄청 빨리 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('o3Je6HVPKbk', '서공예인싸 백지헌의 겟레디 윗미 GRWM (프로미스나인)', 'fromis_9', 'normal', 21, 58.66666666666667, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 58.66666666666667, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 42, 45, '왜냐하면 저 메이크업 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('C_8cn2OCTvg', '(KR:cc)[ATINY VLOG] ATEEZのソウルコンに行った日| The Fellowship:Break The Wall | 에이티즈 콘서트 | 韓国vlog', 'ATEEZ', 'normal', 1, 25.307692307692307, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 25.307692307692307, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 115, 128, '오늘도 시청해주셔서 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('MY3iE5WOFxI', '[#티니로그] 에이티즈 콘서트 브이로그 | 240127 첫콘 | 감상 위주', 'ATEEZ', 'normal', 2, 27.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 27.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 165, 170, '여러분 지금까지 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ULAZUMt5Rxw', '[빠순로그] 앨범깡 도박 | 투문 • 위브 • 골드니스 • 스테이 • 에이티니 |', 'ATEEZ', 'normal', 3, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 69, 73, '야! 왜 이렇게 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('70XK83mg8Ks', '이거 걍 얘네 떠드는 영상 아니야? 아닌데요 뮤비리액션인데요 에이티즈 ''Don''t stop (돈스탑)'' 뮤비 리액션 (ATEEZ ''Don''t stop'' mv reaction)', 'ATEEZ', 'normal', 4, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2, 6, '1분 10초 봐보자', '보자', '보다', 'Let''s see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YoV7ZY_p_OQ', '[에이티니브이로그] 20221122 에이티즈 ATEEZ X OLIVE YOUNGㅣ플랫폼 앨범 언박싱ㅣ포카ㅣPLATFORM VER. ALBUM UNBOXINGㅣATINY VLOG', 'ATEEZ', 'normal', 5, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 54, 59, '그래서 양심이 있었어요', '있었어요', '있다', 'There was / I had');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('2HXRyf-8hQ8', '[에이티니브이로그] 20221119 에이티즈 ATEEZ X EVERLINE POP-UP STORE [ATINY ROOM]ㅣ에이티니룸ㅣ럭드ㅣ포카ㅣ트레카ㅣ팝업스토어ㅣATINY VLOG', 'ATEEZ', 'normal', 6, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25, 29, '봉토리 못 사러 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('m6J266Q5J6s', '[C.C.] STRAY KIDS & ATEEZ playing archery in 2022 Idol Star Championship #STRAYKIDS #ATEEZ', 'ATEEZ', 'normal', 7, 35.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 35.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 91, 96, '의자까지 들고 엄청 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('M2RKi0owXho', '(SUBS ESPAÑOL) Fragmento ATEEZ en el DOXLOG ep. 50 (Maddox log. 2022)', 'ATEEZ', 'normal', 8, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 37, 41, '오우스오스 많이 사랑해', '사랑해', '사랑하다', 'I love you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_GfKF5EUUcs', '에이티즈(ATEEZ) 선생님! 멤버들이 민기 따라해요!!', 'ATEEZ', 'normal', 9, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 27, 30, '민기야, 똑바로 하자', '하자', '하다', 'Let''s do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1Q1FpOAfrRc', '[티니로그_마르티니] 에이티즈 피버 에필로그 앨범 언박싱 • 준등기깡 | ATEEZ FEVER EPILOGUE ALBUM UNBOXING', 'ATEEZ', 'normal', 10, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 12, 16, '한나라에서 오늘 도착했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('2flVhiYXgag', '(ENG SUB) 에이티즈 피버 로드 6화 비하인드', 'ATEEZ', 'normal', 11, 43.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 43.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 36, 39, '오케이, 나 잘하는데', '잘하는데', '', 'You are good at it');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('MHK_COg14Gs', '[에이티니브이로그] 20230111 에이티즈 ATEEZ SPIN OFF : FROM THE WITNESSㅣ엠카 사녹ㅣ공방ㅣHALAZIAㅣUNBOXINGㅣATINY VLOGㅣ티니로그', 'ATEEZ', 'normal', 12, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 26, 30, '거기서만 13분 이상 썼어요', '썼어요', '쓰다', 'I wrote');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ERZz-RTT9zQ', '[에이티즈/ATEEZ]에이티즈의 유잼 고향소개', 'ATEEZ', 'normal', 13, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 7, 12, '명의 멤버들의 고향은 어디인가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('p_G5bCfxs-o', '[에이티니브이로그] 20221215 에이티즈 ATEEZ 2023 SEASON’S GREETINGSㅣ시즌그리팅 언박싱ㅣ시그ㅣUNBOXINGㅣATINY VLOGㅣ티니로그ㅣ덕질브이로그', 'ATEEZ', 'normal', 14, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10, 14, '랜덤일 거라는 것만 알고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('12pwwvKAKbw', '다이어트로 14kg 감량한 남돌 [에이티즈 우영/ ATEEZ]', 'ATEEZ', 'normal', 15, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 61, 65, '신고 온 것 같아서 찾아와봤어요', '봤어요', '보다', 'I saw/watched');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('AV7KX8HRdYs', '[ 에이티니 브이로그 ]Beginning of the End / ソンファに会ってきた☆ 【ATEEZ】【ATINY】', 'ATEEZ', 'normal', 16, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 30, 34, '한가정에 있는 스튜디오가 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xWG6DzYOaoQ', '[호듀로그] 에이티니 브이로그 | 가요대제전 사녹 | 에이티즈 컴백 프리뷰 라이브 | 뮤직비디오 리액션ㆍ응원법 연습 | 공방 브이로그', 'ATEEZ', 'normal', 17, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 54, 58, '시간에 11시 정확히 얘기해줄게', '줄게', '주다', 'I will give');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('nyWfmPkufCg', '[지] 에이티니 브이로그 ATINY VLOG l 할라지아 나온지 한달 뒤에 하는 비트로드 미공포&앨범포카 깡할라할라할라할라할라지아🧡🖤', 'ATEEZ', 'normal', 18, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2, 6, '오늘은 새로운 구도로 찾아왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('YuzT8RzKbTI', 'SKKU Korean University Festival Vlog 2024 - ATEEZ, Bibi and more! 한국어 자막', 'ATEEZ', 'normal', 19, 57.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 57.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 117, 120, '공갖들 물어보겠지 어디 갔어', '갔어', '가다', 'I went');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Kqfz8ew92iM', '[에이티니브이로그] 20221231 에이티즈 ATEEZ 2022 OUR STORY MD HONGJOONGㅣ홍중 생일 MD 언박싱ㅣ블립ㅣUNBOXINGㅣATINY VLOGㅣ티니로그', 'ATEEZ', 'normal', 20, 62.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 62.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 28, 32, '는 편이기 때문에 쓰일 수 없었어요', '없었어요', '없다', 'There was not');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('UZtXHjYc81Q', '【ENG】(Red Velvet)레드벨벳이 올 한해를 장식할 앨범으로 돌아온다? Red Velvet album 레드벨벳 앨범,레드벨벳 노래,레드벨벳 춤,레드벨벳 직캠,돌곰별곰TV', 'Red Velvet', 'normal', 1, 21.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 21.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 8, '시청해주셔서 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('_Aw6vdZr29M', '【ENG】레드벨벳 웬디, 첫 솔로활동!! 팬들 반응 난리?? Red Velvet Wendy 돌곰별곰TV', 'Red Velvet', 'normal', 2, 21.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 21.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 8, '시청해주셔서 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LL3Rlay8qlY', '[자막뉴스] 레드벨벳 조이, 파격 입술 피어싱, 시선 사로잡는 글래머 몸매 / Yiine', 'Red Velvet', 'normal', 3, 26.333333333333332, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 26.333333333333332, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 31, 43, '각종 음악 사이트에서 공개됐다', '됐다', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('pQZocxp6OvU', 'Red Veivet Rookie mv  레드벨벳 루키 뮤직비디오', 'Red Velvet', 'normal', 4, 27.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 27.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 26, 31, '좋아 볼 때마다 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ole5EuVrsJU', '✨수영아💚 생일 축하해‼️ 🎂 온통 축하로 가득 찬 JOY’s B-DAY VLOG', 'Red Velvet', 'normal', 5, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '지영아 생일 축하해', '축하해', '축하하다', 'Congrats');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('1jrOfI1qs-A', '【ENG】(Red Velvet)레드벨벳 단독콘서트 개최로 크게 화제 (Red Velvet concert)레드벨벳콘서트/레드벨벳콘서트브이로그/레드벨벳콘서트엑소', 'Red Velvet', 'normal', 6, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 5, '시청해주셔서 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ZgW3pzp0uJA', '[영어] 레드벨벳 ''Psycho'' 속 충격의 콩글리시 ㅠㅠ | ''비주얼''이 나쁜 말...? 미국인은 전혀 다르게 이해하는 가사!', 'Red Velvet', 'normal', 7, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 46, 51, '크리스 에디테이너인가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xF6QrJIFdBY', '【ENG】(Red Velvet)"이건 무슨의미?" 레드벨벳 이번 앨범이 엄청 기대되는 이유 Red Velvet album Psycho 레드벨벳 사이코,레드벨벳 신곡,돌곰별곰TV', 'Red Velvet', 'normal', 8, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 5, '시청해주셔서 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('i9AQh-5iIq8', '[문구사장 브이로그]🌷🌼 레드벨벳 🌺🌹 앨범깡 (리브+오르골) • 탑꾸 / 봄맞이 화사한 탑꾸 해보기 ✨', 'Red Velvet', 'normal', 9, 32.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 32.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 6, '오늘은 치즈스틱을 준비했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('2QzrASOgZj8', '황치열(hwangchiyeul),레드벨벳(Red Velvet), 뮤비(music video)에 출연한 모텔리어(motelier)', 'Red Velvet', 'normal', 10, 32.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 32.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 13, 19, '아니 아니 아니 형 너무했어', '했어', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('I6AmDjuFNeo', '행복한 생일이 되길 바라며🪄 | IRENE''s B-Day🩷All Day Long', 'Red Velvet', 'normal', 11, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 19, 23, '여러분들도 그거 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('F0tkL_jHrys', '5년차 레드벨벳 예리의 걸어서 인싸 속으로 Reborn YERI in North America | 레드벨벳 아이컨택캠📹 시즌3', 'Red Velvet', 'normal', 12, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 61, 65, '에센스까지 챙겨왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('V1xpLASabzA', '안산은 이런 곳이다 (with 레드벨벳 슬기, 국카스텐 하현우, 랄랄)', 'Red Velvet', 'normal', 13, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 8, '안산에 대한 오해를 풀고 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7iclDXBx8ro', '💜 5 days with YERI 💜 | YERI’s Birthday week Vlog', 'Red Velvet', 'normal', 14, 34.75, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 34.75, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 19, 27, '이렇게 많이 많이 고민을 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PtUKQGxketA', '[Bass COVER] 레드벨벳 (Red Velvet) - All Right', 'Red Velvet', 'normal', 15, 35.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 15, difficulty_score = 35.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 101, 106, '난 좋아 baby, 참 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('izw5o2-I04s', '레드벨벳포카/러비로그/사담반포카반/포카구경', 'Red Velvet', 'normal', 16, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 16, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6, 13, '찍을까 고민을 되게 많이 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('rvM2EYhdp2c', '아주아주 완벽한 슬기의 Vlog I Hi 👋 SSEULGI’s BIRTHDAY 💛', 'Red Velvet', 'normal', 17, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 17, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 110, 114, '이런 거 사는 거 되게 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('6mAOkBT3C_E', '문두루 던킨 도넛 도너츠 레드벨벳 케이크 빵 디저트 빵순이 먹방 먹빵 브이로그 자막없는 수다 bread donut cake dessert asmr mukbang vlog ep.38', 'Red Velvet', 'normal', 18, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 18, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 5, '저녁은 빵과 함께 먹으러 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('UcY2maSk8Z0', '[Eng] 레드벨벳케이크 만들기 , Red Velvet Cake , 크림치즈프로스팅,  Cream Cheese Frosting, 생일케이크,Birtheday cake', 'Red Velvet', 'normal', 19, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 19, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2, 7, '레드벨벳 케이크를 만들어 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('dFT7mJP0Wik', '[INDO SUB] GFRIEND G-LOG #23 - YERIN KE KONSER JOY RED VELVET ''LA ROUGE''', 'Red Velvet', 'normal', 20, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 20, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2, 6, '아 지우가 왜 차에 들고 왔어', '왔어', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('alM4M-r0MUE', '[러비로그] 레드벨벳 퀸덤 컴백 예열 🔥 웬디 라이크워터 굿즈깡 | 홀카, 포토프로젝션키링 | 슬기 어뮤즈 포카 | 완레터 💙 디어유레터 포카.ssul', 'Red Velvet', 'normal', 21, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 21, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 60, 64, '같은 사진이 2세정씩 들어있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0cQRI2CiZQM', '[RIIZE/라이즈] 미션 ! 아무도 없는 라이즈 전시회장을 습격하라 ! - 쇼타로 | 은석 | 성찬 | 원빈 | 승한 | 소희 | 앤톤', 'RIIZE', 'normal', 1, 26.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 26.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 45, 51, '저희가 몰래 침입했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0hA8ItnHlVI', '[4K] 첫콘의 짜릿함 이거지예 ㅋ_ㅋ | 라이즈 RIIZING DAY 앙콘 노잼 브이로그 🧡', 'RIIZE', 'normal', 2, 27.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 27.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 51, 56, '됐어요 비가 안 와요', '와요', '오다', 'I come');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('kLcub5oFh6U', 'Ordinary people can''t beat ANTON the water. But... what about "wipers"?  I BOSS RIIZE EP.06', 'RIIZE', 'normal', 3, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 31, 35, '엔토니 은근 잘해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('xS4qLo_JrAQ', '【BRIIZE Vlog#2】RIIZING LOUD in SAITAMA🦏たろへ、冬はドーム期待していいですか？？（한국어 자막）✧ RIIZE/ブリズVlog/브리즈 브이로그/덕질/', 'RIIZE', 'normal', 4, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 30, 34, '머리가 너무 귀여워요', '귀여워요', '귀엽다', 'It is cute');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('V-iLjo1V9c4', '[VLOG/브리즈 브이로그] 라이즈 2025 시즌그리팅 언박싱 |브이로그•시즈그리팅•언박싱•쇼타로•SHOTARO•쇼프•RIIZE•BRIIZE•VLOG', 'RIIZE', 'normal', 5, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 44, 48, '해리포터를 엄청 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('i-AmYkErxjA', '[브리즈 브이로그] 드디어 앨범깡이라는 것을 해보았답니다~근데 아직 끝난게 아님v(*’-^*)ｂ | 라이즈 | RIIZE | 브리즈 | BRIIZE | 라이즈 앨범깡', 'RIIZE', 'normal', 6, 35.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 35.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 36, 41, '아닌데? 앨범 한 장만 왔어', '왔어', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('OIGT-GoHMog', '라이즈 GET A GUITAR 앨범 언박싱 | 앤톤아.. | 앨범 소개 포카깡 | 메이크스타 슴스 마뮤테 미공포 | RIIZE GET A GUITAR ALBUM UNBOXING🎸', 'RIIZE', 'normal', 7, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9, 16, '많아가지고 덕질을 시작하게 됐어', '됐어', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ZRtqR62fFVw', '[RIIZE/성찬/은석] 라이즈의 하와수 영원즈 | 영원즈 모음.zip | 찐친들이 말아주는 리얼케미 보러가요🫧', 'RIIZE', 'normal', 8, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 43, 46, '1분 30초 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('MQwDMH-PJKg', '[V log]RIIZE PHOTO EXHIBITION [Silence: Inside the Fame 고요와 파동]', 'RIIZE', 'normal', 9, 44.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 44.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 30, 36, '이 진정되는거는 여기가 더 좋아요', '좋아요', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('URs5JYD2QEw', '#장하오 밸런스게임 자막 #zhanghao #章昊 #ジャンハオ #zerobaseone #zb1', 'ZEROBASEONE', 'normal', 1, 23.833333333333332, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 23.833333333333332, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 6, '이번에는 저한테 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('rggeqdV1OpA', '[앤팀] 팬이 뽑은 우등생일 거 같은 멤버', 'ZEROBASEONE', 'normal', 2, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18, 22, '니코라스 진짜 최고', '최고', '', 'The best!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('k3tQogdLtFI', '[ZB1 CAM] 한빈 VLOG | 바쁘다 바빠 엠카 사회 | 햄냥 MC부터 햄커까지 | 하루에 챌린지 몇 개?', 'ZEROBASEONE', 'normal', 3, 42.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 42.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 28, 32, '사발을 아침에 많이 먹었어', '먹었어', '먹다', 'I ate');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-SAGkJH2JU4', '#장하오 브링그린 촬영 비하인드 #zhanghao #章昊 #ジャンハオ #zerobaseone #zb1', 'ZEROBASEONE', 'normal', 4, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 14, 19, '클렌징폼 사실 진짜 쓰고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('IhrUPXU0mhQ', '20220902 KBS Music Bank idols send off 퍼플키스 라이즈 보이넥스트도어 시그니처 김세정 이채연 에버글로우 로켓펀치 트렌드지 싸이커스 영케이', 'xikers', 'normal', 1, 21.666666666666668, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 21.666666666666668, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 90, 96, '이런 싸움이 일하자', '하자', '하다', 'Let''s do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('lKI-XKbUSgE', '[템페스트 혁] 구본혁 환승연애', 'xikers', 'normal', 2, 27.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 27.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 52, 57, '나도 이게 내가 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LcKJsqqXWOM', '인도네시아 브이로그💘/2일동안 영상🌙/틱톡커', 'xikers', 'normal', 3, 28.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 28.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 30, 36, '자 여기는 공원인데 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('X6lPc8_kFoM', '[KOR] 불면증 비켜! 동화책 읽어주는 ASMR(?) Stop insomnia! ASMR of reading fairy tale book | THE 윌벤쇼 EP.70', 'xikers', 'normal', 4, 29.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 29.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 23, 35, '렉이 윌리엘의 쇼에 대해 말했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('DHko86ZEOL4', '[NCT/WayV] 가요대축제 엔딩 CUT 고속도로 로맨스', 'xikers', 'normal', 5, 30.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 30.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 10, '어 소리쳐봐 우리는 바다로 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('IHXw3KA2ITg', 'Burn It Up - BZ-BOYS (청공소년) | JAPAN SPECIAL | 2023 K-LOVERS SPRING Vol.17', 'xikers', 'normal', 6, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 105, 109, '그대도 더 날 기다려', '기다려', '기다리다', 'Wait');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('A1KvvBmUKNc', 'BOYS PLANET (보이즈플래닛) SAY MY NAME (세이마이네임)ㅣ커버댄스 Cover Danceㅣ원테이크아카데미', 'xikers', 'normal', 7, 36.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 36.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 68, 76, 'say my name 우리 시작해', '시작해', '시작하다', 'Let''s start');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('064yalOGV1o', 'NCT WISH (엔시티 위시) - We Go! (Japanese Ver.) | KCON STAGE | KCON JAPAN 2024', 'xikers', 'normal', 8, 41.75, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 41.75, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 35, 43, '輕렬한 것보다 더 높게 날아가고 싶어요', '가고 싶어요', '', 'I want to go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('4Y8PUxXEGzk', '로디_로그 : Comeback Pop-up', 'xikers', 'normal', 9, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 89, 94, '진다 터져도 밤이 최대치고 가자', '가자', '가다', 'Let''s go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('d2g7pje5R4w', '정신과 의사가 말하는 공부를 잘하게 해주는 3가지 요소 (feat. 소아 정신과 박쌤)', 'xikers', 'normal', 10, 50.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 50.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 3, 8, '공부를 시간 단위에 쪼개서 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('de6yd1bcEwY', 'Ateez Wonderland MV Reaction | Is this the BEST Ateez song?!', 'xikers', 'normal', 11, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 101, 105, '저는 그 노래가 정말 좋아해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-4AIHMCspjQ', '[road𝓨 vlog] 1st fansign with xikers #3 (Hunter, Mine, Jinsik)  | Thai road𝓨✨', 'xikers', 'normal', 12, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 32, 36, '그리고 제가 궁금한 질문이 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Kqfz8ew92iM', '[에이티니브이로그] 20221231 에이티즈 ATEEZ 2022 OUR STORY MD HONGJOONGㅣ홍중 생일 MD 언박싱ㅣ블립ㅣUNBOXINGㅣATINY VLOGㅣ티니로그', 'xikers', 'normal', 13, 62.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 62.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 28, 32, '는 편이기 때문에 쓰일 수 없었어요', '없었어요', '없다', 'There was not');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('oqVt8T6r3WY', 'DolTABLE EP.13 DXMON JO, MINJAE "Red hair !!!! COMING!!!"', 'xikers', 'normal', 14, 66.33333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 14, difficulty_score = 66.33333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 38, 41, '이거 머리 한 지 얼마나 됐어', '됐어', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('h1PsdVXdAj0', '[풀버전M/V] 이예은,아샤트리,전건호 - MY LOVE (2025) 원곡:버즈', 'KISS OF LIFE', 'normal', 1, 10.5, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 10.5, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 22, '안 돼요 더는 못해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ILCfdr5fnV4', '''일반 사무 업무'' 라더니... 비밀 유지 계약서까지..? /KNN', 'KISS OF LIFE', 'normal', 2, 30.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 30.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 6, 16, '회장 양 씨는 직원들이 입사하자', '하자', '하다', 'Let''s do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('I7V-cnnEjEo', '진짜 왕자님 튀어나온줄❤️ #뮤지컬 #뮤지컬추천 #wicked #위키드 #서경수', 'KISS OF LIFE', 'normal', 3, 32.388888888888886, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 32.388888888888886, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15, 24, '숙함 속에 편안한 길을 걸어가자', '가자', '가다', 'Let''s go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QmhAwa5pWTw', '영화 같은 인생을 사는 F1 선수', 'KISS OF LIFE', 'normal', 4, 34.75, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 34.75, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 40, 48, '게도 한 달 뒤 르클레르는 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('DIDXkQGQhvI', '[원디렉션] 자낳괴 영국아이돌', 'KISS OF LIFE', 'normal', 5, 39.666666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 39.666666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 6, '내가 floodgates 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('SBm6pM51OWs', 'To.X…. #동방신기 #영웅재중 #김재중 #제시카', 'KISS OF LIFE', 'normal', 6, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 6, '영웅재 중에 전여친들을 알아보자', '보자', '보다', 'Let''s see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('4XVV2Fx6DX0', '맷라이프보다 매운맛 관객@MattRifeComedy #맷라이프', 'KISS OF LIFE', 'normal', 7, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 30, 34, '벨트에 붙여서 보이지 못했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('mFmIIpm4JVw', '프랑스 인종차별 VS 한국 인종차별', 'KISS OF LIFE', 'normal', 8, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '때는 진짜 2주 밖에 못 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('b19zbMtv6a4', '[픽플러''S 브이로그] KISS OF LIFE - ''쉿(Shhh)''ㅣ댄스커버ㅣ메이킹필름ㅣ픽플래닛', 'KISS OF LIFE', 'normal', 9, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 66, 70, '에너지 드링크를 원샷하고 왔어요', '왔어요', '오다', 'I came');
END $$;

