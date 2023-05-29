/* Table 3: Account
 AccountID: định danh của User (auto increment)
 Email:
 Username:
 FullName:
 DepartmentID: phòng ban của user trong hệ thống
 PositionID: chức vụ của User
 CreateDate: ngày tạo tài khoản */


import java.time.LocalDate;

public class Account {
    public int accountID;
    public String email;
    public String userName;
    public String fullName;
    public Department departmentID;
    public Position positionID;
    public LocalDate createDate;
    public Group[] groups;
}
