git init

echo "В сторожке у каменных ворот въезда никого не было и дверь была отперта.
Дорожки сада уже заросли, и телята и лошади ходили по английскому парку." > story.txt
git add story.txt
git commit -m "initial commit"

git checkout -b feature-add-character
echo "В саду появилась загадочная фигура в плаще, сливаясь с тенями древнего сада." >> story.txt
git add story.txt
git commit -m "feat: добавлена загадочная фигура"
git checkout master
git merge feature-add-character
git branch -d feature-add-character

git checkout -b fix-abandoned-cottage
echo "Хижина казалась заброшенной: окна разбиты, стены покрыты плющом." >> story.txt
git add story.txt
git commit -m "fix: описана заброшенная хижина"
git checkout master
git merge fix-abandoned-cottage
git branch -d fix-abandoned-cottage

git checkout -b feature-improve-garden
echo "Сад, хотя и заросший, наполнял воздух ароматом диких цветов и жужжанием насекомых." >> story.txt
git add story.txt
git commit -m "feat: улучшено описание сада"
git checkout master
git merge feature-improve-garden
git branch -d feature-improve-garden

git checkout -b feature-add-secret-door
echo "За стеной, покрытой плющом, обнаружилась скрытая дверь с заржавевшими петлями." >> story.txt
git add story.txt
git commit -m "release: добавлена тайная дверь в финале"
git checkout master
git merge feature-add-secret-door
git branch -d feature-add-secret-door
