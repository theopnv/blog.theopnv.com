#!/usr/bin/env bash
# Probe external links found in a markdown file and classify each honestly:
#   ok         -> 2xx/3xx
#   dead       -> 404/410/4xx (excl. 403/429) or 5xx or connection failure
#   unverified -> 403/429/000(timeout) — usually bot-blocking, not a real 404
#
# A checker that reports every Cloudflare/LinkedIn block as "dead" gets ignored, so the
# distinction matters. Usage: check_external_links.sh <markdown-file>

set -euo pipefail
file="${1:?usage: check_external_links.sh <markdown-file>}"

# Extract http(s) URLs from markdown links and bare URLs, dedupe.
urls=$(grep -oE 'https?://[^][() <>"'"'"'`]+' "$file" | sed 's/[.,]*$//' | sort -u)

[ -z "$urls" ] && { echo "no external links found"; exit 0; }

while IFS= read -r url; do
  code=$(curl -s -o /dev/null -w '%{http_code}' -A 'Mozilla/5.0 (publish-post link check)' \
    -L --max-time 12 --retry 1 -I "$url" 2>/dev/null || echo 000)
  # Some servers reject HEAD; retry with GET before judging.
  if [ "$code" = "000" ] || [ "$code" = "405" ]; then
    code=$(curl -s -o /dev/null -w '%{http_code}' -A 'Mozilla/5.0 (publish-post link check)' \
      -L --max-time 12 "$url" 2>/dev/null || echo 000)
  fi
  case "$code" in
    2*|3*)        echo "ok         $code  $url" ;;
    403|429)      echo "unverified $code  $url" ;;
    000)          echo "unverified TIMEOUT  $url" ;;
    *)            echo "dead       $code  $url" ;;
  esac
done <<< "$urls"
