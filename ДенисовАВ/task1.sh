#!/bin/bash

git init

echo "Once upon a time in a faraway land, there was a magical forest." > story.txt

git add story.txt

git commit -m "Initial commit"

git branch develop

git checkout develop

git checkout -b feature/add-character

echo "A brave knight named Arthur lived in the forest." >> story.txt

git add story.txt

git commit -m "Add a brave knight named Arthur"

git checkout develop

git merge feature/add-character

git branch -d feature/add-character

git checkout -b feature/add-event

echo "One day, Arthur found a hidden treasure map." >> story.txt

git add story.txt

git commit -m "Add an event where Arthur finds a treasure map"

git checkout develop

git merge feature/add-event

git branch -d feature/add-event

git checkout -b release/v1.0

echo "Arthur followed the map and found the treasure, becoming the richest knight in the land." >> story.txt

git add story.txt

git commit -m "Finalize the story for release v1.0"

git checkout main

git merge release/v1.0

git tag -a v1.0 -m "Release version 1.0"

git log --pretty=oneline --all > task1.txt
echo "" >> task1.txt
git diff HEAD~1 HEAD >> task1.txt
echo "" >> task1.txt
git log --graph >> task1.txt
