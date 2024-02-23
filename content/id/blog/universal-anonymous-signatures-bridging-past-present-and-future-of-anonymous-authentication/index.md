---
title: "Universal Anonymous Signatures: bridging past, present, and future of anonymous authentication"
description: "Recently, we got the paper 'Foundations of Anonymous Signatures: Formal Definitions, Simplified Requirements, and a Construction Based on General Assumptions' accepted into FC'24 – the 2024 edition of the Financial Cryptography conference. This paper presents Universal Anonymous Signatures (UAS)."
date: 2024-01-24T09:19:42+01:00
lastmod: 2024-01-24T09:19:42+01:00
draft: false
weight: 50
images: []
categories: ["IOHK"]
tags: ["security", "performance", "SEO"]
contributors: ["Jesus Diaz Vico"]
pinned: false
homepage: false
menu:
  blog:
    parent: "IOHK"
---

Baru-baru ini, kami menerima makalah 'Dasar-Dasar Tanda Tangan Anonim: Definisi Formal, Persyaratan yang Disederhanakan, dan Konstruksi Berdasarkan Asumsi Umum' yang diterima di FC'24 – konferensi Kriptografi Keuangan edisi 2024. Tulisan ini menyajikan **Tanda Tangan Anonim Universal (UAS)**.

Kami sangat gembira dengan hal ini, selain menjembatani beberapa subbidang dalam domain autentikasi anonim, UAS menetapkan jalur menuju apa yang kami yakini dapat menjadi (bagian dari) masa depan Identitas Berdaulat dan sesuatu yang pasti akan kami dorong untuk integrasi dalam bidang ini. Persembahan Atala.

Tapi cukup perkenalannya. Tentang apa UAS?

## Sedikit sejarah

Pada tahun 1985, David Chaum pertama kali memikirkan kredensial kriptografi yang dapat digunakan orang tanpa benar-benar membocorkan identitas mereka, namun tetap memberikan jaminan kepada penyedia layanan bahwa mereka berbicara dengan orang yang sah. Banyak varian yang diusulkan, biasanya memanfaatkan konsep atribut yang telah dibuktikan – yang mana pemilik kredensial dapat memilih secara selektif apakah akan diungkapkan atau tidak. Ini dikenal sebagai skema Kredensial Anonim (AC).

Pada tahun 1991, Chaum dan van Heyst mengusulkan penandatanganan kelompok (GS), yang memungkinkan anggota kelompok yang memegang kredensial keanggotaan untuk melakukan sesuatu yang mirip dengan AC. Kredensial keanggotaan ini biasanya tidak memiliki atribut, namun tanda tangan yang dihasilkan skema GS dapat diproses oleh entitas tepercaya, yang dapat mengekstrak pengidentifikasi penanda tangan yang anonim.

Skema AC dan GS bergantung pada otoritas yang mengeluarkan kredensial yang diperlukan untuk mengautentikasi atau menandatangani. Entitas tersebut telah dihapus pada tahun 2001, ketika Rivest, Shamir dan Tauman mengusulkan skema Ring Signature (RS), yang dapat dilihat sebagai semacam tanda tangan grup yang tidak dapat dianonimkan dan tidak memerlukan penerbit.

Jadi, dalam waktu hampir 16 tahun, komunitas kriptografi menemukan tiga cara berbeda namun serupa untuk memungkinkan pengguna mengautentikasi diri mereka secara anonim. Dan sejak tahun 2001, lebih banyak varian telah diusulkan, terkadang menemukan titik tengah. Ini termasuk skema RS yang mengizinkan penautan tanda tangan, atau tanda tangan grup di mana hanya pengguna yang dapat menautkan tanda tangan mereka sendiri).

## Apa yang diselesaikan UAS?

Sebenarnya, skema AC, GS, dan RS (dan banyak variannya) tidak hanya memiliki beberapa kesamaan. Alasan utama mereka saling terkait erat. Mengizinkan pengguna melakukan autentikasi secara anonim, sambil tetap membiarkan penyedia layanan memiliki kendali atas informasi yang dapat mereka ekstrak. Dari sudut pandang teoritis, hal ini tercermin dalam kenyataan bahwa model keamanan biasanya terlihat sangat mirip. Misalnya, seseorang harus selalu memikirkan tentang properti anonimitas, yang menangkap apa yang dapat dipelajari dari sebuah tanda tangan. Dan tentang properti unforgeability, yang memiliki varian ketertelusuran dan non-frameability, yang secara tepat menyatakan jenis verifikasi jaminan unforgeability (penyedia layanan) dan pengguna yang masing-masing dapat harapkan. Selain itu, ada cara untuk membangun skema ini dari elemen penyusun yang sangat mirip.

