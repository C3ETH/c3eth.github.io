---
title: "
Kachina - Smart Contract Privasi "
date: 2022-08-11T09:19:42+01:00
lastmod: 2022-08-11T09:19:42+01:00
draft: false
weight: 50
images: []
contributors: ["Andre Cahyadi"]
pinned: false
homepage: false

---

Dipublikasikan pada tanggal 11 Aug 2022<br/>
Ditranslasi & disadur oleh andre cahyadi ([@prosperaan](https://forum.cardano.org/u/prosperaan))<br/>
Untuk komunitas Cardano Indonesia<br/>
Referensi: <br/>
[Kachina: privacy-preserving smart contracts - IOHK Blog](https://iohk.io/en/blog/posts/2022/08/05/kachina-privacy-preserving-smart-contracts/)

> **Kachina**<br/>
> Memanfaatkan ZK Snarks untuk fungsi _smart contract_ yang dapat menjaga privasi tanpa mengorbankan karakteristik desentralisasi

**Sekilas tentang _smart contract_**

_Smart contract_ atau kontrak pintar adalah sebuah metode untuk menjabarkan transaksi pertukaran data atau mata uang yang kompleks antara dua pihak atau lebih yang dilakukan secara otomatis dan terdesentralisasi. _Smart contract_ sendiri pada dasarnya adalah kode tertulis di blockchain yang dapat mencari, memverifikasi, serta mengeksekusi sebuah transaksi yang mengikat / kontrak ketika kondisi - kondisi yang ditentukan telah terpenuhi. Kode _smart contract_ ini terdistribusi ke seluruh jaringan blockchain, transparan, dan dapat dikonfigurasi agar tidak dapat diubah sama sekali (_immutable_).

**Menjaga privasi dalam _smart contract_**

_Smart contract_ pada umumnya bersifat publik dan terbuka dimana kondisi - kondisi kontrak yang harus terpenuhi dapat dilihat oleh semua orang. Walaupun transparansi menjadi salah satu keunggulan teknologi blockchain, namun privasi tetap menjadi elemen penting untuk aplikasi yang memproses data - data sensitif.

Beberapa teknik kriptografi yang digunakan oleh para developer untuk menambahkan atau meningkatkan level privasi di _smart contract_ antara lain _zero-knowledge proofs_ (ZKP) dan _secure computation_. Namun, teknik - teknik ini tidak sejalan dengan konsep desentralisasi di blockchain karena masih mengandalkan asas kepercayaan.

**Apa itu Kachina**

Kachina adalah solusi _smart contract_ yang dikembangkan oleh Input Output Global (IOG) bersama dengan University of Edinburgh, yang memungkinkan pengguna untuk menggunakan _smart contract_ dengan tetap menjaga privasi dan tidak mengorbankan desentralisasi.

**Cara Kerja Kachina**

- Sekelompok besar proses penghitungan yang terdistribusi dibuat dalam bentuk _smart contract_ sehingga memiliki atribut privasi. Developer dApp tidak perlu lagi menambahkan referensi lain sebagai asas kepercayaan.

- Protokol _smart contract_ ini bergantung pada argumen yang bersifat non-interaktif (disebut juga _zero knowledge ~ZK Snarks_) yang membuatnya memiliki sifat privasi. Jaminan privasi ini juga dibuktikan dengan framework keamanan _Universal Composability (UC)_ melalui model dan bukti matematis.

- Protokol juga didesain memiliki basis penggunaan secara _low level code_ dimana sistem tidak perlu di-update ketika ada perubahan atau ekstensi baru, namun privasi dapat tetap terjaga.

- Kachina juga memampukan pembuat _smart contract_ menutup gap antara blockchain dengan mesin lokal pengguna, yang diatasi dengan penggunaan _public_ dan _private state_. Sebuah kontrak dapat meng-update _public state (on-chain and shared)_ dan _private state (off-chain)_ secara bersamaan.

- Para pihak yang bertransaksi dapat melakukan pembuktian secara non-interaktif (_zero knowledge_) bahwa mereka telah diizinkan meng-update _public state_ dengan bukti detail dari input transaksi dan keberadaan _private state_.

  **_Smart contract_ Kachina juga memastikan:**

  - _**Concurrency**_ secara terprivasi (_concurrency_: memungkinkan banyak partisipan menjalankan sebuah aktivitas tanpa saling mengganggu satu sama lain).

    Kachina mampu mencapai level _concurrency_ yang tinggi dengan adanya konsep baru, transkrip state oracle. Transkrip ini berisi catatan - catatan transaksi dari sebuah kontrak yang berinteraksi dengan oracle.

    Pembuat _smart contract_ dapat mengoptimasi transaksi yang sering konflik, meminimalisir kebocoran, sambil tetap mengizinkan re-ordering sebuah transaksi.

  - Konstruksi modular secara efisien, karena Kachina dirancang untuk digunakan dalam skala besar.

    Pengembangan _zero knowledge_ sebelumnya tidak menyertakan fitur untuk menjaga _contract state_. Dengan Kachina terdapat akses ke _contract state_, walaupun tidak langsung karena harus melalui oracle yang dispesifikasikan dalam _smart contract_. Akses secara tidak langsung ini memungkinkan skalabilitas yang lebih besar, dan kompleksitas dari apa yang harus dibuktikan berada di bawah kendali penuh sang pembuat kontrak yang dapat terus dioptimasi.

**Penelitian tentang Kachina**

Di dalam makalah penelitan, IOG mendemonstrasikan _versatility_ dari protokol Kachina dalam studi kasus _private payment_. Tim riset menunjukkan sebuah kontrak _private token_ yang dapat mendukung _private fund transfer_, pengecekan saldo, serta _asset creation_.

Walaupun desain yang diusulkan ini masih bersifat teoritis, namun Kachina membuktikan kemungkinan membuat _smart contract_ yang dapat menjaga privasi walau dengan keterbatasan di dunia nyata:

- Penggunaan state oracle memungkinkan proses komputasi yang sulit atau memakan sumber daya besar di luar proses _zero knowledge proof_, sehingga dapat mengurangi biaya.

- Walaupun _zero knowledge proof_ harus bersifat universal, namun rancangannya sudah ada dan praktis untuk digunakan dalam proposal yang diusulkan.

**Untuk detail lebih lanjut tentang makalah penelitian Kachina, dapat dilihat di link berikut ini, [Kachina - Foundations of Private Smart Contracts - IOHK Research](https://iohk.io/en/research/library/papers/kachina-foundations-of-private-smart-contracts/)**
