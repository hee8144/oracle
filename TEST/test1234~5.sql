-- 숫자 함수 , 문자 함수 , 날짜 함수
-- 1. 숫자함수
--1)ROUND  --반올림  
SELECT ROUND(123.4567,2)FROM DUAL;

SELECT ROUND (AVG(STU_HEIGHT),2) 평균키 FROM STUDENT WHERE STU_DEPT = '기계' ;
--2)TRUNC -- 두번째 인자값의 소수점 위치만큼 (올림 , 내림없이)
SELECT TRUNC (123.4567,3) FROM DUAL;
SELECT TRUNC (AVG(STU_HEIGHT),5) 평균키 FROM STUDENT WHERE STU_DEPT = '기계' ;
--3)CEIL --올림, 숫자를 올림해서 가장 가까운 정수로 반환;
SELECT CEIL(123.456) FROM DUAL;

--4) FLOOR -- 내림 , 숫자를 내림해서 가장 가까운 정수로 반환;
SELECT FLOOR(123.999) FROM DUAL;
-- 5) MOD - 나머지 반환;
SELECT MOD(10,3) FROM DUAL;

--6) SIGH -- 숫자의 부호를 반환하는 함수 , 양수면 1 음수면 -1 , 0이면 0으로 반환
SELECT SIGN (000) FROM DUAL;

--7) ABS - 절대값 
SELECT ABS(-10) FROM DUAL;

--POWER - 거듭제곱
SELECT POWER(2,3) FROM DUAL;