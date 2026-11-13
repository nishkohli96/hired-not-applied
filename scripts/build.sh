#!/usr/bin/env bash
# One command to release: sync shared files into every plugin, then build
# dist/hired-not-applied.zip with every skill from every plugin in one bundle,
# plus the README and the resume template at the top level.
# Usage: ./scripts/build.sh
set -euo pipefail
root="$(cd "$(dirname "$0")/.." && pwd)"
plugins=(job-radar job-decode networking)

bash "$root/scripts/sync-shared.sh"

python3 - "$root" "${plugins[@]}" <<'PY'
import hashlib, os, sys, zipfile

root, plugins = sys.argv[1], sys.argv[2:]
out = os.path.join(root, "dist", "hired-not-applied.zip")
os.makedirs(os.path.dirname(out), exist_ok=True)

SKIP_DIRS = {".git", "node_modules", ".claude-plugin"}
SKIP_FILES = {".DS_Store"}
entries = {}  # archive path -> (source path, sha1)

def sha(path):
    with open(path, "rb") as f:
        return hashlib.sha1(f.read()).hexdigest()

def add(arc, src):
    h = sha(src)
    if arc in entries and entries[arc][1] != h:
        sys.exit(f"CONFLICT: {arc} differs between plugins ({entries[arc][0]} vs {src})")
    entries.setdefault(arc, (src, h))

for p in plugins:
    base = os.path.join(root, p)
    for sub in ("skills", "references", "scripts"):
        top = os.path.join(base, sub)
        if not os.path.isdir(top):
            continue
        for dirpath, dirs, files in os.walk(top):
            dirs[:] = [d for d in dirs if d not in SKIP_DIRS]
            for fn in files:
                if fn in SKIP_FILES:
                    continue
                src = os.path.join(dirpath, fn)
                add(os.path.relpath(src, base), src)

add("README.md", os.path.join(root, "README.md"))
add("resume-template.md", os.path.join(root, "shared", "skills", "resume-setup", "references", "resume-template.md"))

with zipfile.ZipFile(out, "w", zipfile.ZIP_DEFLATED) as z:
    for arc in sorted(entries):
        z.write(entries[arc][0], arc)

skills = sorted({a.split("/")[1] for a in entries if a.startswith("skills/") and a.count("/") >= 2})
print(f"built dist/hired-not-applied.zip: {len(entries)} files, {len(skills)} skills")
PY
