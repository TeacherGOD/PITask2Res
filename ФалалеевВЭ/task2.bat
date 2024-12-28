git init

echo Думал, жизнь это роман, а это просто повесть > story.txt
git add -A
git commit -m "Initial commit: first_line"

git checkout -b second_line
echo Душу Дьяволу продам в обмен на твою совесть >> story.txt
git add -A
git commit -m "second_line"
git checkout main
git merge second_line
git branch -D second_line

git checkout -b third_line
echo Дам тебе обойму, выстрели мне в спину дважды >> story.txt
git add -A
git commit -m "third_line"
git tag v1
git checkout main
git merge third_line
git branch -D third_line

git checkout -b fourth_line
echo Столько лет в этой игре, но до сих пор я чую жажду >> story.txt
git add -A
git commit -m "fourth_line"
git tag v2
git checkout main
git merge fourth_line
git branch -D fourth_line

echo 1. git log: > task2.txt
git log --pretty=oneline --all >> task2.txt
echo: >> task2.txt

echo 2. граф: >> task2.txt
git log --graph >> task2.txt
echo: >> task2.txt

echo 3. diff: >> task2.txt
git checkout main
git diff HEAD~2 HEAD >> task2.txt