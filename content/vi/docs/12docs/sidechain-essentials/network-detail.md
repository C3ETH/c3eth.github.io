---
title: 'Mạng lưới chi tiết'
date: 2022-10-06 08:48:23 +0000
lastmod: 2022-10-06 08:48:23 +0000
draft: false
images: []
---

Môi trường testnet sidechain EVM Ví dụ bao gồm hai mạng:

1. Mạng thử nghiệm sidechain EVM (sidechain, SC)
2. Mạng thử nghiệm Cardano *chuyên biệt* (chuỗi chính, MN)

## Các mạng lưới

Tên | Dạng kết nối | ID chuỗi | Đoàn kết | Mã thông báo | Người mẫu
--- | --- | --- | --- | --- | ---
Mạng thử nghiệm sidechain EVM | mạng thử nghiệm | 78 | OBFT | Mã thông báo sidechain (SC_Token) | Mô hình tài khoản
Mạng thử nghiệm Cardano | mạng thử nghiệm | 7 | máy bán hàng | kiểm tra ada | EUTXO

## Tiện ích mạng

### Ví dụ EVM Sidechain

|                     |                                                                    |
|---------------------|--------------------------------------------------------------------|
| RPC                 | https://faucet.sidechain.evmtestnet.iohkdev.io/ (cùng url với vòi) |
| Trình khám phá khối | https://explorer.sidechain.evmtestnet.iohkdev.io/                  |
| vòi                 | https://faucet.sidechain.evmtestnet.iohkdev.io/                    |

### Mạng thử nghiệm Cardano chuyên dụng

|     |                                                           |
|-----|-----------------------------------------------------------|
| vòi | https://faucet.cardano.evmtestnet.iohkdev.io/basic-faucet |

### thông báo mạng

Thông báo về các bản phát hành mới, gián đoạn mạng và các bản cập nhật khác sẽ được công bố trong kênh `#ask-sidechains` trong [IO Technical Communities Discord](https://discord.com/invite/inputoutput) .
