# 조건에 맞는 도서 리스트 출력하기 
# https://school.programmers.co.kr/learn/courses/30/lessons/144853 
# 주요 개념 : year() , date_format() 

select book_id, date_format(published_date, '%Y-%m-%d') as PUBLISHED_DATE
from book
where (year(published_date) = 2021) and (category = "인문")
order by published_date asc 

# 개인 문제풀이 과정 : https://kitsch2023.tistory.com/176 
