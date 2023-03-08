---
title: "Cardano追跡ツール"
description: "Cardano追跡ツール"
lead: ''
date: 2020-10-06 08:48:23 +0000
lastmod: 2020-10-06 08:48:23 +0000
draft: false
images: []
---

Cardano はパブリック ブロックチェーン台帳であるため、さまざまなツールを使用して、最近のすべてのトランザクション、ブロックの詳細、およびエポック データを簡単に追跡できます。

## トランザクションとブロックの探索

**カルダノ エクスプローラー**

[Cardano Explorer](https://explorer.cardano.org/en.html)は、メイン データベースからデータを取得し、それを簡単で便利な Web インターフェイスに反映するユーザー指向のツールです。

エクスプローラーには、最新のエポックの詳細が表示されます。最新のエポックをクリックすると、以下が表示されます。

- このエポック中に生成されたブロックの数
- エポックの開始時刻
- 最後に生成されたブロックの時間
- 処理されたトランザクションの数
- ADAの総出力

{{&lt; figure src="https://docs.cardano.org/static/809bde99eaab735c8b87fa363d8636b6/23266/latest_epoch_summary.png" caption="図 1. 最新のエポックの概要" &gt;}}

特定のブロックを選択すると、ID、サイズ、エポックとブロックの詳細、含まれるトランザクションの数、および確認をより詳細に調べることができます。

{{&lt; figure src="https://docs.cardano.org/static/74b26e442d30da2bedeac066bc5b31f4/98314/block_summary.png" caption="図 2. ブロックの概要" &gt;}}

検索フィールドに ID を貼り付けて、特定のエポック、トランザクション、またはブロックを検索することもできます。

考慮すべき他のエクスプローラーのリストを次に示します。

- [AdaEx](https://cexplorer.io/)
- [Adapools](https://adapools.org/)
- [AdaStat](https://adastat.net/transactions)
- [Adatools](https://adatools.io/transactions)
- [Cardanoscan](https://cardanoscan.io/transactions)

## アセットの探索

Cardano は、マルチアセットの作成と管理をサポートしています。作成されたアセットとトークンのリストを表示するには、次のツールを使用できます。

- [Adapools](https://adapools.org/)
- [AdaStat (トークン)](https://adastat.net/tokens)
- [Adatools (トークン)](https://adatools.io/tokens)
- [Cardano Assets](https://cardanoassets.com/)
- [Cardanoscan (トークン)](https://cardanoscan.io/tokens)
- [Pool.pm (トークン)](https://pool.pm/tokens)
- [Adapools (トークン)](https://adapools.org/token)

## ステークプールの探索

登録されているすべてのステーク プール、ティッカー、プール名、および ID のリストを見つけるには、次のツールを使用できます。

- [Adapools](https://adapools.org/)
- [ADAtainment](https://www.adatainment.com/index.php?page=home&lang=en)
- [Adatools (プール)](https://adatools.io/pools)
- [Cardanoプールツール](https://pooltool.io/)
- [カルダノスキャン (プール)](https://cardanoscan.io/pools)
- [Pool.pm (プール)](https://pool.pm/search)
- [PoolStats](https://poolstats.org/#)

> 注: IOHK は、有効なメタデータを含む検証済みステーク プールのリストをコミュニティに提供するために、ステーク プール メタデータ アグリゲーション サーバー[(SMASH)](https://docs.cardano.org/development-guidelines/operating-a-stake-pool/SMASH)を開発しました。 Smash は Daedalus ウォレットと統合されており、ユーザーは委任センターのタブで有効なステーク プールのリストを確認できます。
