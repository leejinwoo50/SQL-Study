/*
- Table: FOOD_FACTORY
- Goal: 테이블에서 강원도에 위치한 식품공장의 공장 ID, 공장 이름, 주소를 조회하는 SQL문을 작성
        이때 결과는 공장 ID를 기준으로 오름차순 정렬
- 핵심 컬럼: FACTORY_ID, FACTORY_NAME, ADDRESS
*/
SELECT FACTORY_ID, FACTORY_NAME, ADDRESS
FROM FOOD_FACTORY
WHERE ADDRESS LIKE('강원도%')
ORDER BY FACTORY_ID

/*
문자열 탐색이 필요한 문제 -> LIKE문 활용
    1.% 활용 - (퍼센트): 글자 수에 상관없이 모든 문자를 의미
        LIKE '김%': '김'으로 시작하는 모든 값 (김, 김철수, 김수한무...)
        LIKE '%컴퓨터': '컴퓨터'로 끝나는 모든 값 (데스크탑컴퓨터, 노트북컴퓨터...)
        LIKE '%데이터%': 중간에 '데이터'라는 글자가 들어간 모든 값
    2._ 활용 - _ (언더바): 딱 한 글자
        LIKE '김_': '김'으로 시작하는 딱 두 글자 이름 (김철, 김영)
        LIKE '___': 아무 글자나 딱 세 글자인 값

*/