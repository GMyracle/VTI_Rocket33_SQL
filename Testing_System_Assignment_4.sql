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
 ('Sale'),
 ('Kế Toán'),
 ('Nhân sự'),
 ('Quan hệ khách hàng'),
 ('Giám đốc'),
 ('Bảo vệ'),
 ('Thư kí'),
 ('Chất Lượng'),
 ('An ninh thông tin'), 
 ('Kỹ Thuật'); 
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
-- insert data into table Account
 INSERT INTO `Account` ( `Email`, `Username`, `Fullname`, `Department_id`, `Position_id`, `CreateDate`) 
VALUES
( 'gianghoang22@gmail.com', 'Giang', 'Hoang Giang', '1', '2', '2020-10-11'),
( 'nhitran2@gmail.com', 'Nhi', 'Hoang Tran Nhi', '2', '2', '2019-09-11'),
( 'ngocha72@gmail.com', 'Ha', 'Bui Ngoc Ha', '3', '2', '2018-03-07'),
( 'linhtrang442@gmail.com', 'Trang', 'Nguyen Linh Trang', '1', '1','2017-03-09'),
( 'vantung23@gmail.com', 'Tung', 'Nguyễn  Văn Tùng', '1', '3', '2019-09-01'),
( 'khanhlinh33@gmail.com', 'Linh', 'Nguyen Khanh Linh', '4', '2', '2018-09-12'),
( 'tramy6423@gmail.com', 'My', 'Bui My', '2', '1', '2020-03-09'),
( 'tranthanh2244@gmail.com', 'Thanh', 'Tran thanh', '3', '4','2022-11-03'),
( 'thienthien2322@gmail.com', 'Thien', 'Thien Thien', '4', '4', '2023-01-05'),
( 'tiendat2255@gmail.com', 'Dat', 'Tien Dat', '5', '3', '2022-11-04');
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
('Testing', '1','2020-01-21'),
('Leader', '2', '2019-01-03'),
('Project', '3', '2018-01-21'),
('Marketing', '4', '2021-01-07'),
('Sale', '5', '2019-01-31');
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
 ('1', '1'),
 ('1', '2'),
 ('3', '3'),
 ('3', '4'),
 ('5', '3');
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
('Ruby');
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
INSERT INTO Questions(Content, CateQuestion_id, Type_id, Creator_id)
VALUES
('Câu hỏi về Java', 1, '1', '1'),
('Câu hỏi về .NET', 2, '1', '3'),
('Câu hỏi về SQL', 3, '2', '2'),
('Câu hỏi về Postman', 5, '2', '4'),
('Câu hỏi về Ruby', 4, '1', '5');
SELECT * FROM Questions;

CREATE TABLE IF NOT EXISTS Answer(
ans_id           SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Content          NVARCHAR(100) UNIQUE KEY NOT NULL,
quest_id         SMALLINT UNSIGNED NOT NULL, 
is_correct       BIT NOT NULL,
FOREIGN KEY (quest_id) REFERENCES Questions(quest_id)
);
-- insert data for table Answer
INSERT INTO	Answer ( Content, quest_id, is_correct)
VALUES
('Java là ngôn ngữ hướng đối tượng', 1, 1),
('.NET không phải ngôn ngữ được viết bởi Microsoft', 1, 0),
('SQL là ngôn ngữ lập trình phục vụ việc lưu trữ và xử lý thông tin trong cơ sở dữ liệu quan hệ', 1, 1),
('Postman là một loại công cụ cho phép người dùng có thể thao tác với API', 2 , 0),
('Ruby là ngôn ngữ hướng đối tượng, linh hoạt', 1, 1);
SELECT * FROM Answer;

