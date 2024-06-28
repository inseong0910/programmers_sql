# 대여 횟수가 많은 자동차들의 월별 대여 횟수 구하기
# https://school.programmers.co.kr/learn/courses/30/lessons/151139
# 주요 개념 : 서브쿼리, having, 날짜함수 

SELECT month(start_date) as MONTH, car_id, count(history_id) as RECORDS
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
where start_date>="2022-08-01" and start_date<="2022-10-31" and car_id in
    (
    select car_id 
    from car_rental_company_rental_history
    where start_date>="2022-08-01" and start_date<="2022-10-31"
    group by car_id having count(history_id)>4
    )
group by month, car_id having records > 0 
order by month asc, car_id desc

# 개인 문제 풀이
# https://kitsch2023.tistory.com/259 
