# 취소되지 않은 진료 예약 조회하기
# https://school.programmers.co.kr/learn/courses/30/lessons/132204 
# 주요 개념 : 3개 조인

SELECT AP.APNT_NO, P.PT_NAME, AP.PT_NO, AP.MCDP_CD, D.DR_NAME, AP.APNT_YMD
FROM APPOINTMENT AP 
JOIN DOCTOR D ON D.DR_ID = AP.MDDR_ID
JOIN PATIENT P ON P.PT_NO = AP.PT_NO
WHERE AP.APNT_CNCL_YMD IS NULL AND AP.MCDP_CD = 'CS' AND AP.APNT_YMD LIKE '2022-04-13%'
ORDER BY AP.APNT_YMD 

# 개인 문제 풀이
# https://kitsch2023.tistory.com/222 
