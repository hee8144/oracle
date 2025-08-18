-- TBL_USER, TBL_BOARD, TBL_COMMENT
--1. 아이디에 user가 들어가는 사람이 작성한 게시글의 수를 구하시오.
--2. USER의 핸드폰 번호 가운데를 *로 처리하시오.
--(ex, 010-****-5678)
--3. 게시글에 좋아요 개수가 가장 큰 게시글을 작성한 사람의 아이디, 이름, 좋아요개수를 출력하시오.
--4. 게시글 번호, 제목, 내용, 작성자 닉네임, 댓글 수(없으면 0)를 출력하시오.
--5. 조회수가 가장 큰 게시글의 게시글 번호, 제목, 작성자 닉네임을 출력하시오.

SELECT * FROM TBL_USER;
SELECT * FROM tbl_board;
SELECT * FROM TBL_COMMENT;

SELECT COUNT(BOARDNO)
FROM TBL_USER U
LEFT JOIN TBL_BOARD B ON U.USERID = B.USERID
WHERE U.USERID LIKE('%user%') 
;

SELECT RPAD(SUBSTR(PHONE,0,INSTR(PHONE,'-')),9,'*')||SUBSTR(PHONE,INSTR(PHONE,'-')+5,LENGTH(PHONE))
FROM TBL_USER
;

--3. 게시글에 좋아요 개수가 가장 큰 게시글을 작성한 사람의 아이디, 이름, 좋아요개수를 출력하시오.

SELECT U.USERID,NAME , FAVORITE
FROM TBL_USER U
INNER JOIN TBL_BOARD B ON U.USERID = B.USERID
WHERE FAVORITE =(SELECT MAX(FAVORITE)FROM TBL_BOARD);
--4. 게시글 번호, 제목, 내용, 작성자 닉네임, 댓글 수(없으면 0)를 출력하시오.

SELECT B.BOARDNO,B.TITLE,B.CONTENTS,NICKNAME,COUNT(C.BOARDNO)
FROM TBL_BOARD B
LEFT JOIN TBL_COMMENT C ON B.BOARDNO = C.BOARDNO
INNER JOIN TBL_USER S ON B.USERID = S.USERID
GROUP BY B.BOARDNO,B.TITLE,B.CONTENTS,NICKNAME;

SELECT *
FROM TBL_BOARD B
LEFT JOIN TBL_COMMENT C ON B.BOARDNO = C.BOARDNO;
--GROUP BY B.BOARNO;

--5. 조회수가 가장 큰 게시글의 게시글 번호, 제목, 작성자 닉네임을 출력하시오

SELECT  BOARDNO,TITLE,NICKNAME
FROM TBL_USER U
LEFT JOIN TBL_BOARD B ON U.USERID = B.USERID
WHERE CNT =(SELECT MAX(CNT)FROM TBL_BOARD);
--GROUP BY 
