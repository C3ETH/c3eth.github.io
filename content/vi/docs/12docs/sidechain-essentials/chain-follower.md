---
title: Trình theo dõi chuỗi
date: '2022-10-06 08:48:23 +0000'
lastmod: '2022-10-06 08:48:23 +0000'
draft: 'false'
images: []
---

Trình theo dõi chuỗi như DB Sync là một thành phần quan sát các giao dịch trên chuỗi chính như Cardano. Trình theo dõi chuỗi cung cấp thông tin cho một chuỗi phụ để phù hợp với chuỗi chính.

[The DB Sync page](https://docs.cardano.org/cardano-components/cardano-db-sync/about-db-sync) gives detailed information about the functionality and how to set it up.

## Using the chain follower on a sidechain

The sidechain node uses DB Sync for getting information regarding the main chain.

This is a non-exhaustive list of data retrieved from the main chain:

- Nonce cho một epoch nhất định
- Phân phối cổ phần cho một epoch nhất định
- The list of UTXO for a given address, after a given block
- The latest block for a slot
- The latest block for the chain
- The block information for a given block number
- The slot number corresponding to a UTXO
- The cross-chain transactions for a given policy, asset name, and a range of blocks within a slot
- The cross-chain transactions for a given policy, asset name, and a UTXO ID.

The sidechain client uses DB Sync to listen to the mainchain's activity, and perform various tasks:

- Update the sidechain pool committee: a specific transaction is done on the main chain, observed with DB Sync, and taken into account to determine the next slot's pool committee on the sidechain
- Transfer funds from the main chain to the sidechain: when a token is burned on the main chain, the corresponding transaction is observed with DB Sync, and used to provide corresponding funds on the sidechain.

Transferring funds back from the sidechain to the main chain doesn't use DB Sync, but a different mechanism.

## Configuring the sidechain node to use your DB Sync instance

After installing and setting up a DB Sync instance, you need to configure a sidechain node to point to it. In the node’s configuration file, set the data source type to `db-sync` and configure connection details to match your setup. The finished configuration should look similar to the example below:

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
