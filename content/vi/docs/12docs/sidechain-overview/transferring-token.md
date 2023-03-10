---
title: Transferring tokens
date: '2022-10-06 08:48:23 +0000'
lastmod: '2022-10-06 08:48:23 +0000'
draft: 'false'
images: []
---

Hướng dẫn này sẽ chỉ cho bạn cách chuyển `SC_Tokens` giữa chuỗi chính và chuỗi phụ.

#### Prerequisites

1. Chúng tôi sẽ sử dụng **sidechain-cli** trong hướng dẫn này. Tải xuống tệp nhị phân và thêm nó vào đường dẫn trình bao của bạn: [https://github.com/input-output-hk/sidechains-tooling/releases](https://github.com/input-output-hk/sidechains-tooling/releases) .
2. Tải xuống tệp nhị phân của công cụ chuyển đổi **bech32** và thêm vào đường dẫn trình bao của bạn: [https://github.com/input-output-hk/bech32](https://github.com/input-output-hk/bech32) .
3. Nếu bạn chưa làm như vậy, hãy tạo và cấp tiền cho các tài khoản chuỗi chính và chuỗi phụ của bạn: [Tạo và cấp tiền cho các tài khoản của bạn](/cardano-sidechains/example-evm-sidechain/create-and-fund-accounts) .

## Chuyển mã thông báo từ chuỗi phụ sang chuỗi chính

Việc chuyển `SC_Token` từ chuỗi phụ sang chuỗi chính sẽ yêu cầu giao tiếp với hợp đồng thông minh cầu nối để khóa số lượng `SC_Token` mong muốn của bạn sẽ được yêu cầu trên chuỗi chính. Trong hướng dẫn này, bạn sẽ sử dụng RemixIDE để giao tiếp với hợp đồng cầu nối.

### Bước 01 - Thiết lập giao diện hợp đồng trong RemixIDE

- Truy cập [https://remix.ethereum.org/](https://remix.ethereum.org/)

- Tạo `/contracts/bridge.abi` với nội dung sau: [bridge.abi](https://github.com/input-output-hk/sidechains-tooling/blob/master/bridge.abi)

*Lưu ý: Đảm bảo rằng nhà cung cấp Web3 tương thích với Remix của bạn được định cấu hình cho mạng thử nghiệm chuỗi bên EVM. Ví dụ: MetaMask.*

- Trong Remix, đi tới **Triển khai và chạy giao dịch** &gt; chọn **Nhà cung cấp được tiêm (MetaMask)** cho môi trường &gt; Tải hợp đồng từ địa chỉ ( `0x696f686b2e6d616d626100000000000000000000` )

RemixIDE của bạn sẽ trông giống như thế này với giao diện hợp đồng: ![ý tưởng phối lại](https://docs.cardano.org/static/ab33f7a92f97f83aaf381cc0859d1c76/eb3fa/remix-ide.png)

### Bước 02 - Khóa SC_Token

Chức năng `lock` của hợp đồng cầu nối lấy địa chỉ của người nhận chuỗi chính, nhưng **địa chỉ người nhận phải được chuyển đổi sang định dạng bech32** .

- Chuyển đổi địa chỉ chuỗi chính sang định dạng bech32:

```bash
./bech32 <<< addr_test1vpzhx6enc57e75n2ygcgdt7cz2c8akt5rk5qaxy7j6vc3ycgly0wh
6045736b33c53d9f526a223086afd812b07ed9741da80e989e96998893 #Returns the conversion
```

Để đảm bảo địa chỉ được nhận dạng dưới dạng chuỗi HEX, chỉ cần thêm `0x` vào đầu địa chỉ đã chuyển đổi, ví dụ: `0x6045736b33c53d9f526a223086afd812b07ed9741da80e989e96998893`

- Xác định số lượng `SC_Token` bạn muốn khóa. Số tiền trong `SC_Token` phải là bội số của 10^9. Ví dụ: 10^9 `wei` trên chuỗi phụ sẽ là 1 `SC_Token` trên chuỗi chính. Nhập số lượng `SC_Token` , trong `wei` , bạn muốn khóa: vd: `1000000000` Wei == 1 `SC_Token` . Bản phối lại của bạn sẽ trông giống như thế này:

![mã thông báo khóa](https://docs.cardano.org/static/0f6c8506054c5166e4c4256d678a476d/b2982/remix-lock-token.png)

- Chọn nút `lock` để bắt đầu giao dịch và làm theo lời nhắc của MetaMask để xác nhận và ký giao dịch.

*Lưu ý: Nếu giao dịch có vẻ bị kẹt, trạng thái 'đang chờ xử lý' hoặc MetaMask hiển thị số dư không hợp lệ, hãy thử [đặt lại MetaMask](https://metamask.zendesk.com/hc/en-us/articles/360015488891-How-to-reset-an-account) và gửi lại giao dịch.*

- Để lấy mã băm giao dịch hoặc xác minh rằng giao dịch đã thành công, bạn có thể kiểm tra hoạt động MetaMask hoặc bảng điều khiển Remix: ![meta](https://docs.cardano.org/static/1820b9d367bf00bc62def2b33459f441/076ca/remix-console.png)

- Ngoài ra, bạn có thể gọi phương thức API `eth_getTransactionReceipt` . Bạn có thể yêu cầu điều này cho đến khi biên lai được trả lại hoặc giao dịch hết hạn:

```bash
curl -L -X POST -H 'Content-type:application/json' -d '{
"jsonrpc": "2.0",
"method": "eth_getTransactionReceipt",
"params": [INSERT_RAW_TX],
"id": 1
}' https://faucet.sidechain.evmtestnet.iohkdev.io/ | jq
```

### Bước 03 - Đợi giao dịch được xử lý và nhận MerkleProof

- Nhận trạng thái sidechain hiện tại bằng cách gọi `sidechain_getStatus` :

```bash
curl -L -X POST -H 'Content-type:application/json' -d '{
   "jsonrpc": "2.0",
   "method": "sidechain_getStatus",
   "params": [],
   "id": 1
   }' https://faucet.sidechain.evmtestnet.iohkdev.io/ | jq -r
```

Điều này cho thấy thời điểm và giai đoạn mà giao dịch `lock()` đã xảy ra. Nếu nó xảy ra trong epoch `N` trên epochPhase `regular` , bạn có thể lấy bằng chứng Merkle trên epoch `N` vì epochPhase thay đổi thành `handover` . Nếu nó xảy ra trong epoch `N` trên epochPhase `closedTransactionBatch` hoặc `handover` , bạn có thể lấy bằng chứng Merkle trên epoch `N+1` vì epochPhase thay đổi thành `handover` .

- Nhận chỉ mục giao dịch cho kỷ nguyên, giao dịch khóa sẽ được xử lý bằng cách gọi phương thức API `sidechain_getOutgoingTransactions` :

```bash
curl -L -X POST -H 'Content-type:application/json' -d '{
  "jsonrpc": "2.0",
  "method": "sidechain_getOutgoingTransactions",
  "params": [<N or N+1>],
  "id": 1
  }' https://faucet.sidechain.evmtestnet.iohkdev.io/ | jq
```

Đầu ra ví dụ:

```json
{
  "jsonrpc": "2.0",
  "result": {
    "transactions": [
      {
        "value": "0x1",
        "recipient": "0x6041e633c6b54572165a1563291c147dadb803667c99fc8c55ff3762fb",
        "txIndex": 0
      }
    ]
  },
  "id": 1
}
```

Để có được `merkleProof` khớp với người nhận và số tiền được sử dụng để khóa mã thông báo, hãy tiến hành như sau.

- Chờ cho đến khi epochPhase chuyển sang `handover` epoch `N` hoặc `N+1` và lấy bằng chứng Merkle cho hành động khóa của bạn bằng cách gọi phương thức API `sidechain_getOutgoingTxMerkleProof` :

```bash
curl -L -X POST -H 'Content-type:application/json' -d '{
  "jsonrpc": "2.0",
  "method": "sidechain_getOutgoingTxMerkleProof",
  "params": [<N or N+1>, <txIndex>],
  "id": 1
  }' https://faucet.sidechain.evmtestnet.iohkdev.io/ | jq
```

Ví dụ:

```bash
curl -L -X POST https://faucet.sidechain.evmtestnet.iohkdev.io/ -H 'Content-type:application/json' -d '{"jsonrpc": "2.0", "method": "sidechain_getOutgoingTxMerkleProof", "params": [1295, 1], "id": 1}' | jq

{
  "jsonrpc": "2.0",
  "result": {
    "proof": {
      "bytes": "0xd8799fd8799f0101581d6045736b33c53d9f526a223086afd812b07ed9741da80e989e96998893d8799f5820772485d60f6744cf252f26560413aae8d28c82a88b1c77eede792f28965f4e79ffff9fd8799f005820ed69142610619b748ec5cd657e418c1c891c3a176900376d12db0b3c406a0a38ffffff",
      "info": {
        "transaction": {
          "value": "0x1",
          "recipient": "0x6045736b33c53d9f526a223086afd812b07ed9741da80e989e96998893",
          "txIndex": 1
        },
        "merkleRootHash": "0xaacd27079b9c8b8bd17693beccb8997b4b7b1ef97596018d43047a40dab6b021"
      }
    },
    "sidechainEpoch": 1295
  },
  "id": 1
}
```

Từ phần trả về, bạn cần lấy `proof/bytes` và xóa `0x` được thêm vào trước. Gọi chuỗi đó `merkleProof` .

*Trong ví dụ trên `d8799fd8799...` là bằng chứng Merkle.*

Wait until the epoch changes and the committee handover has happened.

*Note: A sidechain epoch is 1 hour; 30 minutes in the `regular` phase, 15 minutes in `closedTxBatch` phase, and 15 minutes in `handover` phase.*

Quá trình chuyển giao của ủy ban diễn ra tự động trên các mạng thử nghiệm bởi một dịch vụ (chuyển tiếp) cố gắng tìm chữ ký kỷ nguyên mỗi phút và thành công sau khi một kỷ nguyên mới bắt đầu và thu được chữ ký. Trên mạng chính, việc chuyển giao ủy ban sẽ được thực hiện bởi bất kỳ ai muốn, nơi sẽ có động cơ để làm như vậy. Một cách hay để xác minh điều này là đợi cho đến khi bạn quan sát giao dịch của mình trong danh sách chữ ký sẽ tải lên:

```bash
curl -L -X POST -H 'Content-type:application/json' -d '{
    "jsonrpc": "2.0",
    "method": "sidechain_getSignaturesToUpload",
    "params": [<limit>],
    "id": 1
    }' https://faucet.sidechain.evmtestnet.iohkdev.io/ | jq
```

Where `limit` = min(limit, number of epochs that are not yet relayed). The default value is `100`, but you can set it to any other number. Normally, when the handover happens at every epoch, it should only show 0 or 1 epochs (the last one). Once you identify that there are no roothashes pending in the list under the epoch that your lock was processed (`N` or `N+1`), you can claim your tokens. By now the epoch will be `N+1` or `N+2`, depending on the phase you performed the lock operation in.

### Bước 04 - Yêu cầu SC_Token

- Claim the tokens by submitting a transaction on the main chain with the `merkleProof` you obtained using the **sidechain-cli**. You will need to sign the transaction with your main chain signing key (ex: `payment.skey`):

```bash
./sidechain-cli claim-sc-token \
--sc-evm-url https://faucet.sidechain.evmtestnet.iohkdev.io \
--signing-key-file /PATH/TO/payment.skey \
--combined-proof <merkleProof without 0x>
```

Đầu ra ví dụ:

```json
{
  "endpoint": "ClaimAct",
  "transactionId": "1334b3dab421911af68b9393e5cc4756c46c9ab1ac567a57450597e174351a48"
}
```

🎉 Xin chúc mừng! Tại thời điểm này, bạn đã xác nhận thành công SC_Token của mình trên chuỗi chính.

## Chuyển mã thông báo từ chuỗi chính sang chuỗi phụ

### Bước 01 - Ghi SC_Token

Để chuyển SC_Token từ chuỗi chính sang chuỗi phụ, hãy sử dụng sidechain-cli để ghi SC_Token chuỗi chính.

```bash
./sidechain-cli burn-sc-token \
--signing-key-file payment.skey \
--sc-evm-url https://faucet.sidechain.evmtestnet.iohkdev.io/ \
--recipient ae3dffee97f92db0201d11cb8877c89738353bce \
--amount 10
```

- `--signing-key-file payment.skey` : Tạo tài khoản chuỗi chính sẽ tạo tệp `.skey` để ký giao dịch. Lệnh cung cấp đường dẫn đến tệp này.

- `--sc-evm-url https://faucet.sidechain.evmtestnet.iohkdev.io/` : Cung cấp url API JSON-RPC hoặc điểm cuối cho nút mạng sidechain.

- `--recipient ae3dffee97f92db0201d11cb8877c89738353bce` : Xác định địa chỉ đích trên sidechain nơi mã thông báo SC_Token sẽ xuất hiện.

- `--amount 10` : Xác định số lượng `SC_Token` (trên chuỗi chính) sẽ được đốt cho `SC_Token` (trên chuỗi bên) với tỷ lệ chuyển đổi là `amount` x `10^9` .

Giao dịch sẽ ổn định trên chuỗi chính trong khoảng 12 phút hoặc 36 khối. Sau đó, sidechain sẽ thêm nó vào một khối được tạo và mã thông báo sẽ xuất hiện trong số dư tài khoản sidechain:

- Kiểm tra số dư mã thông báo `SC_Token` bằng [API JSON-RPC](/cardano-sidechains/example-evm-sidechains/api) :

```bash
curl -L -X POST https://faucet.sidechain.evmtestnet.iohkdev.io/ -H 'Content-type:application/json' -d '{
    "jsonrpc": "2.0",
    "method": "eth_getBalance",
    "params": ["0xae3dffee97f92db0201d11cb8877c89738353bce", "latest"],
    "id": 1}'
```

Mẹo: Số dư có thể được kiểm tra trên ví Web3 tương thích được định cấu hình cho mạng thử nghiệm sidechain EVM.

🎉 Xin chúc mừng! Tại thời điểm này, bạn đã ghi thành công `SC_Token` chuỗi chính của mình cho một sidechain gốc `SC_Token` .
