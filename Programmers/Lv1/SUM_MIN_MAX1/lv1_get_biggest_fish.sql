/*
- Table: FISH_INFO
- Goal: 테이블에서 잡은 물고기 중 가장 큰 물고기의 길이를 'cm' 를 붙여 출력하는 SQL 문을 작성
- 핵심 컬럼: LENGTH
*/
SELECT CONCAT(MAX(LENGTH),'cm') MAX_LENGTH
FROM FISH_INFO
/*
CONCAT(A,B, ...) : 여러 개의 문자열을 이어붙여 하나의 문자열로 반환
숫자,날짜 등을 모두 문자열 변환 후 결합함
인자 중 NULL값이 존재 시, NULL값으로 반환
*/