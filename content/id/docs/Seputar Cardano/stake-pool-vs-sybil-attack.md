---
title: "Stake Pool vs Sybil Attack"
linkTitle: "Stake Pool vs Sybil Attack"
hide_feedback: true
weight: 4
# description: ""
---

### **Latar Belakang**

Walaupun sudah diterapkan ***saturation point***, tidak menutup kemungkinan terhadap celah resiko yang lain, yakni stake pool besar membuat banyak stake pool baru atau *split pool* untuk mendapatkan lebih banyak rewards. Stake pool baru yang dibuat ini di-set dengan biaya operasional dan profit margin yang rendah, serta menjanjikan return yang tinggi sehingga menarik para delegator untuk mendelegasikan atau memindahkan delegasi assetnya.

Jika operator stake pool adalah aktor yang jahat, dengan banyaknya staked asset yang dimiliki, memungkinkan operator ini lebih sering terpilih sebagai slot leader dalam mekanisme konsensus sehingga terbuka kemungkinan untuk mengontrol ekosistem yang dapat merusak desentralisasi, seperti melakukan *double spending*, membuat fork baru, menyensor block, dll. Jenis serangan ini, dimana aktor jahat menggunakan banyak identitas (dalam hal ini banyak stake pool), disebut ***sybil attack***.

### **Solusi**

Solusi untuk mencegahnya adalah dengan proses ***pledging***. Ketika operator melakukan registrasi pool, operator wajib melakukan *pledging asset (personal stake)* ke dalam pool. Semakin besar pledging, dapat meningkatkan potensi rewards pool tersebut. Tidak ada patokan khusus (minimum atau maksimum) ukuran pledge yang diperlukan, namun operator yang memiliki pledge besar tentu akan lebih menarik bagi para delegator. Nilai pledge dapat diubah dalam setiap epoch dan pledge akan dikembalikan ke operator ketika pool ditutup.

Dalam hal aktor jahat ingin split dan membuat banyak pool, mereka juga wajib untuk split personal stake mereka, sehingga biaya untuk melakukan sybil attack semakin meningkat. Para operator pool lain yang "baik" dan "jujur", yang umumnya berfokus pada satu pool saja memiliki kesempatan lebih besar untuk meningkatkan pledge mereka sehingga menarik para delegator.

### **Fitur - fitur yang menarik para delegator terhadap sebuah stake pool**

* Saturation point (semakin rendah, semakin baik).
* Biaya operasional (semakin rendah, semakin baik).
* Profit margin (semakin rendah, semakin baik).
* Performance (semakin tinggi, semakin baik).
* Level pledge (semakin tinggi, semakin baik). Dengan pledging yang besar, operator dapat meminta profit margin yang lebih tinggi sambil tetap menjaga level ketertarikan di mata para delegator.