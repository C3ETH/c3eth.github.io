---
title: Làm việc với MetaMask
date: '2022-10-06 08:48:23 +0000'
lastmod: '2022-10-06 08:48:23 +0000'
draft: 'false'
images: []
---

Nhóm đã kiểm tra khả năng tương thích của MetaMask với sidechain bằng trình duyệt web Google Chrome và Brave.

## Cài đặt MetaMask

Sử dụng liên kết này để cài đặt MetaMask dưới dạng tiện ích mở rộng trình duyệt hoặc ứng dụng dành cho thiết bị di động: [https://metamask.io/](https://metamask.io/) .

![cài đặt-meta-mặt nạ](https://user-images.githubusercontent.com/10556209/148433190-2aabc719-67fb-40f3-a459-0f5f0d81e169.png)

## Tạo hoặc nhập tài khoản

Chọn tùy chọn để tạo một tài khoản.

![tạo tài khoản](https://docs.cardano.org/static/982017e44b8c53b562472ab69fa4395b/e3189/sc-metammask-create-account.png)

Sao lưu cụm từ hạt giống trong ví của bạn và lưu trữ ở nơi an toàn.

## Thêm (các) mạng sidechain Cardano EVM trong cài đặt

Cài đặt &gt; Mạng &gt; Thêm mạng &gt; Nhập các cài đặt sau và lưu lại.

- Tên mạng: `EVM sidechain Testnet`
- URL RPC mới: `https://faucet.sidechain.evmtestnet.iohkdev.io/`
- ID chuỗi: `78`
- Ký hiệu tiền tệ: `SC_Token` &lt;--- *(tên tạm thời)*
- Chặn URL Explorer: `https://explorer.sidechain.evmtestnet.iohkdev.io/`

Bây giờ bạn có thể chọn mạng sidechain Cardano EVM từ MetaMask:

![chọn mạng](https://docs.cardano.org/static/ad1e7a421d3729fbbea5d08d7c486758/2ece4/sc-metamask-select-testnet.png)

## Các vấn đề đã biết

- Nếu mạng sidechain đã được thêm chính xác, nhưng MetaMask không gửi giao dịch, cập nhật số dư hoặc đơn giản là không tương tác với chuỗi, thì hãy thử [Đặt lại tài khoản MetaMask của bạn](https://metamask.zendesk.com/hc/en-us/articles/360015488891-How-to-reset-an-account) .
- Nhóm đã kiểm tra khả năng tương thích của MetaMask với sidechain bằng trình duyệt web Google Chrome và Brave. Để tránh các sự cố tương thích với trình duyệt, hãy sử dụng cùng một trình duyệt.
