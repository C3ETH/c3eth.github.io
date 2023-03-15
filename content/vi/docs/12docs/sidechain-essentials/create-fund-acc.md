---
title: Tạo và nạp tiền vào tài khoản
date: '2022-10-06 08:48:23 +0000'
lastmod: '2022-10-06 08:48:23 +0000'
draft: 'false'
images: []
---

#### Điều kiện tiên quyết:

1. Khả năng thực hiện một yêu cầu HTTP.

## Cách cấp tiền cho tài khoản chuỗi chính của bạn bằng mã thông báo ada thử nghiệm

Trong hướng dẫn này, bạn sẽ tìm hiểu cách yêu cầu mã thông báo ada thử nghiệm trên mạng thử nghiệm chuỗi chính (để thanh toán phí giao dịch chuỗi chính).

> Lưu ý: Đây là mạng thử nghiệm Cardano chuyên dụng tách biệt với môi trường thử nghiệm xem trước và tiền sản xuất.

## Tạo khóa

To generate keys for the Cardano testnet you need the cardano-cli binary. Open a shell and run the following commands:

```haskell
# Set network name
network=--testnet-magic=7

cardano-cli address key-gen \
    --verification-key-file payment.vkey \
    --signing-key-file payment.skey

cardano-cli address build \
    --payment-verification-key-file payment.vkey \
    --out-file payment.addr \
    $network

 export MC_ADDR=$(cat payment.addr)
```

Các bước này dựa trên [hướng dẫn tạo khóa và địa chỉ](https://github.com/input-output-hk/cardano-node/blob/master/doc/stake-pool-operations/3_keys_and_addresses.md) này.

Yêu cầu kiểm tra ada bằng ứng dụng web: [https://faucet.cardano.evmtestnet.iohkdev.io/basic-faucet](https://faucet.cardano.evmtestnet.iohkdev.io/basic-faucet)

## Cách cấp tiền cho tài khoản sidechain của bạn bằng SC_token thử nghiệm

Tạo tài khoản sidechain bằng ví Web3 tương thích được kết nối với mạng thử nghiệm sidechain EVM (ví dụ: MetaMask).

- Làm việc với MetaMask.

Yêu cầu kiểm tra SC_Token bằng ứng dụng web: [https://faucet.sidechain.evmtestnet.iohkdev.io/](https://faucet.sidechain.evmtestnet.iohkdev.io/)
