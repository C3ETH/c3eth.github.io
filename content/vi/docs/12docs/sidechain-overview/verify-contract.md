---
title: 'Sử dụng trình khám phá khối để xác minh hợp đồng'
date: 2022-10-06 08:48:23 +0000
lastmod: 2022-10-06 08:48:23 +0000
draft: false
images: []
---

## Xác minh là gì?

Việc xác minh hợp đồng thông minh thực hiện hai việc:

- Nó đảm bảo với bạn rằng bản sao của hợp đồng thông minh trên blockchain khớp với mã nguồn của bạn
- Nó làm cho mã nguồn của hợp đồng thông minh của bạn khả dụng cho tất cả những người dùng khác của cùng một trình khám phá chuỗi khối. Do kết quả của việc xác minh, bạn cung cấp sự minh bạch và đảm bảo cho người dùng hợp đồng thông minh của mình.

## Ghi chú

Trong bản phát hành đầu tiên của bộ công cụ chuỗi bên Cardano, chức năng xác minh hợp đồng trong trình khám phá khối testnet chuỗi bên EVM không được dùng nữa. Chức năng sẽ được khôi phục trong bản phát hành tiếp theo và tuyên bố từ chối trách nhiệm này sẽ bị xóa khi hoàn thành.

## Điều kiện tiên quyết:

Bạn cần truy cập vào mã nguồn của hợp đồng trước khi bắt đầu. Điều này có thể ở dạng mã nguồn phẳng, JSON đầu vào tiêu chuẩn hoặc nguồn Vyper.

Có một số sản phẩm có sẵn công khai để làm phẳng mã nguồn; đó là kết hợp tất cả các tệp được bao gồm thành một tệp.

## Truy cập trình khám phá khối

Từ bất kỳ trình duyệt được hỗ trợ nào, hãy truy cập URL [https://explorer.sidechain.evmtestnet.iohkdev.io/](https://explorer.sidechain.evmtestnet.iohkdev.io/) .

Màn hình chính hiển thị người đứng đầu hiện tại của chuỗi.

## Màn hình chính của trình khám phá khối

![Chặn màn hình chính của trình thám hiểm với các cuộc gọi giao dịch](https://docs.cardano.org/static/23aa9e85f1c5132eb6204ec7f00d6713/e3189/01_main_screen.png)

Trong hình trên của trình khám phá khối, hãy lưu ý hàm băm của lệnh gọi giao dịch hàng đầu.

## Màn hình chi tiết

Khi nhấp vào hàm băm của một giao dịch, bạn sẽ thấy thông tin chi tiết của nó:

![Chi tiết cuộc gọi giao dịch](https://docs.cardano.org/static/e47ec3502f0c24075ac56a8f944a29e2/e3189/02_transaction_call_details.png)

Bạn có thể xem trạng thái của giao dịch (thành công hay thất bại) và hợp đồng thông minh mà nó được thực hiện (nếu giao dịch là một cuộc gọi hợp đồng thông minh).

## Trang hợp đồng

Nhấp vào địa chỉ hợp đồng (được gắn nhãn Đến: `[Contract 0x.... created]` hoặc `Interacted With 0x...` )

![Chi tiết hợp đồng](https://docs.cardano.org/static/3cc47fbd4f722c9a3d08766ec3bca3a3/e3189/02_1_contract_details.png)

## Tab mã

Trên trang này, sau khi cuộn xuống, bạn có thể thấy các tab, một trong số đó là 'Mã'. Nhấp vào nó sẽ hiển thị mã đã biết nếu nó tồn tại hoặc byte thô của hợp đồng nếu không rõ nguồn.

![tab mã](https://docs.cardano.org/static/cd99bae61fc222fed5d34895dc5f7449/e3189/02_1_code_tab.png)

## Xác minh hợp đồng

Trong hàng đầu tiên của tab mã, có một liên kết để xác minh hợp đồng.

![Hình ảnh của trang xác minh](https://docs.cardano.org/static/7c4e2f8a1163202811d1a46f61f16eca/e3189/04-and-03_verification_page.png)

Bạn có thể chọn xác minh bằng một trong các phương pháp sau:

- Thông qua mã nguồn phẳng
- Thông qua JSON đầu vào tiêu chuẩn
- Hợp đồng Vyper

Các phương pháp xác minh khác có thể được thêm vào sau.

Hai hình ảnh tiếp theo hiển thị biểu mẫu xác minh hợp đồng:

![hình thức 1](https://docs.cardano.org/static/d710f3badc85d6a12cbe5b9ec8f63377/e3189/05_contract_form_1.png)

![mẫu 2](https://docs.cardano.org/static/1ad6a81b45413f96617b85c973254bb0/e3189/06_contract_form_2.png)

Sau khi các biểu mẫu đã được hoàn thành và gửi, bạn sẽ thấy kết quả xác minh, ví dụ:

![đổ đầy](https://docs.cardano.org/static/98fa9f8bb5086a8604e4898a6cf4ae0b/e3189/07_after_filling_forms.png)

Giờ đây, bất kỳ người dùng nào khác của trình khám phá khối đều có thể kiểm tra hợp đồng thông minh.
