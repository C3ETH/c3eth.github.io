---
title: 'Zero-knowledge demystified'
date: 2020-10-06 08:48:23 +0000
lastmod: 2020-10-06 08:48:23 +0000
draft: false
images: []
---

## Learn how Midnight protects users’ data using zero-knowledge technology

Frequent data breaches have revealed stark vulnerabilities in data protection, both for individuals and organizations. Zero-knowledge (ZK) technology provides a great solution, prioritizing user empowerment and data protection while removing intermediary control. However, mastering blockchain and cryptography complexities while complying with local regulations can be still challenging.

Midnight provides the tools to build DApps that provide data protection for users and entrepreneurs, striking a balance between data disclosure and legal protection. Midnight’s features empower users to conduct commercial transactions with minimal risk of data misuse, fostering compliance with data protection laws and protecting user data from leakage.

Midnight achieves this by utilizing ZK technology. Read on to learn more about ZK – the underlying tech driving Midnight’s data protection capabilities.

## What is zero-knowledge technology?

ZK is a method of verifying information without actually revealing it. Midnight uses ZK to enhance privacy, security, and scalability of blockchain operations by enabling confidential transactions and smart contracts, and secure data management.

ZK involves two parties: a prover and a verifier. The prover holds confidential information they don’t want to disclose, yet they can produce evidence to the verifier that certain statements with regard to this information are true without sharing the actual information. For this, the system generates a zero-knowledge proof (ZKP) as validation.

### An example of using a ZKP

Imagine a situation where you need to prove a medical condition you have, without revealing any private details. This situation could come up in scenarios like applying for insurance or disclosing health information to an employer. With ZKPs, you can generate evidence that your medical condition is valid, without sharing any personal information.

For example, let's say you're applying for health insurance. The insurance company needs to verify your pre-existing medical condition to determine your coverage. Instead of exposing all your medical history, an application would use ZKPs to create a proof that only confirms the existence of the condition. This proof is then shared with the insurer, who can validate its authenticity without knowing the exact details of your ailment.

In this way, ZKPs ensure that you can establish the truth about your medical condition without compromising your privacy. This same principle applies to various other situations where you need to prove something without disclosing personal information.

## Zero-knowledge proofs explained

There are different types of ZKPs, which differ in performance and cryptographic assumptions. Zero-knowledge succinct non-interactive arguments of knowledge (ZK Snarks) and succinct transparent arguments of knowledge (ZK Starks) are some of the most popular proof systems in blockchain.

ZK Snarks are efficient proofs in terms of their size and verification time. They can conceal the data used to generate the proof, which provides efficiency, strong security guarantees, and data protection. ZK Starks require only a trusted hash function during setup, which offers benefits in terms of security and prover running time, but can result in performance overhead with respect to the proof size and verifier.

Midnight utilizes ZK Snarks as the most appealing proof system for verifiers due to its combination of efficiency with robust security settings.

## How do ZK Snarks work?

Because ZK Snarks are non-interactive arguments of knowledge, they allow a prover to demonstrate the truth of a statement without the need for ongoing interaction with a verifier. This enables the prover to generate a compact proof that can be independently validated by the verifier, without revealing any sensitive information. Proof generation and verification involve intricate mathematical operations and structures, such as elliptic curve pairings and advanced algebraic techniques.

The high-level process looks as follows:

<image src='https://cdn.sanity.io/images/330xhmya/production/403fc22c1ca16fc018a0509fb0b35025cd486dcb-1920x1080.jpg?w=3840'/><br/>

Here is a more detailed explanation of how ZK Snarks work:

- **Setup phase**. Similar to other cryptographic protocols, ZK Snarks begin with a setup phase by establishing certain parameters, the generation of public proving and verifying keys, for example. These parameters play a crucial role in the security and functioning of the scheme.
- **Key components**. ZK Snarks involve several key components, including elliptic curve pairings (mathematical structures used in cryptography to secure data) and specialized hash functions (tools that transform data into fixed-size values, like a unique digital fingerprint of information). These components contribute to the creation of succinct and highly efficient proofs. Think of those as puzzle pieces that fit together perfectly to create proofs that are short and efficient.
- **Circuit construction**. Imagine building a road with different signs and paths. Circuit construction is like a roadmap with a mathematical representation of the problem to be solved translated into an arithmetic circuit. This circuit encompasses various operations and constraints related to the statement being proven.
- **Witness and proof generation**. The prover, who possesses a secret (the ‘witness’) related to the statement, constructs a ZK Snarks proof. This involves a series of cryptographic operations combined with the circuit's constraints and the public parameters from the setup phase. The result is a compact proof, attesting to the statement's truth without revealing any details about the witness.
- **Verification**. The verifier, armed with the proof, the public parameters, and the original statement, can now efficiently verify the proof's validity. This process involves mathematical computations that confirm the proof's correctness, ensuring that the prover indeed possesses the correct witness for the statement.

## What are the benefits of ZK Snarks in Midnight?

The use of ZK Snarks in Midnight provides users with the following benefits:

<image src="https://cdn.sanity.io/images/330xhmya/production/772f3105ddaa86e1f9644ea209f424e766890c4b-1920x1080.jpg?w=3840"/><br/>

## Use cases

ZK Snarks support different use cases (non-exhaustive):

#### Data protection

**Confidential smart contracts and payments**

- secure execution of confidential smart contracts
- compliance with predefined rules while safeguarding sensitive information
- seamless integration of confidential payments for multi-assets and NFTs with smart contracts

**Data management**

- validation of user data without sharing it
- protected user identities and data authenticity

**Voting**

- secure and confidential voting processes
- proven eligibility without revealing identities or preferences
- governance integrity, reducing risks of coercion or manipulation

#### Scalability

**Blockchain oracles**

- reduced verification costs by aggregating data from multiple sources
- optimized on-chain data storage by including only aggregated values and proofs

**Light clients**

- verified transaction and data correctness without downloading the entire blockchain
- improved efficiency and scalability
- data integrity with reduced computational overhead

#### Interoperability

**Sidechains**

- interoperability between chains without compromising security
- seamless cross-chain transactions through chain-pegging configurations
- one chain can act as a light client to verify transactions on the other chain
- enhanced scalability and efficiency by avoiding full verification of the entire chain

## How Midnight implements ZK Snarks

Midnight implements ZK Snarks in Zswap and Kachina transaction protocols. These protocols preserve confidential data and smart contract development methods that facilitate concurrency and security for transactions involving assets and the exchange of value.