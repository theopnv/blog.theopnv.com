# blog.theopnv.com

Hugo blog using the [PaperMod](https://github.com/adityatelange/hugo-PaperMod) theme, deployed on Vercel.

## Analytics

Using [Umami](https://umami.is/) for privacy-focused, cookieless analytics.

- Dashboard: [Umami Cloud console](https://cloud.umami.is)
- Tracking script added directly to [`layouts/partials/extend_head.html`](layouts/partials/extend_head.html) (PaperMod's head extension point)
- Both `blog.theopnv.com` and `theopnv.com` share the same website ID — traffic is combined, filterable by domain in the console
- No Hugo module needed — script tag is hardcoded to avoid requiring Go at Vercel build time
