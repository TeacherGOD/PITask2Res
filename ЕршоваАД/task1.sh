git init
echo "В сторожке у каменных ворот въезда никого не было и дверь была отперта.
Дорожки сада уже заросли, и телята и лошади ходили по английскому парку." > story.txt
git add story.txt
git commit -m "initial commit"
git checkout -b development

git checkout -b feature/add_character
echo "В саду появилась загадочная фигура в плаще, сливаясь с тенями древнего сада." >> story.txt
git add story.txt
git commit -m "Introduced a mysterious character"

git checkout development
git merge feature/add_character

git checkout -b fix/abandoned_cottage
echo "Хижина казалась заброшенной: окна разбиты, стены покрыты плющом." >> story.txt
git add story.txt
git commit -m "Added description of the abandoned cottage"

git checkout development
git merge fix/abandoned_cottage

git checkout -b feature/enhance_garden
echo "Сад, хотя и заросший, наполнял воздух ароматом диких цветов и жужжанием насекомых." >> story.txt
git add story.txt
git commit -m "Enhanced the garden description"

git checkout development
git merge feature/enhance_garden

git checkout -b feature/reveal_secret_door
echo "За стеной, покрытой плющом, обнаружилась скрытая дверь с заржавевшими петлями." >> story.txt
git add story.txt
git commit -m "Revealed a secret door in the wall"

git checkout development
git merge feature/reveal_secret_door

git checkout -b release/v1.0
git tag -a v1.0 -m "Version 1.0 - The secrets begin to unfold"

git checkout main
git merge release/v1.0
