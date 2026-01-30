/*
- Table: FISH_INFO
- Goal: 테이블에서 가장 큰 물고기 10마리의 ID와 길이를 출력
        길이를 기준으로 내림차순 정렬하고, 길이가 같다면 물고기의 ID에 대해 오름차순 정렬
        가장 큰 물고기 10마리 중 길이가 10cm 이하인 경우는 없음!
- 핵심 컬럼: LENGTH
*/

SELECT ID, LENGTH
FROM FISH_INFO
ORDER BY LENGTH DESC, ID ASC
LIMIT 10

-- LIMIT 상기,