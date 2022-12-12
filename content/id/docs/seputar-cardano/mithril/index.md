---
title: "
Mithril - Signature Berbasis Stake untuk Bootstrapping Node  "
date: 2022-10-23T09:19:42+01:00
lastmod: 2022-10-23T09:19:42+01:00
draft: false
weight: 50
images: []
contributors: ["Andre Cahyadi"]
pinned: false
homepage: false

---

[Bahasa Indonesia](https://forum.cardano.org/c/bahasa-indonesia/179) [Edukasi](https://forum.cardano.org/c/bahasa-indonesia/edukasi/182)

[indonesia](https://forum.cardano.org/tag/indonesia)

[prosperaan](https://forum.cardano.org/u/prosperaan) 23 October 2022 14:56 #1

Dipublikasikan pada tanggal 23 Oct 2022
Ditulis & Disadur oleh andre cahyadi ([@prosperaan](/u/prosperaan))
Untuk komunitas Cardano Indonesia
Referensi:
([Mithril proof of concept is now open-source - IOHK Blog](https://iohk.io/en/blog/posts/2022/08/29/mithril-proof-of-concept-is-now-open-source/))
([\[Cardano 360\] May 2022 Update - Technical](https://forum.cardano.org/t/cardano-360-may-2022-update-technical/102338))
([\[Cardano 360\] Jul 2022 Update - Technical](https://forum.cardano.org/t/cardano-360-jul-2022-update-technical/105489))

> **Mithril adalah cryptographic signature berbasis stake** yang akan diimplementasi untuk meningkatkan kecepatan dan efisiensi waktu sinkronisasi bagi node - node baru yang ingin berpartisipasi ke dalam jaringan Cardano

### [](#pentingnya-mithril-bagi-operasional-cardano-ke-depan-1)Pentingnya Mithril bagi operasional Cardano ke depan

Node - node yang saling terhubung di jaringan Cardano dapat saling berkomunikasi untuk berbagi informasi tentang block dan transaksi yang terjadi. Seorang partisipan yang menjalankan node Cardano, berarti dia sudah ikut berkontribusi dalam menjaga dan mengawasi jaringan Cardano.

Karena setiap node menyimpan salinan dari seluruh transaksi di jaringan, bagi node baru yang ingin bergabung membutuhkan waktu lama untuk sinkronisasi terlebih dahulu (mengunduh dan memverifikasi historis setiap block yang ada).

Sebagai contoh, **Daedalus, crypto wallet Cardano yang bersifat full node**. Wallet ini bekerja seperti node (passive node), mengunduh salinan lengkap dari blockchain dan secara independen memvalidasi historis setiap transaksi. Bagi para pengguna Daedalus, dibutuhkan sumber daya yang cukup besar (software & hardware) dan juga waktu inisiasi yang cukup lama ketika baru pertama kali menggunakannya karena harus melalui proses sinkronisasi tersebut.

**Tujuan Mithril adalah menyediakan snapshot jaringan blockchain yang tersertifikasi (baik sebagian atau seluruhnya)**, yang dapat digunakan untuk berbagai kebutuhan seperti light wallet atau Dapps yang ingin menjadi full node baru tanpa harus mengunduh atau memverifikasi blockchain Cardano dari sejak genesis. **Proses ini dapat disebut juga _bootstrapping_ sebuah node.**

### [](#cara-kerja-mithril-2)Cara Kerja Mithril

Sama seperti proses konsensus di Ouroboros dimana stakeholders dipilih secara random untuk memproduksi block sesuai dengan jumlah stake yang dimiliki atau didelegasikan, **di Mithril stakeholders akan dipilih secara random juga untuk dapat menandatangani atau _signing current state of chain_ sesuai dengan jumlah stake yang dimiliki atau didelegasikan**. Tanda tangan dari para stakeholders ini selanjutnya digabungkan menjadi sebuah Mithril multi-signature, dimana signature baru dapat terbentuk setelah jumlah treshold atau kuorum telah tercapai berdasarkan total stake yang dikontribusikan. Tentunya, ada proses kriptografi (sertifikat) yang dijalankan untuk menjamin keunikan dari signature ini.

**Mithril berjalan di atas ledger blockchain** sehingga tidak akan ada gangguan terhadap operasional mainnet. **_Signer nodes_ yang akan membuat signature hanya membutuhkan resource dan bandwidth yang minimal dalam operasionalnya.** **Kemudian, keunikan sertifikat Mithril adalah memiliki properti keamanan yang sama seperti Ouroboros karena bergantung dari distribusi stake yang ada di jaringan Cardano sendiri sehingga tidak memerlukan pihak lain sebagai _trusted point_**. Jaringan Mithril dapat memiliki tingkat keamanan yang maksimal selama semua SPO yang berpartisipasi di blockchain Cardano tergabung di dalamnya.

### [](#timeline-pengembangan-3)Timeline Pengembangan

Tim IOG pertama kali memperkenalkan Mithril saat Cardano Summit 2021, dan semenjak itu tim terus melanjutkan pengembangannya hingga saat ini.

**Proof of Concept (POC) Mithril** sendiri memiliki komponen - komponen sebagai berikut:

- **Mithril Signer**: node yang bekerja secara transparan di atas SPO node dan secara individu menghasilkan signature
- **Mithril Aggregator**: _trusted node_ yang saat ini masih dijalankan oleh IOG untuk mengumpulkan signature - signature yang telah dihasilkan menjadi Mithril multi-signatures beserta sertifikatnya. Node ini juga yang bertanggung jawab untuk membuat snapshot dan menyimpannya, dimana ukurannya nanti bisa dalam puluhan GB dan terus bertumbuh.
- **Mithril Client**: node yang digunakan untuk melakukan proses restore menjadi sebuah full Cardano node - bootstrapping, dengan mengambil snapshot beserta sertifikatnya dari Mithril Aggregator.

Saat ini, repositori Mithril sudah _open source_ dan dapat dilihat di link berikut ini, [Welcome | Mithril. A complete guide.](https://mithril.network/doc/) atau bisa juga join Discord Channel-nya di [IOG's Technical Community](https://discord.com/invite/WmSVtQ5PjZ) untuk diskusi lebih lanjut.
