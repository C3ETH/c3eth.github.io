---
title: 'Kiểm tra Snapshot'
date: 2020-10-06 08:48:23 +0000
lastmod: 2020-10-06 08:48:23 +0000
draft: false
images: []
weight: 30
---

## Thông số

Hạn chót đăng ký: 15 tháng 1 năm 2024 21:45:00 UTC

Quyền biểu quyết tối thiểu: 450 ADA.

## Công cụ bắt buộc

### dbSync

Hướng dẫn cài đặt có thể được tìm thấy [ở đây](https://github.com/IntersectMBO/cardano-db-sync/blob/master/doc/docker.md) .

Đảm bảo dbSync và cơ sở dữ liệu PostgreSQL đang chạy và cơ sở dữ liệu được đồng bộ hóa trước 21:45:00 UTC vào ngày 20 tháng 1 năm 2024.

Lưu ý: *NẾU dbSync của bạn không được đồng bộ hóa ít nhất vào ngày này, kết quả từ việc chạy snapshot sẽ không chính xác. Điều này là do snapshot được chụp vào thời điểm khi việc khôi phục trên blockchain không thể ảnh hưởng đến dữ liệu snapshot và do đó nó có thể tái tạo hoàn toàn và ổn định. Điều này được đảm bảo bằng cách đặt một Kỷ nguyên đầy đủ trong khoảng thời gian từ thời hạn đăng ký đến thời điểm snapshot cuối cùng sớm nhất có thể.*

### Công cụ Catalyst snapshot

Công cụ snapshot có ở [đây](https://github.com/input-output-hk/catalyst-core) . Sao chép repo và sau đó xây dựng các công cụ cần thiết.

### Xây dựng các công cụ

##### snapshot_tool:

```linux

 cargo build -r -p voting_tools_rs

```

##### catalyst-toolbox

```linux

cargo build -r -p catalyst-toolbox

```

## Tái tạo snapshot

Kiểm tra snapshot chỉ đơn giản là sao chép snapshot trực tiếp từ dữ liệu blockchain và so sánh nó với dữ liệu snapshot được công bố chính thức.

### Lấy số cho Thời hạn đăng ký

Lấy `slot_no` phù hợp với thời hạn đăng ký.

Truy vấn cơ sở dữ liệu dbSync bằng:

```linux

select slot_no, time from block
    where slot_no is not null and time <= '2024-01-15 21:45:00'
    order by slot_no desc limit 1 ;

```

Kết quả sẽ là:

```linux

113788796,2024-01-15 21:44:30.000000

```

Do đó, `slot#` mà snapshot cần nhắm mục tiêu là: 113788796

### Chạy snapshot thô

Phần đầu tiên của snapshot tích lũy thông tin đăng ký thô và thông tin đặt cọc và xác thực nó theo [CIP-15](https://cips.cardano.org/cip/CIP-15/) và [CIP-36](https://cips.cardano.org/cip/CIP-36/)

Lưu ý: *Nhiều ủy quyền, như được chỉ định bởi CIP-36, không được hỗ trợ. Những điều này sẽ được phát hiện là đăng ký không hợp lệ. Chỉ những đăng ký có chứa một khóa biểu quyết duy nhất mới được hỗ trợ và hợp lệ.*

Chạy (thay thế thông tin đăng nhập của bạn cho phù hợp):

```linux

export USERNAME=<Your dbSync postgresql Username>
export PASSWORD=<Your dbSync postgresql Password>
export DBSYNC_POSTGRES="localhost:5432"
./target/release/snapshot_tool --db cexplorer --db-user $USERNAME --db-pass $password --db-host $DBSYNC_POSTGRES --out-file ./cexplorer-113788796.json --min-slot 0 --max-slot 113788796 --network-id mainnet

```

Điều này sẽ tạo ra ba tập tin:

- `cexplorer-113788796.json` &lt;- Dữ liệu snapshot thô
- `cexplorer-113788796.unregistered.json` &lt;- Chưa đăng ký nhưng đã đặt cược ADA.
- `cexplorer-113788796.errors.json` &lt;- Lỗi hoặc đăng ký lỗi thời.

### Xử lý ảnh chụp nhanh với tham số Fund 11

Điều này lọc đăng ký để có quyền biểu quyết tối thiểu được phép:

Chạy:

```linux

./target/release/catalyst-toolbox snapshot --snapshot cexplorer-113788796.json --min-stake-threshold 450000000 --slot-no 113788796 cexplorer-113788796.final.json

```

Điều này tạo ra snapshot cuối cùng: `cexplorer-113788796.summary.json`
