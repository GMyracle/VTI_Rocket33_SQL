DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE Testing_System_Assignment_1;
Use Testing_System_Assignment_1 ;

CREATE TABLE IF NOT EXISTS Department (
    Department_id TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    Department_name NVARCHAR(20) UNIQUE KEY NOT NULL
);
-- insert data for table Department
 INSERT INTO Department(Department_name) 
 VALUES
 ('Kinh Doanh'),
 ('Kế Toán'),
 ('Nhân sự'),
 ('Quan hệ khách hàng'),
 ('Giám đốc'),
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
CreateDate         DATETIME NOT NULL DEFAULT NOW(),
FOREIGN KEY (Department_id) REFERENCES Department(Department_id),
FOREIGN KEY (Position_id) REFERENCES `Position` (Position_id)
);
-- insert data into table Account
 INSERT INTO `Account` ( `Email`, `Username`, `Fullname`, `Department_id`, `Position_id`) 
VALUES
( 'gianghoang22@gmail.com', 'Giang', 'Hoang Giang', '1', '2'),
( 'tramy6423@gmail.com', 'My', 'Bui My', '2', '1'),
( 'tranthanh2244@gmail.com', 'Thanh', 'Tran thanh', '3', '4'),
( 'thienthien2322@gmail.com', 'Thien', 'Thien Thien', '4', '4'),
( 'tiendat2255@gmail.com', 'Dat', 'Tien Dat', '5', '3');
SELECT * FROM `Account`;

CREATE TABLE IF NOT EXISTS `Group`(
Group_id          TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Group_name        VARCHAR(50) UNIQUE KEY NOT NULL,
Creator_id        TINYINT UNSIGNED UNIQUE KEY NOT NULL,
Create_date       DATETIME NOT NULL DEFAULT NOW()
);
-- insert data into  table Group
INSERT INTO `Group`(Group_name, Creator_id) 
VALUES
('Testing', '1'),
('Leader', '2'),
('Project', '3'),
('Marketing', '4'),
('Sale', '5');
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
Create_date       DATETIME NOT NULL DEFAULT NOW(),
FOREIGN KEY (cateQuestion_id) REFERENCES CategoryQuestion(CateQuestion_id),
FOREIGN KEY (Creator_id) REFERENCES `Account`(Account_id)
);
-- insert data for table Exam
INSERT INTO	Exam ( code_ex, title, CateQuestion_id, duration, Creator_id  )
VALUES
('VTIR33001', 'Đề thi Java', 1, 60, 5),
('VTIR33002', 'Đề thi Ruby', 2, 90, 2),
('VTIR33003', 'Đề thi .NET', 3, 60, 1),
('VTIR33004', 'Đề thi Postman', 1, 70, 3),
('VTIR33005', 'Đề thi SQL', 1, 120, 4);
SELECT * FROM Exam;

CREATE TABLE IF NOT EXISTS ExamQuestion(
exam_id       MEDIUMINT UNSIGNED NOT NULL PRIMARY KEY,
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

			








