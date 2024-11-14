git init

echo В сторожке у каменных ворот въезда никого не было и дверь была отперта. > story.txt
echo Дорожки сада уже заросли, и телята и лошади ходили по английскому парку. >> story.txt
git add story.txt
git commit -m "initial commit"

git checkout -b rain
echo Шел дождь. >> story.txt
git add story.txt
git commit -m "rain: Добавили дождь"
git checkout master
git merge rain

git checkout -b blank_bullets
echo Пистолет заряжен холостыми >> story.txt
git add story.txt
git commit -m "blank_bullets: Зарядили пистолет холостыми"
git checkout master
git merge blank_bullets

git checkout -b shoes
echo Пьер надел валенки >> story.txt
git add story.txt
git commit -m "shoes: заменили Пьеру туфли"
git checkout master
git merge shoes

git checkout -b final
echo В финале истории поручик Ржевский облокачивается на столб. >> story.txt
git add story.txt
git commit -m "final: Конец"
git checkout master
git merge final

git tag 0.1

echo Отчет по task2: > task2.txt
git log --pretty=oneline --all >> task2.txt
echo ------------------------------------------------------------------- >> task2.txt
git log --graph >> task2.txt
echo ------------------------------------------------------------------- >> task2.txt
git diff HEAD~2 HEAD >> task2.txt