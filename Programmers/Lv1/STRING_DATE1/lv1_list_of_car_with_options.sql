/*
- Table: CAR_RENTAL_COMPANY_RENTAL_HISTORY 
- Goal: 테이블에서 '네비게이션' 옵션이 포함된 자동차 리스트를 출력하는 SQL문을 작성
        결과는 자동차 ID를 기준으로 내림차순
- 핵심 컬럼: OPTIONS
*/
SELECT CAR_ID,CAR_TYPE,DAILY_FEE,OPTIONS
FROM CAR_RENTAL_COMPANY_CAR 
WHERE OPTIONS LIKE('%네비%')
ORDER BY CAR_ID DESC
