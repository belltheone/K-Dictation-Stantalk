-- 로컬 Whisper AI를 사용한 전체 타임스탬프 수정
-- 생성일: 2026-01-13 05:27:44

-- Video: 0pUIc8dLVb4
UPDATE challenges 
SET start_sec = 47,
    end_sec = 51,
    full_sentence = '열심히 찍고 있어요',
    answer_word = '있어요',
    base_form = '있다',
    hint_en = 'There is / I have'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = '0pUIc8dLVb4');

-- Video: 0wen4rNxqFc
UPDATE challenges 
SET start_sec = 49,
    end_sec = 53,
    full_sentence = '저는 저번에 줘야 해요',
    answer_word = '해요',
    base_form = '하다',
    hint_en = 'I do'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = '0wen4rNxqFc');

-- Video: 1hoLPo-pyYk
UPDATE challenges 
SET start_sec = 28,
    end_sec = 33,
    full_sentence = '자켓때랑 다르게 스타일링 해봤어요',
    answer_word = '봤어요',
    base_form = '보다',
    hint_en = 'I saw/watched'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = '1hoLPo-pyYk');

-- Video: 1ydl2uTMPGo
UPDATE challenges 
SET start_sec = 3,
    end_sec = 8,
    full_sentence = '그만큼 머리 염색도 했어요',
    answer_word = '했어요',
    base_form = '하다',
    hint_en = 'I did'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = '1ydl2uTMPGo');

-- Video: 3-l7ZHISQnc
UPDATE challenges 
SET start_sec = 24,
    end_sec = 28,
    full_sentence = '바로 진만 싸고 나왔어요',
    answer_word = '왔어요',
    base_form = '오다',
    hint_en = 'I came'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = '3-l7ZHISQnc');

-- Video: 3CpsUB9l77w
UPDATE challenges 
SET start_sec = 41,
    end_sec = 45,
    full_sentence = '공개하지 않은 사진들도 있어요',
    answer_word = '있어요',
    base_form = '있다',
    hint_en = 'There is / I have'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = '3CpsUB9l77w');

-- Video: 3DTj4IYaJmw
UPDATE challenges 
SET start_sec = 102,
    end_sec = 110,
    full_sentence = '파풍인데 저는 꼬리를 좋아해요',
    answer_word = '해요',
    base_form = '하다',
    hint_en = 'I do'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = '3DTj4IYaJmw');

-- Video: 4W-1cVLnoUc
UPDATE challenges 
SET start_sec = 25,
    end_sec = 29,
    full_sentence = '탑다 질 게 많아요',
    answer_word = '많아요',
    base_form = '많다',
    hint_en = 'There are many'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = '4W-1cVLnoUc');

-- Video: 4XLJ8gBoEDA
UPDATE challenges 
SET start_sec = 30,
    end_sec = 33,
    full_sentence = '와 이게 뭐야?',
    answer_word = '뭐야?',
    base_form = NULL,
    hint_en = 'What is it?'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = '4XLJ8gBoEDA');

-- Video: 4ZJpBdDh5Ng
UPDATE challenges 
SET start_sec = 66,
    end_sec = 70,
    full_sentence = '여기 왔어요',
    answer_word = '왔어요',
    base_form = '오다',
    hint_en = 'I came'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = '4ZJpBdDh5Ng');

-- Video: 5Agf-XNQ0hA
UPDATE challenges 
SET start_sec = 75,
    end_sec = 80,
    full_sentence = '근데 좋아요',
    answer_word = '좋아요',
    base_form = '좋다',
    hint_en = 'It is good'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = '5Agf-XNQ0hA');

-- Video: 5FeQADYl2w8
UPDATE challenges 
SET start_sec = 28,
    end_sec = 32,
    full_sentence = '이번에 대박 보면서 있어요',
    answer_word = '있어요',
    base_form = '있다',
    hint_en = 'There is / I have'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = '5FeQADYl2w8');

-- Video: 7sfM0zRmtVU
UPDATE challenges 
SET start_sec = 63,
    end_sec = 67,
    full_sentence = '얘 하루꽃은 커요',
    answer_word = '커요',
    base_form = '크다',
    hint_en = 'It is big'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = '7sfM0zRmtVU');

