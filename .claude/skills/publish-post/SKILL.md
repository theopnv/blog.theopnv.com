---
name: publish-post
description: >-
  Make a Hugo + PaperMod blog post publish-ready in one pass: stamp and validate
  frontmatter, compress every image to WebP, fix Obsidian-isms, check internal and
  external links, verify heading/structure consistency, run a build, and produce an
  offline SEO + grammar report. Use this WHENEVER the user finishes a draft article,
  moves a post into content/, or asks to "publish", "prep", "finalize", "ready",
  "SEO-check", "proofread", or "clean up" a blog post — even if they only mention one
  of those tasks (e.g. "compress the images on my new post" or "check this article's
  SEO"), because the value is running the full pipeline. Targets posts under
  content/posts/**/index.*.md.
---

# publish-post

Turn a hand-written draft into a publish-ready Hugo post. You handle the mechanical,
repetitive work that's easy to get wrong by hand (frontmatter boilerplate, image
compression, link rot, broken refs) and you surface the editorial judgment calls
(prose, SEO weaknesses) as a report the author acts on — you never silently rewrite
their voice.

## The contract

- **Input:** the user names a post (a slug, a folder, or a path). Resolve it to a single
  `content/posts/**/index.<lang>.md` file and its sibling `images/` directory. If the
  reference is ambiguous, list candidates and ask.
- **Two classes of change.** *Mechanical/structural* fixes are applied directly to the
  file (the author reviews the git diff). *Prose and editorial* issues are reported with
  line numbers, never auto-edited — the author's voice is the point of the blog, and a
  grammar pass that "improves" deliberate phrasing destroys value.
- **Output:** a single consolidated report printed in chat (see structure at the end).
  Do not write report files to disk.

## Run the pipeline in this order

Order matters: image compression rewrites file references, so it must finish before link
and build checks, or those checks will chase stale paths.

### 1. Resolve the target and read it

Find the post file and its `images/` dir. Read the full markdown. Note the language from
the filename (`index.en.md` → `en`).

### 2. Frontmatter (mechanical — apply directly)

The author writes the title, description, and body by hand and leaves the rest. Fill and
validate against `references/frontmatter-template.md`:

- **Stamp boilerplate.** The ~14 fields that are byte-identical across every post
  (`author`, `showToc`, `TocOpen`, `draft`, `hidemeta`, `comments`, `disableShare`,
  `disableHLJS`, `hideSummary`, `searchHidden`, `ShowReadingTime`, `ShowBreadCrumbs`,
  `ShowPostNavLinks`, `newsletterEn`) come straight from the template. Never make the
  author hand-type these.
- **`date`:** if missing, set to today (`YYYY-MM-DDT00:00:00+00:00`). Never set a future
  date — `buildFuture: false` means it won't publish.
- **`lastmod`:** if the post is already committed (check `git log` / `git status`) and is
  being edited, add/update `lastmod` to today. Skip for brand-new posts.
- **Taxonomy reuse.** Read the existing vocabulary before proposing tags:
  `ls content/tags content/categories` and
  `grep -rhoE 'tags: \[.*\]|categories: \[.*\]' content/posts/`. Prefer existing terms
  (e.g. `CI/CD`, `Automation`, `AI`, `Privacy`, `Web`, `Tutorials`). If the post genuinely
  needs a new term, apply it but **call it out in the report** — every new tag spawns a
  thin taxonomy page, so net-new terms should be deliberate.
- **`cover` block:** must exist with `image`, `alt`, and `relative: true`. If the author
  forgot it but an image exists in `images/cover.*`, wire it up.
- **Length checks (report, don't truncate):** `title` reads best ≤ ~60 chars (SERP
  truncation), `description` ~120–155 chars. Flag out-of-range values with the count.

### 3. Obsidian cleanup (mechanical — apply directly)

The author drafts in Obsidian, so strip artifacts that break in Hugo:

- `![[image.png]]` embeds → `![<alt>](images/image.png)`.
- Stray Obsidian-only frontmatter properties (`aliases`, `cssclass`, `tags:` written as a
  YAML block of `#`-prefixed values) → remove or normalize.

The author does **not** use wikilinks or callouts, so don't build machinery for them; if
you do encounter a `[[wikilink]]` or `> [!note]`, just flag it.

### 4. Compress all images (mechanical — apply directly)

