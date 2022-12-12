---
title: "Djed-stablecoins and decentralized reserve system"
date: 2022-02-01T09:19:42+01:00
lastmod: 2022-02-01T09:19:42+01:00
draft: false
weight: 50
images: []
contributors: ["Andre Cahyadi"]
pinned: false
homepage: false
---

Dipublikasikan pada tanggal 01 Feb 2022 <br/>
Ditulis & disadur oleh andre cahyadi ([@prosperaan](https://forum.cardano.org/u/prosperaan)) <br/>
Untuk komunitas Cardano Indonesia <br/>
Referensi:<br/>
([Stablefees and the Decentralized Reserve System - IOHK Blog](https://iohk.io/en/blog/posts/2021/06/10/stablefees-and-the-decentralized-reserve-system/))<br/>
([Djed: implementing algorithmic stablecoins for proven price stability - IOHK Blog](https://iohk.io/en/blog/posts/2021/08/18/djed-implementing-algorithmic-stablecoins-for-proven-price-stability/))<br/>
([https://fedguy.com/](https://fedguy.com/))<br/>
([The Stablecoin Candidate](https://thecryptodrip.com/the-stablecoin-candidate/))<br/>

Djed adalah crypto-backed algorithmic stablecoin yang dikembangkan dengan smart contract dan bertindak sebagai decentralized autonomous bank. Proyek ini dikembangkan oleh IOG, Emurgo, dan Ergo (Ergo blockchain). Djed bekerja dengan menjaga reserve dari base coins (ADA), untuk kemudian memproses minting & burning stablecoins & reserve coins. Cara kerja ini sama seperti yang dilakukan oleh Bank Sentral di seluruh dunia, namun perbedaannya dilakukan secara terdesentralisasi. Djed tidak seperti stablecoins pada umumnya yang diluncurkan oleh perusahaan besar (tersentralisasi) dimana stablecoins yang beredar dibackup oleh instrumen – instrumen keuangan tradisional. Hal ini memicu resiko besar di pasar jika pada suatu saat terjadi ‘bank-run’, dimana seluruh pengguna stablecoins yang bersangkutan melalukan redeem massal sehingga pasar crypto secara general menjadi terancam.

Sebelum melangkah lebih jauh ke cara kerja Djed, ada baiknya terlebih dahulu mengenal konsep cara kerja Bank Sentral.

> Disclaimer: contoh ini memakai cara kerja Bank Sentral Amerika – Federal Reserve, seharusnya sama dengan yang dilakukan oleh Bank Indonesia. Sedikit ilmu ekonomi untuk pemahaman semuanya, jika ada yang kurang tepat, teman – teman dari bidang ekonomi & finansial bisa memberikan input agar nanti diperbaiki lagi).

![Balance Sheet - 1](https://global.discourse-cdn.com/business4/uploads/cardano/original/3X/8/b/8b47ed2527c5dd98c348be54e1c5615e8a534596.jpeg)

**Catatan:**

- Aset dan Liabilitas selalu balance dalam setiap buku (balance sheet) masing – masing lembaga.
- FED Reserve atau Giro Wajib Minimum (Bank Indonesia) adalah sistem giro elektronik milik Bank Sentral yang bisa diatur besarannya apakah mau dinaikkan atau diturunkan dengan melihat kondisi ekonomi suatu negara. **Inilah yang selalu disebut oleh semua orang di dunia, Creating Money Out of Thin Air**.
- US Government Bonds adalah obligasi atau surat berharga yang dikeluarkan oleh Pemerintah US
- Treasury General Accounts (TGA) adalah rekening milik Pemerintah US yang ada di the FED
- **Sektor Swasta yang terdiri dari Bank Komersial dan Lembaga Finansial Non-Bank adalah pihak yang sebenarnya Creating Money Out of Thin Air**, dimana sektor swasta-lah yang membeli obligasi Pemerintah US dan menyalurkan uang/pinjaman ke masyarakat maupun perusahaan.

**Cara Kerja:**<br/>

**1) Operasi Ekspansi Moneter (Quantitative Easing - QE)**

- Kondisi ekonomi sedang sulit, biasa ditandai dengan deflasi bahkan resesi.
- FED memperbesar nilai balance sheet-nya dimana FED akan mencetak FED Reserve yang akan dijual ke sektor swasta atau dikenal sebagai operasi Repo (tidak akan detail membahas ini).
- Sektor swasta diminta untuk membeli obligasi pemerintah US dan menyalurkan pinjaman ke masyarakat atau perusahaan dimana pembelian atau penyaluran pinjaman ini akan dijamin oleh the FED melalui FED Reserve. Bahkan bank komersial pun diminta mengirimkan ‘uang gratis’ ke masyarakat selama pandemi Covid 19
- Pemerintah US mendapatkan dana di TGA dari hasil penjualan obligasinya untuk digunakan bagi keperluan negara.
- Ketika kondisi ini terjadi, interest rate (tingkat suku bunga) diturunkan agar para peminjam baik Pemerintah US maupun masyarakat dapat melunasi hutang – hutangnya lebih mudah.
- Di sini, orang lebih nyaman berinvestasi, uang yang berlebih masuk ke pasar finansial dan meningkatkan nilai semua aset finansial tanpa terkecuali crypto.

**2) Operasi Pengetatan Moneter (Quantitative Tightening - QT)**

- Kondisi ekonomi sudah panas, biasa ditandai dengan inflasi.
- FED memperkecil nilai balance sheet-nya dimana FED akan menghapus FED Reserve dari peredaran. Sektor swasta harus menjual FED Reserve yang dimiliki ke the FED lagi, dikenal sebagai operasi Reverse Repo.
- Dengan kondisi ini, sektor swasta tidak lagi mendapat jaminan dari the FED melalui FED Reserve, dimana hutang – hutang yang telah dikeluarkan melalui pembelian obligasi pemerintah US maupun penyaluran pinjaman ke masyarakat atau perusahaan menjadi sangat beresiko. Di balance sheet sektor swasta tidak ada lagi FED Reserve, melainkan didominasi oleh hutang hasil operasi QE.
- Alhasil, sektor swasta pun meminta yield atau interest rate yang tinggi dari obligasi pemerintah US maupun pinjaman ke masyarakat atau perusahaan untuk menghadapi resiko gagal bayar.
- Di periode ini, interest rate pun akan dinaikkan oleh the FED dan orang lebih cenderung nyaman memegang cash, dalam hal ini USD
- Impact negatif ke pasar finansial tidak terelakkan termasuk aset crypto, karena sudah tidak ada lagi liquidity “gratis” yang dijamin oleh the FED.

**Dengan konsep pemikiran di atas, mari lihat Djed stablecoin.**

![Balance Sheet - 2](https://global.discourse-cdn.com/business4/uploads/cardano/original/3X/b/4/b4919fa5c0715b19c947ac9a89a3d9e96ac47abd.jpeg)
Sumber: Blog IOHK

**Catatan:**

- Karena tidak ada Bank Sentral di dalam Djed, oleh karena itu diperlukan pihak yang mau menjadi penyedia likuiditas.
- **The FED diwakilkan oleh penyedia likuiditas (warna merah)**
  Mereka membeli Reserve Coin (buy RC - minting) dengan ADA, bisa melalui pihak ketiga atau ke smart contract langsung (hal ini mirip seperti the FED yang menyediakan FED Reserve).
  Penyedia likuiditas selanjutnya akan mendapatkan sejenis ‘saham’ dalam bentuk Decentralized Equity Coins (DEC)
  ![Balance Sheet - 3](https://global.discourse-cdn.com/business4/uploads/cardano/original/3X/6/5/654f20676ed71754e1173a2a492bb17b5f4487f0.jpeg)
- **Sektor swasta diwakilkan oleh Decentralized Autonomous Bank smart contract**
  Smart contract akan mengeluarkan 2 jenis coins:
  **a. Decentralized Equity Coins (DEC) untuk penyedia likuiditas**
  **b. Stablecoins (SC) untuk pengguna stablecoins, atau disebut juga sebagai Basket Equivalent Coins (BEC), karena akan di-pegged dengan beberapa commodities.**
  ![Balance Sheet - 4](https://global.discourse-cdn.com/business4/uploads/cardano/original/3X/6/6/66611425709619ef6f8728881118f7d85f90bd01.jpeg)
- **Pemerintah US, masyarakat, perusahaan diwakilkan oleh para pengguna stablecoins (warna biru)**
  Alih – alih mendapatkan pinjaman dengan bunga rendah, di sini para pengguna harus membeli stablecoins (buy SC - minting) dengan ADA.
  ![Balance Sheet - 5](https://global.discourse-cdn.com/business4/uploads/cardano/original/3X/8/1/81b93728329654bd418408cdff4a3f6e63bf1202.jpeg)

**Cara Kerja:**

**1) Ada beberapa kondisi wajib yang harus dipenuhi oleh smart contract:**

- **Nilai Aset harus lebih besar dari Liabilitas**
- **Minimum Reserve Ratio = Asset / Liabilitas harus terus terjaga (lebih besar dari 1), dimana Minimum Reserve adalah jumlah yang dibutuhkan untuk buyback semua stablecoins yang beredar.<br/>Sistem akan mencegah berlebihnya pembelian stablecoin oleh para pengguna atau penjualan reserve coin oleh para penyedia likuiditas**
- **Sistem juga memiliki Maximum Reserve Ratio untuk mencegah pembelian reserve coin secara berlebihan oleh para penyedia likuiditas**

**2) Kondisi harga ADA naik (sama seperti kondisi ketika inflasi - QT)**

- Ketika kondisi ini, harga stablecoins termasuk reserve coins menjadi turun, karena dijual oleh para pengguna maupun penyedia likuiditas.
  a. Para pengguna ingin redeem BEC miliknya, stablecoins akan di-burn, ADA dikembalikan ke mereka.
  b. Penyedia likuiditas ingin redeem DEC miliknya, reserve coins akan di-burn (sama seperti FED Reserve yang hilang dari peredaran), ADA dikembalikan ke mereka
- Volatilitas harga di sini akan diredam oleh para penyedia likuiditas yang setia yang akan dikompensasi dengan fees dan margin dari transaksi penjualan yang masif, untuk tetap memegang reserve coins-nya sehingga harga stablecoins bisa tetap stabil → likuiditas terjaga
- Pihak lain yang ingin membeli stablecoins, dapat membelinya di harga yang stabil (cocok untuk transaction-intensive holders), walaupun tidak bisa mendapatkannya di harga yang sangat murah
- Menjadi penyedia likuiditas cocok untuk long term holders
- Walaupun harga reserve coin lebih rendah, namun tercover oleh fees dan margin dari transaksi para pengguna yang semuanya dihitung dalam ADA.
- Di fase ini, Minimum Reserve Ratio harus dijaga
- Orang cenderung lebih memilih memegang uang cash (dalam hal ini ADA), ketimbang aset finansial (dalam hal ini stablecoins atau reserve coins).

**3) Kondisi harga ADA turun (sama seperti kondisi ketika deflasi - QE)**

- Ketika kondisi ini, harga stablecoins termasuk reserve coins cenderung naik, karena dibeli oleh para pengguna maupun penyedia likuiditas.
- Volatilitas harga di sini akan diredam oleh para penyedia likuditas yang setia yang akan dikompensasi dengan fees dan margin dari transaksi pembelian yang masif, untuk tetap memegang reserve coins-nya sehingga harga stablecoins bisa tetap stabil → likuiditas terjaga
- Pihak lain yang ingin menjual stablecoins, memiliki kesempatan arbitrage, namun harganya pun tidak akan terlalu signifikan, sehingga bagi pembeli, harganya masih tetap stabil
- Harga reserve coin yang lebih tinggi meng-cover fees dan margin dari transaksi para pengguna yang semuanya dihitung dalam ADA.
- Para penyedia likuiditas sendiri dapat menambah reserve coins-nya agar semakin untung (sama seperti FED Reserve yang ditambah ke peredaran), namun di fase ini, Maximum Reserve Ratio harus dijaga
- Orang cenderung memilih memegang aset finansial (dalam hal ini stablecoins atau reserve coins), ketimbang uang cash (dalam hal ini ADA)

**Catatan Lain:**<br/>
Pemegang DEC dan BEC tetap dapat berpartisipasi dalam staking dan governance, karena nominalnya juga menggunakan ADA.
