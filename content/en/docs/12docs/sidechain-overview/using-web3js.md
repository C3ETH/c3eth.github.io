---
title : "Using web3.js"
date: 2022-10-06T08:48:23+00:00
lastmod: 2022-10-06T08:48:23+00:00
draft: false
images: []
---

This section shows how to use the web3 Javascript interface with the Cardano EVM sidechain client for application development on the testnet. You can also walk through an example program that demonstrates some sample API calls.

The Ethereum web3.js interface provides many documented API calls. The interface gives you full access to a copy of the Cardano EVM sidechain testnet. You can create a website or client that uses a remote EVM sidechain node to interact with the decentralized blockchain ledger. The web3.js interface is also used to develop smart contracts in the Solidity language.

This example will set up a simple Javascript program to demonstrate the concept. See the end of this page for more information.

## Running a sample application

Follow these steps to create and run a web3.js application that checks the synchronization status and displays the contents of the latest block.

### Set up the file structure

1. Make sure node.js and Yarn are installed. There are plenty of instructional posts on the internet.
2. Create a new directory (its name does not matter) and initialize it. You can use NPM or Yarn. Both NPM and Yarn create the file package.json. At the same time, Yarn also creates yarn.lock, and NPM creates package-lock.json. From here on, the demonstration will use Yarn.

On some systems, you are prompted for information that will be added to package.json. This information will be updated later when the web3 libraries are installed. You can just take the default values.

On Windows:

```bash
   c:\>mkdir web3-example
   c:\>cd web3-example
   c:\web3-example>yarn init
   yarn init v1.22.10 # follow the prompts
```

On Linux:

```bash
user@computername:~$ cd ~
user@computername:~$ mkdir web3-example
user@computername:~$ cd web3-example
user@computername:~/web3-example$ yarn init
yarn init v1.22.10 # follow the prompts
```

On macOS:

```bash
   computerName:~user$ mkdir web3-example
    computerName:~user$ cd web3-example
    computerName:~user$ yarn init
    yarn init v1.22.10 # follow the prompts
```

### Install the web3.js libraries

The web3.js libraries are available as an NPM package, so you can use NPM or Yarn to install them in the directory you just created.

To install using Yarn:

```bash
yarn add web3
```

### Check the contents of package.json

Compare your copy of package.json with this example. Make sure all the keys and values are there.

```json
  {
        "name": "web3-example",
        "version": "1.0.0",
        "main": "index.js",
        "license": "MIT",
        "dependencies": {
            "web3": "^1.3.6"
        },
        "scripts": {
            "start": "node index.js"
        }
    }
```

### Write the Javascript

On all systems, create a file called index.js in the same directory as package.json. Edit it so that it looks like this:

```javascript
    1 const Web3 = require('web3')
    2
    3 let web3 = new Web3(new Web3.providers.HttpProvider("https://faucet.sidechain.evmtestnet.iohkdev.io/"))
    4 web3.eth.getBlock('latest')
    5   .then((response) => {
    6     console.log('LATEST BLOCK:')
    7    console.log(response)
    8 })
    9   .catch((error) => console.error(error))
    10
```

`Index.js` is the Javascript program. Line 1 references the web3.js libraries. Line 2 establishes a connection between this program and the Cardano EVM sidechain node. The block beginning at line 4 retrieves the latest block that the client has downloaded so far.

### Test the program

Check that your connection to the EVM sidechain node on the EVM sidechain testnet is still active by accessing the URL in your browser.

Go to the directory you have created and run the sample program:

```bash
    npm start
```

The result should be similar to this:

```bash
 C:\>
    C:\>cd web3-example

    C:\web3-example>npm start

    > web3-example@1.0.0 start
    > node index.js

    LATEST BLOCK:
    {
    number: 18927,
    hash: '0xc3b738e5230ea385678e798c44bed3a3e180ab77ff9fbba83957d2998dc56ba6',
    parentHash: '0xc7e1b5b5af26534f509fa08a0d689b1d5a42b6623b83527926488d94f820642a',
    nonce: '0xb02bc71c3c8453e5',
    sha3Uncles: '0x1dcc4de8dec75d7aab85b567b6ccd41ad312451b948a7413f0a142fd40d49347',
    logsBloom: '0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000',
    transactionsRoot: '0x56e81f171bcc55a6ff8345e692c0f86e5b48e01b996cadc001622fb5e363b421',
    stateRoot: '0xf4b402fca95bd9791b2a320c61a70666da9655fb49bb61ddbce8d32165e830ed',
    receiptsRoot: '0x56e81f171bcc55a6ff8345e692c0f86e5b48e01b996cadc001622fb5e363b421',
    miner: '0x1Ff7FC39F7F4DC79c5867B9514d0e42607741384',
    difficulty: '1746526',
    totalDifficulty: '29856771326',
    lastCheckpointNumber: '0x0',
    extraData: '0x6d616e74697362713db2265723a81bc76235c7b0dd283f925151025dc87276e4f3d8d9b88a6a3a0bdaafcc872ce2dac7ff5e6ec03fdce58d98f59c08a2e0b545a51a69d6632b1c',
    size: 586,
    gasLimit: 8000000,
    gasUsed: 0,
    timestamp: 1621705043,
    transactions: [],
    uncles: [],
    signature: '62713db2265723a81bc76235c7b0dd283f925151025dc87276e4f3d8d9b88a6a3a0bdaafcc872ce2dac7ff5e6ec03fdce58d98f59c08a2e0b545a51a69d6632b1c',
    signer: 'd8a010f019db37dcaf2e1fb98d4fcbf1f57dbd7e2a7f065e92fbe77dca8b9120d6e79f1617e98fa6134e6af8858ac8f3735b1e70a5708eb14f228080356eb0a7'
    }

    C:\web3-example>
```

The above results were obtained on Windows 10, 64-bit, version 21h2.

### Observe the results

The fields displayed are from the last block synchronized with the local node.

**More information**
For more information about the web3.js API, see this [Read The Docs page](https://web3js.readthedocs.io/en/v1.2.4/web3.html).