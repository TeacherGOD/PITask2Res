!/bin/bash

git init

echo "В сторожке у каменных ворот въезда никого не было и дверь была отперта. Дорожки сада уже заросли, и телята и лошади ходили по английскому парку." > story.txt
git add story.txt
git commit -m "Initial commit: добавлено начало истории"


git checkout -b change/natasha-death
echo "Ошибка: Наташа Ростова умерла, продолжение невозможно." >> story.txt
git add story.txt
git commit -m "Change: Наташа умерла"
git checkout main
git merge change/natasha-death --squash -m "Merge change/natasha-death into main"


git checkout -b change/pierre-changes-shoes
echo "Хотфикс: Пьер поменял туфли на нескользкие, Наташа осталась жива." >> story.txt
git add story.txt
git commit -m "Change: Пьер поменял туфли"
git checkout main
git merge change/pierre-changes-shoes --squash -m "Merge change/pierre-changes-shoes into main"


git checkout -b change/remove-post
echo "Изменение: Столб, от которого пуля отскочила в Наташу, убран." >> story.txt
git add story.txt
git commit -m "Change: Удалён столб"
git checkout main
git merge change/remove-post --squash -m "Merge change/remove-post into main"


git log --pretty=oneline --all > task2_log.txt
git log --graph >> task2_log.txt


git diff HEAD~1 HEAD > task2_diff.txt


echo "Сценарий Trunk-Based Development успешно выполнен!"
