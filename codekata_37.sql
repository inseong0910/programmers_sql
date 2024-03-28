# 조건에 맞는 도서와 저자 리스트 출력하기
# https://school.programmers.co.kr/learn/courses/30/lessons/144854 
# 주요 내용 : date_format() 함수, left join 

select a.book_id, b.author_name, date_format(published_date, '%Y-%m-%d') as published_date 
from book a left join author b on a.author_id = b.author_id
where a.category = '경제'
order by a.published_date asc 

# 개인 문제풀이 과정 
# https://kitsch2023.tistory.com/162 