-- Video: 8fy4A3YKTzw
UPDATE challenges 
SET start_sec = 0,
    end_sec = 4,
    full_sentence = '날씨가 너무 좋아해요',
    answer_word = '해요',
    base_form = '하다',
    hint_en = 'I do'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = '8fy4A3YKTzw');

-- Video: 98f9z_qhqwE
UPDATE challenges 
SET start_sec = 50,
    end_sec = 55,
    full_sentence = '그래서 진짜',
    answer_word = '진짜',
    base_form = NULL,
    hint_en = 'Really!'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = '98f9z_qhqwE');

-- Video: 9VrSvyeR7Aw
UPDATE challenges 
SET start_sec = 15,
    end_sec = 19,
    full_sentence = '너무 고마워요',
    answer_word = '고마워요',
    base_form = '고맙다',
    hint_en = 'Thank you'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = '9VrSvyeR7Aw');

-- Video: A7b9QG7lNT0
UPDATE challenges 
SET start_sec = 5,
    end_sec = 9,
    full_sentence = '아, 먹었어요',
    answer_word = '먹었어요',
    base_form = '먹다',
    hint_en = 'I ate'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'A7b9QG7lNT0');

-- Video: AVGQFeweQW4
UPDATE challenges 
SET start_sec = 64,
    end_sec = 67,
    full_sentence = '지금 나왔어요',
    answer_word = '왔어요',
    base_form = '오다',
    hint_en = 'I came'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'AVGQFeweQW4');

-- Video: AZMZFQLwI1c
UPDATE challenges 
SET start_sec = 21,
    end_sec = 25,
    full_sentence = '.. 아.. 아.. 좀 당황했어요',
    answer_word = '했어요',
    base_form = '하다',
    hint_en = 'I did'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'AZMZFQLwI1c');

-- Video: AvyDuJvXIUg
UPDATE challenges 
SET start_sec = 41,
    end_sec = 46,
    full_sentence = '안 났다! 여기 진짜',
    answer_word = '진짜',
    base_form = NULL,
    hint_en = 'Really!'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'AvyDuJvXIUg');

-- Video: BDCIizloBKg
UPDATE challenges 
SET start_sec = 62,
    end_sec = 68,
    full_sentence = '저는 좋아하면서 진짜',
    answer_word = '진짜',
    base_form = NULL,
    hint_en = 'Really!'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'BDCIizloBKg');

-- Video: ByvjDGtVr9s
UPDATE challenges 
SET start_sec = 8,
    end_sec = 12,
    full_sentence = '빨리 연습했어요',
    answer_word = '했어요',
    base_form = '하다',
    hint_en = 'I did'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'ByvjDGtVr9s');

-- Video: C8gFfYarn4g
UPDATE challenges 
SET start_sec = 48,
    end_sec = 52,
    full_sentence = '불안한 거 진짜',
    answer_word = '진짜',
    base_form = NULL,
    hint_en = 'Really!'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'C8gFfYarn4g');

-- Video: CL4UlVw4kGE
UPDATE challenges 
SET start_sec = 63,
    end_sec = 67,
    full_sentence = '사람이 물수들 잘해요',
    answer_word = '해요',
    base_form = '하다',
    hint_en = 'I do'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'CL4UlVw4kGE');

-- Video: DQovntVrl6Y
UPDATE challenges 
SET start_sec = 24,
    end_sec = 28,
    full_sentence = '습하게 뛰는 건 어려워요',
    answer_word = '어려워요',
    base_form = '어렵다',
    hint_en = 'It is difficult'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'DQovntVrl6Y');

-- Video: E0_WTbwjcYM
UPDATE challenges 
SET start_sec = 51,
    end_sec = 55,
    full_sentence = '댓글 한 힘이 닦쳐야 되신가요',
    answer_word = '가요',
    base_form = '가다',
    hint_en = 'I go'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'E0_WTbwjcYM');

-- Video: ETvhGZGN1yU
UPDATE challenges 
SET start_sec = 56,
    end_sec = 60,
    full_sentence = '제거와의 사랑이 가득해요',
    answer_word = '해요',
    base_form = '하다',
    hint_en = 'I do'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'ETvhGZGN1yU');

