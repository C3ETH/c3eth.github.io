---
title: "Cardano360 - May 22"
linkTitle: "Cardano360 - May 22"
hide_feedback: true
weight: 4
# description: ""
---

Dari sisi teknikal, fokus ke pengembangan Mithril dan masih dalam tahap persiapan untuk Vasil Hard Fork tgl 29 Jun 2022.

![image](https://u.today/sites/default/files/inline-images/24052022%201111.jpg)

### Mithril

Semakin bertumbuhnya ekosistem, blockchain pun berkembang semakin besar, dan waktu sinkronisasi antar node juga semakin lama.

Bagi beberapa aplikasi seperti light wallet (Yoroi, Nami, Eternl, dll) - ***Daedalus tidak termasuk karena full node wallet***, hal ini menjadi tantangan tersendiri, terlebih bagi para developer yang ingin mengembangkan Dapps di ekosistem. Diperlukan sumber daya yang besar untuk bisa mengunduh *full chain state* dari sejak genesis Cardano hingga waktu saat ini, belum lagi untuk memvalidasi transaksi - transaksi yang ada di jaringan.

Di sinilah, Mithril muncul sebagai solusi teknologi kriptografi yang eksotik dengan menggunakan ***stake based treshold***.

> Apa itu ***stake based treshold***?
> Menggunakan aset yang di-staking sebagai basis untuk membuat patokan atau ambang batas di dalam jaringan.
>
> Apa maksudnya?
>Mithril memanfaatkan sekumpulan SPO untuk menyediakan ***certified snapshot*** dari chain state, dimana snapshot inilah yang akan digunakan sebagai patokan bagi sebuah light wallet atau Dapps yang ingin menjadi node baru (*bootstrap node*), tanpa harus mengunduh atau memverifikasi *full chain state* Cardano dari sejak genesis.

Snapshot - snapshot nantinya bisa dalam beberapa bentuk, seperti *pure DB* atau *full UTXOs set* sehingga aplikasi seperti light wallet dapat mengandalkan snapshot ini untuk operasionalnya.

Sertifikat yang dihasilkan dari Mithril memiliki properti keamanan yang sama seperti konsensus yang digunakan di jaringan utama saat ini yakni Ouroboros Praos.
User - user Mithril pun memiliki *trustless guarantee* yang sama seperti node - node Cardano pada umumnya.

**Mithril akan diimplementasi di atas jaringan utama tanpa mengganggu operasional jaringan utama (*linking together a stronger and lighter blockchain*)**.

Cara Kerja Mithril:

1) Menghitung jumlah stake yang dimiliki oleh setiap SPO untuk menghasilkan signature.
2) Di interval waktu yang telah ditentukan, SPO akan mencoba untuk signing *current state* dari chain (melakukan snapshot).
Berdasarkan parameter dan jumlah stake yang dimiliki, mereka dapat menghasilkan signature sebanyak satu atau lebih dari satu.
Mirip seperti tiket lotre, semakin banyak tiket lotre yang dimiliki, semakin besar kemungkinan menang lotre. Dalam hal ini, semakin banyak signature yang dapat dihasilkan oleh SPO tersebut.
3) Setelah jumlah signature yang dihasilkan dari SPO sudah mencukupi, sebuah sertifikat akan di-issue sehingga menjadi *certified signature*.
4) User kemudian dapat memverifikasi snapshot tersebut dan memeriksa *aggregat signature* dari semua SPO, apakah signature - signature tersebut sah atau tidak.
5) Setelah proses verifikasi sertifikat, user dapat mengunduh snapshot dan melakukan bootstrap node tanpa harus melalui kerumitan untuk memverifikasi *full chain state* Cardano dari sejak genesis.

Jaringan Mithril:

* Signer: dijalankan oleh SPO yang menghasilkan signature atau melakukan snapshot.
* Middle part: memproses validasi sertifikat dan mengunduh snapshot.
* Aggregator part: bertanggung jawab atas kumpulan aggregat signature yang akan digunakan oleh user, serta menyimpan snapshot - snapshot yang ukurannya bisa dalam puluhan GB dan terus bertumbuh.

> Mithril Library sendiri akan diluncurkan ke publik mulai Jun 2022.