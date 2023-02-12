---
title: "Development Report mingguan (03 Feb 2023) "
date: 2023-02-08T09:19:42+01:00
lastmod: 2023-02-08T09:19:42+01:00
draft: false
weight: 50
images: []
contributors: ["Andre Cahyadi"]
pinned: false
homepage: false
---

Dipublikasikan pada tanggal 08 Feb 2023

Disadur & diterjemahkan oleh andre cahyadi ([@prosperaan](https://forum.cardano.org/u/prosperaan))

Untuk komunitas Cardano Indonesia

Referensi: [Weekly development report as of 2023-02-03 | Essential Cardano](https://www.essentialcardano.io/development-update/weekly-development-report-as-of-2023-02-03)

### [](#core-technology-1)CORE TECHNOLOGY

Minggu ini, tim melanjutkan persiapan untuk Valentine Upgrade (SECP) mendatang. Tim juga merilis node terbaru v.1.35.5 ([Release Cardano Node 1.35.5 · input-output-hk/cardano-node · GitHub](https://github.com/input-output-hk/cardano-node/releases/tag/1.35.5)), diikuti dengan Rosetta v.2.1.0 ([Release Cardano Rosetta 2.1.0 · input-output-hk/cardano-rosetta · GitHub](https://github.com/input-output-hk/cardano-rosetta/releases/tag/2.1.0)).
Untuk mengecek progress terbaru dari persiapan Valentine Upgrade dapat melihat website berikut, [https://iohk.zendesk.com/hc/en-us/articles/14669691361433-Ecosystem-readiness-for-the-SECP-upgrade](https://iohk.zendesk.com/hc/en-us/articles/14669691361433-Ecosystem-readiness-for-the-SECP-upgrade) dan juga website ini untuk melihat rilis terbaru terkait kompatibilitas komponennya, [https://docs.cardano.org/tools/comp-matrix](https://docs.cardano.org/tools/comp-matrix).

Seperti biasa, detail dari technical development report dapat dilihat di link berikut ini, [Archive | Cardano Development Updates](https://input-output-hk.github.io/cardano-updates/archive/).

### [](#wallet-services-2)WALLET & SERVICES

Minggu ini, tim Daedalus menguji dan mengintegrasikan cardano node untuk UTXO-HD, node yang akan menyimpan UTXO di disk, bukan RAM.

Pengembangan aplikasi desktop Lace Wallet masih terus berjalan. Tim meningkatkan UI/UX tautan link dApps dan juga proses manajemen local node. Terakhir, mereka memperbaiki beberapa issue setelah upgrade ke cardano-js-sdk ([GitHub - input-output-hk/cardano-js-sdk: JavaScript SDK for interacting with Cardano, providing various key management options, with support for popular hardware wallets](https://github.com/input-output-hk/cardano-js-sdk#readme)) yang terbaru.

Jika Anda menguji Lace di **environment pre-production**, harap perhatikan fitur switching network yang sebentar lagi akan tersedia. Semua pengguna akan secara otomatis dialihkan ke mainnet pada saat peluncuran. Download Lace ([https://www.lace.io/](https://www.lace.io/)) sekarang dan dapatkan akses ke mainnet segera!

Tim Adrestia telah merilis cardano-rosetta 2.1.0. Komponen ini sekarang sudah kompatibel dengan node versi 1.35.5. Mereka sedang menyelesaikan pekerjaan untuk memperbarui GraphQL ke versi node dan db-sync yang terbaru. Tim juga masih melanjutkan persiapan untuk merilis cardano-js-sdk ke production. Terakhir, mereka juga sedang mengerjakan fitur extending multi-signature dengan delegation functionality di cardano-wallet dan refactoring DBLayer untuk meningkatkan kinerja dan penggunaan memori.

### [](#smart-contract-3)SMART CONTRACT

Minggu ini, tim Plutus melanjutkan pengerjaan Plutus debugger, peningkatan kapasitas script (sekaligus menambah optimasi Plutonomy, [GitHub - well-typed/plutonomy: An optimizer for untyped plutus core](https://github.com/well-typed/plutonomy#readme)), dan dokumentasi built-in untuk source code. Tim Plutus Tools masih terus mengembangkan indexer untuk project sidechain ([Sidechain toolkit | Essential Cardano](https://www.essentialcardano.io/glossary/sidechain-toolkit)) dengan Marconi dan mengerjakan beberapa technical debt dengan mendukung cardano-api di emulator.

Minggu ini, tim Marlowe menambah penanganan error ([SCP-4930: Error handling for CIP-30 wallet API by bjornkihlberg · Pull Request #11 · input-output-hk/marlowe-actus-labs · GitHub](https://github.com/input-output-hk/marlowe-actus-labs/pull/11)) yang terbaru untuk CIP-30 ([https://cips.cardano.org/cips/cip30/](https://cips.cardano.org/cips/cip30/)). Mereka juga meningkatkan chain index dengan memperbaiki ([SCP-4864 Fixed collateral change output index, per Babbage spec. by bwbush · Pull Request #437 · input-output-hk/marlowe-cardano · GitHub](https://github.com/input-output-hk/marlowe-cardano/pull/437)) output index yang salah untuk sebuah multi-asset output dan collateral, dan sebuah masalah yang menyebabkan redeemer chain index kadang menambahkan atau mengurangi satu byte. Tim juga menganalisa kegagalan transaksi di test skalabilitas Marlowe Runtime, memperbaiki beberapa issue dengan metadata, mendokumentasikan “attack surface” ([SCP-4778 Security guide for Marlowe. by bwbush · Pull Request #431 · input-output-hk/marlowe-cardano · GitHub](https://github.com/input-output-hk/marlowe-cardano/pull/431/files)) dari deployment Marlowe, dan mengimplementasikan sebuah server MarloweSync ([SCP-4874 MarloweSync Server by jhbertra · Pull Request #438 · input-output-hk/marlowe-cardano · GitHub](https://github.com/input-output-hk/marlowe-cardano/pull/438)).

Pekerjaan masih terus berlanjut di implementasi standard ACTUS ([ACTUS and Marlowe — Marlowe 1.0.0 documentation](https://play.marlowe-finance.io/doc/marlowe/tutorials/actus-marlowe.html)). Tim menyediakan informasi tentang prototype ACTUS Labs dan tipe kontrak ACTUS di dalam app, serta menambah sebuah simulasi tentang persyaratan kontrak ACTUS sebelum mengirim kontrak tersebut. Mereka juga mengimplementasikan sebuah long polling untuk fitur transaksi, membuat halaman dokumentasi wireframe, dan menambah sebuah opsi indikator untuk menunjukkan progress dari kontrak ACTUS yang sudah diterapkan.

### [](#basho-era-scaling-4)BASHO ERA (SCALING)

Tim Hydra mengadakan monthly review meeting dengan para stakeholder, kontributor, dan komunitas. Mereka meluncurkan laporan bulanan untuk Januari 2023 ([January 2023 | Hydra: Head Protocol](https://hydra.family/head-protocol/monthly/2023-01/)) yang merangkum pencapaian utama dan progress pengembangan selama periode tersebut. Tim juga melanjutkan pengerjaan spesifikasi Hydra v.1 dengan memasukkan perubahan yang disarankan oleh para reviewer. Terakhir, mereka mulai mempublikasikan informasi script beserta penghitungannya di website ([Transactions Costs | Hydra: Head Protocol](https://hydra.family/head-protocol/benchmarks/transaction-cost/#script-summary)).

Tim Mithril merilis distribusi 2304.1 ([Release Mithril v2304.1 · input-output-hk/mithril · GitHub](https://github.com/input-output-hk/mithril/releases/tag/2304.1)) terbaru yang memungkinkan mekanisme backward/forward compatibility untuk menangani soft updates secara seamless di jaringan Mithril. Selama fase QA dari distribusi ini, mereka menemukan dan memperbaiki sebuah bug yang mencegah beberapa signer untuk berkontribusi ke multi-signature. Mereka juga mulai melakukan refactoring penyimpanan internal node ke sebuah relational design. Terakhir, tim melanjutkan implementasi mekanisme sinkronisasi version switch di semua signer nodes untuk menangani breaking changes agar synchronous updates dapat dicapai.

Pengerjaan masih berlanjut di POC (proof of concept) testnet sidechain EVM, yang memungkinkan para developer untuk membuat smart contract Solidity dan dApps, sekaligus dapat memindahkan token di environment testing antar chain. Untuk tetap mengikuti perkembangannya, silahkan kunjungi link - link berikut ini:

- Artikel: [IOG launches a toolkit for developing custom sidechains on Cardano - IOHK Blog](https://iohk.io/en/blog/posts/2023/01/12/iog-launches-a-toolkit-for-developing-custom-sidechains-on-cardano/)
- Technical specification: [Release Example EVM Sidechain technical specification 1.0 · input-output-hk/sidechains-tooling · GitHub](https://github.com/input-output-hk/sidechains-tooling/releases/tag/technical_spec_1.0)
- Development documentation: [https://docs.cardano.org/cardano-sidechains/sidechain-toolkit/introduction](https://docs.cardano.org/cardano-sidechains/sidechain-toolkit/introduction)
- IOG Technical Community Discord: [IOG's Technical Community](https://discord.com/invite/inputoutput)

Dalam beberapa minggu ke depan, tim juga akan menyelenggarakan webinar tentang sidechain EVM ini, so stay tuned!
