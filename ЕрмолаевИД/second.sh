#!/bin/bash

git init second
cd second
ls
git checkout -b feature/1
vim file.md
git add .
git commit -m "Initial"
git checkout master
git merge feature/1
git checkout -b feature/2
vim file.md
add .
git commit "Add new style"
git commit -m "Add new style"
git checkout master
git merge feature/2
git checkout -b bugfix/1
vim file.md
git add .
git commit -m "Rename city"
git checkout master
git merge bugfix/1
git checkout -b "release/1.0.0"
git tag -a v1.0 -m "Release 1.0"
