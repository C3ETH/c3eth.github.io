# Cardano Catalyst Community Eastern Townhall website

<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->

[](#contributors-)

<!-- ALL-CONTRIBUTORS-BADGE:END -->

## 概要

[English](/README/en/README.md) | [Tiếng Việt](/README/vi/README.md) | [Indonesia](/README/id/README.md) | [日本語](/README/ja/README.md) | [한국어](/README/ko/README.md)

このリポジトリには、Cardano Catalyst Community（C3）Eastern Townhall（ETH）のアップデートと関連ドキュメントが含まれています。 C3ETHは、東部のタイムゾーンでさまざまな国や言語のコミュニティメンバーをサポートしています。チームの重要な焦点は、Cardano Catalystのコンテンツとオンボーディングをローカライズして、可能な限り幅広い参加を可能にすることです。

このリポジトリには、Project Catalystドキュメント、コミュニティソースのドキュメント、および関連する提案のC3ETHによる翻訳が含まれています。コンテンツは東半球の多くの言語に翻訳されており、特に東アジアの言語に焦点が当てられています。

[Project Catalyst](https://cardano.ideascale.com/)は、カルダノにオンチェーンガバナンスをもたらすこと**の始まりです。**これは、Catalystコミュニティの集合知を活用して、Cardanoエコシステムの将来の方向性と開発を決定する一連の実験です。一連のイノベーションのための資金を通じて、コミュニティはどのアイデアに資金を提供するかを決定し、提供します。グローバルブロックチェーンを構築するための最良のアイデアを調達します。

## Dockerを使用したビルド

[Webサイトとドキュメントは、Hugo](https://gohugo.io/)と[Docsyテーマ](https://www.docsy.dev/)を使用してコンパイルおよび開発されています。サイトを構築するには、 [Node](https://nodejs.org/en/) 、 [Npm](https://www.npmjs.com/) 、および[PostCSS](https://postcss.org/)が必要です。これらのツールをローカルにインストールする代わりに、 [Docker](https://docs.docker.com/get-started/overview/)を使用してサイトを構築できます。これには、均一な開発環境を提供するという利点があります。

- Docker：dockerをインストールするには、 [https ://docs.docker.com/get-docker/](https://docs.docker.com/get-docker/)のドキュメントを参照してください。

- サイトリポジトリの作業コピー（以下を参照）を作成したら、リポジトリルートフォルダーから、dockerを使用してhugoserveコンテナーを実行します。

    ```
    $ make container-serve
    ```

次に、http:// localhost:1313にアクセスして、ドキュメントサイトを表示します。

## ローカル開発環境を備えたビルド

このWebサイトは、技術文書セットの[Hugo](https://www.docsy.dev/)テーマである[Docsy](https://gohugo.io/)を使用して構築されており、簡単なナビゲーション、サイト構造などを提供します。

### 前提条件

サイトをローカルで構築して実行するには、 <a>Hugoの</a><code>extended</code>バージョンが必要です。このサイトを構築するための基本的な前提条件は次のとおりです。

- Hugoの「拡張」バージョンの最新リリースをインストールします（バージョン0.53以降をお勧めします）。[リリースページ](https://github.com/gohugoio/hugo/releases)からインストールする場合は、SCSSをサポート`_extended`バージョンをダウンロードしてください。

- `PostCSS`をインストールして、サイトビルドで最終的なCSSアセットを作成できるようにします。プロジェクトのルートディレクトリから次のコマンドを実行して、ローカルにインストールできます。

    ```
    sudo npm install -D --save autoprefixer
    sudo npm install -D --save postcss-cli
    ```

- リポジトリのルートフォルダからサイトリポジトリの作業コピー（以下を参照）を作成したら、次のコマンドを実行します。

    ```
    hugo server
    ```

## ウェブサイトの複製

```bash
$ git clone --recurse-submodules --depth 1 https://github.com/c3eth/ce3th.github.io
$ cd c3eth.github.io
```

このサイトは、サブモジュールとして[Docsyテーマ](https://www.docsy.dev/)に基づいて構築されています。サブモジュールを更新するには、以下を実行します。

```bash
$ git submodule update --recursive
$ git pull --recurse-submodules
```

## ウェブサイトのドキュメントを編集する

ドキュメントは`content/{en,vn,in,jp,ko}`ディレクトリにあります。編集または追加するセクションを選択してください。コンテンツの編成については、https://gohugo.io/content-management/organization/を参照してください。

## 変更ログ

注目すべき変更とバージョンについては、[CHANGELOG.md](CHANGELOG.md)を参照してください。

## 謝辞

- [Project Catalyst](https://cardano.ideascale.com/)
- [Cardano Foundation](https://cardanofoundation.org/)
- [IOHK Project Catalyst Team](https://iohk.io/)
- [Hugo](https://gohugo.io/)
- [Docsy](https://www.docsy.dev/)

## 貢献する方法![GitHub](https://img.shields.io/github/contributors/c3eth/c3eth.github.io)

当社の行動規範の詳細、およびプルリクエストを送信するプロセスについては、 [CONTRIBUTING.md](https://github.com/c3eth/c3eth.github.io/blob/main/CONTRIBUTING.md)をお読みください。

このプロジェクトに参加した[貢献者](https://github.com/c3eth/c3eth.github.io/graphs/contributors)のリストも参照してください。

これらの素晴らしい貢献者に感謝します（[絵文字キーを](https://allcontributors.org/docs/en/emoji-key)参照）：

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

このプロジェクトは、[すべての貢献者](https://github.com/all-contributors/all-contributors)の仕様に従います。どんな種類の貢献も歓迎します！

## ライセンス![GitHub](https://img.shields.io/github/license/c3eth/c3eth.github.io)

`c3eth/c3eth.github.io`で公開されているソースコードは、Apache License 2.0の下でライセンスされています。詳細については、[LICENSE](https://github.com/c3eth/c3eth.github.io/main/LICENSE.md)ファイルを参照してください。

リポジトリ`c3eth/c3eth.github.io`で公開されているコンテンツは、[Creative Attribution-Non-Commercial-ShareAlike (CC BY-NC-SA) License v4.0.](https://creativecommons.org/licenses/by-nc-sa/4.0/)下でライセンスされています。

素材を任意のメディアまたは形式で自由に共有（コピーおよび再配布）し、素材を適応、リミックス、変換、および構築することができます。この資料を商業目的で使用することはできません。素材をリミックス、変換、または構築する場合は、オリジナルと同じライセンスの下で投稿を配布する必要があります。保証はありません。ライセンスは、意図された使用に必要なすべての許可をあなたに与えるとは限りません。
