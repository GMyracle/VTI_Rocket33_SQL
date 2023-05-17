DROP DATABASE IF EXISTS testing_system_assignment_6;
CREATE DATABASE testing_system_assignment_6;
Use testing_system_assignment_6 ;

CREATE TABLE IF NOT EXISTS Department (
    Department_id TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Department_name NVARCHAR(20) UNIQUE KEY NOT NULL
);
-- insert data for table Department
 INSERT INTO Department(Department_name) 
 VALUES
 ('Marketing'),
	('Sale'),
    ('Phát triển'),
    ('Nhân sự'),
    ('Kỹ thuật'),
    ('Tài chính'),
    ('Phó giám đốc'),
    ('Giám đốc'),
    ('Thư kí'),
    ('Bảo vệ'),
	('Phòng A1'),
	('Phòng A2'),
    ('Phòng A3'),
    ('Phòng A4'),
    ('Phòng A5'),
    ('Phòng B1'),
    ('Phòng B2'),
    ('Phòng B3'),
    ('Phòng B4'),
    ('Phòng B5');
 SELECT * FROM	Department;
 
CREATE TABLE IF NOT EXISTS `Position` (
Position_id        TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
Position_name      ENUM('DEV','TEST', 'SCRUM MASTER', 'PM') UNIQUE KEY NOT NULL
 );
 -- insert data into table Position
 INSERT INTO `Position`(Position_name) 
 VALUES
 ('DEV'),
 ('TEST'),
 ('SCRUM MASTER'),
 ('PM');
  SELECT * FROM  `Position`;

CREATE TABLE IF NOT EXISTS `Account`(
Account_id         INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Email              VARCHAR(30) UNIQUE KEY  NOT NULL,
Username           VARCHAR(30) UNIQUE KEY NOT NULL,
Fullname           NVARCHAR(30) NOT NULL,
Department_id      TINYINT UNSIGNED NOT NULL,
Position_id        TINYINT UNSIGNED NOT NULL,
CreateDate         DATE NOT NULL,
FOREIGN KEY (Department_id) REFERENCES Department(Department_id),
FOREIGN KEY (Position_id) REFERENCES `Position` (Position_id)
);
TRUNCATE TABLE `Account`;
-- insert data into table Account
 INSERT INTO `Account` ( `Email`, `Username`, `Fullname`, `Department_id`, `Position_id`, `CreateDate` ) 
