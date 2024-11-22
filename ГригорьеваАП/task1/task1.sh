#!/bin/bash

git init
echo "В сторожке у каменных ворот въезда никого не было и дверь была отперта." > story.txt                        
echo "Дорожки сада уже заросли, и телята и лошади ходили по английскому парку." >> story.txt                      
git add story.txt                                                                                                 
git commit -m "Начало истории"                                                                                    
git checkout -b develop                                                                                           
git checkout -b feature/natasha-walking                                                                           
echo "Шёл дождь." >> story.txt                                                                                    
git add story.txt                                                                                                 
git commit -m "Добавлена сцена с дождём"                                                                          
git checkout develop                                                                                              
git merge feature/natasha-walking                                                                                 
git checkout -b bugfix/natashas-death                                                                             
echo "Наташа Ростова умерла, продолжение невозможно." >> story.txt                                                
git add story.txt                                                                                                 
git commit -m "Сообщение об ошибке: Наташа Ростова умерла"                                                        
git checkout develop                                                                                              
git merge bugfix/natashas-death                                                                                   
git checkout -b report/postmortem                                                                                 
echo "Выясняется, что у Пьера Безухова скользкие туфли..." >> story.txt                                           
git add story.txt                                                                                                 
git commit -m "Причина смерти Наташи"                                                                             
git checkout develop                                                                                              
git merge report/postmortem                                                                                       
git checkout -b release/v0.1                                                                                      
git checkout main                                                                                                 
git checkout master                                                                                               
git merge release/v0.1                                                                                            
git tag -a v0.1 -m "Релиз0 0.1"                                                                                   
git branch -d release/v0.1                                                                                        
git log --pretty=oneline --all > task1.txt                                                                        
git diff HEAD~1 HEAD >> task1.txt                                                                                 
git log --graph >> task1.txt                                                                                      
history > task1.sh                                                                                                


