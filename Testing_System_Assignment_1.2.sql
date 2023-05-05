-- Taọ cơ sở dữ liệu mới
DROP DATABASE IF EXISTS Fresher;
CREATE DATABASE Fresher;
USE Fresher;
-- Q1: tạo bảng trainee
DROP TABLE IF EXISTS Trainee;
CREATE TABLE Trainee (
TraineeID         INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
Full_Name         VARCHAR(50) NOT NULL,
Birth_Date        DATE,
Gender            ENUM('Male', 'Female', 'Unknown'),
ET_IQ             TINYINT NOT NULL,
ET_Gmath          TINYINT NOT NULL,
ET_English        TINYINT NOT NULL,
Training_Class    VARCHAR(10) NOT NULL, 
Evaluation_Notes  TEXT,
CHECK (ET_IQ >=0 AND ET_IQ <=20),
CHECK (ET_Gmath >=0 AND ET_Gmath <=20),
CHECK (ET_English >=0 AND ET_English <=50)
); 

-- Q2: Thêm vào trường VTI_Account (không rỗng, duy nhất)

ALTER TABLE Trainee ADD VTI_Account VARCHAR(50) NOT NULL UNIQUE;

-- Exercise 2: 
DROP TABLE IF EXISTS Exercise2;
CREATE TABLE Exercise2 (
ID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
`Name` VARCHAR(50) NOT NULL,
`Code` CHAR(5) NOT NULL,
ModifiedDate DATETIME DEFAULT NOW()
);

-- Exercise 3:
DROP TABLE IF EXISTS Exercise3;
CREATE TABLE Exercise3 (
ID INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
`Name` VARCHAR(50) NOT NULL,
BirthDate DATE NOT NULL,
Gender BIT DEFAULT NULL,
isDeleted BIT NOT NULL
);