VALUES
    ('nguyenhong@gmail.com'		, 'NguyenHong'		, 'Nguyễn Thị Hồng'		, 3, 2,  '2018-02-04'),
	('nguyenhoa@gmail.com'		, 'NguyenHoa'		, 'Nguyễn Thị Hoa'		, 1, 3,  '2019-02-04'),
	('phamhue@gmail.com'		, 'PhamHue'			, 'Phạm Thị Huệ'		, 1, 2,  '2019-02-04'),
	('hoangnha@gmail.com'		, 'HoangNha'		, 'Hoàng Phong Nhã'		, 6, 4,  '2019-02-04'),
	('nguyendong@gmail.com'		, 'NguyenDong'		, 'Nguyễn Văn Đông'		, 8, 1,  '2019-02-04'),
	('tranthanhphong@gmail.com'	, 'ThanhPhong'		, 'Trần Thanh Phong'	, 4, 2,  '2019-02-04'),
	('tranminhnguyet@gmail.com'	, 'MinhNguyet'		, 'Trần Minh Nguyệt'	, 7, 3,  '2017-02-04'),
	('nguyenan@gmail.com'		, 'NguyenAn'		, 'Nguyễn Văn An'		, 9, 2,  '2018-02-04'),
	('tranthithu@gmail.com'		, 'ThiThu'			, 'Trần Thị Thu'		, 5, 3,  '2012-02-04'),
	('thungan@gmail.com'		, 'ThuNgan'			, 'Phạm Thu Ngân'		, 2, 4,  '2016-02-04'),
	('ngocha96@gmail.com'		, 'NgocHa96'		, 'Nguyễn Ngọc Hà'		, 13, 2, '2012-02-04'),
	('nguyenhuong12@gmail.com'	, 'HuongNguyen'		, 'Nguyễn Thanh Hương'	, 2, 2,  '2016-02-04'),
	('huongnhai@gmail.com'		, 'HuongNhai'		, 'Phạm Hương Nhài'		, 2, 3,  '2015-02-04'),
	('nhadan@gmail.com'			, 'NhaDan'			, 'Hoàng Nhã Đan'		, 16, 4, '2014-02-04'),
	('ngocanh@gmail.com'		, 'AnhNgoc'			, 'Nguyễn Ngọc Ánh'		, 18, 1, '2013-02-04'),
	('hoathanh@gmail.com'		, 'HoaThanh'		, 'Trần Thanh Hòa'		, 14, 2, '2019-02-04'),
	('minhanhtran@gmail.com'	, 'MinhAn'			, 'Trần Minh An'		, 17, 3, '2012-02-04'),
	('thanhanhnguyen@gmail.com'	, 'ThanhAnh'		, 'Nguyễn Thanh Anh'	, 19, 2, '2011-02-04'),
	('nguyenhuong@gmail.com'	, 'NguyenHuong'		, 'Trần Thị Hường'		, 15, 3, '2016-02-04'),
	('thanhlong@gmail.com'		, 'ThanhLong'		, 'Phạm Thanh Long'		, 20, 4, '2012-02-04'),
	('thaiha@gmail.com'			, 'ThaiHa'			, 'Nguyễn Thái Hà'		, 13, 2, '2012-02-04'),
	('thanhthao@gmail.com'		, 'ThanhThao'		, 'Nguyễn Thanh Thảo'	, 11, 2, '2021-02-04'),
	('thuhuongpham@gmail.com'	, 'ThuHuongPham'	, 'Phạm Thu Hương'		, 11, 3, '2022-02-04'),
	('anhvu@gmail.com'			, 'AnhVu'			, 'Hoàng Anh Vũ'		, 16, 4, '2020-02-04'),
	('anhthu@gmail.com'			, 'AnhThu'			, 'Nguyễn Anh Thư'		, 20, 2, '2022-02-04'),
	('thanhhoatran@gmail.com'	, 'HoaTran'			, 'Trần Thanh Hoa'		, 14, 1, '2023-02-04'),
	('tranthienan@gmail.com'	, 'ThienAnTran'		, 'Trần Thiên Ân'		, 17, 3, '2021-02-04'),
	('nguyenmocmien@gmail.com'	, 'MocMien'			, 'Nguyễn Mộc Miên'		, 20, 2, '2020-02-04'),
	('thuhuongtran@gmail.com'	, 'ThuHuong'		, 'Trần Thu Hường'		, 15, 2, '2020-02-04'),
	('thanhngoc@gmail.com'		, 'ThanhNgoc'		, 'Phạm Thanh Ngọc'		, 20, 4, '2019-02-04'),
	('thanhhuong01@gmail.com'	, 'ThanhHuong'		, 'Nguyễn Thanh Hương'	, 3	, 3, '2019-02-04'),
	('dangdao@gmail.com'		, 'DaoDang'			, 'Đặng Thanh Đào'		, 2	, 1, '2011-02-04');
    
SELECT * FROM `Account`;

