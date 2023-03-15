---
title: Trình theo dõi chuỗi
date: '2022-10-06 08:48:23 +0000'
lastmod: '2022-10-06 08:48:23 +0000'
draft: 'false'
images: []
---

Trình theo dõi chuỗi như DB Sync là một thành phần quan sát các giao dịch trên chuỗi chính như Cardano. Trình theo dõi chuỗi cung cấp thông tin cho một chuỗi phụ để phù hợp với chuỗi chính.

[Trang DB Sync](https://docs.cardano.org/cardano-components/cardano-db-sync/about-db-sync) cung cấp thông tin chi tiết về chức năng và cách thiết lập nó.

## Sử dụng trình theo dõi chuỗi trên một sidechain

Nút sidechain sử dụng DB Sync để nhận thông tin liên quan đến chuỗi chính.

Đây là danh sách dữ liệu không đầy đủ được lấy từ chuỗi chính:

- Nonce cho một epoch nhất định
- Phân phối cổ phần cho một epoch nhất định
- Danh sách UTXO cho một địa chỉ nhất định, sau một khối nhất định
- Khối mới nhất cho một vị trí
- Khối mới nhất cho chuỗi
- Thông tin khối cho một số khối nhất định
- Số vị trí tương ứng với UTXO
- Các giao dịch chuỗi chéo cho một chính sách nhất định, tên tài sản và một loạt các khối trong một vị trí
- Các giao dịch chuỗi chéo cho một chính sách nhất định, tên nội dung và ID UTXO.

Ứng dụng sidechain sử dụng DB Sync để lắng nghe hoạt động của chuỗi chính và thực hiện các tác vụ khác nhau:

- Cập nhật ủy ban nhóm chuỗi bên: một giao dịch cụ thể được thực hiện trên chuỗi chính, được quan sát bằng DB Sync và được tính đến để xác định ủy ban nhóm của vị trí tiếp theo trên chuỗi bên
- Chuyển tiền từ chuỗi chính sang chuỗi bên: khi mã thông báo được đốt trên chuỗi chính, giao dịch tương ứng được quan sát bằng DB Sync và được sử dụng để cung cấp tiền tương ứng trên chuỗi bên.

Chuyển tiền trở lại từ sidechain sang chuỗi chính không sử dụng DB Sync mà sử dụng một cơ chế khác.

## Cấu hình nút sidechain sử dụng DB Sync

Sau khi cài đặt và thiết lập một phiên bản DB Sync, bạn cần định cấu hình một nút sidechain để trỏ đến nó. Trong tệp cấu hình của nút, hãy đặt loại nguồn dữ liệu `db-sync` và định cấu hình chi tiết kết nối để phù hợp với thiết lập của bạn. Cấu hình đã hoàn thành sẽ trông giống như ví dụ bên dưới:

```json
{
...

  "sc-evm": {
        "sidechain": {
            "datasource": {
                "db-sync": {
                    "connect-thread-pool-size": 4,
                    "driver": "org.postgresql.Driver",
                    "host": "your.dbsync.host",
                    "name": "your db sync instance name",
                    "port": 5432,
                    "username": "your db sync username"
                    "password": "your db sync password",
                },
                "type": "db-sync"
            }
        },


...
}
```
