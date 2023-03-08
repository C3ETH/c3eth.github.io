---
title : "About block explorer"
date: 2022-10-06T08:48:23+00:00
lastmod: 2022-10-06T08:48:23+00:00
draft: false
images: []
---

A block explorer allows you to inspect a blockchain to see its blocks and transactions.

This document is based primarily on the [Blockscout explorer](https://blockscout.com/), but blockchain explorers necessarily use similar terminology and follow a similar pattern in their presentation of information.

When you use a block explorer, it will list fields and their contents. This document will help you understand the meaning of the field names and the significance of their contents.

Glossary
--------

These are the field names commonly used in block explorers on the example EVM sidechain.

General terms
-------------

**Actor**

Any entity that can make something happen on a blockchain. Actors can include users, wallets, addresses, and network nodes.

**Address**

An address is a location to or from which transactions occur on the blockchain. It is associated with a public key.

**Hash function**

A cryptographic hash function takes a string of variable length and produces a fixed-length string called a **hash value**. A hash value is easy to calculate, but it is not feasible to derive the input given only the output, and it is not feasible to calculate two inputs that will produce the same hash value. For a canonical definition, see [this NIST publication.](https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-57pt1r5.pdf)

Any change to the input, no matter how small, will result in a very different output. Each block contains the hash of the preceding block so that anyone can check the chain's integrity.

Home page
---------

**Average block time**

The length of time between adding one block to the blockchain and adding the next block; the time it takes to add a block to the chain. It depends on the slot time of the chain.

**Total transactions**

A transaction is an event on the blockchain, such as a transfer of currency from one address to another. A variable number of transactions can fit in each block.

By comparing total transactions with total blocks, you can deduce the average number of transactions per block.

**Total blocks**

One more than the current block height of the chain, which is the latest block number.

**Wallet addresses**

The number of wallet addresses used in the blockchain so far.

A wallet address is the source or destination of a transfer. In the Ethereum account model, a wallet has exactly one address.

Blocks
------

**Block height**

The number of this block. It is one less than the number of valid blocks added to the blockchain to this point. (The first block is block 0). Invalid or ignored blocks are not counted.

**Timestamp**

The time the block was added to the chain.

**Transactions**

The number of transactions included in the block.

**Validator**

The address of the actor that added this block to the chain.

**Size**

The length of the block in bytes.

**Hash**

The hash value of this block. See the definition of 'hash function' above.

**Parent hash**

The hash value of the preceding block.

**Gas used**

Gas is paid to validators to compensate them for the resources used to process a transaction. The price of gas varies with supply and demand.

**Gas limit**

The maximum amount of gas the actor that initiated the transaction is willing to pay.

**Validator Reward**

The number of coins awarded to the validator of this block. The coins are newly minted; they do not come from transaction fees.

Transactions
------------

**Transaction**

The block explorer will show a transfer of currency as a transaction.

The formal definition is _'A piece of data, signed by an \*external actor\*. It represents either a \*message\* or a new \*autonomous object\*. Transactions are recorded into each block of the blockchain.'_ (From the Yellow Paper.)

**Contract call**

A contract call is a special case of a transaction; the destination is a smart contract rather than an end user. A smart contract has been sent to the network and recorded on the blockchain.

**Call**

Note that if a node uses the web3.js call method web3.eth.call, it will not show in a block explorer because it is a local action; the network is not informed about it and it will not affect the blockchain. The underlying JSON-RPC is eth_call.

This technique is used in a 'dry run' of a smart contract. When it works successfully, the smart contract can be sent to the blockchain using web3.eth.sendSignedTransaction.
