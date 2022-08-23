USE market_db;

-- 1. tbl_member
SELECT NOW(); -- 현재 시간을 반환하는 함수
DROP TABLE IF EXISTS tbl_member;
CREATE TABLE tbl_member
(
   memberid VARCHAR(20) PRIMARY KEY,
   passwd VARCHAR(100) NOT NULL,
   email VARCHAR(50) NOT NULL UNIQUE,
   usertype VARCHAR(10) DEFAULT ('user'), -- ( 'user' or 'amdin' )
   regdate DATETIME DEFAULT ( NOW() ),
   active BOOLEAN DEFAULT (TRUE)
);

-- 2. tbl_board
DROP TABLE IF EXISTS tbl_board;
CREATE TABLE tbl_board
(
   boardno INT PRIMARY KEY AUTO_INCREMENT,
   writer VARCHAR(20) NOT NULL,
   title VARCHAR(100) NOT NULL,
   content VARCHAR(10000) NOT NULL,
   writedate DATETIME DEFAULT ( NOW() ),
   modifydate DATETIME DEFAULT ( NOW() ),
   readcount INT DEFAULT (0), 
   CONSTRAINT fk_member_board FOREIGN KEY (writer) REFERENCES tbl_member(memberid) 
);

-- 3. tbl_comment
DROP TABLE IF EXISTS tbl_comment;
CREATE TABLE tbl_comment
(
   commentno INT PRIMARY KEY AUTO_INCREMENT,
   writer VARCHAR(20) NOT NULL,
   boardno INT NOT NULL,
   content VARCHAR(500) NOT NULL,
   writedate DATETIME DEFAULT ( NOW() ),
   modifydate DATETIME DEFAULT ( NOW() ),
   CONSTRAINT fk_board_comment FOREIGN KEY (boardno) REFERENCES tbl_board(boardno),
   CONSTRAINT fk_member_comment FOREIGN KEY (writer) REFERENCES tbl_member(memberid)
);



   

