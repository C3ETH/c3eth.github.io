---
title: 'Chữ ký ẩn danh phổ quát: kết nối quá khứ, hiện tại và tương lai của xác thực ẩn danh'
description: 'Gần đây, chúng tôi đã nhận được bài báo ''Cơ sở của chữ ký ẩn danh: Định nghĩa chính thức, Yêu cầu đơn giản hóa và Xây dựng dựa trên các giả định chung'' được chấp nhận tham gia FC''24   - phiên bản năm 2024 của hội nghị Mật mã tài chính. Bài viết này trình bày về Chữ ký ẩn danh phổ quát (UAS).'
ddate: 2024-01-24T09:19:42+01:00
lastmod: 2024-01-24T09:19:42+01:00
draft: false
weight: 50
images: []
categories: ["IOHK"]
tags: ["security", "performance", "SEO"]
contributors: ["Jesus Diaz Vico"]
pinned: false
homepage: false
menu:
  blog:
    parent: "IOHK"
---


Gần đây, chúng tôi đã nhận được bài báo 'Cơ sở của chữ ký ẩn danh: Định nghĩa chính thức, Yêu cầu đơn giản hóa và Xây dựng dựa trên các giả định chung' được chấp nhận tham gia FC'24 - phiên bản năm 2024 của hội nghị Mật mã tài chính. Bài viết này trình bày về **Chữ ký ẩn danh phổ quát (UAS)** .

Chúng tôi thực sự vui mừng về điều đó vì bên cạnh việc kết nối một số trường con trong miền xác thực ẩn danh, UAS còn đặt ra con đường hướng tới những gì chúng tôi tin rằng có thể là (một phần) tương lai của Bản sắc Tự chủ và là điều mà chúng tôi chắc chắn sẽ thúc đẩy để tích hợp trong Atala cung cấp.

Nhưng giới thiệu thế đủ rồi. UAS nói về cái gì?

## Một chút về lịch sử

Năm 1985, David Chaum lần đầu tiên nghĩ đến một thông tin xác thực mật mã mà mọi người có thể sử dụng mà không thực sự bị rò rỉ danh tính của họ, nhưng vẫn đảm bảo cho các nhà cung cấp dịch vụ rằng họ đang nói chuyện với một người hợp pháp. Nhiều biến thể đã được đề xuất, thường tận dụng khái niệm thuộc tính đã được chứng thực - mà chủ sở hữu thông tin xác thực có thể lựa chọn có chọn lọc xem có tiết lộ hay không. Điều này được gọi là sơ đồ Thông tin xác thực ẩn danh (AC).

Năm 1991, Chaum và van Heyst đề xuất chữ ký nhóm (GS), cho phép các thành viên của một nhóm có chứng chỉ thành viên thực hiện điều gì đó tương tự như AC. Những thông tin xác thực thành viên này thường không có thuộc tính, nhưng chữ ký do lược đồ GS tạo ra có thể được xử lý bởi một thực thể đáng tin cậy, thực thể này có thể trích xuất mã định danh của người ký ẩn danh.

Cả hai chương trình AC và GS đều dựa vào cơ quan có thẩm quyền cấp thông tin xác thực cần thiết để xác thực hoặc ký tên. Một thực thể như vậy đã bị loại bỏ vào năm 2001, khi Rivest, Shamir và Tauman nghĩ ra sơ đồ Chữ ký vòng (RS), có thể được coi là một loại chữ ký nhóm không thể khử ẩn danh và không yêu cầu nhà phát hành.

Vì vậy, chỉ trong vòng 16 năm, cộng đồng mật mã đã tìm ra ba cách khác nhau nhưng giống nhau để cho phép người dùng tự xác thực ẩn danh. Và kể từ năm 2001, nhiều biến thể khác đã được đề xuất, đôi khi tìm ra điểm trung gian. Chúng bao gồm các lược đồ RS cho phép liên kết chữ ký hoặc chữ ký nhóm trong đó chỉ người dùng mới có thể liên kết chữ ký của chính họ).

## UAS giải quyết được gì?

Trên thực tế, không chỉ các sơ đồ AC, GS và RS (và nhiều biến thể của chúng) có một số điểm chung. Raisons d'être của họ có liên quan chặt chẽ với nhau. Cho phép người dùng xác thực ẩn danh, trong khi vẫn cho phép các nhà cung cấp dịch vụ có một số quyền kiểm soát đối với thông tin họ có thể trích xuất. Từ quan điểm lý thuyết, điều này được phản ánh ở chỗ các mô hình bảo mật thường trông rất giống nhau. Ví dụ, người ta luôn cần suy nghĩ về các thuộc tính ẩn danh, những thuộc tính này nắm bắt được những gì có thể học được từ chữ ký. Và về các thuộc tính không thể giả mạo, có các biến thể có khả năng truy xuất nguồn gốc và không thể lập khung, nêu rõ loại trình xác minh đảm bảo tính không thể giả mạo (nhà cung cấp dịch vụ) và người dùng có thể mong đợi tương ứng. Ngoài ra, có nhiều cách để xây dựng các sơ đồ này từ các khối xây dựng rất giống nhau.

