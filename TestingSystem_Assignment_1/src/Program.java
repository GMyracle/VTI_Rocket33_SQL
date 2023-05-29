/* Question 2:
Tạo file Program.java có chứa main() method và khởi tạo ít nhất 3 đối tượng
đối với mỗi table trong java
Question 3:
Trong file Program.java, hãy in ít nhất 1 giá trị của mỗi đối tượng ra
*/

import java.time.LocalDateTime ;
import  java.time.LocalDate;


public class Program {
    public static void main(String[] args) {
        // create dep1
        Department dep1 = new Department();
        dep1.departmentID = 1;
        dep1.departmentName = "Sale";

        // in thongtin dep1
        System.out.println("tt phong ban 1 ");
        System.out.println("ID: " + dep1.departmentID);
        System.out.println("Name:" + dep1.departmentName);

        // create dep2
        Department dep2 = new Department();
        dep2.departmentID = 2;
        dep2.departmentName = "Marketing";

        // in thongtin dep2
        System.out.println("tt phong ban 2 ");
        System.out.println("ID: " + dep2.departmentID);
        System.out.println("Name:" + dep2.departmentName);

        /* create position */
        Position pos1 = new Position();
        pos1.positionID = 1;
        pos1.positionName = PositionName.Dev;

        Position pos2 = new Position();
        pos2.positionID = 2;
        pos2.positionName = PositionName.Test;

        Position pos3 = new Position();
        pos3.positionID = 3;
        pos3.positionName = PositionName.Scrum_Master;

        Position pos4 = new Position();
        pos4.positionID = 4;
        pos4.positionName = PositionName.PM;

        // in thongtin pos1
        System.out.println("---------------------------------- ");
        System.out.println("tt chuc vu ");
        System.out.println("posID: " + pos1.positionID);
        System.out.println("posName:" + pos1.positionName);

        /* create Account */
        Account acc1 = new Account();
        acc1.accountID = 01;
        acc1.email = "jonty123@gmail.com";
        acc1.userName = "Jonty";
        acc1.fullName = "Wilyam Jonty";
        acc1.departmentID = dep2;
        acc1.positionID = pos2;
        acc1.createDate = LocalDate.now();

        Account acc2 = new Account();
        acc2.accountID = 02;
        acc2.email = "hoangtd93@gmail.com";
        acc2.userName = "hoang";
        acc2.fullName = "Hoang Ta";
        acc2.departmentID = dep1;
        acc2.positionID = pos1;
        // acc3
        Account acc3 = new Account();
        acc3.accountID = 03;
        acc3.email = "thuytienphd@gmail.com";
        acc3.userName = "Tien";
        acc3.fullName = "Thuy Tien";
        acc3.departmentID = dep1;
        acc3.positionID = pos3;
        acc3.createDate = LocalDate.of(2022, 12, 11);
        // acc4
        Account acc4 = new Account();
        acc4.accountID = 04;
        acc4.email = "acc4@gmail.com";
        acc4.userName = "ac4";
        acc4.fullName = "account4";
        acc4.departmentID = dep1;
        acc4.positionID = pos3;
        acc4.createDate = LocalDate.of(2022, 12, 11);
        // acc5
        Account acc5 = new Account();
        acc5.accountID = 05;
        acc5.email = "acc5@gmail.com";
        acc5.userName = "ac5";
        acc5.fullName = "account5";
        acc5.departmentID = dep2;
        acc5.positionID = pos1;
        acc5.createDate = LocalDate.of(2022, 12, 11);

        System.out.println("---------------------------------- ");
        // in thongtin acc1
        System.out.println("tt account");
        System.out.println("accountID: " + acc1.accountID);
        System.out.println("Email:" + acc1.email);
        System.out.println("Username: " + acc1.userName);
        System.out.println("FullName:" + acc1.fullName);
        System.out.println("DepartmentID: " + acc1.departmentID.departmentID);
        System.out.println("PositionID: " + acc1.positionID.positionName);
        System.out.println("CreateDate: " + acc1.createDate);

        /* create group */
        Group grp1 = new Group();
        grp1.groupID = 1;
        grp1.groupName = "mentor";
        grp1.creatorID = acc1;
        grp1.createDate = LocalDate.of(2022, 4, 13);
        Account[] grp1Accounts = { acc1, acc2 };
        grp1.accounts = grp1Accounts;

        Group grp2 = new Group();
        grp2.groupID = 2;
        grp2.groupName = "tutor";
        grp2.creatorID = acc2;
        grp2.createDate = LocalDate.now();
        Account[] grp2Accounts = { acc2 };
        grp2.accounts = grp2Accounts;

        Group grp3 = new Group();
        grp3.groupID = 1;
        grp3.groupName = "music";
        grp3.creatorID = acc1;
        grp3.createDate = LocalDate.of(2022, 9, 11);
        Account[] grp3Accounts = { acc1, acc2 };
        grp3.accounts = grp3Accounts;

        Group grp4 = new Group();
        grp4.groupID = 2;
        grp4.groupName = "guitar";
        grp4.creatorID = acc2;
        grp4.createDate = LocalDate.of(2022, 10, 20);

        Account[] grp4Accounts = { acc1, acc2 };
        grp4.accounts = grp4Accounts;

        // gan gruop vao account
        Group[] acc1Groups = new Group[2];
        acc1Groups[0] = grp1;
        acc1Groups[1] = grp3;
        acc1.groups = acc1Groups;

        Group[] acc2groups = { grp1, grp2, grp4 };
        acc2.groups = acc2groups;

        // in group
        System.out.println("---------------------------------- ");
        System.out.println("tt group");
        System.out.println("groupID: " + grp1.groupID);
        System.out.println("groupname: " + grp1.groupName);
        System.out.println("creatorID: " + grp1.creatorID.accountID);
        System.out.println("CreateDate: " + grp1.createDate);
        System.out.println("group acc1 tham gia: " + acc1.groups[0].groupName);
        System.out.println("group acc1 tham gia: " + acc1.groups[1].groupName);

        System.out.println("---------------------------------- ");
        System.out.println("group acc2 tham gia: " + acc2.groups[0].groupName);
        System.out.println("group acc2 tham gia: " + acc2.groups[1].groupName);
        System.out.println("group acc2 tham gia: " + acc2.groups[2].groupName);

        System.out.println("---------------------------------- ");
        System.out.println("trong group1 co acc tham gia: " + grp1.accounts[0].email);
        System.out.println("trong group1 co acc tham gia: " + grp1.accounts[1].email);

        // create Type question---------------------------------- ");

        TypeQuestion typeQ1 = new TypeQuestion();
        typeQ1.typeID = 1;
        typeQ1.typeName = TypeName.Essay;
        TypeQuestion typeQ2 = new TypeQuestion();
        typeQ2.typeID = 2;
        typeQ2.typeName = TypeName.Multiple_choice;

        // create CategoryQuestion---------------------------------- ");

        CategoryQuestion cQ1 = new CategoryQuestion();
        cQ1.categoryID = 1;
        cQ1.categoryName = CategoryName.Java;
        CategoryQuestion cQ2 = new CategoryQuestion();
        cQ2.categoryID = 1;
        cQ2.categoryName = CategoryName.NET;
        CategoryQuestion cQ3 = new CategoryQuestion();
        cQ3.categoryID = 1;
        cQ3.categoryName = CategoryName.SQL;
        CategoryQuestion cQ4 = new CategoryQuestion();
        cQ4.categoryID = 1;
        cQ4.categoryName = CategoryName.Postman;
        CategoryQuestion cQ5 = new CategoryQuestion();
        cQ5.categoryID = 1;
        cQ5.categoryName = CategoryName.Ruby;

        // create Question---------------------------------- ");

        Question question1 = new Question();
        question1.questionID = 1;
        question1.content = "This is question 1";
        question1.categoryID = cQ1;
        question1.typeID = typeQ1;
        question1.creatorID = acc1;
        question1.createDate = LocalDate.of(2022, 12, 12);
        // q2
        Question question2 = new Question();
        question2.questionID = 1;
        question2.content = "This is question 2";
        question2.categoryID = cQ2;
        question2.typeID = typeQ2;
        question2.creatorID = acc2;
        question2.createDate = LocalDate.of(2023, 1, 2);
        // q3
        Question question3 = new Question();
        question3.questionID = 1;
        question3.content = "This is question 3";
        question3.categoryID = cQ3;
        question3.typeID = typeQ2;
        question3.creatorID = acc3;
        question3.createDate = LocalDate.of(2022, 10, 3);

        // create Answer---------------------------------- ");

        Answer answer1 = new Answer();
        answer1.answerID = 1;
        answer1.content = "cau tra loi ve JAVA!";
        answer1.questionID = question1;
        answer1.isCorrect = "T";
        Answer answer2 = new Answer();
        answer2.answerID = 2;
        answer2.content = "cau tra loi ve NET!";
        answer2.questionID = question2;
        answer2.isCorrect = "F";
        Answer answer3 = new Answer();
        answer3.answerID = 3;
        answer3.content = "cau tra loi ve SQL!";
        answer3.questionID = question3;
        answer3.isCorrect = "F";
        Answer answer4 = new Answer();
        answer4.answerID = 4;
        answer4.content = "cau tra loi ve Postman!";
        answer4.questionID = question2;
        answer4.isCorrect = "T";

        // create Exam----------------------------------
        Exam exam1 = new Exam();
        exam1.examID = 1;
        exam1.code = 1;
        exam1.title = "cau tra loi ve JavaCode";
        exam1.categoryID = cQ1;
        exam1.duration = LocalDateTime.now();
        exam1.creatorID = acc1;
        exam1.createDate = LocalDate.now();
        Exam exam2 = new Exam();
        exam2.examID = 1;
        exam2.code = 1;
        exam2.title = "cau tra loi ve NET";
        exam2.categoryID = cQ2;
        exam2.duration = LocalDateTime.now();
        exam2.creatorID = acc2;
        Exam exam3 = new Exam();
        exam3.examID = 1;
        exam3.code = 1;
        exam3.title = "cau tra loi ve SQL";
        exam3.categoryID = cQ3;
        exam3.duration = LocalDateTime.now();
        exam3.creatorID = acc3;

    }
}
