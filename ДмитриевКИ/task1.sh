git init
echo В сторожке у каменных ворот въезда никого не было и дверь была отперта. > story.txt
git add story.txt
git commit -m "Начало истории"
git checkout -b develop
git checkout -b feature/rain
echo Шёл дождь. >> story.txt
git add story.txt
git commit -m "Добавил дождь"
git checkout develop
git merge feature/rain
git branch -d feature/rain
git checkout -b hotfix/death-natashaRostova
echo Наташа Ростова умерла. >> story.txt
git add story.txt
git commit -m "Добавил сообщение об ошибке"
git checkout develop
git merge hotfix/death-natashaRostova
git branch -d hotfix/death-natashaRostova
git checkout -b hotfix/ammo
echo Зарядили пистолет холостыми. >> story.txt
git add story.txt
git commit -m "hotfix1: зарядить пистолет холостыми"
git checkout develop
git merge hotfix/ammo
git branch -d hotfix/ammo
git checkout -b feature/delete-post
echo Убрали столб. >> story.txt
git add story.txt
git commit -m "Убрали столб"
git checkout -b release/v0.1
git merge feature/delete-post
git checkout master
git merge release/v0.1
git tag -a v0.1 -m "Версия 0.1"
git log --pretty=oneline --all > task1.txt
git diff HEAD~1 HEAD >> task1.txt
git log --graph >> task1.txt