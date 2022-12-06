---
title: '"Pelokalan Dokumen C3ETH"'
weight: '10'
description: '"Cara berkontribusi pada dokumentasi Eastern Town Hall"'
lead: '"Cara berkontribusi pada dokumentasi Eastern Town Hall"'
---

Terima kasih atas minat Anda untuk menerjemahkan (melokalkan) Dokumen C3ETH 😊 Pekerjaan Anda membuat dokumen lebih mudah diakses dan tersedia lebih luas untuk komunitas kami di seluruh dunia.

👉 Silakan ikuti panduan di bawah ini untuk membantu menerjemahkan Dokumen C3ETH.

## Langkah-langkah untuk berpartisipasi dalam menerjemahkan dokumen C3ETH:

1. Buka file [GITLOCALIZATION_CONTRIBUTORS](https://github.com/C3ETH/c3eth.github.io/blob/main/GITLOCALIZE_CONTRIBUTORS.md) . Cari header bahasa yang ingin Anda kontribusikan dan tambahkan **nama lengkap dan @your_github_account Anda** di bawah header. Jika Anda tidak dapat menemukan bahasa yang ingin Anda sumbangkan, harap baca [bagian ini](#how-to-add-a-new-language) .
2. Buat pull request (PR) untuk menambahkan nama Anda ke daftar. Pastikan untuk mengikuti template untuk membuka PR.<br> Setiap kontributor harus membuat PR mereka sendiri<br> Jika Anda ada permintaan penambahan bahasa, *tambahkan tautan diskusi ke PR* .
3. Bergabunglah dengan [GitLocalize](https://gitlocalize.com) menggunakan ID GitHub yang sama dengan yang Anda gunakan untuk membuka PR di atas.
4. Tinggalkan komentar di PR Anda yang menyatakan bahwa Anda berhasil bergabung dengan GitLocalize.
5. Setelah PR Anda diterima dan digabungkan, Anda akan menerima notifikasi dari GitLocalize dengan judul: `[GitLocalize] You have been assigned a new role.`
6. Bergabunglah dengan proyek [C3ETH/c3eth.github.io] lalu kunjungi bahasa yang Anda daftarkan untuk berkontribusi.<br>

Untuk pertanyaan tentang proyek ini, untuk terhubung dengan penerjemah lain, atau untuk menerima segala pembaruan terkait proyek ini, silakan bergabung [dengan diskusi komunitas kami](https://github.com/C3ETH/c3eth.github.io/discussions) .

## Apa itu GitLocalize?

[GitLocalize](https://gitlocalize.com) adalah platform untuk mengelola terjemahan konten yang disimpan di GitHub dan menyederhanakan alur kerja terjemahan untuk pengembang.

**Catatan** :<br>

> Gitlocalize sedang dalam pengembangan aktif, jadi Anda mungkin mengalami masalah selama penerjemahan. Jika Anda menemukan bug atau kesalahan, jangan ragu untuk menghubungi [komunitas kami](https://github.com/C3ETH/c3eth.github.io/discussions) .

## Bagaimana cara menambahkan bahasa baru?

Jika Anda ingin menambahkan bahasa baru, Anda dapat membuka [ide GitHub](https://github.com/C3ETH/c3eth.github.io/discussions/categories/ideas) untuk memulai diskusi dengan tim C3ETH dan merekrut anggota untuk ikut terlibat dalam menerjemahkan.

## Bagaimana cara menambahkan nama saya ke daftar GITLOCALIZATION_CONTRIBUTORS dan membuka PR di GitHub?

**Opsi 1: Melalui GitHub (Disarankan)**

1. Klik tombol berbentuk pena yang bertuliskan "Edit file ini" di file [GITLOCALIZATION_CONTRIBUTORS](https://github.com/C3ETH/c3eth.github.io/blob/main/GITLOCALIZE_CONTRIBUTORS.md) .
2. Tambahkan nama Anda di bawah bahasa yang ingin Anda kontribusikan.
3. Setelah nama Anda ditambahkan, gulir ke bawah dan temukan tombol hijau bertuliskan "Propose changes".
4. Halaman sekarang dimuat ulang secara otomatis dan temukan dan klik tombol hijau lainnya - "Create pull request".
5. Ini akan membuat pull request dan setelah selesai, ikuti [petunjuknya](#steps-to-participate-in-c3eth-docs-translations) (langkah 3, 4, 5).

**Opsi 2: Membuat tiruan lokal dari repositori dan mendorong dari lokal**

1. Kloning repositori ini dengan mengikuti [panduan ini](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository-from-github/cloning-a-repository) .
2. Pastikan konfigurasi git lokal Anda dengan mengikuti petunjuk di sini -- [Setting username](https://docs.github.com/en/get-started/getting-started-with-git/setting-your-username-in-git) dan [Setting email](https://docs.github.com/en/github/setting-up-and-managing-your-github-user-account/managing-email-preferences/setting-your-commit-email-address#setting-your-commit-email-address-in-git)
3. Buat branch dengan menjalankan `git checkout -b BRANCH_NAME` di terminal Anda.
4. Temukan file `GITLOCALIZATION_CONTRIBUTORS` di salinan lokal [C3ETH/c3eth.github.io] Anda (dibuat setelah mengkloning repositori ini) dan tambahkan nama Anda di bawah bahasa yang ingin Anda kontribusikan.
5. Sekarang, di terminal jalankan `git add GITLOCALIZATION_CONTRIBUTORS` , `git commit -m "Added name under LANGUAGE-NAME"` , `git push origin BRANCH-NAME` .
6. Ikuti tautan di terminal untuk membuka pull request.
