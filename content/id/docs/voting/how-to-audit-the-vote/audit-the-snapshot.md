---
title: 'Audit Cuplikan'
date: 06-10-2020 08:48:23 +0000
lastmod: 06-10-2020 08:48:23 +0000
draft: false
images: []
weight: 30
---

## Parameter

Batas Waktu Pendaftaran: 15 Januari 2024 21:45:00 UTC

Kekuatan Suara Minimum: 450 ADA.

## Alat yang Diperlukan

### Sinkronisasi db

Petunjuk instalasi dapat ditemukan [di sini](https://github.com/IntersectMBO/cardano-db-sync/blob/master/doc/docker.md) .

Pastikan dbSync dan database PostgreSQL berjalan, dan database disinkronkan setelah pukul 21:45:00 UTC pada tanggal 20 Januari 2024.

Catatan: *JIKA dbSync Anda tidak disinkronkan setidaknya hingga tanggal ini, hasil dari menjalankan snapshot akan menjadi tidak akurat. Hal ini karena snapshot diambil pada saat rollback pada blockchain tidak mungkin mempengaruhi data snapshot, dan oleh karena itu, snapshot tersebut sepenuhnya dapat direproduksi dan stabil. Hal ini dijamin dengan menempatkan satu Epoch penuh antara batas waktu pendaftaran dan waktu paling awal pengambilan snapshot akhir.*

### Alat Snapshot Katalis

Alat snapshot berasal dari [sini](https://github.com/input-output-hk/catalyst-core) . Kloning repo lalu buat alat yang diperlukan.

### Membangun alat

##### alat_snapshot:

```linux

 cargo build -r -p voting_tools_rs

```

##### kotak peralatan katalis:

```linux

cargo build -r -p catalyst-toolbox

```

## Mereproduksi Cuplikan

Mengaudit Snapshot hanyalah mereproduksi snapshot langsung dari data blockchain dan membandingkannya dengan data snapshot yang dipublikasikan secara resmi.

### Mendapatkan nomor slot Batas Waktu Pendaftaran

Menyesuaikan `slot_no` dengan batas waktu pendaftaran.

Kueri database dbSync dengan:

```linux

select slot_no, time from block
    where slot_no is not null and time <= '2024-01-15 21:45:00'
    order by slot_no desc limit 1 ;

```

Hasilnya adalah:

```linux

113788796,2024-01-15 21:44:30.000000

```

Oleh karena itu `slot#` yang perlu ditargetkan oleh snapshot adalah: 113788796

### Menjalankan snapshot mentah

Bagian pertama dari snapshot mengumpulkan registrasi mentah dan informasi ADA yang dipertaruhkan dan memvalidasinya sesuai dengan [CIP-15](https://cips.cardano.org/cip/CIP-15/) dan [CIP-36](https://cips.cardano.org/cip/CIP-36/)

Catatan: *Delegasi ganda, sebagaimana ditentukan oleh CIP-36, tidak didukung. Ini akan terdeteksi sebagai registrasi yang tidak valid. Hanya pendaftaran yang berisi satu kunci pemungutan suara yang didukung dan valid.*

Jalankan (ganti kredensial Anda sebagaimana mestinya):

```linux

export USERNAME=<Your dbSync postgresql Username>
export PASSWORD=<Your dbSync postgresql Password>
export DBSYNC_POSTGRES="localhost:5432"
./target/release/snapshot_tool --db cexplorer --db-user $USERNAME --db-pass $password --db-host $DBSYNC_POSTGRES --out-file ./cexplorer-113788796.json --min-slot 0 --max-slot 113788796 --network-id mainnet

```

Ini akan menghasilkan tiga file:

- `cexplorer-113788796.json` &lt;- Data Cuplikan Mentah
- `cexplorer-113788796.unregistered.json` &lt;- Tidak terdaftar tetapi mempertaruhkan ADA.
- `cexplorer-113788796.errors.json` &lt;- Kesalahan atau Pendaftaran Kedaluwarsa.

### Memproses snapshot dengan parameter Fund 11

Ini memfilter pendaftaran untuk hak suara minimum yang diizinkan:

Berlari:

```linux

./target/release/catalyst-toolbox snapshot --snapshot cexplorer-113788796.json --min-stake-threshold 450000000 --slot-no 113788796 cexplorer-113788796.final.json

```

Ini menghasilkan snapshot akhir: `cexplorer-113788796.summary.json`
