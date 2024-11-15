git init
echo '...' > story.txt
git add story.txt
git commit -m 'Initial commit: начало истории'
git branch develop
git checkout develop
git checkout -b feature/rain
echo 'Шёл дождь.' >> story.txt
git add story.txt
git commit -m 'Feature: Добавлено упоминание о дожде'
git checkout develop
git merge feature/rain --no-ff -m 'Merge feature/rain into develop'
git checkout -b bug/natasha-death
echo 'Bug report: Наташа Ростова умерла, продолжение невозможно.' >> story.txt
git add story.txt
git commit -m 'Bug: Наташа Ростова умерла'
git checkout -b postmortem
echo 'Postmortem report: Пьер Безухов упал...' >> story.txt
git add story.txt
git commit -m 'Postmortem: Причина смерти Наташи Ростовой'
git checkout develop
git merge postmortem --no-ff -m 'Merge postmortem into develop'
git checkout -b hotfix/empty-gun
echo 'Hotfix: Пистолет заряжен холостыми патронами.' >> story.txt
git add story.txt
git commit -m 'Hotfix: Заряжен пистолет холостыми'
git checkout develop
git merge hotfix/empty-gun --no-ff -m 'Merge hotfix/empty-gun into develop'
git checkout -b feature/remove-pillar
echo 'Feature: Убрали столб.' >> story.txt
git add story.txt
git commit -m 'Feature: Убрали столб'
git checkout develop
git merge feature/remove-pillar --no-ff -m 'Merge feature/remove-pillar into develop'
git checkout -b release/v0.1
git checkout main
git merge release/v0.1 --no-ff -m 'Release v0.1: Финальная версия истории'
git tag v0.1
