---
date: '2018-10-06'
title: "Dokumentasi mudah dengan Docsy"
linkTitle: "Mengumumkan Docsy"
description: "Tema Docsy Hugo memungkinkan pengelola proyek dan kontributor fokus pada konten, bukan pada menciptakan kembali infrastruktur situs web dari awal"
author: "Riona MacNamara ([@rionam](https://twitter.com/bepsays))"
resources:
  - src: "**.{png,jpg}"
    title: 'Image #:counter'
    params:
      byline: 'Foto: Riona MacNamara / CC-BY-CA'
---

**Ini adalah posting blog khas yang menyertakan gambar.**

Bagian depan menentukan tanggal posting blog, judulnya, deskripsi singkat yang akan ditampilkan di halaman arahan blog, dan penulisnya.

## Termasuk gambar

Berikut adalah gambar ( `featured-sunset-get.jpg` ) yang menyertakan byline dan keterangan.

{{< imgproc sunset Fill "600x300" >}} Ambil dan skalakan gambar di Hugo 0.43 mendatang. {{< /imgproc >}}

Materi depan posting ini menentukan properti yang akan ditetapkan ke semua sumber daya gambar:

```
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: "Photo: Riona MacNamara / CC-BY-CA"
```

Untuk menyertakan gambar di halaman, tentukan detailnya seperti ini:

```
{{< imgproc sunset Fill "600x300" >}}
Ambil dan skalakan gambar di Hugo 0.43 mendatang.
{{< /imgproc >}}
```

Gambar akan dirender pada ukuran dan byline yang ditentukan di bagian depan.
