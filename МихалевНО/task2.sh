# initialization
git init

echo "В сторожке у каменных ворот въезда никого не было и дверь была отперта" > story.txt
git add story.txt
git commit -m "Начальный коммит с историей"


# feature 1
git checkout -b raining
echo "шел дождь" >> story.txt
git add story.txt
git commit -m "Дописал доджь к истории"
git checkout master
git merge raining
git branch -d raining


# feature 2
git checkout -b death
echo "Наташа Ростова умерла, продолжение невозможно" >> story.txt
git add story.txt
git commit -m "Добавил смерть персонажа"
git checkout master
git merge death
git branch -d death

# hotfix 1
git checkout -b remove_bullets
echo "Зарядить пистолет холостыми" >> story.txt
git add story.txt
git commit -m "Попытка исправить смерть персонажа"
git checkout master
git merge remove_bullets
git branch -d remove_bullets


# feature 3
git checkout -b shoes
echo "Поменять туфли" >> story.txt
git add story.txt
git commit -m "Заменил скользкие туфли"
git checkout master
git merge shoes
git branch -d shoes


# feature 4
git checkout -b pillar
echo "Решили убрать столб" >> story.txt
git add story.txt
git commit -m "Убрал столб"
git checkout master
git merge pillar
git branch -d pillar


# finalization
git checkout -b release/v0.1
git tag -a v0.1 -m "Release version 0.1"

# report
git log --pretty=oneline --all > task2.txt
git diff d00e9aa08779b024e29ce1f8b2e00588433f9c36 f743e093124b8dc47fbeaec01100e0fca513eab0 >> task2.txt
git log --graph >> task2.txt



