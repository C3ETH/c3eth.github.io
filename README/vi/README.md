# Cardano Catalyst Community Eastern Townhall website
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

## Overview

[English](/README/en/README.md) | [Tiếng Việt](/README/vi/README.md) | [Indonesia](/README/id/README.md) | [日本語](/README/ja/README.md) | [한국어](/README/ko/README.md)

This repository contains Cardano Catalyst Community (C3) Eastern Townhall (ETH) updates and related documentation. C3ETH is helping to enable community members from a wide variety of countries and languages in the eastern timezones. A particular focus of the team is to localise Cardano Catalyst content and on-boarding to enable the widest participation possible.

This repository contains C3ETH translations of Project Catalyst documentation, community-sourced documentation, and related proposals. The content is translated into the many languages of the eastern hemisphere, with a particular focus on East Asian languages.

[Project Catalyst](https://cardano.ideascale.com/) is the **beginning** of bringing on-chain governance to Cardano. It is a series of experiments that leverage the collective intelligence of the Catalyst Community to determine the future direction and development of the Cardano ecosystem. Through a series of innovation funds, the community sources ideas decides which to fund, and finances them. Sourcing the best ideas for building a global blockchain.

## Building with Docker

The website and documentation is compiled and developed using [Hugo](https://gohugo.io/) and the [Docsy Theme](https://www.docsy.dev/). To build the site requires [Node](https://nodejs.org/en/), [Npm](https://www.npmjs.com/), and [PostCSS](https://postcss.org/). Instead of having to locally install these tools, you can build the site using [Docker](https://docs.docker.com/get-started/overview/). This has the advantage of providing a uniform development environment.

- Docker: To install docker, please refer to the documentation at [https://docs.docker.com/get-docker/](https://docs.docker.com/get-docker/).

- Once you've made your working copy (see below) of the site repo, from the repo root folder, running the hugo serve container with docker:

  ```
  $ make container-serve
  ```

Then visit http://localhost:1313 to view the documentation site

## Building with a local development environment 

The Website is built using [Docsy](https://www.docsy.dev/) which is a [Hugo](https://gohugo.io/) theme for technical documentation sets, providing simple navigation, site structure, and more.

### Prerequisites

Building and running the site locally requires a recent `extended` version of [Hugo](https://gohugo.io). The following are basic prerequisites building this site:

- Install a recent release of the Hugo "extended" version (we recommend version 0.53 or later). If you install from the 
  [release page](https://github.com/gohugoio/hugo/releases), make sure you download the `_extended` version 
  which supports SCSS.

- Install `PostCSS` so that the site build can create the final CSS assets. You can install it locally by running 
  the following commands from the root directory of your project:

  ```
  sudo npm install -D --save autoprefixer
  sudo npm install -D --save postcss-cli
  ```

- Once you've made your working copy (see below) of the site repo, from the repo root folder, run:

  ```
  hugo server
  ```

## Cloning the Website

```bash
$ git clone --recurse-submodules --depth 1 https://github.com/c3eth/ce3th.github.io
$ cd c3eth.github.io
```

The site is build on the [Docsy theme](https://www.docsy.dev/) as a submodule. To update the submodule run:

```bash
$ git submodule update --recursive
$ git pull --recurse-submodules
```
## Edit Website Documents

The documents are in the ```content/{en,vn,in,jp,ko}``` directories, select the desired section to edit or add, for content organization please refer to: https://gohugo.io/content-management/organization/.

## Change Log

See [CHANGELOG.md](CHANGELOG.md) for notable changes and versions.

## Acknowledgements

* [Project Catalyst](https://cardano.ideascale.com/)
* [Cardano Foundation](https://cardanofoundation.org/)
* [IOHK Project Catalyst Team](https://iohk.io/) 
* [Hugo](https://gohugo.io/)
* [Docsy](https://www.docsy.dev/)


## Contributing ![GitHub](https://img.shields.io/github/contributors/c3eth/c3eth.github.io)

Please read [CONTRIBUTING.md](/README/vi/CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

See also the list of [contributors](https://github.com/c3eth/c3eth.github.io/graphs/contributors) who participated in this project.

Thanks goes to these wonderful contributors (see [emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!

## License ![GitHub](https://img.shields.io/github/license/c3eth/c3eth.github.io)

The published source code in the repository `c3eth/c3eth.github.io` is licensed under the Apache License 2.0 - see the [LICENSE](https://github.com/c3eth/c3eth.github.io/main/LICENSE.md) file for details.

The published content in the repository `c3eth/c3eth.github.io` is licensed under the [Creative Attribution-Non-Commercial-ShareAlike (CC BY-NC-SA) License v4.0.](https://creativecommons.org/licenses/by-nc-sa/4.0/)

You are free to Share (copy and redistribute) the material in any medium or format
adapt, remix, transform, and build upon the material. You may not use the material for commercial purposes.  If you remix, transform, or build upon the material, you must distribute your contributions under the same license as the original. No warranties are given. The license may not give you all of the permissions necessary for your intended use.