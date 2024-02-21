---
title: "Zero-knowledge demystified"
date: 06-10-2020 08:48:23 +0000
lastmod: 06-10-2020 08:48:23 +0000
draft: false
images: []
---

## Pelajari bagaimana Midnight melindungi data pengguna menggunakan teknologi tanpa pengetahuan

Pelanggaran data yang sering terjadi telah mengungkapkan kerentanan besar dalam perlindungan data, baik bagi individu maupun organisasi. Teknologi zero-knowledge (ZK) memberikan solusi hebat, memprioritaskan pemberdayaan pengguna dan perlindungan data sekaligus menghilangkan kendali perantara. Namun, menguasai kompleksitas blockchain dan kriptografi sambil mematuhi peraturan setempat masih merupakan tantangan.

Midnight menyediakan alat untuk membangun DApps yang memberikan perlindungan data bagi pengguna dan pengusaha, memberikan keseimbangan antara pengungkapan data dan perlindungan hukum. Fitur Midnight memberdayakan pengguna untuk melakukan transaksi komersial dengan risiko minimal penyalahgunaan data, mendorong kepatuhan terhadap undang-undang perlindungan data, dan melindungi data pengguna dari kebocoran.

Midnight mencapai hal ini dengan memanfaatkan teknologi ZK. Baca terus untuk mengetahui lebih lanjut tentang ZK – teknologi dasar yang mendorong kemampuan perlindungan data Midnight.

## Apa itu teknologi tanpa pengetahuan?

ZK adalah metode memverifikasi informasi tanpa benar-benar mengungkapkannya. Midnight menggunakan ZK untuk meningkatkan privasi, keamanan, dan skalabilitas operasi blockchain dengan mengaktifkan transaksi rahasia dan kontrak pintar, serta mengamankan manajemen data.

ZK melibatkan dua pihak: pembukti dan pemverifikasi. Pembukti menyimpan informasi rahasia yang tidak ingin mereka ungkapkan, namun mereka dapat memberikan bukti kepada pemeriksa bahwa pernyataan tertentu mengenai informasi ini adalah benar tanpa membagikan informasi sebenarnya. Untuk ini, sistem menghasilkan bukti tanpa pengetahuan (ZKP) sebagai validasi.

### Contoh penggunaan ZKP

Bayangkan sebuah situasi di mana Anda perlu membuktikan kondisi medis yang Anda miliki, tanpa mengungkapkan rincian pribadi apa pun. Situasi ini dapat muncul dalam skenario seperti mengajukan permohonan asuransi atau mengungkapkan informasi kesehatan kepada pemberi kerja. Dengan ZKP, Anda dapat menghasilkan bukti bahwa kondisi medis Anda valid, tanpa membagikan informasi pribadi apa pun.

Misalnya, Anda mengajukan permohonan asuransi kesehatan. Perusahaan asuransi perlu memverifikasi kondisi medis Anda yang sudah ada sebelumnya untuk menentukan pertanggungan Anda. Alih-alih mengungkap seluruh riwayat kesehatan Anda, aplikasi akan menggunakan ZKP untuk membuat bukti yang hanya mengonfirmasi keberadaan kondisi tersebut. Bukti ini kemudian dibagikan kepada perusahaan asuransi, yang dapat memvalidasi keasliannya tanpa mengetahui rincian pasti penyakit Anda.

Dengan cara ini, ZKP memastikan bahwa Anda dapat membuktikan kebenaran tentang kondisi medis Anda tanpa mengorbankan privasi Anda. Prinsip yang sama berlaku untuk berbagai situasi lain di mana Anda perlu membuktikan sesuatu tanpa mengungkapkan informasi pribadi.

## Bukti tanpa pengetahuan dijelaskan

Ada berbagai jenis ZKP, yang berbeda dalam kinerja dan asumsi kriptografi. Argumen pengetahuan non-interaktif ringkas tanpa pengetahuan (ZK Snarks) dan argumen pengetahuan transparan ringkas (ZK Starks) adalah beberapa sistem pembuktian paling populer di blockchain.

ZK Snarks adalah bukti yang efisien dalam hal ukuran dan waktu verifikasi. Mereka dapat menyembunyikan data yang digunakan untuk menghasilkan bukti, sehingga memberikan efisiensi, jaminan keamanan yang kuat, dan perlindungan data. ZK Starks hanya memerlukan fungsi hash tepercaya selama penyiapan, yang menawarkan manfaat dalam hal keamanan dan waktu berjalan pembuktian, namun dapat mengakibatkan overhead kinerja sehubungan dengan ukuran bukti dan pemverifikasi.

Midnight menggunakan ZK Snarks sebagai sistem pembuktian yang paling menarik bagi pemverifikasi karena kombinasi efisiensi dan pengaturan keamanan yang kuat.

## Bagaimana cara kerja ZK Snarks?

Karena ZK Snarks adalah argumen pengetahuan non-interaktif, mereka mengizinkan pembukti untuk menunjukkan kebenaran suatu pernyataan tanpa memerlukan interaksi berkelanjutan dengan pemverifikasi. Hal ini memungkinkan pembukti menghasilkan bukti ringkas yang dapat divalidasi secara independen oleh verifikator, tanpa mengungkapkan informasi sensitif apa pun. Pembuatan dan verifikasi pembuktian melibatkan operasi dan struktur matematika yang rumit, seperti pasangan kurva elips dan teknik aljabar tingkat lanjut.

