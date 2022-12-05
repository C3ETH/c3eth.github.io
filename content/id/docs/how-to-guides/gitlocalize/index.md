---
title: '"Catatan Gitlocalize"'
description: '"Beberapa aturan sebelum mendorong komit ke situs web"'
lead: '"Beberapa aturan sebelum mendorong komit ke situs web"'
date: "23-11-2020 11:55:16 +0100"
lastmod: "23-11-2020 11:55:16 +0100"
draft: 'false'
images: []
weight: '211'
toc: 'true'
---

Setiap markdown yang Anda buat akan memiliki front matter yaml (di atas setiap file markdown) :

```yaml
---
title: "<title>"
description: "<description>"
lead: "<lead>"
date: 2020-11-23T11:55:16+01:00
draft: false
images: []
---
Content of file
```

### Masalah

Saat menggunakan Gitlocalize untuk menerjemahkan konten ke bahasa lain, front matter yaml dapat diubah seperti ini:

```yaml
---
title: <title>
description: <description>
lead: <lead>
date: "2020-11-23T11:55:16+01:00"
draft: "false"
images: []
---
```

Anda tidak dapat melihat materi depan yaml ini sampai Anda membuat permintaan tarik di Github.<br> Buka `Files changed` di Github setelah mendorong komit akan menunjukkan apa yang diubah sehingga Anda dapat melihat perbedaannya.

Example: ![gambar](error.png)

Dari gambar di atas, perubahannya adalah:

- Tanda kutip ganda  `title` , `description` , `lead` telah dihapus
- Tanda kutip ganda sekarang ditambahkan ke `date` , `lastmod` dan `draft`
- Kurung sudut `< >` diubah menjadi `&lt; &gt;`

Tapi yaml sangat kaku, tidak mengikuti akan menyebabkan **build fail** .

### Diperlukan tindakan

Oleh karena itu, pastikan front matter Anda **cocok dengan file aslinya** :

- **Tambahkan** tanda kutip ganda ke `title` , `description` , `lead`
- **Hapus** tanda kutip ganda pada `date` , `lastmod` dan `draft`
- **Ubah** `&lt; &gt;` ke tanda kurung sudut `< >`

```yaml
---
title: "<title>"
description: "<description>"
lead: "<lead>"
date: 2020-11-23T11:55:16+01:00
draft: false
images: []
---
```
