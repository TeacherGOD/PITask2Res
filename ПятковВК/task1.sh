  174  git init
  175  echo "В сторожке у каменных ворот въезда никого не было и дверь была отперта. /nДорожки сада уже заросли, и телята и лошади ходили по английскому парку." > story.txt
  176  cat story.txt
  177  git commit -m "Начало истории"
  178  git add story.txt
  179  git commit -m "Начало истории"
  180  git checkout -b develop
  181  git checkout -b feature/rain
  182  echo "Шёл дождь" >> story.txt
  183  git add story.txt
  184  git commit -m "Добавлена часть о дожде"
  185  git checkout develop
  186  git merge feature/rain
  187  git branch -d feature/rain
  188  git checkout -b hotfix/natasha-death
  189  echo "Наташа Ростова умерла, продолжение невозможно" >> story.txt
  190  git add story.txt
  191  git commit -m "Сообщение об ошибке: Наташа Ростова умерла, продолжение невозможно"
  192  git checkout develop
  193  git merge hotfix/natasha-death
  194  git branch -d hotfix/natasha-death
  195  git checkout -b hotfix/blank-ammo
  196  echo "Зарядить пистолет холостыми." >> story.txt
  197  git add story.txt
  198  git commit -m "Проблема решена: холостые патроны"
  199  git checkout develop
  200  git merge hotfix/blank-ammo
  201  git branch -d hotfix/blank-ammo
  202  git checkout -b feature/remove-pillar
  203  echo "Столб убран." >> story.txt
  204  git add story.txt
  205  git commit -m "Столб убран: обновление истории"
  206  git checkout -b release/v0.1
  207  git merge feature/remove-pillar
  208  git branch -d feature/remove-pillar
  209  git checkout main
  210  git merge release/v0.1
  211  git tag -a v0.1 -m "Релиз версии 0.1"
  212  git branch -d release/v0.1
  213  history > task1.sh
  214  history 100 > task.sh
