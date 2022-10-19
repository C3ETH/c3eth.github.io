---
title: Why use Cardano?
description: Why use Cardano?.
lead: ''
date: '2020-10-06 08:48:23 +0000'
lastmod: '2020-10-06 08:48:23 +0000'
draft: 'false'
images: []
---

[Cardano](https://cardano.org/) adalah proyek blockchain [proof-of-stake](https://docs.cardano.org/new-to-cardano/proof-of-stake) open source yang dimulai pada tahun 2015 untuk mengatasi tantangan blockchain yang ada dalam desain dan pengembangan mata uang kripto. Ini bertujuan untuk menyediakan ekosistem yang lebih seimbang dan berkelanjutan yang lebih baik untuk kebutuhan penggunanya serta sistem lain yang mencari integrasi.

Generasi pertama blockchain (seperti Bitcoin) menawarkan buku besar terdesentralisasi untuk pengiriman mata uang kripto yang aman. Namun, blockchain semacam itu tidak menyediakan lingkungan fungsional untuk penyelesaian kesepakatan yang kompleks dan pengembangan aplikasi terdesentralisasi (DApp). Seiring berkembangnya teknologi blockchain, generasi kedua (seperti Ethereum) memberikan solusi yang lebih baik untuk menulis dan mengeksekusi kontrak pintar, pengembangan aplikasi, dan pembuatan berbagai jenis token. Di sisi lain, blockchain generasi kedua sering menghadapi masalah dalam hal skalabilitas.

Cardano is conceived as the third-generation blockchain as it combines the properties of the prior generations and evolves to meet all the arising needs of users. When comparing blockchain properties, many aspects should be considered. Thus, the best solution must ensure the highest security, scalability (transaction throughput, data scale, network bandwidth), and functionality (besides transaction processing, the blockchain should provide all means for business deal settlement). Moreover, it is important to ensure that blockchain technology is constantly developing in terms of sustainability and is interoperable with other blockchains and financial institutions.

To address these needs, Cardano focuses on such core concepts as:

- **Skalabilitas** — memastikan bahwa jaringan Cardano mampu memproses peningkatan jumlah transaksi seiring dengan meningkatnya permintaan pengguna. Skalabilitas juga memberikan kemampuan bandwidth yang lebih tinggi untuk memungkinkan transaksi membawa sejumlah besar data pendukung yang dapat dengan mudah dikelola dalam jaringan. Untuk kebutuhan ini, Cardano menerapkan berbagai teknik (seperti kompresi data misalnya) dan bekerja untuk memperkenalkan [Hydra](https://iohk.io/en/research/library/papers/hydra-fast-isomorphic-state-channels/), yang akan mengaktifkan beberapa fungsi side-chains.
- **Interoperability** — ensures the most multi-functional environment for financial, business, or commercial operations by enabling users to interact not only with one type of currency, but with multiple currencies across various blockchains. Moreover, interoperability with centralized banking entities is as important to grant legitimacy and convenience of use. Cardano is being developed to support cross-chain transfers, multiple token types, and commonly used smart contracts languages.
- **Keberlanjutan** — merancang blockchain proof-of-stake berarti sangat penting untuk memastikan bahwa sistem itu mandiri. Untuk mendorong pertumbuhan dan kedewasaan dengan cara yang benar-benar terdesentralisasi, Cardano dibangun untuk memungkinkan komunitas mempertahankan perkembangannya yang berkelanjutan dengan berpartisipasi, mengusulkan, dan menerapkan perbaikan sistem. Untuk memastikan keberlanjutan, sistem perbendaharaan dikendalikan oleh komunitas dan diisi ulang terus-menerus dari sumber potensial seperti koin yang baru dicetak ditahan sebagai pendanaan, persentase hadiah stake pool, dan biaya transaksi.

### Cardano advantages

- **Academic research** — formal methods, such as mathematical specifications, property-based tests, and proofs, are the best way to deliver high assurance software systems and give confidence to users for the management of digital funds. Cardano has been built using formal methods to achieve strong guarantees on the functional correctness of core components of the system. All of the research and technical specifications that underpin Cardano are publicly available, and all Cardano development activity is published online.
- **System design** — Cardano is written in Haskell, a secure functional programming language that encourages building a system using pure functions, which leads to a design where components are conveniently testable in isolation. Furthermore, advanced features of Haskell enable us to employ a whole range of powerful methods for ensuring correctness of the code, such as basing the implementation on formal and executable specifications, extensive property-based testing, and running tests in simulation.
- **Security** — [Ouroboros](https://iohk.io/en/blog/posts/2020/06/23/the-ouroboros-path-to-decentralization/) (the Cardano proof-of-stake protocol) establishes rigorous security guarantees; it was delivered with several peer-reviewed papers presented in top-tier conferences and publications in the area of cybersecurity and cryptography.
- **Konsumsi daya** — Cardano adalah blockchain proof-of-stake. Berbeda dengan blockchain proof-of-work, [Cardano membutuhkan lebih sedikit energi](https://iohk.io/en/blog/posts/2021/08/17/why-they-re-calling-cardano-the-green-blockchain/) dan daya komputasi. Jaringan Bitcoin tumbuh melalui komputer yang melakukan komputasi yang semakin intensif energi – proof-of-work – yang tidak berkelanjutan dalam jangka panjang. Universitas Cambridge memiliki alat online yang menunjukkan [bahwa komputer yang menjalankan Bitcoin](https://ccaf.io/cbeci/index) telah mengkonsumsi energi dua kali lebih banyak dari negara Swiss setiap tahunnya.
- **Pemutakhiran (Upgrade) yang mulus** — secara tradisional, pemutakhiran blockchain menggunakan hard fork. Saat melakukan hard fork, protokol saat ini akan berhenti beroperasi, aturan dan perubahan baru akan diterapkan, dan rantai akan dimulai kembali – dengan riwayat sebelumnya dihapus. Cardano menangani hard fork secara berbeda. Alih-alih menerapkan perubahan radikal, [teknologi kombinator hard-fork Cardano](https://iohk.io/en/blog/posts/2020/05/07/combinator-makes-easy-work-of-shelley-hard-fork/) memastikan transisi yang mulus ke protokol baru sembari menyimpan riwayat blok sebelumnya dan tidak menyebabkan gangguan apa pun bagi pengguna akhir.
- **Desentralisasi** — Cardano dikelola oleh hampir 3.000 stake pool terdistribusi yang dioperasikan oleh komunitas. Semua blok dan transaksi divalidasi oleh peserta jaringan tanpa ketergantungan pada otoritas terpusat.
- **Functional environment for business use cases** — Cardano is establishing a foundation for global, decentralized finance to develop a range of DApps that can run using functional and domain-specific smart contracts, providing multi-asset tokens for any needs.

### Cardano development themes

[Cardano’s development journey](https://roadmap.cardano.org/en/) has been split into five main themes focusing on such core functionalities as:

- Byron — pendirian fondasi
- Shelley — decentralization
- Goguen — smart contracts
- Basho — scalability
- Voltaire — tata kelola

Each theme is centered around a set of functionalities that are being delivered across multiple code releases. While these development streams are delivered sequentially, the work for each happens in parallel – with research, prototyping, and development often in progress all at once across the different stages. Let’s take a closer look at these development themes.

**Byron**

Byron menetapkan dasar untuk pengembangan Cardano yang memungkinkan pengguna untuk membeli dan menjual ADA di jaringan blockchain proof-of-stake. Awalnya, buku besar Cardano didirikan sebagai jaringan federasi, di mana produksi blok dan validasi transaksi dikelola oleh Input Output Global (perusahaan yang mengembangkan teknologi Cardano) dan [Emurgo](https://emurgo.io/) (perusahaan yang mendorong adopsi komersial Cardano). Byron melihat pengiriman dompet [Daedalus](https://docs.cardano.org/cardano-components/daedalus-wallet) dan Yoroi, dan juga memberi pengguna Block Explorer – alat yang dirancang khusus untuk menjelajahi blockchain.

**Shelley**

Tema pengembangan Shelley memperkenalkan buku besar terdesentralisasi yang menciptakan sistem ekonomi yang sama sekali baru, yang mendorong pertumbuhan jaringan dan pengoptimalan secara bertahap. Shelley berevolusi dari pemeliharaan jaringan gabungan Byron, dengan semakin banyak blok yang diproduksi oleh komunitas operator stake pool terdistribusi. Tema ini berfokus pada sejumlah langkah penting yang memastikan peningkatan pengalaman pengguna dalam hal operasi stake pool, preferensi delegasi, dan insentif. Sebagai jaringan proof-of-stake, Cardano Shelley memperkenalkan Incentivized Testnet (ITN) yang membuktikan bahwa blockchain dapat berkelanjutan dalam jangka panjang dengan mengandalkan secara eksklusif pada kumpulan yang dikelola komunitas.

**Goguen**

Pengembangan Goguen berfokus pada pembentukan sistem global, keuangan, dan multi-fungsi untuk membangun aplikasi terdesentralisasi (DApp), dukungan kontrak pintar, dan penerbitan token khusus. Goguen adalah blok bangunan utama untuk membangun platform serbaguna untuk membangun solusi seputar domain aplikasi seperti rantai pasokan, pelacakan dan penelusuran, keuangan, catatan medis, identitas pemungutan suara, pendaftaran properti, pembayaran P2P, dan sebagainya.

**Basho**

Basho akan fokus pada optimasi Cardano dalam hal meningkatkan skalabilitas dan interoperabilitas jaringan. Sementara tahap pengembangan lainnya berfokus pada desentralisasi dan fungsionalitas yang baru, Basho adalah tentang meningkatkan kinerja dasar jaringan Cardano untuk lebih mendukung pertumbuhan dan adopsi aplikasi dengan volume transaksi tinggi.

**Voltaire**

Decentralized governance and decision making lie at the heart of Voltaire granting the Cardano community an ability to vote on network development updates, technical improvements, and project funding. For the Cardano network to become truly decentralized, it requires not only the distributed infrastructure introduced during Shelley but also the capacity to be maintained and improved over time in a decentralized way.

**Related Topics:**

- [Understanding Cardano](https://www.youtube.com/watch?v=Ja9D0kpksxw) (Cardano whiteboard by Charles Hoskinson)
- [Cardano design rationale](https://docs.cardano.org/explore-cardano/cardano-design-rationale)
- [Detailed Cardano roadmap](https://roadmap.cardano.org/en/)
- [Development status updates](https://www.essentialcardano.io/development-update)
