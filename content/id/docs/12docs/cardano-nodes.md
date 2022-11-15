---
title: "Node Cardano"
description: "Node Cardano"
lead: ''
date: 2020-10-06T08:48:23+00:00
lastmod: 2020-10-06T08:48:23+00:00
draft: false
images: []
---

[Node Cardano](https://docs.cardano.org/cardano-components/cardano-node) adalah komponen tingkat atas dalam jaringan. Node jaringan terhubung satu sama lain di dalam lapisan jaringan, yang merupakan kekuatan pendorong untuk menyampaikan persyaratan pertukaran informasi. Ini termasuk difusi blok baru dan informasi transaksi untuk membangun aliran data yang lebih baik. Node Cardano memelihara koneksi dengan rekan yang telah dipilih melalui proses pemilihan seleksi peer. Dengan menjalankan node Cardano, Anda berpartisipasi dan berkontribusi ke jaringan.

## Bagaimana cara kerjanya?

*[Stake pools]* (https://docs.cardano.org/learn/stake-pools) menggunakan node Cardano untuk memvalidasi bagaimana pool berinteraksi dengan jaringan dan bertanggung jawab untuk pemrosesan transaksi dan produksi blok. Mereka bertindak sebagai node server andal yang memegang dan memelihara gabungan stake berbagai pemangku kepentingan dalam satu entitas.

### Memproduksi blok

Tujuan teknologi blockchain adalah menghasilkan rantai catatan (blok) yang dapat diverifikasi secara independen dan terhubung secara kriptografis. Jaringan produsen blok bekerja untuk memajukan blockchain secara kolektif. Protokol *[konsensus]* (https://docs.cardano.org/core-concepts/consensus-explained) memberikan transparansi dan memutuskan blok kandidat mana yang harus digunakan untuk memperpanjang rantai.

Transaksi valid yang dikirimkan mungkin disertakan dalam blok baru mana pun. Sebuah blok secara kriptografis ditandatangani oleh produsernya dan ditautkan ke blok sebelumnya dalam rantai. Hal ini membuat tidak mungkin untuk menghapus transaksi dari satu blok, mengubah urutan blok, menghapus satu blok dari rantai (jika sudah memiliki sejumlah blok lain yang mengikutinya), atau untuk memasukkan blok baru ke dalam rantai tanpa memberi tahu semua peserta jaringan. Ini memastikan integritas dan transparansi ekspansi blockchain.

### Slot dan zaman

Blockchain Cardano menggunakan protokol [Ouroboros Praos](https://eprint.iacr.org/2017/573.pdf) untuk memfasilitasi konsensus pada chain. Ouroboros Praos membagi waktu ke dalam epoch. Setiap epoch Cardano terdiri dari sejumlah slot, dimana setiap slot berlangsung selama satu detik. Epoch Cardano saat ini memiliki 432.000 slot (5 hari). Di slot mana pun, nol atau lebih node penghasil blok dapat dinominasikan untuk menjadi pemimpin slot. Rata-rata, satu node diharapkan dinominasikan setiap 20 detik, dengan total 21.600 nominasi per epoch. Jika pemimpin slot yang dipilih secara acak menghasilkan blok, salah satunya akan ditambahkan ke chain. Blok kandidat lainnya akan dibuang.

### Pemilihan pemimpin slot

Jaringan Cardano terdiri dari sejumlah stake pool yang mengontrol kepemilikan agregat dari pemiliknya dan pemangku kepentingan lainnya, yang juga dikenal sebagai *delegator* . Pemimpin slot dipilih secara acak dari antara stake pool. Semakin banyak taruhan yang dikendalikan oleh pool, semakin besar peluangnya untuk terpilih sebagai pemimpin slot untuk menghasilkan blok baru yang diterima ke dalam blockchain. Ini adalah konsep dasar dari proof of stake (PoS). Untuk mempertahankan level playing field, dan mencegah situasi di mana sejumlah kecil pool yang sangat besar mengendalikan mayoritas stake, Cardano memiliki sistem insentif yang mencegah pendelegasian ke pool yang sudah mengendalikan sebagian besar dari total stake.

### Validasi transaksi

Saat memvalidasi transaksi, pemimpin slot perlu memastikan bahwa pengirim telah memasukkan cukup dana untuk membayar transaksi itu dan juga harus memastikan bahwa parameter transaksi terpenuhi. Dengan asumsi bahwa transaksi memenuhi semua persyaratan ini, pemimpin slot akan mencatatnya sebagai bagian dari blok baru, yang kemudian akan dihubungkan ke blok lain dalam chain.
