#!/usr/bin/env bash
# Copy files from /shared into every plugin so each plugin stays
# self-contained when installed.
# Run after editing anything under /shared:  ./scripts/sync-shared.sh
set -euo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
plugins=(job-radar job-decode networking)

for p in "${plugins[@]}"; do
  cp -R "$root/shared/." "$root/$p/"
  echo "synced shared/ -> $p/"
done
