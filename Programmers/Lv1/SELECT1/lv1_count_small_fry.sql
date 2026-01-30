/*
- Table: FISH_INFO
- Goal: 잡은 물고기의 길이가 10cm 이하일 경우에는 LENGTH 가 NULL 이며, LENGTH 에 NULL 만 있는 경우는 없음
        잡은 물고기 중 길이가 10cm 이하인 물고기의 수를 출력,
        물고기의 수를 나타내는 컬럼 명은 FISH_COUNT
- 핵심 컬럼: LENGTH
*/
SELECT COUNT(ID) AS FISH_COUNT
FROM FISH_INFO
WHERE LENGTH IS NULL