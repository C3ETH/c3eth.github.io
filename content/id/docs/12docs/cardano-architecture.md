---
title: Arsitektur Cardano
description: Arsitektur Cardano
lead: ''
date: "06-10-2020 08:48:23 +0000"
lastmod: "06-10-2020 08:48:23 +0000"
draft: 'false'
images: []
---

Bagian ini menjelaskan arsitektur tingkat tinggi dari Cardano, yang terdiri dari rincian tentang komponen inti dan interaksinya, dan secara singkat membahas era dan implementasi Cardano.

### Arsitektur tingkat tinggi Cardano

Diagram berikut menguraikan interaksi antara komponen sistem Cardano:

![Gambar](https://ucarecdn.com/3756645a-a4a2-4d2f-846a-e454bf7cba60/)

### Komponen sistem

Implementasi Cardano saat ini sangat modular. Ini mencakup komponen berikut (kasus penggunaan penerapan yang berbeda akan menggunakan kombinasi komponen yang berbeda):

- [Node](https://github.com/input-output-hk/cardano-node)
- [Command Line Interface (CLI)](https://github.com/input-output-hk/cardano-node/blob/master/doc/reference/cardano-node-cli-reference.md)
- [Wallet Daedalus](https://github.com/input-output-hk/cardano-wallet)
- [Sinkronisasi db Cardano](https://github.com/input-output-hk/cardano-db-sync)
- [Server API GraphQL](https://github.com/input-output-hk/cardano-graphql) (Apollo)
- [Server SMASH](https://github.com/input-output-hk/smash)

### Node dan node jarak jauh

Sistem blockchain terdiri dari satu set node yang didistribusikan di seluruh jaringan yang berkomunikasi satu sama lain untuk mencapai [konsensus](https://docs.cardano.org/core-concepts/consensus-explained) tentang status sistem.

#### Node bertanggung jawab untuk:

- Menjalankan protokol [Ouroboros](https://github.com/input-output-hk/ouroboros-network/#ouroboros-network)
- Memvalidasi dan menyampaikan blok
- Memproduksi blok (beberapa node)
- Memberikan informasi tentang keadaan blockchain ke klien lokal lainnya

You can only trust nodes run by you or your organization. This is why [Daedalus](https://docs.cardano.org/cardano-components/daedalus-wallet) runs a node in the background.

#### Proses node

Cardano-node adalah level teratas untuk node dan terdiri dari subsistem lain, yang paling signifikan adalah konsensus, [ledger](https://github.com/input-output-hk/cardano-ledger-specs#cardano-ledger) dan jaringan dengan konfigurasi tambahan, CLI, logging, dan pemantauan. Protokol IPC Node-to-Node

Tujuan dari protokol Inter-Process Communication (IPC) node-to-node adalah untuk memungkinkan pertukaran blok dan transaksi antar node sebagai bagian dari algoritma konsensus Ouroboros.

Protokol node-to-node adalah protokol komposit, terdiri dari tiga 'mini-protokol':

- **chain-sync** : Digunakan untuk mengikuti rantai dan mendapatkan header blok.
- **block-fetch** : Digunakan untuk mendapatkan isi dari blok.
- **tx-submission** : Digunakan untuk meneruskan transaksi.

Mini-protokol ini dimultipleks pada satu koneksi Transmission Control Protocol (TCP) yang berjalan lama antar node. Mereka dapat dijalankan di kedua arah pada koneksi TCP yang sama untuk memungkinkan pengaturan peer-to-peer (P2P).

The overall protocol -and each mini-protocol- is designed for a trustless setting where both sides need to guard against Denial-of-Service (DoS) attacks. For example, each mini-protocol uses consumer-driven control flow, so a node only requests more work when it is ready, rather than having work pushed upon it.

Desain protokol bersifat modular dan dapat berevolusi: negosiasi versi digunakan untuk menyetujui kumpulan protokol mini yang akan digunakan, yang memungkinkan protokol mini tambahan atau yang diperbarui ditambahkan dari waktu ke waktu tanpa menyebabkan masalah kompatibilitas.

#### IPC Node-ke-Klien

The purpose of the node-to-client IPC protocol is to allow local applications to interact with the blockchain via the node. This includes applications such as wallet backends or blockchain explorers. The node-to-client protocol enables these applications to access the raw chain data and to query the current ledger state. It also provides the ability to submit new transactions to the system.

The node-to-client protocol uses the same design as the node-to-node protocol, but with a different set of mini-protocols, and using local pipes rather than TCP connections. As such, it is a relatively low-level narrow interface that exposes only what the node can provide natively. For example, the node provides access to all the raw chain data but does not provide a way to query data on the chain. The job of providing data services and more convenient higher level APIs is delegated to dedicated clients, such as cardano-db-sync and the wallet backend.

The node-to-client protocol consists of three mini-protocols:

- **chain-sync** : Digunakan untuk mengikuti rantai dan mendapatkan blok
- **local-tx-submission** : Digunakan untuk mengirimkan transaksi
- **local-state-query** : Digunakan untuk menanyakan status buku besar

Sinkronisasi rantai versi node-ke-klien menggunakan blok penuh, bukan hanya header blok. Inilah sebabnya mengapa tidak diperlukan protokol pengambilan blok terpisah. Protokol pengiriman-tx-lokal seperti protokol pengiriman-tx node-ke-simpul tetapi lebih sederhana, dan mengembalikan rincian kegagalan validasi transaksi. Protokol kueri status lokal menyediakan akses kueri ke status buku besar saat ini, yang berisi banyak data menarik yang tidak secara langsung tercermin pada rantai itu sendiri.

[Baca lebih lanjut tentang desain protokol jaringan dan protokol komunikasi node Cardano.](https://docs.cardano.org/explore-cardano/cardano-network/networking-protocol)

### Antarmuka baris perintah (CLI)

Alat CLI node adalah "pisau tentara swiss" dari sistem. Itu dapat melakukan hampir semua hal, tetapi levelnya cukup rendah dan tidak terlalu nyaman karena berbasis teks dan tidak memiliki antarmuka pengguna grafis (GUI).

Alat CLI dapat:

- Query node untuk informasi
- Kirim transaksi
- Buat dan tanda tangani transaksi
- Kelola kunci kriptografi

### dompet Daedalus

Daedalus adalah dompet simpul penuh yang membantu pengguna untuk mengelola ada mereka, dan dapat mengirim dan menerima pembayaran di blockchain Cardano. Daedalus terdiri dari frontend dompet dan backend. Frontend adalah aplikasi grafis yang dilihat dan berinteraksi dengan pengguna. Backend adalah proses layanan yang memantau keadaan dompet pengguna dan melakukan semua 'pengangkatan berat', seperti pemilihan koin, konstruksi transaksi, dan pengiriman. Backend berinteraksi dengan node lokal melalui protokol IPC node-to-client, dan berinteraksi dengan frontend melalui HTTP API. Backend juga menyediakan CLI yang memungkinkan interaksi dengan dompet. Backend dompet juga dapat digunakan sendiri -tanpa Daedalus- melalui API-nya. Ini adalah cara yang nyaman bagi pengembang perangkat lunak untuk mengintegrasikan Cardano dengan aplikasi dan sistem lain.

Kami menyarankan bahwa sebagian besar pengguna tingkat lanjut yang ingin menggunakan Cardano memulai dengan Daedalus.

### cardano-db-sync

Node cardano hanya menyimpan blockchain itu sendiri dan informasi terkait yang diperlukan untuk memvalidasi blockchain. Prinsip desain ini adalah tentang meminimalkan kompleksitas kode, dan mengurangi biaya komputasi dan penggunaan sumber daya, untuk menjaga antarmuka lokal node seminimal mungkin dan menggunakan klien eksternal untuk menyediakan berbagai antarmuka yang nyaman dan fungsionalitas tambahan. Secara khusus, node tidak menyediakan antarmuka kueri yang nyaman untuk informasi historis di blockchain. Layanan data ini disediakan oleh komponen terpisah menggunakan database Structured Query Language (SQL).

Baca lebih lanjut tentang:

- Cardano DB Sync dan komponennya
- [MENGHANCURKAN](https://docs.cardano.org/cardano-components/smash)

### Tentang era dan implementasi Cardano

Cardano adalah buku besar terdistribusi generasi ketiga. Ini didasarkan pada Ouroboros, algoritma konsensus blockchain proof-of-stake (PoS) peer-review yang pertama kali muncul di konferensi penelitian teratas dalam kriptologi di seluruh dunia (Asosiasi Internasional untuk Penelitian Kriptologi 37th International Cryptology CXonference - Crypto 2017).

Nama Cardano adalah nama umum yang diberikan untuk platform tersebut, yang telah melalui berbagai era dan implementasi. Konsep-konsep ini perlu penjelasan lebih lanjut.

#### Era

Ada beberapa era dalam evolusi Cardano. Setiap era (Byron, Shelley, Goguen, Basho, dan Voltaire) mengacu pada aturan buku besar. Misalnya, jenis transaksi apa dan data apa yang disimpan dalam buku besar, atau keabsahan dan makna transaksi.

Evolusi mainnet Cardano dimulai dengan aturan buku besar Byron (era Byron). Mainnet mengalami hard fork pada akhir Juli 2020 untuk beralih dari aturan Byron ke aturan buku besar Shelley. Oleh karena itu, garpu keras ini menandai awal dari era Shelley.

#### Implementasi

Implementasi pertama Cardano diperkenalkan pada awal mainnet Cardano, pada September 2017. Implementasi ini mendukung aturan buku besar Byron secara eksklusif.

Kami kemudian melakukan implementasi ulang penuh Cardano, yang memungkinkan dua perubahan mendasar: dukungan untuk beberapa set aturan buku besar, dan pengelolaan proses hard fork untuk beralih dari satu set aturan ke aturan berikutnya. Dengan kata lain, implementasi baru dapat mendukung aturan Byron dan aturan Shelley, yang berarti bahwa, ketika diterapkan ke mainnet pada awal 2020, implementasinya juga sepenuhnya kompatibel dengan aturan Byron. Ini memungkinkan transisi yang mulus dari implementasi lama ke implementasi baru. Setelah semua pengguna Cardano mengupgrade node mereka ke implementasi baru, menjadi mungkin untuk memanggil hard fork dan beralih ke aturan Shelley.

Implementasi Cardano ketiga digunakan pada Shelley Incentivized Testnet (ITN). Sistem ini mendukung sebagian besar aturan Shelley, dan kami menggunakannya untuk menguji dinamika ekonomi dan sosial dari sistem delegasi Shelley.

Ikhtisar arsitektur Cardano ini mencerminkan implementasi Cardano saat ini yang digunakan di mainnet, bukan implementasi asli atau ITN.