-- Video: FhLcWKNDSjM
UPDATE challenges 
SET start_sec = 55,
    end_sec = 58,
    full_sentence = '보다가 제일 많아요',
    answer_word = '많아요',
    base_form = '많다',
    hint_en = 'There are many'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'FhLcWKNDSjM');

-- Video: HdgpH3_mZEs
UPDATE challenges 
SET start_sec = 28,
    end_sec = 35,
    full_sentence = '마지막으로 막히땔일베트 내려가요',
    answer_word = '가요',
    base_form = '가다',
    hint_en = 'I go'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'HdgpH3_mZEs');

-- Video: IALXHYIjFuM
UPDATE challenges 
SET start_sec = 43,
    end_sec = 46,
    full_sentence = '그냥 한번 봐요',
    answer_word = '봐요',
    base_form = '보다',
    hint_en = 'I see/watch'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'IALXHYIjFuM');

-- Video: IM5E6hs3KiA
UPDATE challenges 
SET start_sec = 18,
    end_sec = 23,
    full_sentence = '지금 밀어넣어 날씨가 완전',
    answer_word = '완전',
    base_form = NULL,
    hint_en = 'Totally!'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'IM5E6hs3KiA');

-- Video: IUreR3zoD3s
UPDATE challenges 
SET start_sec = 54,
    end_sec = 57,
    full_sentence = '그립 필요가 없어요',
    answer_word = '없어요',
    base_form = '없다',
    hint_en = 'There is not / I don''t have'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'IUreR3zoD3s');

-- Video: JJwiWgmraoA
UPDATE challenges 
SET start_sec = 8,
    end_sec = 20,
    full_sentence = '주먹밥, 삼겹탕, 핑크스, 진짜',
    answer_word = '진짜',
    base_form = NULL,
    hint_en = 'Really!'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'JJwiWgmraoA');

-- Video: K0bsoA3SEJs
UPDATE challenges 
SET start_sec = 104,
    end_sec = 107,
    full_sentence = '아니, 조명이 좋아요',
    answer_word = '좋아요',
    base_form = '좋다',
    hint_en = 'It is good'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'K0bsoA3SEJs');

-- Video: K29r_Y_6K7M
UPDATE challenges 
SET start_sec = 68,
    end_sec = 73,
    full_sentence = '이거 너무 좋아요',
    answer_word = '좋아요',
    base_form = '좋다',
    hint_en = 'It is good'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'K29r_Y_6K7M');

-- Video: KSYfAq4aoqQ
UPDATE challenges 
SET start_sec = 32,
    end_sec = 37,
    full_sentence = '대중 분들이 진짜',
    answer_word = '진짜',
    base_form = NULL,
    hint_en = 'Really!'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'KSYfAq4aoqQ');

-- Video: LFVtGJ7J70Q
UPDATE challenges 
SET start_sec = 36,
    end_sec = 42,
    full_sentence = '거는 근데 혹시 스피니스가 있어요',
    answer_word = '있어요',
    base_form = '있다',
    hint_en = 'There is / I have'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'LFVtGJ7J70Q');

-- Video: Ls2UanIusQU
UPDATE challenges 
SET start_sec = 16,
    end_sec = 20,
    full_sentence = '날씨가 너무 좋아요',
    answer_word = '좋아요',
    base_form = '좋다',
    hint_en = 'It is good'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'Ls2UanIusQU');

-- Video: Lvqj-dzpC-M
UPDATE challenges 
SET start_sec = 81,
    end_sec = 85,
    full_sentence = '제가 수고 많이 다가왔어요',
    answer_word = '왔어요',
    base_form = '오다',
    hint_en = 'I came'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'Lvqj-dzpC-M');

-- Video: NaWTSZWl1vM
UPDATE challenges 
SET start_sec = 89,
    end_sec = 93,
    full_sentence = '이건 어떤 듯 했어요',
    answer_word = '했어요',
    base_form = '하다',
    hint_en = 'I did'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'NaWTSZWl1vM');

-- Video: NuEdFQi6PUE
UPDATE challenges 
SET start_sec = 116,
    end_sec = 121,
    full_sentence = '내부터 4개월 만에 왔어요',
    answer_word = '왔어요',
    base_form = '오다',
    hint_en = 'I came'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'NuEdFQi6PUE');

