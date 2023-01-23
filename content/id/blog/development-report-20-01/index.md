---
title: "
Development Report mingguan (per 20 Jan 2023) "
date: 2023-01-22T09:19:42+01:00
lastmod: 2023-01-22T09:19:42+01:00
draft: false
weight: 50
images: []
contributors: ["Andre Cahyadi"]
pinned: false
homepage: false

---
Dipublikasikan pada tanggal 21 Jan 2022

Disadur & diterjemahkan oleh andre cahyadi ([@prosperaan](https://forum.cardano.org/u/prosperaan))

Untuk komunitas Cardano Indonesia

Referensi: [Weekly development report as of 2023-01-20 | Essential Cardano](https://www.essentialcardano.io/development-update/weekly-development-report-as-of-2023-01-20)


### CORE TECHNOLOGY

Selama dua minggu terakhir, tim ledger menyelesaikan pengembangan untuk melacak individual depots; membangun transaction body untuk Conway Era yang baru (sejalan dengan CIP-1694); mengurangi beberapa penghitungan besar yang bermasalah pada saat epoch boundary secara signifikan; dan menyelesaikan technical debt yang masih ada.

Tim system test mengerjakan peningkatan test framework dan menjalankan beberapa sanity test terkait dengan fungsionalitas single relay koneksi P2P (peer to peer). Tim juga memperbarui test untuk node dan db-sync synchronization yang dibangun dengan Nix, fokus mengintegrasikan perubahan upstream, dan menyelesaikan technical debt yang masih ada.

Detail dari technical development report dapat dilihat di link berikut ini, [Archive | Cardano Development Updates](https://input-output-hk.github.io/cardano-updates/archive/)

### WALLET & SERVICES

Minggu ini, tim Daedalus menjalankan test dan merilis Daedalus v. 5.2.0, yang mendukung node v. 1.35.4 dan wallet v. 2022.12.14.

Pengembangan aplikasi desktop Lace Wallet masih terus berjalan. Tim mengerjakan beberapa refactoring task, termasuk implementasi dukungan untuk internalization. Mereka juga menyempurnakan local node status agar dapat disajikan di UI (User Interface), memperbaiki beberapa issue di hardware wallet Linux dan Ledger, serta melakukan upgrade ke cardano-js-sdk v. 0.7.0 yang baru.

Tim Adrestia telah merilis Cardano Rosetta 2.0.0 dan sedang berupaya menyiapkan cardano-js-sdk untuk production. Komponen ini sekarang masih di dalam versi beta.

Terakhir, mereka menyelesaikan dan mendokumentasikan fitur multi-signature (spending templates) di cardano-wallet.

### SMART CONTRACT

Minggu ini, tim Plutus bekerja untuk meningkatkan kapasitas skrip, inliner optimization, dan MVP untuk debugger Plutus. Tim Plutus Tools masih mengembangkan pengindeks Marconi dan mengerjakan technical debt untuk mendukung cardano-api di emulator.

Tim Marlowe mengimplementasikan tool baru untuk membandingkan chainseek database dengan cardano-db-sync, meningkatkan konfigurasi Nix untuk repositori Marlowe, dan memperbaiki masalah yang menyebabkan kegagalan edit-marlowe-proofs command. Mereka juga menerapkan pengujian untuk all types roundtrip serialization, memperbaiki misleading redeemer type di Runtime API, serta menyiapkan lingkungan pengujian integrasi Marlowe. Terakhir, mereka membuat sebuah tabel yang berisi kontrak ACTUS aktif.

### BASHO ERA (SCALING)

Tim Hydra mengerjakan spesifikasi teknis Hydra Head, meningkatkan hydra-plutus script, membuat unique headId tersedia bagi semua Hydra clients melalui API, memungkinkan hydra-node untuk sinkronisasi dari genesis (jika sudah dikonfigurasi), dan memperbaiki issue log yang dilaporkan oleh para pengguna baru Hydra. Tim juga mengadakan sesi pertama dengan tim Catalyst dan Cardano Foundation terkait project voting. Terakhir, dapat dibaca tulisan retrospective blog yang ditulis oleh Matthias Benkort dari Cardano Foundation tentang Hydra, [Hydra Head protocol: an open source solution for scalability](https://cardanofoundation.org/en/news/hydra-head-protocol-an-open-source-solution-for-scalability/), merangkum progress yang telah dibuat oleh tim Hydra selama tahun 2022 dan rencana untuk 2023. Intisari lengkap setiap bulan dapat dilihat juga di website Hydra Head, [Hydra: Head Protocol](https://hydra.family/head-protocol/).

Tim Mithril merilis distribusi versi baru, 2302.0 ([Release Mithril v2302.0 · input-output-hk/mithril · GitHub](https://github.com/input-output-hk/mithril/releases/tag/2302.0)) yang mengaktifkan optimasi terhadap snapshot digest computation pada signer dan aggregator nodes. Mereka juga mulai menerapkan mekanisme backward/forward compatibility untuk menangani soft updates secara seamless tanpa harus melalui proses sinkronisasi apabila memungkinkan. Selain itu, tim masih terus mengerjakan penerapan POC (proof of concept) yang mengandalkan transaksi on-chain untuk men-trigger sinkronisasi version switch di semua signer nodes agar synchronous updates dapat dicapai. Terakhir, mereka berhasil melakukan upgrade devnet, memperbaiki beberapa kerapuhan dalam pengujian CI (Continuous Integration) secara end to end, dan memperbarui dokumentasi SPO untuk set up sebuah Mithril signer node.

### VOLTAIRE ERA (GOVERNANCE)

Minggu ini, Project Catalyst meluncurkan website terbaru, [https://projectcatalyst.io/](https://projectcatalyst.io/), sebagai wadah untuk belajar bagaimana terlibat di Project Catalyst, melihat kembali fund cycle sebelumnya, dan mengeksplor project - project yang telah mendapatkan pendanaan.

Minggu lalu, telah diperkenalkan mengenai SVE (Special Voting Event), yakni kegiatan voting yang dilakukan di luar Project Catalyst Fund cycles dan akan menggunakan Catalyst tooling. Tujuannya adalah sebagai wadah untuk mendapatkan persetujuan dari komunitas terkait keputusan yang tidak berkaitan dengan community challenges di Project Catalyst.

Special Voting Event pertama akan diperkenalkan sebagai bagian dari Project Catalyst Fund 10. More details coming soon!
