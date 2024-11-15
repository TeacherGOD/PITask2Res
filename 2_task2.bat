git init
git branch -m main
echo В сторожке у каменных ворот въезда никого не было и дверь была отперта. > story.txt 
echo Дорожки сада уже заросли, и телята и лошади ходили по английскому парку. >> story.txt 
git add -A 
git commit -m "initial commit" 

git checkout -b feature/start_raining
echo Шел дождь... >> story.txt 
git add -A 
git commit -m add new feature with raining" 
git checkout main
git merge feature/start_raining
git branch -d feature/start_raining
git tag -a v0.1 -m "v0.1 - start raining"

git checkout -b feature/pistol_description
echo Без разницы пистолет Пьера был заряжен холостыми или боевыми патронами >> story.txt 
git add -A 
git commit -m "close second feature" 
git checkout main
git merge feature/pistol_description
git branch -d feature/start_raining
git tag -a v0.2 -m "v0.2 - tell more about pistol"

git checkout -b feature/no_chance
echo Неважно какая обувь у Пьера или есть ли столб, с Наташей всё равно прощаемся, ведь от судьбы не уйдешь... >> story.txt 
git add -A 
git commit -m "close third feature" 
git checkout main
git merge feature/no_chance
git branch -d feature/no_chance
git tag -a v0.3 -m "v0.3 - no way, no chance"

git log --pretty=oneline --all > 2_task2.txt
echo __________________________________________ >> 2_task2.txt
git diff HEAD~1 HEAD >> 2_task2.txt
echo __________________________________________>> 2_task2.txt
git log --graph >> 2_task2.txt
