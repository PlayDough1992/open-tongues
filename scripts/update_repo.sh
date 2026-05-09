#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   ./scripts/update_repo.sh "Your commit message"
# Optional:
#   BRANCH=main ./scripts/update_repo.sh "Message"

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "Error: this script must run inside a git repository."
  exit 1
fi

repo_root="$(git rev-parse --show-toplevel)"
cd "$repo_root"

branch="${BRANCH:-main}"
message="${1:-chore: update content $(date '+%Y-%m-%d %H:%M:%S')}"

if [[ -z "$(git status --porcelain)" ]]; then
  echo "No changes detected. Nothing to commit."
  exit 0
fi

git add -A
git commit -m "$message"
git push origin "$branch"

echo "Done. Changes pushed to origin/$branch"
