---
title : "About Ouroboros BFT"
date: 2022-10-06T08:48:23+00:00
lastmod: 2022-10-06T08:48:23+00:00
draft: false
images: []
---
## Ouroboros BFT: A simple Byzantine fault tolerant consensus protocol


Ouroboros, named after the symbol of infinity, is the backbone of the Cardano ecosystem. Ouroboros BFT is the version that is implemented in Cardano's example EVM sidechain. It is a simple, deterministic protocol for ledger consensus that tolerates Byzantine faults.

### Background

So what is a Byzantine fault? To understand that, we have to go back to 1982, to the [Byzantine generals problem](https://www.microsoft.com/en-us/research/uploads/prod/2016/12/The-Byzantine-Generals-Problem.pdf) paper by Leslie Lamport, Robert Shostak, and Marshall Pease. Imagine a number of generals surrounding a city, unable to communicate with each other except by message. The generals must reach consensus on whether to attack or retreat, even if one or more generals is a traitor. This story is easy to grasp, and it is used as an allegory for the situation in a distributed ledger system where the nodes must reach consensus on the contents of the ledger even if one or more of the participating nodes is offline, faulty, or malicious. Such a node can create a **Byzantine fault**. The problem is easy to grasp but hard to solve. That's where Ouroboros comes in.

### Description


This description is based on blogs by Professor Aggelos Kiayias and Kieran Costello.

### A word on consensus protocols, and why Ouroboros is different

It's reasonable to assume that anybody new to the space might be confused by the term 'consensus protocol'. Put simply, a consensus protocol is the system of laws and parameters that govern the behavior of distributed ledgers: a ruleset by which each network participant plays.

There is no single central authority to control a public blockchain. Instead, a consensus protocol is used to allow distributed network participants to agree on the history of the network captured on the blockchain – to reach consensus on what has happened, and continue from a single source of truth.

That single source of truth provides a single record. This is why blockchains are sometimes referred to as trustless. Instead of requiring participants to trust one another, trust is built into the protocol. Unknown actors may interact and transact with each other without relying on an intermediary to mediate or for there to be a prerequisite exchange of personal data.

Ouroboros is a proof-of-stake protocol, which is distinct from proof of work. Rather than relying on 'miners' to solve computationally complex equations to create new blocks – and rewarding the first to do so – proof of stake selects participants (in the case of Cardano, stake pools) to create new blocks based on the stake they control in the network.

Networks using Ouroboros are many times more energy-efficient than those using proof of work, and, through Ouroboros, Cardano is able to achieve unparalleled energy efficiency. The resulting difference in energy use can be analogized to that between a household and a small country: one can be scaled to the mass market; the other cannot.

Now, let's take a closer look at how the Ouroboros protocol works.

### Ouroboros Classic

Starting with Ouroboros, the first implementation of the Ouroboros protocol, published in 2017. This first implementation (referred to as Ouroboros Classic) laid the foundations for the protocol as an energy-efficient rival to proof of work. It introduced the mathematical framework to analyze proof of stake and a novel incentive mechanism to reward participants in a proof-of-stake setting.

More than this, however, what separated Ouroboros from other blockchain protocols and, specifically, proof-of-stake protocols was its ability to generate unbiased randomness in the protocol's leader selection algorithm and the subsequent security assurances that provided. Randomness prevents the formation of patterns and is a critical part of maintaining the protocol's security. Whenever an adversary can predict a behavior, they can exploit it – and though Ouroboros ensures transparency, it prevents coercion. Significantly, Ouroboros was the first blockchain protocol to be developed with this type of rigorous security analysis.

### How Ouroboros works

[The research paper](https://iohk.io/en/research/library/papers/ouroborosa-provably-secure-proof-of-stake-blockchain-protocol/) on Ourorobos gives a comprehensive explanation of how it works. To summarize, Ouroboros divides the blockchain into slots and epochs. In Cardano, each slot lasts for 20 seconds, and each epoch represents approximately five days' worth of slots.

Central to Ouroboros' design is the recognition that attacks are inevitable. As such, the protocol has tolerance built in to prevent attackers from propagating alternative versions of the blockchain and assumes that an adversary may send arbitrary messages to any participant at any time. In fact, the protocol is guaranteed to be secure so long as more than 51% of the stake is controlled by honest participants (that is, those following the protocol).

A slot leader is elected for each slot, who is responsible for adding a block to the chain and passing it to the next slot leader. To protect against adversarial attempts to subvert the protocol, each new slot leader is required to consider the last few blocks of the received chain as transient: only the chain that precedes the prespecified number of transient blocks is considered settled. This number defines the settlement delay. Among other things, this means that a stakeholder can go offline and still be synced to the blockchain, so long as it's not for more than the settlement delay.

Within the Ouroboros protocol, each network node stores a copy of the transaction mempool – where transactions are added if they are consistent with existing transactions – and the blockchain. The locally stored blockchain is replaced when the node becomes aware of an alternative, longer valid chain.

### Ouroboros BFT

Ouroboros BFT (Byzantine Fault Tolerance) is a simple protocol used by Cardano during the Byron reboot, which was the transition of the old Cardano codebase to the new. Ouroboros BFT helped prepare Cardano's network for Shelley's release and, with that, its decentralization. This is the version of Ourorobos that is implemented in the Cardano EVM sidechain.

Rather than requiring nodes to be online all of the time, Ouroboros BFT assumes a federated network of servers – the blockchain – and synchronous communication between the servers, providing ledger consensus in a simpler and more deterministic manner.

Additional benefits include instant proof of settlement, transaction settlement at network speed – which means the determiner for transactions is the speed of your network connection to an OBFT node – and instant confirmation in a single round trip of communication. Each of these results in significant performance improvements.