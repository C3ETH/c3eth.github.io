---
title: Về Ouroboros BFT
date: '2022-10-06 08:48:23 +0000'
lastmod: '2022-10-06 08:48:23 +0000'
draft: 'false'
images: []
---

## Ouroboros BFT: Một giao thức đồng thuận chịu lỗi Byzantine đơn giản

Ouroboros, được đặt tên theo biểu tượng của sự vô tận, là xương sống của hệ sinh thái Cardano. Ouroboros BFT là phiên bản được triển khai trong sidechain EVM ví dụ của Cardano. Nó là một giao thức đơn giản, mang tính quyết định cho sự đồng thuận của sổ cái có thể chấp nhận các lỗi của Byzantine.

### Background

Vậy lỗi Byzantine là gì? Để hiểu điều đó, chúng ta phải quay trở lại năm 1982, với bài báo [về vấn đề các vị tướng Byzantine](https://www.microsoft.com/en-us/research/uploads/prod/2016/12/The-Byzantine-Generals-Problem.pdf) của Leslie Lamport, Robert Shostak và Marshall Pease. Hãy tưởng tượng một số tướng vây quanh một thành phố, không thể liên lạc với nhau ngoại trừ bằng tin nhắn. Các tướng phải đạt được sự đồng thuận về việc tấn công hay rút lui, ngay cả khi một hoặc nhiều tướng là kẻ phản bội. Câu chuyện này rất dễ nắm bắt và nó được sử dụng như một câu chuyện ngụ ngôn cho tình huống trong hệ thống sổ cái phân tán nơi các nút phải đạt được sự đồng thuận về nội dung của sổ cái ngay cả khi một hoặc nhiều nút tham gia ngoại tuyến, bị lỗi hoặc độc hại . Một nút như vậy có thể tạo ra **lỗi Byzantine** . Vấn đề dễ nắm bắt nhưng khó giải quyết. Đó là nơi Ouroboros xuất hiện.

### Description

Mô tả này dựa trên blog của Giáo sư Aggelos Kiayias và Kieran Costello.

### Đôi điều về các giao thức đồng thuận và tại sao Ouroboros khác biệt

Thật hợp lý khi cho rằng bất kỳ ai mới tham gia không gian này đều có thể bị nhầm lẫn bởi thuật ngữ 'giao thức đồng thuận'. Nói một cách đơn giản, một giao thức đồng thuận là hệ thống các luật và tham số chi phối hành vi của sổ cái phân tán: một bộ quy tắc mà mỗi người tham gia mạng tuân theo.

Không có cơ quan trung ương duy nhất để kiểm soát một chuỗi khối công khai. Thay vào đó, một giao thức đồng thuận được sử dụng để cho phép những người tham gia mạng phân tán đồng ý về lịch sử của mạng được ghi lại trên chuỗi khối – để đạt được sự đồng thuận về những gì đã xảy ra và tiếp tục từ một nguồn sự thật duy nhất.

Nguồn sự thật duy nhất đó cung cấp một bản ghi duy nhất. Đây là lý do tại sao các chuỗi khối đôi khi được gọi là không đáng tin cậy. Thay vì yêu cầu những người tham gia tin tưởng lẫn nhau, sự tin tưởng được tích hợp vào giao thức. Các tác nhân không xác định có thể tương tác và giao dịch với nhau mà không cần dựa vào một bên trung gian để dàn xếp hoặc để có một trao đổi dữ liệu cá nhân tiên quyết.

Ouroboros là một giao thức bằng chứng cổ phần, khác với bằng chứng công việc. Thay vì dựa vào 'thợ mỏ' để giải các phương trình tính toán phức tạp nhằm tạo ra các khối mới – và thưởng cho người đầu tiên làm như vậy – bằng chứng cổ phần chọn người tham gia (trong trường hợp của Cardano, nhóm cổ phần) để tạo các khối mới dựa trên cổ phần mà họ kiểm soát trong mạng.

Mạng sử dụng Ouroboros tiết kiệm năng lượng hơn nhiều lần so với mạng sử dụng bằng chứng công việc và thông qua Ouroboros, Cardano có thể đạt được hiệu quả năng lượng vô song. Sự khác biệt dẫn đến trong việc sử dụng năng lượng có thể được tương tự như sự khác biệt giữa một hộ gia đình và một quốc gia nhỏ: một người có thể được mở rộng quy mô cho thị trường đại chúng; người khác không thể.

Bây giờ, chúng ta hãy xem xét kỹ hơn cách thức hoạt động của giao thức Ouroboros.

### Ouroboros Classic

Bắt đầu với Ouroboros, lần triển khai đầu tiên của giao thức Ouroboros, được xuất bản vào năm 2017. Lần triển khai đầu tiên này (được gọi là Ouroboros Classic) đã đặt nền móng cho giao thức với tư cách là đối thủ tiết kiệm năng lượng của bằng chứng công việc. Nó đã giới thiệu khung toán học để phân tích bằng chứng cổ phần và một cơ chế khuyến khích mới để thưởng cho những người tham gia trong môi trường bằng chứng cổ phần.

Tuy nhiên, hơn thế nữa, điều khiến Ouroboros khác biệt với các giao thức chuỗi khối khác và cụ thể là các giao thức bằng chứng cổ phần là khả năng tạo ra tính ngẫu nhiên không thiên vị trong thuật toán lựa chọn người dẫn đầu của giao thức và các đảm bảo bảo mật tiếp theo được cung cấp. Tính ngẫu nhiên ngăn cản sự hình thành các mẫu và là một phần quan trọng trong việc duy trì tính bảo mật của giao thức. Bất cứ khi nào kẻ thù có thể dự đoán một hành vi, họ có thể khai thác hành vi đó – và mặc dù Ouroboros đảm bảo tính minh bạch, nhưng nó ngăn chặn sự ép buộc. Đáng chú ý, Ouroboros là giao thức chuỗi khối đầu tiên được phát triển với loại phân tích bảo mật nghiêm ngặt này.

### Cách thức hoạt động của Ouroboros

[The research paper](https://iohk.io/en/research/library/papers/ouroborosa-provably-secure-proof-of-stake-blockchain-protocol/) on Ourorobos gives a comprehensive explanation of how it works. To summarize, Ouroboros divides the blockchain into slots and epochs. In Cardano, each slot lasts for 20 seconds, and each epoch represents approximately five days' worth of slots.

Trọng tâm thiết kế của Ouroboros là nhận thức rằng các cuộc tấn công là không thể tránh khỏi. Do đó, giao thức được tích hợp khả năng chịu đựng để ngăn chặn kẻ tấn công truyền bá các phiên bản thay thế của chuỗi khối và giả định rằng kẻ thù có thể gửi tin nhắn tùy ý tới bất kỳ người tham gia nào vào bất kỳ lúc nào. Trên thực tế, giao thức được đảm bảo an toàn miễn là hơn 51% cổ phần được kiểm soát bởi những người tham gia trung thực (nghĩa là những người tuân theo giao thức).

Một người lãnh đạo vị trí được bầu cho mỗi vị trí, người này chịu trách nhiệm thêm một khối vào chuỗi và chuyển nó cho người lãnh đạo vị trí tiếp theo. Để bảo vệ chống lại các nỗ lực phá hoại giao thức của kẻ thù, mỗi người dẫn đầu vị trí mới được yêu cầu coi một số khối cuối cùng của chuỗi nhận được là tạm thời: chỉ chuỗi đứng trước số lượng khối tạm thời được chỉ định trước mới được coi là đã giải quyết. Con số này xác định độ trễ giải quyết. Trong số những thứ khác, điều này có nghĩa là một bên liên quan có thể ngoại tuyến và vẫn được đồng bộ hóa với chuỗi khối, miễn là không quá chậm trễ trong việc giải quyết.

Trong giao thức Ouroboros, mỗi nút mạng lưu trữ một bản sao của mempool giao dịch – nơi các giao dịch được thêm vào nếu chúng nhất quán với các giao dịch hiện có – và chuỗi khối. Chuỗi khối được lưu trữ cục bộ được thay thế khi nút nhận biết được một chuỗi thay thế hợp lệ hơn.

### Ouroboros BFT

Ouroboros BFT (Byzantine Fault Tolerance) là một giao thức đơn giản được Cardano sử dụng trong quá trình khởi động lại Byron, đây là quá trình chuyển đổi cơ sở mã Cardano cũ sang cơ sở mã mới. Ouroboros BFT đã giúp chuẩn bị mạng của Cardano cho việc phát hành Shelley và cùng với đó là sự phân cấp của nó. Đây là phiên bản Ourorobos được triển khai trong sidechain Cardano EVM.

Thay vì yêu cầu các nút phải trực tuyến mọi lúc, Ouroboros BFT giả định một mạng máy chủ được liên kết – chuỗi khối – và giao tiếp đồng bộ giữa các máy chủ, cung cấp sự đồng thuận sổ cái theo cách đơn giản và xác định hơn.

Các lợi ích bổ sung bao gồm bằng chứng thanh toán tức thì, thanh toán giao dịch ở tốc độ mạng – có nghĩa là yếu tố quyết định giao dịch là tốc độ kết nối mạng của bạn với một nút OBFT – và xác nhận tức thì trong một chuyến liên lạc hai chiều. Mỗi trong số này dẫn đến cải thiện hiệu suất đáng kể.
