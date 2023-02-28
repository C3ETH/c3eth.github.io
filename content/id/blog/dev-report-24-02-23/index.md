---
title: "Development Report mingguan (24 Feb 2023) "
date: 2023-02-25T09:19:42+01:00
lastmod: 2023-02-26T09:19:42+01:00
draft: false
weight: 50
images: []
contributors: ["Andre Cahyadi"]
pinned: false
homepage: false
---

Dipublikasikan pada tanggal 24 Feb 2023

Disadur & diterjemahkan oleh andre cahyadi ([@prosperaan](https://forum.cardano.org/u/prosperaan))

Untuk komunitas Cardano Indonesia

Referensi: [Weekly development report as of 2023-02-24 | Essential Cardano](https://www.essentialcardano.io/development-update/weekly-development-report-as-of-2023-02-24)


### [](#core-technology-1)CORE TECHNOLOGY

Minggu ini, tim Networking memperbaiki beberapa issue dalam codingan peer-to-peer (P2P). Mereka juga menyelesaikan desain Eclipse evasion ([Ouroboros-Network · GitHub](https://github.com/orgs/input-output-hk/projects/19/views/16?pane=issue&itemId=19819205)) yang penting untuk fungsionalitas protokol Ouroboros Genesis, serta mulai mengerjakan implementasinya. Terakhir, tim merilis network package terbaru ([Network Team Update | Cardano Development Updates](https://input-output-hk.github.io/cardano-updates/2023-02-17-network/)) untuk diintegrasikan dengan master branch cardano-node.

Tim Ledger mengintegrasikan beberapa perubahan pada repositori cardano-base dan ouroboros-network. Perubahan tersebut diantaranya ledger serialization libraries agar proses versioning menjadi lebih tepat, serta dukungan untuk Conway era yang memungkinkan ledger state untuk transisi ke sistem tata kelola yang baru. Sebagai tambahan, tim juga masih mengerjakan beberapa technical debt, dokumentasi, infrastruktur testing, dan secara resmi menetapkan CIP-1694 ([https://github.com/cardano-foundation/CIPs/pull/380](https://github.com/cardano-foundation/CIPs/pull/380)) ke dalam pipeline pekerjaan.

Tim Consensus menganalisa hasil system level benchmark untuk UTXO HD yang menunjukkan performa yang substansial. Dari analisa didapat bahwa frekuensi pengambilan snapshot pada ledger yang dilakukan terlalu tinggi, sehingga tim meminta benchmarking test lagi dengan policy snapshot yang lebih realistis. Mereka juga melanjutkan peningkatan prototype dan merilis package terkait UTXO-HD.

Pengerjaan masih terus berlangsung di development Genesis (Ouroboros Genesis) - tim berdiskusi tentang design yang ada saat ini dengan para researcher serta melanjutkan testing dan benchmarking berbagai prototype Genesis. Tim juga memperbaiki kegagalan test yang terkait dengan iterator dimana mereka membuat framework terbaru untuk writing unit dan regression test, memperbarui dokumentasi, serta kemungkinan melakukan debugging pada QuickCheck counter examples. Terakhir, mereka merilis ouroboros-consensus v.0.2.0.0 dan ouroboros-consensus-cardano 0.3.0.0 ke CHaP ([GitHub - input-output-hk/cardano-haskell-packages: Metadata for Cardano's Haskell package repository](https://github.com/input-output-hk/cardano-haskell-packages))

Seperti biasa, detail dari technical development report dapat dilihat di link berikut ini, [Archive | Cardano Development Updates](https://input-output-hk.github.io/cardano-updates/archive/).

### [](#wallets-and-services-2)WALLETS AND SERVICES

Minggu ini, tim Daedalus mengerjakan package LedgerJS untuk memastikan dukungan yang efisien bagi hardware wallet.

Pengembangan aplikasi desktop Lace Wallet masih berlangsung. Tim terus meningkatkan fitur UI (user interface) dari local node ~sebagai contoh, kemampuan melihat status node dengan mengarahkan kursor ke sebuah icon di menu utama, dan menyelesaikan POC (proof of concept) untuk fitur “wallet auto connect” di dalam dApp connector. Mereka juga meningkatkan UI dan UX (user experience) dari aplikasi dan menyelesaikan beberapa issue di dalam repositori development. Platform Lace Wallet ([https://www.lace.io/](https://www.lace.io/)) sebentar lagi akan segera di-publish ke environment pre-production beserta fitur - fitur terbarunya untuk ditest, sebelum nantinya dipublish ke mainnet.

Tim Adrestia terus mengerjakan fitur extending multi-signature dengan delegation functionality di cardano-wallet. Mereka juga melakukan ekstraksi pada transaction balancing library dan masih mengerjakan refactoring DBLayer untuk meningkatkan kinerja dan penggunaan memori. Terakhir, tim sedang mempersiapkan rilis cardano-js-sdk ke production.

### [](#smart-contracts-3)SMART CONTRACTS

Minggu ini, tim Plutus masih mengerjakan pengembangan Plutus debugger, peningkatan kapasitas script, dan dokumentasi. Pengembangan indexer Marconi dan beberapa technical debt juga masih dikerjakan oleh tim Plutus Tools.

Minggu ini, tim Marlowe menjalankan beberapa unit test dan perbaikan terkait penghitungan interval timed-out validity, memperbarui opsi program names dan command-lines, dan mengimplementasikan indeks parsial awal ([SCP-5085 Simple contracts list view working by dino-iog · Pull Request #14 · input-output-hk/marlowe-explorer · GitHub](https://github.com/input-output-hk/marlowe-explorer/pull/14)) untuk kontrak Marlowe di Marlowe Explorer. Mereka juga menambahkan property-based test dan integration test ke protokol, memperbaiki beberapa issue server MarloweSync, serta menambahkan test kueri baru. Terakhir, mereka membuat versi parsial dasar dari marlowe-runtime-ts ([GitHub - input-output-hk/marlowe-runtime-ts: TypeScript Marlowe Runtime client](https://github.com/input-output-hk/marlowe-runtime-ts)) client library, menambah UI untuk memasukkan persyaratan kontrak ACTUS, dan memisahkan actus-core dari marlowe-cardano ([SCP 5006: Decouple \`actus-core\` by yveshauser · Pull Request #480 · input-output-hk/marlowe-cardano · GitHub](https://github.com/input-output-hk/marlowe-cardano/pull/480).

### [](#basho-era-scaling-4)BASHO ERA (SCALING)

Tim Hydra menyelesaikan pekerjaan terkait cara untuk menangani kontes ([Deadline gets "pushed out" on each contest by ffakenz · Pull Request #716 · input-output-hk/hydra · GitHub](https://github.com/input-output-hk/hydra/pull/716)) selama periode kontestasi. Sekarang, periode kontestasi lebih mudah dipilih tergantung pada jaringan dimana sebuah Hydra head berjalan sehingga tidak terhalangi oleh deadline lagi. Mereka juga menambahkan sebuah acceptance test dan menyelesaikan internal refactoring dari protocol logic, yang membuat perubahan di masa depan lebih mudah diimplementasikan.

Tim Mithril bekerja untuk menyelesaikan implementasi update jaringan secara seamless dengan era switch behaviour yang telah didesain sebelumnya. Mereka juga membuat dedicated command pada CLI (command-line interface) node mereka yang memungkinkan proses generating and signing era marker untuk disimpan di Cardano chain. Selain itu, tim juga membuat variasi use case untuk end-to-end test dan menyelesaikan implementasi monitoring “version deployment rate” di signer node yang akan membantu untuk mengetahui apakah sebuah era switch siap untuk diaktifkan. Terakhir, mereka mulai merancang sertifikasi untuk tipe data generik di Mithril certificate chain.

![image](https://global.discourse-cdn.com/business4/uploads/cardano/optimized/3X/b/f/bf463bee8f3e5c7adb1cf20b24790313056c0d71_2_750x421.jpeg)
