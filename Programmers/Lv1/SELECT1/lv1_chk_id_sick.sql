
/*
- Table: ANIMAL_INS
- Goal: 모든 동물의 id와 이름 조회, 결과는 ANIMAL_ID 순
- 핵심 컬럼: ANIMAL_ID, NAME
*/
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION IN('Sick')
ORDER BY ANIMAL_ID ASC

/*
ASC는 기본값으로 생략가능,
WHERE 컬럼 IN('문자열')
*/