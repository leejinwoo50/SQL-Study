
/*SELECT문의 기본적인 흐름

USE (DB명): 어떤 데이터베이스(스키마)를 쓸지 선택
SELECT (컬럼명): 데이터 중 어떤 '컬럼'을 화면에 보여줄지 결정
FROM (테이블명): 데이터를 어디서 가져올지 '테이블'을 먼저 지정
WHERE (조건): 묶기 전에 필요 없는 행을 먼저 버림
GROUP BY (컬럼명): 남은 데이터들을 특정 기준(컬럼)으로 그룹화
HAVING (조건): 만들어진 그룹들 중에서 필터링
ORDER BY: 뽑아낸 데이터를 보기 좋게 정렬*/

/*
- Table: CAR_RENTAL_COMPANY_CAR
- Goal: SUV 평균 요금 구하기 (소수점 첫째 자리 반올림)
- 핵심 컬럼: CAR_TYPE(종류), DAILY_FEE(요금)
*/
SELECT ROUND(AVG(DAILY_FEE), 0) AS AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = "SUV";

/*
AVG(컬럼) : 해당컬럼의 평균값을 계산하는 집계 함수, NULL값은 자동 제외하여 계산함
ROUND(값, 자리수) : 지정한 자리수까지 값을 표시하고, 그 다음 자릿수를 기준으로 반올림하여 반환
*/