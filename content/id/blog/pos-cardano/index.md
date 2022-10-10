---
title: "
Ouroboros dalam Proof of Stake (PoS) Cardano "
date: 2022-01-24T09:19:42+01:00
lastmod: 2022-01-24T09:19:42+01:00
draft: false
weight: 50
images: []
contributors: ["Andre Cahyadi"]
pinned: false
homepage: false

---

Dipublikasikan pada tanggal 24 Jan 2022<br/>
Ditulis oleh andre cahyadi ([@prosperaan](/u/prosperaan))<br/>
Untuk komunitas Cardano Indonesia<br/>
Referensi:<br/>
([Cardano is secure against fake stake attacks - IOHK Blog](https://iohk.io/en/blog/posts/2019/01/29/cardano-is-secure-against-fake-stake-attacks/)) <br/>
([From Classic to Hydra: the implementations of Ouroboros explained - IOHK Blog](https://iohk.io/en/blog/posts/2020/03/23/from-classic-to-hydra-the-implementations-of-ouroboros-explained/)) <br/>
([The Ouroboros path to decentralization - IOHK Blog](https://iohk.io/en/blog/posts/2020/06/23/the-ouroboros-path-to-decentralization/))

**Serangan ‘Stake Palsu’**

Pada tahun 2019, Cardano termasuk salah satu cryptocurrencies yang diidentifikasi oleh US Researchers rentan terhadap serangan ‘fake stake’ atau ‘stake palsu’. Alasannya, karena di saat itu banyak Proof of Stake (PoS) blockchain yang **menggunakan PoSv3, yakni modifikasi code bitcoin untuk menggantikan ‘hashing power’ dengan ‘stake’ dalam menentukan siapa yang berhak memproduksi block** . Di dalam protokol PoS saat ini, kemungkinan terpilih untuk memproduksi block bergantung kepada jumlah stake yang dimiliki oleh user, semakin banyak stake-nya, semakin tinggi juga kesempatan untuk terpilih. **Nah, di** **PoSv3 mengizinkan user menambahkan informasi atau variabel tambahan ke kandidat block yang akan diproduksi, dalam bentuk ‘staking transaction’ (bukan staking yang dikenal saat ini, melainkan hanya untuk mensimulasikan adanya stake di proses itu)** . Hal inilah yang justru menjadi celah keamanan dari ‘fake stake’ atau ‘stake palsu’

Proses validasi block menjadi sulit, karena bukan hanya hash dari block saja yang perlu divalidasi, tetapi juga ‘staking transaction’ yang dilakukan oleh user. Apakah user benar – benar memiliki stake yang dinyatakan di dalam ‘staking transaction’ itu? Untuk memverifikasinya, sebuah node harus mengecek ke histori ledger apakah block yang diproduksi meng-extend (memperpanjang) chain yang sudah ada atau malah membuat fork baru. Oleh karena itu, block di PoSv3 biasanya tidak langsung divalidasi, melainkan ditampung secara parsial terlebih dahulu di memory atau disk. Apabila terjadi serangan dengan banyaknya invalid blocks, maka node bisa kehabisan memory dan crash sebelum memvalidasi block – block tersebut.

**Apa yang dilakukan oleh Cardano?**

Sejak awal, tim IOHK mengambil jalan yang berbeda untuk tidak menggunakan modifikasi code dari bitcoin, melainkan mengandalkan para akademisi dan peneliti untuk membuat protocol baru dan codebase dari scratch. Selain harus menyediakan level keamanan yang sebanding atau lebih baik dari bitcoin, sistem juga harus bergantung sepenuhnya pada stake. **Dari sini, lahirlah protokol Ouroboros (the first provably secure PoS protocol, upon which Cardano is built). Ouroboros sendiri dilambangkan dengan symbol of infinity.**

**Desain Dasar Ouroboros**

1.  Waktu dibagi menjadi bagian - bagian terpisah yang disebut slot.

2.  Slot di-grouping menjadi satu ke dalam periode waktu yang lebih panjang, yang disebut epoch

3.  Setiap memulai sebuah epoch, sistem lottery berjalan untuk menentukan siapa yang akan memproduksi block di setiap slot.

4.  Sistem lottery tidak implisit seperti di mining bitcoin (siapapun yang terlebih dahulu menemukan hash yang tepat, dialah yang menjadi pemenang), melainkan bersifat eksplisit dimana selalu ada generated random number untuk menetukan slot leader di setiap slot

5.  Kesempatan untuk terpilih sebagai slot leader juga bergantung secara proporsional pada jumlah stake yang dimiliki.

6.  Proses validasi block sendiri juga lebih mudah. Setiap node mendapat leader schedule (jadwal siapa saja yang menjadi slot leader di epoch yang sedang berjalan) untuk kemudian mengecek signature-nya begitu block header sudah terbentuk.

**Parameter - Parameter di Ouroboros**

Ouroboros membagi blockchain ke dalam:

1.  Waktu yang terbagi menjadi bagian - bagian terpisah, disebut slot (dalam satuan detik)

2.  Slot - slot yang di-grouping menjadi satu ke dalam periode waktu yang lebih panjang, disebut epoch (dalam satuan hari)

**Setiap epoch dikonfigurasi untuk berjalan selama lima (5) hari.**

\***5 hari → 5 x 24 jam x 3.600 detik = 432.000 detik (432.000 Slot)**

**Satu (1) block yang diproduksi membutuhkan waktu selama satu (1) detik, yang berarti dalam satu (1) epoch ada 432.000 block.**

**Untuk Slot Leader sendiri (dari para SPO), akan dipilih oleh Ouroboros dengan sistem lottery setiap 20 detik, dimana tugas para SPO adalah memvalidasi transaksi – transaksi dan menambahkannya ke dalam block berikutnya untuk kemudian di-input ke chain (inilah yang disebut block mining di PoS).**

**Jadi, dari 20 block yang sudah diproduksi sebelumnya selama 20 detik, hanya ada 1 block yang terpilih dan block – block lainnya tidak di-input ke chain.**

\***432.000 block / 20 detik = 21.600 block (ada 21.600 Slot Leader disini)**

Oleh karena itu, ketika membuka explorer atau tool seperti:

- [Cardano Explorer](https://explorer.cardano.org/en.html)
- [https://pooltool.io/](https://pooltool.io/)
- [https://adapools.org/](https://adapools.org/)
- [https://cardanoscan.io/](https://cardanoscan.io/), biasanya ada informasi sebagai berikut:
  a) Nomor Epoch yang sedang berjalan
  b) Height: Total block yang sudah diproduksi sampai saat ini
  c) Slots: Count up hingga ke angka 432.000
  d) Blocks: Count up hingga ke angka 21.600

**Perkembangan Ouroboros dan Rencana Pengembangan di Masa Depan**

**1) Ouroboros Classic**

Konsepnya sama seperti yang dijelaskan di atas, namun masih ada titik kelemahan yakni terhadap adaptive attackers

**2) Ouroboros BFT**

Ouroboros Byzantine Fault Tolerance, diterapkan ketika era Byron sekaligus persiapan menuju fase desentralisasi di era Shelley.

Di sini, yang memaintain ledger masih federated nodes milik IOHK dan partner.

**3) Ouroboros Praos (yang saat ini berjalan)**

Ouroboros ini mengatasi kelemahan yang ada di Ouroboros Classic terhadap adaptive attackers agar sistem menjadi lebih resilien. Melalui mekanisme private-leader selection dan forward-secure key-evolving signatures (KES), Praos menjamin seorang attacker yang kuat tidak dapat memprediksi siapa yang dapat menjadi Slot Leader berikutnya, untuk melakukan serangan terfokus seperti DDoS yang dapat merusak protokol jaringan.

Praos juga mampu mentoleransi delay dari message yang dikontrol oleh attacker dan gradual corruption stakeholder individu, selama stake yang dikontrol oleh honest participants masih lebih besar dari 51%.

**4) Ouroboros Genesis**

Genesis semakin meningkatkan kemampuan Ouroboros Praos dengan menambahkan sebuah aturan pemilihan chain baru, dimana para partisipan dapat melakukan bootstrap dari genesis block tanpa harus mengecek trusted checkpoints yang ada sebelumnya (trustless joining and participating).

Genesis juga menyediakan kemampuan komposabilitas universal dari protokol jaringan Cardano, dimana protokol dapat interoperable dengan protokol lain dalam real world setting tanpa harus kehilangan fitur keamanannya.

**5) Ouroboros Hydra**

Hydra adalah arsitektur off-chain untuk mendukung throughput transaksi yang tinggi dengan low network latency dan penyimpanan minimal di setiap node. Nantinya, Hydra juga akan memperkenalkan multi-party state channels untuk memproses transaksi – transaksi secara paralel bersamaan sehingga meningkatkan transaction-per-second (TPS) output Cardano secara signifikan dengan konfirmasi yang bersifat instan. State channel ini digambarkan seperti saudara kandung dari ledger, namun dalam bentuk off-chain. Akan ada banyak sekali state channel yang terbentuk nantinya sehingga membuat ledger seperti memiliki banyak ‘kepala’ (mirip dengan binatang mitologi, Hydra).

Dengan Ouroboros Hydra, Cardano mampu untuk scaling secara horizontal dimana performa dapat ditingkatkan cukup dengan menambah node – node baru, bukan secara vertikal yang dilakukan dengan cara membeli hardware baru yang lebih powerful.

Simulasi awal menunjukkan setiap ‘kepala’ Hydra mampu memproses transaksi hingga 1.000 TPS. Dengan 1.000 ‘kepala’, maka dapat mencapai hingga 1.000.000 TPS. Oleh karena itu ketika Ouroboros Hydra diimplementasi, Cardano dapat di-scaling ke level yang tidak dapat ditandingi sebelumnya, misalnya untuk sistem pembayaran global.

**6) Ouroboros Crypsinous, a privacy-preserving PoS (future)**

**7) Ouroboros Chronos, removes the need for a common clock (future)**
