---
title: Giới thiệu về sidechain
date: '2022-10-06 08:48:23 +0000'
lastmod: '2022-10-06 08:48:23 +0000'
draft: 'false'
images: []
---

Sidechain đơn giản là một chuỗi khối phụ thuộc vào chuỗi chính của nó và được kết nối với nó. Cấu hình này cho phép sidechain có các tính năng và thuật toán đồng thuận của riêng nó. Sidechain được kết nối với chuỗi chính thông qua chốt hai chiều cho phép di chuyển tài sản giữa các chuỗi. Tính hữu hạn của các khối được xác định thông qua cơ chế đồng thuận dựa trên tính bảo mật của chuỗi chính.

Input Output Global (IOG) cung cấp bộ công cụ chuỗi bên được thiết kế để giúp các nhà phát triển tạo chuỗi bên tùy chỉnh cho nhiều trường hợp sử dụng. Để chứng minh khả năng của bộ công cụ, ứng dụng ví dụ là sidechain Cardano EVM. EVM là viết tắt của máy ảo Ethereum. Chuỗi bên Cardano EVM tương thích với EVM, có nghĩa là việc triển khai các ứng dụng Ethereum của bạn chỉ là vấn đề triển khai mã Solidity của bạn trên chuỗi bên và tương tác với nó thông qua API Web3.

## Ví dụ EVM sidechain là gì?

Dự án sidechain EVM ví dụ là một giao thức sidechain Cardano mã nguồn mở cung cấp một ứng dụng khách được viết bằng Scala. Chuỗi bên EVM là một *chuỗi bên con* , có nghĩa là khối khởi đầu hoặc khối gốc của nó được gieo từ chuỗi chính và chuỗi khối con phụ thuộc vào chuỗi chính. Ví dụ EVM sidechain cho phép mọi người chạy một nút thụ động mạng sidechain.

## Ưu điểm của sidechain

Sidechains mang lại lợi thế về khả năng tương tác, khả năng mở rộng và khả năng tương thích.

### Khả năng tương tác

Hình thức giao tiếp cơ bản nhất là trao đổi tài sản. Bởi vì tài sản vẫn giữ nguyên bản chất của chúng khi được chuyển sang sidechain, nên chúng có thể được chuyển trở lại một cách dễ dàng. Một cơ chế được gọi là chốt hai chiều đạt được giao tiếp này. Miễn là bản thân cả hai chuỗi đều được bảo mật, thì sự bảo mật này được áp dụng cho các giao dịch chuyển tiền hai chiều.

Giao tiếp giữa chuỗi chính và chuỗi bên cho phép chúng giữ các phương thức đồng thuận và định dạng khối (có thể được sửa đổi) của riêng chúng và vẫn hoạt động cùng nhau, mở ra phạm vi ứng dụng rộng hơn nhiều.

### Khả năng mở rộng

Giống như người quản lý dự án có bộ ba bất khả thi là tốt, nhanh hoặc rẻ (chọn bất kỳ hai), một chuỗi khối có ba mục tiêu cạnh tranh nhau để lựa chọn – phân cấp, bảo mật và khả năng mở rộng.

Bởi vì các sidechains có thể ngắn và dành riêng cho một miền ứng dụng, các giao dịch có thể được hoàn thành nhanh hơn, giảm tải cho chuỗi chính.

Việc cải thiện khả năng mở rộng của sidechains không ảnh hưởng đến bảo mật và không cần ảnh hưởng đến việc phân cấp, mang lại những cải tiến trong bộ ba bất khả thi của chuỗi khối.

### khả năng tương thích

Sidechains có thể hiển thị cùng một giao diện chương trình ứng dụng (API) như một chuỗi hiện có và sử dụng tính bảo mật và hiệu quả của các giao thức đồng thuận của Cardano. Ví dụ: sidechain Cardano EVM cung cấp môi trường thực thi Solidity không yêu cầu công cụ khai thác nhưng vẫn phục vụ các phương thức Ethereum JSON RPC. Hợp đồng thông minh Ethereum có thể chạy không thay đổi, với mức phí gas thấp hơn đáng kể.

### Các yếu tố thiết kế sidechain

