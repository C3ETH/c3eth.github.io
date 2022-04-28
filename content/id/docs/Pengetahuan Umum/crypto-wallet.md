---
title: "Segala Sesuatu Tentang Crypto Wallet"
linkTitle: "Segala Sesuatu Tentang Crypto Wallet"
hide_feedback: true
weight: 4
# description: ""
---

### **Apa itu Crypto Wallet?**

Crypto Wallet adalah sebuah alat, tool, atau software wajib bagi para pengguna crypto untuk mengakses atau mentransaksikan aset crypto yang dimiliki.

### **Apakah Crypto Wallet menyimpan aset crypto?**

Crypto Wallet tidak menyimpan aset - aset crypto yang dimiliki oleh para pengguna. Crypto wallet bukanlah sebuah dompet yang menyimpan uang secara harafiah. 

### **Jika tidak disimpan di Crypto Wallet, dimana aset crypto kita disimpan?**

Aset crypto ***tercatat*** di dalam entry ***public address*** yang ada di blockchain. Setiap address menunjukkan aset apa saja yang dimiliki, total nilai, beserta historisnya.

Walaupun crypto wallet sedang error, dengan public address, pengguna tetap dapat mengecek aset crypto yang dimiliki melalui blockchain explorer.

### **Apa itu non-custodial VS custodial wallet?**

* Non-custodial (tidak dalam penguasaan oleh suatu pihak / non-kustodial) wallet adalah wallet dimana pengguna memiliki dan menjaga sendiri seed phrase / recovery phrase / mnemonic dari wallet tersebut. Untuk transaksi jual beli aset crypto hanya bisa dilakukan melalui DEX (Decentralized Exchange).

* Custodial (dalam penguasaan suatu pihak / kustodial) wallet adalah wallet yang seed phrase / recovery phrase / mnemonic dimiliki dan dipegang oleh suatu pihak, pada umumnya CEX (Centralized Exchange) seperti Binance, Coinbase, Kraken, dan sejenisnya. Biasa digunakan oleh para pengguna crypto awal atau pengguna yang lebih memilih kemudahan ketika transaksi jual beli aset crypto.

* Di non-custodial wallet, pengguna harus menjaga baik - baik seed phrase / recovery phrase / mnemonic dari wallet-nya sendiri. Sedangkan di custodial wallet, jika terjadi apa - apa dengan pihak lain itu misalnya CEX, maka semua aset crypto yang dimiliki pengguna terancam tidak bisa diakses lagi atau hilang.

### **Kenapa kita harus simpan seed phrase / recovery phrase / mnemonic baik - baik walaupun crypto wallet-nya juga sudah di-password dengan super panjang dan rumit?**

Public address lahir atau muncul dari ***proses enkripsi*** dengan private keys yang berasal dari seed phrase / recovery phrase / mnemonic sesuai dengan blockchain masing - masing.

Dengan seed phrase / recovery phrase / mnemonic, setiap pengguna dapat mengakses aset crypto yang dimiliki di wallet manapun (tentunya sesuai blockchain masing - masing).

***Sedangkan password yang diterapkan ke crypto wallet hanya mengenkripsi wallet secara lokal di browser/PC/laptop yang bersangkutan, namun tidak di browser/PC/laptop di tempat lain atau milik orang lain.***

***Jika seed phrase dicuri, walaupun pencuri tidak tahu password-nya, pencuri tetap dapat mengakses aset crypto dengan wallet lain, karena seed phrase → private keys → public address sehingga aset - aset crypto dapat ketahuan semuanya dan selanjutnya dicuri.***

### **Terus, bagaimana cara menyimpan seed phrase / recovery phrase / mnemonic yang paling aman?**

Metode paling aman untuk menyimpan seed phrase / recovery phrase / mnemonic adalah dengan menuliskannya di atas kertas yang terpisah, kemudian menyimpannya di tempat - tempat yang terpisah juga.

Tidak disarankan menyimpan di PC, laptop, atau handphone, terlebih lagi jika memakai nama file yang mudah ditebak. Resikonya adalah, jika PC/laptop/handphone terkena exploit/hack/virus, maka hacker dapat dengan mudah menemukan file tersebut.

