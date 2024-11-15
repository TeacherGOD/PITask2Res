#!/bin/bash

git init

echo "В сторожке у каменных ворот въезда никого не было и дверь была отперта." > story.txt
git add story.txt
git commit -m "Initial commit"

git checkout -b feature/rain
echo "Шел дождь." >> story.txt
git add story.txt
git commit -m "Add rain"
git checkout main
git merge feature/rain

git checkout -b feature/bullets
echo "У Пьера в пистолете холосты патроны." >> story.txt
git add story.txt
git commit -m "Change bullets in Pierre pistol"
git checkout main
git merge feature/bullets

git checkout -b feature/shoes
echo "Пьер сменил скользкие туфли на надежные сапоги." >> story.txt
git add story.txt
git commit -m "Update footwear"
git checkout main
git merge feature/shoes

git checkout -b feature/pole
echo "На месте старого столба разбит небольшой цветник." >> story.txt
git add story.txt
git commit -m "Remove dangerous pole"
git checkout main
git merge feature/pole

git checkout -b release/v0.1
git merge main
git tag -a v0.1 -m "Version v0.1"

git log --pretty=oneline  --all > task2.txt
git diff HEAD~1 HEAD >> task2.txt
git log --graph >> task2.txt
