# 자동차 대여 기록에서 장기/단기 대여 구분하기
# https://school.programmers.co.kr/learn/courses/30/lessons/151138 
# 주요 개념 : date_format(), datediff(), 날짜 차이 계산 시 +1 

SELECT history_id, 
       car_id, 
       date_format(start_date, '%Y-%m-%d') as START_DATE, 
       date_format(end_date, '%Y-%m-%d') as END_DATE,
       case when datediff(end_date, start_date) + 1 >= 30 then "장기 대여"
       else "단기 대여" end as RENT_TYPE
from car_rental_company_rental_history 
where start_date between '2022-09-01' and '2022-09-30'
order by history_id desc  

# 개인 문제 풀이 과정
# https://kitsch2023.tistory.com/233 
