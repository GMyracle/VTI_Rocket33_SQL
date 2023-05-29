/* Table 5: GroupAccount
         GroupID: định danh của nhóm
         AccountID: định danh của User
         JoinDate: Ngày user tham gia vào nhóm */

import java.time.LocalDate;

public class GroupAccount {
    public Group groupID;
    public Account accountID;
    public LocalDate joinDate;
}
