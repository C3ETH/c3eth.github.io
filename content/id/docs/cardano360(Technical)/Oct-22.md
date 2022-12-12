---
title: "Cardano360 - Oct 22"
date: 2022-10-30T09:19:42+01:00
lastmod: 2022-10-30T09:19:42+01:00
draft: false
weight: 50
images: []
contributors: ["Andre Cahyadi"]
# description: ""
---

Dipublikasikan pada tanggal 30 Oct 2022

Ditulis & disadur oleh andre cahyadi ([@prosperaan](https://forum.cardano.org/u/prosperaan))

Untuk komunitas Cardano Indonesia

Referensi: ([Cardano360 October 2022 - YouTube](https://www.youtube.com/watch?v=hZRwLWKNNfQ))

- Vasil Hard Fork yang telah berjalan selama sebulan ini sudah memberikan dampak yang positif bagi proses transaksi di jaringan Cardano yakni lebih cepat, lebih murah, dan lebih baik. Beberapa catatan dari Dapps:
  - Dquadrant ([https://dquadrant.com/](https://dquadrant.com/)):
    - Biaya transaksi turun sebesar 75%
    - Ukuran transaksi turun hingga lebih dari 90%
  - Muesliswap ([https://muesliswap.com/](https://muesliswap.com/)):
    - Biaya transaksi turun sebesar 50%
    - Ukuran transaksi turun hingga lebih dari 90%
  - Jpg Store ([https://www.jpg.store/](https://www.jpg.store/)):
    - Biaya transaksi turun sebesar 50%
    - Ukuran transaksi turun sebesar 80%

Biaya transaksi yang murah penting, namun ukuran transaksi yang semakin kecil
juga sangat penting karena semakin banyak transaksi yang dapat diproses dalam
suatu waktu yang sama (throughput meningkat)

- Ada wacana untuk mengganti 2 parameter terkait dengan stake pool yaitu
  _**parameter k & minimum cost**_. Saat ini masih dalam tahap diskusi dengan komunitas. Parameter k menentukan saturation point sebuah pool, sedangkan minimum cost adalah biaya minimum tetap (di luar dari pool margin) yang diberikan kepada pool operator terlebih dulu sebelum rewards dibagikan ke para delegator.
  Untuk lebih jelasnya dapat dibaca disini,

1.  [Stake Pool, Transaction Fee, Reserve, Rewards, Treasury, Pledge](https://forum.cardano.org/t/stake-pool-transaction-fee-reserve-rewards-treasury-pledge/92366)
2.  [Stake Pool & Sybil Attack](https://forum.cardano.org/t/stake-pool-sybil-attack/91728)
3.  [Staking parameters and network optimization – where next for ‘k’ and ‘min fee’? | Essential Cardano](https://www.essentialcardano.io/article/staking-parameters-and-network-optimization-where-next-for-k-and-min-fee)

- Saat ini tim developer IOG juga fokus pada pengembangan SECP di Plutus yaitu
  metode enkripsi yang memungkinkan Dapps untuk dapat langsung menulis ke chain. Dapps developer dapat menggunakan crypto primitives ini untuk menghubungkan dan mengintegrasikan Dapps-nya ke chain lain di luar Cardano. Hal ini merupakan salah satu request dari komunitas yang dituangkan ke dalam CIP (Cardano Improvement Proposal). Lebih lengkapnya dapat dilihat disini, [SECP proposal… - cardano-foundation/CIPs@98e19b05 - Cardano Updates](https://cardanoupdates.com/commits/98e19b051a72238445d6bf139597fcd95fc7788d)

Kutipan dari Motivation di balik CIP ini:
_“Signature schemes based on the SECP256k1 curve are common in the blockchain
industry; a notable user of these is Bitcoin. Supporting signature schemes which
are used in other parts of the industry provides an interoperability benefit: we
can verify signatures produced by other systems as they are today, without
requiring other people to produce signatures specifically for us. This not only
provides us with improved interoperability with systems based on Bitcoin, but
also compatibility with other interoperability systems, such as Wanchain and
Renbridge, which use SECP256k1 signatures for verification.”_
