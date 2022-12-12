---
title: "Tahapan - Tahapan Implementasi Ouroboros "
date: 2022-09-20T09:19:42+01:00
lastmod: 2022-09-20T09:19:42+01:00
draft: false
weight: 50
images: []
contributors: ["Andre Cahyadi"]
pinned: false
homepage: false
---

Dipublikasikan pada tanggal 20 Sep 2022<br/>
Ditulis oleh andre cahyadi ([@prosperaan](/u/prosperaan))<br/>
Untuk komunitas Cardano Indonesia<br/>
Referensi:<br/>
[From Classic to Chronos: the implementations of Ouroboros explained - IOHK Blog](https://iohk.io/en/blog/posts/2022/06/03/from-classic-to-chronos-the-implementations-of-ouroboros-explained/)

Thread ini adalah lanjutan dari [Ouroboros dalam Proof of Stake (PoS) Cardano](https://forum.cardano.org/t/ouroboros-dalam-proof-of-stake-pos-cardano/93612)

![image](https://global.discourse-cdn.com/business4/uploads/cardano/original/3X/b/9/b98414da4939706e05ed81fec83cc54848ccc5ef.jpeg)

### [](#pengantar-1)Pengantar

Ouroboros adalah protokol konsensus di Cardano. Di dalam roadmap yang sudah dibuat saat ini, sudah ada Ouroboros Classic hingga Chronos. Namun, tidak menutup kemungkinan adanya perkembangan terbaru ke depan dimana akan muncul pengembangan Ouroboros lainnya. Sebagai protokol konsensus pertama yang didesain dan dikembangkan berdasarkan hasil penelitian secara peer-review, pengembangan Ouroboros dipimpin oleh Prof. Aggelos Kiayias dari Universitas Edinburgh - Skotlandia.

Siapapun yang masih baru dengan dunia blockchain pasti asing dengan istilah protokol konsensus. Secara sederhana, protokol konsensus adalah sistem yang disetujui secara bersama - sama dengan parameter - parameter tertentu yang mengatur aktivitas distributed ledger di blockchain. Peraturan ini wajib dipatuhi oleh setiap partisipan di jaringan agar dapat tercapai kesepakatan dengan partisipan jaringan lainnya. Blockchain yang bersifat umum (public blockchain) tidak berada di bawah kendali sebuah entitas tunggal atau terpusat. Oleh karena itu, protokol konsensus menjadi acuan bagi setiap partisipan jaringan untuk saling sepakat dengan historis transaksi yang tercatat di blockchain dan secara konsensus terus menerus melakukannya sehingga membentuk single source of truth. Sebuah single source of truth berarti hanya ada satu record, dan blockchain dikatakan memiliki karakteristik trustless karena kepercayaan yang dibangun di dalam sistem itu sendiri.

Ouroboros adalah protokol konsensus Proof of Stake yang berbeda dengan Proof of Work. Ketimbang mengandalkan miner untuk menyelesaikan penghitungan matematika yang kompleks dalam memproduksi sebuah block, Proof of Stake memilih partisipan (dalam hal ini para SPO) untuk memproduksi block berdasarkan jumlah stake yang dimiliki di jaringan. Proof of Stake juga terbukti jauh lebih hemat energi daripada Proof of Work. Per tahun 2022 sebagai contoh, Bitcoin membutuhkan energi sebesar 204,5TWh per tahun. Sedangkan Ouroboros yang berjalan di atas Raspberry Pi hanya membutuhkan energi sebesar 15-18W. Perbedaan energi inilah yang secara gamblang menunjukkan teknologi mana yang dapat ditingkatkan adopsinya untuk penggunaan secara masal.

### [](#desain-ouroboros-2)Desain Ouroboros

Inti dari desain Ouroboros adalah sistem yang mampu menjaga validitas dan keamanannya ketika terjadi serangan. Sistem memiliki perlindungan untuk mencegah para penyerang membuat versi alternatif dari blockchain dan mengirimkan pesan ke setiap partisipan secara sembarangan. Protokol juga dijamin keamanannya selama ada lebih dari 51% stake dikontrol oleh partisipan yang jujur.
Setiap node jaringan menyimpan salinan blockchain dan mempool yang berisi transaksi - transaksi. Nantinya, salinan ini akan tergantikan ketika node sudah mendeteksi chain yang valid dan lebih panjang transaksinya.

### [](#tahapan-implementasi-3)Tahapan Implementasi

#### [](#h-1-ouroboros-classic-4)1) Ouroboros Classic

Implementasi Ouroboros pertama kali di tahun 2017 dimana diperkenalkan sebuah protokol yang hemat energi dibandingkan Proof of Work, karena menggunakan kerangka matematika dalam menganalisa bukti kepemilikan (Proof of Stake) dan mekanisme pembagian insentif bagi setiap partisipan yang terlibat di dalamnya. Terlebih, yang membedakan Ouroboros dengan blockchain lain yang juga menggunakan Proof of Stake adalah kemampuan Ouroboros untuk menghasilkan randomness dalam algoritma pemilihan leader untuk proses produksi block. Randomness mencegah terbentuknya pola yang teratur dan kritikal dalam menjaga keamanan protokol. Kapanpun suatu perilaku dapat diprediksi, maka hal itu dapat dieksploitasi. Ouroboros adalah protokol konsensus blockchain pertama yang dikembangkan dengan analisa keamanan super ketat ini. Namun Ouroboros Classic tidak luput dari kelemahan, yakni penyerang yang mampu beradaptasi dimana hal ini dapat diatasi di teknologi Ouroboros selanjutnya yaitu Praos.

#### [](#h-2-ouroboros-bft-5)2) Ouroboros BFT

Ouroboros BFT (Byzantine Fault Tolerant) dikembangkan dari sebuah studi kasus hasil analisa Ouroboros Classic. Konsensus ini digunakan ketika masih di era Byron dan sebagai persiapan menuju era Shelley (desentralisasi). Cara kerjanya, Ouroboros ini menggunakan node - node yang terhubung dan saling berkomunikasi dalam sebuah federasi (federated nodes). Jadi, daripada mengharuskan semua node untuk online secara terus menerus, Ouroboros BFT mengandalkan kekuatan jaringan gabungan dan sinkronisasi di antara node-nya. Protokol konsensus ini menarik karena sifatnya yang sederhana dan deterministik. Perlu dicatat juga, BFT membutuhkan persentase partisipan jujur yang paling besar daripada versi Ouroboros lainnya.

#### [](#h-3-ouroboros-praos-6)3) Ouroboros Praos

Penjelasan Ouroboros Praos secara detail dapat dilihat di thread, [Ouroboros dalam Proof of Stake (PoS) Cardano](https://forum.cardano.org/t/ouroboros-dalam-proof-of-stake-pos-cardano/93612)

#### [](#h-4-ouroboros-genesis-7)4) Ouroboros Genesis

Genesis meng-upgrade Praos dengan pengaturan pemilihan chain yang baru, dimana partisipan dapat melakukan bootstrap dari block genesis tanpa harus melalui pemeriksaan checkpoint atau pengecekan keberadaan chain di masa lampau. Melalui Genesis, Ouroboros juga membuktikan dirinya sebagai protokol konsensus yang memiliki komposisi universal dimana protokol dapat dikonfigurasi bersama dengan protokol konsensus lain (interoperabilitas) tanpa kehilangan sisi keamanannya.

#### [](#h-5-ouroboros-crypsinous-8)5) Ouroboros Crypsinous

Cypsinous melengkapi Genesis dengan fitur privasi. Ini adalah protokol konsensus Proof of Stake pertama yang dianalisa secara resmi, memiliki keamanan terhadap serangan yang bersifat adaptif, serta memberikan jaminan privasi yang kuat dengan teknologi SNARKs dan key-private forward secure encryption. Saat ini, Crypsinous tidak direncanakan untuk diimplementasi di Cardano namun dapat digunakan oleh jaringan lain untuk meningkatkan pengaturan privasi sistemnya.

#### [](#h-6-ouroboros-chronos-9)6) Ouroboros Chronos

Chronos memiliki 2 tujuan: _pertama_, menunjukkan bagaimana protokol blockchain dapat menyinkronkan waktu secara aman sehingga tidak memerlukan sumber eksternal lagi, _kedua_, protokol blockchain yang aman secara kriptografis dapat menjadi sumber waktu yang aman juga secara kriptografis ke protokol blockchain lain atau yang di luar blockchain. Secara singkat, Chronos membuat ledger blockchain lebih tahan terhadap serangan yang menargetkan informasi waktu.

Jika diimplementasikan ke dalam sebuah aplikasi, Chronos dapat secara dramatis meningkatkan ketahanan dalam aspek telekomunikasi, transportasi, dan infrastruktur IT lainnya yang memerlukan proses sinkronisasi waktu dimana tidak ada lagi potensi single point of failure (seperti gangguan di server waktu universal).

#### [](#h-7-ouroboros-leios-10)7) Ouroboros Leios

Penerapan Input Endorsers, mekanisme konsensus _next generation_.

Cara scaling Cardano hingga ke dekade berikutnya dimana proses transaksi akan dibuat secepat mungkin. Dari yang saat ini masih arsitektur dengan single block dimana cara kerjanya _**“scooping out transactions out of mempool, forging a block, and sending to the peers”**_, akan dibuat menjadi **Arsitektur dengan dua block**:
a. Block pertama untuk menangani konsensus → akan memiliki reference/pointer ke block kedua
b. Block kedua untuk menangani transaksi → pemrosesan sangat cepat
dimana cara kerjanya _**“blocks will be created on an ad-hoc basis, signed & counter-signed, and will be flying around the newtork on second by second basis”**_

Kesimpulan: daripada harus menunggu 20 detik (**Ouroboros Praos**, 20 detik untuk proses pemilihan SPO sebagai Slot Leader yang memproduksi block/_block mining_) untuk mengirim transaksi, dengan **Ouroboros Leios** transaksi akan dikirim terus menerus sehingga L1 Cardano menjadi sangat cepat.

### [](#masa-depan-ouroboros-11)Masa Depan Ouroboros

Ouroboros yang memiliki arti simbol yang tak berhingga, keabadian, dan pengulangan yang tak berujung telah menjadi tulang punggung dari Cardano. Saat ini Cardano menggunakan Ouroboros Praos. Ouroboros Genesis sedang diimplementasikan di tahun 2022 ini untuk kemudian ditingkatkan menjadi Chronos. Setiap langkah dalam implementasi Ouroboros adalah evolusi baru menuju ke visi dunia yang lebih adil, aman, dan berkelanjutan.
