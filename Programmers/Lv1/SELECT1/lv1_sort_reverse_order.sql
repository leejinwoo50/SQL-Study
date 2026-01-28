/*
- Table: ANIMAL_INS
- Goal: 모든 동물의 이름과 보호 시작일 조회, 결과는 ANIMAL_ID 역순
- 핵심 컬럼: NAME, DATETIME
*/

SELECT NAME, DATETIME
FROM ANIMAL_INS
ORDER BY ANIMAL_ID DESC

/*
DESC : 내림차순
*/