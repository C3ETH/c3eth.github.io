---
title: "Membuka lebih banyak peluang dengan Plutus V3"
description: "Plutus V3 akan meningkatkan pengalaman pengembang dengan meningkatkan adopsi kontrak pintar, memberikan dukungan untuk fitur tata kelola dan pemungutan suara, dan mendorong interoperabilitas antar blockchain."
date: 2024-02-18T09:19:42+01:00
lastmod: 2024-02-18T09:19:42+01:00
draft: false
weight: 50
images: []
categories: ["IOHK"]
tags: ["security", "performance", "SEO"]
contributors: ["Olga Hryniuk"]
pinned: false
homepage: false
menu:
  blog:
    parent: "IOHK"
---

Plutus V3, kini tersedia untuk pengujian di SanchoNet, memperkenalkan primitif Plutus tingkat lanjut sehingga menyediakan lebih banyak alat bagi pengembang dan membuka lebih banyak kemungkinan untuk menulis kontrak pintar.

Peningkatan pengalaman pengembang dan adopsi kontrak pintar sangat penting untuk berkembangnya lanskap kontrak pintar di Cardano. Selama setahun terakhir, kemunculan dan pertumbuhan sejumlah alat pengembang buatan komunitas dan bahasa alternatif telah menambah secara signifikan opsi pengembang dan semangat ekosistem pembuat Cardano. Untuk terus membangun kemampuan, Plutus dan tim kriptografi di Input Output Global (IOG) – bekerja sama dengan MLabs – mengerjakan Plutus V3, dengan fokus pada kinerja, throughput, ukuran kontrak pintar, dan kemampuan platform. Dengan perangkat pengembang yang diperkaya dan efisiensi operasional yang lebih baik, peningkatan ini tidak hanya mengurangi biaya tetapi juga membantu mendatangkan pengembang baru.

## Apa itu Plutus V3?

Plutus V3 meningkatkan kemampuan kriptografi Plutus Core, memungkinkan Cardano menyesuaikan dengan standar industri terbaru. Pembaruan Valentine setahun yang lalu menambahkan dukungan untuk kurva elips SECP (ECDSA dan Schnorr).

Pengenalan primitif kriptografi baru dengan V3 membantu pengembang memenuhi praktik terbaik industri, menggunakan algoritma kriptografi yang terkenal dan optimal, melakukan port kontrak pintar dari Ethereum, dan membuat jembatan sidechain. Selain primitif kriptografi, Plutus V3 meningkatkan kinerja dengan menambahkan fitur jumlah produk (SOP) untuk mendukung pengkodean langsung berbagai tipe data. Terakhir, V3 menyediakan konteks skrip yang diperbarui yang memungkinkan pengguna melihat entitas terkait tata kelola CIP-1694.

Mari kita lihat lebih dekat fungsi-fungsi barunya.

## Jumlah produk

Cara umum untuk menyandikan tipe data di Plutus Core adalah dengan menggunakan pendekatan Scott. Plutus V3 memperkenalkan sejumlah produk – cara pengkodean tipe data yang menghasilkan skrip yang lebih kecil dan lebih murah dibandingkan dengan pengkodean Scott.

Pendekatan jumlah produk bertujuan untuk meningkatkan efisiensi skrip dan meningkatkan pembuatan kode untuk kompiler Plutus Core. Perubahan ini melibatkan konstruktor istilah baru untuk mengemas bidang ke dalam nilai konstruktor dan pemeriksaan tag yang efisien untuk cabang kasus. Manfaatnya adalah potensi program berjalan 30% lebih cepat, yang merupakan optimalisasi kinerja secara signifikan, menyederhanakan operasi, dan memastikan eksekusi kontrak pintar dengan cepat. Untuk lebih jelasnya, lihat CIP-85.

## Primitif kriptografi baru

Inti dari setiap blockchain adalah penggunaan kriptografi primitif, yang mencakup fungsi hash, tanda tangan digital, dan sistem zero-knowledge proof (ZKP). Elemen dasar ini dibuat untuk efisiensi komputasi, memastikan keamanan yang kuat yang disesuaikan dengan aplikasinya masing-masing. Hasilnya adalah serangkaian jaminan keamanan yang membangun ekosistem yang tidak dapat dipercaya, memfasilitasi kelancaran interaksi dengan jaringan peer-to-peer (P2P) Cardano dan aplikasi terdesentralisasi (DApps).

