---
date: 2021-09-18 
title: "Eastern Hemisphere Townhall Meeting 8"
linkTitle: "Eastern Hemisphere Townhall Meeting 8"
description: "A great meetup where we started off talking about the upcoming Ideafest, Cardano Summit and Hackathons."
author: Robert & Stephen
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: "Photo: Eastern Hemisphere Townhall / CC-BY-CA"
---

A great meetup where we started off talking about the upcoming Ideafest, Cardano Summit and Hackathons. A lot of familiar faces joined into an insightful discussion about Scams and Scam detection. Lead by Peter Bui. We also discussed trading bots, Social and Environmental applications and touched on Stable Coins.

{{< imgproc sunset Fill "600x300" >}}
Fetch and scale an image in the upcoming Hugo 0.43.
{{< /imgproc >}}

The front matter of this post specifies properties to be assigned to all image resources:

```
resources:
- src: "**.{png,jpg}"
  title: "Image #:counter"
  params:
    byline: "Photo: Riona MacNamara / CC-BY-CA"
```

To include the image in a page, specify its details like this:

```
{{< imgproc sunset Fill "600x300" >}}
Fetch and scale an image in the upcoming Hugo 0.43.
{{< /imgproc >}}
```

The image will be rendered at the size and byline specified in the front matter.


