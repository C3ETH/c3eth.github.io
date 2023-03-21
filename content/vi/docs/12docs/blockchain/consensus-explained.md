---
title: Giao thức đồng thuận
date: '2022-10-06 08:48:23 +0000'
lastmod: '2022-10-06 08:48:23 +0000'
draft: 'false'
images: []
---

Đồng thuận là quá trình đạt được ý kiến đa số bởi tất cả mọi người tham gia vào việc vận hành chuỗi khối. Một thỏa thuận phải được thực hiện về việc sản xuất các khối nào, chuỗi nào sẽ áp dụng và xác định trạng thái duy nhất của mạng. Giao thức đồng thuận xác định cách các nút riêng lẻ đánh giá trạng thái hiện tại của hệ thống sổ cái và đạt được sự đồng thuận.

Chuỗi khối tạo ra sự đồng thuận bằng cách cho phép người tham gia gộp các giao dịch mà những người khác đã gửi tới hệ thống thành các khối và thêm chúng vào chuỗi của họ (chuỗi khối). Xác định ai được phép tạo khối khi nào và phải làm gì trong trường hợp xung đột, (chẳng hạn như hai người tham gia thêm các khối khác nhau tại cùng một điểm của chuỗi), là mục đích của các giao thức đồng thuận khác nhau.

Giao thức có ba trách nhiệm chính:

- Thực hiện kiểm tra đường dẫn và quyết định xem có nên tạo một khối hay không
- Xử lý lựa chọn chuỗi
- Xác minh các khối được sản xuất

## Về Ouroboros

Cardano chạy trên giao thức đồng thuận Ouroboros, được cung cấp cùng với một số bài báo được đánh giá ngang hàng được trình bày tại các hội nghị và ấn phẩm hàng đầu trong lĩnh vực an ninh mạng và mật mã. Thay vì dựa vào 'thợ mỏ' (như trong các giao thức bằng chứng công việc) để giải các phương trình phức tạp về mặt tính toán nhằm tạo ra các khối mới – và thưởng cho người đầu tiên làm như vậy – bằng chứng cổ phần chọn [nhóm cổ phần để tạo các khối mới](https://docs.cardano.org/new-to-cardano/cardano-nodes/#howdoesitwork) dựa trên cổ phần mà họ điều khiển trong mạng.

## Cách thức hoạt động của Ouroboros

Ouroboros chia thời gian trên Cardano thành các kỷ nguyên trong đó mỗi kỷ nguyên được chia thành các vị trí. Một vị trí là một khoảng thời gian ngắn trong đó một khối có thể được tạo. Việc nhóm các vị trí vào các kỷ nguyên là trọng tâm để điều chỉnh quy trình bầu chọn người lãnh đạo cho phù hợp với việc phân phối cổ phần thay đổi linh hoạt.

Trọng tâm của thiết kế Ouroboros là nó phải duy trì tính bảo mật của nó khi có các cuộc tấn công. Do đó, giao thức có khả năng chịu đựng tích hợp để ngăn kẻ tấn công truyền bá các phiên bản thay thế của chuỗi khối và giả định rằng kẻ thù có thể gửi tin nhắn tùy ý tới bất kỳ người tham gia nào vào bất kỳ lúc nào. Giao thức được đảm bảo an toàn trong cái gọi là cài đặt đồng bộ (nghĩa là với sự đảm bảo chắc chắn về thời gian gửi tin nhắn) miễn là hơn 51% cổ phần được kiểm soát bởi những người tham gia trung thực (nghĩa là những người tuân theo giao thức) .

Một người dẫn đầu vị trí được bầu cho mỗi vị trí, người này chịu trách nhiệm thêm một khối vào chuỗi và chuyển khối đó cho người dẫn đầu vị trí tiếp theo. Để bảo vệ chống lại các nỗ lực phá hoại giao thức của kẻ thù, mỗi người dẫn đầu vị trí mới được yêu cầu coi một số khối cuối cùng của chuỗi nhận được là tạm thời: chỉ chuỗi đứng trước số lượng khối tạm thời được chỉ định trước mới được coi là đã giải quyết. Điều này cũng được gọi là sự chậm trễ giải quyết. Trong số những thứ khác, điều này có nghĩa là một bên liên quan có thể ngoại tuyến và vẫn được đồng bộ hóa với chuỗi khối, miễn là không quá chậm trễ trong việc giải quyết.

Trong giao thức Ouroboros, mỗi nút mạng lưu trữ một bản sao của mempool giao dịch – nơi các giao dịch được thêm vào nếu chúng nhất quán với các giao dịch hiện có – và chuỗi khối. Chuỗi khối được lưu trữ cục bộ được thay thế khi nút nhận biết được một chuỗi thay thế hợp lệ hơn.

Đọc thêm về các phiên bản khác nhau của Ouroboros tại đây:

- [Tổng quan về Ouroboros](https://docs.cardano.org/learn/ouroboros-overview)
- [Từ Cổ điển đến Chronos: giải thích việc triển khai Ouroboros](https://iohk.io/en/blog/posts/2022/06/03/from-classic-to-chronos-the-implementations-of-ouroboros-explained/)
- [Ouroboros Chronos cung cấp nguồn thời gian mật mã, có khả năng phục hồi cao đầu tiên dựa trên bài đăng trên blog công nghệ chuỗi khối](https://iohk.io/en/blog/posts/2021/10/27/ouroboros-chronos-provides-the-first-high-resilience-cryptographic-time-source-based-on-blockchain/)
- [Ouroboros Genesis: tăng cường bảo mật trong một bài đăng blog môi trường năng động](https://iohk.io/en/blog/posts/2023/02/09/ouroboros-genesis-enhanced-security-in-a-dynamic-environment/) .
