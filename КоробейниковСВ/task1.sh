#!/bin/bash

git init
echo "Сквозь заросшие дорожки сада пробирались телята, а ветер хлопал открытой дверью сторожки у каменных ворот." > story.txt
git add story.txt
git commit -m "Initial commit: Заросший сад и сторожка"

git checkout -b develop

git checkout -b feature/rain_scene
echo "На сад опустился дождь, и Наташа Ростова медленно шла по мокрым дорожкам, задумавшись о прошлом." >> story.txt
git add story.txt
git commit -m "Feature: сцена с дождём и Наташей Ростовой"
git checkout develop
git merge feature/rain_scene

git checkout -b fix/pierre_pistol
echo "Выяснилось, что пистолет у Пьера Безухова был заряжен холостыми, предотвращая трагедию." >> story.txt
git add story.txt
git commit -m "Fix: исправлено заряжение пистолета Пьера холостыми"
git checkout develop
git merge fix/pierre_pistol

git checkout -b feature/pierre_shoes
echo "Пьер Безухов наконец сменил скользкие туфли на удобные ботинки." >> story.txt
git add story.txt
git commit -m "Feature: Пьер меняет туфли для безопасности"
git checkout develop
git merge feature/pierre_shoes

git checkout -b feature/remove_column
echo "Столб в парке, ставший причиной многих бед, был демонтирован." >> story.txt
git add story.txt
git commit -m "Feature: убран злополучный столб"
git checkout develop
git merge feature/remove_column

git checkout -b release/v0.1
git checkout main
git merge release/v0.1

git tag -a v0.1 -m "Release v0.1: исправления и новые детали истории"
