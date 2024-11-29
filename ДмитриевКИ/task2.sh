git init
echo В сторожке у каменных ворот въезда никого не было и дверь была отперта. > story.txt
git add story.txt
git commit -m "Начало истории"
git checkout -b feature/rain
echo Шёл дождь. >> story.txt
git add story.txt
git commit -m "Добавил дождь"
git checkout master
git merge feature/rain
git branch -d feature/rain
git checkout -b feature/death-natashaRostova
echo Наташа Ростова умерла. >> story.txt
git add story.txt
git commit -m "Добавил сообщение об ошибке"
git checkout master
git merge feature/death-natashaRostova
git branch -d feature/death-natashaRostova
git checkout -b feature/ammo
echo Зарядили пистолет холостыми. >> story.txt
git add story.txt
git commit -m "Зарядили пистолет холостыми"
git checkout master
git merge feature/ammo
git branch -d feature/ammo
git checkout -b feature/delete-post
echo Убрали столб. >> story.txt
git add story.txt
git commit -m "Столб убран"
git checkout master
git merge feature/delete-post
git branch -d feature/delete-post
git checkout -b release/v0.1
git merge master
git tag v0.1
git log --pretty=oneline --all > task2.txt
git diff HEAD~1 HEAD >> task2.txt
git log --graph >> task2.txt