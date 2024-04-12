# 가격대별 상품개수 구하기 
# https://school.programmers.co.kr/learn/courses/30/lessons/131530 
# 주요 개념 : case when end , truncate() 

SELECT (CASE
       WHEN PRICE < 10000 THEN 0
       ELSE TRUNCATE(PRICE, -4)
       END) as PRICE_GROUP, COUNT(PRODUCT_ID) as PRODUCTS
from product
group by price_group
order by price_group asc 

# 개인 문제 풀이 과정 
# https://kitsch2023.tistory.com/187 
