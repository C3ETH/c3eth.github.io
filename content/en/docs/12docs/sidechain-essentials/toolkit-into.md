---
title : "Sidechain Toolkit Introduction"
date: 2022-10-06T08:48:23+00:00
lastmod: 2022-10-06T08:48:23+00:00
draft: false
images: []
---

![sidechain-toolkit-enviorment-pic](https://user-images.githubusercontent.com/10556209/204818497-7c27e2fb-46c3-41fd-bf60-a47b0926ad9b.png)

The Sidechain Toolkit is a set of components and recommendations to extend Cardano. The toolkit allows blockchain developers to deploy customizable solutions that fit their technical and social needs. The toolkit is composed of three main components:

Main-chain Plutus scripts
-------------------------

Plutus scripts deployed on the Cardano main chain define the flow of a particular sidechain. These scripts are the beginning of the initialization of a sidechain containing Plutus scripts for block producer candidate registrations, minting policies of the sidechain’s token, and moving tokens functions.

Chain follower
--------------

The chain follower is capable of observing the state of main-chain events that govern the sidechain and is able to communicate those events to the sidechain. Version 1 of the toolkit currently uses a Cardano DB Sync instance to accommodate this.

Sidechain specific module
-------------------------

This component is a part of the sidechain node validator. It has the responsibility to filter and transform data coming from the chain follower and present them to the components that will process them accordingly to the governing rules of the sidechain technical specification.

Technical specification
-----------------------

The Cardano sidechain client specification is a detailed document describing the architecture, use cases, and implementation of the sidechain components. The example EVM implementation is the design and engineering result that showcases a possible implementation of the said specification.

[Read technical specification](https://github.com/input-output-hk/sidechains-tooling/releases/tag/technical_spec_1.0)