Thiết kế của sidechain EVM ví dụ dựa trên các nguyên tắc được trình bày trong[sách trắng năm 2018](https://iohk.io/en/research/library/papers/proof-of-stake-sidechains/) 'Sidechain Proof-of-Stake' của Peter Gaži, Aggelos Kiayias và Dionysis Zindros.

Dưới đây là một số tính năng thiết kế của sidechain Cardano EVM có liên quan đến các nhà phát triển Solidity.

### Chốt hai chiều

Chuỗi bên EVM cho phép chuyển tài sản qua lại giữa chuỗi khối Cardano và chuỗi bên. Việc chốt hai chiều đạt được điều này sẽ bảo toàn bản chất của nội dung trong cả hai chuỗi bất cứ khi nào nội dung di chuyển.

### giao thức đồng thuận

Mặc dù hợp đồng Solidity có thể được dành cho chuỗi khối Proof of Work, nhưng sidechain EVM ví dụ cung cấp môi trường thực thi Solidity không yêu cầu công cụ khai thác nhưng vẫn phục vụ các phương thức Ethereum JSON RPC, mang lại lợi ích nổi tiếng về việc giảm mức sử dụng năng lượng, tốc độ, và phi tập trung hóa.

### Bức tường lửa

Thuộc tính tường lửa đảm bảo rằng một lỗi nghiêm trọng ở một trong các chuỗi, chẳng hạn như vi phạm các giả định bảo mật của nó, sẽ không làm cho các chuỗi khác dễ bị tổn thương. Tính năng này cung cấp thước đo trách nhiệm hữu hạn tương tự như trách nhiệm hữu hạn trong thế giới doanh nghiệp - khi một công ty trách nhiệm hữu hạn thất bại, các cổ đông của công ty chỉ chịu trách nhiệm về số tiền đầu tư của họ.

### Hợp nhất cổ phần

Một cân nhắc quan trọng trong việc xây dựng sidechain là bảo vệ một sidechain mới chống lại cuộc tấn công.

Ví dụ về cấu trúc EVM Sidechain có tính năng 'đặt cược hợp nhất', cho phép những người xác thực chuỗi chính đã báo hiệu nhận thức về chuỗi bên để tạo các khối chuỗi bên mà không cần chuyển bất kỳ cổ phần nào sang chuỗi bên. Do đó, bảo mật sidechain có thể được duy trì, với phần lớn cổ phần trung thực trong số các thực thể đã báo hiệu nhận thức về sidechain. Đặc biệt là trong giai đoạn khởi động, các trình xác thực chuỗi chính này được kỳ vọng sẽ là một tập hợp lớn các bên liên quan duy trì tài sản trong chuỗi bên.

## Thông tin chi tiết

Để biết mô tả đầy đủ về nền tảng lý thuyết của thiết kế, hãy tham khảo [sách trắng gốc](https://eprint.iacr.org/2018/1239.pdf) .

## Lời kết

Bộ công cụ sidechains là bản phân phối mới nhất trên lộ trình Cardano trong Basho, giai đoạn mở rộng quy mô, giới thiệu khả năng lập trình, khả năng tương tác và khả năng mở rộng cao hơn. Các nhà phát triển chuỗi khối sẽ có thể tạo các sidechain tùy chỉnh dễ dàng hơn. Cuối cùng, IOG hy vọng sẽ thấy một nhóm Cardano sidechains và chuỗi đối tác nổi lên.

Có một số lĩnh vực đã biết để cải thiện, như trải nghiệm cầu nối, cơ chế phần thưởng SPO và mô hình bảo mật. Tất cả những lĩnh vực này sẽ được làm việc với cộng đồng khi chúng tôi đi.

Có rất nhiều cải tiến có thể được thực hiện và có rất nhiều cách khác nhau để chạy một sidechain. Tuy nhiên, chúng tôi hy vọng những gì chúng tôi đã phát triển nội bộ tại IOG sẽ cung cấp một bộ khả năng cốt lõi và đặt nền móng vững chắc để xây dựng một bộ công cụ cũng như cải tiến hơn nữa khi cộng tác với cộng đồng.
