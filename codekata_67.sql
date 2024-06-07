# 주문량이 많은 아이스크림들 조회하기
# https://school.programmers.co.kr/learn/courses/30/lessons/133027 
# 주요 개념 : 서브쿼리, union all 

select flavor
from (
    select flavor, sum(total_order) as TOTAL_ORDERS
    from (
        SELECT flavor, total_order from july
        union all
        select flavor, total_order from first_half
        ) as combined_table 
    group by flavor
    order by total_orders desc
    ) as top_flavors 
limit 3;  


# 개인 문제 풀이 과정
# https://kitsch2023.tistory.com/251 
