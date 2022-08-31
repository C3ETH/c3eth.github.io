---
title: '"Mô hình Cardano"'
description: '"Mô hình Cardano"'
lead: ''
date: '2020-10-06 08:48:23 +0000'
lastmod: '2020-10-06 08:48:23 +0000'
draft: 'false'
images: []
---

Phần này mô tả mô hình cấp cao của Cardano. Nó cung cấp thông tin chi tiết về các thành phần cốt lõi và tương tác của chúng, đồng thời thảo luận ngắn gọn về thời đại và cách triển khai của Cardano.

### Mô hình cấp cao của Cardano

The following diagram outlines the interaction between the system components of Cardano:

![Image](https://ucarecdn.com/3756645a-a4a2-4d2f-846a-e454bf7cba60/)

### System components

The current implementation of Cardano is highly modular. It includes the following components (different deployment use cases will use different combinations of components):

- [Node](https://github.com/input-output-hk/cardano-node)
- [Command line interface (CLI)](https://github.com/input-output-hk/cardano-node/blob/master/doc/reference/cardano-node-cli-reference.md)
- [Daedalus wallet](https://github.com/input-output-hk/cardano-wallet)
- [Cardano db-sync](https://github.com/input-output-hk/cardano-db-sync)
- [GraphQL API](https://github.com/input-output-hk/cardano-graphql) server (Apollo)
- [SMASH server](https://github.com/input-output-hk/smash)

### Nodes and remote nodes

A blockchain system consists of a set of nodes distributed across a network that communicate with each other to achieve [consensus](https://docs.cardano.org/core-concepts/consensus-explained) about the system’s state.

#### Nodes are responsible for:

- Executing the [Ouroboros](https://github.com/input-output-hk/ouroboros-network/#ouroboros-network) protocol
- Validating and relaying blocks
- Producing blocks (some nodes)
- Providing information about the state of the blockchain to other local clients

You can only trust nodes run by you or your organization. This is why [Daedalus](https://docs.cardano.org/cardano-components/daedalus-wallet) runs a node in the background.

#### Node process

The cardano-node is the top level for the node and consists of the other subsystems, of which the most significant are consensus, [ledger](https://github.com/input-output-hk/cardano-ledger-specs#cardano-ledger) and networking with ancillary configuration, CLI, logging, and monitoring. Node-to-Node IPC protocol

The purpose of the node-to-node Inter-Process Communication (IPC) protocol is to allow for the exchange of blocks and transactions between nodes as part of the Ouroboros consensus algorithm.

The node-to-node protocol is a composite protocol, consisting of three ‘mini-protocols’:

- **chain-sync**: Used for following the chain and getting block headers.
- **block-fetch** : Được sử dụng để lấy các nội dung khối.
- **tx-submission** : Được sử dụng để chuyển tiếp các giao dịch.

These mini-protocols are multiplexed on a single long-running Transmission Control Protocol (TCP) connection between nodes. They can be run in both directions on the same TCP connection to allow for peer-to-peer (P2P) settings.

Giao thức tổng thể - và mỗi giao thức nhỏ - được thiết kế cho một thiết lập không tin cậy nơi cả hai bên cần đề phòng các cuộc tấn công Denial-of-Service (DoS). Ví dụ: mỗi giao thức mini sử dụng luồng điều khiển do người tiêu dùng điều khiển, vì vậy một nút chỉ yêu cầu nhiều công việc hơn khi nó đã sẵn sàng, thay vì phải thúc đẩy công việc.

The protocol design is modular and evolvable: version negotiation is used to agree on the set of mini-protocols to use, which allows additional or updated mini-protocols to be added over time without causing compatibility issues.

#### Node-to-Client IPC

The purpose of the node-to-client IPC protocol is to allow local applications to interact with the blockchain via the node. This includes applications such as wallet backends or blockchain explorers. The node-to-client protocol enables these applications to access the raw chain data and to query the current ledger state. It also provides the ability to submit new transactions to the system.

The node-to-client protocol uses the same design as the node-to-node protocol, but with a different set of mini-protocols, and using local pipes rather than TCP connections. As such, it is a relatively low-level narrow interface that exposes only what the node can provide natively. For example, the node provides access to all the raw chain data but does not provide a way to query data on the chain. The job of providing data services and more convenient higher level APIs is delegated to dedicated clients, such as cardano-db-sync and the wallet backend.

The node-to-client protocol consists of three mini-protocols:

- **chain-sync**: Used for following the chain and getting blocks
- **local-tx-submission** : Được sử dụng để gửi các giao dịch
- **local-state-query**: Used for querying the ledger state

The node-to-client version of chain sync uses full blocks, rather than just block headers. This is why no separate block-fetch protocol is needed. The local-tx-submission protocol is like the node-to-node tx-submission protocol but simpler, and it returns the details of transaction validation failures. The local state query protocol provides query access to the current ledger state, which contains a lot of interesting data that is not directly reflected on the chain itself.

[Read more about the networking protocol design and Cardano node communication protocols.](https://docs.cardano.org/explore-cardano/cardano-network/networking-protocol)

### Command line interface (CLI)

The node’s CLI tool is the “swiss army knife” of the system. It can do almost everything, but it is quite low level and not very convenient because it’s text-based and lacks a graphical user interface (GUI).

The CLI tool can:

- Query the node for information
- Submit transactions
- Build and sign transactions
- Manage cryptographic keys

### Daedalus wallet

Daedalus is a full node wallet that helps users to manage their ada, and can send and receive payments on the Cardano blockchain. Daedalus consists of a wallet frontend and a backend. The frontend is the graphical application that users see and interact with. The backend is a service process that monitors the state of the user’s wallet and does all the 'heavy lifting', such as coin selection, transaction construction, and submission. The backend interacts with a local node via the node-to-client IPC protocol, and interacts with the frontend via a HTTP API. The backend also provides a CLI that enables interaction with the wallet. The wallet backend can also be used on its own -without Daedalus- via its API. This is a convenient way for software developers to integrate Cardano with other applications and systems.

Chúng tôi khuyên những người dùng tiên tiến có ý định sử dụng Cardano nên bắt đầu với Daedalus.

### cardano-db-sync

The cardano node stores only the blockchain itself and associated information needed to validate the blockchain. This design principle is about minimising code complexity, and reducing computational cost and resource use, to keep the node's local interfaces as minimal as possible and to use external clients to provide a variety of convenient interfaces and extra functionality. In particular, the node does not provide a convenient query interface for historical information on the blockchain. This data service is provided by a separate component using an Structured Query Language (SQL) database.

Read more about:

- Cardano DB Sync and its components
- [SMASH](https://docs.cardano.org/cardano-components/smash)

### About the eras and implementations of Cardano

Cardano is a third-generation distributed ledger. It is based on Ouroboros, a peer-reviewed proof-of-stake (PoS) blockchain consensus algorithm that first appeared in the top research conference in cryptology worldwide (the International Association for Cryptologic Research 37th International Cryptology CXonference - Crypto 2017).

The name Cardano is the general name given to the platform, which has gone through multiple eras and implementations. These concepts need further explanation.

#### Kỷ nguyên

There are several eras within the evolution of Cardano. Each era (Byron, Shelley, Goguen, Basho, and Voltaire) refers to the rules of the ledger. For example, what transaction types and what data is stored in the ledger, or the validity and meaning of the transactions.

The evolution of the Cardano mainnet began with the Byron ledger rules (Byron era). The mainnet underwent a hard fork in late July 2020 to switch from the Byron rules to the Shelley ledger rules. Hence, this hard fork marked the beginning of the Shelley era.

#### Implementations

Cardano’s first implementation was introduced at the start of the Cardano mainnet, back in September 2017. This implementation supported the Byron ledger rules exclusively.

We then undertook a full reimplementation of Cardano, which enabled two fundamental changes: the support for multiple sets of ledger rules, and the management of the hard fork process of switching from one set of rules to the next. In other words, the new implementation can support both the Byron rules and the Shelley rules, which meant that, when it was deployed to the mainnet in early 2020, the implementation was also fully compatible with the Byron rules. This allowed for a smooth transition from the old to the new implementation. Once all Cardano users had upgraded their nodes to the new implementation, it became possible to invoke the hard fork and switch to the Shelley rules.

A third Cardano implementation was used on the Shelley Incentivized Testnet (ITN). This system supported a significant subset of the Shelley rules, and we used it to test the economic and social dynamics of the Shelley delegation system.

This Cardano architecture overview reflects the current Cardano implementation deployed on the mainnet, not the original or ITN implementations.
