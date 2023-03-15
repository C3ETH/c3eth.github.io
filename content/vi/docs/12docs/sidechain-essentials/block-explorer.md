---
title: Giới thiệu về trình khám phá khối
date: '2022-10-06 08:48:23 +0000'
lastmod: '2022-10-06 08:48:23 +0000'
draft: 'false'
images: []
---

Trình khám phá khối cho phép bạn kiểm tra một chuỗi khối để xem các khối và giao dịch của nó.

Tài liệu này chủ yếu dựa trên [Blockscout explorer](https://blockscout.com/) , nhưng những người khám phá blockchain nhất thiết phải sử dụng thuật ngữ tương tự và tuân theo một mẫu tương tự trong cách trình bày thông tin của họ.

Khi bạn sử dụng trình khám phá khối, nó sẽ liệt kê các trường và nội dung của chúng. Tài liệu này sẽ giúp bạn hiểu ý nghĩa của tên trường và tầm quan trọng của nội dung của chúng.

## Bảng chú giải

Đây là những tên trường thường được sử dụng trong các trình khám phá khối trên sidechain EVM ví dụ.

## Điều khoản chung

**Actor**

Bất kỳ thực thể nào có thể thực hiện điều gì đó trên chuỗi khối. Các tác nhân có thể bao gồm người dùng, ví, địa chỉ và nút mạng.

**Địa chỉ**

Địa chỉ là một vị trí đến hoặc từ đó các giao dịch xảy ra trên chuỗi khối. Nó được liên kết với một khóa công khai.

**Hash function**

Hàm băm mật mã lấy một chuỗi có độ dài thay đổi và tạo ra một chuỗi có độ dài cố định được gọi là **giá trị băm** . Giá trị băm rất dễ tính toán, nhưng không khả thi để lấy đầu vào chỉ cho đầu ra và không khả thi để tính toán hai đầu vào sẽ tạo ra cùng một giá trị băm. Để biết định nghĩa chính tắc, hãy xem [ấn phẩm NIST này.](https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-57pt1r5.pdf)

Bất kỳ thay đổi nào đối với đầu vào, dù nhỏ đến đâu, sẽ dẫn đến một đầu ra rất khác. Mỗi khối chứa hàm băm của khối trước đó để bất kỳ ai cũng có thể kiểm tra tính toàn vẹn của chuỗi.

## Home page

**Average block time**

Khoảng thời gian giữa việc thêm một khối vào chuỗi khối và thêm khối tiếp theo; thời gian cần thiết để thêm một khối vào chuỗi. Nó phụ thuộc vào thời gian rãnh của chuỗi.

**Tổng số giao dịch**

Giao dịch là một sự kiện trên chuỗi khối, chẳng hạn như chuyển tiền từ địa chỉ này sang địa chỉ khác. Một số lượng giao dịch khác nhau có thể phù hợp với mỗi khối.

Bằng cách so sánh tổng số giao dịch với tổng số khối, bạn có thể suy ra số lượng giao dịch trung bình trên mỗi khối.

**Tổng số khối**

Nhiều hơn chiều cao khối hiện tại của chuỗi, là số khối mới nhất.

**Wallet addresses**

Số lượng địa chỉ ví được sử dụng trong chuỗi khối cho đến nay.

Địa chỉ ví là nguồn hoặc đích của chuyển khoản. Trong mô hình tài khoản Ethereum, ví có chính xác một địa chỉ.

## Blocks

**Block height**

Số của khối này. Nó ít hơn một khối so với số khối hợp lệ được thêm vào chuỗi khối cho đến thời điểm này. (Khối đầu tiên là khối 0). Các khối không hợp lệ hoặc bị bỏ qua không được tính.

**Timestamp**

Thời gian khối được thêm vào chuỗi.

**Transactions**

Số lượng giao dịch được bao gồm trong khối.

**Trình xác thực**

Địa chỉ của tác nhân đã thêm khối này vào chuỗi.

**Kích cỡ**

Độ dài của khối tính bằng byte.

**Hash**

Giá trị băm của khối này. Xem định nghĩa của 'hàm băm' ở trên.

**Parent hash**

Giá trị băm của khối trước đó.

**Gas used**

Gas được trả cho những người xác thực để bù đắp cho họ những tài nguyên được sử dụng để xử lý giao dịch. Giá gas thay đổi theo cung và cầu.

**Gas limit**

Lượng gas tối đa mà tác nhân bắt đầu giao dịch sẵn sàng trả.

**Phần thưởng trình xác thực**

Số xu được trao cho người xác thực của khối này. Các đồng xu mới được đúc; chúng không đến từ phí giao dịch.

## giao dịch

**Giao dịch**

Trình khám phá khối sẽ hiển thị chuyển tiền dưới dạng giao dịch.

Định nghĩa chính thức là *'Một phần dữ liệu, được ký bởi một *tác nhân bên ngoài*. Nó đại diện cho một *thông điệp* hoặc một *đối tượng tự trị* mới. Các giao dịch được ghi vào từng khối của chuỗi khối.'* (Từ Sách vàng.)

**Contract call**

Một cuộc gọi hợp đồng là một trường hợp đặc biệt của một giao dịch; đích đến là một hợp đồng thông minh chứ không phải là người dùng cuối. Một hợp đồng thông minh đã được gửi đến mạng và được ghi lại trên chuỗi khối.

**Gọi**

Lưu ý rằng nếu một nút sử dụng phương thức gọi web3.js web3.eth.call, nó sẽ không hiển thị trong trình khám phá khối vì đó là một hành động cục bộ; mạng không được thông báo về nó và nó sẽ không ảnh hưởng đến chuỗi khối. JSON-RPC cơ bản là eth_call.

Kỹ thuật này được sử dụng trong một 'chạy khô' của một hợp đồng thông minh. Khi nó hoạt động thành công, hợp đồng thông minh có thể được gửi tới chuỗi khối bằng cách sử dụng web3.eth.sendSignedTransaction.
