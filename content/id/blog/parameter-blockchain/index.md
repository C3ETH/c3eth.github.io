---
title: "
Parameter – Parameter Blockchain di Cardano "
date: 2022-01-27T09:19:42+01:00
lastmod: 2022-01-27T09:19:42+01:00
draft: false
weight: 50
images: []
contributors: ["Andre Cahyadi"]
pinned: false
homepage: false

---

Dipublikasikan pada tanggal 27 January 2022 <br/>
Ditulis & disadur oleh andre cahyadi ([@prosperaan](https://forum.cardano.org/u/prosperaan)) <br/>
Untuk komunitas Cardano Indonesia <br/>
Referensi:

- [Cardano: robust, resilient – and flexible - IOHK Blog](https://iohk.io/en/blog/posts/2021/10/21/cardano-robust-resilient-and-flexible/)
- [Optimizing Cardano - IOHK Blog](https://iohk.io/en/blog/posts/2021/11/10/optimizing-cardano/)
- [Slow and steady wins the race: network evolution for network growth - IOHK Blog](https://iohk.io/en/blog/posts/2021/11/22/slow-and-steady-wins-the-race-network-evolution-for-network-growth/)
- [Plutus fee estimator: find out the cost of transacting on Cardano - IOHK Blog](https://iohk.io/en/blog/posts/2022/01/21/plutus-fee-estimator-find-out-the-cost-of-transacting-on-cardano/)

Cardano sebagai sistem yang terdesentralisasi harus dapat menjamin proses produksi block yang konsisten sesuai dengan bertumbuhnya penggunaan jaringan (main chain yang semakin bertumbuh) dan menyimpan data – data transaksi secara transparan. Oleh karena itu, menjadi perhatian penting agar setiap block yang baru terbentuk dapat segera terpropagasi ke seluruh jaringan secara aman dan efektif dengan konsumsi sumber daya yang se-efisien mungkin (CPU, memory, storage, dan network). <br/>

Fleksibilitas adalah kunci utama yang telah diterapkan dalam mendesain Cardano agar dapat memenuhi permintaan akan skalabilitas (lihat post [Menggabungkan Formal Method dan Agile Development dalam Membangun Cardano](https://forum.cardano.org/t/menggabungkan-formal-method-dan-agile-development-dalam-membangun-cardano/92810)). Pendekatan dalam mengatur parameter dilakukan sedemikian rupa untuk mengakomodir berbagai macam faktor seperti fluktuasi harga, saturasi jaringan, meningkatnya permintaan, dll. Setiap perubahan parameter yang terjadi dapat diimplementasi tanpa harus melalui sebuah Hard Fork. Dan, seandainya ada perubahan yang sangat signifikan, hal itu dapat dilakukan dengan teknologi Hard Fork Combinator (HFC) dimana sistem yang telah berjalan sebelumnya tetap beroperasi normal tanpa terganggu sama sekali. Inilah yang menjadi pembeda besar dengan blockchain lain sehingga Cardano memiliki ketahanan dan keandalan serta agilitas dalam menyikapi pertumbuhan penggunaan jaringan, dengan beragam use case yang terus berkembang.

#### 1) Throughput (volume of transferred data)

Ukuran block: 64 KB.
Ukuran untuk single Plutus script transaction di-limit di 16 KB.
Ukuran simple transaction biasanya hanya 200-300 Bytes.
Minimal sebuah block dapat menampung 4 jenis transaksi, single Plutus script transaction (smart contract); native tokens; metadata; dan simple transaction seperti payment. Namun, ukuran block dapat diperbesar untuk meningkatkan throughput.

#### 2. Mempool

Ukuran Mempool: 128 KB (2x ukuran block).
Semua transaksi yang terjadi ditampung terlebih dahulu secara temporary di mempool sampai mereka siap diproses dan di-input ke dalam block. Transaksi – transaksi yang pending akan dihapus dari mempool begitu block baru sudah terbentuk. Setelah itu, transaksi – transaksi yang baru bisa ditambahkan lagi ke dalam mempool.

Dengan ukuran mempool yang dibuat tetap seperti ini memungkinan node – node tidak overload ketika periode high demand. Walaupun itu berarti setiap transaksi yang dilakukan dari wallet maupun Dapps harus di-submit kembali.

Hal ini bukan berarti jaringan sedang bersusah payah (struggling), melainkan lebih tepatnya jaringan beroperasi seperti yang sudah direncanakan sebelumnya (graceful degradation).

#### 3. Block Time Budget

Waktu yang tersedia untuk memproses semua transaksi ke dalam sebuah block. Waktu ini dibagi untuk memproses Plutus script dan transaksi – transaksi lainnya.
Block Time Budget di-set sebesar 1 detik (lihat post Ouroboros dalam Proof of Stake (PoS) Cardano 1).
Untuk Plutus script sendiri diberikan jatah waktu sebesar 50 millisecond.

#### 4. Timeliness (block adoption time)

Jaringan harus dapat mendistribusikan (mempropagasi) transaksi dan block yang telah diproduksi ke setiap node yang tersebar di seluruh dunia, agar tercipta konsensus sehingga terverifikasi dan tervalidasi untuk di-input ke dalam blockchain. Hal ini disebut sebagai data diffusion.
Data diffusion time di-set sebesar 5 detik, karena protokol Ouroboros untuk menjamin keamanan jaringan.

#### 5. Plutus Script memory units

Faktor penting bagi para developer DApps agar dapat merancang sophisticated Plutus scripts sehingga mampu memproses banyak input data, meningkatkan concurrency, atau memperluas kapabilitas aplikasinya.
Semakin besar ukuran memory units, semakin besar ukuran transaksi (Bytes), semakin besar pula sumber daya yang dibutuhkan untuk memverifikasi dan memvalidasi transaksinya sehingga fee transaksi juga menjadi semakin besar (lihat post Transaction Fee di Cardano).

Berikut gambar yang diambil dari blog post IOHK terkait perbandingan fee transaksi antara simple transaction dengan Plutus Script transaction (Tx size dalam Bytes):
![Image](https://global.discourse-cdn.com/business4/uploads/cardano/optimized/3X/a/0/a044d6a8887bf9d2308b12f8861c22263013a38c_2_1000x422.jpeg)

Sebuah transaksi di DApps dapat menjalankan 3 transaksi sekaligus dengan Plutus Script seperti contoh berikut:

![Image](https://global.discourse-cdn.com/business4/uploads/cardano/optimized/3X/d/7/d7f19cb6b09dd907d223398d4d011add9c726b33_2_1000x404.jpeg)

Selanjutnya, dari kelima faktor di atas, **Throughput** dan **Timeliness** adalah 2 faktor yang saling tarik menarik, karena:

- Throughput ditingkatkan, ukuran block diperbesar agar block mampu menampung banyak transaksi
- Banyak transaksi yang tertampung seolah – olah jaringan bekerja -dengan cepat (network performance bagus)
- Namun, hal ini menjadi bumerang ketika jaringan sangat sibuk (saturated) yang menyebabkan timeliness delay, karena ukuran block yang besar – besar sehingga waktu propagasi menjadi lebih lama. Proses verifikasi dan validasi ke dalam blockchain pun menjadi terlambat sehingga terbuka celah keamanan disitu.
- Data diffusion time sebesar 5 detik menjadi ‘limit’ budget yang harus diperhatikan ketika akan meningkatkan ukuran block. Hal ini dapat diwujudkan dengan melakukan efisiensi di parameter jaringan yang lain agar ada ruang cukup (headroom) untuk meningkatkan ukuran block sehingga menjadi data diffusion time tetap terjaga.

**Beberapa upgrade parameter yang telah dilakukan (sejak peluncuran DEX)**<br/>
Epoch 306

- Ukuran block ditingkatkan dari 64 KB menjadi 72 KB
- Ukuran Plutus script memory units ditingkatkan dari 10.000.000 menjadi 11.250.000

Epoch 317

- Ukuran Plutus script memory units ditingkatkan dari 11.250.000 menjadi 12.500.000

Epoch 319

- Ukuran block ditingkatkan dari 72 KB menjadi 80 KB
- Ukuran Plutus script memory units ditingkatkan dari 12.500.000 menjadi 14.000.000

Epoch 321

- Ukuran Plutus script memory unit per block ditingkatkan dari 50.000.000 menjadi 56.000.000, yang berarti secara optimal dapat menampung 4 Plutus script transaction yang berukuran 14.000.000

> Catatan: Post ini akan di-update dari waktu ke waktu jika ada perubahan parameter yang sudah diimplementasi
