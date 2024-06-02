# 조회수가 가장 많은 중고거래 게시판의 첨부파일 조회하기
# https://school.programmers.co.kr/learn/courses/30/lessons/164671 
# 주요 개념 : 서브쿼리, concat 

SELECT concat('/home/grep/src/', a.board_id, '/', b.file_id, b.file_name, b.file_ext) as FILE_PATH
from used_goods_board a inner join used_goods_file b on a.board_id = b.board_id 
where a.board_id = (
                    select board_id
                    from used_goods_board
                    order by views desc
                    limit 1
                    )
order by b.file_id desc; 

# 개인 문제 풀이
# https://kitsch2023.tistory.com/245 
