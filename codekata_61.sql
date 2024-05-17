# 서울에 위치한 식당 목록 출력하기
# https://school.programmers.co.kr/learn/courses/30/lessons/131118 
# 주요 개념 : inner join, round 함수, group by, order by 

SELECT a.rest_id, a.rest_name, a.food_type, a.favorites, a.address, round(avg(b.review_score), 2) as SCORE
from rest_info a inner join rest_review b on a.rest_id = b.rest_id
group by a.rest_id having a.address like '서울%'
order by SCORE desc, a.favorites desc 

# 개인 문제 풀이
# https://kitsch2023.tistory.com/231 
