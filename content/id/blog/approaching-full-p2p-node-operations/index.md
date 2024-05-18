---
title: 'Mendekati operasi node P2P penuh'
date: 2024-03-14T09:19:42+01:00
lastmod: 2024-03-14T09:19:42+01:00
draft: false
weight: 50
images: []
categories: ["IOHK"]
tags: ["security", "performance", "SEO"]
contributors: ["Marcin Szamotulski"]
pinned: false
homepage: false
menu:
  blog:
    parent: "IOHK"
---

Jaringan peer-to-peer (P2P) merupakan kontributor utama bagi desentralisasi jangka panjang, keamanan, dan ketahanan blockchain, memungkinkan komunikasi P2P, sinkronisasi data, dan konsensus di antara para peserta.

Pada bulan Maret 2023, [P2P Dinamis](https://iohk.io/en/blog/posts/2023/03/16/dynamic-p2p-is-coming-to-cardano/) mengotomatiskan proses pemilihan rekan. Diaktifkan oleh rilis node [v.1.35.6](https://github.com/IntersectMBO/cardano-node/releases/tag/1.35.6) , ini meningkatkan komunikasi antara node yang terdistribusi, menyederhanakan pengoperasian node penghasil relai dan blok, dan menghilangkan kebutuhan akan konfigurasi statis dan input manual dari operator staking pool (SPO).

Titik jalan berikutnya (dan terakhir) dalam perjalanan menuju operasi node P2P penuh direncanakan akan hadir dengan rilis Ouroboros Genesis yang akan datang. Genesis dijadwalkan untuk digunakan sebagai bagian dari peningkatan Chang, yang ditargetkan pada musim panas ini. Ini akan memungkinkan node untuk melakukan bootstrap sendiri dari jaringan Cardano langsung.

### Transisi P2P penuh

Saat ini, entri jaringan awal memerlukan sinkronisasi dari validator yang aman dan tepercaya – biasanya sesama SPO tepercaya atau entitas lain. Setelah node disinkronkan, mereka beroperasi secara terdesentralisasi, menggunakan [Ouroboros Praos. Ouroboros Genesis](https://iohk.io/en/research/library/papers/ouroboros-praos-an-adaptively-secure-semi-synchronous-proof-of-stake-protocol/) akan menyederhanakan prosesnya lebih lanjut – ketika memanfaatkan kemampuan P2P dari cardano-node, prosesnya akan sepenuhnya otonom, sehingga menghilangkan kebutuhan akan campur tangan manusia.

Proses peralihan dari model hybrid saat ini menuju jaringan P2P penuh dilakukan secara bertahap, dan transisi tersebut sudah berlangsung. Menurut [PoolTool](https://pooltool.io/networkhealth) , sekitar 65% SPO telah ditingkatkan ke node v.8.7.3 yang dirilis pada bulan Desember, dan 5% telah ditingkatkan ke [v.8.9.0](https://github.com/IntersectMBO/cardano-node/releases/tag/8.9.0) yang memiliki versi P2P terbaru. Dalam upaya bersama, para insinyur dari IOG dan Cardano Foundation akan terus mengidentifikasi, menghubungi, dan menginformasikan masing-masing SPO untuk memastikan bahwa mereka menjalankan relay yang memadai untuk mendukung P2P, dan berkomunikasi dengan dompet, DApps, bursa, dan pengguna node lainnya untuk memastikan bahwa mereka meningkatkan node mereka jika diperlukan.

### Bergerak menuju Ouroboros Genesis: jaringan bootstrap sementara dan 'Genesis Lite'

Ketika sebuah node mengalami downtime yang lama atau tidak sinkron dengan jaringan, node tersebut harus menjalani proses self-bootstrap. Hal ini juga berlaku untuk node baru yang bergabung dalam jaringan. Sebagai tindakan sementara sebelum penerapan Ouroboros Genesis, IOG dan EMURGO akan menawarkan kepada pengguna jaringan bootstrap khusus baru – Genesis Lite – yang terdiri dari sekitar 20 node tepercaya. Jaringan relai bootstrap tepercaya ini akan disesuaikan dengan permintaan dan akan memfasilitasi bootstrap node dari konfigurasi Cardano Genesis. Node yang baru di-bootstrap harus mengikuti node yang terbaru dan tepercaya pada awalnya, kemudian beralih ke P2P ketika dekat dengan tip saat ini. Pada versi sebelumnya, transisi ini perlu dilakukan secara manual oleh pemilik node yang menentukan slot di file topologi.

### Peningkatan ekosistem

Peningkatan yang tepat waktu oleh pemilik node akan sangat penting untuk kelancaran peluncuran P2P penuh dan untuk menjaga kualitas layanan yang diperlukan untuk jaringan Cardano. Saat bermigrasi menuju sistem P2P penuh, semua pemilik node perlu mengupgrade node mereka ke versi yang sepenuhnya mendukung mekanisme P2P. Pengguna juga harus memastikan bahwa penyedia layanan mereka telah menyelesaikan peningkatan. Hal ini berlaku untuk penyedia DApp, bursa, penyedia dompet, penjelajah, peralatan lainnya, dan kumpulan taruhan.

IOG kini meningkatkan Daedalus, Lace, Nami, dan alat lain yang didukungnya agar sesuai dengan alat P2P baru. Tim Adrestia di Cardano Foundation juga sedang mengerjakan peningkatan untuk backend dompet. DB Sync akan terus berfungsi tanpa perubahan. IOG dan tim teknik CF serta komunitas SPO akan terus memantau kinerja jaringan dan kualitas layanan setiap hari dan berkomunikasi dengan pemangku kepentingan utama secara teratur.

**Semua SPO, bursa, pengembang DApp, penyedia infrastruktur, dan pengguna node lainnya minggu ini didorong untuk meningkatkan ke node terbaru v. 8.9.0 dan menjalankan semua node relai mereka dalam mode P2P.** Produsen blok yang dilindungi firewall di belakang node relai SPO juga dapat menggunakan mode P2P pada node penghasil bloknya dengan `useLedgerAfterSlot` yang disetel ke -1, atau mereka dapat terus berkomunikasi dengan node relai menggunakan jaringan lama jika mereka mau. Penyedia alat juga memiliki opsi untuk mengonfigurasi topologi khusus mereka sendiri menggunakan akar lokal di file topologi mereka dengan `useLedgerAfterSlot` disetel ke -1 untuk menonaktifkan penemuan rekan.

Source: [iohk.io](https://iohk.io/en/blog/posts/2024/03/14/approaching-full-p2p-node-operations/)
