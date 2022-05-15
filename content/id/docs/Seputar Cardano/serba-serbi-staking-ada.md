---
title: "Serba Serbi Staking ADA"
linkTitle: "Serba Serbi Staking ADA"
hide_feedback: true
weight: 4
# description: ""
---

### **1. Pengantar**
* ADA tidak dikunci dan tetap dapat ditransaksikan kapan saja.
* ADA tetap berada di dompet dan tidak akan hilang selama staking.
* Tidak ada resiko slashing (holding ADA terkena pemotongan (slashed) oleh protokol sebagai hukuman karena tindakan merugikan yang dilakukan oleh SPO).
* Rewards staking otomatis ditambahkan ke akun staking (compounded).
* Biaya tetap (fixed cost) sebesar 340 ADA sesuai yang ditentukan oleh protokol dan margin (biaya di luar fixed cost yang diatur oleh SPO sendiri) diambil terlebih dahulu dari total rewards epoch untuk SPO. Selanjutnya, rewards didistribusikan ke semua delegator di SPO tersebut.

### **2. Informasi Epoch & Rewards**
* Durasi sebuah Epoch adalah 5 hari.
* Jadwal penghitungan Rewards (dengan contoh):

a. **Epoch 1 (sedang berjalan)** → Mulai staking di SPO

Biaya - biaya yang dikenakan saat pertama kali staking:
* Biaya jaringan: ± 0.17 ADA
* Biaya deposit Staking Key (Refundable): 2 ADA

b. **Epoch 2 (Hari 1-5)** → Proses stake snapshot, teregistrasi ke SPO.

c. **Epoch 3 (Hari 6-10)** → Proses pemilihan slot leaders dan block production. 

Stake ADA sudah aktif dan berkontribusi di SPO.

d. **Epoch 4 (Hari 11-15)** → Proses penghitungan rewards dari Epoch sebelumnya berdasarkan block production.

e. **Epoch 5 (Hari 16-20)** → Menerima rewards pertama dari Epoch 3.

f. **Epoch 6 (Hari 21-25)** → Menerima rewards dari Epoch 4.

g. **Epoch 7 (Hari 26-30)** → Menerima rewards dari Epoch 5. 

Rewards akan terus diterima di setiap Epoch selama SPO terus memproduksi block di 2 Epoch sebelumnya.

### **3. Mengubah Jumlah Staking (menambah/mengurangi)**
> *melanjutkan contoh di atas*

a. **Epoch 7 (sedang berjalan)**

Awal staking 100 ADA, kemudian menambahkan 50 ADA, menjadi 150 ADA.

b. **Epoch 8** → Masih terima rewards dari staking 100 ADA (Epoch 6)

Proses stake snapshot yang terbaru 150 ADA

c. **Epoch 9** → Masih terima rewards dari staking 100 ADA (Epoch 7)

Proses pemilihan slot leaders dan block production, stake ADA terbaru 150 ADA sudah aktif.

d. **Epoch 10** → Masih terima rewards dari staking 100 ADA (Epoch 8)

Proses penghitungan rewards dari Epoch sebelumnya berdasarkan block production.

e. **Epoch 11** → Sudah terima rewards dari staking 150 ADA (Epoch 9)

### **4. Mengubah SPO**
> *melanjutkan contoh di atas*

a. **Epoch 7 (sedang berjalan)**

Awal staking ke SPO ABC, kemudian pindah ke SPO XYZ.

b. **Epoch 8** → Masih terima rewards dari SPO ABC (Epoch 6)

Proses stake snapshot yang terbaru di SPO XYZ.

c. **Epoch 9** → Masih terima rewards dari SPO ABC (Epoch 7)

Proses pemilihan slot leaders dan block production, stake ADA sudah aktif di SPO XYZ.

d. **Epoch 10** → Masih terima rewards dari SPO ABC (Epoch 8)

Proses penghitungan rewards dari Epoch sebelumnya berdasarkan block production.

e. **Epoch 11** → Sudah terima rewards dari SPO XYZ (Epoch 9)

### **5. Withdraw Rewards & Stop Staking**

Ada 2 opsi yang dapat dilakukan ketika withdraw rewards:
* **Hanya Withdraw Rewards**

Akun staking tetap berhak mendapatkan rewards di Epoch berikutnya.
Rewards balance dipindah ke staking balance.

* **Stop Staking**

Deposit 2 ADA dikembalikan, akun staking ditarik registrasinya dan tidak berhak mendapatkan rewards lagi, termasuk dari Epoch terakhir ketika stop staking.
Rewards balance dan staking balance dipindah seluruhnya ke available balance.

### **6. Diagram Staking**

![Delegation Cycle](https://aws1.discourse-cdn.com/business4/uploads/cardano/original/3X/6/2/6291c37441ab5cbaca7c188f81e00481e1cf1f36.jpeg)