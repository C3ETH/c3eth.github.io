---
title: "Pages"
description: "Add a default page, documentation page, blog post or contributor page. Customize the homepage and 404 page."
lead: "Add a default page, documentation page, blog post or contributor page."
date: 2020-11-23T11:55:16+01:00
lastmod: 2020-11-23T11:55:16+01:00
draft: false
images: []
weight: 211
toc: true
---
## Content tree:

```bash
..
├── content
├──── en
├────── blog/
│       ├── first-post/
│       │   ├── index.md
│       │   └── feature-sunset.png
│       └── _index.md
├────── ca-tv/
│       ├── ca-tv-fund7/
│       │   ├── _index.md
│       │   └── episode-one.md
│       ├── ca-tv-intro/
│       │   ├── _index.md
│       │   └── introduction.md
│       └── _index.md
├────── catalyst/
│       ├── fund6/
│       │   ├── challenge-setting-proposals/
│       │   │  ├── grow-asia.md
│       │   │  ├── grow-social-finance.md
│       │   │  └── _index.md
│       │   ├── challenges/
│       │   │  └── _index.md
│       │   └── _index.md
│       ├── overview/
│       │   ├── _index.md
│       │   ├── catalyst-overview.md
│       │   └── image-and-media.md
│       └── _index.md
├────── docs/
│       ├── catalyst-guides/
│       │   ├── _index.md
│       │   └── guides.md
│       ├── how-to guides/
│       │   ├── _index.md
│       │   ├── pages.md
│       │   └── image-and-media.md
│       └── _index.md
└── _index.md
```

See also the Hugo docs: [Content Organization](https://gohugo.io/content-management/organization/).

## Add a default page

### Example

```bash
npm run create about/index.md
```

## Add a documentation page

### Example

```bash
npm run create docs/overview/introduction.md
```

## Add a blog post

### Example

```bash
npm run create blog/say-hello-to-doks/index.md
```



