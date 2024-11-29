git init

echo "At the gatekeeper's hut by the stone entrance, no one was there and the door was unlocked." > story.txt
git add story.txt
git commit -m "Initial project"

git checkout -b feature/natasha-rain
echo "It was raining, and Natasha Rostova was walking in the park." >> story.txt
git add story.txt
git commit -m "Added: Natasha Rostova walking in the rain"
git checkout master
git merge --no-ff feature/natasha-rain -m "Merge feature: Natasha walking in the rain"

git checkout -b bug/natasha-death
echo "Bug: Natasha Rostova died." >> story.txt
git add story.txt
git commit -m "Bug: Natasha Rostova died"
git checkout master
git merge --no-ff bug/natasha-death -m "Merge bug: Natasha Rostova died"

git checkout -b postmortem/natasha-death
echo "Postmortem: Pierre Bezukhov fell, his gun went off." >> story.txt
git add story.txt
git commit -m "Postmortem: Cause of Death of Natasha Rostova"
git checkout master
git merge --no-ff postmortem/natasha-death -m "Merge postmortem: Cause of Natasha's death"

git checkout -b release/v0.1
echo "The first version of the story is complete." >> story.txt
git add story.txt
git commit -m "Release version 0.1"
git tag v0.1
git checkout master
git merge --no-ff release/v0.1 -m "Merge release v0.1 into master"
