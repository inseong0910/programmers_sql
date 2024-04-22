# 5월 식품들의 총매출 조회하기
# https://school.programmers.co.kr/learn/courses/30/lessons/131117 
# 주요 개념 : 집계함수sum, where like

select a.product_id, a.product_name, sum((a.price)*(b.amount)) as TOTAL_SALES
from food_product a inner join food_order b on a.product_id = b.product_id
where b.produce_date like '2022-05%' 
group by product_id
order by TOTAL_SALES desc, product_id asc

# 개인 문제 풀이 
# https://kitsch2023.tistory.com/203 

