---
title: 'Zero-knowledge là gì?'
date: 2020-10-06 08:48:23 +0000
lastmod: 2020-10-06 08:48:23 +0000
draft: false
images: []
---

## Tìm hiểu cách Midnight bảo vệ dữ liệu của người dùng bằng công nghệ không kiến ​​thức

Việc vi phạm dữ liệu thường xuyên đã bộc lộ những lỗ hổng nghiêm trọng trong việc bảo vệ dữ liệu, cho cả cá nhân và tổ chức. Zero-knowledge (ZK) cung cấp giải pháp tuyệt vời, ưu tiên trao quyền cho người dùng và bảo vệ dữ liệu đồng thời loại bỏ quyền kiểm soát trung gian. Tuy nhiên, việc nắm vững sự phức tạp của blockchain và mật mã trong khi tuân thủ các quy định của địa phương có thể vẫn còn nhiều thách thức.

Midnight cung cấp các công cụ để xây dựng DApp nhằm bảo vệ dữ liệu cho người dùng và doanh nhân, tạo sự cân bằng giữa tiết lộ dữ liệu và bảo vệ pháp lý. Các tính năng của Midnight trao quyền cho người dùng thực hiện các giao dịch thương mại với rủi ro lạm dụng dữ liệu ở mức tối thiểu, thúc đẩy việc tuân thủ luật bảo vệ dữ liệu và bảo vệ dữ liệu người dùng khỏi bị rò rỉ.

Midnight đạt được điều này bằng cách sử dụng công nghệ ZK. Đọc tiếp để tìm hiểu thêm về ZK – công nghệ cơ bản thúc đẩy khả năng bảo vệ dữ liệu của Midnight.

## Zero-knowledge là gì?

ZK là một phương pháp xác minh thông tin mà không thực sự tiết lộ nó. Midnight sử dụng ZK để tăng cường quyền riêng tư, bảo mật và khả năng mở rộng của hoạt động blockchain bằng cách cho phép các giao dịch bí mật và hợp đồng thông minh cũng như quản lý dữ liệu an toàn.

ZK liên quan đến hai bên: người chứng minh và người xác minh. Người chứng minh nắm giữ thông tin bí mật mà họ không muốn tiết lộ, tuy nhiên họ có thể đưa ra bằng chứng cho người xác minh rằng một số tuyên bố nhất định liên quan đến thông tin này là đúng mà không cần chia sẻ thông tin thực tế. Đối với điều này, hệ thống tạo ra bằng chứng Zero-knowledge (ZKP) để xác thực.

### Một ví dụ về việc sử dụng ZKP

Hãy tưởng tượng một tình huống mà bạn cần chứng minh tình trạng sức khỏe của mình mà không tiết lộ bất kỳ chi tiết riêng tư nào. Tình huống này có thể xảy ra trong các tình huống như đăng ký bảo hiểm hoặc tiết lộ thông tin sức khỏe cho người sử dụng lao động. Với ZKP, bạn có thể tạo bằng chứng cho thấy tình trạng sức khỏe của mình là hợp lệ mà không cần chia sẻ bất kỳ thông tin cá nhân nào.

Ví dụ: giả sử bạn đang đăng ký bảo hiểm y tế. Công ty bảo hiểm cần xác minh tình trạng y tế đã có từ trước của bạn để xác định phạm vi bảo hiểm của bạn. Thay vì tiết lộ tất cả lịch sử y tế của bạn, một ứng dụng sẽ sử dụng ZKP để tạo bằng chứng chỉ xác nhận sự tồn tại của tình trạng bệnh. Bằng chứng này sau đó được chia sẻ với công ty bảo hiểm, người có thể xác thực tính xác thực của nó mà không cần biết chi tiết chính xác về bệnh tật của bạn.

