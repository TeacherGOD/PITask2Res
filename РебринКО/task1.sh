#!/bin/bash

git init
echo В сторожке у каменных ворот въезда никого не было и дверь была отперта. > story.txt
echo Дорожки сада уже заросли, и телята и лошади ходили по английскому парку. >> story.txt
echo Наташа Ростова гуляла под дождём по парку >> story.txt
git add -A
git commit -m "initial commit"
git tag -a 0.1 -m "version 0.1"
git branch develop
git checkout -b feature/feature1
echo шёл дождь >> story.txt
git add -A
git commit -m "feature 1 work"
git checkout develop
git merge feature/feature1
git branch -d feature/feature1
git checkout main
git merge develop
git tag -a 0.2 -m "version 0.2"
git checkout -b hotfix/hotfix1
echo Зарядить пистолет холостыми >> story.txt
git add -A
git commit -m "hotfix 1 work"
git checkout main
git merge hotfix/hotfix1
git checkout develop
git merge hotfix/hotfix1
git branch -d hotfix/hotfix1
git checkout -b feature/feature2
echo Поменять туфли >> story.txt
git add -A
git commit -m "feature 2 work"
git checkout develop
git checkout -b feature/feature3
echo убрать столб >> story.txt
git add -A
git commit -m "feature 3 work"
git checkout develop
git merge feature/feature3
git branch -d feature/feature3
git checkout -b release/release0.1
git checkout main
git merge release/release0.1
git tag -a release_v0.1 -m "release 0.1"
git checkout develop
git merge release/release0.1
git branch -d release/release0.1
git checkout main
git log --pretty=oneline --all > task1.txt
echo "-------------------------------------" >> task1.txt
git diff HEAD~1 HEAD >> task1.txt
echo "-------------------------------------" >> task1.txt
git log --graph >> task1.txt