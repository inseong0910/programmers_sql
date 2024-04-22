# 없어진 기록 찾기 
# https://school.programmers.co.kr/learn/courses/30/lessons/59042 
# 주요 개념 : left outer join

SELECT OUTS.ANIMAL_ID, OUTS.NAME
FROM ANIMAL_OUTS OUTS
LEFT OUTER JOIN ANIMAL_INS INS
ON OUTS.ANIMAL_ID = INS.ANIMAL_ID
WHERE INS.ANIMAL_ID is NULL
ORDER BY OUTS.ANIMAL_ID 

# 개인 문제 풀이 과정
# https://kitsch2023.tistory.com/205 
