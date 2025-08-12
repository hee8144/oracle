--2.문자 함수
--1)CONCAT - 문자열 결합 (||)

SELECT CONCAT(STU_NAME ,STU_DEPT ) FROM STUDENT;
SELECT STU_NAME || ' ' || STU_DEPT FROM STUDENT;

--2) LENGHT - 문자의 길이
SELECT STU_DEPT, LENGTH ( STU_DEPT) FROM STUDENT;
--3) SUBSTR - 문자열 자르기(특정부분 추출)

SELECT SUBSTR('HELLOW ORACLE' ,1,5) FROM DUAL;

SELECT * FROM STU;
SELECT NAME ,  SUBSTR(JUMIN , 1, 6)FROM STU;
SELECT NAME ,  SUBSTR(JUMIN , 7, 1)FROM STU;

--DECODE 자바의 IF문과 비슷한 문법
SELECT NAME ,DECODE(  SUBSTR(JUMIN , 7, 1),1,'남','여')FROM STU;

--UPPER LOWER 대문자 ,소문자로 변경
SELECT UPPER('Hello Oracle'), LOWER('Hello Oracle') FROM DUAL;

--INSTR 특정문자열이 처음으로 몇번째에 나오는지

SELECT * FROM PROFESSOR;

SELECT INSTR(EMAIL,'@') FROM PROFESSOR;

--REPLACE - 문자열을 다른 문자열로 대체

SELECT EMAIL,  REPLACE(EMAIL,'net' , 'com') FROM PROFESSOR; 

--trim 공백제거

SELECT TRIM('     HELLO ORACLE       ') ,TRIM('     HELLO ORACLE       '),TRIM('     HELLO ORACLE       ') FROM DUAL;
SELECT TRIM('     HELLO ORACLE       ') ,LTRIM('     HELLO ORACLE       '),RTRIM('     HELLO ORACLE       ') FROM DUAL;

-- LPAD , RPAD - 왼쪽이나 오른쪽에 지정한 길이만큼 특정 문자 채우기

SELECT LPAD(ID,10,'*') , RPAD(ID,10,'*') FROM STU;

--STU 테이블의 ID 끝에 3글자만 *로표시

SELECT * FROM STU;

SELECT RPAD( SUBSTR(ID,0,LENGTH(ID)-3),LENGTH(ID),'*' )FROM STU;



