-- Whisper AI로 모든 그룹 타임스탬프 추출 (확장 패턴)

-- SEVENTEEN: [GOING SEVENTEEN] EP.1
UPDATE challenges 
SET start_sec = 41,
    end_sec = 52,
    full_sentence = '분들을 위해서 영상을 찍어보고 싶어요',
    answer_word = '보고 싶어요',
    base_form = NULL,
    hint_en = 'I want to see / I miss'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'MQ9fqyO0Oc0');

-- (G)I-DLE: [I-TALK] 시리즈
UPDATE challenges 
SET start_sec = 117,
    end_sec = 121,
    full_sentence = '또 받아줄 수 있는 상황이 있어요',
    answer_word = '있어요',
    base_form = '있다',
    hint_en = 'There is / I have'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'MbqitUOcMxw');

-- ENHYPEN: [EN-O CLOCK]
UPDATE challenges 
SET start_sec = 83,
    end_sec = 87,
    full_sentence = '그것도 비용이 있어요',
    answer_word = '있어요',
    base_form = '있다',
    hint_en = 'There is / I have'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = '35kacj9xT9c');

-- TXT: [T:TIME]
UPDATE challenges 
SET start_sec = 31,
    end_sec = 34,
    full_sentence = '방에 이렇게 커요',
    answer_word = '커요',
    base_form = '크다',
    hint_en = 'It is big'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'a0rMb-w4P_0');

-- NMIXX: [NMIXX VLOG]
UPDATE challenges 
SET start_sec = 12,
    end_sec = 16,
    full_sentence = '정말 먹었어요',
    answer_word = '먹었어요',
    base_form = '먹다',
    hint_en = 'I ate'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'fd68xm_7BKk');

-- xikers: 인싸이커스
UPDATE challenges 
SET start_sec = 28,
    end_sec = 34,
    full_sentence = '립이 아니었는데 굉장히 더 왔어요',
    answer_word = '왔어요',
    base_form = '오다',
    hint_en = 'I came'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = '0nBGCaydqKo');

-- KISS OF LIFE: KI-OFF
UPDATE challenges 
SET start_sec = 91,
    end_sec = 96,
    full_sentence = '러와요. 거기 사람이 너무 많아요',
    answer_word = '많아요',
    base_form = '많다',
    hint_en = 'There are many'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'MZXdbnM8KZA');

-- Kep1er: Kep1us
UPDATE challenges 
SET start_sec = 42,
    end_sec = 46,
    full_sentence = '인형이 좀 커요',
    answer_word = '커요',
    base_form = '크다',
    hint_en = 'It is big'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'OAcxiqfwCdI');

-- MEOVV: INSIDE MEOVV
UPDATE challenges 
SET start_sec = 86,
    end_sec = 90,
    full_sentence = '지금 마트 와서 자을 봤어요',
    answer_word = '봤어요',
    base_form = '보다',
    hint_en = 'I saw/watched'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'fzdoRd5ErPM');
