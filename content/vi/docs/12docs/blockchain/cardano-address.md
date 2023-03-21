---
title: Địa chỉ Cardano
description: Tài liệu Doks.
lead: ''
date: '2022-10-06 08:48:23 +0000'
lastmod: '2022-10-06 08:48:23 +0000'
draft: 'false'
images: []
---

Các địa chỉ là hàm băm blake2b-256 của các khóa công khai/xác minh có liên quan được nối với một số siêu dữ liệu có thể được lưu trữ trên [chuỗi khối Cardano](https://cardano.org/) .

Shelley giới thiệu bốn loại địa chỉ khác nhau:

- địa chỉ cơ sở
- địa chỉ con trỏ
- địa chỉ doanh nghiệp
- địa chỉ tài khoản thưởng

Bên cạnh những địa chỉ mới đó, Shelley tiếp tục hỗ trợ *địa chỉ bootstrap* thời Byron và *địa chỉ tập lệnh* , nhưng chỉ địa chỉ cơ sở và địa chỉ con trỏ mới có quyền cổ phần. Do đó, các địa chỉ bao gồm một số dữ liệu được tuần tự hóa được chỉ định trong đặc tả sổ cái được lưu trữ trong các khối của chuỗi khối, ví dụ: địa chỉ Đầu ra giao dịch chưa được xác định (UTXO).

Dữ liệu tuần tự hóa (địa chỉ) chứa hai phần:

- Siêu dữ liệu: được sử dụng để giải thích.
- Tải trọng: dữ liệu thô hoặc được mã hóa.

### địa chỉ cơ sở

Một địa chỉ cơ sở chỉ định trực tiếp khóa đặt cược sẽ kiểm soát số tiền đặt cược cho địa chỉ đó. Quyền đặt cược liên quan đến số tiền được giữ trong địa chỉ này có thể được thực hiện bởi chủ sở hữu của khóa đặt cược. Địa chỉ cơ sở có thể được sử dụng trong các giao dịch mà không cần đăng ký trước khóa đặt cược.

Quyền cổ phần chỉ có thể được thực hiện bằng cách đăng ký khóa cổ phần và ủy quyền cho [nhóm cổ phần](https://docs.cardano.org/core-concepts/stake-pools) . Khi khóa cổ phần được đăng ký, quyền cổ phần có thể được thực hiện cho các địa chỉ cơ sở được sử dụng trong các giao dịch trước hoặc sau khi đăng ký khóa.

### Địa chỉ con trỏ

Một địa chỉ con trỏ gián tiếp chỉ định khóa đặt cược sẽ kiểm soát số tiền đặt cược cho địa chỉ. Nó tham chiếu một khóa cổ phần bằng một con trỏ khóa cổ phần, là một vị trí trên chuỗi khối của [chứng chỉ đăng ký](https://docs.cardano.org/getting-started/operating-a-stake-pool/creating-keys-and-certificates#creatinganoperationalcertificate) khóa cổ phần cho khóa đó. Địa chỉ con trỏ có thể được sử dụng trong các giao dịch, ngay cả khi mục tiêu của chúng không phải là đăng ký khóa cổ phần đang hoạt động. Điều này bao gồm tình huống trong đó khóa không được đăng ký sau (hoặc thực tế là trước) giao dịch và cũng bao gồm các con trỏ tới các mục tiêu rõ ràng là không hợp lệ. Lý do cho phép các mục tiêu không hợp lệ như vậy là để các nút chỉ cần theo dõi các khóa cổ phần *hiện đang hoạt động* .

Con trỏ có thể ngắn hơn đáng kể so với hàm băm được sử dụng trong các địa chỉ cơ sở.

Có một sự tinh tế với các địa chỉ con trỏ. Có thể xảy ra trường hợp chứng chỉ đăng ký khóa cổ phần được tham chiếu bởi một địa chỉ con trỏ có thể bị mất do khôi phục. Để tránh mất tiền trong trường hợp này, hệ thống coi các địa chỉ con trỏ có con trỏ không hợp lệ là *hợp lệ* cho mục đích sử dụng tiền được lưu trữ trong đó làm đầu vào cho các giao dịch (nhưng bỏ qua chúng cho mục đích chứng minh việc tham gia cổ phần). Theo tùy chọn, ví có thể từ chối tạo giao dịch tới địa chỉ con trỏ trước khi chứng chỉ được tham chiếu trở thành bất biến, để ngăn tiền bị loại khỏi bằng chứng cổ phần, trong trường hợp hoàn vốn.

### Địa chỉ doanh nghiệp

Địa chỉ doanh nghiệp không có quyền cổ phần, do đó, việc sử dụng các địa chỉ này có nghĩa là bạn đang từ chối tham gia vào giao thức bằng chứng cổ phần.

Các sàn giao dịch hoặc các tổ chức khác kiểm soát một lượng lớn ada – nhưng giữ nó thay mặt cho những người dùng khác – có thể muốn tuân theo chính sách không thực hiện quyền cổ phần. Bằng cách sử dụng địa chỉ doanh nghiệp, các sàn giao dịch có thể chứng minh rằng họ tuân theo chính sách này. Vì địa chỉ doanh nghiệp không được liên kết với bất kỳ khóa đặt cược nào nên chúng sẽ tự động bị loại khỏi các cơ chế ảnh hưởng đến lịch trình lãnh đạo vị trí. Lưu ý rằng việc sử dụng các địa chỉ không có quyền cổ phần sẽ làm giảm hiệu quả tổng số tiền cổ phần, vốn sẽ rơi vào tay kẻ thù tiềm năng.

### Địa chỉ tài khoản thưởng

Địa chỉ phần thưởng là hàm băm mật mã của khóa đặt cược công khai của địa chỉ. Địa chỉ tài khoản phần thưởng được sử dụng để phân phối phần thưởng khi tham gia vào giao thức bằng chứng cổ phần (trực tiếp hoặc thông qua ủy quyền).

Chúng có các thuộc tính sau:

- Kế toán kiểu tài khoản được sử dụng, không phải kiểu UTXO.
- Tiền không thể được nhận thông qua các giao dịch. Thay vào đó, số dư của họ chỉ tăng lên khi phần thưởng được phân phối.
- Có sự tương ứng một-một giữa các khóa đặt cược đã đăng ký và địa chỉ tài khoản phần thưởng.

Khóa này được sử dụng bất cứ khi nào tiền được rút từ địa chỉ. Hơn nữa, cổ phần liên quan đến tiền trong địa chỉ góp phần vào cổ phần của khóa này. Giống như trong trường hợp địa chỉ doanh nghiệp, đối tượng đặt cược cho địa chỉ phần thưởng không cần chứa thông tin.