Dalam bahasa Plutus, fungsi bawaan adalah fungsi yang tidak didefinisikan secara eksplisit dalam skrip tetapi merupakan bagian dari lingkungan runtime bahasa tersebut. Menggunakan fungsi-fungsi ini memungkinkan juru bahasa untuk memberikan implementasi optimal yang spesifik untuk sistemnya saat menjalankan skrip. Fungsi bawaan menjalankan operasi yang sering digunakan dan terdefinisi dengan baik, mencakup aritmatika, kontrol, dan tugas penting lainnya. Saat kita mendalami Plutus V3, mari jelajahi primitif bawaan baru yang akan memperkaya kemampuan bahasa:

- BLS12-381 – pasangan kurva ini mencakup 17 primitif yang mendukung kurva kriptografi, membuka pintu bagi implementasi spesifikasi sidechain yang mulus dan integrasi Mithril.
- Blake2b-224 – fungsi hash kriptografi untuk komputasi hash kunci publik on-chain untuk validasi tanda tangan transaksi. Implementasi Blake2b-224 mendukung proyek komunitas, berkontribusi terhadap keserbagunaan dan adopsi Cardano dengan mengakomodasi berbagai aplikasi.
- Keccak-256 – fungsi hash kriptografi yang menghasilkan nilai hash 256-bit (32-byte), biasanya digunakan untuk verifikasi data yang aman. Keccak-256 mendukung verifikasi tanda tangan Ethereum dalam skrip. Hal ini penting untuk solusi lintas rantai dan memfasilitasi proyek komunitas dengan memperluas kasus penggunaan di Cardano.

## Memberdayakan pengembang dengan primitif bitwise

Pengenalan primitif bitwise CIP-58 akan memberi pengembang kemampuan yang kuat untuk manipulasi bit tingkat rendah. Penambahan ini menawarkan keuntungan besar bagi pengembang dalam optimalisasi kinerja dan fungsi kriptografi. Dengan rencana penerapan tambahannya, bitwise primitif memastikan proses integrasi yang lancar dan menumbuhkan lingkungan yang kuat bagi pengembang untuk membangun solusi yang kuat dan efisien di Cardano.

Primitif Bitwise menyediakan fitur berikut:

- Peningkatan kinerja. Primitif bitwise memperkenalkan kemampuan untuk manipulasi bit tingkat sangat rendah dalam Plutus. Kemampuan ini meletakkan dasar untuk melaksanakan operasi manipulasi data berkinerja tinggi, sebuah aspek penting bagi pengembang yang mencari solusi efisien.
- Dukungan kriptografi. Dimasukkannya primitif bitwise sangat penting untuk mendukung fungsi kriptografi seperti ED25519, yang merupakan persyaratan standar untuk pengembangan kontrak pintar. Primitif ini menerapkan algoritma kriptografi yang aman dan kuat dalam Plutus.
- Konversi string bilangan bulat untuk integrasi yang lancar. Primitif bitwise memfasilitasi implementasi standar dan berkinerja tinggi untuk konversi antara bilangan bulat dan string. Kemampuan ini penting karena primitif memerlukan argumen dalam format integer, sedangkan data sering kali disajikan dalam format string.
- Algoritme dan struktur data yang efisien. CIP-58 menambahkan kelas fungsi tingkat rendah untuk algoritma dan struktur data yang sangat efisien. Kemampuan untuk membuat tabel hash yang efisien, struktur data pemetaan nilai kunci yang umum, menunjukkan dampak praktis dari fungsi tingkat rendah ini dalam membangun solusi yang berkinerja baik.

Pemutakhiran Plutus akan menambahkan dua primitif bitwise: integerToByteString dan byteStringToInteger. Primitif yang tersisa akan ditambahkan ke Plutus V3 secara bertahap. Kedepannya, peningkatan tersebut tidak memerlukan versi bahasa baru. Pendekatan penerapan bertahap ini memastikan integrasi sistematis fitur-fitur canggih ini ke dalam bahasa Plutus.

Dimulai dengan rilis node Cardano v.8.8.0-pre, Plutus V3 kini tersedia di SanchoNet, memperkenalkan komunitas Cardano pada fitur tata kelola dari CIP-1694 dalam lingkungan testnet yang terkontrol.

## Kesimpulan

Di antara manfaatnya, Plutus V3 menawarkan efisiensi, opsionalitas, dan kemudahan penggunaan yang lebih besar bagi komunitas pembuat Cardano – semuanya merupakan kunci untuk membina adopsi pengembang. Memprioritaskan aspek seperti kinerja, throughput, ukuran kontrak pintar, dan kemampuan platform memastikan pengembang Cardano dapat menggunakan standar terbaru. Peningkatan ini memfasilitasi kelancaran migrasi kontrak pintar dari Ethereum, memungkinkan terciptanya jembatan sidechain, dan pada akhirnya berkontribusi pada perluasan ekosistem Cardano.
