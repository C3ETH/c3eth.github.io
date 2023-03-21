---
title: Main chain Plutus scripts
date: '2022-10-06 08:48:23 +0000'
lastmod: '2022-10-06 08:48:23 +0000'
draft: 'false'
images: []
---

Chuỗi chính sử dụng các thành phần sau để xử lý các tương tác với chuỗi phụ (sidechain):

- `SidechainTokenMintingPolicy`: a minting policy that validates the minting or burning of sidechain tokens (SC_Token) on the main chain.
- `MPTRootTokenMintingPolicy`: a minting policy for storing cross-chain transaction bundles' MPT roots.
- `CommitteeCandidateValidator`: a script address for committee candidates.
- `MPTRootTokenValidator`: a script address for storing `MPTRootToken`s.
- `CommitteeHashValidator`: a script address for the committee members' hash.

All of these policies and validators are parameterized by the sidechain parameters, which allows getting unique minting policy and validator script hashes.

```haskell
data SidechainParams = SidechainParams
  { chainId :: Integer
  , genesisHash :: GenesisHash
    -- ^ 'GenesisHash' is a type alias for ByteString
  , genesisMint :: Maybe TxOutRef
    -- ^ 'genesisMint' is an arbitrary 'TxOutRef' used in the Passive Bridge setup, where
    -- SC_Token minting can only happen once. This parameter will be removed in the final product.
  , genesisUtxo :: TxOutRef
    -- ^ 'genesisUtxo' is an arbitrary 'TxOutRef' used to identify internal
    -- 'AssetClass's (e.g. see [6.](#6-update-committee-hash)) of the
    -- sidechain
  }
```

### 1. Initialize a contract

For initialization, use an NFT (consuming some arbitrary UTXO) to uniquely identify the current committee members by storing the hash of the concatenated public keys on the chain (see 6.1). This committee is used to verify signatures for sidechain to main-chain transfers (see 3.1).

**Workflow:**

1. Call the initialize sidechain endpoint to generate the `SidechainParams` for a new sidechain.
2. Use the given sidechain parameters for the rest of the endpoints to work with *this* particular sidechain.

**Endpoint parameters:**

```haskell
data InitSidechainParams = InitSidechainParams
  { initChainId :: Integer
  , initGenesisHash :: GenesisHash
    -- ^ 'GenesisHash' is a type alias for ByteString
  , initUtxo :: TxOutRef
    -- ^ 'initUtxo' is used for creating the committee NFT
  , initCommittee :: [PubKey]
    -- ^ 'initCommittee' is the initial committee of the sidechain
  , initSidechainEpoch :: Integer
    -- ^ 'initSidechainEpoch' is the initial sidechain epoch of the sidechain
  , initMint :: Maybe TxOutRef
    -- ^ 'initMint' is used in the Passive Bridge only, and will be removed in the final product
  }
```

### 2. Transfer SC_Token tokens from the main chain to the sidechain

SC_Token tokens on the Cardano network represent locked native assets on the sidechain network. When some tokens are locked on a certain sidechain contract, you can mint the equivalent amount on Cardano. Conversely burning these tokens on the Cardano network (see 3) will release these tokens and send them to the owner.

**Workflow:**

1. Call the burn endpoint of the contract with BurnParams.
2. A transaction will be submitted to the main chain burning the specified amount of SC_Token tokens and the corresponding sidechain address in the redeemer.
3. The Bridge component (observing the main chain where the given minting policy is handled) will verify the transaction and create an appropriate sidechain transaction.

**Endpoint parameters:**

```haskell
data BurnParams = BurnParams
  { recipient :: SidechainAddress
    -- ^ 'SidechainAddress' is a type alias for a ByteString (e.g. 0x112233aabbcc)
  , amount :: Integer
  }
```