-- Video: O130JxSAJcE
UPDATE challenges 
SET start_sec = 67,
    end_sec = 69,
    full_sentence = '이거 뭐야?',
    answer_word = '뭐야?',
    base_form = NULL,
    hint_en = 'What is it?'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'O130JxSAJcE');

-- Video: O1z7Qp7Mye4
UPDATE challenges 
SET start_sec = 82,
    end_sec = 86,
    full_sentence = '근데 이거 아닌거야, 진짜',
    answer_word = '진짜',
    base_form = NULL,
    hint_en = 'Really!'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'O1z7Qp7Mye4');

-- Video: OIT4-nkQVyo
UPDATE challenges 
SET start_sec = 19,
    end_sec = 23,
    full_sentence = '많이 떨리고 잘 해보려고 해요',
    answer_word = '해요',
    base_form = '하다',
    hint_en = 'I do'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'OIT4-nkQVyo');

-- Video: P33ZFQ_Rg0A
UPDATE challenges 
SET start_sec = 97,
    end_sec = 101,
    full_sentence = '근데 나오면 진짜',
    answer_word = '진짜',
    base_form = NULL,
    hint_en = 'Really!'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'P33ZFQ_Rg0A');

-- Video: PmaMzoVA140
UPDATE challenges 
SET start_sec = 67,
    end_sec = 70,
    full_sentence = '아, 좋아요, 좋아요',
    answer_word = '좋아요',
    base_form = '좋다',
    hint_en = 'It is good'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'PmaMzoVA140');

-- Video: QaNFnxee36I
UPDATE challenges 
SET start_sec = 47,
    end_sec = 50,
    full_sentence = '잘 나왔어요',
    answer_word = '왔어요',
    base_form = '오다',
    hint_en = 'I came'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'QaNFnxee36I');

-- Video: R0vTuKNeLOg
UPDATE challenges 
SET start_sec = 19,
    end_sec = 23,
    full_sentence = '지금이 귀엽나서 보고 싶어요',
    answer_word = '보고 싶어요',
    base_form = NULL,
    hint_en = 'I want to see / I miss'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'R0vTuKNeLOg');

-- Video: RJvYHFKknfM
UPDATE challenges 
SET start_sec = 24,
    end_sec = 28,
    full_sentence = '야, 날씨 뭐야?',
    answer_word = '뭐야?',
    base_form = NULL,
    hint_en = 'What is it?'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'RJvYHFKknfM');

-- Video: RPyt55QbOso
UPDATE challenges 
SET start_sec = 102,
    end_sec = 107,
    full_sentence = '이게 햇빛 비추니까 진짜',
    answer_word = '진짜',
    base_form = NULL,
    hint_en = 'Really!'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'RPyt55QbOso');

-- Video: RQA48UpWkN0
UPDATE challenges 
SET start_sec = 60,
    end_sec = 64,
    full_sentence = '진짜 너무 좋았어요',
    answer_word = '좋았어요',
    base_form = '좋다',
    hint_en = 'It was good'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'RQA48UpWkN0');

-- Video: RkUTBJWmu7E
UPDATE challenges 
SET start_sec = 39,
    end_sec = 44,
    full_sentence = '가지고 당근 케이크를 먹고 있어요',
    answer_word = '있어요',
    base_form = '있다',
    hint_en = 'There is / I have'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'RkUTBJWmu7E');

-- Video: SO5WTkqa0OA
UPDATE challenges 
SET start_sec = 14,
    end_sec = 43,
    full_sentence = '자 클럭 진짜',
    answer_word = '진짜',
    base_form = NULL,
    hint_en = 'Really!'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'SO5WTkqa0OA');

-- Video: U-_6zPm_gHI
UPDATE challenges 
SET start_sec = 26,
    end_sec = 29,
    full_sentence = '다 잘렸나봐요',
    answer_word = '봐요',
    base_form = '보다',
    hint_en = 'I see/watch'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'U-_6zPm_gHI');

