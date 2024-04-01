# 성분으로 구분한 아이스크림 총 주문량
# https://school.programmers.co.kr/learn/courses/30/lessons/133026 
# 주요 개념 : 조인, 집계함수 

select b.ingredient_type, sum(a.total_order) as TOTAL_ORDER
from first_half a inner join icecream_info b on a.flavor = b.flavor
group by ingredient_type 
order by total_order asc 

# 개인 문제풀이 과정 
# https://kitsch2023.tistory.com/169 
