#!/bin/sh

set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

hugo

cd public

git add .

msg="Update $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

git push origin main