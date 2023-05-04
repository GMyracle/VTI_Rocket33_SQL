DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE Testing_System_Assignment_1;
Use Testing_System_Assignment_1 ;

CREATE TABLE IF NOT EXISTS Department(
Department_id       tinyint unsigned primary key  auto_increment,
Department_name     varchar(50) unique key not null 
 ) ;

CREATE TABLE IF NOT EXISTS `Position` (
Position_id        tinyint unsigned primary key auto_increment,
Position_name      varchar(50) unique key not null
 );
 
CREATE TABLE IF NOT EXISTS `Account`(
Account_id         tinyint unsigned auto_increment primary key,
Email          varchar(50) unique key,
Username       varchar(50)unique key not null,
Fullname       varchar(50) not null,
Department_id         tinyint unsigned not null,
Position_id    tinyint unsigned not null,
CreateDate     datetime 
);


CREATE TABLE IF NOT EXISTS `Group`(
Group_id          tinyint unsigned auto_increment primary key,
Group_name        varchar(50) unique key not null,
Creator_id        tinyint unsigned unique key not null,
Create_date       datetime 
);


CREATE TABLE IF NOT EXISTS GroupAccount(
Group_id       tinyint unsigned not null primary key,
Account_id         tinyint unsigned not null,
Join_date      datetime 
);


CREATE TABLE IF NOT EXISTS TypeQuestion(
Type_id     tinyint unsigned auto_increment primary key,
Type_name   varchar(50) unique key not null   
);


CREATE TABLE IF NOT EXISTS CategoryQuestion(
CateQuestion_id       tinyint unsigned auto_increment primary key,
CateQuestion_name     varchar(50) unique key not null
);


CREATE TABLE IF NOT EXISTS Questions(
quest_id             tinyint unsigned auto_increment primary key,
Content              varchar(50) unique key not null,
CateQuestion_id      tinyint unsigned not null,
Type_id              tinyint unsigned not null ,
Creator_id           tinyint unsigned not null ,
Create_date          datetime
);


CREATE TABLE IF NOT EXISTS Answer(
ans_id           tinyint unsigned auto_increment primary key,
Content          varchar(50) unique key not null,
quest_id         tinyint unsigned not null, 
is_correct       enum('failse','true') unique key not null
);

CREATE TABLE IF NOT EXISTS Exam(
exam_id           tinyint unsigned auto_increment primary key,
code_ex           varchar(50) unique key not null,
title             varchar(50) not null,
CateQuestion_id   tinyint unsigned not null,
duration          date not null,
Creator_id        tinyint unsigned not null,
Create_date       datetime 
);


CREATE TABLE IF NOT EXISTS ExamQuestion(
exam_id       tinyint unsigned not null primary key,
quest_id      tinyint unsigned not null
);
