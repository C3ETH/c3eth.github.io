---
title: Tập lệnh Plutus chuỗi chính
date: '2022-10-06 08:48:23 +0000'
lastmod: '2022-10-06 08:48:23 +0000'
draft: 'false'
images: []
---

Chuỗi chính sử dụng các thành phần sau để xử lý các tương tác với chuỗi phụ (sidechain):

- `SidechainTokenMintingPolicy` : chính sách đúc xác thực việc đúc hoặc đốt mã thông báo sidechain (SC_Token) trên chuỗi chính.
- `MPTRootTokenMintingPolicy` : chính sách đúc tiền để lưu trữ các gốc MPT của gói giao dịch chuỗi chéo.
- `CommitteeCandidateValidator` : một địa chỉ tập lệnh cho các ứng cử viên của ủy ban.
- `MPTRootTokenValidator` : địa chỉ tập lệnh để lưu trữ `MPTRootToken` s.
- `CommitteeHashValidator` : một địa chỉ tập lệnh cho hàm băm của các thành viên ủy ban.

Tất cả các chính sách và trình xác thực này đều được tham số hóa bởi các tham số sidechain, cho phép nhận các hàm băm tập lệnh xác thực và chính sách khai thác duy nhất.

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

### 1. Khởi tạo hợp đồng

Để khởi tạo, hãy sử dụng NFT (sử dụng một số UTXO tùy ý) để xác định duy nhất các thành viên ủy ban hiện tại bằng cách lưu trữ hàm băm của các khóa công khai được nối trên chuỗi (xem 6.1). Ủy ban này được sử dụng để xác minh chữ ký cho việc chuyển chuỗi phụ sang chuỗi chính (xem 3.1).

**Quy trình làm việc:**

1. Gọi điểm cuối sidechain khởi tạo để tạo `SidechainParams` cho một sidechain mới.
2. Sử dụng các tham số sidechain đã cho để phần còn lại của các điểm cuối hoạt động với sidechain cụ thể *này* .

**Thông số điểm cuối:**

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

### 2. Chuyển mã thông báo SC_Token từ chuỗi chính sang chuỗi phụ

Mã thông báo SC_Token trên mạng Cardano đại diện cho tài sản gốc bị khóa trên mạng sidechain. Khi một số mã thông báo bị khóa trong một hợp đồng sidechain nhất định, bạn có thể đúc số tiền tương đương trên Cardano. Ngược lại, việc đốt các mã thông báo này trên mạng Cardano (xem 3) sẽ giải phóng các mã thông báo này và gửi chúng cho chủ sở hữu.

**Quy trình làm việc:**

1. Gọi điểm cuối ghi của hợp đồng với BurnParams.
2. Một giao dịch sẽ được gửi tới chuỗi chính ghi số lượng mã thông báo SC_Token được chỉ định và địa chỉ sidechain tương ứng trong trình đổi quà.
3. Thành phần Bridge (quan sát chuỗi chính nơi xử lý chính sách khai thác đã cho) sẽ xác minh giao dịch và tạo giao dịch sidechain thích hợp.

**Thông số điểm cuối:**

```haskell
data BurnParams = BurnParams
  { recipient :: SidechainAddress
    -- ^ 'SidechainAddress' is a type alias for a ByteString (e.g. 0x112233aabbcc)
  , amount :: Integer
  }
```

