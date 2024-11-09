#!/bin/bash

git init

echo "В сторожке у каменных ворот въезда никого не было и дверь была отперта." > story.txt
git add story.txt
git commit -m "initial commit: начало истории"


git checkout -b add-rain
echo "Шёл дождь." >> story.txt
git add story.txt
git commit -m "feat: добавлен дождь"
git checkout master
git merge add-rain
git branch -d add-rain


git checkout -b fix-no-bullets
echo "Пистолет заряжен холостыми." >> story.txt
git add story.txt
git commit -m "hotfix: пистолет заряжен холостыми"
git checkout master
git merge fix-no-bullets
git branch -d fix-no-bullets


git checkout -b add-non-slip-shoes
echo "Пьер надел нескользящие туфли." >> story.txt
git add story.txt
git commit -m "feat: нескользящие туфли для Пьера"
git checkout master
git merge add-non-slip-shoes
git branch -d add-non-slip-shoes


git checkout -b add-finale
echo "В финале истории поручик Ржевский облокачивается на столб." >> story.txt
git add story.txt
git commit -m "release: Финальная версия истории"
git checkout master
git merge add-finale
git branch -d add-finale


git tag v0.1
