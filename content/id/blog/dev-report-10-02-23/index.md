---
title: "
Development Report mingguan (10 Feb 2023)"
date: 2023-02-13T09:19:42+01:00
lastmod: 2023-02-13T09:19:42+01:00
draft: false
weight: 50
images: []
contributors: ["Andre Cahyadi"]
pinned: false
homepage: false

---

Dipublikasikan pada tanggal 12 Feb 2023

Disadur & diterjemahkan oleh andre cahyadi ([@prosperaan](https://forum.cardano.org/u/prosperaan))


Untuk komunitas Cardano Indonesia
Referensi: [Weekly development report as of 2023-02-10 | Essential Cardano](https://www.essentialcardano.io/development-update/weekly-development-report-as-of-2023-02-10)


### [](#core-technology-1)CORE TECHNOLOGY

Minggu ini, tim IOG bersama dengan CF (Cardano Foundation) dan Emurgo melanjutkan persiapan untuk Valentine Upgrade (SECP) mendatang. Proposal implementasi SECP untuk upgrade _**environment pre-production**_ dan _**mainnet**_ telah disubmit ([https://twitter.com/InputOutputHK/status/1623361548621082624](https://twitter.com/InputOutputHK/status/1623361548621082624)). **Upgrade ke environment pre-production mulai berlaku di tgl 11 Februari 2023 jam 00:00:00 UTC dan ke mainnet di tgl 14 Februari 2023 jam 21:44:51 UTC**.

Untuk progress terbaru dari persiapan Valentine Upgrade dapat melihat di website berikut ini, [https://iohk.zendesk.com/hc/en-us/articles/14669691361433-Ecosystem-readiness-for-the-SECP-upgrade](https://iohk.zendesk.com/hc/en-us/articles/14669691361433-Ecosystem-readiness-for-the-SECP-upgrade) dan website ini untuk melihat rilis terbaru untuk kompatibilitas komponennya, [https://docs.cardano.org/tools/comp-matrix](https://docs.cardano.org/tools/comp-matrix).

Selama dua minggu terakhir, tim ledger mengerjakan persiapan integrasi, clean up dan debug beberapa issue serialization, dan menambahkan pengujian. Mereka juga terus melanjutkan pengerjaan di project besar dan merilis CIP ([CIPs/README.md at 06fc0ab2d9cd4b73503f6c0b1ea6819d3c0b57e3 · cardano-foundation/CIPs · GitHub](https://github.com/cardano-foundation/CIPs/blob/06fc0ab2d9cd4b73503f6c0b1ea6819d3c0b57e3/CIP-%3F%3F%3F%3F/README.md#evolution-of-the-cardano-ledger)) agar ledger masuk ke dalam kategori CIP.

Setelah menyelesaikan aktivitas pengujian, tim konsensus melanjutkan refactoring prototype UTXO-HD dan membuat sebuah repositori baru yang berisi anti-diff packages yang digunakan di dalam prototype. Pengerjaan juga masih terus berlangsung di development Genesis. Tim sedang mempersiapkan pertemuan dengan para researcher untuk mengaudit desain implementasi, serta melanjutkan pengerjaan basic tests dan simplifications. Terakhir, mereka memperkenalkan dua tool baru, satu untuk memindahkan CBOR-encoded blocks ke JSON dan satu lagi untuk mengakses local immutable database.

Seperti biasa, detail dari technical development report dapat dilihat di link berikut ini, [Archive | Cardano Development Updates](https://input-output-hk.github.io/cardano-updates/archive/).

### [](#wallet-services-2)WALLET & SERVICES

Minggu ini, tim melanjutkan pengerjaan aplikasi desktop Lace Wallet. Mereka menjalankan lebih banyak pengujian otomatis, mengintegrasikan analytics tracking Matomo, dan memunculkan status Cardano node di UI. Mereka juga merestrukturisasi code base agar file source code dapat dibagi berdasarkan fitur dan memisahkan file terjemahan dari folder browser Lace. Tim bekerja sama dengan tim DevX untuk membuat sebuah desktop installer Lace yang mampu terhubung ke semua jaringan (mainnet/pre-production/preview). Terakhir, mereka memoles tampilan inner dApp browser dengan menambahkan beberapa style dan detail dari tim UI/UX.

Tim Adrestia merilis GraphQL v.8.0.0 yang kompatibel dengan versi node 1.35.4 dan 1.35.5 serta melanjutkan persiapan untuk merilis cardano-js-sdk ke production. Mereka juga sedang mengerjakan fitur extending multi-signature dengan delegation functionality di cardano-wallet dan refactoring DBLayer untuk meningkatkan kinerja dan penggunaan memori.

### [](#smart-contract-3)SMART CONTRACT

Minggu ini, tim Plutus masih melanjutkan pengerjaan Plutus debugger, peningkatan kapasitas script, dan dokumentasi built-in untuk source code. Pengembangan indexer dan beberapa technical debt juga masih dikerjakan oleh tim Plutus Tools.

Minggu ini, tim Marlowe meningkatkan data hash di dalam chain index serta mengerjakan project dan contract view dari Marlowe Explorer ([SCP-4849 SCP-4851 - Initial scafolding and contract view · input-output-hk/marlowe-explorer@6fa3919 · GitHub](https://github.com/input-output-hk/marlowe-explorer/commit/6fa3919aa52429e19ead543f500ec56834d793f2)). Mereka juga menjalankan beberapa pengujian unit dalam transaksi Marlowe, memfaktorkan ulang fungsi web page creation ([Scp 5015 Refactored common web page creation functions by dino-iog · Pull Request #12 · input-output-hk/marlowe-explorer · GitHub](https://github.com/input-output-hk/marlowe-explorer/pull/12)), dan membuat pengujian spesifikasi yang dapat direproduksi. Terakhir, tim menyiapkan infrastruktur untuk pengujian web API ([SCP-5020 web test setup by jhbertra · Pull Request #446 · input-output-hk/marlowe-cardano · GitHub](https://github.com/input-output-hk/marlowe-cardano/pull/446)), melakukan paginasi query API untuk memuat contract headers, dan menambahkan sebuah protokol MarloweHeaderSync untuk server MarloweSync ([SCP-4875 MarloweHeaderSync Server by jhbertra · Pull Request #442 · input-output-hk/marlowe-cardano · GitHub](https://github.com/input-output-hk/marlowe-cardano/pull/442)).

### [](#basho-era-scaling-4)BASHO ERA (SCALING)

Tim Hydra menyelesaikan pengerjaan spesifikasi Hydra v.1 ([Create updated specification for coordinated head protocol · Issue #448 · input-output-hk/hydra · GitHub](https://github.com/input-output-hk/hydra/issues/448)) dengan memperbarui grafik dan menambahkan section tentang rollbacks. Mereka selanjutnya berencana untuk membuat spesifikasi yang lebih approachable dan menjadi open standard. Tim juga meningkatkan tool hydra-cluster untuk meluncurkan sebuah sebuah environment devnet sandbox lokal, serta melanjutkan proses penyelerasan hydra-plutus scripts dengan menjalankan lebih banyak pemeriksaan pada “close” dan “contest” transactions.

Tim Mithril melanjutkan pengerjaan relational design baru dari aggregator store, yang akan digunakan untuk implementasi monitoring “version deployment” signer nodes. Mereka juga melakukan implementasi era reader untuk mendukung era switch dimana tim menyelesaikan pengembangan era reader adapter yang dapat mengambil era activation markers dari transaksi di chain Cardano. Terakhir, mereka membuat sebuah node SPO baru di jaringan Mithril dan memperbarui node tersebut ke versi 1.35.5 di infrastruktur devnet.

Tim sidechain telah merilis POC (proof of concept) testnet sidechain EVM ([https://twitter.com/InputOutputHK/status/1622886158140145669](https://twitter.com/InputOutputHK/status/1622886158140145669)). Para pengembang sekarang mulai dapat menguji transfer token di environment testing antar chain, menghubungkan wallet, dan men-deploy smart contract dan dApps. Untuk dokumentasi selengkapnya dapat dilihat di link berikut ini, [https://docs.cardano.org/cardano-sidechains/example-evm-sidechain/network-details](https://docs.cardano.org/cardano-sidechains/example-evm-sidechain/network-details).

### [](#voltaire-era-governance-5)VOLTAIRE ERA (GOVERNANCE)

Minggu ini, Project Catalyst menerima close out report project yang ke-400, yang mana hal ini merupakan tonggak luar biasa bagi program pendanaan yang baru berusia dua tahun ini. Stay tuned untuk informasi terbaru lainnya di website Project Catalyst, [https://projectcatalyst.io/](https://projectcatalyst.io/).
