---
title: "Gitlocalize notes"
description: "Some rules before pushing commit to website."
lead: "Some rules before pushing commit to website"
date: 2020-11-23T11:55:16+01:00
lastmod: 2020-11-23T11:55:16+01:00
draft: true
images: []
weight: 211
toc: true
---

While using Gitlocalize to translate content to other languages, the yaml front matter (on top of each markdown file) could be changed like this:

```yaml
---
title: <title>
description: <description>
lead: <lead>
date: 2020-11-23T11:55:16+01:00
---
```

The double quotation marks would be removed but yaml is strictly and lead to build fail. Therefore, make sure your front matter has double quotation marks

```yaml
---
title: "<title>"
description: "<description>"
lead: "<lead>"
date: 2020-11-23T11:55:16+01:00
---
```

