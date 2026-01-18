-- Dredge Content V2 (Google STT)
-- 생성 시각: 2026-01-17 23:21:17.039122


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('jX5VhMCrLFo', '[트와이스] 채영이 일본인인 줄 알았던 트와이스 모모', 'TWICE', 'normal', 1, 18.983870967741936, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 18.983870967741936, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '걸 프리스타일 때 먹는 거 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('ON-yu_gD6-Y', 'TWICE REALITY "TIME TO TWICE" FAKE SQUID GAME EP.01', 'TWICE', 'normal', 2, 30.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 30.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 21, 31, '소리 질러 물이 무서워서 나왔어', '왔어', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('-VggZbd9dGo', 'KISS OF LIFE (키스오브라이프) | 추석오브라이프🏠', 'KISS OF LIFE', 'normal', 1, 19.362068965517242, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 19.362068965517242, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 29, '다 일하고 언니야 오늘 뭐 했어', '했어', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('gU8ivBUHar0', 'kiss of life moments to watch when you''re bored', 'KISS OF LIFE', 'normal', 2, 19.806451612903224, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 19.806451612903224, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '제일 잘 찍은 사진 여기 어디예요?', '어디예요?', '', 'Where is it?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('6wNgwOB6PK0', '[WayV-log] TEN''s Quarantine Vlog : Day1', 'WayV', 'normal', 1, 21.285714285714285, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 21.285714285714285, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 28, '다음에 설명하겠습니다 너무 힘들어요', '힘들어요', '힘들다', 'It is hard');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('BYABZLhZRo0', '[WayV-log] WINWIN''s Quarantine vlog : Package Unboxing & Dinner', 'WayV', 'normal', 2, 27.846153846153847, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 27.846153846153847, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 18, 31, '마지막 건조함도 오후 1시 시작해', '시작해', '시작하다', 'Let''s start');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('zEe2Rh9G2As', '숙소 이사한 레드벨벳 슬기의 방 소개 ✨', 'Red Velvet', 'normal', 1, 18.161290322580644, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 18.161290322580644, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '같아요. 저 너무 마음에 들어요', '들어요', '듣다', 'I listen');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vnenDyMdhB4', '벌써 끝나다니 아쉬워요🥲 | 레드벨벳 Red Velvet SMTOWN LIVE 2025 tour Behind The Scenes', 'Red Velvet', 'normal', 2, 21.537037037037038, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 21.537037037037038, is_locked = true, is_published = true
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
  VALUES ('iTgcp1oDk2M', 'Red Velvet X aespa ''Beautiful Christmas'' MV', 'Red Velvet', 'normal', 3, 22.18181818181818, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 22.18181818181818, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 22, '았지 선생님은 달력에 그대 기다려', '기다려', '기다리다', 'Wait');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GYhfDGV5GvU', 'BLACKPINK - ‘B.P.M.’ Roll #13', 'BLACKPINK', 'normal', 1, 11.142857142857142, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 11.142857142857142, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 2, 30, '솔루션 사실 게임 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('PKHix8Kzhqc', '블랙핑크 지수가 낯설어졌다는 로제', 'BLACKPINK', 'normal', 2, 12.5, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 12.5, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '원래 못 말려 버리는 거 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('g4iMCf5BsVc', '(ENG SUB)BLACKPINK || WHO FIRST TO GET MARRIED ft.A.S.M.R', 'BLACKPINK', 'normal', 3, 18.333333333333332, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 18.333333333333332, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, 'weather today 됐어', '됐어', '되다', 'It is done');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7O9EmhFta3s', '아직까지도 ‘엄마 샤넬‘ 입는다는 제니', 'BLACKPINK', 'normal', 4, 18.925925925925924, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 18.925925925925924, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 27, '활동. 그딴 말 꼭 하라고 했어', '했어', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3sSy0iMYDe0', '로제 뉴욕 사전인터뷰 30분 내내 오열', 'BLACKPINK', 'normal', 5, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '새는 얼마 전 있었던 인생 최고', '최고', '', 'The best!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('Is0iob8lz4w', 'BLACKPINK - ''24/365 with BLACKPINK'' EP.12', 'BLACKPINK', 'normal', 6, 19.362068965517242, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 6, difficulty_score = 19.362068965517242, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 29, '우리 올해도 사이좋게 지내 보자', '보자', '보다', 'Let''s see');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('CmFqvnnsOrU', '왜 로제는 제니보다 리사랑 더 친할까? #블랙핑크', 'BLACKPINK', 'normal', 7, 22.338709677419356, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 7, difficulty_score = 22.338709677419356, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '습 보기 힘들다. 그렇다면 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('OKdLelN1xOg', '라이브 방송 중에 진짜 화난 리사 #블랙핑크 #blackpink #kpop', 'BLACKPINK', 'normal', 8, 33.166666666666664, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 8, difficulty_score = 33.166666666666664, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 6, '누가 같이 술 하는데 왜', '왜', '', 'Why?');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('QoMhn0N7T5g', 'skz.. Hologram Idol Escape | Stray Kids LOVESTAY Fan Meeting | Real-Life Review | Off-Packing (St...', 'Stray Kids', 'normal', 1, 10.982758620689655, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 10.982758620689655, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 29, '안녕하세요 하루 나왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('o1JAVudBf3k', '[STAY VLOG] 야 서장미! 사귀자💐ㅣ스트레이키즈 팬미팅 ‘SKZ 5’CLOCK’ 막콘ㅣ인스파이어아레나', 'Stray Kids', 'normal', 2, 11.666666666666668, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 11.666666666666668, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 30, '야호 정미 나 언니네 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('zLdHZeRLtTs', '스트레이 키즈(Stray Kids) 필릭스(FELIX), 사장님과 친해지길 바래…☆ 아이돌룸(idolroom) Ep.16 | JTBC 180821 방송', 'Stray Kids', 'normal', 3, 18.161290322580644, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 18.161290322580644, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '? 생각할 때는 제가 떨어 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('CnRwKXeq3Q0', '[스트레이키즈 브이앱 리노/현진/창빈] 근데 왜 떡볶이에서 동전맛이나?', 'Stray Kids', 'normal', 4, 19.806451612903224, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 19.806451612903224, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '3시간 라디오를 하고 바로 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GEKkgATr4h0', '[NCT 127] 엔시티 자컨 가장 많이 다시 본 장면 (127 편)', 'NCT 127', 'normal', 1, 18.983870967741936, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 18.983870967741936, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '타 하지만 나는 순두부찌개 좋아', '좋아', '좋다', 'It is good');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9P1TabA5UFs', '[190616] Just 10 minutes 💚 | NCT 127 브이앱', 'NCT 127', 'normal', 2, 20.20689655172414, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 20.20689655172414, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 29, '보내고 자꾸 그렇게 하려고 했어요', '했어요', '하다', 'I did');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('7OZyhGedNwo', '[210603] 우리chill💚💚 | NCT 127 브이앱', 'NCT 127', 'normal', 3, 23.136363636363637, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 23.136363636363637, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 5, 27, '새로운 함께 모여 주셔서 감사합니다', '감사합니다', '감사하다', 'Thank you');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3MJg4dhybDc', '🎬 흑백 세상에도 새벽은 오잖아 | 시즈니 브이로그 | 엔시티 127 에이요 앨범 스크랩 다꾸 • NCT 127 Ay-Yo Scrap (B ver.)', 'NCT 127', 'normal', 4, 23.925925925925924, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 23.925925925925924, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 27, '필요했는데 기다려라 확인 진짜', '진짜', '', 'Really!');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('nOR7egzwV1Q', '[JENO : LOG] 제노 속초 여행 VLOG (팬자막)', 'NCT DREAM', 'normal', 1, 17.5, false, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 1, difficulty_score = 17.5, is_locked = false, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 16, 31, '여기는 오랜만에 놀러 왔어요', '왔어요', '오다', 'I came');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('9uJJRE-Hnd8', '[시즈니 브이로그] 복필이랑 같이 드림군들 뮤비 보고 수록곡도 듣자 • NCT DREAM • Hello Future • 리액션 ㅋㅋ • 헬로 퓨처핸즈앤드풋업인디에어', 'NCT DREAM', 'normal', 2, 18.983870967741936, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 2, difficulty_score = 18.983870967741936, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '진짜 며칠 동안 아무것도 없어요', '없어요', '없다', 'There is not / I don''t have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('vhCJaUUHGl8', '[vlog]요드림! 시즈니는 앨범을 찢어!|엔시티드림 7명 모두 스크랩하기|글리치모드 비트박스 앨범스크랩 NCT Dream Album Scraping', 'NCT DREAM', 'normal', 3, 19.796296296296298, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 3, difficulty_score = 19.796296296296298, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 27, '청 있었던 일 잘해 보려고 해요', '해요', '하다', 'I do');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('3syflXnjY1w', 'D[●REC]TOR : 지성 🎥 in BANGKOK⎜NCT DREAM 투어 비하인드 (태국어 자막)', 'NCT DREAM', 'normal', 4, 19.796296296296298, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 4, difficulty_score = 19.796296296296298, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 1, 28, '이제 하루 공항으로 가고 있어요', '있어요', '있다', 'There is / I have');
END $$;


DO $$
DECLARE
  v_content_id UUID;
BEGIN
  INSERT INTO contents (youtube_id, title, artist_name, difficulty, stage_number, difficulty_score, is_locked, is_published)
  VALUES ('GZpXUrFHkeE', '🍬 I''ll always be by your side, right? I will | Season Vlog | NCT DREAM Candy Album Kang • Photobo...', 'NCT DREAM', 'normal', 5, 19.806451612903224, true, true)
  ON CONFLICT (youtube_id) DO UPDATE
  SET stage_number = 5, difficulty_score = 19.806451612903224, is_locked = true, is_published = true
  RETURNING id INTO v_content_id;

  DELETE FROM challenges WHERE content_id = v_content_id;

  INSERT INTO challenges (content_id, start_sec, end_sec, full_sentence, answer_word, base_form, hint_en)
  VALUES (v_content_id, 0, 31, '두 개랑 수민이는 아예 안 왔어요', '왔어요', '오다', 'I came');
END $$;

