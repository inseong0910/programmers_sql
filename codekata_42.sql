# 평균 일일 대여 요금 구하기
# https://school.programmers.co.kr/learn/courses/30/lessons/151136 
# 주요 내용 : group by, avg(), round(,0) 

SELECT round(avg(daily_fee), 0) as AVERAGE_FEE
from car_rental_company_car 
where car_type = 'SUV'
group by car_type 

# 개인 문제풀이 기록
# https://kitsch2023.tistory.com/181 
