# 조건에 맞는 사용자와 총 거래금액 조회하기 
# https://school.programmers.co.kr/learn/courses/30/lessons/164668 
# 주요 개념 : 조인, 집계함수, having 

SELECT b.user_id, b.nickname, sum(a.price) as total_sales 
from used_goods_board a inner join used_goods_user b on a.writer_id = b.user_id
where a.status = "done"
group by b.user_id having total_sales >= 700000
order by total_sales asc 

# 개인 문제 풀이 과정 기록
# https://kitsch2023.tistory.com/185 
