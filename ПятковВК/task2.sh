  224  git init
  225  echo "В сторожке у каменных ворот въезда никого не было и дверь была отперта. \nДорожки сада уже заросли, и телята и лошади ходили по английскому парку." > story.txt
  226  git add story.txt
  227  git commit -m "Начало истории"
  228  git checkout -b feature/rain
  229  echo "Шёл дождь." >> story.txt
  230  git add story.txt
  231  git commit -m "Добавлена история о дожде"
  232  git checkout main 
  233  git merge feature/rain
  234  git branch -d feature/rain
  235  git checkout -b feature/natasha-death
  236  echo "Наташа Ростова умерла, продолжение невозможно" >> story.txt
  237  git add story.txt
  238  git commit -m "Сообщение об ошибке: Наташа Ростова умерла, продолжение невозможно"
  239  git checkout main
  240  git merge feature/natasha-death
  241  git branch -d feature/natasha-death
  242  git checkout -b feature/blank-ammo
  243  echo "Зарядить пистолет холостыми." >> story.txt
  244  git add story.txt
  245  git commit -m "Проблема решена: холостые патроны"
  246  git checkout main
  247  git merge feature/blank-ammo
  248  git branch -d feature/blank-ammo
  249  git checkout -b feature/remove-pillar
  250  echo "Столб убран." >> story.txt
  251  git add story.txt
  252  git status
  253  git commit -m "Столб убран: обновление истории"
  254  git checkout main
  255  git merge feature/remove-pillar
  256  git branch -d feature/remove-pillar
  257  git checkout release/v0.1
  258  git checkout -b release/v0.1
  259  git merge main
