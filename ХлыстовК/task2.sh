#!/bin/bash

git init
echo "В сторожке у каменных ворот въезда никого не было и дверь была отперта." > story.txt
git add story.txt
git commit -m "Initial commit: начало истории"

git checkout -b rain
echo "Шёл дождь. Наташа Ростова гуляла по мокрым дорожкам." >> story.txt
git add story.txt
git commit -m "Добавлено: дождь и прогулка Наташи Ростовой"
git checkout main
git merge rain

git checkout -b pistol-fix
echo "Пистолет у Пьера Безухова был заряжен холостыми." >> story.txt
git add story.txt
git commit -m "Исправлено: пистолет заряжен холостыми"
git checkout main
git merge pistol-fix

git checkout -b shoes
echo "Пьер Безухов сменил свои скользкие туфли на удобные ботинки." >> story.txt
git add story.txt
git commit -m "Добавлено: Пьер меняет туфли"
git checkout main
git merge shoes

git checkout -b remove-pillar
echo "Столб в парке был убран для предотвращения несчастных случаев." >> story.txt
git add story.txt
git commit -m "Удалён столб в парке"
git checkout main
git merge remove-pillar
