git init
echo "История о приключениях в аду." > история.txt
git add история.txt
git commit -m "Начало истории"
git checkout -b feature/приключение_в_аду
echo "Персонаж по имени Дьявол начинает свои приключения." >> история.txt
git add история.txt
git commit -m "Добавлено приключение с Дьяволом"
git checkout master
git merge --no-ff feature/приключение_в_аду
git branch -d feature/приключение_в_аду
git checkout -b feature/новый_персонаж
echo "Новый персонаж, Ангел, появляется на сцене." >> история.txt
git add история.txt
git commit -m "Добавлен новый персонаж - Ангел"
git checkout master
git merge --no-ff feature/новый_персонаж
git branch -d feature/новый_персонаж
git remote add origin https://github.com/TeacherGOD/PITask2.2.git
git push --set-upstream origin master
#снова сменил кодировку вручную
git add -A
git commit -m "UTF-8, Again...."
git push