Tuy nhiên, vì lý do nào đó mà cho đến nay, AC, GS, RS và các loại khác vẫn được nghiên cứu độc lập. Hơn nữa, mặc dù trong một số nhánh cụ thể, như GS, có tồn tại các mô hình bảo mật tham chiếu như dòng công việc 'Nền tảng của chữ ký nhóm', nhưng điều này không phải lúc nào cũng đúng. Ngay cả khi có các mô hình tham chiếu, các mô hình bảo mật này thường gắn liền với **sự cân bằng cụ thể giữa quyền riêng tư và tiện ích** .

#### Một ví dụ thực tế

Giả sử bạn có sơ đồ AC cho phép bạn tiết lộ có chọn lọc các thuộc tính tùy ý tại thời điểm xuất trình thông tin xác thực. Tuy nhiên, sau đó, bạn muốn sử dụng lại nó trong trường hợp bạn cũng cần liên kết các bài thuyết trình từ cùng một người dùng (có thể bạn muốn thưởng cho người dùng này một số điểm trung thực hoặc có thể người dùng này đang gửi thư rác cho bạn và bạn muốn chặn họ!) . Nói tóm lại, bạn muốn thêm một số loại khả năng kiểm toán. Sự thay đổi đơn giản tiên nghiệm này đòi hỏi một mô hình bảo mật mới! Chắc chắn, nếu bạn biết cách thực hiện, bạn có thể mở rộng cái trước đó và nếu may mắn, công trình bạn có trước đó cũng có thể được cập nhật dễ dàng. Nhưng nếu bạn đã từng thực hiện những điều này, bạn sẽ biết điều này thường là quá nhiều để hy vọng.

#### Một mô hình động để cân bằng giữa quyền riêng tư và tiện ích trong xác thực ẩn danh

Yêu cầu một mô hình bảo mật cho mỗi sự cân bằng giữa quyền riêng tư và tiện ích cụ thể rõ ràng là không lý tưởng. Và đó chính xác là điều chúng tôi muốn khắc phục, vì những loại yêu cầu gần giống nhưng khác nhau này khá phổ biến trong thực tế. Vì vậy, những gì chúng tôi đã làm là đưa ra UAS, một mô hình bảo mật chung có thể được điều chỉnh ở chỗ này chỗ kia để bạn có thể điều chỉnh nó cho phù hợp với nhu cầu của trường hợp sử dụng của mình – về mặt cân bằng giữa quyền riêng tư và tiện ích bắt buộc . Chi tiết hơn một chút, nhìn kỹ hơn, có ba điểm mà người ta có thể muốn điều chỉnh loại sơ đồ xác thực ẩn danh này:

- Tại thời điểm cấp: khi người dùng yêu cầu thông tin xác thực, họ có thể được yêu cầu cung cấp thông tin xác thực có được trước đó đáp ứng thuộc tính A hoặc B - hoặc thậm chí họ có thể không được yêu cầu cung cấp thông tin xác thực nào cả!
- Tại thời điểm ký: khi người dùng muốn tạo chữ ký ẩn danh (hoặc xuất trình thông tin xác thực của họ), người xác minh có thể yêu cầu biết rằng các thuộc tính thông tin xác thực đáp ứng các tiêu chí nhất định.
- Tại thời điểm kiểm tra: kiểm toán viên có thể yêu cầu trích xuất một số thông tin sau khi chữ ký được tạo. Cũng có thể không có kiểm toán viên nào cả!

Chúng tôi nắm bắt những sự cân bằng khác nhau này thông qua 'phần giữ chỗ chức năng' (lập trình viên có thể coi đó là các hàm trừu tượng) tại ba điểm này, được nhúng trong khung bảo mật về cơ bản tuân theo mẫu ẩn danh-không thể giả mạo được đề cập ở trên. Điều quan trọng nhất đối với các kỹ sư là, với một công trình đã được chứng minh là an toàn trong mô hình của chúng tôi, họ chỉ cần xác định các chức năng cụ thể cần thiết ở mỗi bước –phát hành, ký kết và kiểm tra – và thế là xong! An ninh theo sau sự an toàn của công trình chính.

#### Điều này có liên quan gì đến GS, AC hoặc RS?

