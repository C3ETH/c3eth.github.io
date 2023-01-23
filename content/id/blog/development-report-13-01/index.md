---
title: "
Development Report mingguan (per 13 Jan 2023) "
date: 2023-01-13T09:19:42+01:00
lastmod: 2023-01-21T09:19:42+01:00
draft: false
weight: 50
images: []
contributors: ["Andre Cahyadi"]
pinned: false
homepage: false

---

Dipublikasikan pada tanggal 20 Jan 2022

Disadur & diterjemahkan oleh andre cahyadi ([@prosperaan](https://forum.cardano.org/u/prosperaan))

Untuk komunitas Cardano Indonesia

Referensi: [Weekly development report as of 2023-01-13 | Essential Cardano](https://www.essentialcardano.io/development-update/weekly-development-report-as-of-2023-01-13)


### CORE TECHNOLOGY

Minggu ini, tim consensus berfokus pada proses clean-up dan benchmarking prototipe UTXO-HD. Mereka juga berdiskusi dengan tim ledger tentang perubahan yang mungkin diperlukan untuk iterasi prototipe berikutnya. Pull request terkait penambahan era Conway sedang ditinjau untuk segera di-merged. Hal lain yang masih pending untuk dilihat kembali adalah kegagalan uji properti yang ditemukan saat iterasi. Saat ini sedang diselidiki apakah kesalahan ada di dalam model atau di dalam implementasi. Tim consensus juga memperbarui dokumentasi kode pengujian.

Detail dari technical development report dapat dilihat di link berikut ini, [Archive | Cardano Development Updates](https://input-output-hk.github.io/cardano-updates/archive/)

### WALLETS & SERVICES

Minggu ini, tim Daedalus menguji cardano-wallet dan node v.1.35.4 terbaru sebelum dirilis.

Pengembangan aplikasi desktop Lace Wallet masih terus berjalan. Tim sedang berusaha meningkatkan UX (User Experience) dengan memungkinkan beberapa dApps dapat dibuka secara bersamaan. Namun, hal ini membutuhkan usaha ekstra untuk membuat non-standard dApps kompatibel dengan standard CIP-30. Mereka juga meningkatkan UI (User Interface) dari local node management, yang memungkinkan pengguna untuk melihat progress sinkronisasi dan dialog untuk memulai atau menghentikan node. Terakhir, tim membuat kemajuan dalam mengimplementasikan magic links yang memungkinkan aplikasi - aplikasi luar membuka aplikasi desktop Lace Wallet.

Tim Adrestia masih terus berupaya menyiapkan cardano-js-sdk untuk production. Komponen ini sekarang masih di dalam versi beta.

Tim merilis cardano-wallet yang kompatibel dengan node v.1.35.4 dan Cardano Rosetta 2.0.0-rc.2 (versi pra-rilis) menjelang rilis resmi dari komponen - komponen ini.

### SMART CONTRACT

Minggu ini, tim Plutus bekerja untuk meningkatkan kapasitas skrip, inliner optimization, dan MVP untuk debugger Plutus. Di pihak lain, ada tim Plutus Tools yang masih mengembangkan pengindeks Marconi untuk digunakan saat rilis sidechains yang akan datang serta pengerjaan technical debt untuk mendukung cardano-api di emulator.

Tim Marlowe memperbarui marlowe-lambda ke API marlowe-apps yang baru; menerapkan prototipe oracle Marlowe bersifat off-chain yang sederhana dan terpusat; serta mendokumentasikan best practice dan limitations dari Marlowe. Mereka juga membuat beberapa tes antara lain untuk: memeriksa perintah selectCoins khususnya ketika membuat balanceable transaction, meningkatkan jumlah output sebesar 0 atau 1, serta untuk menguji keberhasilan atau kegagalan berdasarkan cukup atau tidaknya collateral yang digunakan. Selain itu, tim juga menerapkan basic client untuk marlowe-web-server; sebuah oracle testing untuk mengecek status PureScript-marlowe CI; dan menyiapkan lingkungan pengujian integrasi Cardano. Terakhir, mereka menyelidiki penambahan dukungan Merkleization ke Marlowe Runtime dan mendefinisikan struktur untuk kontrak ACTUS dalam metadata.

### BASHO ERA (SCALING)

Tim Hydra mulai mengerjakan POC (proof of concept) untuk voting di Hydra. Hal ini merupakan kolaborasi dengan tim Catalyst dari IOG, tim riset, dan Cardano Foundation. Sebagai tambahan, tim Hydra juga memperbaiki laporan benchmarking biaya transaksi di website Hydra Head dan mengurangi biaya untuk commit transactions sebesar ~30%. Selengkapnya dapat dilihat di link berikut ini, [Hydra: Head Protocol](https://hydra.family/head-protocol/).

Tim Mithril telah merancang mekanisme untuk memastikan update jaringan secara seamless jika terjadi breaking changes yang memerlukan proses sinkronisasi ulang dari semua signer nodes. Mereka menerapkan POC yang mengandalkan transaksi on-chain untuk men-trigger sinkronisasi version switch di semua signer nodes. Tim juga menerapkan solusi prototipe untuk meminimalkan terjadinya breaking changes ketika hanya soft updates saja yang dibutuhkan. Terakhir, mereka melakukan upgrade devnet dan memperbaiki beberapa kerapuhan dalam pengujian CI (Continuous Integration) secara end to end.

Minggu ini, IOG juga merilis iterasi pertama dari sidechain development kit yang dilengkapi dengan spesifikasi teknis untuk membangun sidechain di Cardano. Dengan toolkit ini, IOG telah membuat testnet sidechain EVM sebagai POC. Public testnet akan dirilis di Januari 2023 ini yang memungkinkan komunitas untuk membuat smart contract dan memindahkan token diantara testing environment chains. Untuk detailnya dapat dilihat di link - link berikut ini:

*   Artikel: [IOG launches a toolkit for developing custom sidechains on Cardano - IOHK Blog](https://iohk.io/en/blog/posts/2023/01/12/iog-launches-a-toolkit-for-developing-custom-sidechains-on-cardano/)
*   Technical specification: [Release Example EVM Sidechain technical specification 1.0 · input-output-hk/sidechains-tooling · GitHub](https://github.com/input-output-hk/sidechains-tooling/releases/tag/technical_spec_1.0)
*   Development documentation: [https://docs.cardano.org/cardano-sidechains/sidechain-toolkit/introduction](https://docs.cardano.org/cardano-sidechains/sidechain-toolkit/introduction)
*   IOG Technical Community Discord: [IOG's Technical Community](https://discord.com/invite/inputoutput)

### VOLTAIRE ERA (GOVERNANCE)

Minggu ini, Project Catalyst kembali dengan Town Hall pertama di tahun 2023 ini. Tim mengumumkan sebuah konsep voting baru bernama Special Voting Events (SVE) yang akan menggunakan Catalyst tooling. Kegiatan voting ini dilakukan di luar Project Catalyst Fund cycles. Tujuan adanya SVE ini adalah sebagai wadah untuk mendapatkan persetujuan dari komunitas terkait keputusan yang tidak berkaitan dengan community challenges di Project Catalyst.

Di Voltaire Era saat ini, adanya SVE membantu melengkapi CIP-1694 ([CIPs/README.md at voltaire-v1 · JaredCorduan/CIPs · GitHub](https://github.com/JaredCorduan/CIPs/blob/voltaire-v1/CIP-1694/README.md)) dengan menyediakan jalan untuk memperoleh persetujuan komunitas atas keputusan penting yang harus diambil, sebelum CIP-1694 rilis secara resmi. Detail terkait CIP-1694 akan diinformasikan lebih detail lagi dalam beberapa minggu mendatang, so stay tuned!
