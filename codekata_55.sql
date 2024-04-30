# 조건에 맞는 사용자 정보 조회하기
# https://school.programmers.co.kr/learn/courses/30/lessons/164670 
# 주요 내용 : inner join, 문자열 함수 

select b.USER_ID, b.NICKNAME, concat(b.CITY, ' ', b.STREET_ADDRESS1, ' ', b.STREET_ADDRESS2) as "전체주소", concat(left(b.TLNO, 3), '-', mid(b.TLNO, 4, 4), '-', right(b.TLNO, 4)) as "전화번호"
from USED_GOODS_BOARD a inner join USED_GOODS_USER b on a.WRITER_ID = b.USER_ID
group by a.WRITER_ID having count(a.WRITER_ID) >= 3
ORDER BY B.user_id DESC 

# 개인 문제 풀이 과정 : https://kitsch2023.tistory.com/217 
