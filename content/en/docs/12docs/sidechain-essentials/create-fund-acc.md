---
title : "Create and fund accounts"
date: 2022-10-06T08:48:23+00:00
lastmod: 2022-10-06T08:48:23+00:00
draft: false
images: []
---
#### Prerequisites:

1. Ability to make an HTTP request.

## How to fund your main chain account with test ada tokens

In this tutorial, you will learn how to claim test ada tokens on the main chain testnet (to pay for main chain transaction fees).

> Note: This is a dedicated Cardano testnet separate from the preview and pre-production testing environments.

## Generating keys

To generate keys for the Cardano testnet you need the cardano-cli binary. Open a shell and run the following commands:

```haskell
# Set network name
network=--testnet-magic=7

cardano-cli address key-gen \
    --verification-key-file payment.vkey \
    --signing-key-file payment.skey

cardano-cli address build \
    --payment-verification-key-file payment.vkey \
    --out-file payment.addr \
    $network

 export MC_ADDR=$(cat payment.addr)
 ```

These steps are based on this [keys and adresses creation tutorial](https://github.com/input-output-hk/cardano-node/blob/master/doc/stake-pool-operations/3_keys_and_addresses.md).

Request test ada using the web-app: <https://faucet.cardano.evmtestnet.iohkdev.io/basic-faucet>

## How to fund your sidechain account with test SC_token

Create a sidechain account using a compatible Web3 wallet connected to the EVM sidechain test network (ex: MetaMask).

* Working with MetaMask.

Request test SC_Token using the web-app: <https://faucet.sidechain.evmtestnet.iohkdev.io/>