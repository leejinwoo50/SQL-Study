/*
- Table: USER_INFO
- Goal: 테이블에서 나이 정보가 없는 회원이 몇 명인지 출력하는 SQL문을 작성
        이때 컬럼명은 USERS로 지정
- 핵심 컬럼: AGE
*/
SELECT COUNT(USER_ID) USERS
FROM USER_INFO
WHERE AGE IS NULL