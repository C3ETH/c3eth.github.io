---
title: "Stake Pool di Cardano"
weight: 4
# description: ""
---

### Latar Belakang

Di dalam blockchain Proof of Stake (PoS) seperti Cardano, ledger (buku besar) dari blockchain dijaga dan dipelihara oleh para stakeholders (pemangku kepentingan), yakni para pihak yang memiliki asset (staked asset) di dalam ledger tersebut.

Walaupun energi yang dikonsumsi lebih ramah lingkungan daripada Proof of Work (PoW) atau metode konsensus lainnya, hal ini menjadi beban tersendiri bagi para stakeholders.

Diperlukan sejumlah stakeholders yang online secara terus menerus agar pemrosesan transaksi dan produksi block dapat terjaga, tanpa tertunda secara signifikan.

Oleh karena itu, ledger blockchain akan diuntungkan dengan adanya node-node server yang dapat diandalkan, yang juga memiliki asset, serta fokus pada maintenance.

### Stake Pool

Untuk menjadi node-node server yang dapat diandalkan umumnya hanya dapat dilakukan oleh beberapa pihak stakeholder, dalam hal ini seperti perusahaan teknologi besar. Namun, hal inilah yang ingin dihindari, karena akan lebih baik jika semua orang dapat berkontribusi dalam menjaga dan memelihara ledger blockchain.

Solusi untuk mengatasi permasalahan ini adalah dengan pembuatan ***stake pool***.

Beberapa stakeholder mengumpulkan asset mereka dan membentuk sebuah single entity (stake pool) untuk kemudian berpartisipasi ke dalam protocol PoS menggunakan total staked asset yang dimiliki. Pool tersebut memiliki seorang operator (manager) yang bertanggungjawab dalam menjalankan operasional pool seperti set up server, dll, dan di saat yang bersamaan operator tersebut juga tidak dapat menggunakan staked asset yang diwakilkan oleh pool tersebut.

Stakeholder lain (dalam hal ini, para delegator) juga bebas untuk mendelegasikan atau memindahkan asset-nya ke pool - pool yang tersedia sesuai keinginannya.

Partisipasi dalam menjaga dan memelihara ledger blockchain tentunya membutuhkan biaya, walaupun tidak sebesar PoW. Setiap stakeholder berhak mendapatkan insentif karena telah berjasa dalam menyediakan node server, menyediakan staked assets, dan ikut serta dalam memproses transaksi. Insentif ini diperoleh dari biaya transaksi dan cadangan ADA.

### Pembagian Rewards

Sistem rewards dibuat agar rewards selalu tersedia secara reguler. Dari setiap rewards yang diperoleh, ada biaya tetap (saat ini sudah diatur oleh jaringan sebesar 340 ADA) untuk maintenance pool dan profit margin yang harus dibayarkan terlebih dahulu ke pool operator (SPO), sebelum sisanya didistribusikan secara merata ke para delegator.

**Mengapa ada profit margin?**

Parameter ini dapat diatur kapan saja oleh SPO untuk penyesuaian ketika terjadi volatilitas harga ADA sehingga dapat menutup biaya lain yang dibutuhkan, sekaligus sebagai insentif bagi SPO.

**Parameter yang mempengaruhi besaran rewards**

Parameter lain yang mempengaruhi besaran rewards adalah ***saturation point***.

Pool yang melewati saturation point dianggap terlalu ramai (over-saturated) dan jumlah rewards yang diperoleh setelah saturation point menjadi konstan. Misalnya, saturation point di angka 10%, maka pool – pool besar dengan total staked asset di angka 15%/20%/25% dari keseluruhan total staked asset, hanya tetap menerima rewards dari angka 10%.

> **Presentase total staked = total staked di SPO / total keseluruhan staked di jaringan**

Saturation point ini untuk mencegah munculnya stake pool yang bersifat diktator yang dapat menjadi ***single point of failure*** di dalam jaringan, dimana para delegator hanya mendelegasikan asset-nya ke satu stake pool dengan rewards terbesar walaupun sudah over-saturated. Stake pool lainnya yang masih kecil dengan total staked mungkin hanya di angka 1-2% menjadi kurang diminati, karena jumlah rewards-nya yang masih kecil. Selain itu juga, profit margin di pool besar bisa jadi lebih rendah daripada pool kecil, karena pool kecil masih harus menutupi banyak biaya.

Oleh karena itu, perlu diingat kembali bahwa tujuan dengan adanya stake pool adalah untuk menjaga desentralisasi jaringan. Tentu, dengan semakin bertambahnya total stake yang dimiliki stake pool kecil ini tersebut, rewards yang diperoleh juga akan semakin besar hingga mencapai level saturated-nya sendiri.
