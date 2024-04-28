---
title: 'Tiếp cận các hoạt động của nút P2P'
date: 2024-03-14T09:19:42+01:00
lastmod: 2024-03-14T09:19:42+01:00
draft: false
weight: 50
images: []
categories: ["IOHK"]
tags: ["security", "performance", "SEO"]
contributors: ["Marcin Szamotulski"]
pinned: false
homepage: false
menu:
  blog:
    parent: "IOHK"
---

Mạng ngang hàng (P2P) là nhân tố chính góp phần vào sự phân cấp, bảo mật và khả năng phục hồi lâu dài của các chuỗi khối, cho phép giao tiếp P2P, đồng bộ hóa dữ liệu và sự đồng thuận giữa những người tham gia.

Vào tháng 3 năm 2023, [Dynamic P2P](https://iohk.io/en/blog/posts/2023/03/16/dynamic-p2p-is-coming-to-cardano/) đã tự động hóa quy trình lựa chọn ngang hàng. Được kích hoạt bởi bản phát hành nút [v.1.35.6](https://github.com/IntersectMBO/cardano-node/releases/tag/1.35.6) , nó đã tăng cường giao tiếp giữa các nút phân tán, đơn giản hóa hoạt động của các nút chuyển tiếp và tạo khối, đồng thời loại bỏ nhu cầu về cấu hình tĩnh và đầu vào thủ công từ các nhà khai thác nhóm cổ phần (SPO).

Điểm tham chiếu tiếp theo (và cuối cùng) trong hành trình hướng tới các hoạt động nút P2P đầy đủ được lên kế hoạch sẽ đến với bản phát hành Ouroboros Genesis sắp tới. Genesis dự kiến ​​sẽ được triển khai như một phần của bản nâng cấp Chang, dự kiến ​​sẽ diễn ra vào mùa hè này. Điều này sẽ cho phép các nút tự khởi động từ mạng Cardano trực tiếp.

### Chuyển đổi P2P đầy đủ

Hiện tại, mục nhập mạng ban đầu yêu cầu đồng bộ hóa từ trình xác thực an toàn, đáng tin cậy – thường là SPO đồng nghiệp đáng tin cậy hoặc thực thể khác. Sau khi các nút được đồng bộ hóa, chúng sẽ hoạt động theo cách phi tập trung, sử dụng [Ouroboros Praos. Ouroboros Genesis](https://iohk.io/en/research/library/papers/ouroboros-praos-an-adaptively-secure-semi-synchronous-proof-of-stake-protocol/) sẽ đơn giản hóa quy trình hơn nữa – khi sử dụng khả năng P2P của nút cardano, quy trình sẽ hoàn toàn tự động, loại bỏ nhu cầu can thiệp của con người.

Quá trình chuyển từ mô hình kết hợp hiện tại sang mạng P2P đầy đủ là một quá trình dần dần và quá trình chuyển đổi đã được tiến hành. Theo [PoolTool](https://pooltool.io/networkhealth) , khoảng 65% SPO đã nâng cấp lên nút v.8.7.3 được phát hành vào tháng 12 và 5% đã nâng cấp lên [v.8.9.0](https://github.com/IntersectMBO/cardano-node/releases/tag/8.9.0) có phiên bản P2P mới nhất. Trong nỗ lực chung, các kỹ sư của IOG và Cardano Foundation sẽ tiếp tục xác định, liên hệ và thông báo cho từng SPO riêng lẻ để đảm bảo rằng họ đang chạy đủ số chuyển tiếp để hỗ trợ P2P và đang liên lạc với ví, DApp, sàn giao dịch và những người dùng nút khác để đảm bảo rằng họ nâng cấp các nút của mình khi cần thiết.

### Hướng tới Ouroboros Genesis: mạng khởi động tạm thời và 'Genesis Lite'

Khi một nút riêng lẻ gặp phải thời gian ngừng hoạt động kéo dài hoặc không đồng bộ hóa với mạng, nút đó phải trải qua quá trình tự khởi động. Điều này cũng áp dụng cho các nút mới tham gia mạng. Là một biện pháp tạm thời trước khi triển khai Ouroboros Genesis, IOG và EMURGO sẽ cung cấp cho người dùng một mạng khởi động chuyên dụng mới – Genesis Lite – bao gồm khoảng 20 nút đáng tin cậy. Mạng chuyển tiếp bootstrap đáng tin cậy này sẽ mở rộng quy mô theo nhu cầu và sẽ tạo điều kiện thuận lợi cho việc khởi động nút từ cấu hình Cardano Genesis. Các nút mới khởi động ban đầu phải tuân theo một nút cập nhật và đáng tin cậy, sau đó chuyển sang P2P khi gần với mẹo hiện tại. Trong các phiên bản trước, quá trình chuyển đổi này cần được thực hiện thủ công bởi chủ sở hữu nút chỉ định vị trí trong tệp cấu trúc liên kết.

### Nâng cấp hệ sinh thái

Việc chủ sở hữu nút nâng cấp kịp thời sẽ rất quan trọng để triển khai liền mạch P2P đầy đủ và duy trì chất lượng dịch vụ cần thiết cho mạng Cardano. Trong khi chuyển sang hệ thống P2P đầy đủ, tất cả chủ sở hữu nút sẽ cần nâng cấp nút của họ lên phiên bản hỗ trợ đầy đủ cơ chế P2P. Người dùng cũng nên đảm bảo rằng nhà cung cấp dịch vụ của họ đã hoàn thành việc nâng cấp. Điều này áp dụng cho các nhà cung cấp DApp, sàn giao dịch, nhà cung cấp ví, nhà thám hiểm, công cụ khác và nhóm cổ phần.

IOG hiện đang nâng cấp Daedalus, Lace, Nami và các công cụ khác mà nó hỗ trợ để phù hợp với công cụ P2P mới. Nhóm Adrestia tại Cardano Foundation cũng đang nghiên cứu nâng cấp phần phụ trợ của ví. DB Sync sẽ tiếp tục hoạt động mà không có thay đổi. IOG và nhóm kỹ thuật CF cùng với cộng đồng SPO sẽ tiếp tục giám sát hiệu suất mạng và chất lượng dịch vụ hàng ngày cũng như liên lạc thường xuyên với các bên liên quan chính.

**Tất cả SPO, sàn giao dịch, nhà phát triển DApp, nhà cung cấp cơ sở hạ tầng và người dùng nút khác trong tuần này đã được khuyến khích nâng cấp lên nút mới nhất v. 8.9.0 và chạy tất cả các nút chuyển tiếp của họ ở chế độ P2P.** Các nhà sản xuất khối được tường lửa phía sau các nút chuyển tiếp của SPO cũng có thể sử dụng chế độ P2P trên các nút sản xuất khối của họ với `useLedgerAfterSlot` được đặt thành -1 hoặc họ có thể tiếp tục liên lạc với các nút chuyển tiếp của mình bằng cách sử dụng mạng cũ nếu muốn. Các nhà cung cấp công cụ cũng có tùy chọn định cấu hình cấu trúc liên kết tùy chỉnh của riêng họ bằng cách sử dụng gốc cục bộ trong tệp cấu trúc liên kết của họ với `useLedgerAfterSlot` được đặt thành -1 để tắt tính năng khám phá ngang hàng.
