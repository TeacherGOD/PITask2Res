#!/bin/bash

echo "Initial text" > story.txt
git add .
git commit -m "Initial commit"

git checkout -b develop

git checkout -b feature/feature-text-1
echo "Feature text 1" >> story.txt
git add .
git commit -m "feat: feature text 1"
git checkout develop
git merge feature/feature-text-1

git checkout -b fix/fix-text
echo "Fix text" >> story.txt
git add .
git commit -m "fix: fix text"
git checkout develop
git merge fix/fix-text

git checkout -b feature/feature-text-2
echo "Feature text 2" >> story.txt
git add .
git commit -m "feat: feature text 2"
git checkout develop
git merge feature/feature-text-2

git checkout -b release/v0.1
echo "Release v0.1 text" >> story.txt
git add .
git commit -m "release: release v0.1 text"
git checkout main
git merge release/v0.1

git tag v0.1

git log --pretty=oneline --all >> task1.txt
echo >> task1.txt

git diff HEAD~1 HEAD >> task1.txt
echo >> task1.txt

git log --graph >> task1.txt
echo >> task1.txt

