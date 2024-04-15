# 3월에 태어난 여성 회원 목록 출력하기 
# https://school.programmers.co.kr/learn/courses/30/lessons/131120 
# 주요 개념 : date_format(), is null 

SELECT member_id, member_name, gender, date_format(date_of_birth, '%Y-%m-%d') as DATE_OF_BIRTH
from member_profile
where (month(date_of_birth) = 03) and (gender = 'W') and (TLNO is not null)
order by member_id 

# 개인 문제 풀이 과정 
# https://kitsch2023.tistory.com/192 
