---
title: Cardano tracking tools
description: Cardano tracking tools
lead: ''
date: '2020-10-06 08:48:23 +0000'
lastmod: '2020-10-06 08:48:23 +0000'
draft: 'false'
images: []
---

Vì Cardano là một sổ cái blockchain công khai, nên có thể dễ dàng theo dõi tất cả các giao dịch gần đây, chi tiết khối và dữ liệu kỳ bằng cách sử dụng các công cụ khác nhau.

## Exploring transactions and blocks

**Cardano Explorer**

[Cardano Explorer](https://explorer.cardano.org/en.html) is a user-oriented tool that fetches data from the main database and reflects it in a straightforward and convenient web interface.

Trình khám phá hiển thị chi tiết kỳ mới nhất. Bạn có thể nhấp vào kỳ mới nhất và xem:

- số khối được tạo ra trong kỳ này
- thời gian bắt đầu kỳ
- thời gian của khối cuối cùng được sản xuất
- number of processed transactions
- total output in ada

{{&lt; figure src="https://docs.cardano.org/static/809bde99eaab735c8b87fa363d8636b6/23266/latest_epoch_summary.png" caption="Figure 1. Latest epoch summary" &gt;}}

Bằng cách chọn một khối cụ thể, bạn có thể khám phá nó chi tiết hơn để xem ID, kích thước, kỳ và chi tiết khối, số lượng giao dịch được bao gồm và xác nhận:

{{&lt; figure src="https://docs.cardano.org/static/74b26e442d30da2bedeac066bc5b31f4/98314/block_summary.png" caption="Figure 2. Block summary" &gt;}}

Bạn cũng có thể tìm kiếm các kỳ, giao dịch hoặc khối cụ thể bằng cách dán ID của họ vào trường tìm kiếm.

Here is a list of other explorers to consider:

- [AdaEx](https://cexplorer.io/)
- [Adapools](https://adapools.org/)
- [AdaStat](https://adastat.net/transactions)
- [Adatools](https://adatools.io/transactions)
- [Cardanoscan](https://cardanoscan.io/transactions)

## Exploring assets

Cardano supports multi-asset creation and management. To see a list of created assets and tokens, you can use these tools:

- [Adapools](https://adapools.org/)
- [AdaStat (tokens)](https://adastat.net/tokens)
- [Adatools (tokens)](https://adatools.io/tokens)
- [Cardano Assets](https://cardanoassets.com/)
- [Cardanoscan (tokens)](https://cardanoscan.io/tokens)
- [Pool.pm (tokens)](https://pool.pm/tokens)
- [Adapools (tokens)](https://adapools.org/token)

## Exploring stake pools

To find a list of all registered stake pools, their tickers, pool names, and IDs, you can use these tools:

- [Adapools](https://adapools.org/)
- [ADAtainment](https://www.adatainment.com/index.php?page=home&lang=en)
- [Adatools (pools)](https://adatools.io/pools)
- [Cardano PoolTool](https://pooltool.io/)
- [Cardanoscan (pools)](https://cardanoscan.io/pools)
- [Pool.pm (pools)](https://pool.pm/search)
- [POOLSTATS](https://poolstats.org/#)

> Note: IOHK has developed a stake pool metadata aggregation server [(SMASH)](https://docs.cardano.org/development-guidelines/operating-a-stake-pool/SMASH) to provide the community with a list of verified stake pools with valid metadata. Smash is integrated with the Daedalus wallet, and users can see a list of valid stake pools in the delegation center tab.
