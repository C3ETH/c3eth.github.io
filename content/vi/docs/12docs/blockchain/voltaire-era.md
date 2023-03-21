---
title: 'CIP-1694: Cardano bước vào kỷ nguyên Voltaire'
date: 2022-12-22 08:48:23 +0000
lastmod: 2022-12-22 08:48:23 +0000
draft: false
images: []
---

![hình ảnh](https://img.cexplorer.io/i/8645fee8d7d502d27bb80c7174bf145a.jpg)

[Đọc bài viết trên Cardano Explorer](https://cexplorer.io/article/cip-1694-cardano-enters-the-voltaire-era)

Nhóm IOG chuẩn bị cho Cardano bước vào kỷ nguyên Voltaire. Nếu chủ đề quản trị trên chuỗi khiến bạn quan tâm, thì chắc chắn bạn không nên bỏ qua CIP-1694. Đề xuất cải tiến Cardano (CIP) này xác định nền tảng cho việc ra quyết định phi tập trung. Đây sẽ là bước quan trọng đầu tiên hướng tới quản lý phi tập trung của dự án Cardano, dự án sẽ chuyển giao một lượng quyền lực đáng kể cho cộng đồng.

## Tóm tắt

- Hiện tại, 7 khóa quản trị được phân chia giữa 3 thực thể.
- Sẽ có một tài liệu gọi là Hiến pháp và một ủy ban để giám sát việc quản trị.
- Sẽ có một vai trò mới là Đại diện ủy quyền (DRep), bất kỳ ai quan tâm đều có thể nhận được vai trò này. Người đặt cược có thể ủy thác số tiền đặt cược của họ cho DReps.
- Trong mô hình quản trị mới, những thay đổi chính sẽ do ủy ban, DReps và SPO quyết định.

## Ngày nay quản trị trông như thế nào?

Mọi hành động quản trị phải được bắt đầu thông qua một giao dịch quản trị đặc biệt. Giao dịch này phải được ủy quyền bởi ít nhất 5 trong số 7 khóa quản trị. 3 khóa quản trị do IOG nắm giữ, 2 khóa do Cardano Foundation nắm giữ và 2 khóa do Emurgo nắm giữ.

Giao dịch quản trị chứa các tham số đặc biệt mô tả chi tiết của hành động được yêu cầu. Những hành động này liên quan đến việc sửa đổi các tham số giao thức Cardano và chuyển động của tiền ADA từ kho bạc và dự trữ của dự án.

Nếu giao dịch quản trị được ký với số lượng khóa cần thiết, giao dịch đó sẽ được thực hiện trên một ranh giới kỷ nguyên. Điều này có nghĩa là hành động được ban hành.

Một trong những tham số Cardano quan trọng là phiên bản chính của giao thức. Các giao dịch quản trị bắt đầu một hard fork, tức là một bản nâng cấp của giao thức Cardano. Việc thay đổi các tham số giao thức Cardano (ví dụ: tham số K) không yêu cầu thay đổi giao thức chính và có thể được khởi tạo hầu như bất kỳ lúc nào.

Một hard fork là một trường hợp đặc biệt vì nếu việc di chuyển sang một phiên bản mới được phê duyệt, thì người điều hành nhóm và người dùng phải cài đặt trước một phiên bản mới của ứng dụng khách. Việc nâng cấp cũng phải được hỗ trợ bởi các sàn giao dịch, ví xây dựng nhóm của bên thứ ba, v.v. Bộ kết hợp hard fork chỉ có thể được kích hoạt nếu tất cả các bên liên quan đã sẵn sàng cho việc nâng cấp.

Do đó, việc thay đổi một tham số liên quan đến phiên bản giao thức chính được coi là một hành động đặc biệt trong cả mô hình quản trị cũ và mới.

Bước sang kỷ nguyên Voltaire sẽ giải quyết một số thiếu sót của mô hình hiện tại. Mô hình hiện tại là phi tập trung, nhưng chỉ có 3 thực thể có thể tham gia bỏ phiếu. Người nắm giữ ADA không thể bỏ phiếu. Mặc dù nhóm thảo luận về các thay đổi tham số giao thức với các nhà điều hành nhóm và cộng đồng, nhưng chỉ có 3 thực thể sáng lập có quyền kiểm soát quy trình. Hơn nữa, không có tài liệu hoặc hướng dẫn nào xác định nguyên tắc ra quyết định nên dựa trên nguyên tắc nào.

## Hiến pháp và Ủy ban Hiến pháp

Một tài liệu có tên là Hiến pháp sẽ được tạo ra để xác định các giá trị cốt lõi và nguyên tắc hướng dẫn cho việc quản trị dự án Cardano. Ở giai đoạn sau, có thể một phần của tài liệu sẽ ở dạng hợp đồng thông minh. Trong giai đoạn đầu, nó sẽ chỉ là một tài liệu ngoài chuỗi có hàm băm sẽ được lưu trữ trên chuỗi trong sổ cái Cardano.

Sẽ có một Ủy ban Hiến pháp bao gồm các thành viên hoặc tổ chức chịu trách nhiệm giám sát việc quản trị. Mọi hành động quản trị phải phù hợp với Hiến pháp.

Điều quan trọng cần nói là Ủy ban Hiến pháp sẽ không có bất kỳ quyền hạn đặc biệt nào so với các chủ thể khác. Các chủ thể khác (DReps) có thể thay thế các thành viên Ủy ban Hiến pháp bất cứ lúc nào và phải phê duyệt tất cả các hành động quản trị. Có thể nói, ủy ban có các quyền rất giống với các thành viên khác. Một trong những lý do tồn tại của ủy ban là để giải quyết vấn đề bootstrapping. Ủy ban có thể hoạt động như một người cố vấn hoặc cố vấn.

Ủy ban Hiến pháp có thể ở một trong các bang sau:

- một trạng thái bình thường (sự tự tin)
- một trạng thái không tự tin

Nếu một ủy ban ở trong tình trạng "bất tín nhiệm", thì ủy ban đó không thể tham gia vào bất kỳ hành động quản trị nào nữa và phải được thay thế trước khi bất kỳ hành động quản trị nào được ban hành. Bất kỳ hành động quản trị nổi bật nào đều trở nên vô hiệu ngay sau khi ủy ban chuyển sang trạng thái "không tin tưởng". Trong trường hợp này, SPO và DRep sẽ đại diện cho ý chí của cộng đồng.

Trong giai đoạn đầu, các thành viên ủy ban sẽ là thành viên cốt lõi của các tổ chức thành lập Cardano và các thành viên tích cực của cộng đồng. Không có số lượng thành viên ủy ban hoặc số đại biểu nhất định (số lượng phiếu bầu được yêu cầu để ban hành các hành động quản trị).

Ở trạng thái tin cậy, hoa hồng có thể được thay thế bằng hành động quản trị 2. Trạng thái mới phải được sự chấp thuận của hoa hồng và DReps hiện có (chúng ta sẽ nói về DReps sau). Ở trạng thái không tin cậy, hoa hồng có thể được thay thế bằng hành động quản trị 5 và phải được SPO và DRep phê duyệt.

Đại diện ủy quyền (DRep) là một vị trí dành cho tất cả những người nắm giữ ADA thông qua đăng ký. Đăng ký DRep sẽ bắt chước các cơ chế ủy quyền cổ phần hiện có (thông qua chứng chỉ). Chủ sở hữu khóa đặt cược (về cơ bản là người đặt cược) sẽ có thể ủy thác số tiền đặt cược của họ cho DReps. Nếu ai đó không muốn tham gia tích cực vào việc quản trị nhưng muốn có người có kinh nghiệm đưa ra quyết định thay mình, thì người đó có thể ủy quyền cổ phần của mình cho DRep đã chọn để củng cố vị trí của mình. Đó là nguyên tắc tương tự như ủy quyền ADA cho một nhóm.

Ngoài phân phối thông tin xác thực trên mỗi cổ phần hiện có và phân phối trên mỗi nhóm cổ phần, một phân phối cổ phần mới trên mỗi DRep sẽ được giới thiệu.

Điều đáng chú ý là SPO có thể trở thành DRep. Không có lý do gì để ngăn cản họ làm như vậy. Tuy nhiên, DRep không nhất thiết phải là SPO. Điều này cho phép bất kỳ ai có được vị thế vững chắc thông qua ủy quyền cổ phần mà không cần phải điều hành nhóm của riêng họ.

Điều quan trọng cần lưu ý là không yêu cầu xác minh danh tính đối với các thành viên ủy ban và DRep. Người ta hy vọng rằng một cái gì đó như DID là đủ cho cộng đồng. Buộc xác minh danh tính sẽ đi ngược lại các nguyên tắc phân quyền.

## Hành động quản trị

Trong giai đoạn đầu, sẽ có 6 hành động quản trị. Hành động quản trị là một sự kiện trên chuỗi sẽ được kích hoạt bởi một giao dịch đặc biệt với thời hạn xác định mà sau đó giao dịch đó không thể được thực hiện.

Hành động quản trị được coi là phê chuẩn khi nó nhận được đủ số phiếu CÓ ủng hộ. Nếu nó không nhận được số phiếu yêu cầu, nó được coi là hết hạn. Nếu một hành động được phê chuẩn, nó sẽ được ban hành sau khi được kích hoạt trên mạng. Một hành động có thể bị hủy bỏ ngay cả khi nó đã được phê chuẩn nếu ủy ban rơi vào trạng thái "bất tín nhiệm".

Chúng ta hãy xem danh sách các sự kiện:

1. Phong trào bất tín nhiệm
2. Ủy ban Hiến pháp mới và/hoặc quy mô đại biểu
3. Cập nhật Hiến pháp
4. Bắt đầu Hard-Fork
5. Thay đổi tham số giao thức
6. rút tiền kho bạc

Bất kỳ chủ sở hữu ADA nào cũng có thể gửi hành động quản trị nếu họ cung cấp khoản tiền gửi ADA bắt buộc. Tiền đặt cọc sẽ được trả lại sau cuộc bỏ phiếu bất kể kết quả như thế nào.

Các hành động quản trị có thể được phê chuẩn thông qua bỏ phiếu trên chuỗi. Tùy thuộc vào loại hành động, các yêu cầu phê chuẩn khác nhau được yêu cầu. Một hành động sẽ được phê chuẩn nếu một số kết hợp cụ thể sau đây xảy ra:

- Ủy ban Hiến pháp phê duyệt hành động.
- DReps chấp nhận hành động.
- Các SPO chấp nhận hành động.

Trong trường hợp bỏ phiếu của Ủy ban Hiến pháp, số lượng thành viên cần thiết theo quy định của số đại biểu quy định phải bỏ phiếu CÓ để phê duyệt thay đổi. Trong trường hợp bỏ phiếu DReps hoặc SPO, cổ phần được kiểm soát bởi những người bỏ phiếu CÓ phải đáp ứng một ngưỡng nhất định trên tổng số cổ phần biểu quyết đã đăng ký.

Hành động quản trị đầu tiên, kiến nghị "bất tín nhiệm", không được bỏ phiếu bởi Ủy ban Hiến pháp mà chỉ bởi DReps và SPO. Hầu hết các hành động phải được sự chấp thuận của ủy ban, DReps và SPO. Xem CIP-1694 để biết thêm thông tin.

Việc bỏ phiếu sẽ được thực hiện thông qua các giao dịch trực tuyến, trong đó phải bao gồm ID hành động quản trị (mỗi hành động sẽ có ID riêng), vai trò (thành viên ủy ban, DRep hoặc SPO) và biểu quyết (CÓ/KHÔNG/TRỐNG) .

Có thể bỏ phiếu nhiều lần cho mỗi hành động quản trị. Các phiếu bầu được gửi chính xác sẽ ghi đè mọi phiếu bầu cũ hơn cho một hành động nhất định.

## Kết luận

Chúng tôi thực sự khuyên bạn nên tìm CIP-1694 trên GitHub để đọc bản gốc. Bạn có thể nhận xét về CIP và đề xuất các thay đổi.

Khi chúng ta bước vào kỷ nguyên Voltaire, tiền ADA trong kho bạc, sự thay đổi trong các tham số giao thức và thậm chí cả hard-fork sẽ được quyết định bởi cộng đồng chứ không phải bởi các thành viên sáng lập Cardano. Đây là một bước quan trọng để quản lý dự án phi tập trung.

Sản xuất khối được phân cấp tại thời điểm này. Khi 7 khóa quản trị hiện tại trở nên lỗi thời, cộng đồng sẽ nắm quyền kiểm soát Cardano. Điều này rất quan trọng từ góc độ pháp lý, vì sẽ không còn các thực thể có quyền kiểm soát việc quản lý dự án. IOG có thể tham gia vào việc sửa đổi mã nguồn, nhưng việc bắt đầu hard fork, tức là việc triển khai bản nâng cấp, sẽ nằm trong tay của cộng đồng. Cộng đồng sẽ chịu trách nhiệm về Cardano. Nếu các cơ quan quản lý muốn đạt được bất cứ điều gì, họ sẽ phải liên lạc với tất cả những người nắm giữ ADA.