-- Video: VHvsCju24So
UPDATE challenges 
SET start_sec = 95,
    end_sec = 98,
    full_sentence = '여기서 잘 안 먹었어요',
    answer_word = '먹었어요',
    base_form = '먹다',
    hint_en = 'I ate'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'VHvsCju24So');

-- Video: VmgykqIsjk8
UPDATE challenges 
SET start_sec = 55,
    end_sec = 58,
    full_sentence = '좀 더 해줄까 봐 해, 지금가요',
    answer_word = '가요',
    base_form = '가다',
    hint_en = 'I go'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'VmgykqIsjk8');

-- Video: W-9-keHNwV8
UPDATE challenges 
SET start_sec = 36,
    end_sec = 42,
    full_sentence = '블링크가 진짜 소리 대박',
    answer_word = '대박',
    base_form = NULL,
    hint_en = 'Amazing!'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'W-9-keHNwV8');

-- Video: Z6RQOfY4c84
UPDATE challenges 
SET start_sec = 99,
    end_sec = 103,
    full_sentence = '이 손이 살짝 땡하고 있어요',
    answer_word = '있어요',
    base_form = '있다',
    hint_en = 'There is / I have'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'Z6RQOfY4c84');

-- Video: ZRihDThinJ4
UPDATE challenges 
SET start_sec = 18,
    end_sec = 23,
    full_sentence = '좀 보이는 무대로 구성을 했어요',
    answer_word = '했어요',
    base_form = '하다',
    hint_en = 'I did'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'ZRihDThinJ4');

-- Video: _qYtq8St8jE
UPDATE challenges 
SET start_sec = 46,
    end_sec = 51,
    full_sentence = '네 사랑해요',
    answer_word = '해요',
    base_form = '하다',
    hint_en = 'I do'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = '_qYtq8St8jE');

-- Video: a0R3fQCmBKs
UPDATE challenges 
SET start_sec = 93,
    end_sec = 97,
    full_sentence = '왜 누가 맞췄어요',
    answer_word = '췄어요',
    base_form = '추다',
    hint_en = 'I danced'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'a0R3fQCmBKs');

-- Video: aXM8kesoYJg
UPDATE challenges 
SET start_sec = 24,
    end_sec = 29,
    full_sentence = '이때 유나가 진짜',
    answer_word = '진짜',
    base_form = NULL,
    hint_en = 'Really!'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'aXM8kesoYJg');

-- Video: aZ-PyKFCfoA
UPDATE challenges 
SET start_sec = 47,
    end_sec = 50,
    full_sentence = '그거 없어요',
    answer_word = '없어요',
    base_form = '없다',
    hint_en = 'There is not / I don''t have'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'aZ-PyKFCfoA');

-- Video: bB44S7CVVck
UPDATE challenges 
SET start_sec = 23,
    end_sec = 27,
    full_sentence = '본인들이 더 멋있어요',
    answer_word = '멋있어요',
    base_form = '멋있다',
    hint_en = 'It is cool'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'bB44S7CVVck');

-- Video: bbBGd2PP4vk
UPDATE challenges 
SET start_sec = 97,
    end_sec = 102,
    full_sentence = '쓰는 거 보니까 인기 맞나 봐요',
    answer_word = '봐요',
    base_form = '보다',
    hint_en = 'I see/watch'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'bbBGd2PP4vk');

-- Video: c4My2q8w6BY
UPDATE challenges 
SET start_sec = 46,
    end_sec = 52,
    full_sentence = '카메라에 조금씩 익숙해지고 있어요',
    answer_word = '있어요',
    base_form = '있다',
    hint_en = 'There is / I have'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'c4My2q8w6BY');

-- Video: c5aBG9Warls
UPDATE challenges 
SET start_sec = 107,
    end_sec = 111,
    full_sentence = '이거 진짜 준비했어요',
    answer_word = '했어요',
    base_form = '하다',
    hint_en = 'I did'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'c5aBG9Warls');

-- Video: epG7pyre7_I
UPDATE challenges 
SET start_sec = 34,
    end_sec = 39,
    full_sentence = '딘가를 음시하는 장면 찍어 봤어요',
    answer_word = '봤어요',
    base_form = '보다',
    hint_en = 'I saw/watched'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'epG7pyre7_I');

