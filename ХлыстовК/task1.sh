#!/bin/bash

git init
echo "В сторожке у каменных ворот въезда никого не было и дверь была отперта. Дорожки сада уже заросли, и телята и лошади ходили по английскому парку." > story.txt
git add story.txt
git commit -m "Initial commit: начало истории"

git checkout -b develop

git checkout -b feature/dzhd
echo "Шёл дождь. Наташа Ростова медленно гуляла по мокрым дорожкам." >> story.txt
git add story.txt
git commit -m "Feature: Наташа Ростова гуляет под дождём"
git checkout develop
git merge feature/dzhd

git checkout -b hotfix/pistol
echo "Пистолет у Пьера Безухова был заряжен холостыми. Смерть Наташи предотвратили." >> story.txt
git add story.txt
git commit -m "Hotfix: заряжаем пистолет холостыми"
git checkout develop
git merge hotfix/pistol

git checkout -b feature/shoes
echo "Пьер Безухов сменил свои скользкие туфли на удобные ботинки." >> story.txt
git add story.txt
git commit -m "Feature: Пьер меняет туфли"
git checkout develop
git merge feature/shoes

git checkout -b feature/remove-pillar
echo "Столб в парке был демонтирован для предотвращения несчастных случаев." >> story.txt
git add story.txt
git commit -m "Feature: Убираем столб"
git checkout develop
git merge feature/remove-pillar

git checkout -b release/v0.1

git checkout main
git merge release/v0.1
git tag -a v0.1 -m "Release v0.1: исправления и новые функции"
