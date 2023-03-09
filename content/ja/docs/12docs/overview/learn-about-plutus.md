---
title: "Plutusについて学ぶ"
description: "Plutusについて学ぶ"
lead: ''
date: 2020-10-06 08:48:23 +0000
lastmod: 2020-10-06 08:48:23 +0000
draft: false
images: []
---

Plutus は Cardano のネイティブ スマート コントラクト言語です。これは Haskell で書かれたチューリング完全言語であり、Plutus スマート コントラクトは効果的 Haskell プログラムです。 Plutus を使用することで、スマート コントラクトの正しい実行に自信を持つことができます。最新の言語研究に基づいて、主要な純粋関数型プログラミング言語である Haskell に基づく安全なフルスタック プログラミング環境を提供します。

Alonzo のアップグレードは、Plutus スクリプトをブロックチェーンに統合することで、Cardano にエキサイティングで待望の機能をもたらします。これらのスクリプトにより、Cardano でのスマート コントラクトの実装が可能になり、初めて分散型アプリケーション (DApps) の新しいユース ケースのホストが可能になります。

始めたい場合は、 [Plutus Playground](https://playground.plutus.iohkdev.io/)にアクセスして、Plutus プログラムの作成方法と[チュートリアル](https://plutus-apps.readthedocs.io/en/latest/)の使用方法を学び、サポートを受けてください。また、ここで提供されている説明とチュートリアルを読み、 [Plutus の説明](https://plutus-apps.readthedocs.io/en/latest/plutus/explanations/index.html)を参照して、Plutus 言語自体についてさらに学習する必要があります。

私たちはサポートするためにここにいます！ Plutus の使用中にサポートが必要な場合は、 [Plutus リポジトリ](https://github.com/input-output-hk/plutus)に問題を記録し、できる限り詳細を含めてください。

### プルータスのスマートコントラクト

Plutus スマート コントラクトは、ブロックチェーン上で実行される部分 (オンチェーン コード) と、ユーザーのマシン上で実行される部分 (オフチェーンまたはクライアント コード) で構成されます。オフチェーン コードは Plutus Application Framework (PAF) を使用して記述でき、このコードは GHC (Glasgow Haskell Compiler) によってコンパイルされますが、オンチェーン コードは Plutus コンパイラによって Plutus Core にコンパイルされます。

![画像](https://docs.cardano.org/static/6c366861cbc7f599ed30a07969dd1cf1/a6d66/Plutus_arch.png)

### Plutus が使用する会計モデル

カルダノは、未使用 (U) トランザクション (TX) アウトプット (O) アカウンティング モデル (UTXO) モデル (Bitcoin で使用) を拡張する[拡張 UTXO アカウンティング モデル (EUTXO)](https://docs.cardano.org/plutus/eutxo-explainer)を使用します。 UTXO モデルでは、トランザクションには*入力*と*出力*があり、**入力**は以前のトランザクションからの未使用の出力です。出力がトランザクションで入力として使用されるとすぐに、使用済みになり、二度と使用できなくなります。**出力**は、アドレス (公開鍵または公開鍵ハッシュ) と値 (ADA の量とオプションの追加のネイティブ トークンの量で構成される) によって指定されます。

EUTXO は、出力アドレスに複雑なロジックを含めてロックを解除できるトランザクションを決定し、すべての出力に*カスタム*データを追加することで、UTXO モデルを拡張します。このモデルには、他の会計モデルにはない独自の利点があります。トランザクション検証の成功または失敗は、トランザクション自体とその入力のみに依存し、ブロックチェーン上の他のものには依存しません。その結果、トランザクションがブロックチェーンに送信される前に、トランザクションの有効性を*オフチェーン*でチェックできます。トランザクションが予期している入力を他のトランザクションが同時に消費する場合、トランザクションは失敗する可能性があります。ただし、すべての入力がまだ存在する場合、トランザクションは成功することが*保証さ*れます。

### プルータスコア

Plutus Core は、Cardano が EUTXO モデルを実装するために使用するスクリプト言語です。これは、Haskell に似た単純な関数型言語であり、Haskell の大部分のサブセットを使用して Plutus Core スクリプトを作成できます。スマート コントラクトの作成者は、Plutus Core を作成しません。むしろ、すべての Plutus Core スクリプトは Haskell コンパイラ プラグインによって生成されます。

これらのスクリプトは、チェーン上で「ライブ」のトランザクション検証中にノードによって実行されます。 EUTXO は、[バリデータ スクリプト](https://docs.cardano.org/plutus/Plutus-validator-scripts)の形式で、またはネイティブ トークンの作成と焼き付けを制御する作成ポリシーとしてロックされます。

実際には、スマート コントラクトを開発するときは、Haskell でバリデータ スクリプトを記述します。このスクリプトは、Plutus Tx と呼ばれる GHC プラグインを使用して Plutus Core に自動的にコンパイルされます。<br><br>プルータス アプリケーション フレームワーク (PAF)

PAF は、Plutus アプリケーションで一般的に使用されるサービスへの簡単なアクセスを提供します。フレームワークのライブラリを使用してデプロイされたアプリケーションは、Plutus アプリケーション バックエンドで実行できます。Plutus アプリケーション バックエンドは、ブロックチェーンへのアクセスと、永続性、ログ記録、監視などのその他の問題に対するランタイム サポートを提供します。 PAF の上に記述されたアプリケーションは、Web ブラウザーからアプリケーションと対話できる HTTP および WebSocket インターフェースを自動的に提供します。

バリデータ スクリプトのオンチェーン状態は、スクリプト出力を消費して生成するトランザクションによってのみ変更できます。 Plutus アプリケーションを作成するときは、アプリケーションのオンチェーン部分 (Plutus Core スクリプト) だけでなく、トランザクションを構築して送信するオフチェーン部分も考慮する必要があります。

オフチェーン コードは、オンチェーン コードと同様に Haskell で記述されます。これは、オンチェーン コードが Solidity で記述されているイーサリアムとは異なりますが、オフチェーン コードは JavaScript で記述されています。そうすれば、ビジネス ロジックを 1 回記述するだけで済みます。このロジックは、バリデータ スクリプトと、バリデータ スクリプトを実行するトランザクションを構築するコードで使用できます。 <br><br>Plutus アプリケーション バックエンド (PAB)

PAB は現在開発中であり、Plutus アプリケーションのオフチェーン コンポーネントを実行します。ウォレット バックエンドとノードへのアプリケーション リクエストを管理し、アプリケーションの状態を保存し、アプリケーション インスタンスを管理するための HTTP API を提供します。

### Plutus とネイティブ トークン

各ネイティブ トークンには、トークンを作成およびバーンできる条件を決定する独自の作成[ポリシー](https://github.com/input-output-hk/cardano-documentation/blob/staging/content/07-native-tokens/01-learn.mdx#minting-policy)が付属しています。 Plutus の導入により、ユーザーは Haskell で作成ポリシーを作成し、Plutus Core にコンパイルできるようになります。作成または焼却プロセス中、Plutus Core ポリシー スクリプトは、作成または焼却トランザクションのコンテキストで実行され、スクリプトはアクションを承認または禁止する必要があります。この機能は、はるかに複雑なマイニング ポリシーの作成を可能にし、トラストレスな方法で NFT を作成できるようにすることで、Cardano での Non Fungible Tokens (NFT) の成長をさらに加速します。<br><br>プルータスのメリット

Plutus は、かなりのセキュリティ上の利点を提供します。これにより、スマート コントラクトが正しく、以前のスマート コントラクト言語設計で見つかった問題が発生しないことを示す、より簡単で堅牢な方法が提供されます。

Plutus は、以前の代替手段よりも便利で安全な、スマート コントラクトおよび分散アプリケーション開発への新しい統合アプローチを可能にします。オンチェーンとオフチェーンの両方のコードは、同じ言語に基づいています。統一されたコード ベースを使用すると、Plutus ツールチェーンが自動的にオンチェーンとオフチェーンのコードとパッケージを展開用に分離します。

さらに、イーサリアムとは対照的に、Plutus はユーザー定義のトークンをサポートします (代替可能なトークンと代替不可能なトークンの両方をネイティブにサポートしているため、必要なコードははるかに少なくなります。