CREATE TABLE IF NOT EXISTS `Group`(
Group_id          TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Group_name        VARCHAR(50) UNIQUE KEY NOT NULL,
Creator_id        TINYINT UNSIGNED UNIQUE KEY NOT NULL,
Create_date       DATE NOT NULL 
);
-- insert data into  table Group
INSERT INTO `Group`(Group_name, Creator_id, Create_date) 
VALUES
('Nhóm A'	, 1, '2019-02-04'	),
	('Nhóm B'	, 5,  '2018-02-04'),
	('Nhóm C'	, 3,  '2019-02-04'),
	('Nhóm D'	, 4,  '2019-02-04'),
	('Nhóm E'	, 7	, '2017-02-04'),
	('Nhóm A1'	, 11, '2016-02-04'),
	('Nhóm B1'	, 15, '2020-02-04'),
	('Nhóm C1'	, 13, '2021-02-04'),
	('Nhóm D1'	, 14, '2022-02-04'),
	('Nhóm E1'	, 17, '2023-02-04'),
	('Nhóm A2'	, 18, '2017-02-04'),
	('Nhóm B2'	, 19, '2016-02-04'),
	('Nhóm C2'	, 20, '2015-02-04'),
	('Nhóm D2'	, 12, '2012-02-04'),
	('Nhóm E2'	, 16, '2018-02-04');
SELECT * FROM `Group`;

CREATE TABLE IF NOT EXISTS GroupAccount(
Group_id           TINYINT UNSIGNED NOT NULL,
Account_id         INT UNSIGNED NOT NULL,
Join_date          DATETIME,
PRIMARY KEY(Group_id, Account_id ),
FOREIGN KEY (Group_id) REFERENCES `Group`(Group_id),
FOREIGN KEY (Account_id) REFERENCES `Account`(Account_id)
);
-- insert data into table GroupAccount
INSERT INTO GroupAccount (Group_id, Account_id)
VALUES					
    (1	, 1),
	(1	, 2),
	(2	, 5),
	(2	, 9),
	(2	, 1),
	(3	, 6),
	(2	, 4),
	(4	, 8),
	(5	, 7),
	(5	, 10),
	(6	, 21),
	(7	, 22),
	(8	, 25),
	(9	, 29),
	(10	, 23),
	(11	, 26),
	(12	, 24),
	(2	, 15),
	(14	, 27),
	(2	, 28);
SELECT * FROM GroupAccount;

CREATE TABLE IF NOT EXISTS TypeQuestion(
Type_id     INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Type_name   ENUM('Essay', 'Multiple-Choice') UNIQUE KEY NOT NULL   
);
-- insert data into table TypeQuestion
INSERT INTO TypeQuestion(Type_name)
VALUES
('Essay'),
('Multiple-Choice');
SELECT * FROM	TypeQuestion;

CREATE TABLE IF NOT EXISTS CategoryQuestion(
CateQuestion_id       TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
CateQuestion_name     NVARCHAR(20) NOT NULL  
);
-- insert data into table CategoryQuestion
INSERT INTO CategoryQuestion(CateQuestion_name )
VALUES
    ('Java'),
	('.NET'),
	('SQL'),
	('Postman'),
	('Ruby'),
	('VBA'),
	('C#'),
	('js'),
	('PHP'),
	('Python'),
	('Jquery'),
	('React'),
	('Html'),
	('Css'),
	('C++'),
	('C'),
	('Bootstrap'),
	('Vue'),
	('NodeJs'),
	('Angular');
SELECT * FROM	CategoryQuestion;


