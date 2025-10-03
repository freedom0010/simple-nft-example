#!/bin/bash
# 一键同步到远程仓库

git add .
git commit -m "🔄 sync from codespace at $(date '+%Y-%m-%d %H:%M:%S')"
git push origin $(git branch --show-current)
