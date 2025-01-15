git init
echo "В аду истории не пишут." > история.txt
git add история.txt
git commit -m "Начало истории"
git checkout -b develop
git checkout -b feature/новый_персонаж
echo "Персонаж по имени Дьявол появился в аду." >> история.txt
git add история.txt
git commit -m "Добавлен новый персонаж - Дьявол"
git checkout develop
git merge --no-ff feature/новый_персонаж
git checkout -b release/v0.1
echo "Первая глава готова к публикации." >> история.txt
git add история.txt
git commit -m "Готова первая глава для релиза"
git checkout master
git merge --no-ff release/v0.1
git tag -a v0.1 -m "Версия 0.1 - первая глава истории"
git remore add https://github.com/TeacherGOD/PITask2.git
#изменил кодировку вручную
git add -A
git commit -m "newUTF8"
git push origin -u --all
