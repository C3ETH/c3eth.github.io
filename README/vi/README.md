# Trang web của Cardano Catalyst Community Thị trấn phía Đông

<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->

[](#contributors-)

<!-- ALL-CONTRIBUTORS-BADGE:END -->

## Tổng quan

[English](/README/en/README.md) | [Tiếng Việt](/README/vi/README.md) | [Indonesia](/README/id/README.md) | [日本語](/README/ja/README.md) | [한국어](/README/ko/README.md)

Kho lưu trữ này chứa các bản cập nhật của Cardano Catalyst Community (C3) Eastern Townhall (ETH) và tài liệu liên quan. C3ETH đang giúp hỗ trợ các thành viên cộng đồng từ nhiều quốc gia và ngôn ngữ khác nhau ở múi giờ phía đông. Trọng tâm cụ thể của nhóm là bản địa hóa nội dung của Cardano Catalyst và hướng dẫn nhập môn nhằm cho phép sự tham gia rộng rãi nhất có thể.

Kho lưu trữ này chứa các bản dịch C3ETH của tài liệu Project Catalyst, tài liệu có nguồn gốc từ cộng đồng và các đề xuất liên quan. Nội dung được dịch sang nhiều ngôn ngữ của Đông bán cầu, đặc biệt tập trung vào các ngôn ngữ Đông Á.

[Dự án Catalyst](https://cardano.ideascale.com/) là **khởi đầu** của việc quản trị chuỗi cho Cardano. Đây là một loạt các thử nghiệm tận dụng trí tuệ tập thể của Cộng đồng Catalyst để xác định hướng phát triển và định hướng trong tương lai của hệ sinh thái Cardano. Thông qua một loạt các quỹ đổi mới, các nguồn ý tưởng của cộng đồng sẽ quyết định quỹ nào và tài trợ cho ai. Tìm kiếm những ý tưởng tốt nhất để xây dựng một chuỗi khối toàn cầu.

## Xây dựng với Docker

Trang web và tài liệu được biên soạn và phát triển bằng [Hugo](https://gohugo.io/) và [Docsy](https://www.docsy.dev/) . Để xây dựng trang web cần có [Node](https://nodejs.org/en/) , [Npm](https://www.npmjs.com/) và [PostCSS](https://postcss.org/) . Thay vì phải cài đặt cục bộ các công cụ này, bạn có thể xây dựng trang web bằng [Docker](https://docs.docker.com/get-started/overview/) . Điều này có ưu điểm là cung cấp một môi trường phát triển đồng nhất.

- Docker: Để cài đặt docker, vui lòng tham khảo tài liệu tại [https://docs.docker.com/get-docker/](https://docs.docker.com/get-docker/) .

- Khi bạn đã tạo bản sao làm việc của mình (xem bên dưới) của repo trang web, từ thư mục gốc của repo, hãy chạy vùng chứa hugo serve với docker:

    ```
    $ docker-compose up -d
    ```

Sau đó truy cập http: // localhost: 1313 để xem trang web tài liệu

## Xây dựng với môi trường phát triển cục bộ

Trang web được xây dựng bằng [Docsy](https://www.docsy.dev/) , một [chủ đề Hugo](https://gohugo.io/) dành cho các bộ tài liệu kỹ thuật, cung cấp điều hướng đơn giản, cấu trúc trang web và hơn thế nữa.

### Điều kiện ban đầu

Việc xây dựng và chạy trang web cục bộ yêu cầu phiên bản <a>Hugo</a> <code>extended</code> gần đây. Sau đây là các điều kiện tiên quyết cơ bản để xây dựng trang web này:

- Cài đặt bản phát hành gần đây của Hugo "mở rộng" (chúng tôi khuyên bạn nên sử dụng phiên bản 0.53 trở lên). Nếu bạn cài đặt từ [trang phát hành](https://github.com/gohugoio/hugo/releases) , chắc chắn rằng bạn tải về `_extended` phiên bản hỗ trợ SCSS.

- Cài đặt `PostCSS` để bản dựng trang web có thể tạo nội dung CSS cuối cùng. Bạn có thể cài đặt nó cục bộ bằng cách chạy các lệnh sau từ thư mục gốc của dự án của bạn:

    ```
    sudo npm install -D --save autoprefixer
    sudo npm install -D --save postcss-cli
    ```

- Khi bạn đã tạo bản sao làm việc của mình (xem bên dưới) của repo trang web, từ thư mục gốc của repo, hãy chạy:

    ```
    hugo server
    ```

## Nhân bản trang web

```bash
$ git clone --recurse-submodules --depth 1 https://github.com/C3ETH/c3eth.github.io.git
$ cd c3eth.github.io
```

Trang web được xây dựng dựa trên [chủ đề Docsy](https://www.docsy.dev/) như một mô-đun con. Để cập nhật chạy mô-đun con:

```bash
$ git submodule update --recursive
$ git pull --recurse-submodules
```

## Chỉnh sửa tài liệu trang web

Các tài liệu nằm trong thư mục `content/{en,vn,in,jp,ko}` , chọn phần mong muốn để chỉnh sửa hoặc bổ sung, để tổ chức nội dung vui lòng tham khảo tại: https://gohugo.io/content-management/organization/ .

## Thay đổi nhật ký

Xem [CHANGELOG.md](CHANGELOG.md) để biết các thay đổi và phiên bản đáng chú ý.

## Sự nhìn nhận

- [Project Catalyst](https://cardano.ideascale.com/)
- [Tổ chức Cardano](https://cardanofoundation.org/)
- [Nhóm IOHK Project Catalyst Team](https://iohk.io/)
- [Hugo](https://gohugo.io/)
- [Docsy](https://www.docsy.dev/)

## Đóng góp ![GitHub](https://img.shields.io/github/contributors/c3eth/c3eth.github.io)

Vui lòng đọc [CONTRIBUTING.md](/README/id/CONTRIBUTING.md) để biết chi tiết về quy tắc ứng xử của chúng tôi và quy trình gửi yêu cầu kéo cho chúng tôi.

Xem thêm danh sách [những người đóng góp](https://github.com/c3eth/c3eth.github.io/graphs/contributors) đã tham gia vào dự án này.

Cảm ơn những người đóng góp tuyệt vời này (xem [phím biểu tượng cảm xúc](https://allcontributors.org/docs/en/emoji-key) ):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

Dự án này tuân theo đặc điểm kỹ thuật của [tất cả những người đóng góp.](https://github.com/all-contributors/all-contributors) Những đóng góp của bất kỳ hình thức nào đều được chào đón!

## Giấy phép ![GitHub](https://img.shields.io/github/license/c3eth/c3eth.github.io)

Mã nguồn đã xuất bản trong kho lưu trữ `c3eth/c3eth.github.io` được cấp phép theo Giấy phép Apache 2.0 - xem [tệp LICENSE](https://github.com/c3eth/c3eth.github.io/main/LICENSE.md) để biết chi tiết.

Nội dung đã xuất bản trong kho lưu trữ `c3eth/c3eth.github.io` được cấp phép theo [Giấy phép Creative Attribution-Non-Commercial-ShareAlike (CC BY-NC-SA) v4.0.](https://creativecommons.org/licenses/by-nc-sa/4.0/)

Bạn có thể tự do Chia sẻ (sao chép và phân phối lại) tài liệu ở bất kỳ phương tiện hoặc định dạng nào thích ứng, phối lại, chuyển đổi và xây dựng dựa trên tài liệu đó. Bạn không được sử dụng tài liệu cho mục đích thương mại. Nếu bạn phối lại, chuyển đổi hoặc xây dựng dựa trên tài liệu, bạn phải phân phối các đóng góp của mình theo cùng một giấy phép như bản gốc. Không có bảo hành nào được đưa ra. Giấy phép có thể không cung cấp cho bạn tất cả các quyền cần thiết cho mục đích sử dụng của bạn.
