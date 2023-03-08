---
title : "Network details"
date: 2022-10-06T08:48:23+00:00
lastmod: 2022-10-06T08:48:23+00:00
draft: false
images: []
---

The Example EVM sidechain testnet environment consists of two networks:

1.  EVM sidechain testnet (sidechain, SC)
2.  A _dedicated_ Cardano testnet (main chain, MN)

## Networks


| Name                  | Network Type | Chain ID | Consensus | Token                      | Model         |
|-----------------------|--------------|----------|-----------|----------------------------|---------------|
| EVM sidechain testnet | Testnet      | 78       | OBFT      | Sidechain token (SC_Token) | Account model |
| Cardano testnet       | Testnet      | 7        | POS       | Test ada                   | EUTXO         |

## Network utilities

### Example EVM Sidechain

|  | |
|----------------|----------------------------------------------------------------------|
| RPC            | https://faucet.sidechain.evmtestnet.iohkdev.io/ (same url as faucet) |
| Block Explorer | https://explorer.sidechain.evmtestnet.iohkdev.io/                    |
| Faucet         | https://faucet.sidechain.evmtestnet.iohkdev.io/                      |

### Dedicated Cardano Testnet

|  |  |
|--------|-----------------------------------------------------------|
| Faucet | https://faucet.cardano.evmtestnet.iohkdev.io/basic-faucet |



### Network notifications

Announcements for new releases, network disruptions, and other updates will be announced in the `#ask-sidechains` channel in the [IO Technical Communities Discord](https://discord.com/invite/inputoutput).