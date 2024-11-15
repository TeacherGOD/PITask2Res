#!/bin/bash

git init

echo "В сторожке у каменных ворот въезда никого не было и дверь была отперта." > story.txt
git add story.txt
git commit -m "initial commit"

git checkout -b develop

git checkout -b feat/rain
echo "Шёл дождь." >> story.txt
git add story.txt
git commit -m "feat: добавлен дождь"
git checkout develop
git merge feat/rain

git checkout -b hotfix/no_bullets
echo "Пистолет заряжен холостыми." >> story.txt
git add story.txt
git commit -m "hotfix: пистолет заряжен холостыми"
git checkout develop
git merge hotfix/no_bullets

git checkout -b feat/new_shoes
echo "Пьер надел нескользящие туфли." >> story.txt
git add story.txt
git commit -m "feat: нескользящие туфли для Пьера"
git checkout develop
git merge feat/new_shoes

git checkout -b release/v0.1
echo "В финале истории поручик Ржевский облокачивается на столб." >> story.txt
git add story.txt
git commit -m "release: Финальная версия истории"
git checkout ГришинСА
git merge release/v0.1

git tag v0.1

git log --pretty=oneline --all
git log --graph

git log -2
git diff 7cccc3467a209b9c2544f6cf8d2a953acd11b95c 3e0eb11517b921d20f3a4e0e9d876b4fa5bbf895


