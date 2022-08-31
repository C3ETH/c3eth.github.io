---
title: Tìm hiểu về Plutus
description: Tìm hiểu về Plutus
lead: ''
date: '2020-10-06 08:48:23 +0000'
lastmod: '2020-10-06 08:48:23 +0000'
draft: 'false'
images: []
---

Plutus là ngôn ngữ hợp đồng thông minh cho Cardano. Nó là một ngôn ngữ hoàn chỉnh của Turing được viết bằng Haskell và các hợp đồng thông minh của Plutus là các chương trình Haskell hiệu quả. Bằng cách sử dụng Plutus, bạn có thể tự tin vào việc thực thi đúng các hợp đồng thông minh của mình. Nó rút ra từ nghiên cứu ngôn ngữ hiện đại để cung cấp một môi trường lập trình toàn ngăn xếp, an toàn dựa trên Haskell, ngôn ngữ lập trình thuần chức năng hàng đầu.

Bản nâng cấp Alonzo mang lại những khả năng thú vị và rất được mong đợi cho Cardano thông qua việc tích hợp các tập lệnh Plutus vào blockchain. Các tập lệnh này hiện cho phép triển khai các hợp đồng thông minh trên Cardano, lần đầu tiên cho phép một loạt các trường hợp sử dụng mới cho các ứng dụng phi tập trung (DApps).

