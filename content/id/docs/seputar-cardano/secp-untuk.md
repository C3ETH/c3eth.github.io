---
title: "SECP untuk mendorong cross-chain develoment di Cardano"
---
Dipublikasikan pada tanggal 23 Jan 2022

Disadur & diterjemahkan oleh andre cahyadi ([prosperaan](https://forum.cardano.org/u/prosperaan))

Untuk komunitas Cardano Indonesia

Referensi: [What is SECP and how it drives cross-chain development on Cardano - IOHK Blog](https://iohk.io/en/blog/posts/2022/11/03/what-is-secp-and-how-it-drives-cross-chain-development-on-cardano/)

### Pengantar

Kriptografi memainkan peran penting dalam ruang blockchain, yakni memastikan trust dan keamanan diantara network participants.

Para developer dApps dapat menggunakan cryptographic primitives sebagai building blocks untuk membentuk transaksi aman yang berisi data sensitif, mengembangkan algoritma enkripsi dan dekripsi yang bersifat custom, serta memvalidasinya dengan menggunakan digital signature.

### ECC

Dalam beberapa dekade terakhir, Elliptic Curve Cryptography (ECC) telah menjadi de facto primitives dalam mengembangkan cryptographic protocols dan secure applications. ECC memberikan tingkat keamanan yang sama dengan mekanisme lain saat menggunakan keys dan signatures yang lebih pendek.

#### Apa itu SECP?

SECP, atau SECP256k1 secara spesifik, adalah nama dari sebuah Elliptic Curve. Banyak blockchain (seperti Bitcoin, Ethereum, dan Binance Coin) yang memakai metode ini untuk mengimplementasikan public key cryptography, menggunakan pasangan kunci (public dan private key) untuk memvalidasi signature dari sebuah transaksi. Contoh penerapan SECP juga termasuk Elliptic Curve Digital Signature Algorithm (ECDSA) dan Schnorr Signatures. Hal ini memungkinkan pengguna untuk memverifikasi integritas dari specific signed hashed data. ECDSA dan Schnorr Signatures bekerja dengan SECP256k1 di banyak blockchain.

### Kriptografi di Cardano

Cardano menggunakan Edwards-curve Digital Signature Algorithm (EdDSA) dengan Elliptic Curve Curve25519 sebagai native signature algorithm.

Hal ini berarti para Plutus dApps developer yang ingin bekerja dengan blockchain lain dan perlu memvalidasi ECDSA dan Schnorr Signatures harus menghabiskan waktu, tenaga, dan biaya untuk mengimplementasikan SECP tersebut di Plutus. Selain itu, hal ini juga dapat meningkatkan potensi risiko keamanan. Karena ECDSA dan Schnorr Signatures bukanlah native dari Cardano, maka diperlukan built-in functions untuk mengakomodir kebutuhan ini.

#### Menambahkan built-in functions ke Plutus

Untuk memungkinkan development aplikasi cross-chain secara efisien, IOG menambahkan built-in function baru untuk mendukung ECDSA dan Schnorr Signatures bersama dengan Cardano native signatures.

Built-in functions ini akan menjadi native di Cardano, dan karena akan diimplementasikan dan diaudit oleh para expert, tentunya dapat memberikan tingkat keamanan yang tinggi. Hal ini memungkinkan para Plutus dApps developer memiliki pilihan desain multi-signature atau treshold signature yang luas untuk digunakan, khususnya desain berbasis Schnorr yang dipahami dengan baik dan banyak digunakan oleh komunitas dApps.

CIP-49 ([CIPs/README.md at c5bdd66fe49c19c341499f86cebaa2eef9e90b74 · mlabs-haskell/CIPs · GitHub](https://github.com/mlabs-haskell/CIPs/blob/c5bdd66fe49c19c341499f86cebaa2eef9e90b74/CIP-0049/README.md)) memberikan penjelasan yang lebih mendalam terkait motif dan spesifikasi untuk implementasi built-in functions yang baru ini. Perubahan ini tentunya juga berpengaruh di sisi Plutus Interpreter sehingga implementasinya nanti membutuhkan HFC (Hard Fork Combinator) event. Petunjuk implementasi secara lengkap dapat dilihat di link ini, [CIPs/CIP-0035 at master · cardano-foundation/CIPs · GitHub](https://github.com/cardano-foundation/CIPs/tree/master/CIP-0035#types-of-release).

#### Bagaimana cara kerja cryptographic primitives yang baru?

![image](https://global.discourse-cdn.com/business4/uploads/cardano/optimized/3X/1/e/1e37de7092572c44561645f346f21b6d7deee94e_2_1000x649.png)




**Figur 1. Bagaimana SECP crypto primitives bekerja di Cardano**

Setelah implementasi cryptographic primitives yang baru, Plutus dapat dengan mudah memverifikasi transaksi dari blockchain lain yang menggunakan standard ECDSA dan Schnorr. Misalnya, Plutus dapat memverifikasi signatures yang dihasilkan di sidechain EVM secara native sehingga meningkatkan experience para developer dalam hal kesederhanaan proses, biaya, dan keamanan tingkat lanjut.

Feedback dari komunitas menunjukkan bagaimana penambahan cryptographic primitives yang baru akan meningkatkan proses development cross-chain dApps yang aman dan efisien di Cardano.

Belajar dari proses upgrade Vasil (Vasil Hardfork), tim IOG telah banyak melakukan perubahan dalam menyempurnakan sebuah proses rilis. Hal tersebut segera dilakukan untuk merilis SECP ini. Komunitas sudah membantu menguji fungsionalitas baru ini, yang awalnya akan digunakan di _**environment devnet**_. Dari situ, pengujian akan terus dilakukan di _**environment preview**_ dan _**environment pre-production**_. Setelah komunitas merasa yakin dan aman bahwa tolok ukur pengujian telah tercapai dan indikator kritikal telah terpenuhi, barulah IOG mengusulkan tanggal untuk deployment ke mainnet melalui Hard Fork Combinator event.
