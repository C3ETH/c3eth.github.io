---
title: 'Hydra untuk Lelang'
date: 2020-10-06 08:48:23 +0000
lastmod: 2020-10-06 08:48:23 +0000
draft: false
images: []
---

## Pasar NFT di Cardano

Cardano membuat pembuatan dan pengiriman token non-fungible (NFT) menjadi murah dan mudah, karena sistem akuntansi untuk token non-ADA dihosting di buku besar itu sendiri (bersama ADA) alih-alih kontrak pintar khusus yang rumit dan rawan bug. Hal ini menghasilkan ekosistem NFT yang dinamis di Cardano untuk seni, musik, identitas, real estate, game, langganan layanan, dll.

Pasar berkualitas tinggi kini ada di Cardano untuk membuat daftar, melihat, dan membeli semua jenis NFT. Pasar NFT ini memiliki antarmuka pengguna yang sangat ramah yang dapat dengan rapi menampilkan gambar/animasi, grafik kelangkaan, ketentuan royalti, dan metadata lainnya untuk NFT, yang dapat dibeli dengan harga jual penjual atau melalui penawaran alternatif pembeli.

Namun, kebaruan aset digital dan non-digital yang diberi token di Cardano dan ukuran pasar yang relatif kecil membuat penemuan harga menjadi tantangan di sektor NFT.

## Lelang NFT di Cardano dan Kendala Saat Ini

Lelang merupakan mekanisme yang efisien untuk penemuan harga ketika barang yang dijual bersifat baru atau unik (misalnya karya seni), ketika alokasi yang paling efisien sulit ditentukan sebelumnya (spektrum radio), atau ketika ada kekhawatiran mengenai perdagangan orang dalam dan kolusi (kebangkrutan). penjualan api). Di pasar tradisional, penjual mencantumkan suatu barang dengan harga tertentu dan pembeli pertama yang mencocokkannya dapat membeli barang tersebut dengan harga tersebut – jika harga penjual ditetapkan terlalu rendah, maka pembeli akan segera mendaftarkan ulang barang tersebut untuk dijual. itu untuk keuntungan arbitrase. Di pasar lelang, penjual dapat menunggu harga diselesaikan dalam proses penawaran yang kompetitif sebelum menjual barangnya kepada penawar tertinggi.

Lelang harus berlangsung dengan meriah dan efisien – para penawar memasuki lelang (seringkali secara kebetulan) dengan waktu dan rentang perhatian yang terbatas, dan mereka akan keluar jika terlalu lama bagi mereka untuk mengajukan penawaran atau mengamati penawaran dari penawar lainnya. Pengalaman bidder ini sulit diterapkan secara langsung di jaringan utama Cardano (L1), karena transaksi L1 memerlukan waktu untuk ditambahkan ke blok (~10–60 detik) dan dikonfirmasi dengan kemungkinan rollback yang cukup rendah (menit hingga jam).

## Menjalankan Lelang dengan Hydra

Namun, mekanisme penawaran lelang adalah kandidat sempurna untuk meningkatkan skala L2 melalui teknologi Hydra, karena transaksi dalam Hydra Head memiliki penundaan konfirmasi yang singkat dan penyelesaian yang cepat. Layanan lelang bertenaga L2 yang menarik dapat dibangun di Cardano jika dikembangkan dengan memanfaatkan kekuatan Hydra.

Kami membayangkan kerangka lelang berbasis Hydra akan menjadi komponen modular standar yang akan dipasang oleh pasar NFT, game, dan aplikasi Web 3.0 lainnya ke dalam arsitektur mereka untuk menambahkan lelang aset digital ke produk mereka. Selain itu, hal ini akan merangsang ekosistem bisnis baru bagi penyedia skalabilitas profesional untuk menawarkan layanan hosting L2 untuk aplikasi ini, serupa dengan ekosistem pemangku kepentingan dan ekosistem tata kelola yang sedang berkembang.

## Sebuah Jalan ke Depan

Salah satu jalur yang mungkin untuk mewujudkan visi ini dapat dicapai dengan serangkaian pencapaian berikut yang kami yakini layak untuk diterapkan dengan menggunakan Hydra dan antisipasi perbaikannya:

- Undangan Voucher yang Didelegasikan
- Voucher Delegasi Terbuka
- SDK untuk Lelang Voucher yang Didelegasikan
- Lelang sebagai layanan Tunggal
- Multi Lelang sebagai Layanan
