git init


vim story.txt
git add story.txt
git commit -m "initial commit"


git checkout -b birthday
vim story.txt
git add story.txt
git commit -m "feature: добавлена история про день рождение"
git checkout master
git merge birthday


git checkout -b newyear
vim story.txt
git add story.txt
git commit -m "feature: добавлена история про новый год"
git checkout master
git merge newyear

git checkout -b change_colour
vim story.txt
git add story.txt
git commit -m "hotfix: изменен цвет шариков на розовый"
git checkout master
git merge change_colour

git checkout -b death
vim story.txt
git add story.txt
git commit -m "feat: добавлена история про смерть"
git checkout master
git merge death

git checkout -b final
vim story.txt
git add story.txt
git commit -m "release: Финальная версия истории"
git checkout master
git merge final

git tag v0.1

git log --pretty=oneline --all > task2.txt
echo "" >> task2.txt
git diff HEAD~1 HEAD >> task2.txt
git log --graph >> task2.txt
