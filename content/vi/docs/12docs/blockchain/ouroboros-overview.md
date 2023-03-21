---
title: 'Tổng quan về Ouroboros'
date: 2022-10-06 08:48:23 +0000
lastmod: 2022-10-06 08:48:23 +0000
draft: false
images: []
---

Trong thần thoại, [Ouroboros (còn gọi là *uroboros* )](https://en.wikipedia.org/wiki/Ouroboros) thường được miêu tả là một con rắn (hoặc đôi khi là một con rồng) đang ăn đuôi của chính mình trong một vòng tròn khép kín. Bản thân từ *Ouroboros* bắt nguồn từ tiếng Hy Lạp cổ đại, nghĩa đen của nó là 'ăn đuôi' hoặc 'kẻ ăn đuôi'.

Là một biểu tượng, Ouroboros đại diện cho sự vô tận của thời gian chảy ngược trở lại chính nó, trong một chu kỳ không bao giờ kết thúc, như thể bị mắc kẹt trong một vòng lặp vĩnh cửu. Ouroboros lần đầu tiên xuất hiện ở Ai Cập, vào thế kỷ 13 trước Công nguyên. Sau đó, các nhà giả kim đã đưa Ouroboros vào biểu tượng thần bí của họ.

Qua nhiều thời đại, Ouroboros đã được giải thích và sử dụng theo nhiều cách khác nhau bởi rất nhiều nền văn hóa. Một trong những cách giải thích phổ biến nhất là biểu tượng đại diện cho sự liên kết và vô tận của Vũ trụ.

Vào năm 2017, [Charles Hoskinson](https://en.wikipedia.org/wiki/Charles_Hoskinson) đã sử dụng Ouroboros để đặt tên cho giao thức đồng thuận bằng [chứng cổ phần](https://docs.cardano.org/new-to-cardano/proof-of-stake) làm nền tảng cho Cardano. Trong bối cảnh này, Ouroboros đại diện cho khả năng tăng trưởng vô hạn và có đạo đức cũng như khả năng mở rộng của chuỗi khối. Thông điệp chính của Ouroboros là mang đến những cơ hội lớn hơn cho thế giới và bảo tồn nó thông qua [mức tiêu thụ năng lượng giảm đi nhiều](https://iohk.io/en/blog/posts/2021/08/17/why-they-re-calling-cardano-the-green-blockchain/) .

### Ouroboros là gì

[Ouroboros](https://eprint.iacr.org/2016/889.pdf) là giao thức đồng thuận cho Cardano, giao thức bằng chứng cổ phần an toàn đầu tiên có thể chứng minh được và là giao thức chuỗi khối đầu tiên dựa trên nghiên cứu được đánh giá ngang hàng.

Kết hợp công nghệ độc đáo và các cơ chế đã được xác minh bằng toán học (bao gồm tâm lý học hành vi và các nguyên tắc triết học kinh tế), Ouroboros đảm bảo và hỗ trợ tính bảo mật và tính bền vững của bất kỳ chuỗi khối nào triển khai nó. Kết quả là một giao thức với các đảm bảo an ninh đã được chứng minh và có thể tạo điều kiện thuận lợi cho việc truyền bá các mạng toàn cầu, không cần cấp phép với yêu cầu năng lượng tối thiểu. Cardano là mạng đầu tiên như vậy.

Ouroboros chọn những người tham gia - trong trường hợp này là nhóm cổ phần - để tạo các khối mới dựa trên cổ phần mà họ kiểm soát trong mạng và tạo điều kiện thuận lợi cho việc tạo ra các mạng phân tán, không cần cấp phép có khả năng hỗ trợ bền vững các thị trường mới.

### Triển khai Ouroboros

Ouroboros có nhiều phiên bản khác nhau:

- [Ouroboros Classic](https://iohk.io/en/research/library/papers/ouroborosa-provably-secure-proof-of-stake-blockchain-protocol/)
- [Ouroboros BFT](https://iohk.io/en/research/library/papers/ouroboros-bfta-simple-byzantine-fault-tolerant-consensus-protocol/)
- [Ouroboros Praos](https://iohk.io/en/research/library/papers/ouroboros-praosan-adaptively-securesemi-synchronous-proof-of-stake-protocol/)
- [Ouroboros Genesis](https://iohk.io/en/research/library/papers/ouroboros-genesiscomposable-proof-of-stake-blockchains-with-dynamic-availability/)
- [Ouroboros Crypsinous](https://iohk.io/en/research/library/papers/ouroboros-crypsinousprivacy-preserving-proof-of-stake/)
- [Ouroboros Chronos](https://iohk.io/en/research/library/papers/ouroboros-chronospermissionless-clock-synchronization-via-proof-of-stake/)

#### <a>Ouroboros Classic</a>

Lần triển khai đầu tiên của Ouroboros đã đạt được ba cột mốc quan trọng:

- Nền tảng cho một giao thức tiết kiệm năng lượng để cạnh tranh với bằng chứng công việc
- Sự ra đời của khung toán học để phân tích bằng chứng cổ phần
- Việc triển khai một cơ chế khuyến khích mới để thưởng cho những người tham gia trong môi trường bằng chứng cổ phần

Nhưng điều thực sự khiến Ouroboros khác biệt với các giao thức chuỗi khối khác (cụ thể là các giao thức bằng chứng cổ phần), là khả năng tạo ra tính ngẫu nhiên không thiên vị trong thuật toán lựa chọn người dẫn đầu của giao thức và các đảm bảo bảo mật tiếp theo được cung cấp. Tính ngẫu nhiên ngăn chặn sự hình thành các mẫu, điều này rất quan trọng để duy trì tính bảo mật của giao thức. Ouroboros là giao thức chuỗi khối đầu tiên được phát triển với loại phân tích bảo mật nghiêm ngặt này.

#### Ouroboros BFT

Ouroboros Byzantine Fault Tolerance (BFT) là triển khai thứ hai của giao thức, được sử dụng trong quá trình cập nhật Byron (chuyển đổi từ cơ sở mã Cardano cũ sang cơ sở mã mới). Phiên bản thứ hai của giao thức đã chuẩn bị Cardano cho việc phân cấp đi kèm với bản phát hành Shelley.

Ouroboros BFT cho phép giao tiếp đồng bộ giữa một mạng lưới các máy chủ được liên kết – chuỗi khối –, cung cấp sự đồng thuận sổ cái theo cách đơn giản và mang tính quyết định hơn.

#### <a>Ouroboros Praos</a>

Ouroboros Praos đã giới thiệu các cải tiến đáng kể về bảo mật và khả năng mở rộng cho việc triển khai Ouroboros Classic. Praos xử lý các khối giao dịch bằng cách chia chuỗi thành các vị trí, được tổng hợp thành các kỷ nguyên. Nhưng không giống như Ouroboros Classic, Praos được phân tích trong cài đặt bán đồng bộ và an toàn trước những kẻ tấn công thích ứng, sử dụng lựa chọn người dẫn đầu riêng tư và chữ ký phát triển khóa, an toàn về phía trước để đảm bảo rằng một đối thủ mạnh không thể dự đoán người dẫn đầu vị trí tiếp theo và khởi chạy một tấn công tập trung (chẳng hạn như tấn công DDoS).

#### <a>Ouroboros Genesis</a>

Sau khi được triển khai, lần lặp thứ tư của Ouroboros -Genesis- sẽ cải thiện hơn nữa Ouroboros Praos bằng cách thêm quy tắc lựa chọn chuỗi mới cho phép các bên khởi động từ khối genesis mà không cần các điểm kiểm tra đáng tin cậy hoặc giả định về tính khả dụng trong quá khứ. Bài báo Genesis cũng cung cấp bằng chứng về Khả năng kết hợp phổ quát của giao thức, điều này chứng tỏ rằng giao thức có thể được kết hợp với các giao thức khác theo cấu hình tùy ý trong môi trường thế giới thực mà không làm mất đi các thuộc tính bảo mật của nó.

#### <a>Ouroboros Crypsinous</a>

[Ouroboros Crypsinous](https://iohk.io/en/research/library/papers/ouroboros-crypsinousprivacy-preserving-proof-of-stake/) trang bị cho Genesis các thuộc tính bảo vệ quyền riêng tư. Đây là giao thức chuỗi khối bằng chứng bảo toàn quyền riêng tư đầu tiên được phân tích chính thức, đạt được bảo mật chống lại các cuộc tấn công thích ứng trong khi vẫn duy trì đảm bảo quyền riêng tư mạnh mẽ bằng cách giới thiệu một kỹ thuật phát triển tiền xu mới dựa trên SNARK và mã hóa bảo mật chuyển tiếp khóa-riêng tư. Crypsinous hiện không được lên kế hoạch triển khai trên Cardano, nhưng nó có thể được sử dụng bởi các chuỗi khác để tăng cường cài đặt bảo vệ quyền riêng tư.

#### Ouroboros Chronos

[Chronos](https://iohk.io/en/blog/posts/2021/10/27/ouroboros-chronos-provides-the-first-high-resilience-cryptographic-time-source-based-on-blockchain/) đạt được hai mục tiêu: thứ nhất, nó cho thấy cách các giao thức chuỗi khối có thể đồng bộ hóa đồng hồ một cách an toàn thông qua cơ chế đồng bộ hóa thời gian mới và do đó trở nên độc lập với các dịch vụ thời gian bên ngoài. Thứ hai, nó cung cấp một nguồn thời gian an toàn bằng mật mã cho các giao thức khác. Nói tóm lại, Chronos làm cho sổ cái có khả năng chống lại các cuộc tấn công nhằm vào thông tin thời gian.

Từ quan điểm ứng dụng, Chronos có thể tăng cường đáng kể khả năng phục hồi của các cơ sở hạ tầng viễn thông, vận chuyển và CNTT quan trọng khác yêu cầu đồng bộ hóa giờ địa phương với đồng hồ mạng thống nhất không có điểm lỗi duy nhất.
