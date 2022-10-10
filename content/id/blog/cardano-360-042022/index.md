---
title: "
[Cardano 360] Apr 2022 Update - Technical "
date: 2022-05-01T09:19:42+01:00
lastmod: 2022-05-01T09:19:42+01:00
draft: false
weight: 50
images: []
contributors: ["Andre Cahyadi"]
pinned: false
homepage: false

---

Dipublikasikan pada tanggal 01 May 2022 <br/>
Ditulis & disadur oleh andre cahyadi ([@prosperaan](https://forum.cardano.org/u/prosperaan)) <br/>
Untuk komunitas Cardano Indonesia <br/>
Referensi: [Cardano360 - Apr 2022 - YouTube](https://www.youtube.com/watch?v=b4x5OIy4shU)

### 1. Cardano Technical Briefing - Plutus (by John Woods)

Video lengkap berisi penjelasan tentang cara kerja Plutus, dibawakan oleh Director of Cardano Architecture - IOG sendiri (bisa auto-translate ke Indonesia di settings YouTube-nya).

{{<  youtube zUerLu_GOQs >}}

### 2. Mulai Epoch 335 minggu lalu, ukuran block sudah ditingkatkan dari 80 KB → 88 KB.

### 3. Sebanyak 73% SPO sudah update versi node-nya menjadi 1.34.1, sisanya masih di versi 1.33.0. Selanjutnya akan diluncurkan versi 1.35 untuk persiapan Vasil Hard Fork.

### 4. Persiapan Vasil Hard Fork

- Implementasi tgl 29 Jun 2022 (boundary dari epoch 347).

- Implementasi tidak akan langsung aktif semuanya di epoch 348, melainkan perlu waktu 1 epoch ke depan hingga semua perubahannya aktif.
- Tujuannya: untuk memberi waktu kepada para Dapps developer mengimplementasikan perubahan ke dalam Dapps-nya (reference scripts, inline datums, reference inputs)
- Saat ini

  a. Pengembangan coding sudah komplit.<br/>
  b. Sedang dalam tahap Quality Assurance (QA) dan integrasi dengan beberapa exchange serta partner terkait dengan beragam code base dan produk yang saling terkoneksi. Harapannya, mereka dapat menyesuaikan pengembangan Dapps yang sedang berjalan dengan teknologi terbaru Cardano.<br/>
  c. Setelah tahap QA dan integrasi selesai (biasa disebut tahapan SIT - system integration testing), barulah dimulai tahapan testing (biasa disebut UAT - user acceptance test), sebelum di-deploy ke production (live environment).<br/>

### 5. Ouroboros Leios → future development

Sumber lain, tweet dari CH Nov 2021 lalu: <https://twitter.com/iohk_charles/status/1462148058863517704>

Penerapan Input Endorsers, mekanisme konsensus next generation.

Cara scaling Cardano hingga ke dekade berikutnya dimana proses transaksi akan dibuat secepat mungkin. Dari yang saat ini masih arsitektur dengan single block dimana cara kerjanya **"scooping out transactions out of mempool, forging a block, and sending to the peers"**, akan dibuat menjadi arsitektur dengan dua block:
a. Block pertama untuk menangani konsensus → akan memiliki reference/pointer ke block kedua
b. Block kedua untuk menangani transaksi → pemrosesan sangat cepat
dimana cara kerjanya **"blocks will be created on an ad-hoc basis, signed & counter-signed, and will be flying around the newtork on second by second basis"**

Kesimpulan: daripada harus menunggu 20 detik (**Ouroboros Praos**, 20 detik untuk proses pemilihan SPO sebagai Slot Leader yang memproduksi block/block mining) untuk mengirim transaksi (lihat post, [Ouroboros dalam Proof of Stake (PoS) Cardano](https://forum.cardano.org/t/ouroboros-dalam-proof-of-stake-pos-cardano/93612)), dengan **Ouroboros Leios** transaksi akan dikirim terus menerus sehingga L1 Cardano menjadi sangat cepat.
