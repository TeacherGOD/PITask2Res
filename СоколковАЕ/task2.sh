#!/bin/bash

git checkout -b task2-feature-text-1
echo "Task 2 feature text 1" >> story.txt
git add .
git commit -m "feat: task2 feature text 1"
git checkout main
git merge task2-feature-text-1
git branch -d task2-feature-text-1

git checkout -b task2-fix-text
echo "Task 2 fix text" >> story.txt
git add .
git commit -m "fix: task2 fix text"
git checkout main
git merge task2-fix-text
git branch -d task2-fix-text

git checkout -b task2-feature-text-2
echo "Task 2 feature text 2" >> story.txt
git add .
git commit -m "feat: task2 feature text 2"
git checkout main
git merge task2-feature-text-2
git branch -d task2-feature-text-2

git checkout -b task2-v1.1
echo "Task 2 release v1.1 text" >> story.txt
git add .
git commit -m "release: task2 release v1.1 text"
git checkout main
git merge task2-v1.1
git branch -d task2-v1.1

git tag v1.1

git log --pretty=oneline --all >> task2.txt
echo >> task2.txt

git diff HEAD~1 HEAD >> task2.txt
echo >> task2.txt

git log --graph >> task2.txt
echo >> task2.txt

