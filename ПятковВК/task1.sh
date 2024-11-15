#!/bin/bash

git init
echo "В сторожке у каменных ворот въезда никого не было и дверь была отперта. /nДорожки сада уже заросли, и телята и лошади ходили по английскому парку." > story.txt
cat story.txt
git commit -m "Начало истории"
git add story.txt
git commit -m "Начало истории"
git checkout -b develop
git checkout -b feature/rain
echo "Шёл дождь" >> story.txt
git add story.txt
git commit -m "Добавлена часть о дожде"
git checkout develop
git merge feature/rain
git branch -d feature/rain
git checkout -b hotfix/natasha-death
echo "Наташа Ростова умерла, продолжение невозможно" >> story.txt
git add story.txt
git commit -m "Сообщение об ошибке: Наташа Ростова умерла, продолжение невозможно"
git checkout develop
git merge hotfix/natasha-death
git branch -d hotfix/natasha-death
git checkout -b hotfix/blank-ammo
echo "Зарядить пистолет холостыми." >> story.txt
git add story.txt
git commit -m "Проблема решена: холостые патроны"
git checkout develop
git merge hotfix/blank-ammo
git branch -d hotfix/blank-ammo
git checkout -b feature/remove-pillar
echo "Столб убран." >> story.txt
git add story.txt
git commit -m "Столб убран: обновление истории"
git checkout -b release/v0.1
git merge feature/remove-pillar
git branch -d feature/remove-pillar
git checkout main
git merge release/v0.1
git tag -a v0.1 -m "Релиз версии 0.1"
git branch -d release/v0.1
history > task1.sh
history 100 > task.sh