Proses tingkat tinggi terlihat sebagai berikut:

<image src="https://cdn.sanity.io/images/330xhmya/production/403fc22c1ca16fc018a0509fb0b35025cd486dcb-1920x1080.jpg?w=3840"></image><br>

Berikut penjelasan lebih detail cara kerja ZK Snarks:

- **Fase pengaturan** . Mirip dengan protokol kriptografi lainnya, ZK Snarks memulai dengan fase penyiapan dengan menetapkan parameter tertentu, misalnya pembuatan kunci pembuktian dan verifikasi publik. Parameter-parameter ini memainkan peranan penting dalam keamanan dan berfungsinya skema.
- **Komponen-komponen kunci** . ZK Snarks melibatkan beberapa komponen utama, termasuk pasangan kurva elips (struktur matematika yang digunakan dalam kriptografi untuk mengamankan data) dan fungsi hash khusus (alat yang mengubah data menjadi nilai berukuran tetap, seperti sidik jari informasi digital yang unik). Komponen-komponen ini berkontribusi pada penciptaan bukti yang ringkas dan sangat efisien. Anggap saja itu sebagai potongan puzzle yang berpadu sempurna untuk menghasilkan bukti yang singkat dan efisien.
- **Konstruksi sirkuit** . Bayangkan membangun jalan dengan rambu dan jalur yang berbeda. Konstruksi rangkaian seperti peta jalan dengan representasi matematis dari masalah yang ingin diselesaikan diterjemahkan ke dalam rangkaian aritmatika. Rangkaian ini mencakup berbagai operasi dan batasan yang berkaitan dengan pernyataan yang dibuktikan.
- **Generasi saksi dan bukti** . Pepatah yang memiliki rahasia (“saksi”) terkait pernyataan tersebut, membangun bukti ZK Snarks. Ini melibatkan serangkaian operasi kriptografi yang dikombinasikan dengan batasan rangkaian dan parameter publik dari fase penyiapan. Hasilnya adalah bukti yang kompak, membuktikan kebenaran pernyataan tersebut tanpa mengungkapkan rincian apapun tentang saksi.
- **Verifikasi** . Verifikator, yang dilengkapi dengan bukti, parameter publik, dan pernyataan asli, kini dapat memverifikasi validitas bukti secara efisien. Proses ini melibatkan perhitungan matematis yang memastikan kebenaran bukti, memastikan bahwa pembukti memang memiliki saksi yang benar untuk pernyataan tersebut.

## Apa kelebihan ZK Snarks di Midnight?

Penggunaan ZK Snarks di Midnight memberi pengguna manfaat berikut:

<image src="https://cdn.sanity.io/images/330xhmya/production/772f3105ddaa86e1f9644ea209f424e766890c4b-1920x1080.jpg?w=3840"></image><br>

## Kasus penggunaan

ZK Snarks mendukung kasus penggunaan yang berbeda (tidak lengkap):

#### Perlindungan data

**Kontrak dan pembayaran pintar rahasia**

- eksekusi kontrak pintar rahasia yang aman
- kepatuhan terhadap aturan yang telah ditentukan sambil menjaga informasi sensitif
- integrasi pembayaran rahasia yang mulus untuk multi-aset dan NFT dengan kontrak pintar

**Manajemen data**

- validasi data pengguna tanpa membagikannya
- melindungi identitas pengguna dan keaslian data

**Pemungutan suara**

- proses pemungutan suara yang aman dan rahasia
- kelayakan yang terbukti tanpa mengungkapkan identitas atau preferensi
- integritas tata kelola, mengurangi risiko pemaksaan atau manipulasi

#### Skalabilitas

**Oracle Blockchain**

- mengurangi biaya verifikasi dengan menggabungkan data dari berbagai sumber
- penyimpanan data on-chain yang dioptimalkan dengan hanya menyertakan nilai dan bukti gabungan

**Klien ringan**

- transaksi terverifikasi dan kebenaran data tanpa mengunduh seluruh blockchain
- peningkatan efisiensi dan skalabilitas
- integritas data dengan pengurangan overhead komputasi

#### Interoperabilitas

**Rantai samping**

- interoperabilitas antar rantai tanpa mengorbankan keamanan
- transaksi lintas rantai yang mulus melalui konfigurasi pegging rantai
- satu rantai dapat bertindak sebagai klien ringan untuk memverifikasi transaksi di rantai lainnya
- meningkatkan skalabilitas dan efisiensi dengan menghindari verifikasi penuh seluruh rantai

## Bagaimana Midnight mengimplementasikan ZK Snarks

Midnight mengimplementasikan ZK Snarks dalam protokol transaksi Zswap dan Kachina. Protokol ini menjaga data rahasia dan metode pengembangan kontrak cerdas yang memfasilitasi konkurensi dan keamanan untuk transaksi yang melibatkan aset dan pertukaran nilai.
