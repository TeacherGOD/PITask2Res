git init

:: Создаем первый коммит в основной ветке
echo Уолтер Уайт варил суп, чтобы прокормить семью. > story.txt
git add story.txt
git commit -m "Initial commit"

:: Создаем временную ветку
git checkout -b add-family-desc
echo У Уолтера была жена Скайлер, сын Уолтер мл. и дочь Холли. >> story.txt
git add story.txt
git commit -m "Added family description"
git checkout main
:: Удаляем после мерджа с main
git merge add-family-desc
git branch -d add-family-desc

:: Создаем временную ветку
git checkout -b add-soup-desc
echo Его суп был самым вкусным в районе, поэтому у Уолтера было много доброжелательных друзей. >> story.txt
git add story.txt
git commit -m "Added soup description"
git checkout main
:: Удаляем после мерджа с main
git merge add-soup-desc
git branch -d add-soup-desc
