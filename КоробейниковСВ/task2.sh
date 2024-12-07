#!/bin/bash

git init
echo "Парк, когда-то цветущий, теперь превратился в поле для прогулок скота." > story.txt
git add story.txt
git commit -m "Initial commit: Упадок парка"

git checkout -b scene-rain
echo "Дождь шёл тихо, заполняя парк мелкими лужами, по которым шла Наташа Ростова." >> story.txt
git add story.txt
git commit -m "Scene: описание дождя и прогулки Наташи"
git checkout master
git merge scene-rain

git checkout -b fix-pistol
echo "После инцидента выяснилось, что пистолет был заряжен холостыми патронами." >> story.txt
git add story.txt
git commit -m "Fix: холостые патроны для пистолета Пьера"
git checkout master
git merge fix-pistol

git checkout -b add-shoes
echo "Пьер заменил свои скользкие туфли на прочные ботинки." >> story.txt
git add story.txt
git commit -m "Enhancement: Пьер сменил обувь для безопасности"
git checkout master
git merge add-shoes

git checkout -b remove-column
echo "Опасный столб в парке был убран, чтобы избежать новых проблем." >> story.txt
git add story.txt
git commit -m "Change: убрали столб, который мешал героям"
git checkout master
git merge remove-column
