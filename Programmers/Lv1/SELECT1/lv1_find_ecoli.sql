/*
- Table: ECOLI_DATA
- Goal: 2번 형질이 보유하지 않으면서 1번이나 3번 형질을 보유하고 있는 대장균 개체의 수(COUNT)를 출력
         1번과 3번 형질을 모두 보유하고 있는 경우도 1번이나 3번 형질을 보유하고 있는 경우에 포함
- 핵심 컬럼: GENOTYPE
*/

SELECT COUNT(*) COUNT
FROM ECOLI_DATA
WHERE GENOTYPE & 2 = 0 AND GENOTYPE & 5 > 0

/*
ID 1 : 1000₍₂₎(8)
ID 2 : 1111₍₂₎(15)
ID 3 : 1₍₂₎(1)
ID 4 : 1101₍₂₎(13)
위는 형질 컬럼값을 나타낸 것이다. 

비트연산자를 활용해야함
GENOTYPE & 2 = 0 (2번자리의 비트가 0이라는 뜻)
여기서 column & n = m 에서 m은 불(T/F)값이 아니라 실제 값임