Bằng cách này, ZKP đảm bảo rằng bạn có thể xác minh sự thật về tình trạng sức khỏe của mình mà không ảnh hưởng đến quyền riêng tư của bạn. Nguyên tắc tương tự này cũng áp dụng cho nhiều tình huống khác khi bạn cần chứng minh điều gì đó mà không tiết lộ thông tin cá nhân.

## Giải thích bằng chứng Zero-knowledge

Có nhiều loại ZKP khác nhau, khác nhau về hiệu suất và các giả định về mật mã. Các lập luận kiến ​​thức ngắn gọn, không tương tác Zero-knowledge (ZK Snarks) và các lập luận kiến ​​thức minh bạch ngắn gọn (ZK Starks) là một số hệ thống chứng minh phổ biến nhất trong blockchain.

ZK Snarks là bằng chứng hiệu quả về quy mô và thời gian xác minh. Họ có thể che giấu dữ liệu được sử dụng để tạo bằng chứng, mang lại hiệu quả, đảm bảo bảo mật mạnh mẽ và bảo vệ dữ liệu. ZK Starks chỉ yêu cầu hàm băm đáng tin cậy trong quá trình thiết lập, điều này mang lại lợi ích về mặt bảo mật và thời gian chạy trình xác minh, nhưng có thể dẫn đến chi phí hiệu suất liên quan đến kích thước bằng chứng và trình xác minh.

Midnight sử dụng ZK Snarks làm hệ thống bằng chứng hấp dẫn nhất dành cho người xác minh do sự kết hợp giữa tính hiệu quả với cài đặt bảo mật mạnh mẽ.

## ZK Snarks hoạt động như thế nào?

Vì ZK Snarks là những lập luận kiến ​​thức không tương tác nên chúng cho phép người chứng minh chứng minh tính xác thực của một tuyên bố mà không cần phải tương tác liên tục với người xác minh. Điều này cho phép người chứng minh tạo ra một bằng chứng nhỏ gọn có thể được người xác minh xác nhận một cách độc lập mà không tiết lộ bất kỳ thông tin nhạy cảm nào. Việc tạo và xác minh bằng chứng liên quan đến các phép toán và cấu trúc toán học phức tạp, chẳng hạn như các cặp đường cong elip và các kỹ thuật đại số nâng cao.

Quá trình cấp cao trông như sau:

<image src="https://cdn.sanity.io/images/330xhmya/production/403fc22c1ca16fc018a0509fb0b35025cd486dcb-1920x1080.jpg?w=3840"></image><br>

Dưới đây là giải thích chi tiết hơn về cách hoạt động của ZK Snarks:

- **Giai đoạn thiết lập** . Tương tự như các giao thức mật mã khác, ZK Snarks bắt đầu bằng giai đoạn thiết lập bằng cách thiết lập các tham số nhất định, chẳng hạn như tạo khóa chứng minh và xác minh công khai. Các tham số này đóng một vai trò quan trọng trong tính bảo mật và hoạt động của chương trình.
- **Các thành phần chính** . ZK Snarks liên quan đến một số thành phần chính, bao gồm các cặp đường cong elip (cấu trúc toán học được sử dụng trong mật mã để bảo mật dữ liệu) và các hàm băm chuyên dụng (các công cụ biến đổi dữ liệu thành các giá trị có kích thước cố định, như dấu vân tay thông tin kỹ thuật số duy nhất). Những thành phần này góp phần tạo ra các bằng chứng ngắn gọn và hiệu quả cao. Hãy coi chúng như những mảnh ghép khớp với nhau một cách hoàn hảo để tạo ra những bằng chứng ngắn gọn và hiệu quả.
- **Xây dựng mạch** . Hãy tưởng tượng xây dựng một con đường với các biển báo và lối đi khác nhau. Việc xây dựng mạch giống như một lộ trình với sự biểu diễn toán học của vấn đề cần giải quyết được chuyển thành mạch số học. Mạch này bao gồm các hoạt động và ràng buộc khác nhau liên quan đến tuyên bố đang được chứng minh.
- **Nhân chứng và thế hệ bằng chứng** . Người chứng minh, người sở hữu một bí mật ('nhân chứng') liên quan đến tuyên bố, xây dựng bằng chứng ZK Snarks. Điều này liên quan đến một loạt các hoạt động mã hóa kết hợp với các ràng buộc của mạch và các tham số công khai từ giai đoạn thiết lập. Kết quả là một bằng chứng nhỏ gọn, chứng thực sự thật của tuyên bố mà không tiết lộ bất kỳ chi tiết nào về nhân chứng.
- **Xác minh** . Người xác minh, được trang bị bằng chứng, các tham số công khai và tuyên bố ban đầu, giờ đây có thể xác minh tính hợp lệ của bằng chứng một cách hiệu quả. Quá trình này bao gồm các phép tính toán học xác nhận tính đúng đắn của bằng chứng, đảm bảo rằng người chứng minh thực sự có nhân chứng chính xác cho tuyên bố.

