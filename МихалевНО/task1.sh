# initialization
git init

echo "В сторожке у каменных ворот въезда никого не было и дверь была отперта" > story.txt
git add story.txt
git commit -m "Начальный коммит с историей"

git branch develop
git checkout develop


# feature 1
git checkout -b feature/raining
echo "шел дождь" >> story.txt
git add story.txt
git commit -m "Дописал доджь к истории"
git checkout develop
git merge feature/raining
git branch -d feature/raining


# feature 2
git checkout -b feature/death
echo "Наташа Ростова умерла, продолжение невозможно" >> story.txt
git add story.txt
git commit -m "Добавил смерть персонажа"
git checkout develop
git merge feature/death
git branch -d feature/death

# hotfix 1
git checkout -b hotfix/remove_bullets
echo "Зарядить пистолет холостыми" >> story.txt
git add story.txt
git commit -m "Попытка исправить смерть персонажа"
git checkout develop
git merge hotfix/remove_bullets
git branch -d hotfix/remove_bullets


# feature 3
git checkout -b feature/shoes
echo "Поменять туфли" >> story.txt
git add story.txt
git commit -m "Заменил скользкие туфли"
git checkout develop
git merge feature/shoes
git branch -d feature/shoes


# feature 4
git checkout -b feature/pillar
echo "Решили убрать столб" >> story.txt
git add story.txt
git commit -m "Убрал столб"
git checkout develop
git merge feature/pillar
git branch -d feature/pillar


# finalization
git checkout -b release/v0.1
git merge develop

git checkout master
git merge develop
git tag -a v0.1 -m "Release version 0.1"


# report
git log --pretty=oneline --all > task1.txt
git diff d00e9aa08779b024e29ce1f8b2e00588433f9c36 f743e093124b8dc47fbeaec01100e0fca513eab0 >> task1.txt
git log --graph >> task1.txt



