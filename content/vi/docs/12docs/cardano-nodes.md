---
title: 'Các nút Cardano'
description: 'Các nút Cardano'
lead: ''
date: 2020-10-06 08:48:23 +0000
lastmod: 2020-10-06 08:48:23 +0000
draft: false
images: []
---

Nút [Cardano](https://docs.cardano.org/cardano-components/cardano-node) là thành phần cấp cao nhất trong mạng. Các nút mạng kết nối với nhau trong lớp mạng, đây là động lực để đưa ra các yêu cầu trao đổi thông tin. Điều này bao gồm thông tin giao dịch và khuếch tán khối mới để thiết lập luồng dữ liệu tốt hơn. Các nút Cardano duy trì kết nối với các đồng nghiệp đã được chọn thông qua quy trình lựa chọn đồng đẳng tùy chỉnh. Bằng cách chạy một nút Cardano, bạn đang tham gia và đóng góp vào mạng.

## Làm thế nào nó hoạt động?

*[Nhóm cổ phần]* (https://docs.cardano.org/learn/stake-pools) sử dụng nút Cardano để xác thực cách nhóm tương tác với mạng và chịu trách nhiệm xử lý giao dịch và sản xuất khối. Chúng hoạt động như các nút máy chủ đáng tin cậy nắm giữ và duy trì sự kết hợp của các bên liên quan khác nhau trong một thực thể duy nhất.

### Sản xuất một khối

Mục tiêu của công nghệ blockchain là sản xuất một chuỗi bản ghi (khối) có thể xác minh độc lập và được liên kết bằng mật mã. Một mạng lưới các nhà sản xuất khối hoạt động để cùng nhau thúc đẩy chuỗi khối. Giao thức *[đồng thuận]* (https://docs.cardano.org/core-concept/consensus-explained) cung cấp tính minh bạch và quyết định khối ứng cử viên nào nên được sử dụng để mở rộng chuỗi.

Các giao dịch hợp lệ đã gửi có thể được đưa vào bất kỳ khối mới nào. Một khối được ký bằng mật mã bởi nhà sản xuất của nó và được liên kết với khối trước đó trong chuỗi. Điều này làm cho không thể xóa các giao dịch khỏi một khối, thay đổi thứ tự của các khối, xóa một khối khỏi chuỗi (nếu nó đã có một số khối khác theo sau nó) hoặc chèn một khối mới vào chuỗi mà không cần cảnh báo tất cả những người tham gia mạng. Điều này đảm bảo tính toàn vẹn và minh bạch của việc mở rộng blockchain.

### Các Vị Trí và các Kỳ

Chuỗi khối Cardano sử dụng giao thức [Ouroboros Praos](https://eprint.iacr.org/2017/573.pdf) để tạo điều kiện đồng thuận trên chuỗi. Ouroboros Praos chia thời gian thành các kỳ. Mỗi kỳ Cardano bao gồm một số vị trí, mỗi vị trí kéo dài trong một giây. Một kỳ Cardano hiện bao gồm 432.000 vị trí (5 ngày). Trong bất kỳ vị trí nào, không hoặc nhiều nút tạo khối có thể được đề cử làm vị trí dẫn đầu vị trí. Trung bình, một nút dự kiến sẽ được đề cử sau mỗi 20 giây, với tổng số 21.600 đề cử mỗi kỳ. Nếu các nhà lãnh đạo vị trí được bầu ngẫu nhiên tạo ra các khối, một trong số chúng sẽ được thêm vào chuỗi. Các khối ứng cử viên khác sẽ bị loại bỏ.

### Bầu cử vị trí lãnh đạo

Mạng Cardano bao gồm một số nhóm liên quan kiểm soát tổng cổ phần của các chủ sở hữu của họ và các bên liên quan khác, còn được gọi là người *ủy quyền* . Các nhà lãnh đạo vị trí được bầu ngẫu nhiên từ các nhóm cổ phần. Nhóm kiểm soát cổ phần càng nhiều, thì cơ hội được bầu làm nhà lãnh đạo vị trí để tạo ra một khối mới được chấp nhận vào blockchain càng lớn. Đây là khái niệm cơ bản về bằng chứng cổ phần (PoS). Để duy trì một sân chơi bình đẳng và ngăn ngừa trường hợp một số lượng nhỏ các nhóm rất lớn kiểm soát phần lớn cổ phần, Cardano có một hệ thống khuyến khích không khuyến khích việc ủy quyền cho các nhóm đã kiểm soát một phần lớn tổng số cổ phần.

### Xác thực giao dịch

Khi xác thực giao dịch, người đứng đầu vị trí cần đảm bảo rằng người gửi đã bao gồm đủ tiền để thanh toán cho giao dịch đó và cũng phải đảm bảo rằng các thông số của giao dịch được đáp ứng. Giả sử rằng giao dịch đáp ứng tất cả các yêu cầu này, người dẫn đầu vị trí sẽ ghi lại nó như một phần của khối mới, sau đó sẽ được kết nối với các khối khác trong chuỗi.
