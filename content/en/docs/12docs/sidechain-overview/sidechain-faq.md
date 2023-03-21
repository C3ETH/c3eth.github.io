---
title : "Sidechains FAQ"
date: 2022-10-06T08:48:23+00:00
lastmod: 2022-10-06T08:48:23+00:00
draft: false
images: []
---

This page answers some frequent questions for the Cardano Sidechains Toolkit and the example EVM sidechain application.

### The Cardano Sidechains Toolkit

These questions relate to the components IOG provides for building custom sidechains on Cardano.

### Is the Sidechain Toolkit an open-source project?

Yes, it will be open-sourced under the Input Output Global GitHub repository.

### Will there be an alternative chain follower to DB Sync that consumes less resources?

Yes, IOG is working in a less resource-intensive tool. There are other chain indexer tools such as Oura and Carp that could serve the purpose of building a Cardano sidechain.

### The example EVM sidechain application

These questions relate to the application that IOG built as a proof of concept, using the Cardano Sidechains Toolkit.

### What is the difference between the EVM sidechain and Hydra?

They are two separate solutions. Hydra is a layer 2 scalability solution for applications developed in Plutus for the Cardano blockchain to speed up transactions, similar to the Lightning network for Bitcoin.

The EVM sidechain brings Ethereum virtual machine (Solidity-based DApps) execution into Cardano via a sidechain.

### Can you execute a Solidity smart contract on the example EVM sidechain? If this is possible, how do you go between the Ethereum (account model) to the Cardano (EUTXO) accounting model?

The EVM sidechain uses the account model so it is fully compatible with Ethereum-based apps. It doesn't use EUTXO.