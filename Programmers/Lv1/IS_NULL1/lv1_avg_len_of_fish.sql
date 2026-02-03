/*
- Table: FISH_INFO
- Goal: 잡은 물고기의 평균 길이를 출력하는 SQL문을 작성, 평균 길이를 나타내는 컬럼 명은 AVERAGE_LENGTH
        평균 길이는 소수점 3째자리에서 반올림하며, 10cm 이하의 물고기들은 10cm 로 취급
        +잡은 물고기의 길이가 10cm 이하일 경우에는 LENGTH 가 NULL 이며, LENGTH 에 NULL 만 있는 경우는 없음
- 핵심 컬럼: LENGTH
*/
SELECT ROUND(AVG(IFNULL(LENGTH,10)),2) AVERAGE_LENGTH
FROM FISH_INFO
