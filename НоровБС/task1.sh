#!/bin/bash

git init

echo "На восточной окраине Стамбула, в тенистом дворике старинного дома, стояла девочка, сжимая в руках сломанную флейту." > story.txt
git add story.txt
git commit -m "Initial commit: начало истории"
 
git checkout -b develop
git checkout -b feature/rainy_day
echo "Начался мелкий дождь, капли которого барабанили по старым крышам." >> story.txt
git add story.txt
git commit -m "Добавлена сцена с дождем"
git checkout develop
git merge feature/rainy_day 

git checkout -b feature/discovery
echo "Она нашла в траве древний турецкий амулет, испещренный загадочными символами." >> story.txt
git add story.txt
git commit -m "Добавлена находка амулета"
git checkout develop
git merge feature/discovery 

git checkout -b release/v0.1
echo "Конец главы 1: дождь продолжал идти, а амулет оставался загадкой." >> story.txt
git commit -m "Финал релиз v0.1"
git add .
git commit -m "Финал релиз v0.1"

git checkout main
git merge release/v0.1
git tag v0.1

git log --pretty=oneline --all > task1.txt
git diff HEAD~1 HEAD >> task1.txt
git log --graph >> task1.txt