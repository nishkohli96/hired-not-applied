#!/usr/bin/env bash
# One command to release: sync shared files into every plugin, then build
# dist/hired-not-applied.zip containing the three plugin folders as they are,
# plus README.md and resume-template.md at the top level.
# Usage: ./scripts/build.sh
set -euo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
plugins=(job-radar job-decode networking)

bash "$root/scripts/sync-shared.sh"

python3 - "$root" "${plugins[@]}" <<'PY'
import os, sys, zipfile

root, plugins = sys.argv[1], sys.argv[2:]
out = os.path.join(root, "dist", "hired-not-applied.zip")
os.makedirs(os.path.dirname(out), exist_ok=True)
SKIP_DIRS = {".git", "node_modules"}
SKIP_FILES = {".DS_Store"}

count = 0
with zipfile.ZipFile(out, "w", zipfile.ZIP_DEFLATED) as z:
    z.write(os.path.join(root, "README.md"), "README.md")
    z.write(os.path.join(root, "shared", "skills", "resume-setup", "references", "resume-template.md"), "resume-template.md")
    count += 2
    for p in plugins:
        base = os.path.join(root, p)
        for dirpath, dirs, files in os.walk(base):
            dirs[:] = sorted(d for d in dirs if d not in SKIP_DIRS)
            for fn in sorted(files):
                if fn in SKIP_FILES:
                    continue
                src = os.path.join(dirpath, fn)
                z.write(src, os.path.relpath(src, root))
                count += 1

print(f"built dist/hired-not-applied.zip: {count} files (README.md, resume-template.md, {', '.join(plugins)})")
PY
