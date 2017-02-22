#!/bin/bash

echo -e "\033[0;32mDeploying website source to GitHub...\033[0m"

# Build the project.
hugo -t hyde-y

# Add changes to git.
git add -A

# Commit changes.
msg="Rebuilding site `date`"
if [ $# -eq 1 ]
      then msg="$1"
fi
git commit -m "$msg"

# Push source repos.
git push origin master

# Push the build repos.
echo -e "\033[0;32mDeploying website to GitHub...\033[0m"
cd public && git add --all && git commit -m "$msg" && git push origin master && cd ..
