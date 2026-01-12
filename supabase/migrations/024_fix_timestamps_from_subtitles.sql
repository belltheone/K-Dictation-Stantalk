-- 실제 YouTube 자막에서 추출한 정확한 타임스탬프로 챌린지 업데이트
-- 자동 생성됨


-- Update challenge for video urNLPgalt6o
UPDATE challenges 
SET start_sec = 122,
    end_sec = 129,
    full_sentence = '주동이 진짜 맛있어요',
    answer_word = '맛있어요',
    base_form = '맛있다',
    hint_en = 'It is/was delicious'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'urNLPgalt6o');


-- Update challenge for video OMVoxddjWmM
UPDATE challenges 
SET start_sec = 19,
    end_sec = 22,
    full_sentence = '- 좋아 - 좋아요',
    answer_word = '좋아요',
    base_form = '좋다',
    hint_en = 'It is/was good'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'OMVoxddjWmM');
