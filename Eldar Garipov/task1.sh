!/bin/bash


git init


echo "В сторожке у каменных ворот въезда никого не было и дверь была отперта. Дорожки сада уже заросли, и телята и лошади ходили по английскому парку." > story.txt
git add story.txt
git commit -m "Initial commit: добавлено начало истории"


git branch develop
git checkout develop


git checkout -b feature/natasha-walk
echo "Шёл дождь, и Наташа Ростова гуляла по парку." >> story.txt
git add story.txt
git commit -m "Feature: Наташа гуляет под дождём"
git checkout develop
git merge feature/natasha-walk -m "Merge feature/natasha-walk into develop"


git checkout -b bug/natasha-death
echo "Ошибка: Наташа Ростова умерла, продолжение невозможно." >> story.txt
git add story.txt
git commit -m "Bug: Наташа умерла"
git checkout develop
git merge bug/natasha-death -m "Merge bug/natasha-death into develop"


git checkout -b hotfix/pierre-changes-shoes
echo "Хотфикс: Пьер поменял туфли на нескользкие, Наташа осталась жива." >> story.txt
git add story.txt
git commit -m "Hotfix: Пьер поменял туфли"
git checkout develop
git merge hotfix/pierre-changes-shoes -m "Merge hotfix/pierre-changes-shoes into develop"


git checkout -b feature/remove-post
echo "Изменение: Столб, от которого пуля отскочила в Наташу, убран." >> story.txt
git add story.txt
git commit -m "Feature: Удалён столб"
git checkout develop
git merge feature/remove-post -m "Merge feature/remove-post into develop"


git checkout -b release/v0.1
echo "Release v0.1: Все изменения собраны, история готова." >> story.txt
git add story.txt
git commit -m "Release: v0.1"
git checkout main
git merge release/v0.1 -m "Merge release/v0.1 into main"
git tag v0.1


git log --pretty=oneline --all > task1_log.txt
git log --graph >> task1_log.txt


git diff HEAD~1 HEAD > task1_diff.txt


echo "Сценарий Git Flow успешно выполнен!"
