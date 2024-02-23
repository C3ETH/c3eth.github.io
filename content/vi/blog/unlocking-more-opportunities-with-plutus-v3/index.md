---
title: "Mở ra nhiều cơ hội hơn với Plutus V3"
description: "Plutus V3 sẽ nâng cao trải nghiệm của nhà phát triển bằng cách cải thiện việc áp dụng hợp đồng thông minh, hỗ trợ các tính năng quản trị và bỏ phiếu, đồng thời thúc đẩy khả năng tương tác giữa các chuỗi khối"
date: 2024-02-18T09:19:42+01:00
lastmod: 2024-02-18T09:19:42+01:00
draft: false
weight: 50
images: []
categories: ["IOHK"]
tags: ["security", "performance", "SEO"]
contributors: ["Olga Hryniuk"]
pinned: false
homepage: false
menu:
  blog:
    parent: "IOHK"
---

Plutus V3, hiện có sẵn để thử nghiệm trên SanchoNet, giới thiệu các nguyên mẫu Plutus tiên tiến và do đó cung cấp nhiều công cụ hơn cho các nhà phát triển và mở ra nhiều khả năng hơn để viết hợp đồng thông minh.

Trải nghiệm của nhà phát triển được cải thiện và việc áp dụng hợp đồng thông minh là rất quan trọng đối với bối cảnh hợp đồng thông minh đang phát triển mạnh mẽ trên Cardano. Trong năm qua, sự xuất hiện và phát triển của một loạt các công cụ dành cho nhà phát triển do cộng đồng xây dựng và các ngôn ngữ thay thế đã bổ sung đáng kể vào các tùy chọn dành cho nhà phát triển và sự sống động của hệ sinh thái trình tạo Cardano. Để tiếp tục xây dựng năng lực, nhóm Plutus và mật mã tại Đầu ra Toàn cầu (IOG) – phối hợp với MLabs – đã làm việc trên Plutus V3, tập trung vào hiệu suất, thông lượng, quy mô hợp đồng thông minh và khả năng của nền tảng. Với bộ công cụ dành cho nhà phát triển phong phú và hiệu quả hoạt động tốt hơn, bản nâng cấp này không chỉ giảm chi phí mà còn giúp thu hút các nhà phát triển mới.

## Plutus V3 là gì?

Plutus V3 nâng cao khả năng mã hóa của Plutus Core, cho phép Cardano tuân thủ các tiêu chuẩn ngành mới nhất. Bản nâng cấp Valentine một năm trước đã bổ sung hỗ trợ cho các đường cong elip SECP (ECDSA và Schnorr).

Việc giới thiệu các nguyên tắc mã hóa mới với V3 giúp các nhà phát triển đáp ứng các thực tiễn tốt nhất trong ngành, sử dụng các thuật toán mã hóa tối ưu và nổi tiếng, chuyển các hợp đồng thông minh từ Ethereum và tạo các cầu nối sidechain. Bên cạnh các mật mã nguyên thủy, Plutus V3 còn cải thiện hiệu suất bằng cách thêm tính năng tổng sản phẩm (SOP) để hỗ trợ mã hóa trực tiếp các loại dữ liệu khác nhau. Cuối cùng, V3 cung cấp bối cảnh tập lệnh cập nhật cho phép người dùng xem các thực thể liên quan đến quản trị CIP-1694.

Chúng ta hãy xem xét kỹ hơn các chức năng mới.

## Tổng sản phẩm

Một cách phổ biến để mã hóa các loại dữ liệu trong Plutus Core là sử dụng phương pháp Scott. Plutus V3 giới thiệu tổng sản phẩm – một cách mã hóa các loại dữ liệu dẫn đến các tập lệnh nhỏ hơn và rẻ hơn so với mã hóa Scott.

Phương pháp tiếp cận tổng sản phẩm nhằm mục đích nâng cao hiệu quả của tập lệnh và cải thiện việc tạo mã cho trình biên dịch Plutus Core. Những thay đổi liên quan đến các hàm tạo thuật ngữ mới để đóng gói các trường vào các giá trị hàm tạo và kiểm tra thẻ hiệu quả cho các nhánh trường hợp. Lợi ích là khả năng các chương trình chạy nhanh hơn 30%, tối ưu hóa hiệu suất đáng kể, hợp lý hóa hoạt động và đảm bảo thực hiện nhanh chóng các hợp đồng thông minh. Để biết thêm chi tiết, xem CIP-85.

## Nguyên thủy mật mã mới

Trọng tâm của mọi blockchain là việc sử dụng các nguyên tắc mã hóa nguyên thủy, bao gồm các hàm băm, chữ ký số và hệ thống chứng minh không có kiến ​​thức (ZKP). Những yếu tố nền tảng này được tạo ra để mang lại hiệu quả tính toán, đảm bảo tính bảo mật mạnh mẽ phù hợp với các ứng dụng tương ứng của chúng. Kết quả là một bộ đảm bảo an ninh giúp thiết lập một hệ sinh thái không cần tin cậy, tạo điều kiện tương tác suôn sẻ với mạng ngang hàng (P2P) của Cardano và các ứng dụng phi tập trung (DApps) của nó.

