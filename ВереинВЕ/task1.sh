git init
echo "В сторожке у каменных ворот въезда никого не было и дверь была отперта.
Дорожки сада уже заросли, и телята и лошади ходили по английскому парку." > story.txt
git add story.txt
git commit -m "Initial Commit"
git checkout -b dev

git checkout -b feature/add_weather
echo "Небо было серым, а легкий дождик скользил по окнам." >> story.txt
git add story.txt
git commit -m "Added weather description"

git checkout dev
git merge feature/add_weather

git checkout -b fix/empty_books
echo "Некоторые книги оказались пустыми, как будто их страницы растворились." >> story.txt
git add story.txt
git commit -m "Described empty books"

git checkout dev
git merge fix/empty_books

git checkout -b feature/change_light
echo "Вместо тусклого света свечей, лампы озаряли помещение мягким теплым светом." >> story.txt
git add story.txt
git commit -m "Changed light description"

git checkout dev
git merge feature/change_light

git checkout -b feature/remove_cobwebs
echo "К счастью, в углах уже не было паутины, словно кто-то убрал ее заранее." >> story.txt
git add story.txt
git commit -m "Removed cobwebs"

git checkout dev
git merge feature/remove_cobwebs

git checkout -b release/v1.0
git tag -a v1.0 -m "Version 1.0"

git checkout main
git merge release/v1.0