Every image in the post (cover **and** inline) must be WebP, q80, longest edge ≤ 1600px,
replaced in place. Use the bundled script — it converts, resizes, deletes originals, and
prints an old→new path map:

```bash
node .claude/skills/publish-post/scripts/compress_images.mjs <post-images-dir>
```

The script self-installs `sharp` ephemerally via `npx` (node is available; nothing is
added to the repo or globally). If `npx` is somehow unavailable, prefer any installed
optimizer (`cwebp`, `magick`); only `brew install` something after **asking the author**.

After it runs, **rewrite every reference** to the changed files: the frontmatter
`cover.image` and any inline `![...](...)` paths, swapping the old extension for `.webp`.
This is why compression runs before link/build checks.

### 5. Alt text (mechanical — auto-fill)

Every image needs alt text for accessibility and image SEO. For any image missing `alt`
(frontmatter cover or inline), write a concise, descriptive alt string into the markdown
based on the surrounding context and filename. Keep it factual, not keyword-stuffed.

### 6. Consistency checks (structural fixes applied; ambiguous ones reported)

- **Headings:** the H1 is the rendered title, so the body must start at `##` (H2) and not
  skip levels (no H2→H4). Fix obvious level mistakes; report anything structurally unclear.
- **Code fences:** every ```` ``` ```` block should declare a language (`disableHLJS:
  false` means it's highlighted). Flag bare fences.
- **Internal links & anchors (offline):** resolve `/newsletter/`, `/about/`, links to
  other posts, and in-page `#anchors` against the content tree. A broken internal link is
  a hard error — report it prominently.
- **External links:** probe with the bundled prober and classify honestly — a checker
  that cries wolf on every bot-blocked URL gets ignored:

  ```bash
  bash .claude/skills/publish-post/scripts/check_external_links.sh <post-file>
  ```

  Report `🔴 dead` (4xx/410/5xx/connection failure) vs `⚠️ unverified` (403/429/timeout —
  likely bot-blocking, e.g. LinkedIn) vs `✅ ok`.

### 7. SEO report (offline heuristic — report only)

No network, no API keys — fast and deterministic. Assess and report:

- **Primary keyword/topic** inferred from title + H2s + term frequency; what the post
  realistically targets and whether that intent is coherent.
- **Title & meta-description** fit for SERP (length, presence of the primary term).
- **Keyword placement:** does the primary term appear in the title, at least one H2, and
  the first paragraph?
- **Depth:** word count; flag thin content (rough floor ~600 words for a standalone post).
- **Image SEO:** alt-text coverage (post-fill), filenames, total page weight after
  compression.
- **Internal linking:** suggest 1–3 existing posts this could link to (improves topical
  authority); note if the post is an orphan.

End this section by pointing to the live-data follow-ups the author already has installed:
`claude-seo:seo-page` (single-URL deep analysis with real keyword volume/difficulty) and
`claude-seo:seo-content` (E-E-A-T / content-quality pass).

### 8. Grammar & prose (report only — never auto-edit)

List issues with line numbers and a suggested fix, grouped as: **typos/spelling**
(unambiguous, e.g. `Canges` → `Changes`), **grammar** (e.g. subject/verb, `out own` →
`our own`), and **clarity** (optional suggestions). Preserve the author's voice — offer,
don't impose.

### 9. Build verification (final gate)

Run a build and surface anything:

```bash
hugo --logLevel info --printPathWarnings 2>&1 | tail -40
```

Report errors and warnings (broken cover ref, missing resource, shortcode failure). A
clean build is the green light.

## Report structure

Print exactly this, filled in:

```
# Publish report: <post title>

## ✅ Applied automatically
- <frontmatter fields stamped, dates, taxonomy>
- <images compressed: N files, X MB → Y KB>
- <refs rewritten, alt filled, obsidian fixes, heading fixes>

## ⚠️ Needs your review
### Frontmatter / SEO
- <title/description length, new tags introduced>
### Links
- <dead / unverified external; broken internal>
### Grammar & prose
- <line N: issue → suggestion>

## 🔎 SEO assessment
- Targets: "<primary keyword>" | Title: <n> chars | Desc: <n> chars | Words: <n>
- <placement, depth, internal-linking, image weight findings>
- Follow up with `claude-seo:seo-page` for live keyword volume & difficulty.

## 🏗️ Build
- <clean | errors/warnings>
```
