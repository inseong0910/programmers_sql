# 재구매가 일어난 상품과 회원 리스트 구하기
# https://school.programmers.co.kr/learn/courses/30/lessons/131536 
# 주요 개념 : group by, having, 재구매는 count(product)가 2이상이다.

SELECT user_id, product_id
from online_sale
group by user_id, product_id
having count(product_id) > 1 
order by user_id asc, product_id desc

# 개인 문제 풀이
# https://kitsch2023.tistory.com/210 
