/*
- Table: MEMBER_PROFILE 
- Goal: 테이블에서 생일이 3월인 여성 회원의 ID, 이름, 성별, 생년월일을 조회하는 SQL문을 작성
        전화번호가 NULL인 경우는 출력대상에서 제외, 결과는 회원ID를 기준으로 오름차순 정렬
- 핵심 컬럼: DATE_OF_BIRTH
*/
SELECT MEMBER_ID,MEMBER_NAME,GENDER,DATE_FORMAT(DATE_OF_BIRTH,'%Y-%m-%d') DATE_OF_BIRTH
FROM MEMBER_PROFILE
WHERE MONTH(DATE_OF_BIRTH)=3 AND GENDER = 'W' AND TLNO IS NOT NULL
ORDER BY MEMBER_ID

/*
추출 함수로 날짜를 알맞게 추출가능
MONTH(날짜) : 월만 정수로 반환.
YEAR,DAY도 마찬가지로 가능
*/