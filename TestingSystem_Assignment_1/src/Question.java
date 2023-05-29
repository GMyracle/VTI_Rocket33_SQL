/* Table 8: Question
 QuestionID: định danh của câu hỏi (auto increment)
 Content: nội dung của câu hỏi
 CategoryID: định danh của chủ đề câu hỏi
 TypeID: định danh của loại câu hỏi
 CreatorID: id của người tạo câu hỏi
 CreateDate: ngày tạo câu hỏi */

import java.time.LocalDate;

public class Question {
    public int questionID;
    public String content;
    public CategoryQuestion categoryID;
    public TypeQuestion typeID;
    public Account creatorID;
    public LocalDate createDate;
}