-- Video: fIbuWN_gDsc
UPDATE challenges 
SET start_sec = 19,
    end_sec = 23,
    full_sentence = '아 진짜 진짜',
    answer_word = '진짜',
    base_form = NULL,
    hint_en = 'Really!'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'fIbuWN_gDsc');

-- Video: fRXd-juZcoE
UPDATE challenges 
SET start_sec = 19,
    end_sec = 23,
    full_sentence = '너무 사랑해요',
    answer_word = '해요',
    base_form = '하다',
    hint_en = 'I do'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'fRXd-juZcoE');

-- Video: fT43u9OV13U
UPDATE challenges 
SET start_sec = 40,
    end_sec = 44,
    full_sentence = '진짜 많아요',
    answer_word = '많아요',
    base_form = '많다',
    hint_en = 'There are many'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'fT43u9OV13U');

-- Video: fbeCRDQbcII
UPDATE challenges 
SET start_sec = 98,
    end_sec = 101,
    full_sentence = '진짜 사람 진짜',
    answer_word = '진짜',
    base_form = NULL,
    hint_en = 'Really!'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'fbeCRDQbcII');

-- Video: fl77Iivka8o
UPDATE challenges 
SET start_sec = 91,
    end_sec = 96,
    full_sentence = '사진도 너무 잘 나왔어요',
    answer_word = '왔어요',
    base_form = '오다',
    hint_en = 'I came'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'fl77Iivka8o');

-- Video: g-Rr48cPSjs
UPDATE challenges 
SET start_sec = 83,
    end_sec = 87,
    full_sentence = '이 구독 뭐야',
    answer_word = '뭐야',
    base_form = NULL,
    hint_en = 'What is it?'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'g-Rr48cPSjs');

-- Video: g7rZdj4m2H0
UPDATE challenges 
SET start_sec = 81,
    end_sec = 85,
    full_sentence = '준비해서는 없어요',
    answer_word = '없어요',
    base_form = '없다',
    hint_en = 'There is not / I don''t have'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'g7rZdj4m2H0');

-- Video: gvYWk91yUX8
UPDATE challenges 
SET start_sec = 34,
    end_sec = 39,
    full_sentence = '내장이 걱정이 안 커요',
    answer_word = '커요',
    base_form = '크다',
    hint_en = 'It is big'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'gvYWk91yUX8');

-- Video: h2usY942-7c
UPDATE challenges 
SET start_sec = 32,
    end_sec = 36,
    full_sentence = '생각보다 어려웠어요',
    answer_word = '어려웠어요',
    base_form = '어렵다',
    hint_en = 'It was difficult'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'h2usY942-7c');

-- Video: h6I20rdCOqE
UPDATE challenges 
SET start_sec = 26,
    end_sec = 30,
    full_sentence = '오늘 소상으로 왔어요',
    answer_word = '왔어요',
    base_form = '오다',
    hint_en = 'I came'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'h6I20rdCOqE');

-- Video: hSYoYsrcG-s
UPDATE challenges 
SET start_sec = 93,
    end_sec = 99,
    full_sentence = '진짜 학생 시절 때 진짜',
    answer_word = '진짜',
    base_form = NULL,
    hint_en = 'Really!'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'hSYoYsrcG-s');

-- Video: i3cBMa0-Ob8
UPDATE challenges 
SET start_sec = 63,
    end_sec = 66,
    full_sentence = '닭갈비 집이 진짜 많아요',
    answer_word = '많아요',
    base_form = '많다',
    hint_en = 'There are many'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'i3cBMa0-Ob8');

-- Video: i7pmr6MVtNY
UPDATE challenges 
SET start_sec = 29,
    end_sec = 32,
    full_sentence = '여기 새론선 나와요',
    answer_word = '와요',
    base_form = '오다',
    hint_en = 'I come'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'i7pmr6MVtNY');

-- Video: idRHvXTIeTc
UPDATE challenges 
SET start_sec = 78,
    end_sec = 82,
    full_sentence = '오, 감사합니다',
    answer_word = '감사합니다',
    base_form = '감사하다',
    hint_en = 'Thank you'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'idRHvXTIeTc');

