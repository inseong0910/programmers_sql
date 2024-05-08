# 자동차 대여 기록에서 대여중 / 대여 가능 여부 구분하기
# https://school.programmers.co.kr/learn/courses/30/lessons/157340#qna 
# 주요 개념 : 날짜함수(date_format), 집계함수 max

SELECT car_id, max(case when '2022-10-16' between date_format(start_date, '%Y-%m-%d') and date_format(end_date, '%Y-%m-%d') THEN "대여중"
            ELSE "대여 가능" end) as 'AVAILABILITY'
from car_rental_company_rental_history
group by car_id
order by car_id desc 

# 개인 문제 풀이 과정
# https://kitsch2023.tistory.com/227 
