/*
- Table: USER_INFO
- Goal: 테이블에서 2021년에 가입한 회원 중 나이가 20세 이상 29세 이하인 회원이 몇 명인지 출력
- 핵심 컬럼: all(*)
*/
SELECT COUNT(*) AS USERS
FROM USER_INFO
WHERE (AGE BETWEEN 20 AND 29) AND YEAR(JOINED) =2021
