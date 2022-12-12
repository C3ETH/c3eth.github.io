---
title: "
[Cardano 360] Jul 2022"
date: 2022-07-31T09:19:42+01:00
lastmod: 2022-07-31T09:19:42+01:00
draft: false
weight: 50
images: []
contributors: ["Andre Cahyadi"]
pinned: false
homepage: false

---

Dipublikasikan pada tanggal 31 Jul 2022 <br/>
Ditulis & disadur oleh andre cahyadi ([@prosperaan](https://forum.cardano.org/u/prosperaan)) <br/>
Untuk komunitas Cardano Indonesia <br/>
Referensi: [Cardano360 - Jun 2022 - YouTube](https://www.youtube.com/watch?v=mHHVaxkHFrE)

#### Update Progress Vasil Hard Fork

- Node versi terbaru akan diluncurkan untuk memperbaiki isu - isu di versi 1.35.2 yang saat ini ditemukan oleh para SPO, Dapps, pihak - pihak lain, maupun dari hasil testing internal.

  - Versi node ini masih digunakan untuk di public testnet saja.
  - Fokusnya adalah tetap melakukan pengujian secara menyeluruh, dengan benar, dan tidak terburu - buru.
  - Walaupun memakan waktu lebih lama dari yang diperkirakan sebelumnya, hal ini merupakan karakteristik natural dari sebuah pengembangan software. Beberapa masalah dapat muncul dan isu - isu tersebut harus dianalisa agar diketahui dampak yang dapat diakibatkan, serta memastikan tidak akan ada masalah besar yang mempengaruhi operasional node saat Hard Fork nanti.
  - Semua pihak seperti para SPO, Dapps, dan pihak - pihak lainnya harap memperhatikan dengan seksama informasi panduan yang akan diberikan ketika proses rollout node versi 1.35.3
  - Butuh sejumlah besar exchange (70-80% dari total liquidity) & minimal 75% dari seluruh SPO yang terintegrasi dan melakukan update versi node sebelum hard fork mainnet dijalankan

- Plutus Cost Model, adalah penilaian biaya eksekusi transaksi secara aktual terhadap setiap komponen Plutus/Plutus Primitives (kurang lebih ada 168 komponen yang harus diperhitungkan).
  - Tujuan: memungkinkan semua transaksi Plutus v2 dapat berjalan seperti Reference Scripts, Reference Inputs, Inline Datums
  - Manfaat: mengurangi biaya transaksi dalam Dapps dan akan digunakan juga dalam komponen Hydra yang saat ini masih dalam pengembangan

#### Update Progress Mithril

Seperti yang sudah dibahas di Monthly Update bulan May 2022, [[Cardano 360] May 2022 Update - Technical](../cardano-052022/index.md), saat ini ada beberapa use case Mithril yang sudah direncanakan, antara lain:

1. Bootstrapping node Cardano → memiliki working version yang berfungsi sehingga dapat menunjukkan berapa lama waktu yang diperlukan untuk mengunduh dan memverifikasi snapshot yang disertifikasi oleh signature Mithril
2. Distribusi stake
3. Signature UTXO terhadap snapshot dalam periode tertentu untuk dibuat semacam sistem filtering

Ke depan, Mithril akan dibuat menjadi **open source**. Setelah website sudah beroperasional, harapannya para SPO dan user dapat mengunduh program microsigners & client; menjalankannya di testnet; serta berinteraksi dengan aggregator yang akan mengumpulkan signature dan memproduksi snapshot secara teratur.

Di titik ini, keterlibatan komunitas sangat bermanfaat untuk dapat mengumpulkan umpan balik/feedback sebagai bahan persiapan MVP (Minimum Viable Product) yang akan diluncurkan di mainnet.

Beberapa hal yang masih menjadi isu untuk diperhatikan:

- Bagaimana cara men-deploy signer bersamaan dengan Cardano block producer?
- Model yang tepat untuk mendesentralisasi aggregator
  Bagaimana cara Mithril beradaptasi dengan evolusi protokol Cardano?
