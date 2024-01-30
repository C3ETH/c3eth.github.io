---
title: 'Ảnh chụp sổ cái biểu quyết'
date: 2020-10-06 08:48:23 +0000
lastmod: 2020-10-06 08:48:23 +0000
draft: false
images: []
weight: 10
---

Với snapshot của sổ cái biểu quyết được công bố hàng giờ, bất kỳ ai cũng có thể xác minh rằng các phiếu bầu được ghi lại không thay đổi trong suốt vòng đời biểu quyết.

Nhóm Catalyst cung cấp quyền truy cập vào snapshot thường xuyên của trạng thái blockchain. Những snapshot này được chụp tự động trong khoảng thời gian 1 giờ và được tải lên hệ thống lưu trữ liên tục dưới dạng kho lưu trữ. Hiện tại, bạn có thể tìm thấy các kho lưu trữ này bằng cách [truy vấn API lưu trữ](https://archiver.projectcatalyst.io/api/v1/archives/) . Bạn có thể tìm hiểu thêm về các điểm cuối có sẵn bằng cách kiểm tra [tài liệu Swagger](https://archiver.projectcatalyst.io/swagger/index.html)

Để hiển thị ví dụ về cách tương tác với API và tải xuống kho lưu trữ, chúng ta sẽ sử dụng các công cụ Curl và jq CLI. Đầu tiên, chúng ta phải liệt kê các kho lưu trữ có sẵn:

```json

> curl -s https://archiver.projectcatalyst.io/api/v1/archives/ | jq
{
  "next": "",
  "archives": [
    {
      "id": "019fd6b2-c36b-419f-8a2d-ebf06b91a762",
      "size": 364315029,
      "compression": "zstd",
      "packaging": "tar",
      "metadata": {
        "epoch": "1952",
        "fund": "fund10",
        "slot": "14",
        "timestamp": "2023-08-29T18:00:59Z"
      }
    },
    {
      "id": "64c56031-56ab-43dd-a1ca-138a85298d2b",
      "size": 372405154,
      "compression": "zstd",
      "packaging": "tar",
      "metadata": {
        "epoch": "1954",
        "fund": "fund10",
        "slot": "17",
        "timestamp": "2023-08-29T20:01:09Z"
      }
    },
    {
      "id": "ad16b160-0cc2-4252-ae61-f468c95cbf29",
      "size": 364453534,
      "compression": "zstd",
      "packaging": "tar",
      "metadata": {
        "epoch": "1953",
        "fund": "fund10",
        "slot": "23",
        "timestamp": "2023-08-29T19:01:34Z"
      }
    }
  ]
}

```

Trong phản hồi ở trên, chỉ có ba kho lưu trữ có sẵn. Nếu số lượng kết quả vượt quá 50, chúng sẽ tự động được phân trang. Điều này được thể hiện rõ qua trường tiếp theo được đặt. Để tìm nạp các bản lưu trữ tiếp theo, bạn sẽ gọi cùng một điểm cuối và nối thêm ?next={VALUE} trong đó VALUE là giá trị của trường tiếp theo. Để lặp lại tất cả các kho lưu trữ có sẵn, bạn có thể lặp lại quy trình này cho đến khi trường tiếp theo trống.

Trong ví dụ này, chúng ta sẽ chọn tìm nạp kho lưu trữ đầu tiên trong danh sách. Để có được liên kết tải xuống kho lưu trữ, chúng ta có thể chạy:

```json

> curl -q https://archiver.projectcatalyst.io/api/v1/archives/019fd6b2-c36b-419f-8a2d-ebf06b91a762/download | jq
{
  "url": "https://archives.projectcatalyst.io/prod/019fd6b2-c36b-419f-8a2d-ebf06b91a762?Expires=1693341938&Signature=R5CJdg4GZCHHGakePZJIHaYHSOthO-RuIAuiGwcLTnD3MZrtxUMWQFvLdSpWrl6dqPB6VNNeS5sMp9pK7x-JmuBvnZ3XZNUEcBA9XLlMgIZJQDD7l6JEgCtKWRiOFPbOSUZSLQMhD6mbL2koARzdZjkzLDjPFFf33~vU89qZzt-VaaMseDUtGv-6zU6ANh2RkUvWD9UCUDTwoU9VjrMhwPfrx2kaWGIkt5a3NqxkNmti7SVdwtcsKWN7wuLQNaks-PJnrTKwtp7Qc8Ll3vrf846vJWzH3UVDwDB0vbk1nVcysijEaj6m7DcWA5TR7Di84FHjYf9zmTJYeeC71Ht8mw__&Key-Pair-Id=K36UOCCH06A5FV"
}

```

Điểm cuối này trả về một URL có giới hạn thời gian để tải xuống kho lưu trữ. Lưu ý rằng URL này chỉ có hiệu lực trong 15 phút. Để tải xuống kho lưu trữ:

```linux

> URL="$(curl -s https://archiver.projectcatalyst.io/api/v1/archives/019fd6b2-c36b-419f-8a2d-ebf06b91a762/download | jq -r .url)"
> curl -o archive.tar.zstd "$URL"

```

Chúng ta lưu tệp dưới dạng kho lưu trữ `.tar` `.zstd` vì đây là cách nội dung được lưu trữ. Nếu nhìn lại kết quả API, bạn sẽ thấy các trường nén và đóng gói lần lượt được đặt thành `zstd` và tar. Chúng tôi có thể sử dụng các trường này để xác định quy trình giải nén kho lưu trữ. Để trích xuất nội dung, chúng ta sẽ cần sử dụng CLI `.tar` và `.zstd` :

```linux

> zstd -d archive.tar.zstd && tar -xvf archive.tar
archive.tar.zstd    : 523103232 bytes
artifacts
artifacts/block0.bin
permanent
permanent/blocks
permanent/blocks/data
permanent/blocks/seqno
permanent/chain_length
permanent/chain_length/data
permanent/chain_length/seqno
volatile
volatile/blobs
volatile/conf
volatile/db
volatile/snap.00000003A7319A1C

```

Bây giờ chúng tôi có snapshot hoàn chỉnh về trạng thái blockchain trên hệ thống tệp cục bộ của chúng ta.
