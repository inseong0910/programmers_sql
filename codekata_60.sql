# 년, 월, 성별 별 상품 구매 회원 수 구하기
# https://school.programmers.co.kr/learn/courses/30/lessons/131532
# 주요 개념 : 날짜함수, distinct, inner join, null

SELECT year(b.sales_date) as YEAR, month(b.sales_date) as MONTH, a.gender as GENDER, count(distinct a.user_id) as USERS
from user_info a inner join online_sale b on a.user_id = b.user_id 
where a.gender is not null
group by YEAR, MONTH, GENDER
order by YEAR, MONTH, GENDER

# 개인 문제 풀이
# https://kitsch2023.tistory.com/229 
