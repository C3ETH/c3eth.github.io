---
title: "
[Cardano 360] Mid Sep 2022"
date: 2022-09-18T09:19:42+01:00
lastmod: 2022-09-18T09:19:42+01:00
draft: false
weight: 50
images: []
contributors: ["Andre Cahyadi"]
pinned: false
homepage: false

---

Dipublikasikan pada tanggal 18 Sep 2022 <br/>
Ditulis & disadur oleh andre cahyadi ([@prosperaan](https://forum.cardano.org/u/prosperaan)) <br/>
Untuk komunitas Cardano Indonesia <br/>
Referensi: [Cardano Vasil upgrade: the final mile. Mid Month Development Update - September 2022. - YouTube](https://www.youtube.com/watch?v=j0IKJXo-_Ro)

> _**Update terbaru mengenai persiapan ke hard fork Vasil**_

- Environment **Pre-Production** akan di-hard fork terlebih dahulu pada tgl 19 Sep 2022, sedangkan **Mainnet** sendiri masih sesuai rencana di tgl 22 Sep 2022.

![image](https://global.discourse-cdn.com/business4/uploads/cardano/original/3X/a/4/a4d7e5b4b0e59c85576ee52dd9123f58f323bfc4.jpeg)

- Versi node terbaru 1.35.3 dari para SPO sudah minting lebih dari 98% block di jaringan
- Kesiapan para exchange hasilnya juga positif, saat ini sudah sekitar 55% _exchange by liquidity_ yang sudah terintegrasi (target 80%). _**Dari Indonesia, Indodax masih belum mulai persiapan ke hard fork Vasil.**_

> Selengkapnya mengenai kesiapan ekosistem dengan hard fork Vasil dapat dilihat di link berikut, [https://iohk.zendesk.com/hc/en-us/articles/7981157534105-Ecosystem-readiness-for-Vasil-upgrade](https://iohk.zendesk.com/hc/en-us/articles/7981157534105-Ecosystem-readiness-for-Vasil-upgrade)

- Apa saja yang akan ada setelah hard fork Vasil. Sebagai recap dari post - post selama beberapa bulan belakangan:

  - 1.  **Perubahan Plutus Core** \*_**Plutus Interpreter & Cost Model baru**_
        a. Plutus Interpreter yang terbaru ini meningkatkan waktu & penggunaan memory bagi script yang berjalan di Plutus v1 & v2.
        b. Cost model baru mengurangi biaya transaksi baik di Plutus v1 & v2 (mulai efektif per tgl 27 Sep 2022).

  - 2.  **Plutus v2**
        a. _**Reference Inputs (CIP-31) → Optimisasi**_
        Input UTXO cukup ditunjuk/direferensikan saja, tanpa perlu di-consume.
        UTXO yang tersimpan di blockchain dapat digunakan lagi tanpa harus spending & re-create UTXO lagi. User dapat menggunakan input UTXO yang sama. Alhasil banyak transaksi yang dapat diproses secara paralel bersamaan dan meningkatkan konkurensi.
        b. _**Inline Datums (CIP-32) → proses pembuatan script menjadi lebih mudah bagi para developer dapps**_
        Datum dapat dilihat langsung dan di-_attached_ ke output, tidak perlu proses matching dengan hash lagi sehingga menghemat memory.
        c. _**Reference Scripts (CIP-33) → menurunkan ukuran & biaya transaksi serta meningkatkan kapasitas throughput**_
        Saat ini di Plutus v1, script harus di-_embed_ di dalam body transaksi.
        Di Plutus v2, script dapat di-_attached_ langsung ke output sehingga transaksi cukup mereferensikan script saja tanpa harus di-_embed_ di dalam body transaksi.
        Ukuran transaksi menjadi lebih kecil sehingga ukuran memory yang diperlukan juga lebih sedikit dan biaya transaksi menjadi lebih murah. \*_**Semua dapp developer harus upgrade ke Plutus v2 untuk menggunakan ketiga fitur terbaru di atas.**_

  - 3.  **Collateral Change Address (CIP-42)**
        Biaya transaksi dapat lebih diprediksi karena dapps developer dapat menspesifikasikan atau menominasikan sebuah alamat untuk menerima kembalian (change address).
        Di Plutus v1, ketika sebuah transaksi berhasil divalidasi, jaminan (collateral) dikembalikan ke default change address. Namun di Plutus v2, jaminan ini dapat dikirim ke alamat kembalian khusus yang telah di-_setup_ sebelumnya. Seandainya transaksi gagal divalidasi, maka collateral tetap diambil (sama seperti Plutus v1), namun amount yang masih ada di dalam transaksi dapat dikirim balik ke alamat kembalian khusus ini juga.

  - 4.  **Transaction Redeemer Changes**
        Pembuatan script yang lebih mudah sehingga memberikan pengalaman yang lebih baik bagi para developer.
        Developer dapat melihat _redeemers_ untuk semua input. Saat ini, hanya dapat melihat satu persatu hasil dari script yang sudah dieksekusi.

  - 5.  **Single Verifiable Random Function**
        Ditujukan untuk para SPO, proses propagasi block yang lebih cepat sehingga meningkat performa sistem secara keseluruhan tanpa mengorbankan sisi keamanan.
        Saat ini di Alonzo, setiap propagasi block membutuhkan 2x proses VRF Function Calls dalam setiap hop network → _cost intensive process_.
        Nantinya di Vasil, proses ini dikurangi menjadi 1x saja dalam setiap hop network.

  - 6.  **Diffusion Pipelining**
        Meningkatkan waktu dalam propagasi block (sama seperti proses VRF yang dikurangi di atas).
        Block - block akan dipropagasi sebelum mereka tervalidasi penuh sehingga waktu yang saling overlap dapat digunakan untuk memvalidasi block sebelumnya.
        Diffusion Pipelining akan dimonitor selama beberapa Epoch setelah hard fork agar jika diperlukan dapat di-tune up lagi untuk meningkatkan performanya. \*_**Penghematan waktu yang didapat dari Diffusion Pipelining memberikan ruang waktu lebih untuk meningkatkan skalabilitas Cardano:**_
        a. Kapasitas throughput - ukuran block yang lebih besar, semakin banyak transaksi yang dapat ditampung
        b. Plutus Script memory units – jumlah memory yang lebih besar untuk eksekusi Plutus Script
        c. Plutus CPU limits – computational resources yang lebih besar dapat dialokasikan untuk Plutus Script

> **Final Timeline dari hard fork Vasil**

![Final Vasil Hardfork Timeline](https://global.discourse-cdn.com/business4/uploads/cardano/original/3X/7/d/7dc71ff3afc79ddd71c762ed30d86d7fc670498f.jpeg)
