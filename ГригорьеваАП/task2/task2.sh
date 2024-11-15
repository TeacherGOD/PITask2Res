
#!/bin/bash

git init
chcp 65001                                                                                                        
echo "В сторожке у каменных ворот въезда никого не было и дверь была отперта." > story.txt                        
echo "Дорожки сада уже заросли, и телята и лошади ходили по английскому парку." >> story.txt                      
git add story.txt                                                                                                 
git commit -m "Начало истории"                                                                                    
git checkout -b feature/natasha-walking                                                                           
echo "Шёл дождь." >> story.txt                                                                                    
git add story.txt                                                                                                 
git commit -m "Добавлена сцена с дождём"                                                                          
git checkout master                                                                                               
git merge feature/natasha-walking                                                                                 
git branch -d feature/natasha-walking                                                                             
git checkout -b bugfix/natashas-death                                                                             
echo "Наташа Ростова умерла, продолжение невозможно." >> story.txt                                                
git add story.txt                                                                                                 
git commit -m "Сообщение об ошибке: Наташа Ростова умерла"                                                        
git checkout master                                                                                               
git merge bugfix/natashas-death                                                                                   
git branch -d bugfix/natashas-death                                                                               
git checkout -b report/postmortem                                                                                 
echo "Выясняется, что у Пьера Безухова скользкие туфли..." >> story.txt                                           
git add story.txt                                                                                                 
git commit -m "Причина смерти Наташи"                                                                             
git checkout master                                                                                               
git merge report/postmortem                                                                                       
git branch -d report/postmortem                                                                                   
git checkout -b hotfix/charge-gun                                                                                 
echo "Зарядили пистолет холостыми." >> story.txt                                                                  
git add story.txt                                                                                                 
git commit -m "Заряжен пистолет холостыми"                                                                        
git checkout master                                                                                               
git merge hotfix/charge-gun                                                                                       
git branch -d hotfix/charge-gun                                                                                   
git checkout -b feature/shoes                                                                                     
echo "Поменяли туфли у Пьера." >> story.txt                                                                       
git add story.txt                                                                                                 
git commit -m "Поменяли туфли у Пьера"                                                                            
git checkout master                                                                                               
git merge feature/shoes                                                                                           
git branch -d feature/shoes                                                                                       
git checkout -b feature/remove-pole                                                                               
echo "Убрали столб." >> story.txt                                                                                 
git add story.txt                                                                                                 
git commit -m "Удалили столб"                                                                                     
git checkout master                                                                                               
git merge feature/remove-pole                                                                                     
git branch -d feature/remove-pole                                                                                 
git checkout -b backlog/next-steps                                                                                
echo "Поручик Ржевский умер, необходимо отложить решение этой проблемы на следующий спринт." >> story.txt         
git add story.txt                                                                                                 
git commit -m "Записали задачу в бэклог о поручике Ржевском"                                                      
git checkout master                                                                                               
git merge backlog/next-steps                                                                                      
git branch -d backlog/next-steps                                                                                  
git log --pretty=oneline --all > task2.txt                                                                        
git diff HEAD~1 HEAD >> task2.txt                                                                                 
git log --graph >> task2.txt      
history > task2.sh                                                                                                
                                                                                


