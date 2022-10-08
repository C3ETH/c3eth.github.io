---
title: "
[Cardano 360] Mid Aug 2022 Update - Technical "
date: 2022-08-14T09:19:42+01:00
lastmod: 2022-08-14T09:19:42+01:00
draft: false
weight: 50
images: []
contributors: ["Andre Cahyadi"]
pinned: false
homepage: false

---

Dipublikasikan pada tanggal 14 Aug 2022 <br/>
Ditulis & disadur oleh andre cahyadi ([@prosperaan](https://forum.cardano.org/u/prosperaan)) <br/>
Untuk komunitas Cardano Indonesia <br/>
Referensi: [MidMonth Development Update - August 2022 - YouTube](https://www.youtube.com/watch?v=IqfGliwPKTw)

- **Sudah meluncurkan node versi 1.35.3**
  Jika tidak ada issue yang berarti dan berjalan seperti yang diharapkan, maka versi node ini akan digunakan untuk upgrade mainnet ke Vasil.

- **Meluncurkan _environment pre-production (testnet dan arsitektur pre-production yang baru)_ untuk memudahkan proses integrasi para SPOs, Dapps, & Exchanges.**
  Environment ini sendiri merupakan copy dari mainnet.

- _**Environment development**_ dimana para developer Dapps dapat terus menggunakannya

- **Sudah tidak ada lagi kategori _bug severity_ 1-3 (total ada 5 kategori) yang masih tersisa → faktor kritikal sebelum memutuskan apakah akan lanjut ke hard fork atau tidak.**
  Selama beberapa minggu ke depan dimana proses integrasi masih berlangsung, harapannya sudah tidak ada lagi kategori 1-3 ini.
  **Setiap meluncurkan versi node yang terbaru (untuk mengatasi semua masalah di versi node sebelumnya) ada tahapan yang harus dilakukan:**
  **a. Harus menjalankan proses QA lagi**
  **b. Harus test integrasi lagi**
  **c. Harus menjalankan proses _benchmarking_ lagi**
  Sampai hasilnya telah sesuai dan baru kemudian diimplementasi oleh para SPOs, Dapps, & Exchanges.

- _**Acceptance Criteria**_ sebelum menjalankan hard fork:

  - Exchanges: kurang lebih 25 exchanges sudah ter-upgrade yang mewakili 80% likuiditas
  - SPOs: 75% node harus di-update ke versi hard fork (75% mainnet blocks harus diproduksi oleh versi node terbaru). Para SPO yang masih menjalankan node versi 1.35.1 & 1.35.2 sudah tidak akan di-support setelah Vasil hard fork
  - Dapps: _Top 10 Dapps by TVL_ juga harus terintegrasi sebelum hard fork

- **Kapan Vasil? _We really have to get this right to provide a high-quality network._** (diringkas & disadur oleh penulis)
