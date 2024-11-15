#!/bin/bash

git init
echo В сторожке у каменных ворот въезда никого не было и дверь была отперта. Дорожки сада уже заросли, и телята и лошади ходили по английскому парку. > story.txt
git add .
git commit -m "initial commit"
git checkout -b develop
git checkout -b feature_rain
echo Шел дождь >> story.txt
git add .
git commit -m "rain added"
git checkout develop
git merge feature_rain
git checkout -b hotfix_death
echo Пистолет был заряжен холостыми патронами >> story.txt
git add .
git commit -m "blank ammunition"
git checkout develop
git merge hotfix_death
git checkout -b feature_delete_post
echo Унесли столб >> story.txt
git add .
git commit -m "removed post"
git checkout develop
git merge feature_delete_post
git checkout -b release/1.0
git checkout main
git merge release/1.0
git tag -a 1.0 -m "Version 1.0"
git log --pretty=oneline --all > task1.txt
git diff HEAD~1 HEAD >> task1.txt
git log --graph >> task1.txt