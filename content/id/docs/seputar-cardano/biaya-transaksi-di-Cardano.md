---
title: "Biaya Transaksi di Cardano"
weight: 4
# description: ""
---

### 1. Mengapa biaya transaksi (*transaction fee*) dibutuhkan di jaringan Cardano?

* Sebagai insentif bagi pihak – pihak yang menjalankan node server di jaringan atas waktu, biaya, dan usaha yang telah dikeluarkan.

* Mencegah serangan *DDoS (Distributed Denial of Service)* dimana penyerang atau aktor jahat membanjiri jaringan dengan banyak transaksi palsu.

### 2. Bagaimana cara kerja biaya transaksi di Cardano?

Ketika seseorang ingin mengirimkan ADA ke orang lain, ada biaya minimal yang dihitung untuk transaksi tersebut. Agar transaksi dianggap valid, maka biaya ini harus masuk ke dalam hitungan total biaya.

Semua biaya transaksi dikumpulkan ke dalam sebuah ‘virtual pot’, untuk kemudian didistribusikan ke seluruh partisipan atau delegator di jaringan Cardano.

### 3. Bagaimana penghitungan biaya transaksi di Cardano?

> ***Rumus = a + b * size***

Dimana a dan b bernilai konstan, sedangkan size adalah ukuran transaksi dalam Bytes yang sifatnya dinamis.

> ***Saat ini, nilai a = 0.155381 ADA, sedangkan nilai b = 0.000043946 ADA/Byte.***

**Contoh:**

Sebuah transaksi ukuran 200 Bytes (ukuran tipikal transaksi), maka total biayanya =

0.155381 ADA + 0.000043946 ADA/Byte * 200 Bytes = 0.1641702 ADA

### Kesimpulan

1. Dengan penerapan parameter nilai a di atas, walaupun transaksi - transaksi palsu berukuran sangat kecil, tetap akan merugikan penyerang atau aktor jahat karena harus membayar biaya minimal transaksi, terlebih jika transaksinya sampai ribuan.
2. Penerapan parameter b adalah untuk merefleksikan jumlah biaya aktual yang diperlukan dalam memproses sebuah transaksi. Misalnya transaksi yang berukuran besar, pasti membutuhkan ukuran memory yang besar juga, oleh karena itu transaksi ini harus lebih mahal daripada transaksi lain yang berukuran kecil.
3. Nilai a & b dapat di-adjust lagi ke depannya untuk lebih menyesuaikan dengan keadaan di masa depan.