Nếu bạn muốn bắt đầu, hãy truy cập [Sân chơi Plutus](https://playground.plutus.iohkdev.io/) để tìm hiểu cách viết các chương trình Plutus cũng như sử dụng các [hướng dẫn](https://plutus-apps.readthedocs.io/en/latest/) và hỗ trợ bạn. Bạn cũng nên đọc các phần giải thích và hướng dẫn được cung cấp ở đây và tham khảo các phần [giải thích của Plutus](https://plutus-apps.readthedocs.io/en/latest/plutus/explanations/index.html) để tìm hiểu thêm về chính ngôn ngữ Plutus.

Chúng tôi ở đây để giúp đỡ! Nếu bạn cần hỗ trợ khi sử dụng Plutus, vui lòng ghi lại sự cố trong [kho lưu trữ Plutus](https://github.com/input-output-hk/plutus) và bao gồm nhiều thông tin chi tiết nhất có thể.

### Hợp đồng thông minh Plutus

Các hợp đồng thông minh của Plutus bao gồm các phần chạy trên blockchain (mã trên chuỗi) và các phần chạy trên máy của người dùng (ngoài chuỗi hoặc mã khách hàng). Mã ngoài chuỗi có thể được viết bằng Khung ứng dụng Plutus (PAF), và mã này sau đó được biên dịch bởi GHC (Glasgow Haskell Compiler), trong khi mã trên chuỗi được trình biên dịch Plutus biên dịch thành Plutus Core.

![hình ảnh](https://docs.cardano.org/static/6c366861cbc7f599ed30a07969dd1cf1/a6d66/Plutus_arch.png)

### Mô hình kế toán được Plutus sử dụng

Cardano sử dụng [mô hình kế toán UTXO mở rộng (EUTXO)](https://docs.cardano.org/plutus/eutxo-explainer) mở rộng mô hình kế toán (U) giao dịch (TX) chưa sử dụng (O) mô hình kế toán (UTXO) (được sử dụng bởi Bitcoin). Trong mô hình UTXO, một giao dịch có *đầu vào* và *đầu ra* , trong đó **đầu vào** là đầu ra chưa sử dụng từ các giao dịch trước đó. Ngay sau khi một đầu ra được sử dụng làm đầu vào trong một giao dịch, nó sẽ được sử dụng và không bao giờ có thể được sử dụng lại. Đầu **ra** được chỉ định bởi một địa chỉ (khóa công khai hoặc băm khóa công khai) và một giá trị (bao gồm số lượng ada và số lượng mã thông báo gốc bổ sung, tùy chọn).

EUTXO mở rộng mô hình UTXO bằng cách cho phép các địa chỉ đầu ra chứa logic phức tạp để quyết định giao dịch nào có thể mở khóa chúng và bằng cách thêm dữ liệu *tùy chỉnh* vào tất cả các đầu ra. Mô hình này mang lại những lợi thế độc đáo so với các mô hình kế toán khác. Việc xác thực giao dịch thành công hay thất bại chỉ phụ thuộc vào bản thân giao dịch và các đầu vào của nó chứ không phụ thuộc vào bất kỳ thứ gì khác trên blockchain. Do đó, tính hợp lệ của giao dịch có thể được kiểm tra *ngoài chuỗi* trước khi giao dịch được gửi đến blockchain. Một giao dịch vẫn có thể không thành công nếu một số giao dịch khác đồng thời tiêu thụ đầu vào mà giao dịch đang mong đợi. Tuy nhiên, nếu tất cả các yếu tố đầu vào vẫn còn, giao dịch được *đảm bảo* thành công.

### Plutus Core

Plutus Core là ngôn ngữ kịch bản được Cardano sử dụng để triển khai mô hình EUTXO. Nó là một ngôn ngữ đơn giản, có chức năng tương tự như Haskell và một tập hợp con lớn của Haskell có thể được sử dụng để viết các tập lệnh Plutus Core. Là một tác giả hợp đồng thông minh, bạn không viết bất kỳ Plutus Core nào; thay vào đó, tất cả các tập lệnh Plutus Core đều được tạo bởi một plugin trình biên dịch Haskell.

Các tập lệnh này sẽ được thực thi bởi các nút trong quá trình xác thực giao dịch 'trực tiếp' trên chuỗi. Họ sẽ khóa các EUTXO dưới dạng [tập lệnh trình xác thực](https://docs.cardano.org/plutus/Plutus-validator-scripts) hoặc dưới dạng các chính sách đào tiền, kiểm soát việc đào và ghi mã thông báo gốc.

Trên thực tế, khi phát triển các hợp đồng thông minh, bạn sẽ viết các tập lệnh trình xác thực trong Haskell, sau đó sẽ được tự động biên dịch thành Plutus Core bằng cách sử dụng trình cắm thêm GHC có tên là Plutus Tx. Khung ứng dụng Plutus (PAF)

PAF cung cấp khả năng truy cập dễ dàng vào các dịch vụ thường được các ứng dụng Plutus sử dụng. Các ứng dụng được triển khai bằng cách sử dụng các thư viện của khung công tác có thể được chạy trên phần phụ trợ ứng dụng Plutus, cung cấp hỗ trợ thời gian chạy để truy cập vào blockchain và các mối quan tâm khác như tính bền bỉ, ghi nhật ký và giám sát. Các ứng dụng được viết trên PAF tự động cung cấp giao diện HTTP và WebSocket có thể tương tác với ứng dụng từ trình duyệt web.

Trạng thái trên chuỗi của các tập lệnh trình xác thực chỉ có thể được sửa đổi bởi các giao dịch chi tiêu và tạo ra đầu ra tập lệnh. Khi viết một ứng dụng Plutus, chúng ta cần xem xét không chỉ phần on-chain của ứng dụng (các tập lệnh Plutus Core) mà còn cả phần off-chain xây dựng và gửi các giao dịch.

Mã ngoài chuỗi được viết bằng Haskell, giống như mã trên chuỗi, không giống như Ethereum trong đó mã trên chuỗi được viết bằng Solidity, nhưng mã ngoài chuỗi được viết bằng JavaScript. Bằng cách đó, logic nghiệp vụ chỉ cần được viết một lần. Sau đó, logic này có thể được sử dụng trong tập lệnh trình xác thực và trong mã xây dựng các giao dịch chạy tập lệnh trình xác thực. Chương trình phụ trợ ứng dụng Plutus (PAB)

PAB hiện đang được phát triển và sẽ thực thi thành phần off-chain của các ứng dụng Plutus. Nó sẽ quản lý các yêu cầu ứng dụng đến phần phụ trợ và nút của ví, lưu trữ trạng thái ứng dụng và cung cấp API HTTP để quản lý các phiên bản ứng dụng.

### Plutus và native token

Mỗi mã thông báo gốc đi kèm với [chính sách đào tiền](https://github.com/input-output-hk/cardano-documentation/blob/staging/content/07-native-tokens/01-learn.mdx#minting-policy) riêng của nó, xác định các điều kiện mà mã thông báo có thể được đúc và đốt. Với việc triển khai Plutus, người dùng sẽ có thể viết các chính sách đúc tiền trong Haskell và biên dịch chúng sang Plutus Core. Trong quá trình đúc hoặc ghi đĩa, kịch bản chính sách của Plutus Core sẽ được thực thi trong bối cảnh của giao dịch đúc hoặc đốt và tập lệnh sẽ phải chấp thuận hoặc cấm hành động đó. Tính năng này sẽ đẩy nhanh hơn nữa sự phát triển của Non Fungible Tokens (NFT) trên Cardano bằng cách cho phép tạo ra các chính sách khai thác phức tạp hơn nhiều và cho phép tạo NFT theo cách không tin cậy. Ưu điểm của Plutus

Plutus cung cấp lợi thế bảo mật đáng kể. Nó cung cấp một cách dễ dàng hơn, mạnh mẽ hơn để chứng minh rằng các hợp đồng thông minh của bạn là đúng và sẽ không gặp phải các vấn đề được tìm thấy trong thiết kế ngôn ngữ hợp đồng thông minh trước đó.

Plutus cho phép một cách tiếp cận tích hợp mới để phát triển hợp đồng thông minh và ứng dụng phân tán thuận tiện hơn và an toàn hơn so với các giải pháp thay thế trước đây. Cả mã nội bộ và mã ngoài chuỗi đều dựa trên cùng một ngôn ngữ. Bạn sử dụng một cơ sở mã thống nhất, sau đó chuỗi công cụ Plutus sẽ tự động phân tách thành các gói và mã trên chuỗi và ngoài chuỗi để triển khai.

Ngoài ra, trái ngược với Ethereum, Plutus hỗ trợ các tokens do người dùng xác định (cả loại có thể thay thế và không thể thay thế được, vốn yêu cầu ít mã hơn nhiều.
