# 우유와 요거트가 담긴 장바구니 
# https://school.programmers.co.kr/learn/courses/30/lessons/62284 
# 주요 개념 : group by, having, distinct 

SELECT cart_id, name 
from cart_products 
where name in ('Milk','Yogurt')
group by cart_id 
HAVING COUNT(DISTINCT NAME)=2 

# 개인 문제 풀이
# https://kitsch2023.tistory.com/241 
