git init

:: Создаем первый коммит в основной ветке
echo Уолтер Уайт варил суп, чтобы прокормить семью. > story.txt
git add story.txt
git commit -m "Initial commit"

:: Создаем ветку develop
git checkout -b develop

:: Создаем feature ветки и мержим их в develop
git checkout -b feature/family
echo У Уолтера была жена Скайлер, сын Уолтер мл. и дочь Холли. >> story.txt
git add story.txt
git commit -m "Added family description"
git checkout develop
git merge feature/family

git checkout -b feature/soup
echo Его суп был самым вкусным в районе, поэтому у Уолтера было много доброжелательных друзей. >> story.txt
git add story.txt
git commit -m "Added soup description"
git checkout develop
git merge feature/soup

:: Создаем ветку release и мержим в main
git checkout -b release/1.0
git checkout main
git merge develop
