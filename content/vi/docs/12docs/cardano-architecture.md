---
title: '"Mô hình Cardano"'
description: '"Mô hình Cardano"'
lead: ''
date: '2020-10-06 08:48:23 +0000'
lastmod: '2020-10-06 08:48:23 +0000'
draft: 'false'
images: []
---

Phần này mô tả mô hình cấp cao của Cardano. Nó cung cấp thông tin chi tiết về các thành phần cốt lõi và tương tác của chúng, đồng thời thảo luận ngắn gọn về thời đại và cách triển khai của Cardano.

### Mô hình cấp cao của Cardano

Sơ đồ sau đây phác thảo sự tương tác giữa các thành phần hệ thống của Cardano:

![Hình ảnh](https://ucarecdn.com/3756645a-a4a2-4d2f-846a-e454bf7cba60/)

### Thành phần hệ thống

Việc triển khai Cardano hiện tại mang tính mô-đun cao. Nó bao gồm các thành phần sau (các trường hợp sử dụng triển khai khác nhau sẽ sử dụng các kết hợp khác nhau của các thành phần):

- [Nút](https://github.com/input-output-hk/cardano-node)
- [Giao diện dòng lệnh (CLI)](https://github.com/input-output-hk/cardano-node/blob/master/doc/reference/cardano-node-cli-reference.md)
- [Ví Daedalus](https://github.com/input-output-hk/cardano-wallet)
- [Cardano db-sync](https://github.com/input-output-hk/cardano-db-sync)
- Máy chủ [API GraphQL](https://github.com/input-output-hk/cardano-graphql) (Apollo)
- [Máy chủ SMASH](https://github.com/input-output-hk/smash)

### Các nút và các nút từ xa

Hệ thống blockchain bao gồm một tập hợp các nút được phân phối trên một mạng lưới giao tiếp với nhau để đạt được [sự đồng thuận](https://docs.cardano.org/core-concepts/consensus-explained) về trạng thái của hệ thống.

#### Các nút chịu trách nhiệm về:

- Thực thi giao thức [Ouroboros](https://github.com/input-output-hk/ouroboros-network/#ouroboros-network)
- Xác thực và khối chuyển tiếp
- Sản xuất khối (một số nút)
- Cung cấp thông tin về trạng thái của blockchain cho các khách hàng địa phương khác

Bạn chỉ có thể tin cậy các nút do bạn hoặc tổ chức của bạn điều hành. Đây là lý do tại sao [Daedalus](https://docs.cardano.org/cardano-components/daedalus-wallet) chạy một nút trong nền.

#### Quy trình nút

Cardano-node là cấp cao nhất của nút và bao gồm các hệ thống con khác, trong đó quan trọng nhất là sự đồng thuận, [sổ cái](https://github.com/input-output-hk/cardano-ledger-specs#cardano-ledger) và mạng với cấu hình phụ trợ, CLI, ghi nhật ký và giám sát. Giao thức Node-to-Node IPC

Mục đích của giao thức truyền thông liên quá trình (IPC) từ nút đến nút là cho phép trao đổi các khối và giao dịch giữa các nút như một phần của thuật toán đồng thuận Ouroboros.

Giao thức node-to-node là một giao thức tổng hợp, bao gồm ba 'giao thức nhỏ':

- **chain-sync** : Được sử dụng để theo dõi chuỗi và nhận tiêu đề khối.
- **block-fetch** : Được sử dụng để lấy các nội dung khối.
- **tx-submission** : Được sử dụng để chuyển tiếp các giao dịch.

Các giao thức nhỏ này được ghép trên một kết nối Giao thức điều khiển truyền (TCP) chạy dài duy nhất giữa các nút. Chúng có thể được chạy theo cả hai hướng trên cùng một kết nối TCP để cho phép cài đặt ngang hàng (P2P).

Giao thức tổng thể - và mỗi giao thức nhỏ - được thiết kế cho một thiết lập không tin cậy nơi cả hai bên cần đề phòng các cuộc tấn công Denial-of-Service (DoS). Ví dụ: mỗi giao thức mini sử dụng luồng điều khiển do người tiêu dùng điều khiển, vì vậy một nút chỉ yêu cầu nhiều công việc hơn khi nó đã sẵn sàng, thay vì phải thúc đẩy công việc.

Thiết kế giao thức là mô-đun và có thể phát triển: thương lượng phiên bản được sử dụng để đồng ý về tập hợp các giao thức mini để sử dụng, cho phép các giao thức mini bổ sung hoặc cập nhật được thêm vào theo thời gian mà không gây ra các vấn đề tương thích.

#### Node-to-Client IPC

Mục đích của giao thức IPC node-to-client là cho phép các ứng dụng cục bộ tương tác với blockchain thông qua nút. Điều này bao gồm các ứng dụng như phụ trợ ví hoặc trình khám phá blockchain. Giao thức node-to-client cho phép các ứng dụng này truy cập vào dữ liệu chuỗi thô và truy vấn trạng thái sổ cái hiện tại. Nó cũng cung cấp khả năng gửi các giao dịch mới vào hệ thống.

Giao thức node-to-client sử dụng thiết kế tương tự như giao thức node-to-node, nhưng với một tập hợp các giao thức nhỏ khác và sử dụng đường ống cục bộ thay vì kết nối TCP. Do đó, nó là một giao diện hẹp mức độ tương đối thấp chỉ hiển thị những gì nút có thể cung cấp nguyên bản. Ví dụ: nút cung cấp quyền truy cập vào tất cả dữ liệu chuỗi thô nhưng không cung cấp cách truy vấn dữ liệu trên chuỗi. Công việc cung cấp dịch vụ dữ liệu và các API cấp cao hơn thuận tiện hơn được giao cho các khách hàng chuyên dụng, chẳng hạn như cardano-db-sync và phần phụ trợ ví.

Giao thức node-to-client bao gồm ba giao thức nhỏ:

- **chain-sync** : Được sử dụng để theo dõi chuỗi và nhận các khối
- **local-tx-submission** : Được sử dụng để gửi các giao dịch
- **local-state-query** : Được sử dụng để truy vấn trạng thái sổ cái

Phiên bản đồng bộ hóa chuỗi từ nút đến máy khách sử dụng các khối đầy đủ, thay vì chỉ các tiêu đề khối. Đây là lý do tại sao không cần giao thức tìm nạp khối riêng biệt. Giao thức gửi tx cục bộ cũng giống như giao thức gửi tx từ nút này sang nút khác nhưng đơn giản hơn và nó trả về thông tin chi tiết về các lỗi xác thực giao dịch. Giao thức truy vấn trạng thái cục bộ cung cấp quyền truy cập truy vấn đến trạng thái sổ cái hiện tại, chứa nhiều dữ liệu thú vị không được phản ánh trực tiếp trên chính chuỗi.

[Đọc thêm về thiết kế giao thức mạng và giao thức giao tiếp nút Cardano.](https://docs.cardano.org/explore-cardano/cardano-network/networking-protocol)

### Giao diện dòng lệnh (CLI)

Công cụ CLI của nút là “con dao quân đội thụy sĩ” của hệ thống. Nó có thể làm hầu hết mọi thứ, nhưng ở mức khá thấp và không thuận tiện lắm vì nó dựa trên văn bản và thiếu giao diện người dùng đồ họa (GUI).

Công cụ CLI có thể:

- Truy vấn nút để biết thông tin
- Gửi giao dịch
- Xây dựng và ký kết các giao dịch
- Quản lý khóa mật mã

### Ví Daedalus

Daedalus là một ví đầy đủ giúp người dùng quản lý ada của họ và có thể gửi và nhận thanh toán trên chuỗi khối Cardano. Daedalus bao gồm một giao diện người dùng của ví và một phần phụ trợ. Giao diện người dùng là ứng dụng đồ họa mà người dùng nhìn thấy và tương tác. Phụ trợ là một quy trình dịch vụ giám sát trạng thái ví của người dùng và thực hiện tất cả các công việc 'nặng nhọc', chẳng hạn như lựa chọn đồng xu, xây dựng giao dịch và gửi. Phần phụ trợ tương tác với một nút cục bộ thông qua giao thức IPC nút-tới-máy khách và tương tác với giao diện người dùng thông qua API HTTP. Phần phụ trợ cũng cung cấp CLI cho phép tương tác với ví. Phần phụ trợ của ví cũng có thể được sử dụng trên chính nó - không cần Daedalus- thông qua API của nó. Đây là một cách thuận tiện để các nhà phát triển phần mềm tích hợp Cardano với các ứng dụng và hệ thống khác.

Chúng tôi khuyên những người dùng tiên tiến có ý định sử dụng Cardano nên bắt đầu với Daedalus.

### cardano-db-sync

Nút cardano chỉ lưu trữ chính blockchain và thông tin liên quan cần thiết để xác thực blockchain. Nguyên tắc thiết kế này là giảm thiểu độ phức tạp của mã và giảm chi phí tính toán và sử dụng tài nguyên, để giữ cho các giao diện cục bộ của nút ở mức tối thiểu nhất có thể và sử dụng các máy khách bên ngoài để cung cấp nhiều giao diện thuận tiện và chức năng bổ sung. Đặc biệt, nút không cung cấp giao diện truy vấn thuận tiện cho thông tin lịch sử trên blockchain. Dịch vụ dữ liệu này được cung cấp bởi một thành phần riêng biệt bằng cách sử dụng cơ sở dữ liệu Ngôn ngữ truy vấn có cấu trúc (SQL).

Đọc thêm về:

- Cardano DB Sync và các thành phần của nó
- [SMASH](https://docs.cardano.org/cardano-components/smash)

### Giới thiệu về các kỷ nguyên và cách triển khai của Cardano

Cardano là một sổ cái phân tán thế hệ thứ ba. Nó dựa trên Ouroboros, một thuật toán đồng thuận blockchain bằng chứng cổ phần (PoS) được đánh giá ngang hàng, lần đầu tiên xuất hiện trong hội nghị nghiên cứu hàng đầu về mật mã trên toàn thế giới (Hiệp hội Nghiên cứu Mật mã Quốc tế lần thứ 37, CXonference - Crypto 2017).

Tên Cardano là tên chung được đặt cho nền tảng, đã trải qua nhiều thời đại và triển khai. Những khái niệm này cần được giải thích thêm.

#### Kỷ nguyên

Có một số kỷ nguyên trong quá trình phát triển của Cardano. Mỗi thời đại (Byron, Shelley, Goguen, Basho và Voltaire) đề cập đến các quy tắc của sổ cái. Ví dụ: loại giao dịch nào và dữ liệu nào được lưu trữ trong sổ cái hoặc tính hợp lệ và ý nghĩa của các giao dịch.

Sự phát triển của mạng chính Cardano bắt đầu với các quy tắc sổ cái Byron (kỷ nguyên Byron). Mạng chính đã trải qua một đợt hard fork vào cuối tháng 7 năm 2020 để chuyển từ quy tắc Byron sang quy tắc sổ cái Shelley. Do đó, đợt hard fork này đánh dấu sự khởi đầu của kỷ nguyên Shelley.

#### Triển khai

Việc triển khai đầu tiên của Cardano được giới thiệu khi bắt đầu mạng chính Cardano, trở lại vào tháng 9 năm 2017. Việc triển khai này hỗ trợ riêng các quy tắc sổ cái Byron.

Sau đó, chúng tôi đã tiến hành tái hoàn thiện đầy đủ Cardano, điều này cho phép hai thay đổi cơ bản: hỗ trợ nhiều bộ quy tắc sổ cái và quản lý quá trình hard fork để chuyển từ bộ quy tắc này sang bộ quy tắc tiếp theo. Nói cách khác, việc triển khai mới có thể hỗ trợ cả quy tắc Byron và quy tắc Shelley, có nghĩa là khi nó được triển khai vào mạng chính vào đầu năm 2020, việc triển khai cũng hoàn toàn tương thích với các quy tắc Byron. Điều này cho phép chuyển đổi suôn sẻ từ triển khai cũ sang triển khai mới. Khi tất cả người dùng Cardano đã nâng cấp các nút của họ lên triển khai mới, có thể gọi hard fork và chuyển sang các quy tắc Shelley.

Việc triển khai Cardano thứ ba đã được sử dụng trên Shelley Incentivized Testnet (ITN). Hệ thống này hỗ trợ một tập hợp con đáng kể các quy tắc Shelley và chúng tôi đã sử dụng nó để kiểm tra các động lực kinh tế và xã hội của hệ thống ủy quyền Shelley.

Tổng quan về kiến trúc Cardano này phản ánh việc triển khai Cardano hiện tại được triển khai trên mạng chính, không phải các triển khai gốc hoặc ITN.