Câu hỏi công bằng! Chúng tôi muốn chắc chắn rằng mô hình chung được tuyên bố của chúng tôi thực sự là mô hình chung. Vì vậy, chúng tôi đã làm điều đó như thế nào? Vâng, chúng tôi đã chứng minh rằng, bằng cách đưa ra các chức năng cụ thể tại thời điểm phát hành, ký kết và kiểm tra, công trình xây dựng chung của chúng tôi có thể hoạt động như một sơ đồ GS, AC hoặc RS. Cụ thể hơn, chúng tôi chứng minh rằng biến thể xây dựng như vậy của chúng tôi là sơ đồ GS, AC hoặc RS an toàn, theo các mô hình bảo mật nổi tiếng của chúng).

Tất nhiên, số lượng giấy tờ là hữu hạn nên chúng tôi chỉ chứng minh rằng GS, AC, RS cơ bản có thể xây dựng được từ cách xây dựng chung của UAS. Chúng tôi cũng phác thảo bằng chứng cho các biến thể nâng cao hơn, chẳng hạn như GS với tính năng mở phụ thuộc vào tin nhắn, Chữ ký riêng đa phương thức và Thông tin xác thực ẩn danh có thể thu hồi. Thật dễ dàng để tưởng tượng nhiều biến thể khác. Ví dụ: Thông tin xác thực ẩn danh với khả năng kiểm tra mở rộng hoặc thậm chí cả sơ đồ chữ ký ẩn danh với sự cân bằng giữa quyền riêng tư và tiện ích vẫn chưa được xem xét trong không gian học thuật.

## Điều gì (hoặc có thể) tiếp theo?

Điều đầu tiên bạn có thể nhận thấy là đây là một công việc khá lý thuyết. Mặc dù mọi thứ đều ổn trên giấy tờ nhưng các vấn đề có thể xuất hiện trong khi mã hóa. Mối quan tâm chính đáng là hình phạt nào được trả một cách hiệu quả khi có một công trình có thể được điều chỉnh để phù hợp với nhiều trường hợp sử dụng khác nhau. Đây là sự lo lắng rất có lý. Xét cho cùng, các kế hoạch được thiết kế với một mục đích duy nhất có xu hướng hiệu quả hơn. Để đánh giá điều này tốt hơn, chúng tôi đang nghiên cứu một nguyên mẫu. Ban đầu, chúng tôi muốn có một thư viện có thể tóm tắt các chi tiết nội bộ và cho phép các nhà phát triển tập trung vào việc triển khai các phần giữ chỗ chức năng cụ thể mà họ quan tâm. Sau đó, kiểm tra xem kết quả có hiệu quả như thế nào từ cấu trúc chung (hiện tại) của chúng tôi . Điều này có thể sẽ đủ tốt cho một số ứng dụng, nhưng không phải tất cả.

Bài viết đưa ra một cấu trúc chung dựa trên BBS+, mã hóa và bằng chứng ZK chung (không tương tác). Điều này chắc chắn sẽ ổn nếu những gì chúng tôi muốn đạt được là loại tuyên bố tiết lộ có chọn lọc, nhưng điều này có thể sẽ không phù hợp nếu chúng tôi muốn chứng minh các vị từ biểu cảm hơn chẳng hạn. Vì vậy, bước tiếp theo là suy nghĩ về các cấu trúc chung thay thế phù hợp hơn với các yêu cầu mang tính biểu cảm hơn.

Ngoài ra, từ quan điểm lý thuyết, chúng tôi có nhiều ý tưởng cho tương lai. Ví dụ: cho phép các tổ chức phát hành và kiểm toán viên thay đổi chức năng của họ. Hiện tại, mặc dù nhiều tổ chức phát hành hoặc kiểm toán viên có thể cùng tồn tại nhưng mỗi tổ chức đều cam kết thực hiện một chức năng. Hoặc điều chỉnh mô hình cho phù hợp với cài đặt động hoàn toàn và hơn thế nữa.

## Chúng tôi dự định tích hợp UAS vào Atala như thế nào?

Như đã nêu, chúng tôi đang nghiên cứu triển khai dựa trên cấu trúc chung của chúng tôi từ BBS+, mã hóa (ElGamal) và bằng chứng ZK (giao thức Sigma cơ bản). Đây sẽ là điểm khởi đầu của chúng tôi, cho phép chúng tôi thử nghiệm công nghệ mới này trong hệ thống SSI do Atala cung cấp. Bằng cách tích hợp UAS trong ngăn xếp Tác nhân doanh nghiệp mở của Atala, chúng tôi sẽ có thể tận dụng tất cả các công cụ mà Atala bao gồm và bắt đầu thử nghiệm cách UAS hoạt động trong các môi trường sẵn sàng sản xuất (với các tác nhân, nút, giao thức truyền thông dành riêng cho SSI, v.v.), đồng thời điều chỉnh nó cho phù hợp với nhu cầu của thị trường và đội ngũ kỹ thuật.

Hãy theo dõi các cập nhật sắp tới!
