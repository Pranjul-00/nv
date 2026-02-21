#!/bin/bash
# Move to the nvim config directory
cd /home/drogon/.config/nvim

# Check if there are changes
if [[ -n $(git status -s) ]]; then
    git add .
    git commit -m "Auto-commit: $(date '+%Y-%m-%d %H:%M:%S')"
    git push origin $(git branch --show-current)
fi
