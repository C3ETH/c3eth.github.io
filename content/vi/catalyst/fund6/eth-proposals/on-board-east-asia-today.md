---
title: "Xây dựng Đông Á tương lai ngay hôm nay!"
linkTitle: "Xây dựng Đông Á  tương lai ngay hôm nay!"
type: docs
hide_feedback: true
weight: 50
description: >
  "Mặc dù có dân số hàng tỷ người, nhưng người Đông Á ít có mặt trong Catalyst do thiếu nội dung bản địa hóa. Chúng tôi đề xuất thiết lập một hệ thống dịch thuật sẽ dịch các tài liệu và Catalyst qua nhiều ngôn ngữ nhất có thể ở Đông Á."
---
{{< youtube TR37P2F7QNk >}}

**Challenge:** [Multilingual resources]({{< relref "../challenges/multilingual-resources/campaign-brief.md" >}})

[![Catalyst Proposal Badge](https://img.shields.io/badge/Proposal-Catalyst-blue)](https://cardano.ideascale.com/a/dtd/On-boarding-East-Asia-Today!/368844-48088?)

**Số tiền yêu cầu (USD):** $12,500

## Mô tả vấn đề

Mặc dù có dân số hàng tỷ người, nhưng người Đông Á ít có mặt trong Catalyst do thiếu nội dung bản địa hóa.

## Mô tả giải pháp giải quyết vấn đề

Thiết lập một hệ thống dịch thuật sẽ dịch các tài liệu và dự án đề xuất qua nhiều ngôn ngữ nhất có thể ở Đông Á.

## Kinh nghiệm liên quan

Các thành viên là các nhà đồng sáng lập Catalyst Swarm, Eastern Townhall, Catalyst School. CNTT &amp; Kỹ thuật phần mềm. các nhà giáo dục và kế toán ở Đông Á và Nhật Bản.

## Kế hoạch chi tiết

Khu vực Đông Á và Đông Nam Á hợp nhất các quốc gia đa dạng về văn hóa và ngôn ngữ. Mọi người trong các cộng đồng này rất hào hứng với việc tham gia vào hệ sinh thái Cardano. Mặc dù có dân số 1,6 tỷ, nhưng lại có rất ít các dự án đề xuất trên Catalyst từ các khu vực Đông Á và Đông Nam Á.

### Các vấn đề hiện tại và giới hạn

Trên khắp các khu vực Đông Á và Đông Nam Á, tiếng Anh không được sử dụng thường xuyên và các ngôn ngữ khu vực được sử dụng [1].

![English Proficiency Index: www.ef.com/epi](https://i.imgur.com/JFsp5WD.png)

Rào cản ngôn ngữ làm giảm sự tham gia Catalyst. Nó hạn chế sự tăng trưởng tiềm năng của việc áp dụng và tiện ích Cardano trong khu vực này. Chúng tôi trải nghiệm điều này, chúng tôi nghe điều này từ cộng đồng của chúng tôi. Chúng tôi biết Cardano đang thiếu những câu chuyện của chúng tôi, năng lượng của chúng tôi và quan điểm của chúng tôi về cách sử dụng Cardano để tăng cường phúc lợi kinh tế.

### Giải pháp đề xuất: Dịch đồng thời và Tự động hóa

Mục tiêu của chúng tôi là xây dựng và ghi lại một quy trình hợp lý để dịch nội dung và bắt đầu phát triển nội dung được bản địa hóa. Chúng tôi đã thiết lập một đường dẫn dịch đơn giản [2] bằng Git, Hugo và Github Actions. Chúng tôi đã thử nghiệm một số dịch vụ dịch thuật như Crowdin [3], Lokalize [4], PoEditor [5] và GitLozalise [6] cho Tòa thị chính phía Đông để giúp chúng tôi tổ chức và có nhiều trải nghiệm.

Mục tiêu ban đầu của chúng tôi rất đơn giản: nhận được nhiều tài liệu Cardano và Catalyst hiện có được dịch sang nhiều ngôn ngữ của khu vực Đông và Đông Nam Á bằng hệ thống bán tự động. Tích lũy kinh nghiệm và xây dựng cộng đồng. Ghi lại những gì chúng tôi làm và làm như thế nào.

Bằng hệ thống bán tự động, chúng tôi không có nghĩa là dịch máy. Mặc dù dịch máy hữu ích như một điểm khởi đầu, nhưng nó gặp khó khăn với các thuật ngữ chuyên ngành và không đọc tự nhiên. Bản dịch của con người sẽ luôn có lợi thế hơn một. Hệ thống bán tự động sẽ sử dụng để xếp hàng đợi một phần tác phẩm để dịch, có thể bao gồm việc cung cấp cho nó thông qua một dịch vụ dịch máy, nhờ ai đó làm việc, xem xét và sau đó xuất bản.

Chúng tôi  bắt đầu nắm bắt và mở rộng các quy trình tài liệu với ngôn ngữ bản địa từ nhóm Kubernetes SIG Docs [7] thiết lập để giúp chúng tôi. Điều chỉnh các quy trình để phù hợp với các kỹ năng kỹ thuật khác nhau và các hướng đi trong tương lai mà chúng tôi muốn thực hiện.

### Luồng công việc

Để thiết lập một hệ thống dịch thuật bền vững và hoạt động, chúng tôi đang tìm kiếm nguồn tài trợ ban đầu để giúp phát triển công việc mà chúng tôi đã bắt đầu. Kinh phí chi cho năm đầu công việc:

1. Đánh giá các dịch vụ dịch thuật và sự tích hợp của chúng: với Git, Github, Ideascale và các nỗ lực tài liệu dựa trên Markdown của Cardano Foundation.
2. Thiết kế, cấu hình, thử nghiệm một đường dẫn dịch: Mục tiêu là để có một quy trình quy mô nhỏ, đủ dễ theo dõi và yêu cầu giám sát tối thiểu.
3. Tài liệu hóa lại quy trình dịch thuật và phát triển tài liệu hướng dẫn: Tận dụng và mở rộng quy trình Kubernettes SIG Doc [7] để đáp ứng nhu cầu của chính chúng ta. Phát triển nội dung hướng dẫn được bản địa hóa cho các dịch giả trong tương lai.
4. Đào tạo các huấn luyện viên: Thực hiện các buổi đào tạo với các thành viên của Eastern Townhall để nâng cao năng lực trong quá trình này để họ có thể đào tạo những người khác.
5. Dịch: Để bắt kịp quy trình làm việc của chúng tôi sẽ đòi hỏi một số kinh nghiệm và mày mò thực hành. Chúng tôi mong muốn dịch tuyển tập các Hướng dẫn viên Catalyst, Cố vấn Cộng đồng, giáo dục cử tri và tài liệu của riêng chúng tôi. Điều đó cần thời gian và công sức cho mỗi ngôn ngữ.

### Mở rộng quy mô: Kiếm tiền để học

Để có được quy mô thực sự, các bản dịch và tiêu chuẩn bản địa hóa, tự động hóa và các kỹ năng cần được phát triển để chúng tôi có thể thuê ngoài bản địa hóa cho cộng đồng Cardano rộng lớn hơn. Thực hiện dịch thuật và bản địa hóa là một cách để bạn tham gia nhiều hơn vào Cardano và các cộng đồng khác nhau. Làm công việc dịch thuật và bản địa hóa; học tập và kiếm tiền. Công việc dịch thuật và bản địa hóa nhằm tạo dựng danh tiếng và kiếm Ada. Chúng tôi nhìn thấy một tương lai tận dụng Siêu dữ liệu, Tài sản gốc, Mã (NFT), Máy học và Atala Prism trên chuỗi khối Cardano để mang lại cho chúng ta khả năng tiếp cận ngôn ngữ và văn hóa. Tuy nhiên, hãy bắt đầu từ đơn giản

### Hợp tác

Translation and localisation of content is a general issue across many groups working in Cardano and Catalyst. We do not plan to do this work alone or exclusively. In the Eastern Town Hall, we are at the forefront of managing many languages and cultures, our plan is to develop practices and automated processes for our own purposes, and share them widely. Everything we learn and do, we hope will inform the Cardano ecosystem at large.

## Thành công sẽ như thế nào

Trong thời gian ngắn, Tòa thị chính phía Đông có thể dịch và lưu trữ các Đề xuất Catalyst khi chúng được hoàn thiện. Dịch sang bốn ngôn ngữ ban đầu ở khu vực Châu Á. Các báo cáo dự án được tài trợ cũng được tích hợp và dịch. Chúng tôi cũng đã dịch và duy trì các bản dịch đó với các tài liệu và hướng dẫn chính của Cardano và Catalyst.

Trong trung hạn, chúng tôi muốn mở rộng các ngôn ngữ được dịch và chúng tôi đang tích cực làm việc với các nhóm khác trên Hệ sinh thái Cardano để thực hiện công việc này.

Thành công về dài hạn là chúng tôi đã thiết lập toàn bộ quy trình làm việc phi tập trung để dịch và thông dịch bất kỳ tài liệu, video, podcast nào, v.v. bằng cách sử dụng Mạng Cardano làm xương sống điều phối. Trong đó, một trong những cách đơn giản nhất để tham gia và kiếm ADA trong hệ thống sinh thái Cardano là giúp dịch, phiên âm hoặc giải thích tài liệu (không có hại gì khi mơ lớn!).

### Key Performance Indicators

Vì chúng tôi đang sử dụng Git và Github  nên thông tin về việc lập kế hoạch, tổ chức, tài liệu, chỉ số của Tòa thị chính phía Đông có thể lấy từ hoạt động và mức độ tương tác của Github.

**Chỉ số chính** : Vận tốc dự án [8], được định nghĩa là sự kết hợp của chỉ số hoạt động cơ sở của các cam kết và yêu cầu kéo được lấy từ Github.

**Chỉ số hoạt động** : được ghi lại dưới dạng hoạt động của dự án trong Github và tài liệu nhịp được thêm vào và tốc độ dịch.

**Chỉ số cộng đồng** : hành vi tham gia được chia thành bốn loại [9] cho trang web của Tòa thị chính phía Đông, để đo lường cách công việc của chúng tôi đang được lan truyền và sử dụng trong hệ sinh thái Cardano.

### Sau một tháng:

- Kiến trúc thông tin trang web của Tòa thị chính Đông đã được phát triển.
- Nội dung chính cho trang web ban đầu đã được xác định và chuyển sang Markdown.
- Toàn bộ trang web của Tòa thị chính phía Đông được dịch.

### Sau ba tháng:

- Chúng tôi đã thiết lập một đường dẫn dịch bán tự động theo yêu cầu của Git Pull.
- Đã đánh giá và thử nghiệm các dịch vụ dịch thuật khác nhau như một phương tiện để đơn giản hóa việc dịch thuật.
- Ghi lại quá trình dịch ban đầu của chúng tôi và đào tạo các giảng viên.
- Các định dạng mở rộng cho bản dịch để bao gồm phụ đề video.
- Phát hành NFT cho kỹ năng, ngôn ngữ và theo dõi ghi nhận / đóng góp.

### Sau sáu tháng:

- Thêm các thành viên của Cộng đồng Cardano để làm công việc dịch thuật.
- Đã thêm thêm hai ngôn ngữ bán cầu Đông vào bộ cốt lõi của chúng tôi.
- Tài liệu hướng dẫn (tài liệu và video) được phát triển và dịch để trợ giúp những người đóng góp và ngôn ngữ mới.

### Sau mười hai tháng:

- Tất cả các Đề xuất của Catalyst và các Dự án được Tài trợ đều được dịch và xuất bản trong vòng vài ngày kể từ khi hoàn thành.
- Chúng tôi đã mở rộng bộ ngôn ngữ cốt lõi của mình để bao gồm mười ngôn ngữ từ Đông bán cầu.
- Dự án dịch có thể tự duy trì bởi vì các dự án / nhóm / doanh nghiệp muốn tiếp cận khán giả của chúng tôi bằng ngôn ngữ mẹ đẻ của họ.
- Hệ sinh thái Cardano liên kết theo các tiêu chuẩn tương tự để quản lý tài liệu và bản dịch của chúng.

### Bản quyền

Tất cả mã nguồn của chúng tôi sẽ được cấp phép theo giấy phép mã nguồn mở và miễn phí (OSI), ví dụ như MIT, và các đóng góp phải được đóng góp không có bằng sáng chế. Người đóng góp sẽ được yêu cầu đồng ý với Người bao che cho Người đóng góp [10].

Nội dung đã xuất bản sẽ được cấp phép theo Giấy phép Creative Attribution-Non-Commercial-ShareAlike International (CC BY-NC-SA) v4.0. Mọi thông số kỹ thuật siêu dữ liệu sẽ được xuất bản theo giấy phép Creative Commons Attribution-NoDeriuct 4.0 International (CC BY-ND 4.0). Các thông số kỹ thuật siêu dữ liệu áp dụng cho việc xác định và xuất xứ tài liệu sẽ được đệ trình ở đâu và khi nào sẽ được đệ trình dưới dạng Đề xuất Cải tiến Cardano.

Mã, tài liệu, hoạt động dự án được cung cấp trên Github hoặc trong tương lai một dịch vụ tương tự.

## Ngân sách

Ngân sách Quỹ 6 được yêu cầu dành cho tiền lương cho ba tháng và sáu tháng. Năm mươi phần trăm quỹ sẽ được sử dụng để trang trải cho công việc và chi phí mà chúng tôi đang thực hiện.

- Đánh giá / Tích hợp dịch vụ dịch thuật: $ 1200 USD
- Tự động hóa quy trình làm việc: $ 3000 USD
- Tài liệu Quy trình: $ 2200 USD
- Đào tạo nhà Đào tạo: $ 850 USD
- Dịch thuật: $ 1250 USD
- Quản lý dự án (% 8): $ 1000 USD
- Dịch vụ  phần mềm&amp; Máy chủ: $ 3000 USD

Phí Dịch vụ &amp; Máy chủ Phần mềm ($ 500 x 6 tháng = $ 3.000) bao gồm chi phí sử dụng dịch vụ dịch thuật (từ $ 140USD đến $ 240USD một tháng) để giúp sắp xếp hợp lý các bản dịch; Github; lưu trữ trang web và bất kỳ máy chủ nào cần thiết cho việc dịch thuật.

Khoản quỹ này chỉ liên quan đến việc thiết lập và thử nghiệm một đường dẫn dịch. Các quỹ khác sẽ được yêu cầu để tiếp tục bất kỳ công việc nào sau khoảng thời gian ba tháng, thông qua Catalyst hoặc các phương thức tài trợ khác cho hoạt động của Tòa thị chính phía Đông.

### Về Đội Nhóm

Với nỗ lực hợp tác, nhóm mang lại nhiều kinh nghiệm về văn hóa và kỹ thuật cho Cardano. Tất cả chúng tôi đều hoặt động rất tích cực trong Catalyst và các nhóm cộng đồng trong hệ sinh thái của chúng tôi. Chúng tôi là một nhóm đa dạng được thống nhất bởi lời hứa của Cardano:

**Yuta Yuta** (@yutazz) - Nhật Bản: Đại sứ chính thức của Cardano, Người đồng tổ chức cộng đồng, Người nhận Quỹ Catalyst 2, kế toán.

**Yan Tirta** (@yantirta) - Indonesia: Hỗ trợ cộng đồng Cardano ở Indonesia, khuyến khích cộng đồng địa phương phát triển bằng giáo dục và sự khích lệ.

**Mie Tran** (@ mie.tran.0407) - Việt Nam: Chuyên ngành Ngôn ngữ Anh và Kinh doanh Quốc tế, có kinh nghiệm làm việc với các doanh nghiệp phương Tây và phiên dịch.

**Andy Sibuea** (@zicozibu) - Indonesia: Tiên phong trong viêc giáo dục blockchain trên nền tảng tiền điện tử trên phạm vi rộng khắp Indonesia.

**Tim O'Brien** (@tobrien) - Việt Nam: Tiên phong trong công nghệ No-code. Người chủ trị tại phòng họp phía Đông Phi (EATH).

**Greg Bell** (@grebel) - Úc: Chuyên gia tư vấn CNTT, người tạo ra những chellenge cho dự án Catalyst.

**Seomon Blub** (@seomon) - Áo: Chuyên gia tư vấn CNTT tập trung vào cơ sở hạ tầng con người cho cộng đồng bền vững.

**Robert O'Brien** (@wolstaeb) - New Zealand: Kỹ sư phần mềm hệ thống tài chính, Nhà đồng tổ chức và Doanh nhân cộng đồng.

**Stephen Whitenstall** (@swhitenstall) - Anh: Theo dõi và soạn thảo tài liệu Catalyst. Giúp tổ chức các cộng đồng như Catalyst Circle và Catalyst Swarm.

**Felix Weber** (@felixweber) - Pháp: Quản lý cộng đồng, xây dựng cầu nối giữa mọi người. Thành viên của T&amp;M Catalyst Circle / Swarm / School.

**Nhóm đại diện cho hạt giống tin cậy khởi đầu** của Tòa Thị Chính Miền Đông. Không có vai trò, không có nhà lãnh đạo. Thay vào đó mọi người tự thành lậ, thông qua sự tham gia theo thời gian. Đội ngũ mở rộng bao gồm các thông dịch viên và biên dịch viên chuyên nghiệp.

## Tham chiếu

[1] [English Proficiency Index](https://www.ef.com/wwen/epi/)

[2] [Eastern Townhall Catalyst Fund 6 Work](https://c3eth.github.io/catalyst/fund6/)

[3] [Crowdin](https://crowdin.com/)

[4] [Lokalize](https://lokalise.com/)

[5] [PoEditor](https://poeditor.com/)

[6] [GitLozalise](https://gitlocalize.com/)

[7] [Kubernetes SIG Docs group](https://kubernetes.io/docs/contribute/localization/#minimum-required-content)

[8] [Project Velocity](https://chaoss.community/metric-project-velocity/)

[9] [Community Metrics](https://communityroundtable.com/best-practices/thecrs-work-out-loud-framework/)

[10] [Contributor Covernant](https://www.contributor-covenant.org/)
