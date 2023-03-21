---
title : "Set up development environment"
date: 2022-10-06T08:48:23+00:00
lastmod: 2022-10-06T08:48:23+00:00
draft: false
images: []
---

The EVM sidechain testnet is EVM-compatible with most Ethereum software to develop and deploy smart contracts including:

*   [Remix](#remix)
*   [Hardhat](#hardhat)
*   [Truffle](#truffle)

## Remix


This tutorial will show you how to deploy a Solidity smart contract to the EVM sidechain testnet using Remix. [Remix](https://remix.ethereum.org/) is an online IDE to develop and deploy Solidity smart contracts.

### Prerequisites


In this tutorial, you will use MetaMask as your wallet and Web3 provider. If you have not done so already, [create or import an account with MetaMask](../metamask) and fund your wallet with testnet tokens using the [faucet](https://faucet.sidechain.evmtestnet.iohkdev.io/).

#### Step 1 - Configure Remix


*   Visit the [Remix IDE](https://remix.ethereum.org/). The left-hand side has a menu \[1\] and a typical file explorer \[2\]. The `Solidity Compiler` \[3\] and `Deploy and run transactions` \[4\] plugins should be active by default.

![remix-menu](https://user-images.githubusercontent.com/10556209/200480707-ec8b8e69-6cdc-498b-b315-c029fbc2a564.png)

If the Solidity compiler and deploy plugins are not activated, you can search and activate them using the plugin manager \[5\] located in the bottom left of the screen.

![remix-plugin](https://user-images.githubusercontent.com/10556209/202550289-1cd1e25a-b1c9-4e66-9600-fad710126c8d.png)

Open MetaMask and double-check the sidechain testnet is the selected network. This will ensure Remix connects to the correct network when you configure your environment in the next step.

[![select-network](https://docs.cardano.org/static/ad1e7a421d3729fbbea5d08d7c486758/2ece4/sc-metamask-select-testnet.png)

*   In Remix, select the `Deploy and run transactions` plugin. Since you are using MetaMask as your Web3 provider, select 'Injected Provider' in the environment settings.

#### Step 2 - The smart contract


With Remix configured to the sidechain testnet, you can move on to your smart contract development and deployment.

*   In the Remix file explorer, create an `erc20.sol` file in the `contracts/` directory and input the following Solidity statements:

```haskell
// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";


/**
* @title {Mintable ERC20 Token}
*/
contract MintableERC20 is ERC20("Mintable Token", "MT"), Ownable {
    /**
    * @dev See (ERC20 - _mint) function for details.
    *
    */
    function mint(address to, uint256 amount) external payable onlyOwner() {
        _mint(to, amount);
    }
}
```

This smart contract describes a mintable ERC20 token using the OpenZeppelin ERC20 contract libraries.

#### Step 3 - Compile and deploy


*   Using the `Solidity compiler` plugin \[1\], select 'compile' the smart contract \[2\].

When the contract is compiled, you can view contract ABI, Bytecode, and more information located in 'Compilation Details' \[3\].

![compile-remix](https://user-images.githubusercontent.com/10556209/200576656-dad4c35d-02f7-40ce-8bd1-3e9f8497e302.png)

*   Then, select the `Deploy and run transactions` plugin > select 'Deploy' \[1\] and confirm any MetaMask prompts to sign the transaction. If the deployment is successful, the Remix console should return a green checkmark with expandable details \[2\]. The 'Deployed Contracts' panel will contain the contract address and generate a contract interface to test functions \[3\].

![deploy-remix](https://user-images.githubusercontent.com/10556209/201174327-6be015b2-9003-4f3c-8d70-f376dd1a3a9a.png)

To verify that the smart contract was deployed on the sidechain testnet you can:

*   Search the transaction hash or contract address on the EVM sidechain [testnet explorer](https://explorer.sidechain.evmtestnet.iohkdev.io/).
*   Open MetaMask and see if the contract deployment transaction was successfully signed.
*   Check Remix logs for deployment details.

## HardHat

This tutorial will show you how to deploy a Solidity smart contract to the EVM sidechain testnet using Hardhat. [Hardhat](https://hardhat.org/) is a popular development environment for Ethereum software.

*   [Node.js](https://nodejs.org/en/) version 14 or later.
*   [HardHat](https://hardhat.org/)

### Prerequisites

Hardhat is used in local NPM projects, so you will need NPM 7 or later.

*   Install Node.js version 15 or later using [NVM](https://github.com/nvm-sh/nvm):

```bash
$nvm install 15 --lts
$nvm alias default 15
```

*   Check Node and NPM versions:

```bash
$node -v
v15.14.0
$npm -v
7.7.6
```

#### Step 01 - Create a Hardhat project

This tutorial will create a new NPM project and initialize npx hardhat to bootstrap a sample JavaScript project and configure it to deploy to the sidechain testnet.

*  Create a new project:

```bash
$mkdir Hardhat/
$cd Hardhat/
```

*  Initialize a new NPM project and install Hardhat locally:

```bash
$npm init
$npm install --save-dev hardhat
```

To create the sample JavaScript project, run npx hardhat in your project folder and select Create a JavaScript project.

```bash
$npx hardhat
888    888                      888 888               888
888    888                      888 888               888
888    888                      888 888               888
8888888888  8888b.  888d888 .d88888 88888b.   8888b.  888888
888    888     "88b 888P"  d88" 888 888 "88b     "88b 888
888    888 .d888888 888    888  888 888  888 .d888888 888
888    888 888  888 888    Y88b 888 888  888 888  888 Y88b.
888    888 "Y888888 888     "Y88888 888  888 "Y888888  "Y888

👷 Welcome to Hardhat v2.9.9 👷‍

? What do you want to do? …
❯ Create a JavaScript project
  Create a TypeScript project
  Create an empty hardhat.config.js
  Quit
  ```

### Running tasks

To view all options and commands with your Hardhat project, simply run npx hardhat:

```bash
$ npx hardhat
Hardhat version 2.12.2

Usage: hardhat [GLOBAL OPTIONS] <TASK> [TASK OPTIONS]

GLOBAL OPTIONS:

  --config              A Hardhat config file
  --emoji               Use emoji in messages
  --flamegraph          Generate a flamegraph of your Hardhat tasks
  --help                Shows this message, or a task's help if its name is provided
  --max-memory          The maximum amount of memory that Hardhat can use
  --network             The network to connect to
  --show-stack-traces   Show stack traces (always enabled on CI servers)
  --tsconfig            A TypeScript config file
  --typecheck           Enable TypeScript type-checking of your scripts/tests
  --verbose             Enables Hardhat verbose logging
  --version             Shows hardhat's version


AVAILABLE TASKS:

  check                 Check whatever you need
  clean                 Clears the cache and deletes all artifacts
  compile               Compiles the entire project, building all artifacts
  console               Opens a Hardhat console
  coverage              Generates a code coverage report for tests
  flatten               Flattens and prints contracts and their dependencies
  gas-reporter:merge
  help                  Prints this message
  node                  Starts a JSON-RPC server on top of the Hardhat network
  run                   Runs a user-defined script after compiling the project
  test                  Runs mocha tests
  typechain             Generates Typechain typings for compiled contracts
  verify                Verifies contract on Etherscan

To get help for a specific task run: npx hardhat help [task]
```

#### Step 02 - Configure Hardhat

Our sample JavaScript project contains a hardhat.config.js file. The networks config field is an optional object where network names map to their configuration and we can set accounts we want to sign transactions. For example:

```haskell
require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */

const Private_Key = "INSERT_PRIV_KEY"

module.exports = {
  networks: {
    evm-sidechain: {
        url: `https://faucet.sidechain.evmtestnet.iohkdev.io/`,
        accounts: [`0x${Private_Key}`]
    },
  },
  solidity: "0.8.17",
};
```

#### Step 03 - Compile and deploy

To compile Solidity files in the contracts/ directory of your Hardhat project execute npx hardhat compile:

```bash
$npx hardhat compile
```

Deploying with Hardhat utilizes deployment scripts located in scripts/.

* To deploy with Hardhat, execute the deploy script with evm-sidechain as the network option.

```bash
$npx hardhat run scripts/deploy.js --network evm-sidechain
Greeter deployed to: 0x95E1C8F6C00d8cB518faBA33c8Ae814fc12E3090
```

🎉 Hurray! You deployed your smart contract to EVM sidechain testnet and can search your deployment on the testnet explorer.

## Truffle

This tutorial will show you how to deploy a Solidity smart contract to the EVM sidechain testnet using Truffle. [Truffle](https://trufflesuite.com/truffle/) is a popular development framework for EVM-based applications.

### Prerequisites

Install the following dependencies:

* [Node.js](https://nodejs.org/en/) LTS version.
* [Truffle Suite](https://trufflesuite.com/truffle/)

Check Node.js and NPM are installed:

```bash
$node --version
$npm --version
```

Install Truffle and check whether it installed:\

```bash
$npm install -g truffle
$truffle version
```

#### Step 1 - Configure Truffle

You need to create a Truffle project before configuring Truffle to deploy on the EVM sidechain testnet. This demonstration will use the [React Truffle Box](https://trufflesuite.com/boxes/react/).

Create a new project directory for your Truffle project and unbox the React Truffle Box:

```bash
$mkdir React-Truffle
$cd React-Truffle
$truffle unbox react
```

Configure Truffle to use the EVM sidechain testnet by adding the following in `React-Truffle/truffle/truffle-config.js` > Line 45. Remove the comment on Line 25.
Replace `YOUR_SEED_PHRASE` with your mnemonic phrase.

#### Step - Truffle Migrate

At this point, you've defined the EVM sidechain testnet and your testnet account to sign smart contract deployments. You are now ready to deploy!

Within the `truffle/` directory of our project, execute `truffle migrate` while passing `evm-sidechain` for the `--network parameter`:

```bash
$truffle migrate --network evm-sidechain
```

Upon executing `truffle migrate`, Truffle will return the transaction hash and contract address which can be searched on the EVM sidechain [testnet explorer](https://explorer.sidechain.evmtestnet.iohkdev.io/).