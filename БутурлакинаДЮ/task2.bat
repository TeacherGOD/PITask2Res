git init

echo At the gatekeeper's hut by the stone entrance, no one was there and the door was unlocked. > story.txt
git add story.txt
git commit -m "Initial commit: Beginning of the story"

git checkout -b natasha-rain
echo It was raining, and Natasha Rostova was walking in the park under the rain. >> story.txt
git add story.txt
git commit -m "Feature: Natasha walking in the rain"
git checkout main
git merge natasha-rain

git checkout -b natasha-death
echo Bug: Natasha Rostova died, continuation impossible. >> story.txt
git add story.txt
git commit -m "Bug: Natasha Rostova died"
git checkout main
git merge natasha-death

git checkout -b natasha-postmortem
echo Cause: Pierre Bezukhov had slippery shoes, he fell, and his gun went off. >> story.txt
git add story.txt
git commit -m "Postmortem: Cause of Natasha Rostova's death"
git checkout main
git merge natasha-postmortem

git tag -a v0.1 -m "Release v0.1: Story completed"
