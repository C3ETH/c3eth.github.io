---
title: "Cardano Data di Google BigQuery"
---
Dipublikasikan pada tanggal 23 Jan 2022

Disadur & diterjemahkan oleh andre cahyadi ([@prosperaan](https://forum.cardano.org/u/prosperaan))

Untuk komunitas Cardano Indonesia

Referensi: [Cardano data on BigQuery - IOHK Blog](https://iohk.io/en/blog/posts/2022/07/01/cardano-data-on-bigquery/)

### Pengantar

Blockchain Cardano dengan cepat telah menjadi wadah pengembangan untuk solusi aplikasi terdesentralisasi (dApps) dan keuangan terdesentralisasi (DeFi). Dengan lebih dari seratus proyek yang sudah Go Live dan lebih dari seribu proyek sedang dalam tahap pengembangan, database transaksi Cardano terus menerus berkembang.

Kueri data (Data Query) merupakan hal yang sangat penting bagi setiap proyek di blockchain. Mengapa? Karena akurasi data adalah fondasi untuk secure dan trustless activities. Pikirkan tentang sebuah crypto wallet. Untuk memproses transaksi, sistem perlu mengetahui berapa banyak dana yang Anda miliki dan apakah cukup untuk menutupi transaksi yang dimaksud. Catatan transaksi ini kemudian ditambahkan ke blockchain, yang mengharuskan wallet tersebut untuk tersinkronisasi sepenuhnya dengan status blockchain terbaru.

Di dalam artikel ini, akan dibahas cara kueri data di Cardano menggunakan Google BigQuery.

### Kueri Data di Cardano

Ribuan node yang terdesentralisasi memelihara jaringan Cardano dan masing-masing node tersebut memegang salinan lengkap blockchain. Karena ukuran blockchain yang terus meningkat akibat jumlah transaksi dan data yang bertambah terus, waktu untuk sinkronisasi seluruh riwayat blockchain pun jadi semakin meningkat.

Cardano db-sync adalah salah satu komponen inti Cardano, yang menyediakan cara mudah untuk mencari dan menemukan informasi historis dari blockchain Cardano. Db-sync terhubung ke local node sebagai client dan melakukan sinkronisasi dengan aktivitas on-chain. Menggunakan db-sync, bagaimanapun, membutuhkan pengetahuan teknis yang mendalam untuk menjalankan sebuah node dan server database lokal.

Demi menyediakan kebutuhan untuk alternatif kueri data yang lebih sederhana, beberapa solusi pun muncul. Bergantung pada keahlian teknis yang dimiliki, software requirements, dan kebutuhan; pengguna dapat memilih beberapa solusi yang yang telah dibuat oleh komunitas. Salah satunya adalah _**Cardano Blockchain Insights**_ ([Cardano Blockchain Insights](https://datastudio.google.com/reporting/3136c55b-635e-4f46-8e4b-b8ab54f2d460/page/k5r9B)), menyediakan data blockchain dalam bentuk visual dan dashboard menggunakan Google Data Studio. Solusi lainnya adalah _**Scrolls**_ dan _**Blockfrost**_ yang juga digunakan untuk bekerja dengan data blockchain.

### Google BigQuery

IOG memperkenalkan opsi solusi _**Google BigQuery**_ untuk bekerja dengan data blockchain Cardano. Google BigQuery mempermudah pencarian data tanpa perlu menjalankan software khusus. Semua data diambil langsung dari Cardano db-sync dan divalidasi untuk memastikan akurasinya. Pengguna pun dapat yakin memiliki akses ke data yang sama seperti di db-sync.

BigQuery mengatur data Cardano berdasarkan nomor epoch, yang memungkinkan kueri per epoch sehingga biaya yang dibutuhkan pun juga rendah. Dengan tambahan menggunakan Google Data Studio, dapat dibuat advanced visualizations dan dashboard yang mengacu pada data BigQuery.

#### Bagaimana cara kerja BigQuery?

*   Pastikan Anda masuk ke akun Google Cloud Platform dan mengaktifkan API BigQuery

*   Open atau create sebuah Google BigQuery atau Data Studio project

*   Akses IOG analytics sheet

*   Kueri data blockchain Cardano


#### Proses Kueri

Penggunaan dataset-nya cukup mudah. Pilih tabel yang diinginkan dan klik “Query” untuk memperoleh detail-nya.

![image](https://global.discourse-cdn.com/business4/uploads/cardano/optimized/3X/e/b/eb74c2c8d56f60547e98bdcacd26675ac4f72b33_2_1000x383.png)


**Figur 1. IOG data analytics dashboard**

Anda juga dapat mengimport data yang sudah dikueri ke Google Data Studio. Ini memungkinkan Anda membuat berbagai chart dan grafik untuk memvisualisasikan transaksi atau statistik block.

#### Proses Update Data

Ada beberapa hal yang harus diperhatikan saat bekerja dengan BigQuery:

1.  Data diambil dan disalin dari db-sync setiap dua jam.

2.  Data hanya diperbarui ke sekitar 20 blok terakhir sebelum block height saat ini di db-sync. Hal ini penting untuk mencegah terjadinya rollbacks of blocks dalam kasus chain forking.


#### Biaya

Biasanya, biaya untuk query data pada BigQuery adalah sebesar US$ 5 per terabyte (TB). Ada juga kuota gratis satu TB data per bulan. Lebih lanjut, silahkan lihat detail harga BigQuery di link berikut ini, [Pricing  |  BigQuery: Cloud Data Warehouse  |  Google Cloud](https://cloud.google.com/bigquery/pricing).

Penting untuk diingat bahwa tabel data Cardano dibagi berdasarkan nomor epoch, yang memungkinkan proses kueri data per epoch yang dipilih, sehingga mengurangi jumlah data yang harus diproses dan biaya yang dibutuhkan juga lebih rendah.

#### Siap untuk mencoba?

Saat ini, proyek Cardano BigQuery masih dalam rilis beta dan belum termasuk semua data blockchain, khususnya detail staking dan staking rewards. Tim IOG masih mengerjakan untuk pengembangan lebih lanjut, dan di iterasi berikutnya IOG analytics datasheet akan mencakup semua data Cardano dari db-sync.

Pastikan Anda telah membaca dokumentasi BigQuery di link berikut ini, [https://docs.cardano.org/cardano-components/cardano-db-sync/big-query](https://docs.cardano.org/cardano-components/cardano-db-sync/big-query) dan contoh kueri-nya di [https://docs.cardano.org/cardano-components/cardano-db-sync/big-query#querytableschemas](https://docs.cardano.org/cardano-components/cardano-db-sync/big-query#querytableschemas).

Feedback pun siap ditampung oleh tim IOG dengan cara email ke **[data-analytics@iohk.io](mailto:data-analytics@iohk.io)**.

#### Legal Disclaimer

_Beberapa link yang diberikan akan membawa Anda ke situs web pihak ketiga, dimiliki dan dioperasikan oleh pihak independen di mana Input Output Global, Inc. tidak memiliki kontrol (“Situs Web Pihak ke-3”). Setiap penggunaan Situs Web Pihak ke-3 akan tunduk dan informasi apapun yang Anda berikan akan diatur oleh ketentuan Situs Web Pihak ke-3, termasuk yang berkaitan dengan kerahasiaan, privasi data, dan keamanan._