CREATE TABLE IF NOT EXISTS Questions(
quest_id             SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Content              NVARCHAR(50) UNIQUE KEY NOT NULL,
CateQuestion_id      TINYINT UNSIGNED NOT NULL,
Type_id              INT UNSIGNED NOT NULL ,
Creator_id           TINYINT UNSIGNED NOT NULL ,
Create_date          DATETIME NOT NULL DEFAULT NOW(),
FOREIGN KEY (Creator_id) REFERENCES  `Group`(Creator_id),
FOREIGN KEY (CateQuestion_id) REFERENCES CategoryQuestion(CateQuestion_id),
FOREIGN KEY (Type_id) REFERENCES TypeQuestion(Type_id)
);
-- insert data into table Questions
TRUNCATE TABLE Questions;
INSERT INTO Questions(Content, CateQuestion_id, Type_id, Creator_id)
VALUES
    ('content test 1'			, 2	, 1, 1),
	('content test 2'			, 4	, 2, 3),
	('content test 3'			, 3	, 1, 3),
	('content test 4'			, 5	, 1, 7),
	('content test 5'			, 8	, 1, 7),
	('content test 6'			, 7	, 1, 7),
	('content test 7'			, 6	, 1, 4),
	('content question test 8'	, 12, 2, 11),
	('content question test 9'	, 14, 1, 13),
	('câu hỏi question test 10'	, 13, 1, 12),
	('content question test 11'	, 15, 1, 5),
	('câu hỏi question test 12'	, 18, 2, 18),
	('câu hỏi question test 13'	, 19, 1, 17),
	('content question test 14'	, 15, 2, 16),
	('câu hỏi question test 15'	, 18, 1, 18),
	('content question test 16'	, 17, 1, 5),
	('câu hỏi question test 17'	, 20, 1, 14);
SELECT * FROM Questions;

CREATE TABLE IF NOT EXISTS Answer(
ans_id           SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Content          NVARCHAR(100) UNIQUE KEY NOT NULL,
quest_id         SMALLINT UNSIGNED NOT NULL, 
is_correct       BIT NOT NULL,
FOREIGN KEY (quest_id) REFERENCES Questions(quest_id)
);
-- insert data for table Answer
TRUNCATE TABLE Answer;
INSERT INTO	Answer ( Content, quest_id, is_correct)
VALUES
('content answer test 1', 2	, 1),
	('content answer test 2', 3	, 1),
	('content answer test 3', 3	, 1),
	('content answer test 4', 3	, 0),
	('content answer test 5', 1	, 0),
	('content answer test 22', 1, 0),
	('content answer test 18', 1, 0),
	('content answer test 6', 7	, 1),
	('content answer test 7', 6	, 1),
	('content answer test 8', 12, 1),
	('content answer test 9', 2	, 1),
	('content answer test 10', 2, 1),
	('content answer test 11', 2, 1),
	('content answer test 12', 14, 0),
	('content answer test 13', 13, 1),
	('content answer test 14', 15, 0),
	('content answer test 15', 11, 1),
	('content answer test 16', 17, 1),
	('content answer test 17', 16, 1);
SELECT * FROM Answer;
DROP TABLE IF EXISTS Exam;
CREATE TABLE IF NOT EXISTS Exam(
exam_id           MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
code_ex           CHAR(30) UNIQUE KEY NOT NULL,
title             VARCHAR(30) NOT NULL,
CateQuestion_id   TINYINT UNSIGNED NOT NULL,
duration          TINYINT NOT NULL,
Creator_id        INT UNSIGNED NOT NULL,
Create_date       DATETIME DEFAULT NOW(),
FOREIGN KEY (cateQuestion_id) REFERENCES CategoryQuestion(CateQuestion_id),
FOREIGN KEY (Creator_id) REFERENCES `Account`(Account_id)
);
-- insert data for table Exam
INSERT INTO	Exam ( code_ex, title, CateQuestion_id, duration, Creator_id  )
VALUES
    ('RB'	, 'title ruby'		, 5		, 50	, 1	),
	('VB'	, 'title vb 1'		, 6		, 120	, 3	),
	('JS'	, 'title exam js'	, 8		, 60	, 2	),
	('PM'	, 'title postman'	, 4		, 120	, 6	),
	('SQ'	, 'title sql exam'	, 3		, 45	, 3	),
	('C#'	, 'title exam C#'	, 7		, 15	, 5	),
	('PH'	, 'title php'		, 9		, 50	, 11),
	('PT'	, 'title python'	, 10	, 120	, 13),
	('JQ'	, 'title jquery'	, 11	, 60	, 12),
	('RC'	, 'title react'		, 12	, 120	, 6	),
	('HT'	, 'title html'		, 13	, 45	, 13),
	('CCS'	, 'title css'		, 14	, 120	, 15),
	('C+'	, 'title c++'		, 15	, 60	, 12),
	('C'	, 'title C'			, 16	, 120	, 16),
	('BT'	, 'title Bootstrap'	, 17	, 45	, 13),
	('AG'	, 'Angular'			, 18	, 120	, 15),
	('JN'	, 'Json'			, 19	, 120	, 15),
	('AJ'	, 'Ajax'			, 20	, 120	, 15);