![plutus-1](https://user-images.githubusercontent.com/10556209/203348515-29b5635d-33fc-4b72-9c0c-d9db0b7ae2b7.png)

*Main chain to Sidechain transaction (burning SC_Token tokens)*

### 3. Transfer SC_Token tokens from the sidechain to the main chain

**Workflow:**

1. Sidechain collects unhandled transactions and bundles them at the end of each sidechain epoch.
2. Sidechain block producers compute `txs = outgoing_txs.map(tx => blake2b(cbor(MerkleTreeEntry(tx)))` for each transaction (see `MerkleTreeEntry`), and create a Merkle-tree from these. The root of this tree is signed by at least `t` (multisig threshold) of the committee members with an appended signature scheme.
3. Bridge broadcasts Merkle root to the chain.
4. Transactions can be claimed individually (see 3.2).

#### 3.1. Merkle root insertion

**Endpoint parameters for Merkle root insertion:**

```haskell
data SaveRootParams = SaveRootParams
  { sidechainParams :: SidechainParams
    -- ^ Parameters identifying the Sidechain
  , merkleRoot :: ByteString
  , previousMerkleRoot :: Maybe ByteString
    -- ^ Chaining the Merkle roots to ensure ordering. The first root will have Nothing here.
  , committeeSignatures :: [(SidechainPubKey, Maybe ByteString)]
    -- ^ Public keys of all committee members with their corresponding signatures if there's one
  }
```

Merkle roots are stored on-chain, using `MPTRootToken`s, where the `tokenName` is the Merkle root. These tokens must be at the `MPTRootTokenValidator` script address.

**Redeemer:**

```haskell
data SignedMerkleRoot = SignedMerkleRoot
  { merkleRoot :: ByteString
  , previousMerkleRoot :: Maybe ByteString -- Last Merkle root hash
  , signatures :: [ByteString] -- Current committee signatures ordered as their corresponding keys
  , beneficiary :: SidechainAddress
  , committeePubKeys :: [SidechainPubKey] -- Lexicographically sorted public keys of all committee members
  }

```

A minting policy verifies that:

- the hash of committeePublicKeys matches the hash saved on-chain
- all the provided signatures are valid
- size(signatures) &gt; 2/3 * size(committeePubKeys)
- a list of public keys does not contain duplicates
- if `previousMerkleRoot` is specified, the UTXO with the given roothash is referenced in the transaction as a reference input

A validator script verifies the following:

- UTXOs containing an `MPTRootToken` cannot be unlocked from the script address

![plutus2](https://user-images.githubusercontent.com/10556209/203349388-b0f3de16-dcfb-4a2d-b63d-44a2c0daeb6b.png)

*Merkle root token minting*

The Merkle tree has to be constructed in the exact same way as it is done by the following Merkle tree implementation. Entries in the tree should be calculated as follows:

```haskell
data MerkleTreeEntry = MerkleTreeEntry
  { index :: Integer -- 32 bit unsigned integer, used to provide uniqueness among transactions within the tree
  , amount :: Integer -- 256 bit unsigned integer that represents amount of tokens being sent out of the bridge
  , recipient :: ByteString -- arbitrary length bytestring that represents decoded bech32 cardano address
  , previousMerkleRoot :: Maybe ByteString -- previousMerkleRoot is added to make sure that the hashed entry is unique
  }
```

```haskell
entry = blake2b(cbor(MerkleTreeEntry))
```

Signatures for Merkle tree should be constructed as follows:

```haskell
data MerkleRootInsertionMessage = MerkleRootInsertionMessage
  { sidechainParams :: SidechainParams
    -- ^ Parameters identifying the Sidechain
  , merkleRoot :: ByteString
  , previousMerkleRoot :: Maybe ByteString
  }
```

```haskell
signature = ecdsa.sign(data: blake2b(cbor(MerkleRootInsertionMessage)), key: committeeMemberPrvKey)
```

#### 3.2. Individual claiming

**Endpoint parameters for claiming:**

```haskell
data MintParams = MintParams
  { amount :: Integer
  , recipient :: ByteString
  , merkleProof :: MerkleProof
  , index :: Integer
  , previousMerkleRoot:: Maybe ByteString
  }
```

A minting policy verifies the following:

- `MPTRootToken` with the name of the Merkle root of the transaction (calculated from from the proof) can be found in the `MPTRootTokenValidator` script address
- recipient, amount, index and previousMerkleRoot combined with merkleProof match against merkleRootHash
- `claimTransactionHash` of the transaction is NOT included in the distributed set[1](#fn-1)
- a new entry with the `claimTransactionHash` of the transaction is created in the distributed set
- the transaction is signed by the recipient
- the amount matches the actual tx body contents

where the `claimTransactionHash` is a `blake2(cbor(MerkleTreeEntry))`, uniquely identifying a cross-chain transaction by pointing to a Merkle tree and the index of the transaction in the tree.

![plutus3](https://user-images.githubusercontent.com/10556209/203349828-bf3db3aa-7032-4578-a7c2-fe06a882dc95.png)

*Sidechain to main chain transaction (claiming tokens)*

**Minting policy redeemer:**

```haskell
data SidechainRedeemer
  = MainToSide ByteString ByteString
  -- ^ Recipient address on the sidechain and the signature of its owner (see 2.)
  | SideToMain MerkleTreeEntry MerkleProof

```

### 4. Register a committee candidate

**Workflow:**

1. An SPO registering as a block producer (commitee member) for the sidechain sends BlockProducerRegistration and its signature (where the signed message contains the sidechain parameters, sidechain public key and the input UTXO in CBOR format)
2. The Bridge monitoring the committee candidate script address is validating the SPO credentials, chainId, and the consumed inputUtxo

**Mốc thời gian:**

```haskell
data BlockProducerRegistration = BlockProducerRegistration
  { bprSpoPubKey :: PubKey -- own public key
  , bprInputUtxo :: TxOutRef -- a UTXO that must be spent with the transaction
  , bprSidechainPubKey :: ByteString -- public key in the sidechain's desired format
  , bprSpoSignature :: Signature -- Signature of the SPO private key
  , bprSidechainSignature :: ByteString -- Signature of the sidechain private key
  }
```

### 5. Deregister a committee member/candidate

**Workflow:**

1. The UTXO with the registration information can be redeemed by the original sender (doesn't have to check the inputUtxo)
2. The Bridge monitoring the committee candidate script address interprets this as a deregister action

### 6. Committee handover

In the current implementation of the sidechain, a Merkle root insertion (see 3.1) can only occur once per sidechain epoch at the time of the committee handover. The sidechain exposes an endpoint which can handle this action, however the underlying implementation is detached, so in theory, the Merkle root insertion and Committee Hash Update actions could be done independently.

The order of these actions is important. If the transaction inserting the Merkle root for sidechain epoch 1 gets submitted *after* the committee handover from `committee of epoch 1` to `committee of epoch 2` transaction, the signature would become invalid, since it is signed by the `committee of epoch 1`. To mitigate this issue, the `Merkle root chain` is introduced; for details see 6.2.

#### 6.1 Update a committee hash

1. Bridge component triggers the Cardano transaction. This transaction does the following:

**Endpoint params:**

```haskell
data UpdateCommitteeHashParams = UpdateCommitteeHashParams
  { newCommitteePubKeys :: [SidechainPubKey]
    -- ^ The public keys of the new committee.
  , committeeSignatures :: [(SidechainPubKey, Maybe ByteString)]
    -- ^ Public keys of all committee members with their corresponding signatures if there's one
  , sidechainParams :: SidechainParams
    -- ^ Parameters identifying the Sidechain
  , previousMerkleRoot :: Maybe ByteString
    -- ^ last merkle root inserted on chain, unless there is no Merkle root inserted yet
  , sidechainEpoch :: Integer
    -- ^ sidechain epoch of the new committee
  }
```

Validator script verifies the following:

- the hash of committeePublicKeys matches the hash saved on chain
- all the provided signatures are valid
- size(signatures) &gt; 2/3 * size(committeePubKeys)
- the NFT of the UTXO holding the old verification key at the script address
- consumes the above mentioned UTXO
- sidechain epoch of the new committee hash &gt; sidechain epoch of the consumed committee hash utxo
- outputs a new UTXO with the updated committee hash containing the NFT to the same script address
- reference to the last Merkle root is referenced in the transaction

**Mốc thời gian:**

```haskell
data UpdateCommitteeHash = UpdateCommitteeHash
  { committeePubKeysHash :: ByteString
    -- ^ Hash of all lexicographically sorted public keys of the current committee members
  , sidechainEpoch :: Integer
    -- ^ sidechain epoch of the committee
  }
```

```haskell
committeePubKeys = sort([key1, key2, ..., keyN])
committeePubKeysHash = blake2b(concat(committeePubKeys))
keyN - 33 bytes compressed ecdsa public key of a committee member
```

![plutus4](https://user-images.githubusercontent.com/10556209/203350359-da10a8f5-be3c-4d55-b235-10b3919e58a0.png)

*Committee handover (updating committee hash)*

**Redeemer:**

```haskell
data UpdateCommitteeRedeemer = UpdateCommitteeRedeemer
  { signatures :: [ByteString]
  , newCommitteePubKeys :: [SidechainPubKey]
  , committeePubKeys :: [SidechainPubKey]
  , previousMerkleRoot :: Maybe ByteString
    -- ^ last merkle root inserted on chain, unless there is no Merkle root inserted yet
  }
```

Signatures are constructed as follow:

```bash
SidechainPubKey - 33 bytes compressed ecdsa public key
```

```haskell
data UpdateCommitteeMessage = UpdateCommitteeMessage
  { sidechainParams :: SidechainParams
  , newCommitteePubKeys :: [SidechainPubKey] -- sorted lexicographically
  , previousMerkleRoot :: Maybe ByteString
    -- ^ last Merkle root inserted on chain (Merkle root for the last sidechain epoch)
  , sidechainEpoch :: Integer
    -- ^ sidechain epoch of the newly registered committee
  }
```

```haskell
signature = ecdsa.sign(data: blake2b(cbor(UpdateCommitteeMessage)), key: committeeMemberPrvKey)
```

#### 6.2. Merkle root chaining

As described in section 6 'Committee handover', the correct order of Merkle root insertions and committee hash updates mut be maintained. A new Merkle root chain does this. Each Merkle root has a reference to its predecessor (if one exists), furthermore all committee hash updates reference the last Merkle root inserted (if one exists).

![01](https://user-images.githubusercontent.com/10556209/203350794-9c75b2cd-f471-4f51-9e54-0d2d90ac8f07.png)

*Merkle root chaining (SC ep = sidechain epoch)*

As seen in the graph above, the first Merkle root has no reference, which is completely valid. The existence of the last Merkle root is not enforced.

In case a sidechain epoch passed without any cross-chain transactions, no Merkle root is inserted, resulting in two committee hash updates referencing the same Merkle root.

![02](https://user-images.githubusercontent.com/10556209/203350803-2baca0c8-9b85-458b-a36a-9621d30e5392.png)

*Merkle root chaining - epoch without Merkle root (SC ep = sidechain epoch)*

In the future, there may be multiple Merkle roots per sidechain epoch, so the result could look like the following:

![03](https://user-images.githubusercontent.com/10556209/203350806-72c261f7-f0af-41a0-90dd-883c160e96c3.png)

*Merkle root chaining - multiple Merkle roots per epoch (SC ep = sidechain epoch)*
