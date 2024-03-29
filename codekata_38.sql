# 조건별로 분류하여 주문상태 출력하기
# https://school.programmers.co.kr/learn/courses/30/lessons/131113 
# 주요 내용 : date_format(), case when end as 

SELECT order_id, product_id, date_format(out_date, '%Y-%m-%d'),
       case when out_date <= '2022-05-01' then '출고완료'
            when out_date > '2022-05-01' then '출고대기'
            else '출고미정' end as '출고여부'
from food_order 
order by order_id asc  



  
# 개인 문제풀이 과정 
https://kitsch2023.tistory.com/166
