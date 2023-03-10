---
title: Câu hỏi thường gặp về Sidechains
date: '2022-10-06 08:48:23 +0000'
lastmod: '2022-10-06 08:48:23 +0000'
draft: 'false'
images: []
---

Trang này trả lời một số câu hỏi thường gặp cho Cardano Sidechains Toolkit và ví dụ về ứng dụng sidechain EVM.

### Bộ công cụ Cardano Sidechains

Những câu hỏi này liên quan đến các thành phần mà IOG cung cấp để xây dựng chuỗi bên tùy chỉnh trên Cardano.

### Bộ công cụ Sidechain có phải là một dự án mã nguồn mở không?

Yes, it will be open-sourced under the Input Output Global GitHub repository.

### Will there be an alternative chain follower to DB Sync that consumes less resources?

Có, IOG đang hoạt động trong một công cụ ít tốn tài nguyên hơn. Có các công cụ lập chỉ mục chuỗi khác như Oura và Carp có thể phục vụ mục đích xây dựng chuỗi bên Cardano.

### Ví dụ về ứng dụng sidechain EVM

Những câu hỏi này liên quan đến ứng dụng mà IOG đã xây dựng như một bằng chứng về khái niệm, sử dụng Bộ công cụ Cardano Sidechains.

### Sự khác biệt giữa sidechain EVM và Hydra là gì?

Chúng là hai giải pháp riêng biệt. Hydra là một giải pháp khả năng mở rộng lớp 2 dành cho các ứng dụng được phát triển trong Plutus cho chuỗi khối Cardano để tăng tốc các giao dịch, tương tự như mạng Lightning cho Bitcoin.

Sidechain EVM đưa việc thực thi máy ảo Ethereum (DApps dựa trên Solidity) vào Cardano thông qua một sidechain.

### Can you execute a Solidity smart contract on the example EVM sidechain? If this is possible, how do you go between the Ethereum (account model) to the Cardano (EUTXO) accounting model?

Sidechain EVM sử dụng mô hình tài khoản để nó hoàn toàn tương thích với các ứng dụng dựa trên Ethereum. Nó không sử dụng EUTXO.
