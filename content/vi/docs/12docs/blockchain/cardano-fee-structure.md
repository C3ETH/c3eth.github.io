---
title: 'Cơ cấu phí Cardano'
date: 2020-10-06 08:48:23 +0000
lastmod: 2020-10-06 08:48:23 +0000
draft: false
images: []
---

[Cardano](https://cardano.org/) sử dụng hệ thống phí giao dịch bao gồm chi phí xử lý và lưu trữ dài hạn của các giao dịch.

Môi trường Cardano là duy nhất trong cách nó xử lý phí, vì phí không chuyển trực tiếp đến nhà sản xuất khối. Thay vào đó, chúng được gộp lại và sau đó được phân phối cho tất cả các nhóm đã tạo khối trong một kỷ nguyên.

Hiện tại không tốn phí cho chi phí bộ nhớ theo dõi trạng thái chuỗi tích lũy, đặc biệt là UTXO.

## Ngăn chặn các cuộc tấn công kinh tế

Sự kiện hard fork Shelley có nghĩa là chuỗi khối Cardano đã chuyển từ môi trường liên kết sang môi trường phi tập trung hoàn toàn, điều này có thể làm tăng động cơ cho các tác nhân độc hại thực hiện các cuộc tấn công kinh tế.

Một cuộc tấn công kinh tế có thể xảy ra khi các chi phí phát sinh bởi những người vận hành hệ thống không được chi trả bởi các khoản phí đối với người dùng của một hệ thống nhất định. Những tình huống này cho phép người dùng áp đặt chi phí cho các nhà khai thác mà không phải trả toàn bộ chi phí, điều này có khả năng dẫn đến sự sụt giảm nghiêm trọng về sự tham gia của nhà điều hành và cuối cùng có thể dẫn đến sự sụp đổ của chính hệ thống.

Để ngăn tình trạng này phát sinh, điều cực kỳ quan trọng là phải giải quyết cả chi phí vận hành chưa tính hiện tại và chi phí mới.

Cấu trúc phí của Cardano khá đơn giản.

Phí được xây dựng xung quanh hai hằng số (a và b). Công thức tính phí tối thiểu cho một giao dịch (tx) là * size(tx) + b, trong đó:

- a/b là các tham số giao thức
- size(tx) là kích thước giao dịch tính bằng byte

## Thông số giao thức (a và b)

Thông số giao thức là các giá trị có thể được thay đổi bởi hệ thống cập nhật của Cardano để phản ứng và thích ứng với những thay đổi về khối lượng giao dịch, giá phần cứng và định giá ada. Việc thay đổi các tham số này tạo thành một hard fork, vì nó ảnh hưởng đến giao dịch nào được hệ thống chấp nhận.

**Tham số giao thức a**

Tham số a phản ánh sự phụ thuộc của chi phí giao dịch vào quy mô của giao dịch. Giao dịch càng lớn thì càng cần nhiều tài nguyên để lưu trữ và xử lý.

**Tham số giao thức b**

Giá trị của b là một khoản phí phải trả, bất kể quy mô của giao dịch. Tham số này chủ yếu được giới thiệu để ngăn chặn các cuộc tấn công từ chối dịch vụ phân tán (DDoS). b làm cho các cuộc tấn công như vậy cực kỳ tốn kém và loại bỏ khả năng kẻ tấn công tạo ra hàng triệu giao dịch nhỏ để làm tràn ngập và làm sập hệ thống.

**Tham số giao thức x**

x đại diện cho kích thước của giao dịch tính bằng byte.
