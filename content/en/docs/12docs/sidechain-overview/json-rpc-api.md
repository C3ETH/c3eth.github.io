---
title : "JSON-RPC API"
date: 2022-10-06T08:48:23+00:00
lastmod: 2022-10-06T08:48:23+00:00
draft: false
images: []
---
Interacting with the sidechain requires sending requests to specific JSON-RPC API methods. The EVM sidechain testnet supports most standard Ethereum JSON-RPC API endpoints with a few exceptions described in the API specification.

#### Specification

The EVM sidechain testnet supports [OpenRPC](https://open-rpc.org/)'s `rpc.discover` service discovery method that will return the OpenRPC scheme for the JSON-RPC API. You can easily validate and preview the schema on the [OpenRPC Playground](https://playground.open-rpc.org/?schemaUrl=https://faucet.sidechain.evmtestnet.iohkdev.io/).

_If your product requires a method that is not currently implemented, please contact Input Output Global support._

## Not implemented yet

*   `eth_protocolVersion`
*   `eth_syncing`
*   `eth_coinbase`
*   `eth_feeHistory (This is specific to the London hard fork.)`
*   `eth_newFilter`
*   `eth_newBlockFilter`
*   `eth_newPendingTransactionFilter`
*   `eth_uninstallFilter`
*   `eth_getFilterChanges`
*   `eth_getFilterLogs`
*   `eth_getLogs`
*   `eth_mining` (There is no “mining” in the Cardano EVM sidechain but it can return if the node is a validator.)
*   `eth_sign`
*   `eth_signTransaction`
*   `eth_getTransactionByBlockHashAndIndex`
*   `eth_getTransactionByBlockNumberAndIndex`
*   `personal_importRawKey`

The whole trace/debug module

## Irrelevant methods

The following methods are irrelevant for the Cardano EVM sidechain because they are specific to proof of work. They can be implemented to return a fixed value if needed.

*   `eth_getUncleCountByBlockHash`
*   `eth_getUncleCountByBlockNumber`
*   `eth_getWork`
*   `eth_submitWork`
*   `eth_hashrate`
*   `eth_submitHashrate`
*   `eth_getUncleByBlockHashAndIndex`
*   `eth_gasPrice`
