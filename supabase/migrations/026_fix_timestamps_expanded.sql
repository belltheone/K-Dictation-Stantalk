-- 확장된 패턴으로 Whisper AI 타임스탬프 추출

-- IVE: I-LAND Talk
UPDATE challenges 
SET start_sec = 101,
    end_sec = 105,
    full_sentence = '팬스 가능해요',
    answer_word = '해요',
    base_form = '하다',
    hint_en = 'I do'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'hownMyg3g3M');

-- LE SSERAFIM: [LESSERAFIM LOG]
UPDATE challenges 
SET start_sec = 76,
    end_sec = 80,
    full_sentence = '귀히 사람들에게 최고',
    answer_word = '최고',
    base_form = NULL,
    hint_en = 'The best!'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = '9wI4ZQLmlhs');
