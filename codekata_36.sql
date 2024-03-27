# 보호소에서 중성화한 동물
# https://school.programmers.co.kr/learn/courses/30/lessons/59045#fn1 
# 이 문제에서 배운 것 : 데이터에서 일부를 포함하는 데이터를 조회할 때 like ~% 를 사용한다.

select a.animal_id, a.animal_type, a.name
from animal_ins a inner join animal_outs b 
on a.animal_id = b.animal_id
where a.sex_upon_intake like 'intact%'
and (b.sex_upon_outcome like 'spayed%' or b.sex_upon_outcome like 'Neutered%') 

# 개인 문제풀이 과정
# https://kitsch2023.tistory.com/160 
