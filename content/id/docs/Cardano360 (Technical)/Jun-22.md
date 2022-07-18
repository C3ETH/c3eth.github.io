---
title: "Cardano360 - Jun 22"
linkTitle: "Cardano360 - Jun 22"
hide_feedback: true
weight: 4
# description: "" 
---

Segala sesuatu tentang persiapan Vasil Hard Fork yang rencananya akan dilaksanakan di akhir Jul 2022. Untuk ringkasan lengkapnya ada di artikel ini (https://www.essentialcardano.io/article/cardanos-approaching-vasil-upgrade-what-to-expect) dan sebenarnya semua teknologi ini sudah diumumkan dari awal 2022 dan di beberapa Monthly Update sebelumnya.

Berikut ringkasannya dalam bahasa Indonesia:

* Diffusion Pipelining: meningkatkan ruang waktu untuk proses propagasi block di jaringan, jadi dibuat overlapping antara produksi block & mengirim block.

    1) Standard keamananan dari Ouroboros:

        a. produksi block: 1 detik

        b. kirim block di jaringan: 5 detik

    2) Karena ukuran block dan Plutus memory unit diperbesar untuk bisa menampung dan memproses lebih banyak transaksi smart contract, ***oleh karena itu proses produksi dan pengiriman block di jaringan dibuat lebih singkat waktunya untuk mengkompensasi ukuran block & Plutus memory unit yang membesar tersebut, tanpa mengorbankan standard keamanan Ouroboros.***

* Script Enhancements & Plutus Versi 2: 

    1) Reference Inputs (CIP-31)

    2) Inline Datums (CIP-32)

    3) Reference Scripts (CIP-33)

    4) Datums and Redeemers

* Enhancement lainnya:

    1) Script Collateral Adjustments → Dapp developer bisa menspesifikasikan ‘change address’ dalam script collateral Dapps-nya. 
    
         Jadi ketika fase 2 berstatus invalid ***(yang sangat jarang terjadi)***, user tidak akan kehilangan isi fund-nya, melainkan hanya collateral saja yang diambil, sisanya dikembalikan ke change address yang sudah ditentukan.

    2) Optimasi proses VRF ketika validasi block (untuk para SPO): dari yang awalnya butuh sebanyak dua transaksi VRF, nantinya hanya perlu satu kali saja.