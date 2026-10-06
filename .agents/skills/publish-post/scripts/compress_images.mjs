#!/usr/bin/env node
// Convert every raster image in a directory to WebP (q80), cap the longest edge at
// 1600px, replace the original in place, and print a JSON old->new path map on stdout so
// the caller can rewrite references. Run via:
//   node .../compress_images.mjs <dir>
// sharp is loaded from a local cache next to this script; if absent it is installed there
// once with `npm install --prefix` (no global install, nothing added to the blog repo).

import { readdir, stat, unlink } from "node:fs/promises";
import { join, extname, basename, dirname } from "node:path";
import { existsSync, mkdirSync } from "node:fs";
import { createRequire } from "node:module";
import { spawnSync } from "node:child_process";
import { fileURLToPath } from "node:url";

const MAX_EDGE = 1600;
const QUALITY = 80;
const SOURCE_EXT = new Set([".png", ".jpg", ".jpeg", ".tiff", ".tif"]);

const here = dirname(fileURLToPath(import.meta.url));
const cacheDir = join(here, ".cache");

function loadSharp() {
  // createRequire honors node_modules lookup (unlike ESM dynamic import), so resolution
  // from the cache dir finds a locally-installed sharp.
  const req = createRequire(join(cacheDir, "resolver.cjs"));
  if (!existsSync(join(cacheDir, "node_modules", "sharp"))) {
    mkdirSync(cacheDir, { recursive: true });
    console.error("installing sharp (one-time, local to skill)...");
    const r = spawnSync(
      "npm",
      ["install", "--prefix", cacheDir, "sharp", "--no-audit", "--no-fund", "--silent"],
      { stdio: "inherit" }
    );
    if (r.status !== 0) {
      console.error("failed to install sharp; install an image optimizer or run: npm install --prefix '" + cacheDir + "' sharp");
      process.exit(1);
    }
  }
  return req("sharp");
}

const dir = process.argv[2];
if (!dir || !existsSync(dir)) {
  console.error(`usage: compress_images.mjs <images-dir>  (got: ${dir || "nothing"})`);
  process.exit(2);
}

const sharp = loadSharp();
const entries = await readdir(dir);
const map = {};
const report = [];

for (const name of entries) {
  const ext = extname(name).toLowerCase();
  if (!SOURCE_EXT.has(ext)) continue;
  const inPath = join(dir, name);
  const outName = basename(name, extname(name)) + ".webp";
  const outPath = join(dir, outName);

  const before = (await stat(inPath)).size;
  const img = sharp(inPath);
  const meta = await img.metadata();
  if (meta.width > MAX_EDGE || meta.height > MAX_EDGE) {
    img.resize({ width: MAX_EDGE, height: MAX_EDGE, fit: "inside", withoutEnlargement: true });
  }
  await img.webp({ quality: QUALITY }).toFile(outPath);
  const after = (await stat(outPath)).size;

  if (inPath !== outPath) {
    await unlink(inPath);
    map[name] = outName; // relative names for easy ref-rewriting
  }
  report.push(`${name} -> ${outName}  ${(before / 1024).toFixed(0)}KB -> ${(after / 1024).toFixed(0)}KB`);
}

for (const line of report) console.error(line);
console.log(JSON.stringify(map, null, 2));
