---
title: '"Halaman"'
description: '"Tambahkan halaman default, halaman dokumentasi, postingan blog, atau halaman kontributor. Sesuaikan beranda dan halaman 404."'
lead: '"Tambahkan halaman default, halaman dokumentasi, postingan blog, atau halaman kontributor."'
date: '2020-11-23 11:55:16 +0100'
lastmod: '2020-11-23 11:55:16 +0100'
draft: 'false'
images: []
weight: '211'
toc: 'true'
---

## Struktur konten:

```bash
..
├── content
├──── en
├────── blog/
│       ├── first-post/
│       │   ├── index.md
│       │   └── feature-sunset.png
│       └── _index.md
├────── ca-tv/
│       ├── ca-tv-fund7/
│       │   ├── _index.md
│       │   └── episode-one.md
│       ├── ca-tv-intro/
│       │   ├── _index.md
│       │   └── introduction.md
│       └── _index.md
├────── catalyst/
│       ├── fund6/
│       │   ├── challenge-setting-proposals/
│       │   │  ├── grow-asia.md
│       │   │  ├── grow-social-finance.md
│       │   │  └── _index.md
│       │   ├── challenges/
│       │   │  └── _index.md
│       │   └── _index.md
│       ├── overview/
│       │   ├── _index.md
│       │   ├── catalyst-overview.md
│       │   └── image-and-media.md
│       └── _index.md
├────── docs/
│       ├── catalyst-guides/
│       │   ├── _index.md
│       │   └── guides.md
│       ├── how-to guides/
│       │   ├── _index.md
│       │   ├── pages.md
│       │   └── image-and-media.md
│       └── _index.md
└── _index.md
```

Lihat juga dokumen Hugo: [Organisasi Konten](https://gohugo.io/content-management/organization/) .

## Tambahkan halaman default

### Contoh

```bash
npm run create about/index.md
```

## Tambahkan halaman dokumentasi

### Contoh

```bash
npm run create docs/overview/introduction.md
```

## Tambahkan posting blog

### Contoh

```bash
npm run create blog/say-hello-to-doks/index.md
```
