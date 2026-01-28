/*
- Table: ONLINE_SALE
- Goal: 재구매한 회원 ID와 재구매한 상품 ID를 출력 (회원 ID를 기준으로 오름차순, 회원 ID가 같다면 상품 ID를 기준으로 내림차순)
- 핵심 컬럼: USER_ID , PRODUCT_ID
*/
SELECT USER_ID , PRODUCT_ID
FROM ONLINE_SALE
GROUP BY USER_ID, PRODUCT_ID
HAVING COUNT(*) > 1
ORDER BY USER_ID ASC, PRODUCT_ID DESC;

/*
HAVING : 묶인 그룹에 대한 조건 부여
COUNT(매개) : 집계, (*)는 전체를 뜻함
DESC : 내림차순
*/