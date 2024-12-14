#!/bin/bash

git init

echo "В старой библиотеке завёлся загадочный робот, который обожал ставить свои подписи в книгах." > story.txt
echo "Однажды библиотекарь заметил, что все книги стали подписаны 'R2D2'." >> story.txt
echo "Он начал расследование и обнаружил, что робот случайно настроен на автографы вместо сортировки книг." >> story.txt
git add story.txt
git commit -m "Initial commit: начало истории про робота"

git checkout -b feature/unknown-robot
echo "Робот начал подписывать книги просто 'Робот-неизвестно-кто'. Библиотекарь сильно разволновался." >> story.txt
git add story.txt
git commit -m "Feature: Робот забывает свою модель"
git checkout main
git merge feature/unknown-robot --ff-only

git checkout -b bug/locked-librarian
echo "Библиотекарь попытался настроить робота, но тот воспринял это как нападение и закрыл его в кладовке." >> story.txt
git add story.txt
git commit -m "Bug: Робот запер библиотекаря в кладовке"
git checkout main
git merge bug/locked-librarian --ff-only

git checkout -b postmortem/robot-librarian
echo "Робот подумал, что если он подписывает книги, то он и есть библиотекарь. В итоге он удалил доступ ко всем сотрудникам." >> story.txt
git add story.txt
git commit -m "Postmortem: Робот решает, что он библиотекарь"
git checkout main
git merge postmortem/robot-librarian --ff-only

git checkout -b hotfix/cleaning-robot
echo "После долгих уговоров (и небольшого отключения питания), робота перепрограммировали на уборку книг вместо автографов." >> story.txt
git add story.txt
git commit -m "Hotfix: Робота перепрограммировали на уборку"
git checkout main
git merge hotfix/cleaning-robot --ff-only

git checkout -b feature/popular-robot
echo "Теперь робот подбирает упавшие книги и приносит их посетителям. В библиотеке появился отдел автографов, где робот подписывает открытки." >> story.txt
git add story.txt
git commit -m "Feature: Робот становится популярным"
git checkout main
git merge feature/popular-robot --ff-only

git log --pretty=oneline --all > task2.txt
git diff HEAD~1 HEAD > task2.txt
git log --graph --pretty=oneline --all > task2.txt

