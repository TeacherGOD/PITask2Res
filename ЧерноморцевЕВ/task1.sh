git init

vim story.txt
git add story.txt
git commit -m "initial commit"

git checkout -b develop

git checkout -b feature/birthday
vim story.txt
git add story.txt
git commit -m "feature: добавлена история про день рождение"
git checkout develop
git merge feature/birthday


git checkout -b feature/newyear
vim story.txt
git add story.txt
git commit -m "feature: добавлена история про новый год"
git checkout develop
git merge feature/newyear

git checkout -b hotfix/change_colour
vim story.txt
git add story.txt
git commit -m "hotfix: изменен цвет шариков на розовый"
git checkout develop
git merge hotfix/change_colour

git checkout -b feat/death
vim story.txt
git add story.txt
git commit -m "feat: добавлена история про смерть"
git checkout develop
git merge feat/death

git checkout -b release/v0.1
vim story.txt
git add story.txt
git commit -m "release: Финальная версия истории"
git checkout master
git merge release/v0.1

git tag v0.1

git log --pretty=oneline --all > task1.txt
echo "" >> task1.txt
git diff HEAD~1 HEAD >> task1.txt
git log --graph >> task1.txt
