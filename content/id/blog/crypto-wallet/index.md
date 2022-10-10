---
title: "

Segala Sesuatu tentang Crypto Wallet "
date: 2022-02-23T09:19:42+01:00
lastmod: 2022-02-23T09:19:42+01:00
draft: false
weight: 50
images: []
contributors: ["Andre Cahyadi"]
pinned: false
homepage: false

---

Dipublikasikan pada tanggal 22 Feb 2022 <br/>
Ditulis & disadur oleh andre cahyadi ([@prosperaan](https://forum.cardano.org/u/prosperaan)) <br/>
Untuk komunitas Cardano Indonesia <br/>

Referensi:
Post ini berasal dari hasil DYOR penulis sendiri dan beberapa sumber
Jika ada yang mau menyanggah atau kurang tepat, penulis siap merevisi :smiley:

> **Apa itu Crypto Wallet?**

Crypto Wallet adalah sebuah alat, tool, atau software wajib bagi para pengguna crypto untuk mengakses atau mentransaksikan aset crypto yang dimiliki.

> **Apakah Crypto Wallet menyimpan aset crypto?**

Crypto Wallet tidak menyimpan aset - aset crypto yang dimiliki oleh para pengguna.

> **Jika tidak disimpan di Crypto Wallet, dimana aset crypto kita disimpan?**

Aset crypto _**tercatat**_ di dalam entry _**public address**_ yang ada di blockchain. Setiap address menunjukkan aset apa saja yang dimiliki, total nilai, beserta historisnya.

Walaupun crypto wallet sedang error, dengan public address pengguna tetap dapat mengecek aset crypto yang dimiliki melalui blockchain explorer.

> **Apa itu non-custodial VS custodial wallet?**

- Non-custodial (tidak dalam penguasaan oleh suatu pihak / non-kustodial) wallet adalah wallet dimana pengguna memiliki dan menjaga sendiri seed phrase / recovery phrase / mnemonic dari wallet tersebut. Untuk transaksi jual beli aset crypto hanya bisa dilakukan melalui DEX (Decentralized Exchange)

- Custodial (dalam penguasaan suatu pihak / kustodial) wallet adalah wallet yang seed phrase / recovery phrase / mnemonic dimiliki dan dipegang oleh suatu pihak, pada umumnya CEX (Centralized Exchange) seperti Binance, Coinbase, Kraken, dan sejenisnya. Biasa digunakan oleh para pengguna crypto awal atau pengguna yang lebih memilih kemudahan ketika transaksi jual beli aset crypto

- Di non-custodial wallet, pengguna harus menjaga baik - baik seed phrase / recovery phrase / mnemonic dari wallet-nya sendiri. Sedangkan di custodial wallet, jika terjadi apa - apa dengan pihak lain itu misalnya CEX, maka semua aset crypto yang dimiliki pengguna terancam tidak bisa diakses atau bahkan hilang

> **Kenapa kita harus simpan seed phrase / recovery phrase / mnemonic baik - baik? Crypto wallet-nya juga sudah saya password, password-nya super panjang dan rumit lagi! Untuk apa lagi repot - repot simpan beginian?**

Public address lahir atau muncul dari _**proses enkripsi**_ dengan private keys yang berasal dari seed phrase / recovery phrase / mnemonic sesuai dengan blockchain masing - masing.

Dengan seed phrase / recovery phrase / mnemonic, setiap pengguna dapat mengakses aset crypto yang dimiliki di wallet manapun (tentunya sesuai blockchain masing - masing).

_**Sedangkan password yang diterapkan ke crypto wallet hanya mengenkripsi wallet secara lokal di browser/PC/laptop yang bersangkutan, namun tidak di browser/PC/laptop di tempat lain atau milik orang lain.
Jika seed phrase dicuri, walaupun pencuri tidak tahu password-nya, pencuri tetap dapat mengakses aset crypto dengan wallet lain, karena seed phrase → private keys → public address sehingga aset - aset crypto dapat ketahuan semuanya dan selanjutnya dicuri.**_

> **Terus, bagaimana cara menyimpan seed phrase / recovery phrase / mnemonic yang paling aman?**

Metode paling aman untuk menyimpan seed phrase / recovery phrase / mnemonic adalah dengan menuliskannya di atas kertas yang terpisah, kemudian menyimpannya di tempat - tempat yang terpisah juga.

Tidak disarankan menyimpan di PC, laptop, atau handphone, terlebih lagi jika memakai nama file yang mudah ditebak. Resikonya adalah, jika PC/laptop/handphone terkena exploit/hack/virus, maka hacker dapat dengan mudah menemukan file tersebut.

> **Kalau tidak salah, pernah dengar tentang Ledger, Trezor. Katanya lebih aman ya kalau pakai itu?**

Ledger, Trezor, Keepkey, Bitbox, dan sejenisnya disebut sebagai **hardware wallet**, atau sering disebut juga **cold wallet**.

Sedangkan wallet - wallet yang dapat diakses dengan mudah melalui web browser, browser extension, mobile apps, atau dalam bentuk instalasi software desktop disebut sebagai **software wallet**, atau sering disebut juga **hot wallet**.

> **Mengapa disebut cold wallet dan hot wallet?**

Dengan cold wallet, terdapat extra layer security bagi pengguna ketika ingin mengakses public address yang ada di setiap blockchain (misal BTC, ETH, ADA, dll), dimana **dibutuhkan interaksi fisik dari pengguna** dalam meng-input password, memilih blockchain yang ingin digunakan, serta menekan tombol - tombol yang ada di cold wallet ketika melakukan transaksi.

_**Perlu diingat! Cold wallet sendiri memiliki seed phrase / recovery phrase / mnemonic ketika proses konfigurasi pertama kali. Metode penyimpanan dari seed phrase / recovery phrase / mnemonic tentunya mengacu ke penjelasan sebelumnya di atas.**_

Untuk hot wallet, pengguna dapat dengan mudah meng-input seed phrase / recovery phrase / mnemonic atau wallet password kapanpun dan dimanapun. Pengguna **dapat bertransaksi secara cepat** tanpa perlu repot - repot interaksi fisik dengan sebuah alat.

> **Bagaimana jika cold wallet hilang atau rusak?**

Di setiap cold wallet sudah memiliki prosedur keamanan tersendiri, semisal jika password 3x salah, maka otomatis akan factory reset. Kembali lagi, asalkan keamanan seed phrase / recovery phrase / mnemonic dari cold wallet dapat dijaga, pencuri pun tidak dapat mengaksesnya atau pengguna dapat membeli cold wallet baru lalu mengaksesnya dengan seed phrase yang dimiliki dari cold wallet sebelumnya.

**General FAQ**

> **Saya pribadi tetap lebih prefer pake hot wallet deh, gak ribet, gak buang biaya juga mesti beli - beli cold wallet lagi. Ada saran untuk menjaga keamanannya?**

Beberapa saran keamanan:

1.  Selalu delete wallet begitu selesai digunakan (jika menggunakan wallet berupa browser extension). Contoh: Yoroi, Nami, CCVault, Typhon, GeroWallet dll<br/>
    _**Browser extension tidak akan hilang otomatis jika hanya clean browser’s histories, cookies, and caches ketika mau close browser**_

2.  Selalu clean browser’s histories, cookies, and caches ketika mau close browser (jika menggunakan wallet berupa web browser). Contoh: AdaLite, dll

3.  Pastikan jaringan handphone tidak terhubung sembarangan ke public network seperti public WiFi di tempat - tempat umum (cafe, restoran, hotel, bandara, mall, dll). Usahakan tetap menggunakan paket data milik pribadi (jika menggunakan wallet berupa mobile apps). Contoh: Yoroi, dll

4.  Pastikan PC/laptop yang digunakan memiliki security yang selalu terupdate (jika menggunakan wallet berupa instalasi software desktop). Contoh: Exodus, Guarda,dll
    Security dapat berupa windows defender atau antivirus yang selalu terupdate. Dapat juga menggunakan PC/laptop dengan sistem operasi di luar Windows seperti Linux dan MacOS.

> **Jika saya mau pindah ke wallet lain, apakah saya harus unstaking dulu di wallet saat ini?**

Kembali ke penjelasan di atas, semua historis transaksi tercatat di blockchain termasuk staking. Dengan seed phrase / recovery phrase / mnemonic, setiap pengguna dapat mengakses aset crypto yang dimiliki di wallet manapun.

Password wallet sendiri dapat dibuat, diubah, atau diganti - ganti sesuka hati, karena keamanan yang terutama tetap di seed phrase / recovery phrase / mnemonic.

Lebih lengkap mengenai staking ADA, lihat post [Serba Serbi Staking ADA](https://forum.cardano.org/t/serba-serbi-staking-ada/91437)

> **Apakah saat ini sudah bisa bertransaksi di DEX dengan menggunakan cold wallet?**

Hingga saat ini untuk bertransaksi di DEX atau yang menggunakan smart contract, masih belum bisa dengan cold wallet. Firmware dari cold wallet masih belum bisa signing Plutus script transactions. Masih menunggu pengembangan lebih lanjut dari para vendor cold wallet tersebut.

> **Mengapa ukuran transaksi di setiap wallet berbeda - beda, padahal jenis transaksi yang dilakukan selalu sama? Misalnya hanya send & receive ADA**

Setiap kali transaksi, semisal di ccvault, dapat terlihat susunan utxo untuk di-spent.
Jika di-cancel, lalu coba transaksi lagi, maka susunan utxo-nya bisa berubah/random query. (penjelasan UTXO, lihat post [UTXO vs Account/Balance vs EUTXO](https://forum.cardano.org/t/utxo-vs-account-balance-vs-eutxo/92617))
Seandainya lagi “kurang beruntung”, susunan utxo untuk di-spent jadi lebih banyak, yang menyebabkan ukuran transaksi menjadi lebih besar sehingga transaction fee jadi lebih besar. (penjelasan transaction fee, lihat post [Transaction Fee di Cardano](https://forum.cardano.org/t/transaction-fee-di-cardano/91839))

Berapapun banyak aset yang mau dikirim, tergantung ke susunan utxo untuk di-spent.

Perlu diingat, setiap crypto wallet dikembangkan oleh perusahaan atau tim developer yang berbeda - beda.

_Courtesy to bro Andrew P (SPO Kawan):_ Hal itu karena algoritma dari wallet yg dipakai, cara mengambil utxo-nya diprogram seperti apa

> **Ada wallet yang submit transaksinya lebih cepat ketimbang wallet lain, itu kenapa ya?**

_Courtesy to bro Andreas Sosilo:_
Untuk wallet seperti Nami dan CCVault tersedia fitur ‘set custom node’ sendiri untuk submit transaction eUTXO yang sudah dibentuk oleh wallet.
Jadi tidak perlu mengantri semua melalui Blockfrost (default) untuk submit transaksi (layanan API 3rd party, [https://blockfrost.io/](https://blockfrost.io/)).
Seandainya punya Daedalus, kita punya cardano-node sendiri yang bisa dipakai untuk submit transaction.

Setiap wallet developer pun sebenarnya dapat membuat cardano-node sendiri untuk submit transaction yang terjadi melalui wallet mereka (jika mereka mau), karena perlu resource yang lumayan besar.

\*Beberapa Channel YouTube dari komunitas yang juga menjelaskan cara penggunaan wallet: :smiley:

1.  Kawanua Cardano Pool: [https://www.youtube.com/channel/UCQrPaVOW90XpxZy2cOHzUVA](https://www.youtube.com/channel/UCQrPaVOW90XpxZy2cOHzUVA)
2.  Paman Kripto: [https://www.youtube.com/channel/UCs4-04wq4lhRMri3-ZL4MSw](https://www.youtube.com/channel/UCs4-04wq4lhRMri3-ZL4MSw)
