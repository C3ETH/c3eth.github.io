---
title: 'Exploring the Midnight devnet'
date: 2020-10-06 08:48:23 +0000
lastmod: 2020-10-06 08:48:23 +0000
draft: false
images: []
---

Built to cater to both blockchain and non-blockchain developers, the Midnight devnet provides a unique opportunity to experiment with the development of data protection apps

In the ever-evolving landscape of blockchain technology, Midnight stands out for its commitment to innovation and data protection. The Midnight devnet – an initial sandboxed environment for early developer access – was launched on November 13, providing the first pioneering teams with a developer environment to experiment in.

This blog post delves into the Midnight devnet, covering its purpose, scope, and how it fosters collaboration with the wider community.

## What is the Midnight devnet?

Short for ‘development network’, a devnet is the initial environment provided by a blockchain, allowing the community to extensively test early features in a sandboxed environment. A devnet later advances to testnet and, ultimately, mainnet.

The Midnight devnet was conceived to provide a distinctive ecosystem for developers interested in working with data protection smart contracts and applications. The devnet is designed to cater to both blockchain developers and those who have limited or no experience with blockchain technology. It opens the doors for building business logic that seamlessly interacts with the blockchain, making it a versatile platform for various user needs.

### Compact: Midnight’s domain-specific language

One of Midnight’s objectives is to offer an accessible programming language that allows developers from diverse backgrounds and industries to build decentralized applications.

For this, Midnight allows developers to write smart contracts with Compact – a domain-specific smart contract programming language designed for data protection that seamlessly integrates with TypeScript. Compact serves as both the programming model and language for defining zero-knowledge (ZK) circuits that are transformed into smart contracts on a public blockchain. The process of authoring these smart contracts closely resembles creating a unit test in TypeScript. The part of the DApp that does not interact with the blockchain is written in normal TypeScript.

While resembling TypeScript on the surface, Compact operates as a more constrained language that exists alongside it. Certain core TypeScript features were intentionally omitted to enable the necessary proofs and analyses required by Midnight. Working with Compact is straightforward and does not require extensive mathematical knowledge.

### The testnet Dust (tDUST) token

tDUST is Midnight’s devnet token used by devnet users and developers to pay for transaction fees and to access and use DApps built on the Midnight devnet. tDUST tokens are for devnet use only and do not leave the devnet environment. tDUST tokens may be obtained by a request using the devnet faucet.
The devnet scope: what’s available for early testers?

The initial cohort of Midnight pioneers can experiment with:

- Building data protection smart contracts using the Compact language and compiler. Pioneers can author and compile their own Compact programs and the associated TypeScript or JavaScript client software. They can test their data protection DApps locally, deploy them to devnet and share with other devnet users.
- Storing, managing, and interacting with Midnight assets and DApps directly within the Google Chrome web browser using a Midnight version of the Lace wallet.
- Paying transaction fees and moving shielded devnet tDUST tokens peer-to-peer within devnet.
- Creating ZK proofs and performing ZK computations using the local proof generator software to facilitate the submission of secure transactions and proof data from clients.
- Indexing the Midnight blockchain data to support wallet and DApp functionality using the pub-sub indexer to query data directly from the ledger.
- Writing Midnight DApps in TypeScript and Compact code supported by the Visual Studio Code plugin.

### Community as the driving force of success

The collaborative engagement of the wider community is instrumental in fostering a robust network. Sharing feedback, experiences, and lessons learned not only enriches the development process but also ensures a diverse range of perspectives. At this early stage, the community's involvement holds the key to refining functionalities, identifying potential issues, and exploring creative use cases. By actively participating, the community aids in shaping the network's future, aligning it more closely with the diverse needs and expectations of developers and users alike.