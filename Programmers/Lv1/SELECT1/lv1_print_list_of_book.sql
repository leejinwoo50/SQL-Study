/*
- Table: BOOK
- Goal: BOOK 테이블에서 2021년에 출판된 '인문' 카테고리에 속하는 도서 리스트를 찾아서 
        도서 ID(BOOK_ID), 출판일 (PUBLISHED_DATE)을 출력하는 SQL문을 작성
- 핵심 컬럼: BOOK_ID , PUBLISHED_DATE
*/
SELECT BOOK_ID, DATE_FORMAT(PUBLISHED_DATE,'%Y-%m-%d') AS PUBLISHED_DATE
FROM BOOK
WHERE YEAR(PUBLISHED_DATE)=2021 AND CATEGORY IN('인문')
ORDER BY PUBLISHED_DATE

/* 날짜 출력의 모양을 바꾸는 함수
 DATE_FORMAT(날짜컬럼, '형식') (예:DATE_FORMAT(HIRE_YMD, '%Y-%m-%d'))
 포매팅 형식을 %Y-%M-%D 으로 하면 결과값이 2021-October-24th으로 나옴.
 문제에서 제시한 2021-03-15 식으로 표현을 위하여 %Y-%m-%d 식으로 표현해야함
*/