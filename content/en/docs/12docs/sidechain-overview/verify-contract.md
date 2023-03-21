---
title : "Use block explorer to verify a contract"
date: 2022-10-06T08:48:23+00:00
lastmod: 2022-10-06T08:48:23+00:00
draft: false
images: []
---

## What is verification?

Verification of a smart contract does two things:

* It assures you that the copy of a smart contract on the blockchain matches your source code
* It makes the source code of your smart contract available to all other users of the same blockchain explorer.
As a consequence of verification, you provide transparency and reassurance to the users of your smart contract.

## Note

In the initial release of the Cardano sidechains toolkit, the contract verification functionality in the EVM sidechain testnet block explorer is deprecated. The functionality will be restored in a subsequent release and this disclaimer will be removed when that is done.

## Prerequisites

You need access to the source code of the contract before you start. This can be in the form of flattened source code, Standard Input JSON, or Vyper source.

There are several publicly available products to flatten source code; that is to incorporate all included files into one file.

## Accessing the block explorer

From any supported browser, go to the URL <https://explorer.sidechain.evmtestnet.iohkdev.io/>.

The main screen shows the current head of the chain.

## Block explorer main screen

![Block explorer main screen with transaction calls](https://docs.cardano.org/static/23aa9e85f1c5132eb6204ec7f00d6713/e3189/01_main_screen.png)

In the above image of the block explorer, note the hash of the top transaction call.

## Detail screen

When clicking on the hash of a transaction, you will see its details:

![Transaction call details](https://docs.cardano.org/static/e47ec3502f0c24075ac56a8f944a29e2/e3189/02_transaction_call_details.png)

You can see the status of the transaction (success or failure) and the smart contract it was executed against (if the transaction is a smart contract call).

## Contract page

Click on the contract address (labeled either To: `[Contract 0x.... created]` or `Interacted With 0x...`)

![Contract details](https://docs.cardano.org/static/3cc47fbd4f722c9a3d08766ec3bca3a3/e3189/02_1_contract_details.png)

## Code tab

On this page, after scrolling down you can see tabs, one of them being 'Code'. Clicking it will show known code if it exists, or raw bytes of the contract if the source is not known.

![Code tab](https://docs.cardano.org/static/cd99bae61fc222fed5d34895dc5f7449/e3189/02_1_code_tab.png)

## Verifying a contract

In the first row of the code tab, there is a link to verify the contract.

![Image of the verification page](https://docs.cardano.org/static/7c4e2f8a1163202811d1a46f61f16eca/e3189/04-and-03_verification_page.png)

You can choose to verify using one of these methods:

* Via flattened source code
* Via Standard Input JSON
* Vyper contract

Other verification methods may be added later.

The next two images show the contract verification form:

![form 1](https://docs.cardano.org/static/d710f3badc85d6a12cbe5b9ec8f63377/e3189/05_contract_form_1.png)

![form 2](https://docs.cardano.org/static/1ad6a81b45413f96617b85c973254bb0/e3189/06_contract_form_2.png)

After the forms have been completed and submitted, you will see the results of the verification, eg:

![filling](https://docs.cardano.org/static/98fa9f8bb5086a8604e4898a6cf4ae0b/e3189/07_after_filling_forms.png)

Now the smart contract can be inspected by any other user of the block explorer.