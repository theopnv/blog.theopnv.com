# Frontmatter template

The canonical full frontmatter block, in the exact field order used across the site's
published posts. Fields marked `<AUTHOR>` are written by the author; `<AUTO>` are derived
by the skill; everything else is boilerplate stamped verbatim. Keeping this order means a
freshly-prepared post matches existing posts byte-for-byte in layout.

```yaml
---
title: "<AUTHOR — keep ≤ ~60 chars for SERP>"
date: <AUTO — today as YYYY-MM-DDT00:00:00+00:00 if missing>
# lastmod: <AUTO — today; add only when editing an already-committed post>
tags: [<reuse existing taxonomy; flag net-new terms>]
categories: [<reuse existing taxonomy>]
author: "Theo Penavaire"
showToc: true
TocOpen: false
draft: false
hidemeta: false
comments: true
description: "<AUTHOR — 120–155 chars, includes primary keyword>"
disableShare: false
disableHLJS: false
hideSummary: false
searchHidden: true
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
newsletterEn: true
cover:
    image: "images/cover.webp"
    alt: "<descriptive, factual; auto-filled if missing>"
    relative: true
---
```

## Notes

- The site is bilingual (en/fr) but recent posts are English-only (`index.en.md`); do not
  fabricate a French translation or hreflang — absence of a `.fr.md` is expected, not an error.
- `searchHidden: true` and `newsletterEn: true` are intentional site conventions — keep them.
- `cover.image` is a page-bundle-relative path (`relative: true`); PaperMod resizes it and
  builds a responsive srcset at build time. After WebP conversion the extension here must
  match the actual file.
- Existing tag/category vocabulary (check live before proposing): AI, Automation, Privacy,
  Web, Tutorials, CI/CD, Economics, Git, OS, Linux, Events, Paris, Javascript, CPP,
  Productivity. Reuse before inventing.
