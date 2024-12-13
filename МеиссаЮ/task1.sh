# Initialisation du dépôt et premier commit
mkdir Practice_GitFlow && cd Practice_GitFlow
git init
echo "В сторожке у каменных ворот въезда никого не было и дверь была отперта." > story.txt
git add story.txt
git commit -m "Initial commit: début de l'histoire"

# Création de la branche develop
git checkout -b develop

# Création de la branche feature/pluie
git checkout -b feature/pluie
echo "Шёл дождь." >> story.txt
git add story.txt
git commit -m "Feature: ajout de la description de la pluie"

# Fusion de feature/pluie dans develop
git checkout develop
git merge feature/pluie

# Création de la branche bugfix/natasha
git checkout -b bugfix/natasha
echo "Наташа Ростова выжила, так как пистолет был заряжен холостыми." >> story.txt
git add story.txt
git commit -m "Bugfix: Наташа Ростова выжила grâce aux balles à blanc"

# Fusion de bugfix/natasha dans develop
git checkout develop
git merge bugfix/natasha

# Création de la branche feature/pierre
git checkout -b feature/pierre
echo "Пьер Безухов носит нескользящие туфли." >> story.txt
git add story.txt
git commit -m "Feature: ajout de chaussures antidérapantes pour Пьер"

# Fusion de feature/pierre dans develop
git checkout develop
git merge feature/pierre

# Préparation de la branche release/v0.1
git checkout -b release/v0.1
git merge develop
git tag -a v0.1 -m "Release v0.1"

# Fusion de release/v0.1 dans main
git checkout main
git merge release/v0.1
 
