---
title: "Ouroboros di PoS Cardano"
# description: ""
---

> ***Saat ini, sistem Ouroboros yang berjalan adalah Ouroboros Praos***

### Desain Dasar

1. Waktu dibagi menjadi bagian - bagian terpisah yang disebut slot.
2. Slot - slot dikelompokkan menjadi satu ke dalam periode waktu yang lebih panjang, yang disebut epoch.
3. Setiap memulai sebuah epoch, sistem lottery berjalan untuk menentukan SPO mana yang akan menjadi slot leader. Sistem ini tidak implisit seperti di aktivitas mining bitcoin (siapapun yang terlebih dahulu menemukan hash yang tepat, dialah yang menjadi pemenang), melainkan bersifat eksplisit dimana selalu ada generated random number dalam penentuan slot leader.
4. Kesempatan untuk terpilih sebagai slot leader juga bergantung secara proporsional pada jumlah staked asset yang dimiliki oleh SPO tersebut.
5. Proses validasi block sendiri juga lebih mudah. Setiap node server mendapat leader schedule (jadwal siapa saja yang menjadi slot leader di epoch yang sedang berjalan) untuk kemudian mengecek signature-nya begitu block header sudah terbentuk.

### Cara Kerja

* Waktu yang terbagi menjadi bagian - bagian terpisah yang disebut slot (dalam satuan detik).

* Slot - slot dikelompokkan menjadi satu ke dalam periode waktu yang lebih panjang, yang disebut epoch (dalam satuan hari).

> *Setiap epoch dikonfigurasi untuk berjalan selama lima hari, sehingga 5 hari → 5 x 24 jam x 3.600 detik = 432.000 detik (432.000 Slot)*
>
> *Satu block yang diproduksi membutuhkan waktu selama satu detik, yang berarti dalam satu epoch ada 432.000 block*

* Untuk slot leader sendiri, akan dipilih dari para SPO oleh Ouroboros Praos dengan sistem lottery setiap 20 detik.

> *Jadi, dari 20 block yang sudah diproduksi sebelumnya selama 20 detik, hanya ada 1 block yang terpilih dan block – block lainnya tidak di-input ke chain*.

* Tugas slot leader terpilih adalah melakukan **block mining**, yakni memvalidasi transaksi – transaksi lalu ditambahkan ke dalam block berikutnya (block yang terpilih), untuk kemudian block tersebut di-input ke chain.

> *432.000 block / 20 detik = 21.600 block (yang berarti ada 21.600 slot leader terpilih dalam setiap epoch)*.

### Pengecekan proses block mining Ouroboros di PoS Cardano

Ketika membuka explorer atau tool seperti:

* <https://explorer.cardano.org/>
* <https://pooltool.io/>
* <https://adapools.org/>
* <https://cardanoscan.io/>

Biasa ada informasi sebagai berikut:

* Nomor epoch yang sedang berjalan.
* Height: total block yang sudah diproduksi sampai saat ini.
* Slots: *count up* hingga ke angka 432.000.
* Blocks: *count up* hingga ke angka 21.600.