/*
- Table: FISH_INFO 
- Goal: 테이블에서 2021년도에 잡은 물고기 수를 출력하는 SQL 문을 작성, 컬럼명은 'FISH_COUNT' 로 지정
- 핵심 컬럼: TIME
*/
SELECT COUNT(TIME) FISH_COUNT
FROM FISH_INFO
WHERE TIME LIKE('2021%')