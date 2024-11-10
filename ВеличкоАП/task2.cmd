chcp 65001

git init

echo На краю дороги стоял дуб. Вероятно, в десять раз старше берез, составлявших лес, он был в десять раз толще, и в два раза выше каждой березы. > story.txt
git add story.txt
git commit -m "Initial commit: начало истории"

git checkout -b add_rain
echo Шёл дождь...Все одно и то же, и все обман! Нет ни весны, ни солнца, ни счастья... >> story.txt
git add story.txt
git commit -m "add_rain: шёл дождь"
git checkout master
git merge add_rain
git branch -D add_rain

git checkout -b life_end
echo "Да, он прав, тысячу раз прав этот дуб, - думал князь Андрей, - пускай другие, молодые, вновь поддаются на этот обман, а мы знаем жизнь, - наша жизнь кончена!" >> story.txt
git add story.txt
git commit -m "life_end: дуб прав, жизнь кончена"
git tag v1
git checkout master
git merge life_end
git branch -D life_end

git checkout -b first_meeting
echo Из-за деревьев князь Андрей услыхал женский веселый крик и увидал бегущую наперерез его коляски толпу девушек. Впереди других, ближе, подбегала к коляске черноволосая, очень тоненькая, странно-тоненькая, черноглазая девушка в желтом ситцевом платье, повязанная белым носовым платком, из-под которого выбивались пряди расчесавшихся волос. >> story.txt
git add story.txt
git commit -m "first_meeting: встреча Андрея и Наташи"
git tag v2
git checkout master
git merge first_meeting
git branch -D first_meeting

git checkout -b spring
echo Старый дуб, весь преображенный, раскинувшись шатром сочной, темной зелени, млел, чуть колыхаясь в лучах вечернего солнца. Ни корявых пальцев, ни болячек, ни старого горя и недоверия — ничего не было видно. >> story.txt
git add story.txt
git commit -m "spring: наступила весна"
git checkout master
git merge spring
git branch -D spring

git checkout -b continue_life
echo "Нет, жизнь не кончена в тридцать один год" — вдруг окончательно беспеременно решил князь Андрей. >> story.txt
git add story.txt
git commit -m "continue_life: жизнь продолжается"
git tag v3
git checkout master
git merge continue_life
git branch -D continue_life

REM формирование отчёта
echo Отчёт по task2: > task2.txt
echo 1. git log, режим oneline: >> task2.txt
git log --pretty=oneline --all >> task2.txt
echo: >> task2.txt

echo 2. граф истории репозитория: >> task2.txt
git log --graph >> task2.txt
echo: >> task2.txt

echo 3. diff между двумя последними коммитами в основной ветке: >> task2.txt
git checkout master
git diff HEAD~2 HEAD >> task2.txt