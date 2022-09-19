# Cardano Catalyst Community Eastern Townhall website
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

## Overview

This repository contains Cardano Catalyst Community (C3) Eastern Townhall (ETH) updates and related documentation. C3ETH is helping to enable community members from a wide variety of countries and languages in the eastern timezones. A particular focus of the team is to localise Cardano Catalyst content and on-boarding to enable the widest participation possible.

This repository contains C3ETH translations of Project Catalyst documentation, community-sourced documentation, and related proposals. The content is translated into the many languages of the eastern hemisphere, with a particular focus on East Asian languages.

[Project Catalyst](https://cardano.ideascale.com/) is the **beginning** of bringing on-chain governance to Cardano. It is a series of experiments that leverage the collective intelligence of the Catalyst Community to determine the future direction and development of the Cardano ecosystem. Through a series of innovation funds, the community sources ideas decides which to fund, and finances them. Sourcing the best ideas for building a global blockchain.

## Demo
 [New ETH Website](https://jennyberry.github.io/new-eth/)

## Building with a local development environment

The Website is built using [Doks](https://getdoks.org/) which is a [Hugo](https://gohugo.io/) theme for building secure, fast, and SEO-ready documentation websites, which you can easily update and customize.

### Prerequisites

#### Git

Install the latest source release of [Git](https://git-scm.com/).

#### Check Git install

```bash
git --version
```

#### Node.js

Install the latest LTS version or newer of [Node.js](https://nodejs.org/).

#### Check Node.js install

```bash
node --version
```

#### Check npm install

```bash
npm --version
```

## Cloning the Website

```bash
$ git clone https://github.com/C3ETH/c3eth.git
```
## Change directories

```bash
cd new-eth
```
## Install dependencies

```bash
npm install
```
Installing dependencies can take a minute. Warnings can be ignored.

## Start development server

```bash
npm run start
```
Doks will start the Hugo development webserver accessible by default at `http://localhost:1313` or at `http://localhost:1313/new-eth/`. Saved changes will live reload in the browser.

## Edit Website Documents

The documents are in the ```content/{en,vi,ja}``` directories, select the desired section to edit or add, for content organization please refer to: https://gohugo.io/content-management/organization/.

## Using Nix

For those who have ![nix](https://nixos.org/) you can run this website by either using traditional nix commands such as `nix-build` and `nix-shell`, Or by using the experimental flake commands `nix develop`, `nix shell` , `nix run` and `nix build`. It's preferable that you use the latter.

### Getting Started

In order to do anything with nix and flakes we will first need to make sure you have nix installed.
The easiest way to install nix is to use the offical installer which will work on any Linux distro, macOS, or Windows Subsystem for Linux:

```bash
curl -L https://nixos.org/nix/install | sh
```

Follow the instructions until you have nix working on your machine, then update to the unstable channel with:

```bash
nix-env -f '<nixpkgs>' -iA nixUnstable
```

*Don’t mind that it is called unstable: it is not generally dangerous to run on your machine, it simply changes more often than “stable”.*

Now add the experimental commands with:

```bash
mkdir -p ~/.config/nix
echo 'experimental-features = nix-command flakes' >> ~/.config/nix/nix.conf
```

If you are using NixOS or have some trouble with installation, consult the [NixOS wiki.](https://nixos.wiki/wiki/flakes#Installing_flakes)

### Getting a Feel for the Flake

Now that you have a “flaky” Nix installed, it’s time to use it!

We can either enter a shell and build the site from there or we can just build the site and run it locally on your machine,lets go with the latter.

first lets build the site. You can either clone the repository and run it locally or just run this command in a folder anywhere on your machine.

```
nix build github:C3ETH/c3eth.github.io/nix-flake#siteBuild && nix run github:C3ETH/c3eth.github.io/nix-flake#c3ethSite -- file-server -root result/public
```
What this will do is build the site and run a caddy file server at the root of public folder. you can check it out at `localhost:80` in your web-browser.

if you want a development shell with caddy and hugo and npm you can run:
```bash
nix develop github:C3ETH/c3eth.github.io/nix-flake
```
Or if your running locally within the repository:
```bash
nix develop .
```
If you've cloned the repository you can serve a local server running `hugo server` or `npm run start`

old nix commands also work. you can simply enter a shell with:
```bash
nix-shell
```
You can also build locally using
```
nix-build or nix build
```
This flake has currently only been built with x86_64-darwin systems.


## Change Log

See [CHANGELOG.md](CHANGELOG.md) for notable changes and versions.

## Acknowledgements

* [Project Catalyst](https://cardano.ideascale.com/)
* [Cardano Foundation](https://cardanofoundation.org/)
* [IOHK Project Catalyst Team](https://iohk.io/)
* [Hugo](https://gohugo.io/)
* [Doks](https://getdoks.org/)


## Contributing ![GitHub](https://img.shields.io/github/contributors/c3eth/c3eth.github.io)

Please read [CONTRIBUTING.md](/README/id/CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

See also the list of [contributors](https://github.com/c3eth/c3eth.github.io/graphs/contributors) who participated in this project.

Thanks goes to these wonderful contributors (see [emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
