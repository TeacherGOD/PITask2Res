git init 
git branch -m main
echo В сторожке у каменных ворот въезда никого не было и дверь была отперта. > story.txt 
echo Дорожки сада уже заросли, и телята и лошади ходили по английскому парку. >> story.txt 
git add -A 
git commit -m "initial commit" 


git flow init -d --feature feature/  --bugfix bugfix/ --release release/ --hotfix hotfix/ --support support/ -t ''

git flow feature start feature1_startRaining
echo Шел дождь... >> story.txt 
git add -A 
git commit -m "close first feature" 

git flow feature finish feature1_startRaining
git flow release start RELEASE_v1
echo version num 0.1 > 1_version.txt
git add -A
git commit -m "v0.1"

set GIT_COMMIT_MSG="RELEASE_v1"
git flow release finish RELEASE_v1


git flow feature start feature2_getPistolDescription
echo Без разницы пистолет Пьера был заряжен холостыми или боевыми патронами >> story.txt 
git add -A 
git commit -m "close second feature" 

git flow feature finish feature2_getPistolDescription
git flow release start RELEASE_v2
echo version num 0.2 >> 1_version.txt
git add -A
git commit -m "v0.2"

git flow release finish RELEASE_v2


git flow feature start feature3_withoutChance
echo Неважно какая обувь у Пьера или есть ли столб, с Наташей всё равно прощаемся, ведь от судьбы не уйдешь... >> story.txt 
git add -A 
git commit -m "close third feature" 

git flow feature finish feature3_withoutChance
git flow release start RELEASE_v3
echo version num 0.3 >> 1_version.txt
git add -A
git commit -m "v0.3"

git flow release finish RELEASE_v3

git log --pretty=oneline --all > 1_task1.txt
echo __________________________________________ >> 1_task1.txt
git diff HEAD~1 HEAD >> 1_task1.txt
echo __________________________________________>> 1_task1.txt
git log --graph >> 1_task1.txt
