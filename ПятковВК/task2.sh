#!/bin/bash

git init
echo "В сторожке у каменных ворот въезда никого не было и дверь была отперта. \nДорожки сада уже заросли, и телята и лошади ходили по английскому парку." > story.txt
git add story.txt
git commit -m "Начало истории"
git checkout -b feature/rain
echo "Шёл дождь." >> story.txt
git add story.txt
git commit -m "Добавлена история о дожде"
git checkout main
git merge feature/rain
git branch -d feature/rain
git checkout -b feature/natasha-death
echo "Наташа Ростова умерла, продолжение невозможно" >> story.txt
git add story.txt
git commit -m "Сообщение об ошибке: Наташа Ростова умерла, продолжение невозможно"
git checkout main
git merge feature/natasha-death
git branch -d feature/natasha-death
git checkout -b feature/blank-ammo
echo "Зарядить пистолет холостыми." >> story.txt
git add story.txt
git commit -m "Проблема решена: холостые патроны"
git checkout main
git merge feature/blank-ammo
git branch -d feature/blank-ammo
git checkout -b feature/remove-pillar
echo "Столб убран." >> story.txt
git add story.txt
git status
git commit -m "Столб убран: обновление истории"
git checkout main
git merge feature/remove-pillar
git branch -d feature/remove-pillar
git checkout release/v0.1
git checkout -b release/v0.1
git merge main