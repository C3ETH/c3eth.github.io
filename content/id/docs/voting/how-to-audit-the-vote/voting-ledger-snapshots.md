---
title: 'Cuplikan Buku Besar Pemungutan Suara'
date: 06-10-2020 08:48:23 +0000
lastmod: 06-10-2020 08:48:23 +0000
draft: false
images: []
weight: 10
---

Dengan cuplikan buku besar pemungutan suara yang diterbitkan setiap jam, siapa pun dapat memverifikasi bahwa suara yang tercatat tetap tidak berubah sepanjang siklus pemungutan suara.

Tim Catalyst menyediakan akses ke snapshot rutin dari status blockchain. Snapshot ini secara otomatis diambil dengan interval 1 jam dan diunggah ke sistem penyimpanan persisten dalam bentuk arsip. Saat ini, arsip-arsip ini dapat ditemukan dengan [menanyakan API Arsip](https://archiver.projectcatalyst.io/api/v1/archives/) . Anda dapat mempelajari lebih lanjut tentang titik akhir yang tersedia dengan memeriksa [dokumentasi Swagger](https://archiver.projectcatalyst.io/swagger/index.html)

Untuk menunjukkan contoh cara berinteraksi dengan API dan mengunduh arsip, kita akan menggunakan alat curl dan jq CLI. Pertama, kita harus membuat daftar arsip yang tersedia:

```json

> curl -s https://archiver.projectcatalyst.io/api/v1/archives/ | jq
{
  "next": "",
  "archives": [
    {
      "id": "019fd6b2-c36b-419f-8a2d-ebf06b91a762",
      "size": 364315029,
      "compression": "zstd",
      "packaging": "tar",
      "metadata": {
        "epoch": "1952",
        "fund": "fund10",
        "slot": "14",
        "timestamp": "2023-08-29T18:00:59Z"
      }
    },
    {
      "id": "64c56031-56ab-43dd-a1ca-138a85298d2b",
      "size": 372405154,
      "compression": "zstd",
      "packaging": "tar",
      "metadata": {
        "epoch": "1954",
        "fund": "fund10",
        "slot": "17",
        "timestamp": "2023-08-29T20:01:09Z"
      }
    },
    {
      "id": "ad16b160-0cc2-4252-ae61-f468c95cbf29",
      "size": 364453534,
      "compression": "zstd",
      "packaging": "tar",
      "metadata": {
        "epoch": "1953",
        "fund": "fund10",
        "slot": "23",
        "timestamp": "2023-08-29T19:01:34Z"
      }
    }
  ]
}

```

Pada respon di atas, hanya ada tiga arsip yang tersedia. Jika jumlah hasil melebihi 50, maka secara otomatis akan diberi nomor halaman. Hal ini dibuktikan dengan ditetapkannya bidang berikutnya. Untuk mengambil arsip selanjutnya, Anda akan memanggil titik akhir yang sama dan menambahkan ?next={VALUE} dengan VALUE adalah nilai bidang berikutnya. Untuk mengulangi semua arsip yang tersedia, Anda dapat mengulangi proses ini hingga kolom berikutnya kosong.

Untuk contoh ini, kita akan memilih untuk mengambil arsip pertama dalam daftar. Untuk mendapatkan link download arsipnya, kita bisa menjalankan:

```json

> curl -q https://archiver.projectcatalyst.io/api/v1/archives/019fd6b2-c36b-419f-8a2d-ebf06b91a762/download | jq
{
  "url": "https://archives.projectcatalyst.io/prod/019fd6b2-c36b-419f-8a2d-ebf06b91a762?Expires=1693341938&Signature=R5CJdg4GZCHHGakePZJIHaYHSOthO-RuIAuiGwcLTnD3MZrtxUMWQFvLdSpWrl6dqPB6VNNeS5sMp9pK7x-JmuBvnZ3XZNUEcBA9XLlMgIZJQDD7l6JEgCtKWRiOFPbOSUZSLQMhD6mbL2koARzdZjkzLDjPFFf33~vU89qZzt-VaaMseDUtGv-6zU6ANh2RkUvWD9UCUDTwoU9VjrMhwPfrx2kaWGIkt5a3NqxkNmti7SVdwtcsKWN7wuLQNaks-PJnrTKwtp7Qc8Ll3vrf846vJWzH3UVDwDB0vbk1nVcysijEaj6m7DcWA5TR7Di84FHjYf9zmTJYeeC71Ht8mw__&Key-Pair-Id=K36UOCCH06A5FV"
}

```

Titik akhir ini mengembalikan URL yang sensitif terhadap waktu untuk mengunduh arsip. Perhatikan bahwa URL ini hanya valid selama 15 menit. Untuk mengunduh arsip:

```linux

> URL="$(curl -s https://archiver.projectcatalyst.io/api/v1/archives/019fd6b2-c36b-419f-8a2d-ebf06b91a762/download | jq -r .url)"
> curl -o archive.tar.zstd "$URL"

```

Kami menyimpan file sebagai arsip `.tar` `.zstd` karena dengan cara inilah isinya diarsipkan. Jika Anda melihat kembali respons API, Anda akan melihat bidang kompresi dan pengemasan masing-masing disetel ke `zstd` dan tar. Kita dapat menggunakan kolom ini untuk menentukan proses mengekstraksi arsip. Untuk mengekstrak konten, kita perlu menggunakan CLI `.tar` dan `.zstd` :

```linux

> zstd -d archive.tar.zstd && tar -xvf archive.tar
archive.tar.zstd    : 523103232 bytes
artifacts
artifacts/block0.bin
permanent
permanent/blocks
permanent/blocks/data
permanent/blocks/seqno
permanent/chain_length
permanent/chain_length/data
permanent/chain_length/seqno
volatile
volatile/blobs
volatile/conf
volatile/db
volatile/snap.00000003A7319A1C

```

Kami sekarang memiliki gambaran lengkap tentang status blockchain di sistem file lokal kami.
