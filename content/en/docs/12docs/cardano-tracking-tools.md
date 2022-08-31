---
title : "Cardano tracking tools"
description: "Cardano tracking tools"
lead: ""
date: 2020-10-06T08:48:23+00:00
lastmod: 2020-10-06T08:48:23+00:00
draft: false
images: []
---

Since Cardano is a public blockchain ledger, it is possible to easily track all recent transactions, block details, and epoch data using different tools.

## Exploring transactions and blocks

**Cardano Explorer**

[Cardano Explorer](https://explorer.cardano.org/en.html) is a user-oriented tool that fetches data from the main database and reflects it in a straightforward and convenient web interface.

The Explorer shows the latest epoch details. You can click the latest epoch and see:

- a number of blocks produced during this epoch
- time the epoch started
- time of last produced block
- number of processed transactions
- total output in ada

{{< figure src="https://docs.cardano.org/static/809bde99eaab735c8b87fa363d8636b6/23266/latest_epoch_summary.png" caption="Figure 1. Latest epoch summary" >}}

By choosing a specific block, you can explore it in more detail to see its ID, size, epoch and block details, number of included transactions and confirmations:

{{< figure src="https://docs.cardano.org/static/74b26e442d30da2bedeac066bc5b31f4/98314/block_summary.png" caption="Figure 2. Block summary" >}}

You can also search for specific epochs, transactions or blocks by pasting their IDs in the search field.

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