SELECT * FROM Exam;

CREATE TABLE IF NOT EXISTS ExamQuestion(
exam_id       MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
quest_id      SMALLINT UNSIGNED NOT NULL,
FOREIGN KEY (exam_id) REFERENCES Exam (exam_id),
FOREIGN KEY (quest_id) REFERENCES Questions(quest_id)
);
-- insert data for table ExamQuestion
INSERT INTO ExamQuestion(exam_id , quest_id )
VALUES		
    (1	, 4),
	(2	, 7),
	(3	, 6),
	(4	, 2),
	(5	, 3),
	(6	, 6),
	(10	, 8),
	(11	, 11),
	(12	, 9),
	(13	, 11),
	(14	, 14),
	(15	, 16),
	(16	, 12),
	(7	, 15),
    (17	, 13),
    (18	, 16);
SELECT * FROM ExamQuestion;


SELECT * FROM ExamQuestion;
SELECT * FROM Exam;
SELECT * FROM Answer;
SELECT * FROM Questions;
SELECT * FROM CategoryQuestion;
SELECT * FROM TypeQuestion;
SELECT * FROM `Group`;
SELECT * FROM GroupAccount;
SELECT * FROM `Account`;
SELECT * FROM `Position`;
SELECT * FROM Department;

-- ASSM 6: 
-- Q1: Tạo store để người dùng nhập vào tên phòng ban và in ra tất cả các account thuộc phòng ban đó


DELIMITER $$ 
DROP PROCEDURE IF EXISTS sp_lay_account_theo_ma_pb $$
CREATE PROCEDURE sp_lay_account_theo_ma_pb(IN department_name VARCHAR(20) )
	BEGIN 
		SELECT A.* 
			FROM `Account` A
				JOIN Department D 
					ON D.Department_id = A.Department_id 
						WHERE D.Department_name = department_name;
	END ; $$
DELIMITER ;
CALL sp_lay_account_theo_ma_pb('Sale');

-- Q2: Tạo store để in ra số lượng account trong mỗi group

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_lay_so_account_theo_group $$
CREATE PROCEDURE sp_lay_so_account_theo_group(IN groupname NVARCHAR(50) )
	BEGIN 
		SELECT G.Group_id, G.Group_name, COUNT(GA.Account_id) AS 'số `Account`'
			FROM `Group` AS G
				LEFT JOIN GroupAccount AS GA
					ON G.Group_id = GA.Group_id
						WHERE G.Group_name = groupname;
						
	END ; $$
DELIMITER ;

CALL sp_lay_so_account_theo_group('Nhóm E')		;

-- Q3: Tạo store để thống kê mỗi type question có bao nhiêu question được tạo trong tháng hiện tại
SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
DELIMITER $$
DROP PROCEDURE IF EXISTS sp_lay_so_question_theo_type $$
CREATE PROCEDURE sp_lay_so_question_theo_type(IN typequestion NVARCHAR(20))
BEGIN
    DECLARE current_month VARCHAR(7);
    DECLARE current_month_start DATE;
    DECLARE current_month_end DATE;
    
    -- Lấy tháng hiện tại
    SET current_month = DATE_FORMAT(NOW(), '%Y-%m');
    
    -- Tính ngày bắt đầu và ngày kết thúc của tháng hiện tại
    SET current_month_start = CONCAT(current_month, '-01');
    SET current_month_end = LAST_DAY(current_month_start);
    
    -- Thực hiện truy vấn để thống kê số lượng câu hỏi theo loại
    SELECT TQ.Type_name, COUNT(*) AS QuestionCount
    FROM Questions Q
    JOIN TypeQuestion TQ ON Q.Type_id = TQ.Type_id
    WHERE Q.Create_date BETWEEN current_month_start AND current_month_end AND TQ.Type_name = typequestion
    ;
