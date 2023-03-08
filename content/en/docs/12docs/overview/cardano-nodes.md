---
title : "Cardano nodes"
description: "Cardano nodes"
lead: ""
date: 2020-10-06T08:48:23+00:00
lastmod: 2020-10-06T08:48:23+00:00
draft: false
images: []
---

The [Cardano node](https://docs.cardano.org/cardano-components/cardano-node) is the top-level component within the network. Network nodes connect to each other within the networking layer, which is the driving force for delivering information exchange requirements. This includes new block diffusion and transaction information for establishing a better data flow. Cardano nodes maintain connections with peers that have been chosen via a custom peer-selection process. By running a Cardano node, you are participating in and contributing to the network.

## How does it work?

*[Stake pools]*(https://docs.cardano.org/learn/stake-pools) use the Cardano node to validate how the pool interacts with the network and are responsible for transaction processing and block production. They act as reliable server nodes that hold and maintain the combined stake of various stakeholders in a single entity.

### Producing a block

The goal of blockchain technology is the production of an independently-verifiable and cryptographically-linked chain of records (blocks). A network of block producers works to collectively advance the blockchain. A *[consensus]*(https://docs.cardano.org/core-concepts/consensus-explained) protocol provides transparency and decides which candidate blocks should be used to extend the chain.

Submitted valid transactions might be included in any new block. A block is cryptographically signed by its producer and linked to the previous block in the chain. This makes it impossible to delete transactions from a block, alter the order of the blocks, remove a block from the chain (if it already has a number of other blocks following it), or to insert a new block into the chain without alerting all the network participants. This ensures the integrity and transparency of the blockchain expansion.

### Slots and epochs

The Cardano blockchain uses the [Ouroboros Praos](https://eprint.iacr.org/2017/573.pdf) protocol to facilitate consensus on the chain. Ouroboros Praos divides time into epochs. Each Cardano epoch consists of a number of slots, where each slot lasts for one second. A Cardano epoch currently includes 432,000 slots (5 days). In any slot, zero or more block-producing nodes might be nominated to be the slot leader. On average, one node is expected to be nominated every 20 seconds, for a total of 21,600 nominations per epoch. If randomly elected slot leaders produce blocks, one of them will be added to the chain. Other candidate blocks will be discarded.

### Slot leader election

The Cardano network consists of a number of stake pools that control the aggregated stake of their owners and other stakeholders, also known as *delegators*. Slot leaders are randomly elected from among the stake pools. The more stake a pool controls, the greater the chance it has of being elected as a slot leader to produce a new block that is accepted into the blockchain. This is the basic concept of proof of stake (PoS). To maintain a level playing field, and prevent a situation where a small number of very large pools control the majority of stake, Cardano has an incentive system that discourages delegation to pools that already control a large portion of the total stake.

### Transaction validation

When validating a transaction, a slot leader needs to ensure that the sender has included enough funds to pay for that transaction and must also ensure that the transaction’s parameters are met. Assuming that the transaction meets all these requirements, the slot leader will record it as a part of a new block, which will then be connected to other blocks in the chain.