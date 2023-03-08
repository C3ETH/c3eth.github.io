---
title : "Working with MetaMask"
date: 2022-10-06T08:48:23+00:00
lastmod: 2022-10-06T08:48:23+00:00
draft: false
images: []
---

The team has tested MetaMask compatibility with the sidechain using Google Chrome and Brave web browsers.

## Install MetaMask

Use this link to install MetaMask as a browser extension or mobile app: <https://metamask.io/>.

![install-meta-mask](https://user-images.githubusercontent.com/10556209/148433190-2aabc719-67fb-40f3-a459-0f5f0d81e169.png)

## Create or import account

Choose the option to create an account.

![create-account](https://docs.cardano.org/static/982017e44b8c53b562472ab69fa4395b/e3189/sc-metammask-create-account.png)

Back up your wallet seed phrase and store it in a safe place.

## Add Cardano EVM sidechain network(s) in settings

Settings > Networks > Add Network > Input the following settings and save.

*   Network Name: `EVM sidechain Testnet`
*   New RPC URL: `https://faucet.sidechain.evmtestnet.iohkdev.io/`
*   Chain ID: `78`
*   Currency Symbol: `SC_Token` <---*(temporary name)*
*   Block Explorer URL: `https://explorer.sidechain.evmtestnet.iohkdev.io/`

Now you can select the Cardano EVM sidechain network from MetaMask:

![select-network](https://docs.cardano.org/static/ad1e7a421d3729fbbea5d08d7c486758/2ece4/sc-metamask-select-testnet.png)

## Known issues

*   If the sidechain network was added correctly, but MetaMask does not send transactions, update balance, or simply not interact with the chain, then try to [Reset your MetaMask account](https://metamask.zendesk.com/hc/en-us/articles/360015488891-How-to-reset-an-account).
*   The team has tested MetaMask compatibility with the sidechain using Google Chrome and Brave web browsers. To avoid browser compatibility issues, use the same browsers.