# 저자 별 카테고리 별 매출액 집계하기
# https://school.programmers.co.kr/learn/courses/30/lessons/144856 
# 주요 개념 : 테이블 3개 left join 

SELECT a.author_id, b.author_name, a.category, sum(c.sales*a.price) as total_sales
from book a left join author b on a.author_id = b.author_id left join book_sales c on a.book_id = c.book_id
where sales_date like '2022-01%'
group by a.author_id, b.author_name, a.category
order by a.author_id asc, a.category desc 

# 개인 문제 풀이
# https://kitsch2023.tistory.com/258 
