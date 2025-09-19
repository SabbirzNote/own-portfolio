#!/bin/bash

# Check for commit message
if [ -z "$1" ]; then
  echo "Usage: ./autopush.sh \"Your commit message\"" commit message koi beng..
  exit 1
fi

COMMIT_MSG="$1"

#show the status
echo "Here is what's changed..."
git status


# Add all changes
git add .

# Commit with message
git commit -m "$COMMIT_MSG"

# Push to the current branch
git push origin "$(git rev-parse --abbrev-ref HEAD)"

echo "✅ Changes pushed to GitHub!"