CREATE TABLE IF NOT EXISTS Exam(
exam_id           MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
code_ex           CHAR(30) UNIQUE KEY NOT NULL,
title             VARCHAR(30) NOT NULL,
CateQuestion_id   TINYINT UNSIGNED NOT NULL,
duration          TINYINT NOT NULL,
Creator_id        INT UNSIGNED NOT NULL,
Create_date       DATE NOT NULL,
FOREIGN KEY (cateQuestion_id) REFERENCES CategoryQuestion(CateQuestion_id),
FOREIGN KEY (Creator_id) REFERENCES `Account`(Account_id)
);
-- insert data for table Exam
INSERT INTO	Exam ( code_ex, title, CateQuestion_id, duration, Creator_id, Create_date  )
VALUES
('VTIR33001', 'Đề thi Java', 1, 60, 5, '2018-12-03'),
('VTIR33002', 'Đề thi Ruby', 2, 90, 2,'2019-11-09' ),
('VTIR33003', 'Đề thi .NET', 3, 60, 1,'2018-12-24'),
('VTIR33004', 'Đề thi Postman', 1, 70, 3,'2018-01-05'),
('VTIR33005', 'Đề thi SQL', 1, 120, 4,'2018-02-08');
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
( 1 , 5 ),
( 2 , 2 ),
( 3 , 1 ),
( 4 , 3 ),
( 5 , 4 );
SELECT * FROM ExamQuestion;

-- ASS4:
-- Q1: 
-- Q2: lấy ra thông tin account được tạo sau ngày 20/12/2010
select * from `account`
where '2010-12-20' < createdate;

-- Q3: lấy ra thông tin của tất cả developers 
SELECT `account`.* , `position`.*
FROM `account`
JOIN `position`
ON `account`.Position_id=`position`.Position_id
WHERE position.Position_Name = 'Dev';

-- Q4: danh sách phòng ban có số nhân viên > 3
SELECT Department_Name , COUNT(ac.Department_id) Số_Nhân_Viên
FROM Department de
INNER JOIN `Account` ac
ON de.Department_id = ac.Department_id
GROUP BY Department_name
HAVING COUNT(ac.Department_id) >3 ;

-- Q5: danh sách câu hỏi được sử dụng trong đề thi nhiều nhất
SELECT Type_name Dạng_Câu_Hỏi , COUNT(que.Type_id) SỐ_BÀI
FROM Questions que
INNER JOIN TypeQuestion typ USING (Type_id)
GROUP BY Type_name
HAVING MAX(SỐ_BÀI)
LIMIT 1;

SELECT * FROM typequestion;


-- Q6: thống kê mỗi CategoryQuestion được sử dụng trong bao nhiêu Questions

SELECT Type_name DẠNG_CÂU_HỎI , COUNT(que.Type_id) SỐ_LẦN_DÙNG
FROM TypeQuestion typ
JOIN Questions que USING (Type_id)
GROUP BY Type_name;

-- Q7: thống kê mỗi question được sử dụng bao nhiêu lần trong exam
SELECT CateQuestion_name AS CÂU_HỎI_MÔN , COUNT(ex.CateQuestion_id) AS SỐ_ĐỀ_THI_CÓ
FROM CategoryQuestion AS cq
JOIN Exam AS ex
ON ex.CateQuestion_id = cq.CateQuestion_id
GROUP BY CateQuestion_name;

-- Q8: lấy ra question có nhiều câu trả lời nhất
SELECT q.Content , COUNT(a.quest_id) SL_Quest
FROM Questions AS q
JOIN Answer AS a USING(quest_id)
GROUP BY q.Content
ORDER BY SL_Quest DESC
LIMIT 1 ;

-- Q9: thống kê số lượng account trong mỗi group
SELECT Group_name , COUNT(gr.Creator_id) , CONCAT(gr.Creator_id)
FROM `group` AS gr
JOIN  GroupAccount AS grac
ON grac.Group_id = gr.Group_id
GROUP BY Group_name;

-- Q10: Tìm chức vụ có ít người nhất
SELECT Position_name , COUNT(po.Position_id) AS SỐ_ACCOUNT
FROM `Position` AS po
JOIN `Account` AS ac USING (Position_id)
GROUP BY po.Position_name
HAVING COUNT(SỐ_ACCOUNT)
ORDER BY SỐ_ACCOUNT ASC
LIMIT 1;

-- Q11: thống kê mỗi phòng ban có bao nhiêu DEV, TEST, PM, Scrum Master
SELECT de.Department_name , Position_name , COUNT(ac.Position_id)
FROM `Account` AS ac 
JOIN Department AS de ON de.Department_id = ac.Department_id
JOIN Position AS po ON po.Position_id = ac.Position_id
GROUP BY de.Department_name, po.Position_id;

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
WHERE an.quest_id IS NOT NULL;

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
