#!/bin/bash

git init first
ls
cd first
vim file.md
git add .
git commit -m "Initial"
git checkout -b develop
git checkout -b feature/new-style
vim file.md
git add .
git commit -m "Add new style"
git checkout main
git branch
git checkout master
git checkout -b bugfix/1
vim file.md
git add .
git commit -m "Rename city"
git checkout master
git merge bugfix/1
git status
clear
git branch
git merge feature/new-style
vim file.md
git add .
git commit -m "Merge"
git status
git checkout -m "release/1.0.0"
git checkout -b "release/1.0.0"
git tag -a v1.0 -m "Release 1.0"
