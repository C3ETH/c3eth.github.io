# Cardano Catalyst Community Eastern Townhall website

<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->
## 개요

[English](/README/en/README.md) | [Tiếng Việt](/README/vi/README.md) | [Indonesia](/README/id/README.md) | [日本語](/README/ja/README.md) | [한국어](/README/ko/README.md)

이 저장소에는 Cardano Catalyst Community(C3) ETH(Eastern Townhall) 업데이트 및 관련 문서가 포함되어 있습니다. C3ETH는 동부 시간대에서 다양한 국가와 언어의 커뮤니티 구성원을 지원합니다. 팀의 특별한 초점은 Cardano Catalyst 콘텐츠와 온보딩을 현지화하여 최대한 폭넓은 참여를 가능하게 하는 것입니다.

이 저장소에는 Project Catalyst 문서, 커뮤니티 소스 문서 및 관련 제안의 C3ETH 번역이 포함되어 있습니다. 콘텐츠는 특히 동아시아 언어에 중점을 두고 동반구의 여러 언어로 번역됩니다.

[Project Catalyst](https://cardano.ideascale.com/)는 Cardano에 온체인 거버넌스를 도입 하는 **시작**입니다. 카르다노 생태계의 미래 방향과 발전을 결정하기 위해 카탈리스트 커뮤니티의 집단 지성을 활용하는 일련의 실험입니다. 일련의 혁신 기금을 통해 커뮤니티는 아이디어를 조달하고 자금을 조달할 대상을 결정합니다. 글로벌 블록체인 구축을 위한 최고의 아이디어를 조달할 것입니다.

## 도커로 빌드

웹사이트 및 문서는 [Hugo](https://gohugo.io/) 및 [Docsy](https://www.docsy.dev/) 테마를 사용하여 컴파일 및 개발됩니다. 사이트를 구축하려면 [Node](https://nodejs.org/en/) , [Npm](https://www.npmjs.com/) 및 [PostCSS](https://postcss.org/)가 필요합니다. 이러한 도구를 로컬에 설치하는 대신 [Docker](https://docs.docker.com/get-started/overview/)를 사용하여 사이트를 구축할 수 있습니다. 균일한 개발 환경을 제공할 수 있다는 장점이 있습니다.

- 도커: 도커를 설치하려면 [https://docs.docker.com/get-docker/](https://docs.docker.com/get-docker/) 문서를 참조하세요 .

- 사이트 repo의 작업 복사본(아래 참조)을 만든 후에는 repo 루트 폴더에서 도커로 휴고 서브 컨테이너를 실행합니다.

    ```
    $ make container-serve
    ```

그런 다음 <a>http://localhost:1313</a>을 방문하여 설명서 사이트를 봅니다.

## 로컬 개발 환경으로 구축

웹사이트는 기술 문서 세트에 대한 [Hugo](https://www.docsy.dev/)테마인  [Docsy](https://gohugo.io/)를 사용하여 구축되어 간단한 탐색, 사이트 구조 등을 제공합니다.

### 전제 조건

사이트를 로컬에서 구축하고 실행하려면 <a>Hugo</a> <code>extended</code> 버전이 필요합니다. 다음은 이 사이트를 구축하는 기본 전제 조건입니다.

- Hugo "확장" 버전의 최신 릴리스를 설치합니다(버전 0.53 이상 권장). [릴리스 페이지](https://github.com/gohugoio/hugo/releases) 에서 설치하는 경우 SCSS를 지원 `_extended` 버전을 다운로드해야 합니다.

- 사이트 빌드에서 최종 CSS 자산을 생성할 수 있도록 `PostCSS` 설치합니다. 프로젝트의 루트 디렉터리에서 다음 명령을 실행하여 로컬로 설치할 수 있습니다.

    ```
    sudo npm install -D --save autoprefixer
    sudo npm install -D --save postcss-cli
    ```

- 사이트 repo의 작업 복사본(아래 참조)을 만든 후에는 repo 루트 폴더에서 다음을 실행합니다.

    ```
    hugo server
    ```

## 웹사이트 복제

```bash
$ git clone --recurse-submodules --depth 1 https://github.com/c3eth/ce3th.github.io
$ cd c3eth.github.io
```

이 사이트는 하위 모듈로 [Docsy](https://www.docsy.dev/)테마에 구축됩니다. 하위 모듈을 업데이트하려면 다음을 실행하십시오.

```bash
$ git submodule update --recursive
$ git pull --recurse-submodules
```

## 웹사이트 문서 편집

문서는 `content/{en,vn,in,jp,ko}` 디렉토리에 있습니다. 편집하거나 추가할 섹션을 선택하세요. 콘텐츠 구성은 https://gohugo.io/content-management/organization/을 참조하세요. .

## 변경 로그

주요 변경 사항 및 버전은 [CHANGELOG.md](CHANGELOG.md)를 참조하십시오.

## 감사의 말

- [Project Catalyst](https://cardano.ideascale.com/)
- [Cardano Foundation](https://cardanofoundation.org/)
- [IOHK Project Catalyst Team](https://iohk.io/)
- [Hugo](https://gohugo.io/)
- [Docsy](https://www.docsy.dev/)

## 기여 ![GitHub](https://img.shields.io/github/contributors/c3eth/c3eth.github.io)

행동 강령과 풀 리퀘스트 제출 절차에 대한 자세한 내용은 [CONTRIBUTING.md](/README/ko/CONTRIBUTING.md)를 참조하십시오.

이 프로젝트에 참여한 [기여자](https://github.com/c3eth/c3eth.github.io/graphs/contributors)목록도 참조하십시오.

다음과 같은 훌륭한 기여자에게 감사드립니다( [emoji key](https://allcontributors.org/docs/en/emoji-key) 참조):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

이 프로젝트는 [모든 기여자](https://github.com/all-contributors/all-contributors) 사양을 따릅니다. 어떤 종류의 기여도 환영합니다!

## 라이센스 ![GitHub](https://img.shields.io/github/license/c3eth/c3eth.github.io)

`c3eth/c3eth.github.io` 저장소에 게시된 소스 코드는 Apache 라이선스 2.0에 따라 라이선스가 부여됩니다. 자세한 내용은 [LICENSE](https://github.com/c3eth/c3eth.github.io/main/LICENSE.md) 파일을 참조하세요.

`c3eth/c3eth.github.io`저장소에 게시된 콘텐츠는 [Creative Attribution-Non-Commercial-ShareAlike(CC BY-NC-SA) 라이선스 v4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)에 따라 라이선스가 부여됩니다.

어떤 매체나 형식으로든 자료를 자유롭게 공유(복사 및 재배포)하고 자료를 수정, 리믹스, 변형 및 구축할 수 있습니다. 상업적 목적으로 자료를 사용할 수 없습니다. 자료를 리믹스, 변형 또는 구축하는 경우 원본과 동일한 라이선스에 따라 기여를 배포해야 합니다. 어떠한 보증도 제공되지 않습니다. 라이선스는 의도한 사용에 필요한 모든 권한을 부여하지 않을 수 있습니다.
