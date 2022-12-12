---
title: "Cardano360 - May 22"
linkTitle: "Cardano360 - May 22"
date: 2022-05-31T09:19:42+01:00
lastmod: 2022-05-31T09:19:42+01:00
hide_feedback: true
weight: 50
# description: ""
---

Dari sisi teknikal, fokus ke pengembangan Mithril dan masih dalam tahap persiapan untuk Vasil Hard Fork tgl 29 Jun 2022.

![image](https://u.today/sites/default/files/inline-images/24052022%201111.jpg)

### Mithril

Semakin bertumbuhnya ekosistem, blockchain pun berkembang semakin besar, dan waktu sinkronisasi antar node juga semakin lama.

Bagi beberapa aplikasi seperti light wallet (Yoroi, Nami, Eternl, dll) - **_Daedalus tidak termasuk karena full node wallet_**, hal ini menjadi tantangan tersendiri, terlebih bagi para developer yang ingin mengembangkan Dapps di ekosistem. Diperlukan sumber daya yang besar untuk bisa mengunduh _full chain state_ dari sejak genesis Cardano hingga waktu saat ini, belum lagi untuk memvalidasi transaksi - transaksi yang ada di jaringan.

Di sinilah, Mithril muncul sebagai solusi teknologi kriptografi yang eksotik dengan menggunakan **_stake based treshold_**.

> Apa itu **_stake based treshold_**?
> Menggunakan aset yang di-staking sebagai basis untuk membuat patokan atau ambang batas di dalam jaringan.
>
> Apa maksudnya?
> Mithril memanfaatkan sekumpulan SPO untuk menyediakan **_certified snapshot_** dari chain state, dimana snapshot inilah yang akan digunakan sebagai patokan bagi sebuah light wallet atau Dapps yang ingin menjadi node baru (_bootstrap node_), tanpa harus mengunduh atau memverifikasi _full chain state_ Cardano dari sejak genesis.

Snapshot - snapshot nantinya bisa dalam beberapa bentuk, seperti _pure DB_ atau _full UTXOs set_ sehingga aplikasi seperti light wallet dapat mengandalkan snapshot ini untuk operasionalnya.

Sertifikat yang dihasilkan dari Mithril memiliki properti keamanan yang sama seperti konsensus yang digunakan di jaringan utama saat ini yakni Ouroboros Praos.
User - user Mithril pun memiliki _trustless guarantee_ yang sama seperti node - node Cardano pada umumnya.

**Mithril akan diimplementasi di atas jaringan utama tanpa mengganggu operasional jaringan utama (_linking together a stronger and lighter blockchain_)**.

Cara Kerja Mithril:

1. Menghitung jumlah stake yang dimiliki oleh setiap SPO untuk menghasilkan signature.
2. Di interval waktu yang telah ditentukan, SPO akan mencoba untuk signing _current state_ dari chain (melakukan snapshot).
   Berdasarkan parameter dan jumlah stake yang dimiliki, mereka dapat menghasilkan signature sebanyak satu atau lebih dari satu.
   Mirip seperti tiket lotre, semakin banyak tiket lotre yang dimiliki, semakin besar kemungkinan menang lotre. Dalam hal ini, semakin banyak signature yang dapat dihasilkan oleh SPO tersebut.
3. Setelah jumlah signature yang dihasilkan dari SPO sudah mencukupi, sebuah sertifikat akan di-issue sehingga menjadi _certified signature_.
4. User kemudian dapat memverifikasi snapshot tersebut dan memeriksa _aggregat signature_ dari semua SPO, apakah signature - signature tersebut sah atau tidak.
5. Setelah proses verifikasi sertifikat, user dapat mengunduh snapshot dan melakukan bootstrap node tanpa harus melalui kerumitan untuk memverifikasi _full chain state_ Cardano dari sejak genesis.

Jaringan Mithril:

- Signer: dijalankan oleh SPO yang menghasilkan signature atau melakukan snapshot.
- Middle part: memproses validasi sertifikat dan mengunduh snapshot.
- Aggregator part: bertanggung jawab atas kumpulan aggregat signature yang akan digunakan oleh user, serta menyimpan snapshot - snapshot yang ukurannya bisa dalam puluhan GB dan terus bertumbuh.

> Mithril Library sendiri akan diluncurkan ke publik mulai Jun 2022.
