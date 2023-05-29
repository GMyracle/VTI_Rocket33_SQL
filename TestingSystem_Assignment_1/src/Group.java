/* Table 4: Group
 GroupID: định danh của nhóm (auto increment)
 GroupName: tên nhóm
 CreatorID: id của người tạo group
 CreateDate: ngày tạo group */

import java.time.LocalDate;

public class Group {
    public int groupID;
    public String groupName;
    public Account creatorID;
    public LocalDate createDate;
    public Account[] accounts;
}
