---
title : "Creating a local testnet"
date: 2022-10-06T08:48:23+00:00
lastmod: 2022-10-06T08:48:23+00:00
draft: false
images: []
---

A local testnet enables developers and projects building on Cardano to test new features or functionality prior to deployment on global testnet environments. While preview and pre-production environments benefit the wider developer community, a local testnet allows the execution of a hard fork in your own setup and subsequent testing of DApp behavior.

There are several possible solutions to create a local testnet. These include the use of Plutip (a tool for private network creation) or Nix (a tool for package management and system configuration).

## Creating a local testnet using Plutip


[Plutip](https://github.com/mlabs-haskell/plutip), a tool developed on the Cardano blockchain, facilitates the creation of a private network to run Plutus contracts on.

Plutip can be used in two different ways:

*   One option is to use the Plutip tool with a setup that provides an executable for starting a private network and setting up some funded wallets. See [this tutorial](https://github.com/mlabs-haskell/plutip/tree/master/local-cluster).
*   Another option is to use a separate branch of Plutip, which provides a modified setup for hard forks and instructions on how to execute them. See [this tutorial](https://github.com/mlabs-haskell/plutip/blob/vasil-local-cluster-cabal-build/vasil-hardfork.md).
*   The third option is to run Plutip with cardano-transaction-lib, which provides a declarative interface to local clusters for using in test suites. See [this tutorial](https://github.com/Plutonomicon/cardano-transaction-lib/blob/develop/doc/plutip-testing.md).

_Tutorials referenced above are created by the MLabs team._

## Creating a local testnet using Nix


Another possible option is to spin up a local testnet using Nix. For more information, learn about the [packaging principles](https://github.com/input-output-hk/cardano-world/blob/master/docs/explain/packaging-principles.md), and see how to [create a local testnet using Nix](https://github.com/input-output-hk/cardano-world/blob/master/docs/explain/create-testnet.md).