Namun entah kenapa, hingga saat ini AC, GS, RS, dan lain-lain masih dipelajari secara mandiri. Selain itu, meskipun dalam beberapa cabang konkret, seperti GS, terdapat model keamanan referensi seperti bidang kerja 'Foundations of Group Signatures', hal ini tidak selalu terjadi. Meskipun memiliki model rujukan, model keamanan ini biasanya terikat pada **pertukaran privasi vs utilitas** yang konkret.

#### Contoh praktis

Katakanlah Anda memiliki skema AC yang memungkinkan Anda mengungkapkan atribut arbitrer secara selektif pada waktu presentasi kredensial. Namun kemudian, Anda ingin menggunakannya kembali dalam skenario di mana Anda juga perlu menautkan presentasi dari pengguna yang sama (mungkin Anda ingin memberi penghargaan kepada pengguna ini dengan beberapa poin fidelitas, atau mungkin pengguna ini mengirim spam kepada Anda dan Anda ingin memblokirnya!) . Singkatnya, Anda ingin menambahkan beberapa jenis kemampuan audit. Perubahan sederhana apriori ini memerlukan model keamanan baru! Tentu, jika Anda tahu cara melakukannya, Anda dapat memperpanjang yang sebelumnya dan, jika beruntung, konstruksi yang Anda miliki sebelumnya juga dapat diperbarui dengan mudah. Namun jika Anda pernah menerapkan hal-hal semacam ini, Anda pasti tahu bahwa hal ini biasanya terlalu berlebihan untuk diharapkan.

#### Model dinamis untuk pengorbanan privasi vs utilitas dalam autentikasi anonim

Membutuhkan satu model keamanan untuk melakukan trade-off privasi-vs-utilitas jelas tidak ideal. Dan justru inilah yang ingin kami perbaiki, karena persyaratan serupa namun berbeda ini cukup umum dalam praktiknya. Jadi, apa yang telah kami lakukan adalah menghadirkan UAS, sebuah model keamanan umum yang dapat disesuaikan di sana-sini, sehingga Anda dapat menyesuaikannya dengan kebutuhan kasus penggunaan Anda – dalam hal trade-off privasi-vs-utilitas yang diperlukan. . Secara lebih rinci, jika dicermati, ada tiga poin di mana seseorang mungkin ingin mengadaptasi jenis skema otentikasi anonim ini:

- Pada waktu penerbitan: ketika pengguna meminta kredensial, mereka mungkin diminta untuk memberikan kredensial pengesahan yang diperoleh sebelumnya yang memenuhi properti A atau B – atau mereka mungkin tidakTex
bahkan diharuskan memberikan kredensial sama sekali!
- Pada waktu penandatanganan: ketika pengguna ingin membuat tanda tangan anonim (atau menunjukkan kredensial mereka), pemverifikasi mungkin perlu mengetahui bahwa atribut kredensial memenuhi kriteria tertentu.
- Pada waktu audit: auditor mungkin mengharuskan beberapa informasi dapat diambil setelah tanda tangan dibuat. Mungkin juga tidak ada auditor sama sekali!

Kami menangkap berbagai pengorbanan ini melalui 'placeholder fungsional' (pemrogram dapat menganggapnya sebagai fungsi abstrak) pada tiga titik ini, yang tertanam dalam kerangka keamanan yang pada dasarnya mengikuti templat anonimitas-unforgeability yang disebutkan di atas. Hal yang paling penting bagi para insinyur adalah, mengingat konstruksi yang terbukti aman dalam model kami, mereka hanya perlu menentukan fungsi konkrit yang diperlukan pada setiap langkah –penerbitan, penandatanganan, dan audit – dan selesai! Keamanan mengikuti keamanan konstruksi utama.

#### Apa hubungannya dengan GS, AC, atau RS?

