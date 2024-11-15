#!/bin/bash

git init

echo "В сторожке у каменных ворот въезда никого не было и дверь была отперта." > story.txt
git add story.txt
git commit -m "Initial commit"

git checkout -b develop

git checkout -b feature/rain
echo "Шел дождь." >> story.txt
git add story.txt
git commit -m "Add rain"

git checkout develop
git merge feature/rain
git checkout -b hotfix/blank-bullets
echo "У Пьера в пистолете холостые патроны." >> story.txt
git add story.txt
git commit -m "Replace live ammunition with blanks."

git checkout develop
git merge hotfix/blank-bullets
git checkout -b feature/shoes
echo "Пьер сменил скользкие туфли на надежные сапоги." >> story.txt
git add story.txt
git commit -m "Update footwear"

git checkout develop
git merge feature/shoes
git checkout -b feature/remove-pole
echo "На месте старого столба был разбит небольшой цветник" >> story.txt
git add story.txt
git commit -m "Remove dangerous pole"

git checkout develop
git merge feature/remove-pole
git checkout -b release/v0.1

git checkout main
git merge release/v0.1
git tag -a v0.1 -m "Version 0.1"

git checkout develop
git merge release/v0.1

git log --pretty=oneline --all > task1.txt
git diff HEAD~1 HEAD >> task1.txt
git log --graph >> task1.txt
