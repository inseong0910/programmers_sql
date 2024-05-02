# 조건에 부합하는 중고거래 상태 조회하기
# https://school.programmers.co.kr/learn/courses/30/lessons/164672 
# 주요 개념 : case when 구문

SELECT board_id, writer_id, title, price,
       case when status = 'SALE' then '판매중'
            when status = 'RESERVED' then '예약중'
            else '거래완료'
       end as STATUS
from used_goods_board
where created_date = '2022-10-05'
order by board_id desc 

# 개인 문제 풀이
# https://kitsch2023.tistory.com/221 
