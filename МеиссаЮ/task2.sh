# Initialisation du dépôt et premier commit
mkdir Practice_Trunk && cd Practice_Trunk
git init
echo "В сторожке у каменных ворот въезда никого не было и дверь была отперта." > story.txt
git add story.txt
git commit -m "Initial commit: début de l'histoire"

# Création et fusion de la branche pluie
git checkout -b pluie
echo "Шёл дождь." >> story.txt
git add story.txt
git commit -m "Ajout de la description de la pluie"
git checkout main
git merge pluie

# Création et fusion de la branche natasha_fix
git checkout -b natasha_fix
echo "Наташа Ростова выжила, так как пистолет был заряжен холостыми." >> story.txt
git add story.txt
git commit -m "Bugfix: Наташа Ростова выжила"
git checkout main
git merge natasha_fix

# Création et fusion de la branche pierre_safe
git checkout -b pierre_safe
echo "Пьер Безухов носит нескользящие туфли." >> story.txt
git add story.txt
git commit -m "Feature: chaussures antidérapantes pour Пьер"
git checkout main
git merge pierre_safe
 
