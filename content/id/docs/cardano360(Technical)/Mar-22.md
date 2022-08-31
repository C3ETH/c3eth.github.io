---
title: "Cardano360 - Mar 22"
linkTitle: "Cardano360 - Mar 22"
hide_feedback: true
weight: 4
# description: ""
---

### Versi node terbaru 1.34.1

### Update tentang Hydra

Untuk Hydra, tidak diperlukan hardfork dalam implementasinya (tidak termasuk ke dalam hardfork di bulan Jun atau Oct 2022). Namun tentu saja dengan adanya hardfork, akan semakin membantu implementasi Hydra ketika sudah tiba saatnya nanti.

### Hardfork Rollout

**a. Vasil - Jun 2022**:

#### 1. **Plutus versi 2.0**

> CIP: Cardano Improvement Proposal

- **Reference Inputs (CIP-31)**
  - **Saat ini** → sebuah transaksi dapat gagal jika ada transaksi lain yang meng-consume input UTXO yang sama, atau disebut juga contention.
  - **Nanti** → input UTXO cukup ditunjuk/direferensikan saja, tanpa perlu di-consume. Alhasil banyak transaksi yang dapat diproses secara paralel bersamaan dan meningkatkan concurrency.
- **Inline Datums (CIP-32)**
  - **Saat ini** → masih menggunakan hash.
  - **Nanti** → Datum hanya berupa simple value acak saja sehingga menghemat memory pemrosesan.
  - **Apa kegunaan Datum?**

Sebagai penunjuk bahwa UTXO itu saling berbeda satu sama lain (menjamin determinism dan immutability dari UTXO tersebut). Ketika sebuah transaksi berhasil dijalankan, meng-consume, dan spend UTXO tersebut, UTXO beserta Datum-nya dihapus dari ledger. Output dari transaksi itu harus menghasilkan UTXO baru dengan Datum yang baru juga.

- **Reference Scripts (CIP-33)**
  - Membuat ukuran script lebih kecil sehingga ukuran memory yang diperlukan juga lebih sedikit dan biaya transaksi menjadi lebih murah.
  - Hal ini memampukan sebuah aplikasi untuk menunjuk/mereferensikan on-chain pre-recorded script dari transaksi - transaksi lain yang telah terjadi sebelumnya.

- **Redeemers di informasi transaksi**
  - **Apa kegunaan Redeemer?** Setiap transaksi membawa sebuah user-specified argument yang disebut Redeemer, yang digunakan sebagai kunci untuk membuka UTXO.
  - **Nanti** → Redeemer dapat berisi script yang lebih kompleks untuk menjamin keberhasilan suatu transaksi agar dapat di-input ke blockchain.

#### 2. Untuk SPO, peningkatan terhadap parameter KES & VRF, dimana waktu validasi di node (node sync time) menjadi lebih cepat sehingga waktu tunggu bagi user juga menjadi lebih singkat.

#### 3. **Penangangan Script untuk Collateral (CIP-40)**

Beberapa peningkatan yang dilakukan untuk memberikan kepercayaan dan kepastian yang lebih bagi user ketika bertransaksi, diantaranya:

- Besaran collateral akan disesuaikan ke nominal yang lebih tepat, sehingga user tidak akan kehilangan lebih besar dari yang diperlukan.
- Alamat kembalian baru untuk collateral.
- Dapat menggunakan non-ADA tokens (saat ini collateral hanya dalam bentuk ADA saja).

**b. Chang - Oct 2022 (penjelasan detailnya di update bulanan yang akan datang):**

- Governance
- Evolusi smart contract
- Peningkatan performa