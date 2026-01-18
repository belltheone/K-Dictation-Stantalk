-- Dredge Content Batch

DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('M6wpkLCiHoI', '[슈취타] EP.18 SUGA with V', 'BTS', 'normal', 1, 28.954545454545453, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 28.954545454545453, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 48, 59, '이 돌멩이에도 할아버지어도 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('4M5jGbVfItE', '[BTS VLOG] Jung Kook l CAMPING VLOG', 'BTS', 'normal', 2, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '아, 보자, 보자, 보자', '보자', '보다', 'Let''s see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('iLXaOWRRCtc', '[방탄소년단/BTS] 151105 뷔의 로그 (자막ver.)', 'BTS', 'normal', 3, 30.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 30.333333333333336, is_locked = true, is_published = true
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
  VALUES ('wBPWvdJQ0dU', 'BTS 지민] 자막 맛집 지민이 VLOG(자막으로 보는 지민이 의식의 흐름ㅋㅋ)', 'BTS', 'normal', 4, 30.77777777777778, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 30.77777777777778, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 89, 98, '잘하시고, 잘하시고, 마무리할게요', '할게요', '하다', 'I will do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('EDVsc80kA2k', '[BTS VLOG] Jin l COOKING VLOG', 'BTS', 'normal', 5, 33.18181818181818, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 33.18181818181818, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 116, 127, '이 선물 여기 가르쳐주셔서 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('XcO-AAUgPSw', '자막)BTS방탄소년단 맵솔콘//늦덕아미 초보티켓팅 성공기', 'BTS', 'normal', 6, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 15, 19, '특힛을 시작하려고 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('DEcWTgrAd4k', '[방탄소년단/BTS] 브런치 먹으러 GO!! [feat. 지민&진] (자막ver.)', 'BTS', 'normal', 7, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '저희는 레시피가 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('TsqdG6xsgGE', '[ENG/ 한국어 자막] MY ARMY-log 아미로그: BTS Week (하이브 Daydream Believers, 민속촌, 미도파 카페, 엠카운트다운 V M-Countdown)', 'BTS', 'normal', 8, 37.785714285714285, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 37.785714285714285, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2, 9, '교환학생이니까 한국어 잘 못해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('idcJbsGekhw', '[BTS VLOG] V l DRIVE VLOG', 'BTS', 'normal', 9, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 9, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 44, 48, '아직 목적치를 안정했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Go1-d1akias', 'VLOG ''V` [BTS VLOG]DRIVE VLOG SUBTITULADO AL ESPAÑOL', 'BTS', 'normal', 10, 39.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 10, difficulty_score = 39.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 44, 48, '아직 목적치를 안정했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('0PDku7tnCzk', '[방탄소년단/BTS] 150513 랩몬스터 로그 (자막ver.)', 'BTS', 'normal', 11, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 11, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 16, 21, '보는 말레이씨, 섬이 연대 완전', '완전', '', 'Totally!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9YZzI94t2yw', '[ 방탄소년단 / BTS ] 지우님 브이로그 속 호비 목소리 (자막 추가) #BTS #방탄소년단 #JHOPE #HOSEOK #HOBI #호석 #제이홉 #호비', 'BTS', 'normal', 12, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 12, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 10, 15, '서로 atau 소리 듣지 싫어요', '싫어요', '싫다', 'I dislike it');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('lL7nB5cTXNA', '[방탄소년단/BTS] 161113 지민이 로그 (자막ver.)', 'BTS', 'normal', 13, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 13, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 83, 88, '또 얼마나 오늘 진심을 또 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Xtto9eAX9bQ', '이런 자막없는 힐링영상 어떤데〰️💖 #다이브로그 #뉴진스 #다이브 #다이소깡 #레볼루션하트 #버니즈 #버니즈로그 #아이브 #포카포장 #아카이로류 #아카류 #벨보아 #르세라핌', 'NewJeans', 'normal', 1, 25.071428571428573, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 25.071428571428573, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 30, 37, '삶이도 없어 아무리 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('rZPwny_D4HA', '[SUB] 거 짓 말...캣츠아이 K-고딩 맞잖아요? | 돌들의침묵 | 캣츠아이(KATSEYE) ''Gnarly''', 'NewJeans', 'normal', 2, 30.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 30.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 74, 78, '저는 너무 행복해요', '행복해요', '행복하다', 'I am happy');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('RE5Sc_zZUUA', '오늘도 자막 없는 영상💥🫰 제 쇼츠에서 보고 싶으신 영상 있으신가요?! #다이브로그 #포장asmr #덕질로그 #아이브 #포장브이로그 #포카포장', 'NewJeans', 'normal', 3, 39.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 39.714285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4, 11, '단점이라던 그 하셔도 많은 좋았어', '좋았어', '좋다', 'It was good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QCIH1zKvy3M', '뉴진스 OMG 뮤비 느낌 자막 폰트 찾는 법! (NewJeans 감성)', 'NewJeans', 'normal', 4, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 3, 9, '울리는 영화자마 폰트를 소개해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('uCiwu-kqJmQ', '유독 성형 의혹이 없는 여자 아이돌🥇(올데이프로젝트, 올데이 프로젝트)', 'NewJeans', 'normal', 5, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 34, 39, '첫 연습생생활을 시작하게 됐다', '됐다', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GtGufZVWwo8', '르세라핌 핌로그의 자막을 르세라핌이 직접 쓰는지 궁금했던 아이브 이서🤍 #이서 #리즈 #은채 #은채의스타일기 출처: 은채의 스타일기 아이브 리즈, 이서편💓', 'NewJeans', 'normal', 6, 56.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 56.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '근데 그거 잠옷 진짜 자기갔어요', '갔어요', '가다', 'I went');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('lzWF94mipFY', '🎈[한영자막] 제니 영어 인터뷰 │ BLACKPINK JENNIE ✰', 'NewJeans', 'normal', 7, 66.33333333333333, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 66.33333333333333, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 50, 53, 'zac LinkedIn가 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('55XKfyJ-WwM', '[자막뉴스] ＂이럴거면 유튜브로 봤지＂ 블랙핑크 콘서트에 관객 ''분통'' | 이슈픽', 'BLACKPINK', 'normal', 1, 23.214285714285715, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 23.214285714285715, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 28, 42, '튜버 출어놓고 그냥 입지, 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('LJQksxMBVdc', '[제니한글자막] 블랙핑크 제니 빌보드 영어인터뷰 한글자막', 'BLACKPINK', 'normal', 2, 33.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 33.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '저 Eagles 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('h-snpzQ2ejo', 'ENG│블랙핑크 커버의상 만드는 자취일상. 명란우동엔 삼겹살, 만두밥과 누가크래커 먹으며 지수한복 완성하는 브이로그│플랜디VLOG', 'BLACKPINK', 'normal', 3, 39.714285714285715, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 39.714285714285715, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 29, 36, '님이 댓글로 이 룰지는 끓여먹어요', '먹어요', '먹다', 'I eat');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ah8yn3xCzvk', '다 영어임 한국어자막 없다 알아서보세요 서현 브이로그 블랙핑크 사랑해요', 'BLACKPINK', 'normal', 4, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 27, 33, '에 saludśl Soup 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('wLhnzTK41wY', '블링크 브이로그#35|🥹왜 이렇게까지 하시는거에요!?|✨윙크제니😉|덕질 브이로그|BlackPink Blink|블링크로그|반택깡|준등기깡|택배깡|선물깡|포장|비공굿', 'BLACKPINK', 'normal', 5, 45.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 45.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '파크 때 꽤 색이 뜯어볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('mjBvu593dtI', 'vlog l 제니 젠틀살롱 ｡ﾟﾟ･ 성수동 핫한 팝업 도장깨기 (톰그레이하운드, 토니모리)ㅣ청담나인', 'BLACKPINK', 'normal', 6, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 28, 33, 'XY Word 연필 받고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('s3GTfZZ3p54', 'BLACKPINK, the first K-pop girl group to perform at Wembley Stadium! [ENG SUB]', 'BLACKPINK', 'normal', 7, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 22, 27, '늘 드디어 블랙핑크 만나러 가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Fd_En3y2amo', '[ENG] ROSÉ sings her favorite carol! What''s In My Bag🖤 | MY VOGUE', 'BLACKPINK', 'normal', 8, 53.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 53.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 9, 13, 't''s in my bag? 시작해', '시작해', '시작하다', 'Let''s start');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9QrGJF2vnNc', '230614 IVE REI 뭐 더 질문 있으신 분ㅋ 🐥', 'IVE', 'normal', 1, 24.5, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 24.5, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 42, 50, '내가 또 추인을 하러 왔어', '왔어', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('tCCtZ6J5vs8', '[Eng Sub] Jang Wonyoung is pretty', 'IVE', 'normal', 2, 25.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 25.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 151, 156, '그룹 от 7대가요', '가요', '가다', 'I go');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('M9i1d6dpx8c', '"영토에 대한 도전"...장원영 발언에 분노한 中 누리꾼들, 심상찮은 조짐 [지금이뉴스] / YTN', 'IVE', 'normal', 3, 34.75, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 34.75, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 16, 24, '대한 기대를 전하며 홍콩은 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('qngno9YdEVY', '자막 없는 다이브로그! #아이브 #kpop #이서 #포카포장 #장원영 #레이 #포장풀기 #포카#ive#리즘아도와줘 #리즘아띄워줘 #리즘아사랑해 #리즘아 제발', 'IVE', 'normal', 4, 36.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 36.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 61, 65, '투바투 동선도 나왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('2Zrcj0x7WPk', '[IVE LOG] 힐링🌱 브이로그인 줄 알았으나...｜FALL LOG', 'IVE', 'normal', 5, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 26, 32, '가려고 아침부터 준비되어 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('OSPggZi7bEs', '다이브로그 ) 깡도 하고 포장도 하는 폴프 *♡·̩͙⋆ • 럽다 케타포 레이 • 반디나 원영 • 사웨 • 덕질브이로그 • gaeul • ive • dive • 포카포장 • 반택깡', 'IVE', 'normal', 6, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 5, '오늘 진정게 아가지도 다 볼게요', '볼게요', '보다', 'I will see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QDYZNjAeHDY', '[자막][IVE/아이브] 수록곡 키워드 밸런스게임', 'IVE', 'normal', 7, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 25, 30, '파란 피가 하려는 거 알게 됐다', '됐다', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('eStOZa52HqA', '[FIM-LOG] 채원 브이로그 #3 l 채채는 열일 중❤️‍🔥 | 스케줄🎤, 캔들 DIY🕯️🍓, 브이로그 자막 작업👩🏻‍💻', 'IVE', 'normal', 8, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 40, 44, '부르기 위해서 김밥을 먹고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vSVXp0Spfus', '찐 교포들의 영어 대화 에스파 지젤 전소미', 'aespa', 'normal', 1, 25.0, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 25.0, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 26, 31, '근데 나 과연 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('c1-qagApi3I', '이건 ''피드백이 아니''라는 에스파 팬들', 'aespa', 'normal', 2, 35.857142857142854, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 35.857142857142854, is_locked = true, is_published = true
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
  VALUES ('DuK-NbDIr_4', '카페 알바 닝닝☕️', 'aespa', 'normal', 3, 38.333333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 38.333333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 3, '근데 닉닉인 어디야?', '어디야?', '', 'Where is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('8t-N_tculaY', '승무원 준비하면서 배웠다는 카리나의 중국어 실력', 'aespa', 'normal', 4, 41.833333333333336, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 41.833333333333336, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 6, '떤 일을 하고 있을까 생각해봤어', '봤어', '보다', 'I saw');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('SsBZkxWuEHQ', '에스파말고 스파브이로그', 'aespa', 'normal', 5, 47.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 47.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 4, 9, '? 맞네 저기 표집판 나와 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  -- Insert or Get Content
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('uT6FJxvzmvA', '닝닝… 뭘 쳐요? #에스파 #닝닝 #라방', 'aespa', 'normal', 6, 59.0, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 59.0, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  -- Delete old challenges for this content to ensure clean slate
  DELETE FROM challenges WHERE content_id = v_content_id;

  -- Insert new challenge
  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 4, '만 제가 한번 필터를 잘 해볼게요', '볼게요', '보다', 'I will see');
END $$;

