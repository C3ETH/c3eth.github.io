---
title: "
Sidechain EVM Cardano (bagian dari keluarga Sidechain) "
date: 2022-08-20T09:19:42+01:00
lastmod: 2022-08-20T09:19:42+01:00
draft: false
weight: 50
images: []
contributors: ["Andre Cahyadi"]
pinned: false
homepage: false

---

Dipublikasikan pada tanggal 20 Aug 2022<br/>
Ditranslasi & disadur oleh andre cahyadi ([@prosperaan](https://forum.cardano.org/u/prosperaan))<br/>
Untuk komunitas Cardano Indonesia<br/>
Referensi: <br/>
[Introducing the Cardano EVM sidechain - IOHK Blog](https://iohk.io/en/blog/posts/2022/07/06/introducing-the-cardano-evm-sidechain/)

> **Sidechain EVM Cardano adalah sebuah solusi skalabilitas terdesentralisasi yang dikembangkan oleh IOG.**

Hard fork Vasil akan memberikan banyak peluang dalam pengembangan dan penggunaan yang efisien dari berbagai produk Dapps dan DeFi di Cardano. Untuk meningkatkan skalabilitas, **sidechain dan layer 2** adalah beberapa solusi yang dapat diterapkan oleh proyek - proyek yang dibangun di atas Cardano.

### [](#interoperabilitas-1)**Interoperabilitas**

Ketika sebuah jaringan blockchain bersifat interoperabilitas, hal itu berarti data pengguna dan aset yang dihasilkan dalam jaringan tersebut dapat ditransfer/dipindahkan dari/ke jaringan blockchain yang berbeda.

Interoperabilitas adalah hal yang krusial dalam sebuah ekosistem yang terdesentralisasi. Begitu pengguna memiliki sebuah tool untuk mengklaim kembali kepemilikan data mereka, mereka membutuhkan sebuah infrastruktur yang memungkinkan untuk saling berbagi dengan orang lain di beberapa jaringan yang saling terhubung. Dan, jika ingin digunakan di dalam ekonomi global, sudah seharusnya token pengguna tidak lagi disimpan di dalam satu blockchain. Sidechain yang digabungkan dengan protokol bridging adalah solusi yang dapat memfasilitasi pergerakan data secara bebas di dalam sebuah ekonomi digital yang terdesentralisasi.

![image](https://global.discourse-cdn.com/business4/uploads/cardano/optimized/3X/4/b/4b2912aab086e4336cef2ca45e066c6d48004734_2_1000x500.jpeg)

### [](#keluarga-sidechain-2)**Keluarga ‘Sidechain’**

Sebuah blockchain tidak dapat berhasil jika terisolasi. Tidak ada satu blockchain yang mampu mentransformasi seluruh infrastruktur digital menjadi lebih baik, dan tidak ada satu blockchain juga yang mampu merevolusi semuanya mulai dari cara kita berbagi data, bertransaksi, sampai berhubungan dengan orang lain secara virtual. Seiring berjalannya waktu, dibutuhkan sebuah sidechain khusus yang memungkinkan lebih banyak developer dari jaringan - jaringan lain untuk terkoneksi dan bergabung dengan Cardano, serta tool khusus yang dapat mendukung pengembangan aplikasi untuk sebuah use case yang spesifik.

IOG berencana untuk membuat keluarga ‘sidechain’ yang akan membawa skalabilitas, interoperabilitas, dan programabilitas yang lebih besar ke Cardano. Sejumlah kontributor di jaringan ekosistem lain juga sedang membangun sidechain mereka sendiri dengan menambahkan kemampuan ke Cardano.

Saat ini, Cardano sedang berevolusi untuk mendukung arsitektur multi chain dan para developer nantinya dapat memanfaatkan platform dengan cara berikut ini:

- Menggunakan Plutus untuk membuat smart contract dan Dapps di dalam environment yang high assurance dan resource efficient.
- Menggunakan Sidechain EVM untuk mengembangkan dan menerapkan smart contract yang kompatibel dengan EVM di Cardano (tanpa harus membayar gas fees yang tinggi seperti di Ethereum).
- Menggunakan fitur tata kelola (governance) dari Sidechain EVM untuk membuat aplikasi yang memiliki tata kelola terdesentralisasi dengan mengoptimalkan tata kelola secara on-chain melalui voting.

### [](#sidechain-evm-cardano-3)**Sidechain EVM Cardano**

Sidechain EVM ini akan menjadi sidechain pertama yang dibangun dan dirilis oleh IOG dengan tujuan membuka pintu Cardano bagi para developer Solidity. Sidechain ini memungkinkan komunitas developer Solidity untuk membuat Dapps di platform dengan fees yang rendah dan ramah lingkungan (mengkonsumsi energi yang lebih sedikit) daripada blockchain Proof of Work.

#### [](#bagaimana-cara-kerjanya-4)**Bagaimana cara kerjanya?**

Ethereum Virtual Machine (EVM) adalah sebuah software/perangkat lunak yang dikembangkan oleh Ethereum untuk membantu komputer menjalankan smart contract. Setiap node di Ethereum menjalankan sebuah instance EVM untuk menentukan bagaimana status mesin akan berubah setiap kali block baru ditambahkan ke chain. Sidechain yang dibangun menggunakan EVM menawarkan fitur yang setara dengan blockchain Ethereum untuk memproses dan mengeksekusi smart contract. Sidechain EVM ini juga mampu mengimplementasikan fitur baru seperti protokol konsensus atau model ledger yang berbeda, sambil tetap mempertahankan kemampuan scripting EVM yang penting.

#### [](#fitur-fitur-utama-sidechain-evm-cardano-5)**Fitur - Fitur Utama Sidechain EVM Cardano**

1.  **Kompatibilitas dengan Ethereum**

    - **Kompatibilitas hard fork**
      Sidechain EVM akan tetap kompatibel dengan hard fork Ethereum. Hal ini penting untuk memastikan bahwa sidechain dapat tetap interoperabel dengan Ethereum termasuk tool dan aplikasi yang dibangun di atas jaringannya.
    - **Kompatibilitas tool developer**
      Tool - tool developer Ethereum digunakan secara luas untuk penyimpanan aset, membaca status ledger, memonitor analytics, dan masih banyak lagi. Pengguna sidechain EVM akan memiliki akses ke tool - tool ini dari ekosistem Cardano. Hal ini untuk memberikan low entry barrier bagi para developer Solidity yang ingin membangun di atas jaringan Cardano.
    - **Kompatibilitas wallet Web3.js**
      Teknologi Web3 memberikan pengguna kontrol penuh atas data mereka sendiri. Hal ini berarti tidak ada keterlibatan pihak ketiga seperti perusahaan yang memiliki/menyimpan data personal pengguna. Wallet Web3 memiliki fitur untuk menjaga anonimitas pengguna dan perlindungan data, serta untuk berinteraksi dengan Dapps.

2.  **Protokol konsensus Ouroboros**
    Sidechain EVM menggunakan algoritma konsensus Ouroboros Byzantine Fault Tolerance (OBFT) sebagai pengganti Proof of Work (PoW) Ethereum. OBFT merupakan implementasi dari Ouroboros yang mampu mentolerir kesalahan dari BFT, serta menawarkan pemrosesan transaksi yang lebih baik dengan kecepatan penuh dan konfirmasi secara instan.

    Sidechain EVM memperluas implementasi OBFT dengan memungkinkan set validator yang dinamis melalui proses rotasi. Ledger Cardano memungkinkan fitur set validator dinamis ini sebagai single source of truth dalam proses produksi block.

3.  **Pendekatan secara permissionless**
    Desentralisasi adalah salah satu landasan kepercayaan ekonomi digital. Transparansi dari teknologi blockchain dapat menghambat seseorang yang ingin melakukan penipuan. Untuk membangun jaringan yang benar-benar terdesentralisasi, penting untuk dipastikan bahwa jaringan tersebut bersifat permissionless/tanpa izin, yang dapat memberikan setiap orang hak istimewa untuk mengambil bagian dalam aktivitas di jaringan tanpa bergantung pada otoritas terpusat. Sidechain EVM ini akan menjadi jaringan yang permissionless.

4.  **Keamanan**
    Sidechain EVM memiliki beberapa fitur untuk menjaga keamanan, antara lain:

    - **Pengamatan Status**
      Node validator di sidechain dapat membaca distribusi delegasi stake ADA dari main chain
    - **Pemilihan Validator**
      Sebuah algoritma yang bersifat deterministik dijalankan ke semua kandidat yang memenuhi syarat dan komitenya dipilih berdasarkan algoritma tersebut
    - **Produksi Block**
      Validator yang terpilih menjadi bagian dari komite produksi block menerima Rewards atas pekerjaan mereka
    - **Rollover Validator**
      Setelah interval yang ditentukan selesai, komite baru mengambil alih proses produksi block dari komite sebelumnya

### [](#roadmap-6)**Roadmap**

Sidechain EVM Cardano sedang dikembangkan secara iteratif. Sama seperti peluncuran produk lainnya, pendekatan iteratif dan penilaian performa tetap diperlukan untuk memastikan semuanya bekerja seperti yang dikehendaki. Peluncuran testnet awal akan menjadi dasar untuk penilaian Sidechain EVM ini, diikuti dengan peluncuran sidechain aktif dan pasif, lalu berakhir dengan penerapan di mainchain.

![image](https://global.discourse-cdn.com/business4/uploads/cardano/optimized/3X/d/8/d820ffed474c87db3d90c49eaa0289f3ff9ea6bd_2_1000x500.jpeg)
