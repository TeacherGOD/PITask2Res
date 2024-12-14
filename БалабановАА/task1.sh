#!/bin/bash
mkdir БалабановАА
cd БалабановАА
git init
echo "В парке под дождём гуляла Наташа Ростова." > story.txt
git add story.txt
git commit -m "Первый коммит: Начало истории о Наташе Ростовой."
git checkout -b develop
git checkout -b feature/add-rain
echo "Шёл дождь." >> story.txt
git add story.txt
git commit -m "Добавлено: шёл дождь."
git checkout develop
git merge feature/add-rain
git checkout -b release/v0.1
git merge develop
git tag -a v0.1 -m "Релиз версии 0.1: Глава о Наташе Ростовой"
git checkout main
git merge release/v0.1
echo "Git Log для Task 1:" > task1.txt
git log --pretty=oneline --all >> task1.txt
echo "Разница между последними коммитами:" >> task1.txt
git diff HEAD~1 HEAD >> task1.txt
echo "Графическая история репозитория:" >> task1.txt
git log --graph >> task1.txt