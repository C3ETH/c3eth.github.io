# Situs web *Cardano Catalyst Community Eastern Townhall*

<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->
## Gambaran

[English](/README/en/README.md) | [Tiếng Việt](/README/vi/README.md) | [Indonesia](/README/id/README.md) | [日本語](/README/ja/README.md) | [한국어](/README/ko/README.md)

Repositori ini berisi pembaruan *Cardano Catalyst Community* (C3) *Eastern Town Hall* (ETH) dan dokumentasi terkait. C3ETH membantu memungkinkan anggota komunitas dari berbagai negara dan bahasa di zona waktu timur. Fokus khusus tim adalah untuk melokalisasi konten *Cardano Catalyst* dan memberi orientasi untuk memungkinkan partisipasi seluas mungkin.

Repositori ini berisi terjemahan C3ETH dari dokumentasi *Project Catalyst*, dokumentasi yang bersumber dari komunitas, dan proposal terkait. Konten tersebut diterjemahkan ke dalam banyak bahasa di belahan bumi timur, dengan fokus khusus pada bahasa-bahasa di Asia Timur.

[Project Catalyst](https://cardano.ideascale.com/) adalah **awal** dari membawa tata kelola *on-chain* ke dalam Cardano. Ini adalah serangkaian eksperimen yang memanfaatkan kecerdasan kolektif Komunitas Catalyst untuk menentukan arah masa depan dan pengembangan ekosistem Cardano. Melalui serangkaian dana inovasi, komunitas memutuskan ide mana yang akan dibiayai atau didanai. Mengambil sumber ide terbaik untuk membangun blockchain global.

## Membangun dengan Docker

Situs web dan dokumentasi dikompilasi dan dikembangkan menggunakan [Hugo](https://gohugo.io/) dan [Docsy Theme](https://www.docsy.dev/) . Untuk membangun situs membutuhkan [Node](https://nodejs.org/en/) , [Npm](https://www.npmjs.com/) , dan [PostCSS](https://postcss.org/) . Daripada harus menginstal alat ini secara lokal, Anda dapat membangun situs menggunakan [Docker](https://docs.docker.com/get-started/overview/) . Ini memiliki keuntungan menyediakan lingkungan pengembangan yang seragam.

- Docker: Untuk menginstal docker, silakan lihat dokumentasi di [https://docs.docker.com/get-docker/](https://docs.docker.com/get-docker/) .

- Setelah Anda membuat salinan pekerjaan Anda (lihat di bawah) dari repo situs, dari folder root repo, jalankan Hugo memberikan *container* dengan bantuan Docker:

    ```
    $ docker-compose up -d
    ```

Kemudian kunjungi http://localhost:1313 untuk melihat situs dokumentasi

## Membangun dengan *local development environment*

Situs web ini dibangun menggunakan [Docsy](https://www.docsy.dev/) yang merupakan [tema Hugo](https://gohugo.io/) untuk kumpulan dokumentasi teknis, menyediakan navigasi sederhana, struktur situs, dan banyak lagi.

### Prasyarat

Membangun dan menjalankan situs secara lokal memerlukan versi <a>Hugo</a> <code>extended</code> . Berikut ini adalah prasyarat dasar membangun situs ini:

- Instal rilis terbaru dari Hugo versi "extended" (kami merekomendasikan versi 0.53 atau yang lebih baru). Jika Anda menginstal dari [halaman rilis](https://github.com/gohugoio/hugo/releases) , pastikan Anda mengunduh versi `_extended` yang mendukung SCSS.

- Instal `PostCSS` sehingga pembuatan situs dapat membuat aset CSS akhir. Anda dapat menginstalnya secara lokal dengan menjalankan perintah berikut dari direktori root proyek Anda:

    ```
    sudo npm install -D --save autoprefixer
    sudo npm install -D --save postcss-cli
    ```

- Setelah Anda membuat copy pekerjaan Anda (lihat di bawah) dari repo situs, dari folder root repo, jalankan:

    ```
    hugo server
    ```

## Mengkloning Situs Web

```bash
$ git clone --recurse-submodules --depth 1 https://github.com/c3eth/ce3th.github.io
$ cd c3eth.github.io
```

Situs ini dibangun di atas [tema Docsy](https://www.docsy.dev/) sebagai submodul. Untuk memperbarui submodul, jalankan:

```bash
$ git submodule update --recursive
$ git pull --recurse-submodules
```

## Edit Dokumen Situs Web

Dokumen ada di `content/{en,vn,in,jp,ko}` , pilih bagian yang diinginkan untuk diedit atau ditambahkan, untuk organisasi konten silakan merujuk ke: https://gohugo.io/content-management/organization/ .

## Ubah Log

Lihat [CHANGELOG.md](CHANGELOG.md) untuk perubahan penting dan versi.

## Ucapan Terima Kasih

- [Project Catalyst](https://cardano.ideascale.com/)
- [Cardano Foundation](https://cardanofoundation.org/)
- [Tim Project Catalyst IOHK](https://iohk.io/)
- [Hugo](https://gohugo.io/)
- [Docsy](https://www.docsy.dev/)

## Berkontribusi ![GitHub](https://img.shields.io/github/contributors/c3eth/c3eth.github.io)

Silakan baca [CONTRIBUTING.md](/README/id/CONTRIBUTING.md) untuk detail tentang kode etik kami, dan proses pengajuan pull request kepada kami.

Lihat juga daftar [kontributor](https://github.com/c3eth/c3eth.github.io/graphs/contributors) yang berpartisipasi dalam proyek ini.

Terima kasih kepada kontributor yang luar biasa ini (lihat [tabel emoji](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

Proyek ini mengikuti spesifikasi [all-contributors](https://github.com/all-contributors/all-contributors). Kontribusi dalam bentuk apa pun diterima!

## Lisensi ![GitHub](https://img.shields.io/github/license/c3eth/c3eth.github.io)

Kode sumber yang diterbitkan dalam repositori `c3eth/c3eth.github.io` dilisensikan di bawah Lisensi Apache 2.0 - lihat [file LISENSI](https://github.com/c3eth/c3eth.github.io/main/LICENSE.md) untuk detailnya.

Konten yang diterbitkan dalam repositori `c3eth/c3eth.github.io` dilisensikan di bawah [Creative Attribution-Non-Commercial-ShareAlike (CC BY-NC-SA) License v4.0.](https://creativecommons.org/licenses/by-nc-sa/4.0/)

Anda bebas untuk Membagikan (menyalin dan mendistribusikan ulang) materi dalam media atau format apa pun, mengadaptasi, me-remix, mengubah, dan membangun materi tersebut. Anda tidak boleh menggunakan materi untuk tujuan komersial. Jika Anda me-remix, mengubah, atau membangun materi, Anda harus mendistribusikan kontribusi Anda di bawah lisensi yang sama seperti aslinya. Tidak ada jaminan yang diberikan. Lisensi mungkin tidak memberi Anda semua izin yang diperlukan untuk tujuan penggunaan Anda.
