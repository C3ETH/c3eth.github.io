---
title: '"Catatan Gitlocalize"'
description: '"Beberapa aturan sebelum mendorong komit ke situs web"'
lead: '"Beberapa aturan sebelum mendorong komit ke situs web"'
date: '2020-11-23 11:55:16 +0100'
lastmod: '2020-11-23 11:55:16 +0100'
draft: 'false'
images: []
weight: '211'
toc: 'true'
---

Setiap markdown yang Anda buat akan memiliki front matter yaml (di atas setiap file markdown) :

```yaml
---
title: "<title>"
description: "<description>"
lead: "<lead>"
date: 2020-11-23T11:55:16+01:00
draft: false
images: []
---
Content of file
```

### Problems

Saat menggunakan Gitlocalize untuk menerjemahkan konten ke bahasa lain, front matter yaml dapat diubah seperti ini:

```yaml
---
title: <title>
description: <description>
lead: <lead>
date: "2020-11-23T11:55:16+01:00"
draft: "false"
images: []
---
```

You cannot see these yaml front matter until you create a pull request on Github.<br> Open `Files changed` on Github after pushing commits will show what being changed so you can spot the different.

Example: ![gambar](error.png)

From the picture above, the changes are:

- Tanda kutip ganda  `title` , `description` , `lead` telah dihapus
- The double quotation marks now being added to `date`,`lastmod` and `draft`
- The angle brackets `< >` are being changed to `&lt; &gt;`

Tapi yaml sangat kaku, tidak mengikuti akan menyebabkan **build fail** .

### Actions required

Therefore, make sure check your front matter **match the original file**:

- **Add** double quotation marks to `title`,`description`,`lead`
- **Remove** double quotation marks on `date`,`lastmod` and `draft`
- **Change** `&lt; &gt;` to angle brackets `< >`

```yaml
---
title: "<title>"
description: "<description>"
lead: "<lead>"
date: 2020-11-23T11:55:16+01:00
draft: false
images: []
---
```