-- Video: ik0bEWDtXCQ
UPDATE challenges 
SET start_sec = 41,
    end_sec = 45,
    full_sentence = '한번만 더 해요',
    answer_word = '해요',
    base_form = '하다',
    hint_en = 'I do'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'ik0bEWDtXCQ');

-- Video: iwhRN-JDKwo
UPDATE challenges 
SET start_sec = 51,
    end_sec = 56,
    full_sentence = '봄이와 잠깐 선택하러 왔어요',
    answer_word = '왔어요',
    base_form = '오다',
    hint_en = 'I came'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'iwhRN-JDKwo');

-- Video: k4KBtZifDpY
UPDATE challenges 
SET start_sec = 43,
    end_sec = 49,
    full_sentence = '저번 이야기 해야 해요',
    answer_word = '해요',
    base_form = '하다',
    hint_en = 'I do'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'k4KBtZifDpY');

-- Video: kPxsXslJvGU
UPDATE challenges 
SET start_sec = 60,
    end_sec = 63,
    full_sentence = '달려있는 게 더 많아요',
    answer_word = '많아요',
    base_form = '많다',
    hint_en = 'There are many'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'kPxsXslJvGU');

-- Video: lPuLM5F4GcM
UPDATE challenges 
SET start_sec = 60,
    end_sec = 64,
    full_sentence = '니까 저는 8신 거 어떻게 해요',
    answer_word = '해요',
    base_form = '하다',
    hint_en = 'I do'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'lPuLM5F4GcM');

-- Video: ly0xQY2AADw
UPDATE challenges 
SET start_sec = 56,
    end_sec = 61,
    full_sentence = '조금 이상해요',
    answer_word = '해요',
    base_form = '하다',
    hint_en = 'I do'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'ly0xQY2AADw');

-- Video: mM_y4-7MuPM
UPDATE challenges 
SET start_sec = 30,
    end_sec = 34,
    full_sentence = '오우 뭐예요?',
    answer_word = '뭐예요?',
    base_form = NULL,
    hint_en = 'What is it?'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'mM_y4-7MuPM');

-- Video: mWL3oSkEfbo
UPDATE challenges 
SET start_sec = 80,
    end_sec = 84,
    full_sentence = '너무 좋아요',
    answer_word = '좋아요',
    base_form = '좋다',
    hint_en = 'It is good'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'mWL3oSkEfbo');

-- Video: nByx9J-VL7o
UPDATE challenges 
SET start_sec = 11,
    end_sec = 17,
    full_sentence = '유배기나 인기가요',
    answer_word = '가요',
    base_form = '가다',
    hint_en = 'I go'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'nByx9J-VL7o');

-- Video: oFTaPaG3C-I
UPDATE challenges 
SET start_sec = 71,
    end_sec = 76,
    full_sentence = '살이 좀 빠지는 것 같기도 해요',
    answer_word = '해요',
    base_form = '하다',
    hint_en = 'I do'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'oFTaPaG3C-I');

-- Video: pLVAzxIR6F4
UPDATE challenges 
SET start_sec = 23,
    end_sec = 27,
    full_sentence = '너무 언제 있어요',
    answer_word = '있어요',
    base_form = '있다',
    hint_en = 'There is / I have'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'pLVAzxIR6F4');

-- Video: piS2sDPTwho
UPDATE challenges 
SET start_sec = 34,
    end_sec = 41,
    full_sentence = '딱 의상을 봤는데 완전',
    answer_word = '완전',
    base_form = NULL,
    hint_en = 'Totally!'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'piS2sDPTwho');

-- Video: qmSKhdRLdKY
UPDATE challenges 
SET start_sec = 56,
    end_sec = 60,
    full_sentence = '힙하고 좀 샌누를 해요',
    answer_word = '해요',
    base_form = '하다',
    hint_en = 'I do'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'qmSKhdRLdKY');

-- Video: rJJFFagT81Y
UPDATE challenges 
SET start_sec = 59,
    end_sec = 63,
    full_sentence = '다음 주부터는 진짜',
    answer_word = '진짜',
    base_form = NULL,
    hint_en = 'Really!'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'rJJFFagT81Y');

