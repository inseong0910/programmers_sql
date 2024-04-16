# 대여 기록이 존재하는 자동차 리스트 구하기 
# https://school.programmers.co.kr/learn/courses/30/lessons/157341 
# 주요 개념 : inner join, 날짜함수, distinct 

SELECT distinct(a.car_id) 
from car_rental_company_car a inner join car_rental_company_rental_history b on a.car_id = b.car_id 
where (a.car_type = '세단') and (month(b.start_date)=10)
order by a.car_id desc 

# 개인 문제 풀이 과정 
# https://kitsch2023.tistory.com/195
