#!/usr/bin/env bash
# Print the path of the user's saved resume.md for hired-not-applied skills, or exit 1 if none.
# Synced from /shared by scripts/sync-shared.sh.
set -u
candidates=(
  "${HIRED_NOT_APPLIED_RESUME:-}"
  "$PWD/resume.md"
  "$PWD/career/resume.md"
  "$HOME/.hired-not-applied/resume.md"
)
for f in "${candidates[@]}"; do
  if [ -n "$f" ] && [ -f "$f" ]; then
    echo "$f"
    exit 0
  fi
done
echo "NO_RESUME_FOUND" >&2
exit 1
