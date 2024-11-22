git init
echo "В сторожке у каменных ворот въезда никого не было и дверь была отперта. Дорожки сада уже заросли, и телята и лошади ходили по английскому парку." > story.txt
git add story.txt
git commit -m "Inital Commit"

git checkout -b feature/rain
echo "Шел дождь" >> story.txt
git add story.txt
git commit -m "added rain line"

git checkout main 
git merge feature/rain


git checkout -b hotfix/load_blank
echo "Кто-то подменил патроны на холостые." >> story.txt
git add story.txt 
git commit -m "loaded blank ammo"

git checkout main
git merge hotfix/load_blank


git checkout -b feature/change_shoes
echo "Чтобы не подскользнуться, Пьер поменял туфли." >> story.txt
git add story.txt 
git commit -m "changed shoes"

git checkout main
git merge feature/change_shoes

git checkout -b feature/pole_removing
echo "К счатью, никакого столба нигде не было." >> story.txt
git add story.txt 
git commit -m "pole removed"

git checkout main
git merge feature/pole_removing

git checkout -b release/1_0
git tag -a 1.0 -m "Version 1.0"

git checkout main
git merge release/1.0

git log --pretty=oneline --all > task2.txt
git diff HEAD~1 HEAD >> task2.txt
git log --graph >> task2.txt