---
title: "Cardano360 - Apr 22"
linkTitle: "Cardano360 - Apr 22"
hide_feedback: true
weight: 4
# description: "" 
---

### **1. Mulai Epoch 335 minggu lalu, ukuran block sudah ditingkatkan dari 80 KB → 88 KB.**

### **2. Sebanyak 73% SPO sudah update versi node-nya menjadi 1.34.1, sisanya masih di versi 1.33.0.** 

Selanjutnya akan diluncurkan versi 1.35 untuk persiapan Vasil Hard Fork.

### **3. Persiapan Vasil Hard Fork**

* Implementasi dilakukan pada tgl 29 Jun 2022 (boundary dari epoch 347).
* Implementasi tidak akan langsung aktif semuanya di epoch 348, melainkan perlu waktu 1 epoch ke depan hingga semua perubahannya aktif. Tujuannya: untuk memberi waktu kepada para Dapps developer mengimplementasikan perubahan ke dalam Dapps-nya (reference scripts, inline datums, reference inputs).
* **Saat ini:**
   - Pengembangan coding sudah komplit.
   - Sedang dalam tahap Quality Assurance (QA) dan integrasi dengan beberapa exchange serta partner terkait dengan beragam code base dan produk yang saling terkoneksi. Harapannya, mereka dapat menyesuaikan pengembangan Dapps yang sedang berjalan dengan teknologi terbaru Cardano.
   - Setelah tahap QA dan integrasi selesai (biasa disebut tahapan SIT - system integration testing), barulah dimulai tahapan testing (biasa disebut UAT - user acceptance test), sebelum di-deploy ke production (live environment).

### **4. Ouroboros Leios → future development**

Penerapan Input Endorsers, mekanisme konsensus next generation.

Cara scaling Cardano hingga ke dekade berikutnya dimana proses transaksi akan dibuat secepat mungkin. 

Dari yang saat ini masih arsitektur dengan single block dimana cara kerjanya *"scooping out transactions out of mempool, forging a block, and sending to the peers"*, akan dibuat menjadi arsitektur dengan dua block:

a. Block pertama untuk menangani konsensus → akan memiliki reference/pointer ke block kedua

b. Block kedua untuk menangani transaksi → pemrosesan sangat cepat dimana cara kerjanya *"blocks will be created on an ad-hoc basis, signed & counter-signed, and will be flying around the newtork on second by second basis"*

**Kesimpulan**: daripada harus menunggu 20 detik saat ini untuk mengirim transaksi (Ouroboros Praos, setiap 20 detik proses pemilihan SPO sebagai slot leader untuk melakukan block mining), dengan Ouroboros Leios transaksi akan dikirim terus menerus sehingga L1 Cardano menjadi sangat cepat.