---
date: '2021-09-18'
title: Buổi họp Thị trấn Đông bán cầu thứ 8
linkTitle: Buổi họp Thị trấn Đông bán cầu thứ 8
description: Một buổi gặp mặt tuyệt vời, nơi chúng tôi bắt đầu nói về Ideafest, Cardano Summit và Hackathons sắp tới.
author: Robert & Stephen
resources:
  - src: "**.{png,jpg}"
  title: 'Image #:counter'
  params:
    byline: 'Photo: Eastern Hemisphere Townhall / CC-BY-CA'
---

Một buổi gặp mặt tuyệt vời, nơi chúng tôi bắt đầu nói về Ideafest, Cardano Summit và Hackathons sắp tới. Rất nhiều gương mặt quen thuộc đã tham gia vào một cuộc thảo luận sâu sắc về Lừa đảo và phát hiện Lừa đảo. Dẫn đầu bởi Peter Bùi. Chúng tôi cũng thảo luận về bot giao dịch, các ứng dụng Xã hội và Môi trường và đề cập đến Đồng ổn định.

{{&lt;imgproc Sunset Fill "600x300"&gt;}} Tìm nạp và chia tỷ lệ hình ảnh trong Hugo 0.43 sắp tới. {{&lt;/ imgproc&gt;}}

Vấn đề đầu tiên của bài đăng này chỉ định các thuộc tính được gán cho tất cả các tài nguyên hình ảnh:

```
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: "Photo: Riona MacNamara / CC-BY-CA"
```

Để đưa hình ảnh vào một trang, hãy chỉ định các chi tiết của nó như sau:

```
{{< imgproc sunset Fill "600x300" >}}
Fetch and scale an image in the upcoming Hugo 0.43.
{{< /imgproc >}}
```

Hình ảnh sẽ được hiển thị ở kích thước và từng dòng được chỉ định trong vấn đề phía trước.
