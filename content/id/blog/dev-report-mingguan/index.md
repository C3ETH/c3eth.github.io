---
title: "
Development Report mingguan (per 27 Jan 2023) "
date: 2023-01-28T09:19:42+01:00
lastmod: 2023-01-28T09:19:42+01:00
draft: false
weight: 50
images: []
contributors: ["Andre Cahyadi"]

---

Dipublikasikan pada tanggal 28 Jan 2022

Disadur & diterjemahkan oleh andre cahyadi ([@prosperaan](https://forum.cardano.org/u/prosperaan))

Untuk komunitas Cardano Indonesia

Referensi: [Weekly development report as of 2023-01-27 | Essential Cardano](https://www.essentialcardano.io/development-update/weekly-development-report-as-of-2023-01-27)

### CORE TECHNOLOGY

Minggu ini, tim ledger menyelesaikan beberapa preliminary groundwork untuk persiapan CIP-1694, memperbaiki masalah hosting PDF yang menggunakan formal specifications, dan masih mengerjakan API ledger baru yang user friendly. Tim juga menyelesaikan POC (proof of concept) constraint based generators untuk menjalankan property tests yang diharapkan bisa mengganti trace generator saat ini. Terakhir, tim menyelesaikan technical debt yang masih ada.

Selama dua minggu terakhir, tim consensus menyelesaikan aktivitas pengujian prototype UTXO-HD. Ini adalah milestone yang sangat penting, yang akhirnya memungkinkan system-level testing dan benchmarking dapat dijalankan, sekaligus memulai refactoring dan clean-up prototype. Pengerjaan masih terus berlangsung di development Genesis (dimana tim menguraikan roadmap untuk menunjukkan pekerjaan yang masih tersisa) dan di proses benchmarking chain-sync jumping. Terakhir, progress peningkatan yang dilakukan oleh tim juga sudah dapat dilihat terkait bagaimana sebuah block baru yang akan datang ditangani, serta mempercepat integrasi VRF dan KES yang baru.

Minggu lalu, IOG mengumumkan tanggal untuk SECP upgrade, yang akan mendorong interoperabilitas lebih besar dan proses development cross-chain dApps yang aman serta efisien di Cardano. **Upgrade mainnet sementara dijadwalkan di tgl 14 Februari 2023 jam 21:44:51 UTC dan atas dasar itulah, IOG menargetkan proses update ke environment pre-production di tgl 11 Februari 2023 jam 00:00:00 UTC.**
Untuk mengetahui apa itu SECP, silahkan lihat posting berikut ini, [SECP untuk mendorong cross-chain develoment di Cardano](https://forum.cardano.org/t/secp-untuk-mendorong-cross-chain-develoment-di-cardano/113391).

Tim jaringan dan node, dengan bantuan anggota komunitas SPO, sedang menyelidiki root cause dari anomali jaringan yang terjadi dan mempengaruhi sejumlah node jaringan dan relay di akhir pekan lalu. Progress-nya pun positif, terima kasih ke semua komunitas SPO Cardano atas support-nya dalam hal ini!

Detail dari technical development report dapat dilihat di link berikut ini, [Archive | Cardano Development Updates](https://input-output-hk.github.io/cardano-updates/archive/).

### WALLET & SERVICES

Pengembangan aplikasi desktop Lace Wallet masih terus berjalan. Tim menyelesaikan technical debt yang masih ada diantaranya refactoring, peningkatan developer tools, dan perubahan struktur folder. Mereka juga menambahkan sebuah fitur untuk mendukung banyak bahasa di masa depan, meningkatkan proses shutdown untuk local node, serta memperbaiki beberapa isu hardware wallet.

Tim Adrestia masih terus memperbarui Rosetta beserta GraphQL ke versi node dan db-sync yang terbaru. Lihat release notes-nya disini, [https://docs.cardano.org/tools/release-notes](https://docs.cardano.org/tools/release-notes). Mereka juga terus menyiapkan cardano-js-sdk untuk dirilis ke production. Terakhir, tim sedang mengerjakan fitur extending multi-signature dengan delegation functionality di cardano-wallet.

### SMART CONTRACT

Minggu ini, tim Plutus telah merencanakan pekerjaan mereka untuk lima sprint ke depan (_FYI: satu sprint development pada umumnya 10-14 hari kerja_). Tujuan dari core team Plutus ini adalah menyelesaikan MVP untuk debugger, meningkatkan kapasitas script, menambah uji properti dengan intermediate representation generators, dan menambah formal method untuk Plutus built-in.

Tim Plutus Tools berencana menyelesaikan pengindeks Marconi (sebuah aplikasi chain follower yang bersifat lightweight dan customizable dengan library-nya) yang ditujukan bagi para developer dApps untuk mengindeks dan mengkueri blockchain Cardano secara cepat. Mereka juga melanjutkan pengerjaan dokumentasi cardano-ledger-api package dan prototype infrastruktur untuk pengujian Plutus.

Tim Marlowe menambahkan long polling support for contracts ke API, menguji CIP-30 ([https://cips.cardano.org/cips/cip30/](https://cips.cardano.org/cips/cip30/)) terkait integrasi wallet ke Nami Wallet, dan membuat spesifikasi pengujian untuk marlowe-cardano ([GitHub - input-output-hk/marlowe-cardano: Marlowe smart contract language Cardano implementation](https://github.com/input-output-hk/marlowe-cardano#readme)). Mereka juga menambahkan beberapa unit test, memperbaiki bug, meningkatkan beberapa constructs, dan menambah dukungan untuk penerapan input ke ACTUS Lab.

### BASHO ERA (SCALING)

Tim Hydra sedang fokus pada spesifikasi Hydra Head v1 yang saat ini sedang di-review dan difinalisasi. Tim juga menyelaraskan on-chain scripts untuk fund reimbursement agar operasionalnya sesuai dengan yang sudah dispesifikasikan, serta meningkatkan framework mutation test agar memiliki kontrol yang lebih besar ketika menguji Plutus scripts. HeadId yang ditambahkan ke API dan contoh klien TUI telah mempermudah integrasi hydra-node. Percobaan pertama menggunakan Hydra Node Explorer di environment preview menunjukkan kelebihan itu ([http://explorer.hydra.family/](http://explorer.hydra.family/)).

Minggu lalu, tim juga telah menerbitkan paper, [Implementing auction projects using Hydra | Essential Cardano](https://www.essentialcardano.io/article/implementing-auction-projects-using-hydra) yang merupakan kolaborasi antara IOG dan MLabs. Untuk ringkasan paper tersebut dapat dilihat disini, [IOG and MLabs cooperate to develop a reference implementation of an auction using Hydra protocols | Essential Cardano](https://www.essentialcardano.io/article/iog-and-mlabs-cooperate-to-develop-a-reference-implementation-of-an-auction-using-hydra-protocols).

Tim Mithril menyelesaikan implementasi mekanisme backward/forward compatibility di API messages mereka untuk menangani soft updates secara seamless di jaringan Mithril. Mereka juga menyelesaikan POC yang mengandalkan transaksi on-chain untuk men-trigger sinkronisasi version switch di semua signer nodes dan memulai penerapannya untuk menangani breaking changes. Selain itu, mereka memperbarui enforcement API version dengan menilai kompatibilitas menggunakan Semver.

### [](#voltaire-era-governance-5)VOLTAIRE ERA (GOVERNANCE)

Rumah baru untuk Project Catalyst, [https://projectcatalyst.io](https://projectcatalyst.io), bukan saja berperan sebagai jendela tetapi juga database ke semua Fund cycles dan project yang sudah terdanai. Anda dapat melacak progress sebuah project melalui laporannya, pembayaran yang diterima, hingga tim di belakang project tersebut.

Tahun lalu, metode pelaporan baru diperkenalkan dan harus diikuti oleh semua project yang sudah terdanai. Metode itu disebut milestones-based reporting, [Repositioning Project Catalyst ahead of the next funding round - IOHK Blog](https://iohk.io/en/blog/posts/2022/11/01/repositioning-project-catalyst-ahead-of-the-next-funding-round/). Tujuannya, tentu saja untuk meningkatkan pengawasan dan transparansi serta menunjukkan bahwa ada pekerjaan hebat yang dilakukan di Cardano. Sebuah Community Audit Working Group juga diluncurkan dimana siapapun dapat ikut berpartisipasi untuk mendukung nilai - nilai yang ingin dicapai melalui Project Catalyst. Jika Anda tertarik untuk berpartisipasi, silahkan email ke [catalyst@iohk.io](mailto:catalyst@iohk.io).
