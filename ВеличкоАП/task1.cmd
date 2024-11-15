chcp 65001

git init

echo На краю дороги стоял дуб. Вероятно, в десять раз старше берез, составлявших лес, он был в десять раз толще, и в два раза выше каждой березы. > story.txt
git add story.txt
git commit -m "Initial commit: начало истории"

git flow init

git flow feature start feature1_raining
echo Шёл дождь...Все одно и то же, и все обман! Нет ни весны, ни солнца, ни счастья... >> story.txt
git add story.txt
git commit -m "Feature1: шёл дождь"
git flow feature finish feature1_raining

git flow release start RELEASE_v1
echo "Да, он прав, тысячу раз прав этот дуб, - думал князь Андрей, - пускай другие, молодые, вновь поддаются на этот обман, а мы знаем жизнь, - наша жизнь кончена!" >> story.txt
git add story.txt
git commit -m "Release_v1: дуб прав, жизнь кончена"
git flow release finish RELEASE_v1

git checkout master
git flow hotfix start VERSION_v2
echo Из-за деревьев князь Андрей услыхал женский веселый крик и увидал бегущую наперерез его коляски толпу девушек. Впереди других, ближе, подбегала к коляске черноволосая, очень тоненькая, странно-тоненькая, черноглазая девушка в желтом ситцевом платье, повязанная белым носовым платком, из-под которого выбивались пряди расчесавшихся волос. >> story.txt
git add story.txt
git commit -m "Hotfix_v2: встреча Андрея и Наташи"
git flow hotfix finish VERSION_v2

git flow feature start feature2_spring
echo Старый дуб, весь преображенный, раскинувшись шатром сочной, темной зелени, млел, чуть колыхаясь в лучах вечернего солнца. Ни корявых пальцев, ни болячек, ни старого горя и недоверия — ничего не было видно. >> story.txt
git add story.txt
git commit -m "Feature2: наступила весна"
git flow feature finish feature2_spring

git flow release start RELEASE_v3
echo "Нет, жизнь не кончена в тридцать один год" — вдруг окончательно беспеременно решил князь Андрей. >> story.txt
git add story.txt
git commit -m "Release_v3: жизнь продолжается"
git flow release finish RELEASE_v3

REM формирование отчёта
echo Отчёт по task1: > task1.txt
echo 1. git log, режим oneline: >> task1.txt
git log --pretty=oneline --all >> task1.txt
echo: >> task1.txt

echo 2. граф истории репозитория: >> task1.txt
git log --graph >> task1.txt
echo: >> task1.txt

echo 3. diff между двумя последними коммитами в основной ветке: >> task1.txt
git checkout master
git diff HEAD~2 HEAD >> task1.txt