END ; $$

DELIMITER ;
CALL sp_lay_so_question_theo_type( 'Multiple-Choice');


-- Q4: Tạo store để trả ra id của type question có nhiều câu hỏi nhất
DELIMITER $$
DROP PROCEDURE IF EXISTS sp_lay_id_type_question_co_nhieu_cau_hoi_nhat $$
CREATE PROCEDURE sp_lay_id_type_question_co_nhieu_cau_hoi_nhat(OUT p_out_type_id TINYINT UNSIGNED )
BEGIN
    WITH cte_lay_type_id_co_nhieu_question_nhat AS (
		SELECT TQ.Type_id, COUNT(Q.quest_id) AS 'so_cau_hoi' 
			FROM TypeQuestion TQ
					LEFT JOIN Questions Q
						ON TQ.Type_id = Q.Type_id 
							GROUP BY TQ.Type_id
			)
		SELECT Type_id INTO p_out_type_id 
			FROM cte_lay_type_id_co_nhieu_question_nhat 
				WHERE so_cau_hoi = (
					SELECT MAX(so_cau_hoi) 
						FROM cte_lay_type_id_co_nhieu_question_nhat 
                        );
END ; $$

DELIMITER ;

SET @Type_id = '';
CALL sp_lay_id_type_question_co_nhieu_cau_hoi_nhat(@Type_id);
SELECT @Type_id;

-- Q5: Sử dụng store ở question 4 để tìm ra tên của type question
USE testing_system_assignment_6;
DELIMITER $$
DROP PROCEDURE IF EXISTS sp_lay_type_question_co_nhieu_cau_hoi_nhat $$
CREATE PROCEDURE sp_lay_type_question_co_nhieu_cau_hoi_nhat(OUT p_out_type_name NVARCHAR(30) )
BEGIN
    WITH cte_lay_type_name_co_nhieu_question_nhat AS (
		SELECT TQ.Type_name, COUNT(Q.quest_id) AS 'so_cau_hoi' 
			FROM TypeQuestion TQ
					LEFT JOIN Questions Q
						ON TQ.Type_id = Q.Type_id 
							GROUP BY TQ.Type_name
			)
		SELECT Type_name INTO p_out_type_name
			FROM cte_lay_type_name_co_nhieu_question_nhat 
				WHERE so_cau_hoi = (
					SELECT MAX(so_cau_hoi) 
						FROM cte_lay_type_name_co_nhieu_question_nhat 
                        );
END ; $$

DELIMITER ;

SET @Type_name = '';
CALL sp_lay_type_question_co_nhieu_cau_hoi_nhat(@Type_name);
SELECT @Type_name;

-- Q6: Viết 1 store cho phép người dùng nhập vào 1 chuỗi và trả về group có tên
-- chứa chuỗi của người dùng nhập vào hoặc trả về user có username chứa chuỗi của người dùng nhập vào
-- Question 6: Viét 1 store cho phép ngudi ding nhip vio 1 chudi va tré v& group cd tén
USE testing_system_assignment_6;

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_tim_group_hoac_account;
CREATE PROCEDURE sp_tim_group_hoac_account(IN p_in_chuoi VARCHAR(26) CHAR SET utf8mb4)
BEGIN
WITH ctel AS(
-- b1: tạo bảng cte1 là bảng có tên chứa chuỗi
SELECT * FROM `Group` 
	WHERE Group_name LIKE CONCAT('%', p_in_chuoi ,'%') COLLATE utf8mb4_general ci

),
cte2 As(
-- b2: tạo cte2 là bảng account có chứa chuỗi
SELECT * FROM `Account` t 
	WHERE Username LIKE CONCAT('%', p_in_chuoi ,'%') COLLATE utf8mb4_general ci

)
-- b3: ghép 2 bảng cte1 với cte2 lại với số lượng bản ghi đầy đủ bằng cách dùng UNION

