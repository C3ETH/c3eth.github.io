---
title: 'API JSON-RPC'
date: 2022-10-06 08:48:23 +0000
lastmod: 2022-10-06 08:48:23 +0000
draft: false
images: []
---

Tương tác với sidechain cần gửi yêu cầu đến các phương thức API JSON-RPC cụ thể. Mạng thử nghiệm sidechain EVM hỗ trợ hầu hết các điểm cuối API Ethereum JSON-RPC tiêu chuẩn với một vài ngoại lệ được mô tả trong đặc tả API.

#### Chi tiết

Mạng thử nghiệm sidechain EVM hỗ trợ phương thức khám phá dịch vụ `rpc.discover` của [OpenRPC](https://open-rpc.org/) sẽ trả về lược đồ OpenRPC cho API JSON-RPC. Bạn có thể dễ dàng xác thực và xem trước lược đồ trên [OpenRPC Playground](https://playground.open-rpc.org/?schemaUrl=https://faucet.sidechain.evmtestnet.iohkdev.io/) .

*Nếu sản phẩm của bạn yêu cầu một phương pháp hiện chưa được triển khai, vui lòng liên hệ với bộ phận hỗ trợ Toàn cầu của Input Output.*

## Chưa được triển khai

- `eth_protocolVersion`
- `eth_syncing`
- `eth_coinbase`
- `eth_feeHistory (This is specific to the London hard fork.)`
- `eth_newFilter`
- `eth_newBlockFilter`
- `eth_newPendingTransactionFilter`
- `eth_uninstallFilter`
- `eth_getFilterChanges`
- `eth_getFilterLogs`
- `eth_getLogs`
- `eth_mining` (Không có “khai thác” trong sidechain Cardano EVM nhưng nó có thể trả về nếu nút là trình xác thực.)
- `eth_sign`
- `eth_signTransaction`
- `eth_getTransactionByBlockHashAndIndex`
- `eth_getTransactionByBlockNumberAndIndex`
- `personal_importRawKey`

Toàn bộ mô-đun theo dõi/gỡ lỗi

## Phương pháp không liên quan

Các phương pháp sau đây không liên quan đến sidechain Cardano EVM vì chúng dành riêng cho bằng chứng công việc(proof of work). Chúng có thể được triển khai để trả về một giá trị cố định nếu cần.

- `eth_getUncleCountByBlockHash`
- `eth_getUncleCountByBlockNumber`
- `eth_getWork`
- `eth_submitWork`
- `eth_hashrate`
- `eth_submitHashrate`
- `eth_getUncleByBlockHashAndIndex`
- `eth_gasPrice`
