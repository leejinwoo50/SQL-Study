/*
- Table: USER_INFO
- Goal: 테이블에서 2021년에 가입한 회원 중 나이가 20세 이상 29세 이하인 회원이 몇 명인지 출력
- 핵심 컬럼: all(*)
*/
SELECT COUNT(*) AS USERS
FROM USER_INFO
WHERE (AGE BETWEEN 20 AND 29) AND YEAR(JOINED) =2021


/*
WHERE AGE IN(19<= * <=30)와 같은 표현은 불가능!
    -> BETWEEN 연산자 사용, 
    혹은 WHERE AGE >= 19 AND AGE <= 30;로 비교연산자 사용
    * IN은 왜 안되나?
        -> IN**은 "범위"가 아니라 "정확히 일치하는 여러 개의 값"을 찾을 때 쓰는 '바구니' 같은 역할
*/