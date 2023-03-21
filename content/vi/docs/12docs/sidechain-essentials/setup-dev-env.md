---
title: 'Thiết lập môi trường phát triển'
date: 2022-10-06 08:48:23 +0000
lastmod: 2022-10-06 08:48:23 +0000
draft: false
images: []
---

Mạng thử nghiệm sidechain EVM tương thích với EVM với hầu hết các phần mềm Ethereum để phát triển và triển khai các hợp đồng thông minh bao gồm:

- [Remix](#remix)
- [Hardhat](#hardhat)
- [Truffle](#truffle)

## <a>Remix</a>

Hướng dẫn này sẽ chỉ cho bạn cách triển khai hợp đồng thông minh Solidity cho mạng thử nghiệm sidechain EVM bằng Remix. [Remix](https://remix.ethereum.org/) là một IDE trực tuyến để phát triển và triển khai các hợp đồng thông minh Solidity.

### Điều kiện tiên quyết:

Trong hướng dẫn này, bạn sẽ sử dụng MetaMask làm ví và nhà cung cấp Web3 của mình. Nếu bạn chưa sở hữu ví Metamask, [hãy tạo hoặc nhập tài khoản bằng MetaMask](../metamask) và cấp tiền cho ví của bạn bằng mã thông báo testnet bằng cách sử dụng [vòi](https://faucet.sidechain.evmtestnet.iohkdev.io/) .

#### Bước 1 - Định cấu hình Remix

- Truy cập [IDE Remix](https://remix.ethereum.org/) . Phía bên trái có menu [1] và trình duyệt tệp điển hình [2]. Các phần bổ trợ `Solidity Compiler` [3] và `Deploy and run transactions` [4] sẽ được kích hoạt theo mặc định.

![remix-menu](https://user-images.githubusercontent.com/10556209/200480707-ec8b8e69-6cdc-498b-b315-c029fbc2a564.png)

Nếu trình biên soạn Solidity và plugin triển khai chưa được kích hoạt, bạn có thể tìm kiếm và kích hoạt chúng bằng trình quản lý plugin [5] nằm ở phía dưới bên trái của màn hình.

![remix-plugin](https://user-images.githubusercontent.com/10556209/202550289-1cd1e25a-b1c9-4e66-9600-fad710126c8d.png)

Mở MetaMask và kiểm tra kỹ xem sidechain testnet có phải là mạng đã chọn không. Điều này sẽ đảm bảo Remix kết nối với đúng mạng khi bạn định cấu hình môi trường của mình trong bước tiếp theo.

[ ![chọn mạng](https://docs.cardano.org/static/ad1e7a421d3729fbbea5d08d7c486758/2ece4/sc-metamask-select-testnet.png)

- Trong Remix, chọn plugin `Deploy and run transactions` . Vì bạn đang sử dụng MetaMask làm nhà cung cấp Web3 của mình, hãy chọn 'Nhà cung cấp được tiêm' trong cài đặt môi trường.

#### Bước 2 - Hợp đồng thông minh

Với Remix được định cấu hình cho mạng thử nghiệm sidechain, bạn có thể chuyển sang phát triển và triển khai hợp đồng thông minh của mình.

- Trong trình khám phá tệp Remix, tạo tệp `erc20.sol` trong thư mục `contracts/` và nhập các câu lệnh Solidity sau:

```haskell
// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";


/**
* @title {Mintable ERC20 Token}
*/
contract MintableERC20 is ERC20("Mintable Token", "MT"), Ownable {
    /**
    * @dev See (ERC20 - _mint) function for details.
    *
    */
    function mint(address to, uint256 amount) external payable onlyOwner() {
        _mint(to, amount);
    }
}
```

Hợp đồng thông minh này mô tả mã thông báo ERC20 có thể đúc được bằng thư viện hợp đồng OpenZeppelin ERC20.

#### Bước 3 - Biên dịch và triển khai

- Sử dụng plugin `Solidity compiler` [1], chọn 'biên dịch' hợp đồng thông minh [2].

Khi hợp đồng được biên dịch, bạn có thể xem ABI, Bytecode của hợp đồng và nhiều thông tin khác nằm trong 'Chi tiết biên dịch' [3].

![biên dịch-phối lại](https://user-images.githubusercontent.com/10556209/200576656-dad4c35d-02f7-40ce-8bd1-3e9f8497e302.png)

- Sau đó, chọn plugin `Deploy and run transactions` &gt; chọn 'Triển khai' [1] và xác nhận mọi lời nhắc MetaMask để ký giao dịch. Nếu quá trình triển khai thành công, bảng điều khiển Remix sẽ trả về dấu kiểm màu lục với thông tin chi tiết có thể mở rộng [2]. Bảng 'Hợp đồng đã triển khai' sẽ chứa địa chỉ hợp đồng và tạo giao diện hợp đồng để kiểm tra các chức năng [3].

![triển khai phối lại](https://user-images.githubusercontent.com/10556209/201174327-6be015b2-9003-4f3c-8d70-f376dd1a3a9a.png)

Để xác minh rằng hợp đồng thông minh đã được triển khai trên testnet sidechain, bạn có thể:

- Tìm kiếm hàm băm giao dịch hoặc địa chỉ hợp đồng trên [trình khám phá testnet](https://explorer.sidechain.evmtestnet.iohkdev.io/) chuỗi bên EVM.
- Mở MetaMask và xem giao dịch triển khai hợp đồng đã được ký thành công chưa.
- Kiểm tra nhật ký Remix để biết chi tiết triển khai.

## <a>Hardhat</a>

Hướng dẫn này sẽ chỉ cho bạn cách triển khai hợp đồng thông minh Solidity cho mạng thử nghiệm sidechain EVM bằng Hardhat. [Hardhat](https://hardhat.org/) là một môi trường phát triển phổ biến cho phần mềm Ethereum.

- [Node.js](https://nodejs.org/en/) phiên bản 14 trở lên.
- [Hardhat](https://hardhat.org/)

### Điều kiện tiên quyết:

Hardhat được sử dụng trong các dự án NPM cục bộ, vì vậy bạn sẽ cần NPM 7 trở lên.

- Cài đặt Node.js phiên bản 15 trở lên bằng [NVM](https://github.com/nvm-sh/nvm) :

```bash
$nvm install 15 --lts
$nvm alias default 15
```

- Kiểm tra phiên bản Node và NPM:

```bash
$node -v
v15.14.0
$npm -v
7.7.6
```

#### Bước 01 - Tạo dự án Hardhat

Hướng dẫn này sẽ tạo một dự án NPM mới và khởi tạo npx hardhat để khởi động một dự án JavaScript mẫu và định cấu hình nó để triển khai cho mạng thử nghiệm sidechain.

- Tạo một dự án mới:

```bash
$mkdir Hardhat/
$cd Hardhat/
```

- Khởi tạo dự án NPM mới và cài đặt Hardhat cục bộ:

```bash
$npm init
$npm install --save-dev hardhat
```

Để tạo dự án JavaScript mẫu, hãy chạy npx hardhat trong thư mục dự án của bạn và chọn Tạo dự án JavaScript.

```bash
$npx hardhat
888    888                      888 888               888
888    888                      888 888               888
888    888                      888 888               888
8888888888  8888b.  888d888 .d88888 88888b.   8888b.  888888
888    888     "88b 888P"  d88" 888 888 "88b     "88b 888
888    888 .d888888 888    888  888 888  888 .d888888 888
888    888 888  888 888    Y88b 888 888  888 888  888 Y88b.
888    888 "Y888888 888     "Y88888 888  888 "Y888888  "Y888

👷 Welcome to Hardhat v2.9.9 👷‍

? What do you want to do? …
❯ Create a JavaScript project
  Create a TypeScript project
  Create an empty hardhat.config.js
  Quit
```

### Đang chạy nhiệm vụ

Để xem tất cả các tùy chọn và lệnh với dự án Hardhat của bạn, chỉ cần chạy npx hardhat:

```bash
$ npx hardhat
Hardhat version 2.12.2

Usage: hardhat [GLOBAL OPTIONS] <TASK> [TASK OPTIONS]

GLOBAL OPTIONS:

  --config              A Hardhat config file
  --emoji               Use emoji in messages
  --flamegraph          Generate a flamegraph of your Hardhat tasks
  --help                Shows this message, or a task's help if its name is provided
  --max-memory          The maximum amount of memory that Hardhat can use
  --network             The network to connect to
  --show-stack-traces   Show stack traces (always enabled on CI servers)
  --tsconfig            A TypeScript config file
  --typecheck           Enable TypeScript type-checking of your scripts/tests
  --verbose             Enables Hardhat verbose logging
  --version             Shows hardhat's version


AVAILABLE TASKS:

  check                 Check whatever you need
  clean                 Clears the cache and deletes all artifacts
  compile               Compiles the entire project, building all artifacts
  console               Opens a Hardhat console
  coverage              Generates a code coverage report for tests
  flatten               Flattens and prints contracts and their dependencies
  gas-reporter:merge
  help                  Prints this message
  node                  Starts a JSON-RPC server on top of the Hardhat network
  run                   Runs a user-defined script after compiling the project
  test                  Runs mocha tests
  typechain             Generates Typechain typings for compiled contracts
  verify                Verifies contract on Etherscan

To get help for a specific task run: npx hardhat help [task]
```

#### Bước 02 - Định cấu hình Hardhat

Dự án JavaScript mẫu của chúng tôi chứa tệp hardhat.config.js. Trường cấu hình mạng là một đối tượng tùy chọn trong đó tên mạng ánh xạ tới cấu hình của chúng và chúng tôi có thể đặt tài khoản mà chúng tôi muốn ký giao dịch. Ví dụ:

```haskell
require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */

const Private_Key = "INSERT_PRIV_KEY"

module.exports = {
  networks: {
    evm-sidechain: {
        url: `https://faucet.sidechain.evmtestnet.iohkdev.io/`,
        accounts: [`0x${Private_Key}`]
    },
  },
  solidity: "0.8.17",
};
```

#### Bước 03 - Biên dịch và triển khai

Để biên dịch các tệp Solidity trong thư mục hợp đồng/của dự án Hardhat của bạn, hãy thực hiện biên dịch npx hardhat:

```bash
$npx hardhat compile
```

Triển khai với Hardhat sử dụng các tập lệnh triển khai nằm trong scripts/.

- Để triển khai với Hardhat, hãy thực thi tập lệnh triển khai với evm-sidechain làm tùy chọn mạng.

```bash
$npx hardhat run scripts/deploy.js --network evm-sidechain
Greeter deployed to: 0x95E1C8F6C00d8cB518faBA33c8Ae814fc12E3090
```

🎉 Hoan hô! Bạn đã triển khai hợp đồng thông minh của mình cho mạng thử nghiệm sidechain EVM và có thể tìm kiếm triển khai của bạn trên trình khám phá testnet.

## <a>Truffle</a>

Hướng dẫn này sẽ chỉ cho bạn cách triển khai hợp đồng thông minh Solidity cho mạng thử nghiệm sidechain EVM bằng Truffle. [Truffle](https://trufflesuite.com/truffle/) là một khung phát triển phổ biến cho các ứng dụng dựa trên EVM.

### Điều kiện tiên quyết:

Cài đặt các phụ thuộc sau:

- Phiên bản LTS [của Node.js.](https://nodejs.org/en/)
- [Truffle Suite](https://trufflesuite.com/truffle/)

Kiểm tra Node.js và NPM đã được cài đặt chưa:

```bash
$node --version
$npm --version
```

Cài đặt Truffle và kiểm tra xem nó đã được cài chưa:\

```bash
$npm install -g truffle
$truffle version
```

#### Bước 1 - Định cấu hình Truffle

Bạn cần tạo một dự án Truffle trước khi định cấu hình Truffle để triển khai trên mạng thử nghiệm sidechain EVM. Phần trình diễn này sẽ sử dụng [React Truffle Box](https://trufflesuite.com/boxes/react/) .

Tạo một thư mục dự án mới cho dự án Truffle của bạn và mở hộp React Truffle Box:

```bash
$mkdir React-Truffle
$cd React-Truffle
$truffle unbox react
```

Định cấu hình Truffle để sử dụng mạng thử nghiệm sidechain EVM bằng cách thêm phần sau vào `React-Truffle/truffle/truffle-config.js` &gt; Dòng 45. Xóa nhận xét trên Dòng 25. Thay thế `YOUR_SEED_PHRASE` bằng cụm từ dễ nhớ của bạn.

#### Bước - Di chuyển Truffle

Tại thời điểm này, bạn đã xác định mạng thử nghiệm sidechain EVM và tài khoản mạng thử nghiệm của mình để ký triển khai hợp đồng thông minh. Bây giờ bạn đã sẵn sàng để triển khai!

Trong thư mục `truffle/` của dự án của chúng ta, hãy thực thi `truffle migrate` trong khi chuyển `evm-sidechain` cho `--network parameter` :

```bash
$truffle migrate --network evm-sidechain
```

Khi thực hiện `truffle migrate` , Truffle sẽ trả lại hàm băm giao dịch và địa chỉ hợp đồng có thể được tìm kiếm trên [trình khám phá testnet](https://explorer.sidechain.evmtestnet.iohkdev.io/) chuỗi bên EVM.
