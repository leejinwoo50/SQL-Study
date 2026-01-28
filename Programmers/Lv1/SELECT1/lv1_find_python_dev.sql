/*
- Table: DEVELOPER_INFOS
- Goal: 테이블에서 Python 스킬을 가진 개발자의 정보를 조회
- 핵심 컬럼: ID, EMAIL,FIRST_NAME, LAST_NAME ,SKILL_1,2,3
*/
SELECT ID, EMAIL,FIRST_NAME, LAST_NAME
FROM DEVELOPER_INFOS
WHERE SKILL_1 ='Python' OR SKILL_2 ='Python' OR SKILL_3 ='Python'
ORDER BY ID ASC

/*
* 오답풀이
GROUP BY SKILL_1,SKILL_2,SKILL_3
HAVING IN(* = 'Python')
    1.HAVING IN(* = 'Python')이라는 문법은 SQL에 존재하지 않음
    2.HAVING은 COUNT(*) > 1처럼 그룹화된 결과에 조건을 걸 때만 사용
    3.* 는 모든 컬럼을 의미하지만, 비교 연산자와 저렇게 조합해서 쓸 수는 없음
    따라서 문제는 요약(통계)이 목적이 아니라 단순 조건 검색이 목적이기 때문에 WHERE을 쓰는 것이 맞음!
*/