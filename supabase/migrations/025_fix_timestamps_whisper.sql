-- Whisper AI로 추출한 정확한 타임스탬프로 챌린지 업데이트

-- NewJeans: [Jeans ZINE+] 연말 파티 ZIP
UPDATE challenges 
SET start_sec = 104,
    end_sec = 108,
    full_sentence = '저는 이런에도 만들어봤어요',
    answer_word = '봤어요',
    base_form = '보다',
    hint_en = 'I saw'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'OMVoxddjWmM');

-- aespa: [aespa SYNK] VLOG
UPDATE challenges 
SET start_sec = 54,
    end_sec = 58,
    full_sentence = '브라운 메이크업을 했어요',
    answer_word = '했어요',
    base_form = '하다',
    hint_en = 'I did'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'EnDBSEazby4');

-- Stray Kids: [SKZ-TALKER] Ep.77
UPDATE challenges 
SET start_sec = 29,
    end_sec = 35,
    full_sentence = '많이 커서 노래를 부르다가 못 부를 줄 알았어요',
    answer_word = '줄 알았어요',
    base_form = NULL,
    hint_en = 'I thought'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'urNLPgalt6o');

-- ITZY: [ITZY LOG]
UPDATE challenges 
SET start_sec = 44,
    end_sec = 47,
    full_sentence = '되게 맛있어요',
    answer_word = '맛있어요',
    base_form = '맛있다',
    hint_en = 'It is delicious'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'BPAryWcO6jI');