-- b3.1: JOIN bảng  cte1(bảng chính ) vs cte2 được bẳng đầy đủ bản ghi của username có tên chứa chuỗi
SELECT g.*, a.* FROM ctel g 
	LEFT JOIN GroupAccount ga 
		ON g.Group_id
	LEFT JOIN cte2 a 
		ON ga.Account_id=a.Account_id
UNION
-- B3.2: JOIN bảng cte1 vs cte2(bảng chính) được bảng đầy đủ bản ghi của username có tên chứa chuỗi
SELECT g.* ,a.* FROM ctel g 
	RIGHT JOIN GroupAccount ga 
		ON g.Group_id=ga.Group_id
	RIGHT JOIN cte2 a 
		ON ga.Account_id=a.Account_id;

ENDS$$
DELIMITER ;

-- gọi thủ tục

CALL sp_tim_group_hoac_account ('Nh');



-- Q7: Viết 1 store cho phép người dùng nhập vào thông tin fullName, email và trong store sẽ tự động gán:
-- username sẽ giống email nhưng bỏ phần @..mail đi
-- positionID: sẽ có default là developer
-- departmentID: sẽ được cho vào 1 phòng chờ
-- Sau đó in ra kết quả tạo thành công
-- > sử dụng substring
USE testing_system_assignment_6;
DELIMITER $$
DROP PROCEDURE IF EXISTS sp_fullname_email;
CREATE PROCEDURE sp_fullname_email(
    IN p_fullname NVARCHAR(30),
    IN p_email VARCHAR(30)
)
BEGIN
    DECLARE v_username VARCHAR(30);
    DECLARE v_department_id TINYINT UNSIGNED;
    DECLARE v_position_id TINYINT UNSIGNED;
    
    -- Tạo username từ email bằng cách loại bỏ phần @..mail
    SET v_username = SUBSTRING_INDEX(p_email, '@', 1);
    
    -- Gán departmentID là 11 (phòng chờ)
    SET v_department_id = 11;
    
    -- Gán positionID là 1 (developer)
    SET v_position_id = 1;
    
    -- Thực hiện INSERT vào bảng Account
    INSERT INTO Account (Email, Username, Fullname, Department_id, Position_id, CreateDate)
    VALUES (p_email, v_username, p_fullname, v_department_id, v_position_id, CURDATE());
    
    -- In ra thông báo tạo thành công
    SELECT 'Tạo tài khoản thành công' AS Result;
END ; $$

DELIMITER ;
CALL sp_fullname_email('Nguyễn Văn A', 'nguyenvana@gmail.com');

-- Q8: Viết 1 store cho phép người dùng nhập vào Essay hoặc Multiple-Choice 
-- để thống kê câu hỏi essay hoặc multiple-choice nào có content dài nhất
USE testing_system_assignment_6;
DELIMITER $$
DROP FUNCTION IF EXISTS sp_lay_cau_hoi_theo_typequestion;
CREATE FUNCTION sp_lay_cau_hoi_theo_typequestion(IN p_question_type VARCHAR(20), RETURN VARCHAR(50))
BEGIN
	DECLARE v_cau_hoi_content_dai VARCHAR(50);
		SELECT Q.Content INTO v_cau_hoi_dai
			FROM Questions Q
				JOIN TypeQuestion TQ 
					ON Q.quest_id = TQ.quest_id
						WHERE p_question_type = TQ.Type_name;
			RETURN v_cau_hoi_content_dai;
END ;  $$
DELIMITER ;
CALL sp_lay_cau_hoi_theo_typequestion('Essay', @v_cau_hoi_content_dai);
SELECT @v_cau_hoi_content_dai;