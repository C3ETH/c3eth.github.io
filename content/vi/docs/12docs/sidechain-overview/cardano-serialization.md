---
title: 'Thư viện tuần tự hóa Cardano'
date: 2022-10-06 08:48:23 +0000
lastmod: 2022-10-06 08:48:23 +0000
draft: false
images: []
---

Đây là một thư viện để tuần tự hóa và giải tuần tự hóa các cấu trúc dữ liệu được sử dụng trong triển khai Shelley của Cardano's Haskell cùng với các chức năng tiện ích hữu ích.

## Sử dụng thư viện

Do tính di động của [Rust](https://www.rust-lang.org/) , bạn có thể liên kết với thư viện Rust gốc từ bất kỳ ngôn ngữ lập trình phổ biến nào (bao gồm C và WebAssembly). Thư viện này tạo cả định nghĩa [TypeScript](https://www.typescriptlang.org/) và [Flow](https://flow.org/) type, và bạn có thể kiểm tra các tùy chọn có thể bằng cách chỉ nhìn vào [Flow type](https://github.com/Emurgo/cardano-serialization-lib/blob/master/rust/pkg/cardano_serialization_lib.js.flow) . Bạn cũng có thể khám phá [thư mục ví dụ](https://github.com/Emurgo/cardano-serialization-lib/tree/master/example) để xem cách sử dụng thư viện này từ Bản mô tả và thử nghiệm với nó.

### Lợi ích của việc sử dụng thư viện này

Mã tuần tự hóa/giải tuần tự hóa được tạo tự động từ thông số kỹ thuật chính thức của Cardano, điều này đảm bảo nó có thể dễ dàng cập nhật. Điều này được kích hoạt do sử dụng công cụ do EMURGO viết có tên [cddl-codegen](https://github.com/Emurgo/cddl-codegen) , có thể được sử dụng lại cho các tác vụ khác, chẳng hạn như tạo tự động thư viện Rust cho thông số kỹ thuật [siêu dữ liệu](https://docs.cardano.org/glossary#metadata) Cardano.

Cũng dễ dàng tạo tập lệnh trong Rust hoặc WASM để chia sẻ với nhóm cổ phần hoặc thậm chí nhúng vào bên trong một công cụ trực tuyến. Thư viện đủ mạnh và linh hoạt để sử dụng cho các ví điện tử và sàn giao dịch.

## Các phiên bản Cardano khác

Nếu bạn đang tìm kiếm các ràng buộc kế thừa, bạn có thể tìm thấy chúng tại:

- [Các ràng buộc của Byron WASM](https://github.com/input-output-hk/js-cardano-wasm/tree/master/cardano-wallet)
- [Các ràng buộc của Jormungandr WASM](https://github.com/Emurgo/js-chain-libs)

**Thông số kỹ thuật nhị phân ban đầu**

Bạn có thể tìm thông số kỹ thuật gốc [của CDDL](https://cbor.io/tools.html) tại:

- Byron: [liên kết](https://github.com/input-output-hk/cardano-ledger-specs/tree/master/eras/byron/cddl-spec)
- Shelly: [liên kết](https://github.com/input-output-hk/cardano-ledger/blob/master/eras/shelley/test-suite/cddl-files/shelley.cddl)
- Mary: [liên kết](https://github.com/input-output-hk/cardano-ledger/blob/master/eras/shelley-ma/test-suite/cddl-files/shelley-ma.cddl)
- Alonzo: [liên kết](https://github.com/input-output-hk/cardano-ledger/tree/master/eras/alonzo/test-suite/cddl-files)

## Hướng dẫn

Trước khi bạn bắt đầu, hãy xem [mẹo xây dựng, thử nghiệm và xuất bản tại đây](https://github.com/Emurgo/cardano-serialization-lib/blob/master/README.rst#building) . Sau đó, tiếp tục khám phá thêm trong [thư mục tài liệu](https://github.com/Emurgo/cardano-serialization-lib/tree/master/doc/getting-started) hoặc theo liên kết đến kho lưu trữ bên dưới.

> Để biết thêm thông tin: [Truy cập repo GitHub](https://github.com/Emurgo/cardano-serialization-lib#cardano-serialization-lib)
