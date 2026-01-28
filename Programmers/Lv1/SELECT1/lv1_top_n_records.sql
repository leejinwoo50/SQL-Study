/*
- Table: ANIMAL_INS
- Goal: 가장 먼저 들어온 동물의 이름을 조회(하나만)
- 핵심 컬럼: NAME
*/
SELECT NAME
FROM ANIMAL_INS
ORDER BY DATETIME
LIMIT 1