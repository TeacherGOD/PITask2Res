#!/bin/bash

git init
echo В сторожке у каменных ворот въезда никого не было и дверь была отперта. > story.txt
git add .
git commit -m "initial commit"
git checkout -b feature_rain
echo Шел дождь >> story.txt
git add .
git commit -m "rain added"
git checkout main
git checkout -b hotfix_death
echo Пистолет был заряжен холостыми патронами >> story.txt
git add .
git commit -m "blank ammunition"
git checkout main
git merge hotfix_death
git checkout main
git checkout -b remove_post
echo Унесли столб >> story.txt
git add .
git commit -m "removed post"
git checkout main
git merge remove_post
git commit -m "merge conflict resolved"
git checkout -b release/1.0
git merge main
git tag -a 1.0 -m "Version 1.0"
git log --pretty=oneline --all > task2.txt
git diff HEAD~1 HEAD >> task2.txt
git log --graph >> task2.txt