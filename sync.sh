#!/bin/bash
set -e

git add .
git commit -m "🔄 sync from codespace at $(date '+%Y-%m-%d %H:%M:%S')" || echo "No changes to commit"
git pull --rebase origin $(git branch --show-current)
git push origin $(git branch --show-current)