![plutus-1](https://user-images.githubusercontent.com/10556209/203348515-29b5635d-33fc-4b72-9c0c-d9db0b7ae2b7.png)

*Chuỗi chính đến giao dịch Sidechain (đốt mã thông báo SC_Token)*

### 3. Chuyển mã thông báo SC_Token từ sidechain sang chuỗi chính

**Quy trình làm việc:**

1. Sidechain thu thập các giao dịch chưa được xử lý và nhóm chúng vào cuối mỗi kỷ nguyên sidechain.
2. Các nhà sản xuất khối Sidechain tính toán `txs = outgoing_txs.map(tx => blake2b(cbor(MerkleTreeEntry(tx)))` cho mỗi giao dịch (xem `MerkleTreeEntry` ) và tạo một cây Merkle từ những giao dịch này. Gốc của cây này được ký bởi ít nhất `t` (ngưỡng nhiều chữ ký) của các thành viên ủy ban với sơ đồ chữ ký được nối thêm.
3. Cầu phát Merkle root tới chuỗi.
4. Các giao dịch có thể được yêu cầu riêng lẻ (xem 3.2).

#### 3.1. Chèn gốc Merkle

**Các tham số điểm cuối để chèn gốc Merkle:**

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

Merkle root được lưu trữ trên chuỗi, sử dụng `MPTRootToken` s, trong đó `tokenName` là Merkle root. Các mã thông báo này phải ở địa chỉ tập lệnh `MPTRootTokenValidator` .

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

Chính sách đúc tiền xác minh rằng:

- hàm băm của ủy banPublicKeys khớp với hàm băm được lưu trên chuỗi
- tất cả các chữ ký được cung cấp là hợp lệ
- kích thước (chữ ký) &gt; 2/3 * kích thước (committeePubKeys)
- một danh sách các khóa công khai không chứa các bản sao
- nếu `previousMerkleRoot` được chỉ định, UTXO với roothash đã cho được tham chiếu trong giao dịch dưới dạng đầu vào tham chiếu

Tập lệnh trình xác thực xác minh những điều sau:

- Không thể mở khóa UTXO chứa `MPTRootToken` từ địa chỉ tập lệnh

![plutus2](https://user-images.githubusercontent.com/10556209/203349388-b0f3de16-dcfb-4a2d-b63d-44a2c0daeb6b.png)

*Đúc mã thông báo gốc Merkle*

Cây Merkle phải được xây dựng theo cách chính xác như được thực hiện bằng cách triển khai cây Merkle sau đây. Các mục trong cây nên được tính toán như sau:

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

Chữ ký cho cây Merkle nên được xây dựng như sau:

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

#### 3.2. Yêu cầu cá nhân

**Thông số điểm cuối để xác nhận quyền sở hữu:**

```haskell
data MintParams = MintParams
  { amount :: Integer
  , recipient :: ByteString
  , merkleProof :: MerkleProof
  , index :: Integer
  , previousMerkleRoot:: Maybe ByteString
  }
```

Chính sách đúc tiền xác minh những điều sau:

- Có thể tìm thấy `MPTRootToken` với tên gốc Merkle của giao dịch (được tính toán từ bằng chứng) trong địa chỉ tập lệnh `MPTRootTokenValidator`
- người nhận, số tiền, chỉ mục và MerkleRoot trước đó được kết hợp với merkleProof khớp với merkleRootHash
- `claimTransactionHash` của giao dịch KHÔNG được bao gồm trong bộ phân tán [1](#fn-1)
- một mục nhập mới với `claimTransactionHash` của giao dịch được tạo trong tập hợp phân tán
- giao dịch được ký bởi người nhận
- số tiền khớp với nội dung cơ thể tx thực tế

trong đó `claimTransactionHash` là `blake2(cbor(MerkleTreeEntry))` , xác định duy nhất một giao dịch chuỗi chéo bằng cách trỏ đến cây Merkle và chỉ mục của giao dịch trong cây.

![plutus3](https://user-images.githubusercontent.com/10556209/203349828-bf3db3aa-7032-4578-a7c2-fe06a882dc95.png)

*Sidechain đến giao dịch chuỗi chính (yêu cầu mã thông báo)*

**Người mua lại chính sách khai thác:**

```haskell
data SidechainRedeemer
  = MainToSide ByteString ByteString
  -- ^ Recipient address on the sidechain and the signature of its owner (see 2.)
  | SideToMain MerkleTreeEntry MerkleProof

```

### 4. Đăng ký một ứng cử viên ủy ban

**Quy trình làm việc:**

1. Một SPO đăng ký với tư cách là nhà sản xuất khối (thành viên ủy ban) cho sidechain gửi BlockProducerRegistration và chữ ký của nó (trong đó thông báo đã ký chứa các tham số sidechain, khóa công khai sidechain và UTXO đầu vào ở định dạng CBOR)
2. Cầu giám sát địa chỉ tập lệnh ứng cử viên của ủy ban đang xác thực thông tin đăng nhập SPO, chainId và inputUtxo đã sử dụng

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

### 5. Hủy đăng ký thành viên ủy ban/ứng cử viên

**Quy trình làm việc:**

1. Người gửi ban đầu có thể đổi UTXO với thông tin đăng ký (không phải kiểm tra đầu vàoUtxo)
2. Cầu theo dõi địa chỉ tập lệnh của ứng cử viên ủy ban diễn giải đây là hành động hủy đăng ký

### 6. Bàn giao Ủy ban

Trong quá trình triển khai sidechain hiện tại, việc chèn gốc Merkle (xem 3.1) chỉ có thể xảy ra một lần cho mỗi kỷ nguyên sidechain tại thời điểm bàn giao ủy ban. Sidechain hiển thị một điểm cuối có thể xử lý hành động này, tuy nhiên, việc triển khai cơ bản bị tách rời, vì vậy về lý thuyết, việc chèn gốc Merkle và các hành động Cập nhật hàm băm của Ủy ban có thể được thực hiện độc lập.

Thứ tự của những hành động này là quan trọng. Nếu giao dịch chèn gốc Merkle cho sidechain epoch 1 được gửi *sau khi* ủy ban bàn giao từ `committee of epoch 1` sang `committee of epoch 2` , chữ ký sẽ trở nên không hợp lệ vì nó được ký bởi `committee of epoch 1` . Để giảm thiểu vấn đề này, `Merkle root chain` được giới thiệu; để biết chi tiết, xem 6.2.

#### 6.1 Cập nhật hàm băm của ủy ban

1. Thành phần cầu kích hoạt giao dịch Cardano. Giao dịch này thực hiện như sau:

**Thông số điểm cuối:**

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

Tập lệnh trình xác thực xác minh những điều sau:

- hàm băm của ủy banPublicKeys khớp với hàm băm được lưu trên chuỗi
- tất cả các chữ ký được cung cấp là hợp lệ
- kích thước (chữ ký) &gt; 2/3 * kích thước (committeePubKeys)
- NFT của UTXO giữ khóa xác minh cũ tại địa chỉ tập lệnh
- tiêu thụ UTXO đã đề cập ở trên
- kỷ nguyên sidechain của hàm băm ủy ban mới &gt; kỷ nguyên sidechain của hàm băm ủy ban đã sử dụng utxo
- xuất một UTXO mới với hàm băm của ủy ban được cập nhật có chứa NFT đến cùng một địa chỉ tập lệnh
- tham chiếu đến gốc Merkle cuối cùng được tham chiếu trong giao dịch

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

*Bàn giao ủy ban (cập nhật hàm băm của ủy ban)*

**Đấng cứu chuộc:**

```haskell
data UpdateCommitteeRedeemer = UpdateCommitteeRedeemer
  { signatures :: [ByteString]
  , newCommitteePubKeys :: [SidechainPubKey]
  , committeePubKeys :: [SidechainPubKey]
  , previousMerkleRoot :: Maybe ByteString
    -- ^ last merkle root inserted on chain, unless there is no Merkle root inserted yet
  }
```

Chữ ký được xây dựng như sau:

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

#### 6.2. Chuỗi gốc Merkle

Như được mô tả trong phần 6 'Chuyển giao ủy ban', thứ tự chính xác của việc chèn gốc Merkle và cập nhật hàm băm của ủy ban sẽ không được duy trì. Chuỗi gốc Merkle mới thực hiện điều này. Mỗi gốc Merkle có một tham chiếu đến gốc Merkle trước đó (nếu có), hơn nữa, tất cả các cập nhật hàm băm của ủy ban đều tham chiếu đến gốc Merkle cuối cùng được chèn (nếu có).

![01](https://user-images.githubusercontent.com/10556209/203350794-9c75b2cd-f471-4f51-9e54-0d2d90ac8f07.png)

*Chuỗi gốc Merkle (SC ep = sidechain epoch)*

Như đã thấy trong biểu đồ trên, gốc Merkle đầu tiên không có tham chiếu, điều này hoàn toàn hợp lệ. Sự tồn tại của gốc Merkle cuối cùng không được thực thi.

Trong trường hợp một kỷ nguyên sidechain được thông qua mà không có bất kỳ giao dịch chuỗi chéo nào, thì không có gốc Merkle nào được chèn vào, dẫn đến hai bản cập nhật hàm băm của ủy ban tham chiếu cùng một gốc Merkle.

![02](https://user-images.githubusercontent.com/10556209/203350803-2baca0c8-9b85-458b-a36a-9621d30e5392.png)

*Chuỗi gốc Merkle - kỷ nguyên không có gốc Merkle (SC ep = kỷ nguyên sidechain)*

Trong tương lai, có thể có nhiều gốc Merkle trên mỗi kỷ nguyên sidechain, vì vậy kết quả có thể giống như sau:

![03](https://user-images.githubusercontent.com/10556209/203350806-72c261f7-f0af-41a0-90dd-883c160e96c3.png)

*Chuỗi gốc Merkle - nhiều gốc Merkle trên mỗi kỷ nguyên (SC ep = kỷ nguyên sidechain)*
