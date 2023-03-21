---
title: Creating a local testnet
date: '2022-10-06 08:48:23 +0000'
lastmod: '2022-10-06 08:48:23 +0000'
draft: 'false'
images: []
---

Mạng thử nghiệm cục bộ cho phép các nhà phát triển và dự án xây dựng trên Cardano thử nghiệm các tính năng hoặc chức năng mới trước khi triển khai trên môi trường mạng thử nghiệm toàn cầu. Mặc dù môi trường xem trước và tiền sản xuất mang lại lợi ích cho cộng đồng nhà phát triển rộng lớn hơn, mạng thử nghiệm cục bộ cho phép thực hiện một hard fork trong thiết lập của riêng bạn và thử nghiệm hành vi DApp sau đó.

Có một số giải pháp khả thi để tạo một mạng thử nghiệm cục bộ. Chúng bao gồm việc sử dụng Plutip (công cụ tạo mạng riêng) hoặc Nix (công cụ quản lý gói và cấu hình hệ thống).

## Creating a local testnet using Plutip

[Plutip](https://github.com/mlabs-haskell/plutip) , một công cụ được phát triển trên chuỗi khối Cardano, tạo điều kiện thuận lợi cho việc tạo một mạng riêng để chạy các hợp đồng Plutus.

Plutip có thể được sử dụng theo hai cách khác nhau:

- Một tùy chọn là sử dụng công cụ Plutip với thiết lập cung cấp tệp thực thi để bắt đầu mạng riêng và thiết lập một số ví được tài trợ. Xem [hướng dẫn này](https://github.com/mlabs-haskell/plutip/tree/master/local-cluster) .
- Một tùy chọn khác là sử dụng một nhánh riêng của Plutip, nhánh này cung cấp thiết lập sửa đổi cho các nhánh cứng và hướng dẫn cách thực hiện chúng. Xem [hướng dẫn này](https://github.com/mlabs-haskell/plutip/blob/vasil-local-cluster-cabal-build/vasil-hardfork.md) .
- Tùy chọn thứ ba là chạy Plutip với cardano-transaction-lib, cung cấp giao diện khai báo cho các cụm cục bộ để sử dụng trong các bộ thử nghiệm. Xem [hướng dẫn này](https://github.com/Plutonomicon/cardano-transaction-lib/blob/develop/doc/plutip-testing.md) .

*Các hướng dẫn được tham chiếu ở trên được tạo bởi nhóm MLabs.*

## Creating a local testnet using Nix

Một tùy chọn khả thi khác là tạo một mạng thử nghiệm cục bộ bằng Nix. Để biết thêm thông tin, hãy tìm hiểu về [các nguyên tắc đóng gói](https://github.com/input-output-hk/cardano-world/blob/master/docs/explain/packaging-principles.md) và xem cách [tạo mạng thử nghiệm cục bộ bằng Nix](https://github.com/input-output-hk/cardano-world/blob/master/docs/explain/create-testnet.md) .
