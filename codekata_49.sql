# 식품분류별 가장 비싼 식품의 정보 조회하기
# https://school.programmers.co.kr/learn/courses/30/lessons/131116 
# 주요 개념 : 서브쿼리 

SELECT category, price as MAX_PRICE, product_name
from food_product 
where price in (select max(price) from food_product group by category) and category in('과자', '국', '김치', '식용유')
order by price desc 

# 개인 문제 풀이
# https://kitsch2023.tistory.com/202 
