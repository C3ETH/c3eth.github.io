---
title: "Cardano360 - Feb 22"
date: 2022-02-14T09:19:42+01:00
lastmod: 2022-02-14T09:19:42+01:00
draft: false
weight: 50
images: []
contributors: ["Andre Cahyadi"]
# description: ""
---

### Major Release hingga Feb 2022:

- Ukuran block sudah naik 25% dari 64 KB → 80 KB.
- Plutus Script Memory Unit setiap transaksi naik 40% dari 10.000.000 → 14.000.000.
- Plutus Script Memory Unit setiap block naik 24% dari 50.000.000 → 56.000.000.
- Penggunaan RAM yang lebih sedikit di node (termasuk bagi para pengguna Daedalus) → efisiensi node yang lebih besar.
- Data Serialization, setiap node dapat membentuk/membangun transaksi sendiri dari CLI dengan format data baru (CDDL: Concise Data Definition Language), jadi tidak perlu bergantung kepada tool pihak ketiga lagi.
- Fitur Multi Signature sudah siap (pihak A sign duluan, baru pihak B yang sign. Jadi tidak wajib pihak A & B bersamaan sign).
- Fitur Local Transaction Mempool Monitoring untuk para developer, sehingga ketika membangun Dapps, mereka bisa melihat seberapa banyak aplikasinya memakai resource ketika dieksekusi on-chain.
- Tool CLI baru untuk SPO mengecek leadership schedule, namun hanya schedule yang berlaku bagi SPO tersebut, tidak dapat melihat schedule milik SPO lain.

### Release selanjutnya yang direncanakan:

- Peningkatan performa secara berkelanjutan melalui peningkatan parameter jaringan.
- UTXO HD project, penyimpanan status ledger menggunakan campuran RAM & Hard Disk Drive → peningkatan utilisasi jaringan yang sangat besar.
- Topologi jaringan P2P yang dinamis, dimana semua node dan peer dapat secara efisien terhubung satu sama lain.
- Plutus certification - Cardano Dapps asurance program → untuk memberikan rasa aman kepada para pengguna ketika menggunakan Plutus Dapps, dimana Dapps yang ingin digunakan sudah tersertifikasi terlebih dahulu.
- IOG bekerja sama dengan Cardano Defi Alliance, dimana Cardano Defi Alliance akan membantu membuatkan tooling untuk para developer Dapps, karena beberapa tooling dari IOG sudah mulai _obsolete_ dan tidak sempat dikembangkan lagi oleh IOG.
- Pipelining & Input Endorsers, dengan adanya ini Plutus Script compression tidak diperlukan lagi. Justru yang akan dilakukan adalah Plutus Script enhancements:

  - Reference Script
  - Reference Input
  - Shared Redeemers & Inline Datums
