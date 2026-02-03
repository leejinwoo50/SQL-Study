/*
- Table: ANIMAL_INS
- Goal: 가장 최근에 들어온 동물은 언제 들어왔는지 조회
- 핵심 컬럼: DATETIME
*/
SELECT MAX(DATETIME)
FROM ANIMAL_INS