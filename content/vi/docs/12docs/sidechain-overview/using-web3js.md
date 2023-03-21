---
title: 'Sử dụng web3.js'
date: 2022-10-06 08:48:23 +0000
lastmod: 2022-10-06 08:48:23 +0000
draft: false
images: []
---

Phần này cho biết cách sử dụng giao diện Javascript web3 với ứng dụng khách sidechain Cardano EVM để phát triển ứng dụng trên mạng thử nghiệm. Bạn cũng có thể xem qua một chương trình ví dụ minh họa một số lệnh gọi API mẫu.

Giao diện Ethereum web3.js cung cấp nhiều lệnh gọi API được ghi lại. Giao diện cung cấp cho bạn toàn quyền truy cập vào một bản sao của mạng thử nghiệm sidechain Cardano EVM. Bạn có thể tạo một trang web hoặc ứng dụng khách sử dụng nút sidechain EVM từ xa để tương tác với sổ cái chuỗi khối phi tập trung. Giao diện web3.js cũng được sử dụng để phát triển hợp đồng thông minh bằng ngôn ngữ Solidity.

Ví dụ này sẽ thiết lập một chương trình Javascript đơn giản để thể hiện khái niệm này. Xem phần cuối của trang này để biết thêm thông tin.

## Chạy một ứng dụng mẫu

Thực hiện theo các bước sau để tạo và chạy ứng dụng web3.js kiểm tra trạng thái đồng bộ hóa và hiển thị nội dung của khối mới nhất.

### Thiết lập cấu trúc tập tin

1. Đảm bảo rằng node.js và Yarn đã được cài đặt. Có rất nhiều bài viết hướng dẫn trên internet.
2. Tạo một thư mục mới (tên của nó không quan trọng) và khởi tạo nó. Bạn có thể sử dụng NPM hoặc Sợi. Cả NPM và Yarn đều tạo tệp pack.json. Đồng thời, Yarn cũng tạo Yarn.lock và NPM tạo package-lock.json. Từ đây trở đi, phần trình diễn sẽ sử dụng Yarn.

Trên một số hệ thống, bạn được nhắc thông tin nào sẽ được thêm vào pack.json. Thông tin này sẽ được cập nhật sau khi các thư viện web3 được cài đặt. Bạn cũng có thể giữ các giá trị mặc định.

Trên Windows:

```bash
   c:\>mkdir web3-example
   c:\>cd web3-example
   c:\web3-example>yarn init
   yarn init v1.22.10 # follow the prompts
```

Trên Linux:

```bash
user@computername:~$ cd ~
user@computername:~$ mkdir web3-example
user@computername:~$ cd web3-example
user@computername:~/web3-example$ yarn init
yarn init v1.22.10 # follow the prompts
```

Trên macOS:

```bash
   computerName:~user$ mkdir web3-example
    computerName:~user$ cd web3-example
    computerName:~user$ yarn init
    yarn init v1.22.10 # follow the prompts
```

### Cài đặt các thư viện web3.js

Các thư viện web3.js có sẵn dưới dạng gói NPM, vì vậy bạn có thể sử dụng NPM hoặc Yarn để cài đặt chúng trong thư mục bạn vừa tạo.

Để cài đặt bằng Yarn:

```bash
yarn add web3
```

### Kiểm tra nội dung của pack.json

So sánh bản sao pack.json của bạn với ví dụ này. Đảm bảo rằng tất cả các khóa và giá trị đều ở đó.

```json
  {
        "name": "web3-example",
        "version": "1.0.0",
        "main": "index.js",
        "license": "MIT",
        "dependencies": {
            "web3": "^1.3.6"
        },
        "scripts": {
            "start": "node index.js"
        }
    }
```

### Viết Javascript

Trên tất cả các hệ thống, hãy tạo một tệp có tên index.js trong cùng thư mục với package.json. Chỉnh sửa nó để nó trông như thế này:

```javascript
    1 const Web3 = require('web3')
    2
    3 let web3 = new Web3(new Web3.providers.HttpProvider("https://faucet.sidechain.evmtestnet.iohkdev.io/"))
    4 web3.eth.getBlock('latest')
    5   .then((response) => {
    6     console.log('LATEST BLOCK:')
    7    console.log(response)
    8 })
    9   .catch((error) => console.error(error))
    10
```

`Index.js` là chương trình Javascript. Dòng 1 tham khảo các thư viện web3.js. Dòng 2 thiết lập kết nối giữa chương trình này và nút sidechain Cardano EVM. Khối bắt đầu ở dòng 4 truy xuất khối mới nhất mà khách hàng đã tải xuống cho đến nay.

### Chạy thử chương trình

Kiểm tra xem kết nối của bạn với nút chuỗi bên EVM trên mạng thử nghiệm chuỗi bên EVM có còn hoạt động hay không bằng cách truy cập URL trong trình duyệt của bạn.

Chuyển đến thư mục bạn đã tạo và chạy chương trình mẫu:

```bash
    npm start
```

Kết quả sẽ tương tự như thế này:

```bash
 C:\>
    C:\>cd web3-example

    C:\web3-example>npm start

    > web3-example@1.0.0 start
    > node index.js

    LATEST BLOCK:
    {
    number: 18927,
    hash: '0xc3b738e5230ea385678e798c44bed3a3e180ab77ff9fbba83957d2998dc56ba6',
    parentHash: '0xc7e1b5b5af26534f509fa08a0d689b1d5a42b6623b83527926488d94f820642a',
    nonce: '0xb02bc71c3c8453e5',
    sha3Uncles: '0x1dcc4de8dec75d7aab85b567b6ccd41ad312451b948a7413f0a142fd40d49347',
    logsBloom: '0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',
    transactionsRoot: '0x56e81f171bcc55a6ff8345e692c0f86e5b48e01b996cadc001622fb5e363b421',
    stateRoot: '0xf4b402fca95bd9791b2a320c61a70666da9655fb49bb61ddbce8d32165e830ed',
    receiptsRoot: '0x56e81f171bcc55a6ff8345e692c0f86e5b48e01b996cadc001622fb5e363b421',
    miner: '0x1Ff7FC39F7F4DC79c5867B9514d0e42607741384',
    difficulty: '1746526',
    totalDifficulty: '29856771326',
    lastCheckpointNumber: '0x0',
    extraData: '0x6d616e74697362713db2265723a81bc76235c7b0dd283f925151025dc87276e4f3d8d9b88a6a3a0bdaafcc872ce2dac7ff5e6ec03fdce58d98f59c08a2e0b545a51a69d6632b1c',
    size: 586,
    gasLimit: 8000000,
    gasUsed: 0,
    timestamp: 1621705043,
    transactions: [],
    uncles: [],
    signature: '62713db2265723a81bc76235c7b0dd283f925151025dc87276e4f3d8d9b88a6a3a0bdaafcc872ce2dac7ff5e6ec03fdce58d98f59c08a2e0b545a51a69d6632b1c',
    signer: 'd8a010f019db37dcaf2e1fb98d4fcbf1f57dbd7e2a7f065e92fbe77dca8b9120d6e79f1617e98fa6134e6af8858ac8f3735b1e70a5708eb14f228080356eb0a7'
    }

    C:\web3-example>
```

Kết quả trên thu được trên Windows 10, 64-bit, phiên bản 21h2.

### Quan sát kết quả

Các trường được hiển thị là từ khối cuối cùng được đồng bộ hóa với nút cục bộ.

**Thông tin khác** Để biết thêm thông tin về API web3.js, hãy xem [trang Đọc Tài liệu](https://web3js.readthedocs.io/en/v1.2.4/web3.html) này .
