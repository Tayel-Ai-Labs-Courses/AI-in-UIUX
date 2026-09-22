#!/usr/bin/env bash
# Create a student submission folder from the template.
# Usage: ./scripts/new-submission.sh "ahmed-hassan"

set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if [ $# -ne 1 ]; then
  echo "usage: $0 <student-name>" >&2
  echo "example: $0 ahmed-hassan" >&2
  exit 1
fi

# lowercase, spaces and underscores to hyphens, drop anything else
name="$(printf '%s' "$1" \
  | tr '[:upper:]' '[:lower:]' \
  | tr ' _' '--' \
  | sed 's/[^a-z0-9-]//g; s/-\{2,\}/-/g; s/^-//; s/-$//')"

if [ -z "$name" ]; then
  echo "error: '$1' leaves nothing usable as a folder name" >&2
  exit 1
fi

dest="$root/submissions/$name"

if [ -e "$dest" ]; then
  echo "error: $dest already exists — nothing was changed" >&2
  exit 1
fi

cp -R "$root/submissions/_TEMPLATE" "$dest"

echo "created submissions/$name"
echo
echo "next:"
echo "  1. open submissions/$name/README.md and fill in your name"
echo "  2. read brief/01-brief.md"
echo "  3. pick your user before you draw anything"
