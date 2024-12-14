git init

echo "Initial story" > story.txt
git add .
git commit -m "initial commit"

git checkout -b develop

git checkout -b feature_1
echo "feature 1" >> story.txt
git add .
git commit -m "feature 1"
git checkout develop

git merge feature_1

git checkout -b realease/1.0
echo "release 1.0" >> story.txt
git add .
git commit -m "release 1.0"
git checkout master
git merge release/1.0

git tag 1.0

git log --pretty=oneline --all >> task1.txt

git diff HEAD~1 HEAD >> task1.txt

git log --graph >> task1.txt
