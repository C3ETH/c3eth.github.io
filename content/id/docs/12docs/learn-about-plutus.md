---
title: '"Belajar tentang Plutus"'
description: '"Belajar tentang Plutus"'
lead: ''
date: '2020-10-06 08:48:23 +0000'
lastmod: '2020-10-06 08:48:23 +0000'
draft: 'false'
images: []
---

Plutus adalah bahasa kontrak pintar asli untuk Cardano. Ini adalah bahasa lengkap Turing yang ditulis dalam Haskell, dan kontrak pintar Plutus adalah program Haskell yang efektif. Dengan menggunakan Plutus, Anda dapat yakin dalam mengeksekusi kontrak pintar Anda dengan benar. Ini diambil dari penelitian bahasa modern untuk menyediakan lingkungan pemrograman full-stack yang aman berdasarkan Haskell, bahasa pemrograman fungsional murni terkemuka.

Pembaruan Alonzo menghadirkan kemampuan yang menarik dan sangat dinanti ke Cardano melalui integrasi skrip Plutus ke dalam blockchain. Skrip ini sekarang memungkinkan penerapan kontrak pintar di Cardano, memungkinkan sejumlah kasus penggunaan baru untuk aplikasi terdesentralisasi (DApps) untuk pertama kalinya.

Jika Anda ingin memulai, kunjungi [Taman Bermain Plutus](https://playground.plutus.iohkdev.io/) untuk mempelajari cara menulis program Plutus dan menggunakan [tutorial](https://plutus-apps.readthedocs.io/en/latest/) untuk membantu Anda. Anda juga harus membaca penjelasan dan tutorial yang disediakan di sini dan merujuk ke [penjelasan Plutus](https://plutus-apps.readthedocs.io/en/latest/plutus/explanations/index.html) untuk mempelajari lebih lanjut tentang bahasa Plutus itu sendiri.

Kami di sini untuk membantu! Jika Anda memerlukan dukungan saat menggunakan Plutus, harap catat masalah di [repositori Plutus](https://github.com/input-output-hk/plutus) dan sertakan detail sebanyak mungkin.

### Kontrak pintar Plutus

Kontrak pintar Plutus terdiri dari bagian-bagian yang berjalan di blockchain (kode on-chain) dan bagian-bagian yang berjalan di mesin pengguna (off-chain atau kode klien). Kode off-chain dapat ditulis menggunakan Plutus Application Framework (PAF), dan kode ini kemudian dikompilasi oleh GHC (Glasgow Haskell Compiler), sedangkan kode on-chain dikompilasi oleh compiler Plutus menjadi Plutus Core.

![gambar](https://docs.cardano.org/static/6c366861cbc7f599ed30a07969dd1cf1/a6d66/Plutus_arch.png)

### Model akuntansi yang digunakan oleh Plutus

Cardano menggunakan [model akuntansi UTXO yang diperluas (EUTXO)](https://docs.cardano.org/plutus/eutxo-explainer) dimana memperluas keluaran (O) transaksi (TX) yang tidak terpakai (U) dari akuntansi model (UTXO) model (digunakan oleh Bitcoin). Dalam model UTXO, suatu transaksi memiliki *input* dan *output* , dimana **input** merupakan output yang tidak terpakai dari transaksi sebelumnya. Segera setelah output digunakan sebagai input dalam suatu transaksi, itu menjadi terpakai dan tidak akan pernah bisa digunakan lagi. **Output** ditentukan oleh alamat (kunci publik atau hash kunci publik) dan nilai (terdiri dari jumlah ada dan opsional, jumlah token asli tambahan).

EUTXO memperluas model UTXO dengan mengizinkan alamat keluaran berisi logika kompleks untuk memutuskan transaksi mana yang dapat membuka kuncinya, dan dengan menambahkan data *khusus* ke semua keluaran. Model ini menawarkan keunggulan unik dibandingkan model akuntansi lainnya. Keberhasilan atau kegagalan validasi transaksi hanya bergantung pada transaksi itu sendiri dan inputnya dan bukan pada hal lain di blockchain. Akibatnya, validitas transaksi dapat diperiksa *di luar rantai* sebelum transaksi dikirim ke blockchain. Sebuah transaksi masih bisa gagal jika beberapa transaksi lain secara bersamaan mengkonsumsi input yang diharapkan transaksi tersebut. Namun, jika semua input masih ada, transaksi *dijamin* berhasil.

### Inti Plutus

Plutus Core adalah bahasa scripting yang digunakan oleh Cardano untuk mengimplementasikan model EUTXO. Ini adalah bahasa fungsional sederhana yang mirip dengan Haskell, dan sebagian besar Haskell dapat digunakan untuk menulis skrip Plutus Core. Sebagai penulis kontrak cerdas, Anda tidak menulis Plutus Core apa pun; alih-alih, semua skrip Plutus Core dihasilkan oleh plugin kompiler Haskell.

Skrip ini akan dieksekusi oleh node selama validasi transaksi 'secara langsung' di rantai. Mereka akan mengunci EUTXO dalam bentuk [skrip validator](https://docs.cardano.org/plutus/Plutus-validator-scripts) atau sebagai kebijakan pencetakan, yang mengontrol pencetakan dan pembakaran token asli.

Dalam praktiknya, saat mengembangkan kontrak pintar, Anda akan menulis skrip validator di Haskell, yang kemudian akan secara otomatis dikompilasi ke dalam Plutus Core menggunakan plug-in GHC yang disebut Plutus Tx. Kerangka Aplikasi Plutus (PAF)

PAF menyediakan akses mudah ke layanan yang biasa digunakan oleh aplikasi Plutus. Aplikasi yang disebarkan menggunakan pustaka kerangka kerja dapat dijalankan di backend aplikasi Plutus, yang menyediakan dukungan runtime untuk akses ke blockchain dan masalah lain seperti ketekunan, pencatatan, dan pemantauan. Aplikasi yang ditulis di atas PAF secara otomatis menyediakan antarmuka HTTP dan WebSocket yang dapat berinteraksi dengan aplikasi dari browser web.

Status skrip validator on-chain hanya dapat dimodifikasi oleh transaksi yang menghabiskan dan menghasilkan keluaran skrip. Saat menulis aplikasi Plutus, kita perlu mempertimbangkan tidak hanya bagian on-chain dari aplikasi (skrip Plutus Core) tetapi juga bagian off-chain yang membuat dan mengirimkan transaksi.

Kode off-chain ditulis dalam Haskell, sama seperti kode on-chain, tidak seperti Ethereum di mana kode on-chain ditulis dalam Solidity, tetapi kode off-chain ditulis dalam JavaScript. Dengan begitu, logika bisnis hanya perlu ditulis satu kali. Logika ini kemudian dapat digunakan dalam skrip validator dan dalam kode yang membangun transaksi yang menjalankan skrip validator. Backend Aplikasi Plutus (PAB)

PAB saat ini sedang dikembangkan dan akan menjalankan komponen off-chain dari aplikasi Plutus. Ini akan mengelola permintaan aplikasi ke backend dompet dan node, menyimpan status aplikasi, dan menawarkan HTTP API untuk mengelola contoh aplikasi.

### Plutus dan token asli

Setiap token asli dilengkapi dengan [kebijakan pencetakannya](https://github.com/input-output-hk/cardano-documentation/blob/staging/content/07-native-tokens/01-learn.mdx#minting-policy) sendiri, yang menentukan kondisi di mana token dapat dicetak dan dibakar. Dengan penerapan Plutus, pengguna akan dapat menulis kebijakan pencetakan di Haskell dan mengompilasinya ke Plutus Core. Selama proses pencetakan atau pembakaran, skrip kebijakan Plutus Core akan dieksekusi dalam konteks transaksi pencetakan atau pembakaran, dan skrip harus menyetujui atau melarang tindakan tersebut. Fitur ini akan semakin mempercepat pertumbuhan Non Fungible Token (NFT) di Cardano dengan memungkinkan pembuatan kebijakan pencetakan yang jauh lebih kompleks dan memungkinkan pembuatan NFT dengan cara membagikan kepercayaan. Kelebihan Plutus

Plutus memberikan keuntungan keamanan yang cukup besar. Ini memberikan cara yang lebih mudah dan lebih kuat untuk menunjukkan bahwa kontrak pintar Anda benar dan tidak akan menemui masalah yang ditemukan dalam desain bahasa kontrak pintar sebelumnya.

Plutus memungkinkan pendekatan terintegrasi baru untuk kontrak pintar dan pengembangan aplikasi terdistribusi yang lebih nyaman dan lebih aman daripada alternatif sebelumnya. Baik kode on-chain dan off-chain didasarkan pada bahasa yang sama. Anda menggunakan basis kode yang seragam, yang kemudian secara otomatis dipisahkan oleh rantai alat Plutus menjadi kode dan paket on-chain dan off-chain untuk penerapan.

Selain itu, berbeda dengan Ethereum, Plutus mendukung token yang ditentukan pengguna (baik yang dapat dipertukarkan dan tidak dapat dipertukarkan secara asli yang membutuhkan kode yang jauh lebih sedikit.
