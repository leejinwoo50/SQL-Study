/*
- Table: FIRST_HALF,ICECREAM_INFO
- Goal: 상반기 아이스크림 총주문량이 3,000보다 높으면서 
        아이스크림의 주 성분이 과일인 아이스크림의 맛을 총주문량이 큰 순서대로 조회하는 SQL 문을 작성
- 핵심 컬럼: FLAVOR
*/

SELECT A.FLAVOR
FROM FIRST_HALF AS A
JOIN ICECREAM_INFO AS B ON A.FLAVOR = B.FLAVOR
WHERE A.TOTAL_ORDER >3000 AND B.INGREDIENT_TYPE ='fruit_based'
ORDER BY A.TOTAL_ORDER DESC
/*
문제에선 필요 테이블이 2개가 존재, 따라서 JOIN문을 사용해야함
    -필요한 정보가 한 곳에 모여있지 않음. 두 테이블 모두 FLAVOR라는 컬럼 보유, 이를 연결 고리로 삼아 데이터를 합쳐야 함

가장 많이 쓰이는 "INNER JOIN"을 사용
FROM ... JOIN ... ON: A.FLAVOR = B.FLAVOR라는 조건을 통해 두 테이블의 행을 하나로 이어붙임

SQL 실행 시 1. FROM & JOIN(ON)을 읽어들임 [2.WHERE,3.SELECT ....ORDER BY 순]

본 문제처럼 해당 컬럼이 어느 테이블 소속인지 모호할 때, 테이블 한정자를 사용.
    -방식은 객체 내부의 메서드에 접근하는 것 처럼 (테이블).(컬럼) 식으로 사용!
*/