-- Video: rpoMDaxSkxQ
UPDATE challenges 
SET start_sec = 37,
    end_sec = 41,
    full_sentence = '상세가 불어봤어요',
    answer_word = '봤어요',
    base_form = '보다',
    hint_en = 'I saw/watched'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'rpoMDaxSkxQ');

-- Video: skCkIMRwAeo
UPDATE challenges 
SET start_sec = 4,
    end_sec = 10,
    full_sentence = '가 데뷔하고 첫 단발을 도전해요',
    answer_word = '해요',
    base_form = '하다',
    hint_en = 'I do'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'skCkIMRwAeo');

-- Video: tBvrzORGT2Q
UPDATE challenges 
SET start_sec = 27,
    end_sec = 30,
    full_sentence = '하나 뭐 뭐야?',
    answer_word = '뭐야?',
    base_form = NULL,
    hint_en = 'What is it?'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'tBvrzORGT2Q');

-- Video: temQH0FdLF4
UPDATE challenges 
SET start_sec = 59,
    end_sec = 63,
    full_sentence = '에어팍 끼고 있어요',
    answer_word = '있어요',
    base_form = '있다',
    hint_en = 'There is / I have'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'temQH0FdLF4');

-- Video: u2BZ6asoekg
UPDATE challenges 
SET start_sec = 39,
    end_sec = 46,
    full_sentence = '촬영을 하게 됐는데 여기가 진짜',
    answer_word = '진짜',
    base_form = NULL,
    hint_en = 'Really!'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'u2BZ6asoekg');

-- Video: uEOgLDV3lck
UPDATE challenges 
SET start_sec = 43,
    end_sec = 49,
    full_sentence = '몽도반도 건강해야 진짜',
    answer_word = '진짜',
    base_form = NULL,
    hint_en = 'Really!'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'uEOgLDV3lck');

-- Video: vnenDyMdhB4
UPDATE challenges 
SET start_sec = 101,
    end_sec = 105,
    full_sentence = '진짜 여기 목돌이 나와요',
    answer_word = '와요',
    base_form = '오다',
    hint_en = 'I come'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'vnenDyMdhB4');

-- Video: vxXAbY1ouXU
UPDATE challenges 
SET start_sec = 9,
    end_sec = 13,
    full_sentence = '너무 고생했어요',
    answer_word = '했어요',
    base_form = '하다',
    hint_en = 'I did'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'vxXAbY1ouXU');

-- Video: xBt4pjo8FLM
UPDATE challenges 
SET start_sec = 33,
    end_sec = 36,
    full_sentence = '네, 감사합니다',
    answer_word = '감사합니다',
    base_form = '감사하다',
    hint_en = 'Thank you'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'xBt4pjo8FLM');

-- Video: xQNDhPUFd1k
UPDATE challenges 
SET start_sec = 27,
    end_sec = 32,
    full_sentence = '그러니까 지금 좀 너무 슬퍼요',
    answer_word = '슬퍼요',
    base_form = '슬프다',
    hint_en = 'I am sad'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'xQNDhPUFd1k');

-- Video: xvns7MYW72U
UPDATE challenges 
SET start_sec = 20,
    end_sec = 23,
    full_sentence = '제가 썼어요',
    answer_word = '썼어요',
    base_form = '쓰다',
    hint_en = 'I wrote'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'xvns7MYW72U');

-- Video: xyZQM1pQbJI
UPDATE challenges 
SET start_sec = 0,
    end_sec = 4,
    full_sentence = '영상 할 생각을 pues 말해요',
    answer_word = '해요',
    base_form = '하다',
    hint_en = 'I do'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'xyZQM1pQbJI');

-- Video: yQNZKV4lStQ
UPDATE challenges 
SET start_sec = 12,
    end_sec = 14,
    full_sentence = '막 다 봤어요',
    answer_word = '봤어요',
    base_form = '보다',
    hint_en = 'I saw/watched'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'yQNZKV4lStQ');

-- Video: ytGMTGIFkyE
UPDATE challenges 
SET start_sec = 97,
    end_sec = 100,
    full_sentence = '입기 왔어요',
    answer_word = '왔어요',
    base_form = '오다',
    hint_en = 'I came'
WHERE content_id = (SELECT id FROM contents WHERE youtube_id = 'ytGMTGIFkyE');
