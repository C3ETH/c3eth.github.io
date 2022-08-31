---
title: "Parameter Jaringan Cardano"
linkTitle: "Parameter Jaringan Cardano"
hide_feedback: true
weight: 4
# description: ""
---

### Parameter Jaringan Blockchain Cardano

### 1. Throughput (volume transfer data)

Ukuran block: 64 KB.

Ukuran untuk single Plutus script transaction di-limit di 16 KB.

Ukuran simple transaction biasanya hanya 200-300 Bytes.

Minimal sebuah block dapat menampung 4 jenis transaksi: single Plutus script transaction (smart contract), native tokens, metadata, dan simple transaction seperti payment.

Ukuran block dapat diperbesar untuk meningkatkan throughput.

### 2. Mempool

Ukuran Mempool: 128 KB (2x ukuran block).

Semua transaksi yang terjadi ditampung terlebih dahulu secara temporary di mempool sampai mereka siap diproses dan di-input ke dalam block.

Transaksi – transaksi yang pending akan dihapus dari mempool begitu block baru sudah terbentuk. Setelah itu, transaksi – transaksi yang baru bisa ditambahkan lagi ke dalam mempool.

Dengan ukuran mempool yang dibuat tetap seperti ini memungkinan node – node tidak overload ketika periode high demand. Walaupun itu berarti setiap transaksi yang dilakukan dari wallet maupun Dapps harus di-submit kembali.

Hal ini bukan berarti jaringan sedang bersusah payah (struggling), melainkan lebih tepatnya jaringan beroperasi seperti yang sudah direncanakan sebelumnya (graceful degradation).

### 3. Block Time Budget

Waktu yang tersedia untuk memproses semua transaksi ke dalam sebuah block. Waktu ini dibagi untuk memproses Plutus script dan transaksi – transaksi lainnya.

Block Time Budget di-set sebesar 1 detik.

Untuk Plutus script sendiri diberikan jatah waktu sebesar 50 millisecond.

### 4. Timeliness (waktu adopsi block)

Jaringan harus dapat mendistribusikan (mempropagasi) transaksi dan block yang telah diproduksi ke setiap node yang tersebar di seluruh dunia, agar tercipta konsensus sehingga terverifikasi dan tervalidasi untuk di-input ke dalam blockchain.

Hal ini disebut sebagai data diffusion.

Data diffusion time di-set sebesar 5 detik karena standard dari protokol Ouroboros untuk menjamin keamanan jaringan.

### 5. Plutus Script Memory Units

Faktor penting bagi para developer DApps agar dapat merancang Plutus scripts yang sophisticated sehingga mampu memproses banyak input data, meningkatkan concurrency, atau memperluas kapabilitas aplikasinya.

Namun, semakin besar ukuran memory units, semakin besar ukuran transaksi (Bytes), semakin besar pula sumber daya yang dibutuhkan untuk memverifikasi dan memvalidasi transaksinya sehingga biaya transaksi juga menjadi semakin besar.

### Throughput VS Timeliness

Selanjutnya, dari kelima faktor di atas, perlu diketahui bahwa Throughput dan Timeliness adalah 2 faktor yang saling tarik menarik. Berikut penjelasannya:

* Throughput ditingkatkan, ukuran block diperbesar agar block mampu menampung banyak transaksi.
* Banyak transaksi yang tertampung seolah – olah jaringan bekerja dengan cepat (network performance bagus).
* Namun, hal ini menjadi bumerang ketika jaringan sangat sibuk (saturated) yang menyebabkan timeliness delay, yaitu ukuran block yang besar – besar sehingga waktu propagasi menjadi lebih lama. Proses verifikasi dan validasi ke dalam blockchain pun menjadi terlambat sehingga terbuka celah keamanan disitu.
* Data diffusion time sebesar 5 detik menjadi sebuah batasan yang harus diperhatikan ketika akan meningkatkan ukuran block.
* Oleh karena itu, untuk meningkatkan throughput, dapat dilakukan dengan efisiensi parameter jaringan lainnya (yang lebih kompleks) agar ada ruang yang cukup untuk meningkatkan ukuran block sehingga data diffusion time dapat tetap terjaga.

### Perubahan Parameter Jaringan (akan selalu di-update)

> *Perubahan yang telah dilakukan sejak awal tahun 2022*

#### Epoch 306

* Ukuran block, dari 64 KB -> 72 KB
* Ukuran Plutus script memory units per transaksi, dari 10.000.000 -> 11.250.000

#### Epoch 317

* Ukuran Plutus script memory units per transaksi, dari 11.250.000 -> 12.500.000

#### Epoch 319

* Ukuran block, dari 72 KB -> 80 KB
* Ukuran Plutus script memory units per transaksi, dari 12.500.000 -> 14.000.000

#### Epoch 321

* Ukuran Plutus script memory unit per block, dari 50.000.000 -> 56.000.000, yang berarti secara optimal dapat menampung memory 4 Plutus script transaction yang berukuran 14.000.000

#### Epoch 328

* Ukuran Plutus script memory units per block, dari 56.000.000 → 62.000.000, yang berarti secara optimal dapat menampung memory 4 Plutus script transaction yang berukuran 14.000.000 dan transaksi Plutus script lainnya sampai maksimal 62.000.000.

#### Epoch 333

* Ukuran block, dari 80 KB → 88 KB