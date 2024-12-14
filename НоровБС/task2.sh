git init

echo "На восточной окраине Стамбула, в тенистом дворике старинного дома, стояла девочка, сжимая в руках сломанную флейту." > story.txt
git add story.txt
git commit -m "Начало истории"
git checkout -b rainy-day 

git chechout main
git checkout main
git checkout rainy-day
echo "Начался мелкий дождь, капли которого барабанили по старым крышам." >> story.txt
git add story.txt
git commit -m "Добавлена сцена с дождем"
git checkout main
git merge rainy-day
git branch -d rainy-day 

git chechout -b discovery
git checkout -b discovery
echo "Она нашла в траве древний турецкий амулет, испещренный загадочными символами." >> story.txt
git add story.txt
git commit -m "Добавлена находка амулета"
git checkout main
git merge discovery
git branch -d discovery 

git checkout -b plot-twist
echo "Амулет начал странно светиться, а в воздухе зазвучала мелодия, напоминающая старинные турецкие напевы." >> story.txt
git add story.txt
git commit -m "Амулет издает мелодию"
git checkout main
git merge plot-twist
git branch -d plot-twist
git tag v0.2

git log --pretty=oneline --all > task2.txt
git diff HEAD~1 HEAD >> task2.txt
git log --graph >> task2.txt