Pertanyaan yang wajar! Kami ingin memastikan bahwa model umum yang kami klaim benar-benar bersifat umum. Jadi, bagaimana kita melakukannya? Kami membuktikan bahwa, dengan memberikan fungsi konkrit pada saat penerbitan, penandatanganan, dan audit, konstruksi generik kami dapat berperilaku seperti skema GS, AC, atau RS. Lebih khusus lagi, kami membuktikan bahwa varian konstruksi kami adalah skema GS, AC, atau RS yang aman, berdasarkan model keamanannya yang terkenal).

Tentu saja, makalahnya terbatas, jadi kami hanya membuktikan bahwa GS, AC, dan RS dasar dapat dibangun dari konstruksi umum UAS. Kami juga membuat sketsa bukti untuk varian yang lebih canggih, seperti GS dengan pembukaan yang bergantung pada pesan, Tanda Tangan Pribadi Multimodal, dan Kredensial Anonim yang Dapat Dicabut. Sangat mudah untuk membayangkan banyak varian lainnya. Kredensial Anonim dengan kemampuan audit yang diperluas, misalnya, atau bahkan skema tanda tangan anonim dengan trade-off privasi-vs-utilitas yang belum dipertimbangkan dalam bidang akademis.

## Apa yang (atau mungkin) selanjutnya?

Hal pertama yang mungkin Anda perhatikan adalah bahwa ini adalah karya yang cukup teoretis. Meskipun semuanya terlihat baik-baik saja di atas kertas, masalah mungkin muncul saat coding. Kekhawatiran yang sah adalah hukuman apa yang dibayarkan secara efisiensi karena memiliki konstruksi yang dapat disesuaikan dengan banyak kasus penggunaan yang berbeda. Ini merupakan kekhawatiran yang sangat beralasan. Bagaimanapun, skema yang dirancang dengan satu tujuan cenderung lebih efisien. Untuk mengevaluasi hal ini dengan lebih baik, kami sedang mengerjakan prototipe. Awalnya, kami ingin memiliki perpustakaan yang dapat mengabstraksi detail internal, dan membiarkan pengembang fokus pada penerapan placeholder fungsional konkret yang mereka minati. Lalu, uji seberapa efisien hasilnya, dari konstruksi generik kami (yang saat ini hanya ada) . Ini mungkin cukup baik untuk beberapa aplikasi, tetapi tidak semua.

Makalah ini memberikan konstruksi umum berdasarkan BBS+, enkripsi, dan bukti ZK generik (non-interaktif). Hal ini tentu akan baik-baik saja jika yang ingin kita capai adalah jenis klaim pengungkapan selektif, namun hal ini mungkin tidak akan sesuai jika kita ingin membuktikan predikat yang lebih ekspresif, misalnya. Jadi, langkah selanjutnya adalah memikirkan konstruksi generik alternatif yang lebih sesuai untuk kebutuhan yang lebih ekspresif.

Selain itu, dari sudut pandang teoretis, kami memiliki banyak gagasan untuk masa depan. Mengizinkan emiten dan auditor mengubah fungsinya, misalnya. Saat ini, meskipun banyak emiten atau auditor dapat hidup berdampingan, masing-masing dari mereka berkomitmen pada suatu fungsi. Atau sesuaikan model dengan pengaturan yang sepenuhnya dinamis, dan masih banyak lagi.

## Bagaimana rencana kami untuk mengintegrasikan UAS ke Atala?

Seperti yang dinyatakan, kami sedang mengerjakan implementasi berdasarkan konstruksi umum kami dari BBS+, enkripsi (ElGamal), dan bukti ZK (protokol Sigma dasar). Ini akan menjadi titik awal kami, memungkinkan kami menguji teknologi baru ini di tumpukan SSI yang disediakan oleh Atala. Dengan mengintegrasikan UAS dalam tumpukan Open Enterprise Agent Atala, kami akan dapat memanfaatkan semua peralatan yang dimiliki Atala, dan mulai menguji bagaimana perilaku UAS di lingkungan siap produksi (dengan agen, node, protokol komunikasi khusus SSI, dll), dan juga menyesuaikannya dengan kebutuhan pasar dan tim teknik.

Pantau pembaruan yang akan datang!
​
