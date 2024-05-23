# 자동차 평균 대여 기간 구하기 
# https://school.programmers.co.kr/learn/courses/30/lessons/157342
# 주요 개념 : round(), datediff(), group by, having 

SELECT car_id, round(avg(datediff(END_DATE, START_DATE)+1), 1) as average_duration
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by car_id
having average_duration >= 7
order by average_duration desc, car_id desc 

# 개인 문제 풀이 과정
# https://kitsch2023.tistory.com/235 
