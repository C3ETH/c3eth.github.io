---
title: Sự uỷ quyền
date: '2022-10-06 08:48:23 +0000'
lastmod: '2022-10-06 08:48:23 +0000'
draft: 'false'
images: []
---

Vì Cardano là một hệ thống bằng chứng cổ phần (PoS), nên việc sở hữu ada không chỉ cho phép bạn mua hàng hóa hoặc dịch vụ mà còn trao cho bạn quyền và nghĩa vụ tham gia vào giao thức và tạo khối. Ủy quyền cổ phần là một cơ chế vốn có trong [giao thức Ouroboros](https://eprint.iacr.org/2016/889.pdf) cho phép giao thức mở rộng quy mô ngay cả trong môi trường mà tập hợp các bên liên quan có thể bị phân mảnh cao.

Bất kỳ ai sở hữu ada đều có thể tham gia ủy quyền cổ phần trong khi vẫn giữ được khả năng chi tiêu của mình. Lưu ý rằng bạn có thể sử dụng ada của mình một cách bình thường vào bất kỳ lúc nào, bất kể bạn đã ủy quyền như thế nào. Cơ chế này sẽ cho phép các bên liên quan tham gia vào quá trình bầu chọn người lãnh đạo vị trí trong mỗi epoch.

Ủy quyền cổ phần làm phát sinh *các nhóm cổ phần* hoạt động theo cách tương tự như các nhóm khai thác trong giao thức Bitcoin. Người điều hành nhóm cổ phần (SPO) *phải* trực tuyến để tạo khối nếu họ được chọn làm người dẫn đầu vị trí.

### Các yêu cầu về ủy quyền cổ phần

Ủy quyền cổ phần yêu cầu đăng hai chứng chỉ lên chuỗi: đăng ký địa chỉ cổ phần và [chứng chỉ ủy quyền](https://docs.cardano.org/getting-started/operating-a-stake-pool/creating-keys-and-certificates#creatinganoperationalcertificate) . Đăng chứng chỉ yêu cầu tiền, vì vậy người dùng thiết lập ví đầu tiên của họ sẽ cần một cơ chế bootstrapping. Cơ chế này dựa trên khả năng địa chỉ cơ sở sử dụng [khóa đặt cược](https://github.com/input-output-hk/cardano-rosetta/tree/master/examples#staking-key-registration-and-delegation) trước khi đăng chứng chỉ đăng ký cho khóa đó. Lưu ý rằng địa chỉ cổ phần có thể dựa trên một khóa duy nhất hoặc dựa trên một tập lệnh, chẳng hạn như [multi-sig](https://github.com/input-output-hk/cardano-node/blob/master/doc/reference/simple-scripts.md#multi-signature-scripts) .

### Kế hoạch ủy quyền

Với khái niệm ủy quyền, bất kỳ bên liên quan nào cũng có thể cho phép nhóm cổ phần tạo khối cho mạng Cardano. Sau đó, phần thưởng sẽ được trả theo giao thức cho tất cả những người tham gia, bao gồm cả phí cho SPO. Người nắm giữ cổ phần ủy quyền cho một ID nhóm cụ thể, là hàm băm của [khóa xác minh](https://docs.cardano.org/learn/cardano-keys#vrfkeys) của nhà điều hành.

Để giới hạn khả năng tạo khối của đại biểu trong một phạm vi kỷ nguyên và vị trí nhất định, bên liên quan có thể giới hạn không gian thông báo hợp lệ của khóa ký ủy quyền đối với các chuỗi kết thúc bằng số vị trí trong một phạm vi giá trị cụ thể. Lược đồ đơn giản này an toàn do tính có thể kiểm chứng và ngăn chặn việc lạm dụng các đặc tính của lược đồ chữ ký ủy nhiệm. Điều này đảm bảo rằng bất kỳ bên liên quan nào cũng có thể xác minh rằng khóa ký ủy quyền thực sự được cấp bởi một bên liên quan cụ thể cho một đại biểu cụ thể và đại biểu đó chỉ có thể sử dụng các khóa này để ký các thông báo bên trong không gian thông báo hợp lệ của khóa tương ứng.

Các khoản tiền thuộc về một khóa đặt cược trong ví của người dùng yêu cầu đăng một giao dịch duy nhất, có chứa chứng chỉ ủy quyền. Điều này sẽ chỉ phát sinh phí giao dịch thông thường. Đặc biệt, một bên liên quan cần phải trả một khoản đặt cọc để đăng ký một địa chỉ giáo khu chứ không phải cho chính ủy quyền giáo khu. Sau khi địa chỉ cổ phần được đăng ký, bên liên quan sẽ chỉ trả phí để thiết lập lựa chọn ủy quyền.

Lưu ý rằng cổ phần của các bên liên quan sẽ được tính cho cổ phần của nhóm trong quá trình tính toán phần thưởng.

### Các trường hợp ủy quyền cổ phần

Hãy tưởng tượng một người dùng sắp nhận được quảng cáo đầu tiên của họ, thông qua quy đổi, từ giao dịch trên sàn giao dịch hoặc một số nguồn khác. Họ sẽ thiết lập một ví mới và tạo một địa chỉ để nhận các khoản tiền đó. Địa chỉ này sẽ là địa chỉ cơ sở, sử dụng khóa đặt cược do ví tạo ra nhưng chưa được đăng ký trên chuỗi.

Sau khi nhận được số tiền ban đầu, người dùng có thể tham gia đặt cược bằng cách đăng chứng chỉ đăng ký khóa đặt cược và chứng chỉ ủy quyền cho khóa đặt cược của họ. Sau khi khóa được đăng ký, các địa chỉ mới được tạo có thể là địa chỉ con trỏ tới chứng chỉ đăng ký khóa đặt cược.
