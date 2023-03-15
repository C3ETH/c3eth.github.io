---
title: Giới thiệu bộ công cụ Sidechain
date: '2022-10-06 08:48:23 +0000'
lastmod: '2022-10-06 08:48:23 +0000'
draft: 'false'
images: []
---

![sidechain-bộ công cụ-môi trường-pic](https://user-images.githubusercontent.com/10556209/204818497-7c27e2fb-46c3-41fd-bf60-a47b0926ad9b.png)

Bộ công cụ Sidechain là một tập hợp các thành phần và khuyến nghị để mở rộng Cardano. Bộ công cụ cho phép các nhà phát triển chuỗi khối triển khai các giải pháp có thể tùy chỉnh phù hợp với nhu cầu kỹ thuật và xã hội của họ. Bộ công cụ bao gồm ba thành phần chính:

## Tập lệnh Plutus chuỗi chính

Các tập lệnh Plutus được triển khai trên chuỗi chính Cardano xác định luồng của một sidechain cụ thể. Các tập lệnh này là phần khởi đầu của quá trình khởi tạo sidechain chứa tập lệnh Plutus để đăng ký ứng cử viên sản xuất khối, đúc các chính sách mã thông báo của sidechain và di chuyển các chức năng mã thông báo.

## Chain follower

Người theo dõi chuỗi có khả năng quan sát trạng thái của các sự kiện chuỗi chính chi phối chuỗi bên và có thể truyền các sự kiện đó đến chuỗi bên. Phiên bản 1 của bộ công cụ hiện đang sử dụng phiên bản Cardano DB Sync để phù hợp với điều này.

## Mô-đun cụ thể của Sidechain

Thành phần này là một phần của trình xác thực nút sidechain. Nó có trách nhiệm lọc và chuyển đổi dữ liệu đến từ người theo dõi chuỗi và trình bày chúng cho các thành phần sẽ xử lý chúng theo các quy tắc quản lý của thông số kỹ thuật sidechain.

## Thông số kỹ thuật

Thông số kỹ thuật máy khách sidechain Cardano là một tài liệu chi tiết mô tả kiến trúc, các trường hợp sử dụng và triển khai các thành phần sidechain. Ví dụ triển khai EVM là kết quả thiết kế và kỹ thuật thể hiện khả năng triển khai của thông số kỹ thuật nói trên.

[Đọc thông số kỹ thuật](https://github.com/input-output-hk/sidechains-tooling/releases/tag/technical_spec_1.0)
