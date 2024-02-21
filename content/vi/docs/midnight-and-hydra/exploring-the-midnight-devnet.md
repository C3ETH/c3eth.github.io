---
title: "Khám phá Midnight devnet"
date: 2020-10-06 08:48:23 +0000
lastmod: 2020-10-06 08:48:23 +0000
draft: false
images: []
---

Được xây dựng để phục vụ cho cả nhà phát triển blockchain và không blockchain, Midnight devnet mang đến cơ hội duy nhất để thử nghiệm việc phát triển các ứng dụng bảo vệ dữ liệu

Trong bối cảnh công nghệ blockchain không ngừng phát triển, Midnight nổi bật với cam kết đổi mới và bảo vệ dữ liệu. Midnight devnet – môi trường hộp cát ban đầu dành cho nhà phát triển truy cập sớm – đã được ra mắt vào ngày 13 tháng 11, cung cấp cho các nhóm tiên phong đầu tiên một môi trường dành cho nhà phát triển để thử nghiệm.

Bài đăng trên blog này đi sâu vào mạng phát triển Midnight, đề cập đến mục đích, phạm vi và cách nó thúc đẩy sự cộng tác với cộng đồng rộng lớn hơn.

## Devnet lúc nửa đêm là gì?

Viết tắt của 'phát triển mạng lưới', devnet là môi trường ban đầu được cung cấp bởi blockchain, cho phép cộng đồng thử nghiệm rộng rãi các tính năng ban đầu trong môi trường sandboxed. Devnet sau đó sẽ tiến tới testnet và cuối cùng là mainnet.

Midnight devnet được hình thành để cung cấp một hệ sinh thái đặc biệt cho các nhà phát triển quan tâm đến việc làm việc với các ứng dụng và hợp đồng thông minh bảo vệ dữ liệu. Devnet được thiết kế để phục vụ cho cả nhà phát triển blockchain và những người có ít hoặc không có kinh nghiệm về công nghệ blockchain. Nó mở ra cánh cửa cho việc xây dựng logic kinh doanh tương tác liền mạch với blockchain, biến nó thành một nền tảng linh hoạt đáp ứng nhiều nhu cầu khác nhau của người dùng.

### Nhỏ gọn: Ngôn ngữ dành riêng cho miền của Midnight

Một trong những mục tiêu của Midnight là cung cấp một ngôn ngữ lập trình dễ tiếp cận, cho phép các nhà phát triển thuộc nhiều nền tảng và ngành nghề khác nhau xây dựng các ứng dụng phi tập trung.

Để làm được điều này, Midnight cho phép các nhà phát triển viết hợp đồng thông minh với Compact – ngôn ngữ lập trình hợp đồng thông minh dành riêng cho miền được thiết kế để bảo vệ dữ liệu tích hợp liền mạch với TypeScript. Compact đóng vai trò vừa là mô hình lập trình vừa là ngôn ngữ để xác định các mạch không có kiến ​​thức (ZK) được chuyển đổi thành hợp đồng thông minh trên chuỗi khối công khai. Quá trình tạo ra các hợp đồng thông minh này gần giống với việc tạo một bài kiểm tra đơn vị trong TypeScript. Phần DApp không tương tác với blockchain được viết bằng TypeScript thông thường.

Mặc dù bề ngoài trông giống TypeScript, nhưng Compact hoạt động như một ngôn ngữ hạn chế hơn tồn tại cùng với nó. Một số tính năng cốt lõi của TypeScript đã bị cố ý bỏ qua để thực hiện các bằng chứng và phân tích cần thiết theo yêu cầu của Midnight. Làm việc với Compact rất đơn giản và không yêu cầu kiến ​​thức toán học sâu rộng.

### Mã thông báo Dustnet thử nghiệm (tDUST)

tDUST là mã thông báo devnet của Midnight được người dùng và nhà phát triển devnet sử dụng để thanh toán phí giao dịch cũng như truy cập và sử dụng DApps được xây dựng trên devnet Midnight. Mã thông báo tDUST chỉ dành cho devnet và không rời khỏi môi trường devnet. Mã thông báo tDUST có thể nhận được bằng yêu cầu sử dụng vòi devnet. Phạm vi devnet: những gì có sẵn cho những người thử nghiệm sớm?

Nhóm tiên phong lúc nửa đêm ban đầu có thể thử nghiệm:

- Xây dựng hợp đồng thông minh bảo vệ dữ liệu bằng ngôn ngữ và trình biên dịch Compact. Những người tiên phong có thể soạn thảo và biên dịch các chương trình Compact của riêng họ cũng như phần mềm máy khách TypeScript hoặc JavaScript được liên kết. Họ có thể kiểm tra DApp bảo vệ dữ liệu cục bộ, triển khai chúng trên devnet và chia sẻ với những người dùng devnet khác.
- Lưu trữ, quản lý và tương tác với tài sản Midnight và DApp trực tiếp trong trình duyệt web Google Chrome bằng phiên bản Midnight của ví Lace.
- Thanh toán phí giao dịch và di chuyển các mã thông báo tDUST của devnet được bảo vệ ngang hàng trong devnet.
- Tạo bằng chứng ZK và thực hiện tính toán ZK bằng phần mềm tạo bằng chứng cục bộ để tạo điều kiện thuận lợi cho việc gửi các giao dịch an toàn và dữ liệu bằng chứng từ khách hàng.
- Lập chỉ mục dữ liệu chuỗi khối Midnight để hỗ trợ chức năng ví và DApp bằng cách sử dụng bộ chỉ mục pub-sub để truy vấn dữ liệu trực tiếp từ sổ cái.
- Viết Midnight DApps bằng mã TypeScript và Compact được hỗ trợ bởi plugin Visual Studio Code.

### Cộng đồng là động lực của thành công

Sự tham gia hợp tác của cộng đồng rộng lớn hơn là công cụ thúc đẩy một mạng lưới mạnh mẽ. Chia sẻ phản hồi, kinh nghiệm và bài học kinh nghiệm không chỉ làm phong phú thêm quá trình phát triển mà còn đảm bảo nhiều quan điểm đa dạng. Ở giai đoạn đầu này, sự tham gia của cộng đồng là chìa khóa để tinh chỉnh các chức năng, xác định các vấn đề tiềm ẩn và khám phá các trường hợp sử dụng sáng tạo. Bằng cách tham gia tích cực, cộng đồng sẽ hỗ trợ định hình tương lai của mạng, điều chỉnh nó chặt chẽ hơn với nhu cầu và mong đợi đa dạng của các nhà phát triển cũng như người dùng.
