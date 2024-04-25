# 과일로 만든 아이스크림 고르기
# https://school.programmers.co.kr/learn/courses/30/lessons/133025
# 주요 개념 : inner join, where 조건 여러 개 설정(and) 

SELECT a.flavor
from first_half a inner join icecream_info b on a.flavor=b.flavor
where (a.total_order >= 3000) and (b.ingredient_type = "fruit_based") 
order by a.total_order desc 

# 개인 문제 풀이 과정
# https://kitsch2023.tistory.com/208 
