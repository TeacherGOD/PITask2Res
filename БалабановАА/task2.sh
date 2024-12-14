#!/bin/bash
mkdir БалабановАА_Task2
cd БалабановАА_Task2
git init
echo "В парке под дождём гуляла Наташа Ростова." > story.txt
git add story.txt
git commit -m "Первый коммит: Начало истории о Наташе Ростовой."
git checkout -b change1
echo "Шёл дождь." >> story.txt
git add story.txt
git commit -m "Добавлено: шёл дождь."
git checkout main
git merge change1
git checkout -b hotfix/empty-bullet
echo "Пистолет зарядили холостыми." >> story.txt
git add story.txt
git commit -m "Холостые патроны для пистолета."
git checkout main
git merge hotfix/empty-bullet
git checkout -b feature/change-shoes
echo "У Пьера Безухова новые туфли." >> story.txt
git add story.txt
git commit -m "Поменяны туфли у Пьера."
git checkout main
git merge feature/change-shoes
echo "Git Log для Task 2:" > task2.txt
git log --pretty=oneline --all >> task2.txt
echo "Разница между последними коммитами:" >> task2.txt
git diff HEAD~1 HEAD >> task2.txt
echo "Графическая история репозитория:" >> task2.txt
git log --graph >> task2.txt