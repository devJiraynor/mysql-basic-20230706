# 회원가입 SQL
INSERT INTO user (email, password, nickname, tel_number, address, address_detail, agreed_personal)
VALUES ('email3@email.com', 'P!ssw0rd', 'nickname3', '01011111113', '부산광역시 부산진구', '에이원프라자', true);

# 로그인 SQL
SELECT * FROM user
WHERE email = 'email@email.com' AND password = 'P!ssw0rd';

# 게시물 쓰기 SQL
INSERT INTO board (title, contents, writer_email)
VALUES ('제목5', '내용5', 'email@email.com');

# 게시물 수정 SQL
UPDATE board SET title = '수정 제목', contents = '수정 내용' WHERE board_number = 1;

# 게시물 삭제 SQL
DELETE FROM board WHERE board_number = 1;

# 댓글 작성 SQL
INSERT INTO comment (board_number, user_email, content)
VALUES (2, 'email@email.com', '안녕하세요');

# 좋아요 등록 SQL
INSERT INTO favorite VALUES (2, 'email@email.com');

# 좋아요 취소 SQL
DELETE FROM favorite 
WHERE board_number = 2 AND user_email = 'email@email.com';

SELECT * FROM user;
SELECT * FROM board;
SELECT * FROM comment;
SELECT * FROM favorite;




