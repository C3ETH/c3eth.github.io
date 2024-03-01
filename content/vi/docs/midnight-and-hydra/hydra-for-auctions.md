---
title: 'Hydra cho đấu giá'
date: 2020-10-06 08:48:23 +0000
lastmod: 2020-10-06 08:48:23 +0000
draft: false
images: []
---

## Thị trường NFT trên Cardano

Cardano giúp việc đúc và gửi các token không thể thay thế (NFT) trở nên rẻ và dễ dàng, vì hệ thống kế toán cho các token không phải ADA được lưu trữ trong chính sổ cái (cùng với ADA) thay vì các hợp đồng thông minh tùy chỉnh phức tạp và dễ bị lỗi. Điều này đã dẫn đến một hệ sinh thái NFT sôi động trên Cardano dành cho nghệ thuật, âm nhạc, bản sắc, bất động sản, trò chơi, đăng ký dịch vụ, v.v.

Các thị trường chất lượng cao hiện tồn tại trên Cardano để liệt kê, xem và mua tất cả các loại NFT. Các thị trường NFT này có giao diện người dùng rất thân thiện có thể hiển thị gọn gàng hình ảnh/hoạt ảnh, biểu đồ độ hiếm, điều khoản bản quyền và siêu dữ liệu khác cho NFT, có thể được mua theo giá niêm yết của người bán hoặc thông qua ưu đãi thay thế của người mua.

Tuy nhiên, tính mới của tài sản kỹ thuật số và phi kỹ thuật số được mã hóa trên Cardano và quy mô thị trường tương đối nhỏ khiến việc khám phá giá trở thành một thách thức trong lĩnh vực NFT.

## Đấu giá NFT trên Cardano và các ràng buộc hiện tại

Đấu giá là một cơ chế hiệu quả để khám phá giá khi các mặt hàng được bán là mới lạ hoặc độc đáo (ví dụ: tác phẩm nghệ thuật), khi khó xác định trước việc phân bổ hiệu quả nhất (phổ tần vô tuyến) hoặc khi có lo ngại về giao dịch nội gián và thông đồng (phá sản). bán lửa). Trong thị trường truyền thống, người bán niêm yết một mặt hàng ở một mức giá cụ thể và người mua đầu tiên khớp với mặt hàng đó có thể mua mặt hàng đó ở mức giá đó - nếu giá của người bán được đặt quá thấp thì người mua sẽ ngay lập tức niêm yết lại mặt hàng đó để bán nó để kiếm lợi nhuận chênh lệch giá. Trong thị trường đấu giá, thay vào đó, người bán có thể đợi giá ổn định trong quy trình đấu thầu cạnh tranh trước khi bán mặt hàng đó cho người trả giá cao nhất.

Các cuộc đấu giá phải sôi nổi và hiệu quả – những người đấu giá tham gia đấu giá (thường là ngẫu nhiên) với thời gian và khoảng chú ý hạn chế, và họ sẽ rời đi nếu mất quá nhiều thời gian để đặt giá thầu hoặc quan sát giá thầu của những người đấu giá khác. Trải nghiệm của người đặt giá thầu này khó triển khai trực tiếp trên mạng chính của Cardano (L1), trong đó các giao dịch L1 cần có thời gian để được thêm vào một khối (~10–60 giây) và được xác nhận với xác suất hoàn vốn đủ thấp (vài phút đến vài giờ).

## Chạy đấu giá với Hydra

Tuy nhiên, cơ chế đấu giá đấu giá là một ứng cử viên hoàn hảo để mở rộng quy mô L2 thông qua công nghệ Hydra, vì các giao dịch trong Hydra Head có độ trễ xác nhận ngắn và có tính hữu hạn ngay lập tức. Một dịch vụ đấu giá hấp dẫn được hỗ trợ bởi L2 có thể được xây dựng trên Cardano nếu nó được phát triển theo cách tận dụng được thế mạnh của Hydra.

Chúng tôi hình dung rằng khung đấu giá dựa trên Hydra sẽ trở thành một thành phần mô-đun tiêu chuẩn mà thị trường NFT, trò chơi và các ứng dụng Web 3.0 khác sẽ đưa vào kiến ​​trúc của họ để thêm các phiên đấu giá tài sản kỹ thuật số vào sản phẩm của họ. Hơn nữa, nó sẽ kích thích một hệ sinh thái kinh doanh mới để các nhà cung cấp khả năng mở rộng chuyên nghiệp cung cấp dịch vụ lưu trữ L2 cho các ứng dụng này, tương tự như hệ sinh thái stakepool và hệ sinh thái quản trị mới nổi.

## Một con đường phía trước

Một con đường khả thi để hiện thực hóa tầm nhìn này có thể tiến triển dọc theo các cột mốc quan trọng sau đây mà chúng tôi tin là khả thi để triển khai bằng cách sử dụng Hydra và những cải tiến dự kiến ​​của nó:

- Phiếu mời được ủy quyền
- Voucher được ủy quyền mở
- SDK dành cho đấu giá phiếu thưởng được ủy quyền
- Đấu giá dưới dạng dịch vụ đơn lẻ
- Đấu giá dưới dạng dịch vụ Multi
