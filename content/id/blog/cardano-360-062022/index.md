---
title: "
[Cardano 360] Jun 2022 Update - Technical "
date: 2022-06-17T09:19:42+01:00
lastmod: 2022-06-17T09:19:42+01:00
draft: false
weight: 50
images: []
contributors: ["Andre Cahyadi"]
pinned: false
homepage: false

---

Dipublikasikan pada tanggal 17 Jun 2022 <br/>
Ditulis & disadur oleh andre cahyadi ([@prosperaan](https://forum.cardano.org/u/prosperaan)) <br/>
Untuk komunitas Cardano Indonesia <br/>
Referensi: [Cardano360 - Jun 2022 - YouTube](https://www.youtube.com/watch?v=ShBFTaD8nss)

Segala sesuatu tentang persiapan Vasil Hard Fork yang rencananya akan dilaksanakan di akhir Jul 2022. Untuk ringkasan lengkapnya ada di artikel ini ([Cardano’s approaching Vasil upgrade: what to expect | Essential Cardano](https://www.essentialcardano.io/article/cardanos-approaching-vasil-upgrade-what-to-expect)) dan sebenarnya semua teknologi ini sudah diumumkan dari awal 2022 dan di beberapa Monthly Update sebelumnya. :smiley:

Berikut ringkasannya dalam bahasa Indonesia:

- Diffusion Pipelining: meningkatkan ruang waktu untuk proses propagasi block di jaringan, jadi dibuat overlapping antara produksi block & mengirim block (Pipelining (Komponen Skalabilitas)).<br/>
  Standard keamananan dari Ouroboros:<br/>
  a. produksi block: 1 detik <br/>
  b. kirim block di jaringan: 5 detik

> Karena ukuran block dan Plutus memory unit diperbesar untuk bisa menampung dan memproses lebih banyak transaksi smart contract, oleh karena itu proses produksi dan pengiriman block di jaringan dibuat lebih singkat waktunya untuk mengkompensasi ukuran block & Plutus memory unit yang membesar tersebut, tanpa mengorbankan standard keamanan Ouroboros.

- Script Enhancements & Plutus Versi 2: ([[Cardano 360] Mar 2022 Update - Technical](https://forum.cardano.org/t/cardano-360-mar-2022-update-technical/99237))
  a. Reference Inputs (CIP-31)
  b. Inline Datums (CIP-32)
  c. Reference Scripts (CIP-33)
  d. Datums and Redeemers

- Enhancement lainnya: ([[Cardano 360] Mar 2022 Update - Technical](https://forum.cardano.org/t/cardano-360-mar-2022-update-technical/99237))

a. Script Collateral Adjustments → Dapp developer bisa menspesifikasikan ‘change address’ dalam script collateral Dapps-nya.

> Jadi ketika fase 2 berstatus invalid ~yang sangat jarang terjadi~ ([Segala Sesuatu tentang Plutus](https://forum.cardano.org/t/segala-sesuatu-tentang-plutus/95196)), user tidak akan kehilangan isi fund-nya, melainkan hanya collateral saja yang diambil, sisanya dikembalikan ke change address yang sudah ditentukan

b. Optimasi proses VRF ketika validasi block (untuk para SPO): dari yang awalnya butuh sebanyak dua transaksi VRF, nantinya hanya perlu satu kali saja.
