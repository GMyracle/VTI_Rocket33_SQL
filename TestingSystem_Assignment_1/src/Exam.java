/* Table 10: Exam
         ExamID: định danh của đề thi (auto increment)
         Code: mã đề thi
         Title: tiêu đề của đề thi
         CategoryID: định danh của chủ đề thi
         Duration: thời gian thi
         CreatorID: id của người tạo đề thi
         CreateDate: ngày tạo đề thi */

import java.time.LocalDate;
import java.time.LocalDateTime;

public class Exam {
    public int examID;
    public int code;
    public String title;
    public CategoryQuestion categoryID;
    public LocalDateTime duration;
    public Account creatorID;
    public LocalDate createDate;
}