### **Kalau tidak salah, pernah dengar tentang Ledger, Trezor. Katanya lebih aman ya kalau pakai itu?**

Ledger, Trezor, Keepkey, Bitbox, dan sejenisnya disebut sebagai **hardware wallet**, atau sering disebut juga **cold wallet**.

Sedangkan wallet - wallet yang dapat diakses dengan mudah melalui web browser, browser extension, mobile apps, atau dalam bentuk instalasi software desktop disebut sebagai **software wallet**, atau sering disebut juga **hot wallet**.

### **Mengapa disebut cold wallet dan hot wallet?**

Dengan cold wallet, terdapat extra layer security bagi pengguna ketika ingin mengakses public address yang ada di setiap blockchain (misal BTC, ETH, ADA, dll), dimana **dibutuhkan interaksi fisik dari pengguna** dalam meng-input password, memilih blockchain yang ingin digunakan, serta menekan tombol - tombol yang ada di cold wallet ketika melakukan transaksi.

***Perlu diingat! Cold wallet sendiri memiliki seed phrase / recovery phrase / mnemonic ketika proses konfigurasi pertama kali. Metode penyimpanan dari seed phrase / recovery phrase / mnemonic tentunya mengacu ke penjelasan sebelumnya di atas.***

Untuk hot wallet, pengguna dapat dengan mudah meng-input seed phrase / recovery phrase / mnemonic atau wallet password kapanpun dan dimanapun. Pengguna **dapat bertransaksi secara cepat** tanpa perlu repot - repot interaksi fisik dengan sebuah alat.

### **Bagaimana jika cold wallet hilang atau rusak?**

Di setiap cold wallet sudah memiliki prosedur keamanan tersendiri, semisal jika password 3x salah, maka otomatis akan factory reset. Kembali lagi, asalkan keamanan seed phrase / recovery phrase / mnemonic dari cold wallet dapat dijaga, pencuri pun tidak dapat mengaksesnya. Pengguna juga dapat membeli cold wallet baru lalu mengaksesnya dengan seed phrase yang dimiliki dari cold wallet sebelumnya.

### **Saya pribadi tetap lebih memilih memakai hot wallet, tidak repot, dan tidak buang biaya ekstra juga. Ada saran untuk menjaga keamanannya?**

Beberapa saran keamanan:
* Selalu delete wallet begitu selesai digunakan (jika menggunakan wallet berupa browser extension). Contoh: Yoroi, Nami, CCVault, Typhon, GeroWallet dll. 
***Browser extension tidak akan hilang otomatis jika hanya clean browser’s histories, cookies, and caches ketika mau close browser.***

* Selalu clean browser’s histories, cookies, and caches ketika mau close browser (jika menggunakan wallet berupa web browser). Contoh: AdaLite, dll.

* Pastikan jaringan handphone tidak terhubung sembarangan ke public network seperti public WiFi di tempat - tempat umum (cafe, restoran, hotel, bandara, mall, dll). Usahakan tetap menggunakan paket data milik pribadi (jika menggunakan wallet berupa mobile apps). Contoh: Yoroi, dll.

* Pastikan PC/laptop yang digunakan memiliki security yang selalu terupdate (jika menggunakan wallet berupa instalasi software desktop). Contoh: Exodus, Guarda,dll
Security dapat berupa windows defender atau antivirus yang selalu terupdate. Dapat juga menggunakan PC/laptop dengan sistem operasi di luar Windows seperti Linux dan MacOS.

### **Jika saya mau pindah ke wallet lain, apakah saya harus unstaking ADA dulu di wallet saat ini?**

Kembali ke penjelasan di atas, semua historis transaksi tercatat di blockchain termasuk staking. Dengan seed phrase / recovery phrase / mnemonic, setiap pengguna dapat mengakses aset crypto yang dimiliki di wallet manapun.

Password wallet sendiri dapat dibuat, diubah, atau diganti - ganti sesuka hati, karena keamanan yang terutama tetap di seed phrase / recovery phrase / mnemonic.