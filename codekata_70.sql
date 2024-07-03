# 그룹별 조건에 맞는 식당 목록 출력하기
# https://school.programmers.co.kr/learn/courses/30/lessons/131124
# 주요 개념 : 서브쿼리, date_format() 

SELECT a.member_name as MEMBER_NAME, b.review_text as REVIEW_TEXT, date_format(b.review_date, '%Y-%m-%d') as REVIEW_DATE
from member_profile a inner join rest_review b on a.member_id = b.member_id 
where a.member_id = (select member_id
                     from rest_review
                     group by member_id
                     order by count(member_id) desc limit 1)
order by review_date asc, review_text asc

# 개인 문제 풀이 과정
# https://kitsch2023.tistory.com/263 
