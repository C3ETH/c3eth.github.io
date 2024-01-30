---
title: '投票台帳のスナップショット'
date: 2020-10-06 08:48:23 +0000
lastmod: 2020-10-06 08:48:23 +0000
draft: false
images: []
weight: 10
---

投票台帳のスナップショットが 1 時間ごとに公開されるため、記録された投票が投票ライフサイクルを通じて変更されていないことを誰でも確認できます。

Catalyst チームは、ブロックチェーン状態の日常的なスナップショットへのアクセスを提供します。これらのスナップショットは 1 時間間隔で自動的に取得され、アーカイブの形式で永続ストレージ システムにアップロードされます。現在、これらのアーカイブは、 [Archive API にクエリを実行すること](https://archiver.projectcatalyst.io/api/v1/archives/)で見つけることができます。利用可能なエンドポイントの詳細については、 [Swagger のドキュメント](https://archiver.projectcatalyst.io/swagger/index.html)を参照してください。

API と対話してアーカイブをダウンロードする方法の例を示すために、curl および jq CLI ツールを使用します。まず、利用可能なアーカイブをリストする必要があります。

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

上記の応答では、利用可能なアーカイブは 3 つだけです。結果の数が 50 を超える場合、自動的にページ分割されます。これは、次のフィールドが設定されていることから明らかです。後続のアーカイブをフェッチするには、同じエンドポイントを呼び出し、?next={VALUE} を追加します。VALUE は次のフィールドの値です。利用可能なすべてのアーカイブを反復するには、次のフィールドが空になるまでこのプロセスを繰り返すことができます。

この例では、リストの最初のアーカイブを取得することを選択します。アーカイブをダウンロードするためのリンクを取得するには、次のコマンドを実行します。

```json

> curl -q https://archiver.projectcatalyst.io/api/v1/archives/019fd6b2-c36b-419f-8a2d-ebf06b91a762/download | jq
{
  "url": "https://archives.projectcatalyst.io/prod/019fd6b2-c36b-419f-8a2d-ebf06b91a762?Expires=1693341938&Signature=R5CJdg4GZCHHGakePZJIHaYHSOthO-RuIAuiGwcLTnD3MZrtxUMWQFvLdSpWrl6dqPB6VNNeS5sMp9pK7x-JmuBvnZ3XZNUEcBA9XLlMgIZJQDD7l6JEgCtKWRiOFPbOSUZSLQMhD6mbL2koARzdZjkzLDjPFFf33~vU89qZzt-VaaMseDUtGv-6zU6ANh2RkUvWD9UCUDTwoU9VjrMhwPfrx2kaWGIkt5a3NqxkNmti7SVdwtcsKWN7wuLQNaks-PJnrTKwtp7Qc8Ll3vrf846vJWzH3UVDwDB0vbk1nVcysijEaj6m7DcWA5TR7Di84FHjYf9zmTJYeeC71Ht8mw__&Key-Pair-Id=K36UOCCH06A5FV"
}

```

このエンドポイントは、アーカイブをダウンロードするための時間依存の URL を返します。この URL は 15 分間のみ有効であることに注意してください。アーカイブをダウンロードするには:

```linux

> URL="$(curl -s https://archiver.projectcatalyst.io/api/v1/archives/019fd6b2-c36b-419f-8a2d-ebf06b91a762/download | jq -r .url)"
> curl -o archive.tar.zstd "$URL"

```

ファイルを`.tar` `.zstd`アーカイブとして保存します。これは、コンテンツがこの方法でアーカイブされたためです。 API 応答を振り返ると、圧縮フィールドとパッケージ化フィールドがそれぞれ`zstd`と tar に設定されていることがわかります。これらのフィールドを使用して、アーカイブを抽出するプロセスを決定できます。コンテンツを抽出するには、 `.tar`および`.zstd` CLI を使用する必要があります。

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

これで、ローカル ファイル システム上にブロックチェーンの状態の完全なスナップショットが作成されました。
