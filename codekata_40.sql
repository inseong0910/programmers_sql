# 루시와 엘라 찾기 
# https://school.programmers.co.kr/learn/courses/30/lessons/59046 
# 주요 내용 : where ~ in (   ) 구문
# 비고 : 내가 제출한 쿼리가 정답이긴 한데 더욱 효율적으로 작성한 쿼리가 있어서 추가로 검색했음 

# 내가 최초 작성한 코드 
select animal_id, name, sex_upon_intake
from animal_ins 
where name = "Lucy" or name = "Ella" or name = "Pickle" or name = "Sabrina" or name = "Mitty"
order by animal_id 

# 수정한 코드 
select animal_id, name, sex_upon_intake
from animal_ins 
where name in ('Lucy','Ella','Pickle','Rogan','Sabrina','Mitty')
order by animal_id

# 변경된 부분 : where 조건문 
# 개인 문제풀이 과정 : https://kitsch2023.tistory.com/173 
