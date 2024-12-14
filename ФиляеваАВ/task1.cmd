git init

echo В сторожке у каменных ворот въезда никого не было и дверь была отперта. > story.txt
echo Дорожки сада уже заросли, и телята и лошади ходили по английскому парку. >> story.txt
git add story.txt
git commit -m "initial commit"

git checkout -b develop

git checkout -b feature/rain
echo Шел дождь. >> story.txt
git add story.txt
git commit -m "feature/rain: Добавили дождь"
git checkout develop
git merge feature/rain

git checkout -b hotfix/blank_bullets
echo Пистолет заряжен холостыми >> story.txt
git add story.txt
git commit -m "hotfix: Зарядили пистолет холостыми"
git checkout develop
git merge hotfix/blank_bullets

git checkout -b feature/shoes
echo Пьер надел валенки >> story.txt
git add story.txt
git commit -m "feature/shoes: заменили Пьеру туфли"
git checkout develop
git merge feature/shoes

git checkout -b release/v0.1
echo В финале истории поручик Ржевский облокачивается на столб. >> story.txt
git add story.txt
git commit -m "release/v0.1: Конец"
git checkout master
git merge release/v0.1

git tag 0.1

echo Отчет по task1: > task1.txt
git log --pretty=oneline --all >> task1.txt
echo ------------------------------------------------------------------- >> task1.txt
git log --graph >> task1.txt
echo ------------------------------------------------------------------- >> task1.txt
git diff HEAD~2 HEAD >> task1.txt




