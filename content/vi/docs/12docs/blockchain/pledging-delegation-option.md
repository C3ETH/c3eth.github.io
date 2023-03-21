---
title: Tùy chọn cam kết và ủy quyền
date: '2022-10-06 08:48:23 +0000'
lastmod: '2022-10-06 08:48:23 +0000'
draft: 'false'
images: []
---

Ada được giữ trên [mạng Cardano](https://cardano.org/) đại diện cho cổ phần của người dùng trong giao thức, kích thước của nó tỷ lệ thuận với lượng ada được nắm giữ. Người dùng nắm giữ cổ phần trong Cardano có thể kiếm được phần thưởng thụ động khi xác thực các khối. Số phần thưởng họ có thể kiếm được tỷ lệ thuận với số tiền ada mà họ cam kết hoặc ủy thác cho nhóm cổ phần.

Có ba tùy chọn mà chủ sở hữu ada có thể xem xét để ủy thác cổ phần của họ:

1. Điều hành nhóm cổ phần của riêng họ
2. Đồng ý với bên thứ ba để điều hành nhóm cổ phần tư nhân cho họ
3. Ủy quyền cho các nhóm cổ phần khác

Để tạo và đăng ký nhóm cổ phần, hãy xem [hướng dẫn tạo giao dịch](https://github.com/input-output-hk/cardano-node/blob/master/doc/stake-pool-operations/4_simple_transaction.md) giải thích cách cam kết và ủy quyền để kiếm phần thưởng.

Các nhóm cổ phần phải duy trì **tính sẵn sàng cao** , có nghĩa là chúng phải *luôn* trực tuyến và sẵn sàng để xác thực cũng như tạo các khối mới. Phần thưởng mà nhóm cổ phần có thể kiếm được tỷ lệ thuận với số lượng ada được cam kết hoặc ủy quyền và số lượng khối mà nhóm cổ phần có thể tạo trong một kỷ nguyên nhất định. Ouroboros chọn người dẫn đầu vị trí cấp quyền xác thực giao dịch và tạo khối mới, dựa trên các tiêu chí trên.

> Lưu ý: Bạn **nên** kiểm tra tất cả chức năng nhóm cổ phần trên [mạng thử nghiệm](https://testnets.cardano.org/en/testnets/cardano/overview/) *trước* khi triển khai bất kỳ mạng chính nào.

### Cam kết

Cam kết là số lượng ada mà nhà điều hành nhóm cổ phần 'ủy nhiệm' cho nhóm của chính họ khi nó được tạo. Cam kết này thể hiện cam kết của nhà điều hành trong việc duy trì nhóm của họ và hỗ trợ hoạt động của mạng. Không bắt buộc phải cam kết, tuy nhiên, bạn nên cam kết *một số* ada cho nhóm cổ phần trước khi chạy nó. Càng nhiều ada được cam kết, phần thưởng nhóm càng cao, phần thưởng này phụ thuộc vào mức độ thời gian hoạt động của nhóm và hiệu suất của nó.

> **Chủ đề liên quan:**
>
> - [Cam kết và phần thưởng](/core-concepts/pledging-rewards)

### Sự uỷ quyền

Những người nắm giữ Ada không có chuyên môn kỹ thuật trong việc duy trì nhóm cổ phần có thể kiếm được phần thưởng bằng cách ủy quyền cho bất kỳ nhóm cổ phần nào có sẵn trên mạng. [Ví Daedalus](https://docs.cardano.org/cardano-components/daedalus-wallet) cung cấp giao diện thân thiện với người dùng, cho phép người dùng bắt đầu ủy quyền cho bất kỳ nhóm cổ phần đã đăng ký nào.

> Lưu ý: chủ sở hữu ada và nhà điều hành nhóm cổ phần (SPO) cam kết hoặc ủy quyền sẽ luôn có quyền truy cập vào ada của họ. Nếu ada được ủy quyền được sử dụng hoặc xóa khỏi nhóm, phần thưởng sẽ giảm tương ứng. **Chủ đề liên quan:**
>
> - [Đăng ký nhóm cổ phần](https://github.com/input-output-hk/cardano-node/blob/master/doc/stake-pool-operations/8_register_stakepool.md)
>
> **Đọc thêm:**
>
> - [Lời khuyên dành cho các bên liên quan - Người ủy quyền và Người điều hành nhóm cổ phần](https://iohk.io/en/blog/posts/2020/11/13/the-general-perspective-on-staking-in-cardano/)

### Phần thưởng

Người ủy quyền kiếm được phần thưởng khi tham gia đặt cược (cam kết hoặc ủy quyền) và những phần thưởng này được tự động phân phối giữa những người tham gia theo sơ đồ phần thưởng. Cơ chế phần thưởng trong Cardano được thiết kế phi tập trung, có nghĩa là không có bên kiểm soát duy nhất.

> **Tài liệu liên quan:**
>
> - [Rút tiền thưởng](https://github.com/input-output-hk/cardano-node/blob/master/doc/stake-pool-operations/11_withdraw-rewards.md)

### câu hỏi thường gặp

1. **H: Làm cách nào để tạo và đăng ký nhóm cổ phần?**

    **Trả lời** : Vui lòng xem lại các bước trong tài liệu [tại đây.](https://github.com/input-output-hk/cardano-node/blob/master/doc/stake-pool-operations/1_getConfigFiles_AND_Connect.md)

2. **Hỏi: Làm cách nào để tạo địa chỉ đặt cược?**

    **Trả lời** : Vui lòng xem lại các bước trong tài liệu [tại đây.](https://github.com/input-output-hk/cardano-node/blob/master/doc/stake-pool-operations/5_register_key.md)

3. **H: Làm cách nào để xác định số lượng ada tối ưu để cam kết cho mỗi nhóm?**

    **Đ** : Đây là sở thích cá nhân, bạn cam kết càng nhiều thì phần thưởng càng cao.

4. **H: Làm cách nào để biết hồ bơi của tôi có quá bão hòa hay không?**

    **Trả lời** : Nếu số lượng ada được ủy quyền cho nhóm là hơn 32 triệu, thì nhóm đã quá bão hòa.

5. **H: Làm cách nào để biết ai đã ủy quyền cho nhóm của tôi?**

    **Đ** : Bạn có thể truy vấn trạng thái sổ cái.

6. **Hỏi: Tôi có thể tính phần thưởng như thế nào?**

    **A** : Điều này được tính toán tự động bởi giao thức Ouroboros.

7. **H: Làm cách nào để xác minh xem pool của tôi đã được đăng ký thành công trên mainnet hay chưa?**

    **Trả lời** : Bạn có thể kiểm tra [pooltool.io](https://pooltool.io/) hoặc chạy lệnh curl sau:

```bash
curl -X POST -H "Content-Type: application/json" -d '{"query": "query getStake_pool($id: StakePoolID!){ stakePools(limit: 1 where: { id: { _eq: $id } }){ id } }","variables":{"id":"$My_Pool_id_here"}}' https://explorer.cardano.org/graphql:
```
