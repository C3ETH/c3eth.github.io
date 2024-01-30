---
title: 'スナップショットを監査する'
date: 2020-10-06 08:48:23 +0000
lastmod: 2020-10-06 08:48:23 +0000
draft: false
images: []
weight: 30
---

## パラメーター

登録期限: 2024 年 1 月 15 日 21:45:00 UTC

最小投票権: 450 ADA。

## 必要なツール

### dbSync

インストール手順については[、こちらを](https://github.com/IntersectMBO/cardano-db-sync/blob/master/doc/docker.md)参照してください。

dbSync と PostgreSQL データベースが実行されていること、およびデータベースが 2024 年 1 月 20 日の 21:45:00 UTC 以降に同期されていることを確認します。

注: *dbSync がこの日付以降に同期されていない場合、スナップショットの実行結果は不正確になります。これは、ブロックチェーン上のロールバックがスナップショット データに影響を与えることが不可能なときにスナップショットが取得されるため、完全に再現可能で安定しているためです。これは、登録期限と最終スナップショットが取得できる最も早い時間の間に 1 つの完全なエポックを配置することで保証されます。*

### Catalyst スナップショット ツール

スナップショットツールは[ここ](https://github.com/input-output-hk/catalyst-core)から入手できます。リポジトリのクローンを作成し、必要なツールをビルドします。

### ツールの構築

##### スナップショットツール:

```linux

 cargo build -r -p voting_tools_rs

```

##### 触媒ツールボックス:

```linux

cargo build -r -p catalyst-toolbox

```

## スナップショットの再現

スナップショットの監査は、ブロックチェーン データから直接スナップショットを複製し、公式に公開されたスナップショット データと比較するだけです。

### 登録期限スロット番号の取得

登録期限に合わせて`slot_no`取得します。

次のコマンドを使用して dbSync データベースにクエリを実行します。

```linux

select slot_no, time from block
    where slot_no is not null and time <= '2024-01-15 21:45:00'
    order by slot_no desc limit 1 ;

```

結果は次のようになります。

```linux

113788796,2024-01-15 21:44:30.000000

```

したがって、スナップショットがターゲットにする必要がある`slot#`のとおりです: 113788796

### Raw スナップショットの実行

スナップショットの最初の部分では、生の登録情報とステーキングされた ADA 情報が蓄積され、 [CIP-15](https://cips.cardano.org/cip/CIP-15/)および[CIP-36](https://cips.cardano.org/cip/CIP-36/)に従って検証されます。

注: *CIP-36 で指定されている複数の委任はサポートされていません。これらは無効な登録として検出されます。単一の投票キーを含む登録のみがサポートされ、有効になります。*

実行します (必要に応じて資格情報を置き換えます)。

```linux

export USERNAME=<Your dbSync postgresql Username>
export PASSWORD=<Your dbSync postgresql Password>
export DBSYNC_POSTGRES="localhost:5432"
./target/release/snapshot_tool --db cexplorer --db-user $USERNAME --db-pass $password --db-host $DBSYNC_POSTGRES --out-file ./cexplorer-113788796.json --min-slot 0 --max-slot 113788796 --network-id mainnet

```

これにより、次の 3 つのファイルが生成されます。

- `cexplorer-113788796.json` &lt;- 生のスナップショット データ
- `cexplorer-113788796.unregistered.json` &lt;- 未登録ですがステークされた ADA。
- `cexplorer-113788796.errors.json` &lt;- エラーまたは古い登録。

### Fund 11 パラメータを使用したスナップショットの処理

これにより、許可される最小投票権に基づいて登録がフィルタリングされます。

走る：

```linux

./target/release/catalyst-toolbox snapshot --snapshot cexplorer-113788796.json --min-stake-threshold 450000000 --slot-no 113788796 cexplorer-113788796.final.json

```

これにより、最終スナップショットが生成されます: `cexplorer-113788796.summary.json`
