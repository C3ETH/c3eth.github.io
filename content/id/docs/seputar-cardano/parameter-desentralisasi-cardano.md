---
title: "Parameter Desentralisasi Cardano"
linkTitle: "Parameter Desentralisasi Cardano"
hide_feedback: true
weight: 4
# description: ""
---

### Parameter Penentu Desentralisasi dan Keberlangsungan Cardano

### 1. Parameter ‘k’ (jumlah stake pool yang diinginkan)

**Positif:** semakin tinggi nilai k, sistem semakin terdesentralisasi

**Negatif:** semakin tinggi nilai k,

* Mengurangi efisiensi karena biaya dan energi yang dibutuhkan semakin besar (karena SPO yang bermunculan akan jadi banyak sekali)
* Rewards yang menjadi lebih kecil bagi para SPO dan delegator

**Implementasi:**

a. Saat awal Shelley era, parameter ‘k’ = 150, membatasi ukuran pool di angka 210 juta ADA.

(150 * 210.000.000 ADA = ~31.500.000.000 ADA di sirkulasi saat itu)

b. Di Dec 2020, parameter ‘k’ berubah menjadi 500, batas ukuran pool di angka 64 juta ADA. (Ada lebih dari 100 stake pool yang *over saturated* ketika parameter ‘k’ ini diterapkan).

c. Di Mar 2021, rencananya parameter ‘k’ berubah lagi menjadi 1.000 dimana batas ukuran pool di angka 32 juta ADA. Namun, sampai saat ini belum diimplementasikan (masih berlaku batas ukuran pool di angka 64 juta ADA).

### 2. Ekspansi Moneter

Rewards untuk SPO dan delegator berasal dari dua sumber:

* **Biaya Transaksi**
* **Cadangan ADA**

**Cara Penghitungan Rewards:**

a. Dalam setiap epoch, biaya dari setiap transaksi dari semua block yang diproduksi, masuk ke dalam sebuah ‘virtual pot’.

b. Kemudian ada percentage ‘ρ’ dari cadangan ADA yang juga ditambahkan ke dalam ‘virtual pot’ itu.

c. Dari ‘virtual pot’ ini, ada percentage ‘τ’ yang dikirim ke treasury terlebih dahulu, baru kemudian sisanya dibagikan sebagai rewards.

Adanya mekanisme di atas untuk memastikan, di masa awal pengembangan Cardano ketika jumlah transaksi belum terlalu banyak, porsi rewards yang diambil dari cadangan ADA cukup besar. Hal ini untuk memberikan insentif kepada *early adopters*. Namun seiring waktu berjalan dengan banyaknya volume transaksi, rewards dari biaya transaksi akan mengkompensasi cadangan ADA yang semakin menipis.

Selain itu, mekanisme ini juga memastikan bahwa rewards yang tersedia jumlahnya dapat diprediksi dan berubah secara gradual. Tidak akan ada unsur mendadak seperti rewards di BTC dengan proses halving setiap 4 tahun sekali.

***2.1. Parameter ‘ρ’ (cadangan ADA yang ditambahkan ke dalam ‘virtual pot’)***

> ***Nilai ‘ρ’ yang ditentukan saat ini adalah sebesar 0.22%.***

**Positif:** semakin tinggi nilai ‘ρ’, semakin tinggi rewards bagi semua pengguna di tahap awal, treasury juga lebih cepat terisi

**Negatif:** semakin tinggi nilai ‘ρ’, semakin cepat cadangan ADA berkurang

**Implementasi:**

Perlu ada keseimbangan antara pemberian insentif kepada *early adopters* dan perspektif jangka panjang kepada semua stakeholders.

***2.2. Parameter ‘τ’ (ADA yang dikirim ke treasury terlebih dahulu dari ‘virtual pot’)***

> ***Nilai ‘τ’ yang ditentukan saat ini adalah sebesar 5%.***

Nantinya, treasury akan jauh lebih besar daripada rewards yang dibagikan. Mengapa demikian?

Ke depan, tidak masuk akal jika semua ADA hanya akan di-staking. Beberapa pasti ada yang tersimpan di exchange untuk bertransaksi dan digunakan juga dalam smart contracts.

ADA yang tidak di-staking ini akan memunculkan *unclaimed rewards* karena tidak dibagikan ke delegator (di luar dari parameter ‘τ’ yang 5% sudah diambil duluan sebelumnya).

*Unclaimed rewards* ini akan masuk ke treasury dan semakin meningkatkan saldo treasury. Dengan ini, maka tersedia dana yang cukup untuk membiayai pengembangan Cardano di masa depan.

### 3. Parameter ‘a0’ (pledge dari SPO terhadap rewards pool)

> ***Nilai ‘a0’ yang ditentukan saat ini adalah sebesar 0.3.***

**Positif:** semakin tinggi nilai ‘a0’, semakin tinggi pula rewards yang diterima dengan pledge besar.

Selain memberikan perlindungan ekstra terhadap *sybil attack*, juga dapat memberikan keuntungan kepada operator untuk meminta profit margin yang lebih tinggi sambil tetap menjaga level ketertarikan di mata para delegator karena rewards yang lebih besar.

**Negatif:** semakin tinggi nilai ‘a0’, akan men-*discourage* orang – orang untuk menjadi SPO, khususnya bagi yang tidak mampu menyediakan pledge besar karena dianggap tidak menguntungkan (rewards-nya lebih kecil).

### 4. Biaya Minimum yang diberikan untuk SPO

Ada biaya minimum atau *fixed cost* yang diterapkan oleh jaringan untuk diberikan kepada setiap SPO sebesar **340 ADA** dalam setiap epoch *(di luar dari profit margin yang diatur oleh SPO sendiri)*.

Ini adalah biaya minimum yang dipercayai cukup untuk membiayai kebutuhan server dalam menjalankan stake pool.

Adanya minimum cost ini untuk mencegah *race to the bottom* dimana para SPO mengklaim biaya operasional yang sangat rendah untuk menarik para delegator.

Hal ini mungkin menguntungkan para delegator dalam jangka pendek, namun dalam jangka panjang akan men-*discourage* pengelolaan stake pool secara professional yang dapat berdampak bagi keamanan jaringan nantinya.