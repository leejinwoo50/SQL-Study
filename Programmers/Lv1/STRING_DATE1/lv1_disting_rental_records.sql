/*
- Table: CAR_RENTAL_COMPANY_RENTAL_HISTORY 
- Goal: 테이블에서 대여 시작일이 2022년 9월에 속하는 대여 기록에 대해서 
        대여 기간이 30일 이상이면 '장기 대여' 그렇지 않으면 '단기 대여' 로 표시하는 컬럼(컬럼명: RENT_TYPE)을 추가하여 대여기록을 출력하는 SQL문을 작성
        과는 대여 기록 ID를 기준으로 내림차순 
- 핵심 컬럼: END_DATE,START_DATE
*/
SELECT HISTORY_ID,CAR_ID,
DATE_FORMAT(START_DATE,'%Y-%m-%d') START_DATE,
DATE_FORMAT(END_DATE,'%Y-%m-%d')END_DATE,
CASE 
    WHEN DATEDIFF(END_DATE,START_DATE)+1>=30 THEN '장기 대여'
    ELSE '단기 대여'
END RENT_TYPE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
WHERE START_DATE LIKE ('2022-09%')
ORDER BY HISTORY_ID DESC

/*
SELECT 
    컬럼1, 
    컬럼2,
    (CASE WHEN 조건 THEN '참' ELSE '거짓' END) AS 새로운_컬럼명  <- case문 숙지
FROM 테이블명

DATEDIFF(A, B): A와 B 사이의 일수 차이를 반환
    당일도 1일로 포함해야 하므로, DATEDIFF(END_DATE, START_DATE) + 1 로!
*/