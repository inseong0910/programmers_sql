# 헤비 유저가 소유한 장소
# https://school.programmers.co.kr/learn/courses/30/lessons/77487
# 주요 개념 : 서브쿼리 

select * from places 
where host_id in
(
SELECT host_id
from places
group by host_id
having count(id) >= 2 
)
order by id asc  

# 개인 문제 풀이
# https://kitsch2023.tistory.com/238 
