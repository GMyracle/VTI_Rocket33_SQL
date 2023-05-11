DROP DATABASE IF EXISTS testing_system_assignment_4;
CREATE DATABASE testing_system_assignment_4;
Use testing_system_assignment_4 ;

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

-- ASS4:
-- Q1: Viết lệnh để lấy ra danh sách nhân viên và thông tin phòng ban của họ

SELECT Ac.fullname, D.* 
FROM `Account` Ac 
JOIN Department D ON Ac.Department_id = D.Department_id;

-- Q2: lấy ra thông tin account được tạo sau ngày 20/12/2010
SELECT * FROM `account`
WHERE '2010-12-20' < createdate;

-- Q3: lấy ra thông tin của tất cả developers 
SELECT `account`.* , `position`.*
FROM `account`
JOIN `position`
ON `account`.Position_id=`position`.Position_id
WHERE position.Position_Name = 'Dev';

-- Q4: danh sách phòng ban có số nhân viên > 3
SELECT D.* , COUNT(ac.Department_id) Số_Nhân_Viên
FROM Department D
INNER JOIN `Account` ac
ON D.Department_id = ac.Department_id
GROUP BY Department_name
HAVING COUNT(ac.Department_id) >3 ;

-- Q5: danh sách câu hỏi được sử dụng trong đề thi nhiều nhất
SELECT Q.quest_id, Q.Content, COUNT(EQ.exam_id) AS 'Số bài thi'
 FROM Questions AS Q LEFT JOIN ExamQuestion AS EQ ON Q.quest_id = EQ.quest_id
 GROUP BY Q.quest_id
 HAVING COUNT(EQ.quest_id) = (
	 SELECT MAX(bangtam.dem)
	 FROM (
		 SELECT COUNT(ExamQuestion.exam_id) AS dem
		 FROM ExamQuestion
		 GROUP BY ExamQuestion.quest_id
         ) 	AS bangtam		);


-- Q6: thống kê mỗi CategoryQuestion được sử dụng trong bao nhiêu Questions

SELECT CQ.CateQuestion_id, CQ.CateQuestion_name, COUNT(Q.quest_id) AS 'Số lượng câu hỏi'
FROM CategoryQuestion CQ LEFT JOIN Questions Q 
ON CQ.CateQuestion_id = Q.CateQuestion_id
GROUP BY CQ.CateQuestion_id;

-- Q7: thống kê mỗi question được sử dụng bao nhiêu lần trong exam

SELECT Q.*, COUNT(EQ.exam_id) AS 'Số lần sử dụng'
FROM Questions Q LEFT JOIN ExamQuestion EQ
ON Q.quest_id = EQ.quest_id
GROUP BY Q.quest_id;

-- Q8: lấy ra question có nhiều câu trả lời nhất
SELECT Q.quest_id, Q.Content, COUNT(A.ans_id) AS 'Só lượng Question'
FROM Questions Q JOIN Answer A
ON Q.quest_id = A.quest_id 
GROUP BY Q.quest_id 
HAVING COUNT(Q.quest_id) = (
				SELECT MAX(question_count)
                FROM ( 
					SELECT COUNT(A.ans_id) AS question_count FROM Questions Q JOIN Answer A
						ON Q.quest_id = A.quest_id 
                        GROUP BY Q.quest_id )
                        AS count);

-- Q9: thống kê số lượng account trong mỗi group
SELECT Group_name , COUNT(gr.Creator_id) 
FROM `group` AS gr
JOIN  GroupAccount AS grac
ON grac.Group_id = gr.Group_id
GROUP BY Group_name;
-- Cách 2
SELECT G.*, COUNT(GA.Account_id) AS 'Số lượng account'
FROM GroupAccount GA RIGHT JOIN `Group` G
ON GA.group_id = G.group_id
GROUP BY G.group_id;

-- Q10: Tìm chức vụ có ít người nhất
-- 1: 
      SELECT         
    P.*, COUNT(P.Position_id) AS 'Số lượng chức vụ'
FROM
    `Account` A RIGHT JOIN `Position` P
       ON A.Position_id = P.Position_id
GROUP BY A.Position_id ;


SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
 
 SELECT P.Position_id, P.Position_name, COUNT(p.Position_id) AS 'Số lượng chức vụ'
 FROM `Account` A RIGHT JOIN `Position` P
 ON A.Position_id = P.Position_id
 GROUP BY A.Position_id 
 HAVING COUNT(A.Position_id) = (
			SELECT MIN(position_count)
				FROM ( 
					SELECT COUNT(A.Position_id) AS position_count 
                    FROM `Account` A RIGHT JOIN `Position` p
                    ON A.Position_id =p.Position_id 
                    GROUP BY A.position_id)
                    AS counts);
                    


                    
			

-- Q11: thống kê mỗi phòng ban có bao nhiêu DEV, TEST, PM, Scrum Master

SELECT bang_tam.*, COUNT(a.Account_id) FROM 
			(SELECT * FROM Department d CROSS JOIN `position` p) AS bang_tam
				LEFT JOIN `Account` a
					ON bang_tam.Department_id = a.Department_id AND bang_tam.Position_id = a.Position_id
						GROUP BY bang_tam.Department_name, bang_tam.Position_id;
-- Q12: Lấy thông tin chi tiết của câu hỏi bao gồm:
-- thông tin cơ bản của question, loại câu hỏi, ai là người tạo ra câu hỏi, câu trả lời là gì, …
SELECT Type_name, que.Content, que.Creator_id , an.Content, an.Is_correct
FROM TypeQuestion AS ty
JOIN Questions AS que ON que.Type_id = ty.Type_id
JOIN Answer AS an ON an.quest_id = que.quest_id;

-- Q13: lấy ra số lượng câu hỏi của mỗi loại tự luận hay trắc nghiệm
SELECT Type_name , COUNT(que.Type_id)
FROM TypeQuestion AS ty
JOIN Questions AS que ON que.Type_id = ty.Type_id
GROUP BY Type_name;

-- Q14, 15: lấy ra group không có account nào 
SELECT * FROM `group` AS gr
LEFT JOIN GroupAccount AS ga USING (Group_id)
WHERE ga.Account_id is NULL;

-- Q16: lấy ra question không có answer nào
SELECT * FROM Questions AS que
LEFT JOIN Answer AS an
ON an.quest_id = que.quest_id
WHERE an.quest_id IS NULL;

-- Q17: 
-- a: lấy ra account thuộc nhóm 1
SELECT FullName, Email , UserName
FROM `Account` AS ac
JOIN GroupAccount AS ga
ON ga.Account_id = ac.Account_id
WHERE Group_id = 1; 

-- b: lấy các account thuộc nhóm thứ 2
SELECT FullName, Email , UserName
FROM `Account` AS ac
JOIN GroupAccount AS ga
ON ga.Account_id = ac.Account_id
WHERE Group_id = 2; 

-- c: Ghép kết quả từ a và b sao cho không có kết quả nào trùng nhau
SELECT FullName, Email , UserName FROM `Account` AS ac
JOIN GroupAccount AS ga ON ga.Account_id = ac.Account_id
WHERE Group_id = 1
UNION
SELECT FullName, Email , UserName FROM `Account` AS ac
JOIN GroupAccount AS ga ON ga.Account_id = ac.Account_id
WHERE Group_id = 2;

-- Q18: 
-- a: Lấy ra các group có hơn 5 thành viên
SELECT Group_name AS NHÓM , COUNT(Account_id) AS SỐ_NHVIEN FROM `group` AS gr
JOIN GroupAccount AS ga
ON gr.Group_id = ga.Group_id
GROUP BY Group_name
HAVING COUNT(Account_id) >5;

-- b: Lấy các group có nhỏ hơn 7 thành viên
SELECT Group_name AS NHÓM , COUNT(Account_id) AS SỐ_NHVIEN FROM `group` AS gr
JOIN GroupAccount AS ga
ON gr.Group_id = ga.Group_id
GROUP BY Group_name
HAVING COUNT(Account_id) <7;

-- c:  Ghép 2 kết quả từ câu a) và câu b)
SELECT Group_name AS NHÓM , COUNT(Account_id) AS SỐ_NHVIEN FROM `group` AS gr
JOIN GroupAccount AS ga
ON gr.Group_id = ga.Group_id
GROUP BY Group_name
HAVING COUNT(Account_id) >5
UNION ALL -- LẤY CẢ KẾT QUẢ TRÙNG
SELECT Group_name AS NHÓM , COUNT(Account_id) AS SỐ_NHVIEN FROM `group` AS gr
JOIN GroupAccount AS ga
ON gr.Group_id = ga.Group_id
GROUP BY Group_name
HAVING COUNT(Account_id) <7;
