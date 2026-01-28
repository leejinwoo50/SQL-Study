/*
- Table: PATIENT
- Goal: 12세 이하인 여자환자의 환자이름, 환자번호, 성별코드, 나이, 전화번호를 조회
        전화번호가 없는 경우, 'NONE'으로 출력, 나이를 기준으로 내림차순 정렬하고, 나이 같다면 환자이름을 기준으로 오름차순 정렬
- 핵심 컬럼: all column
*/
SELECT  PT_NAME, PT_NO, GEND_CD, AGE, IFNULL(TLNO,'NONE') AS TLNO
FROM PATIENT
WHERE AGE <= 12 AND GEND_CD = 'W'
ORDER BY AGE DESC , PT_NAME ASC

/*
IFNULL(컬럼,'대체할 값') : 값이 없을 때(NULL)의 디폴트값 설정하는 "예외 처리 함수"
    IFNULL은 MySQL 전용함수로, 다른 DB사용을 대비하여 표준함수도 학습!
    =>COALESCE(컬럼1, 컬럼2, '대체값') : 인자를 여러 개 넣을 수 있어서, 
                                        "1번 번호가 없으면 2번 번호로, 그것도 없으면 'NONE'으로" 같은 복잡한 처리가 가능
*/