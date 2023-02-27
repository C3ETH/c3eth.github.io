---
title: "
Development Report Mingguan (17 Feb 2023) "
date: 2023-02-18T09:19:42+01:00
lastmod: 2023-02-18T09:19:42+01:00
draft: false
weight: 50
images: []
contributors: ["Andre Cahyadi"]
pinned: false
homepage: false

---
Dipublikasikan pada tanggal 18 Feb 2023

Disadur & diterjemahkan oleh andre cahyadi ([@prosperaan](https://forum.cardano.org/u/prosperaan))

Untuk komunitas Cardano Indonesia
Referensi: [Weekly development report as of 2023-02-17 | Essential Cardano](https://www.essentialcardano.io/development-update/weekly-development-report-as-of-2023-02-17)


### [](#core-technology-1)CORE TECHNOLOGY

Minggu ini, Valentine (SECP) upgrade sudah live di mainnet ([https://twitter.com/InputOutputHK/status/1625615743470411784](https://twitter.com/InputOutputHK/status/1625615743470411784)). Dukungan native untuk SECP ini dapat mendorong interoperabilitas antar Cardano dengan chain lainnya ([New Cardano cryptographic primitives will bring greater interoperability and secure, cross-chain DApp development | Essential Cardano](https://www.essentialcardano.io/article/new-cardano-cryptographic-primitives-will-bring-greater-interoperability-and-secure-cross-chain-dapp-development)) dan menjamin tingkat keamanan yang tinggi bagi pengembangan dApps.

Seperti biasa, detail dari technical development report dapat dilihat di link berikut ini, [Archive | Cardano Development Updates](https://input-output-hk.github.io/cardano-updates/archive/).

### [](#wallet-services-2)WALLET & SERVICES

Minggu ini, tim Daedalus mengubah bagaimana Catalyst fund ditampilkan di dalam wallet dan memperbaiki issue kecil di progress screen.

Pengembangan aplikasi desktop Lace wallet masih berlanjut. Tim bekerja menyempurnakan tampilan layout dalam menampilkan embedded dApps, progress kemajuan di manajemen local node, dan mengadaptasi beberapa broken end-to-end testing ke codebase yang baru. Terakhir, mereka memperbaiki beberapa issue dengan hardware wallet dan issue CSS paddings/margins di tampilan dApps yang ada di desktop wallet.

Pada tgl 14 Feb 2023, tim Lace mengadakan Twitter Space untuk berdiskusi tentang progress pengembangan Lace Wallet dengan Charles Hoskinson, Alex Apeldoorn, Ben O’Hanlon, Mathieu Henrijean, dan beberapa anggota komunitas lainnya. Jika Anda melewatkannya, makan dapat mendengar rekamannya disini, [https://twitter.com/lace\_io/status/1625833260457594885](https://twitter.com/lace_io/status/1625833260457594885).

Tim Adrestia terus mengerjakan fitur extending multi-signature dengan delegation functionality di cardano-wallet. Mereka juga melakukan ekstraksi pada transaction balancing library dan masih mengerjakan refactoring DBLayer untuk meningkatkan kinerja dan penggunaan memori. Terakhir, tim sedang mempersiapkan rilis cardano-js-sdk ke production.

### [](#smart-contract-3)SMART CONTRACT

Minggu ini, tim Plutus masih mengerjakan pengembangan Plutus debugger, peningkatan kapasitas script, dan dokumentasi, Pengembangan indexer Marconi dan beberapa technical debt juga masih dikerjakan oleh tim Plutus Tools.

Minggu ini, tim Marlowe menghentikan penggunaan Marlowe Lambda ([SCP-5044 Migrated \`marlowe-pipe\` from \`marlowe-lambda\` repo. by bwbush · Pull Request #464 · input-output-hk/marlowe-cardano · GitHub](https://github.com/input-output-hk/marlowe-cardano/pull/464)), memperbaiki collateral index di tabel chain sync txout ([SCP-5031 Fixed collateral indexing for invalid scripts. by bwbush · Pull Request #455 · input-output-hk/marlowe-cardano · GitHub](https://github.com/input-output-hk/marlowe-cardano/pull/455)), dan memperbarui Marlowe-apps untuk menggunakan Runtime protocol. Mereka juga mendokumentasikan strategi stress test Marlowe Runtime dan updated command di marlowe-cli, serta mengimplementasikan kueri GetTransactions dan GetContractState bersamaan dengan automated Runtime scenarios. Terakhir, mereka menambahkan dukungan untuk fetching Marlowe State dari Marlowe Runtime yang memungkinkan pembuatan kontrak dengan input Oracle.

### [](#basho-era-scaling-4)BASHO ERA (SCALING)

Tim Hydra menyelesaikan beberapa pekerjaan terkait spesifikasi untuk menyelaraskan implementasi Hydra script, termasuk diantaranya script size dan cost. Mereka juga menganalisa asymptotic complexity dari transaksi collect dan fanout beserta relasinya, mengevaluasi profiling toolchain plutus-tx, dan menyiapkan peningkatan performa Hydra lebih lanjut di on-chain. Terakhir, tim mengadakan diskusi dengan para researcher dan internal auditor serta merencanakan langkah selanjutnya untuk mengamankan Hydra Head protocol dengan menggunakan ‘full’ minting policy.

Tim Mithril merilis distribusi 2306.0 terbaru ([Release Mithril v2306.0 · input-output-hk/mithril · GitHub](https://github.com/input-output-hk/mithril/releases/tag/2306.0)) dengan perbaikan beberapa issue kecil, beberapa pembaruan, serta melengkapi implementasi era reader sebelumnya yakni melengkapi signer dan aggregator node dengan era activation markers reader. Mereka juga merancang sebuah event store di aggregator node dan mulai mengimplementasikan itu sebagai solusi monitoring yang menyediakan figur dari version deployment rate di signer node sebelum mengaktifkan era switch. Terakhir, mereka juga menyelesaikan relational design baru dari aggregator store dan memperbaiki bug yang mencegah beberapa signer untuk melakukan signing selama periode epoch jika mereka terlambat melakukan registration slot untuk epoch selanjutnya.

![image](https://global.discourse-cdn.com/business4/uploads/cardano/optimized/3X/e/2/e22a4dad9f7bedde26acd629fde163eaa4f11c33_2_750x420.jpeg)
