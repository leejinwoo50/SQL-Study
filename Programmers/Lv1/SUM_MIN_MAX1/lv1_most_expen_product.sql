/*
- Table: PRODUCT
- Goal: PRODUCT 테이블에서 판매 중인 상품 중 가장 높은 판매가를 출력하는 SQL문을 작성
        이때 컬럼명은 MAX_PRICE
- 핵심 컬럼: PRICE
*/
SELECT MAX(PRICE) MAX_PRICE
FROM PRODUCT

/*
SELECT PRICE
FROM PRODUCT
ORDER BY PRICE DESC
LIMIT 1
로 만들 수 있지만,

MAX라는 문법으로 간단히 표현가능
MAX(컬럼) : 해당 컬럼의 최댓값 찾기
*/