Trong ngôn ngữ Plutus, các hàm dựng sẵn là những hàm không được xác định rõ ràng trong tập lệnh nhưng là một phần của môi trường thời gian chạy của ngôn ngữ. Việc sử dụng các chức năng này cho phép trình thông dịch cung cấp cách triển khai được tối ưu hóa cụ thể cho hệ thống của nó khi thực thi tập lệnh. Các hàm tích hợp thực hiện các phép toán được sử dụng thường xuyên, được xác định rõ ràng, bao gồm số học, điều khiển và các tác vụ quan trọng khác. Khi chúng ta đi sâu vào Plutus V3, hãy cùng khám phá các nguyên hàm mới được tích hợp sẵn sẽ làm phong phú thêm khả năng của ngôn ngữ:

- BLS12-381 – việc ghép nối đường cong này bao gồm 17 nguyên hàm hỗ trợ các đường cong mật mã, mở ra cánh cửa cho việc triển khai đặc tả chuỗi bên liền mạch và tích hợp Mithril.
- Blake2b-224 – hàm băm mật mã dùng để tính toán trên chuỗi các hàm băm khóa công khai nhằm xác thực chữ ký giao dịch. Việc triển khai Blake2b-224 hỗ trợ các dự án cộng đồng, góp phần vào tính linh hoạt và khả năng áp dụng của Cardano bằng cách cung cấp nhiều ứng dụng khác nhau.
- Keccak-256 – hàm băm mật mã tạo ra giá trị băm 256 bit (32 byte), thường được sử dụng để xác minh dữ liệu an toàn. Keccak-256 hỗ trợ xác minh chữ ký Ethereum trong các tập lệnh. Điều này rất quan trọng đối với các giải pháp chuỗi chéo và tạo điều kiện thuận lợi cho các dự án cộng đồng bằng cách mở rộng các trường hợp sử dụng trên Cardano.

## Trao quyền cho các nhà phát triển với nguyên thủy bitwise

Việc giới thiệu các nguyên hàm bitwise CIP-58 sẽ cung cấp cho các nhà phát triển khả năng mạnh mẽ để thao tác bit cấp thấp. Sự bổ sung này mang lại cho các nhà phát triển những lợi ích sâu sắc cả về tối ưu hóa hiệu suất và chức năng mã hóa. Với kế hoạch triển khai gia tăng, các nguyên tắc bitwise đảm bảo quá trình tích hợp liền mạch và thúc đẩy môi trường mạnh mẽ để các nhà phát triển xây dựng các giải pháp mạnh mẽ và hiệu quả trên Cardano.

Nguyên thủy bitwise cung cấp các tính năng sau:

- Tăng hiệu suất. Nguyên thủy bitwise giới thiệu khả năng thao tác bit ở mức độ rất thấp trong Plutus. Khả năng này đặt nền tảng để thực hiện các hoạt động thao tác dữ liệu hiệu suất cao, một khía cạnh quan trọng đối với các nhà phát triển đang tìm kiếm giải pháp hiệu quả.
- Hỗ trợ mật mã. Việc bao gồm các nguyên hàm bitwise là điều cần thiết để hỗ trợ các chức năng mã hóa như ED25519, đây là yêu cầu tiêu chuẩn để phát triển hợp đồng thông minh. Những nguyên thủy này thực hiện các thuật toán mã hóa an toàn và mạnh mẽ trong Plutus.
- Chuyển đổi chuỗi số nguyên để tích hợp trơn tru. Nguyên hàm bitwise tạo điều kiện thuận lợi cho việc triển khai tiêu chuẩn, hiệu suất cao để chuyển đổi giữa số nguyên và chuỗi. Khả năng này rất cần thiết vì nguyên thủy yêu cầu các đối số ở định dạng số nguyên, trong khi dữ liệu thường được trình bày ở định dạng chuỗi.
- Các thuật toán và cấu trúc dữ liệu hiệu quả. CIP-58 bổ sung một lớp hàm cấp thấp cho các thuật toán và cấu trúc dữ liệu hiệu quả cao. Khả năng xây dựng các bảng băm hiệu quả, một cấu trúc dữ liệu ánh xạ khóa-giá trị chung, cho thấy tác động thực tế của các hàm cấp thấp này trong việc xây dựng các giải pháp hiệu quả.

Bản nâng cấp Plutus sẽ thêm hai nguyên hàm bitwise: số nguyênToByteString và byteStringToInteger. Các nguyên thủy còn lại sẽ được thêm vào Plutus V3 dần dần. Trong tương lai, những nâng cấp như vậy sẽ không yêu cầu phiên bản ngôn ngữ mới. Phương pháp triển khai gia tăng này đảm bảo sự tích hợp có hệ thống các tính năng mạnh mẽ này vào ngôn ngữ Plutus.

Bắt đầu với việc phát hành nút Cardano v.8.8.0-pre, Plutus V3 hiện đã có sẵn trên SanchoNet, giới thiệu cho cộng đồng Cardano các tính năng quản trị từ CIP-1694 trong môi trường testnet được kiểm soát.

## Phần kết luận

Trong số các lợi ích của nó, Plutus V3 mang lại hiệu quả cao hơn, tính tùy chọn và tính dễ sử dụng cao hơn cho cộng đồng người xây dựng Cardano – tất cả đều là chìa khóa để nuôi dưỡng việc áp dụng của nhà phát triển. Việc ưu tiên các khía cạnh như hiệu suất, thông lượng, quy mô hợp đồng thông minh và khả năng của nền tảng đảm bảo rằng các nhà phát triển Cardano có thể sử dụng các tiêu chuẩn mới nhất. Những cải tiến này tạo điều kiện thuận lợi cho việc di chuyển suôn sẻ các hợp đồng thông minh từ Ethereum, cho phép tạo ra các cầu nối sidechain và cuối cùng góp phần mở rộng hệ sinh thái Cardano.