## Lợi ích của ZK Snarks trong nửa đêm là gì?

Việc sử dụng ZK Snarks trong Midnight mang lại cho người dùng những lợi ích sau:

<image src="https://cdn.sanity.io/images/330xhmya/production/772f3105ddaa86e1f9644ea209f424e766890c4b-1920x1080.jpg?w=3840"></image><br>

## Trường hợp sử dụng

ZK Snarks hỗ trợ các trường hợp sử dụng khác nhau (không đầy đủ):

#### Bảo vệ dữ liệu

**Hợp đồng thông minh và thanh toán bí mật**

- thực hiện an toàn các hợp đồng thông minh bí mật
- tuân thủ các quy tắc được xác định trước trong khi bảo vệ thông tin nhạy cảm
- tích hợp liền mạch các khoản thanh toán bí mật cho nhiều tài sản và NFT với hợp đồng thông minh

**Quản lý dữ liệu**

- xác thực dữ liệu người dùng mà không chia sẻ nó
- danh tính người dùng được bảo vệ và tính xác thực của dữ liệu

**Bỏ phiếu**

- quy trình bỏ phiếu an toàn và bí mật
- đã được chứng minh đủ điều kiện mà không tiết lộ danh tính hoặc sở thích
- liêm chính trong quản trị, giảm thiểu rủi ro bị ép buộc hoặc thao túng

#### Khả năng mở rộng

**Tiên tri blockchain**

- giảm chi phí xác minh bằng cách tổng hợp dữ liệu từ nhiều nguồn
- lưu trữ dữ liệu trên chuỗi được tối ưu hóa bằng cách chỉ bao gồm các giá trị và bằng chứng tổng hợp

**Khách hàng nhẹ**

- giao dịch đã được xác minh và tính chính xác của dữ liệu mà không cần tải xuống toàn bộ chuỗi khối
- cải thiện hiệu quả và khả năng mở rộng
- toàn vẹn dữ liệu với chi phí tính toán giảm

#### Khả năng tương tác

**Chuỗi bên**

- khả năng tương tác giữa các chuỗi mà không ảnh hưởng đến an ninh
- các giao dịch xuyên chuỗi liền mạch thông qua các cấu hình chốt chuỗi
- một chuỗi có thể hoạt động như một khách hàng đơn giản để xác minh các giao dịch trên chuỗi kia
- nâng cao khả năng mở rộng và hiệu quả bằng cách tránh xác minh toàn bộ toàn bộ chuỗi

## Cách Midnight triển khai ZK Snarks

Midnight triển khai ZK Snarks trong giao thức giao dịch Zswap và Kachina. Các giao thức này bảo vệ dữ liệu bí mật và các phương pháp phát triển hợp đồng thông minh nhằm tạo điều kiện thuận lợi cho tính đồng thời và bảo mật cho các giao dịch liên quan đến tài sản và trao đổi giá trị.
