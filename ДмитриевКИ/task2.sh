git init
echo � ��஦�� � �������� ���� �ꥧ�� ������ �� �뫮 � ����� �뫠 �⯥��. > story.txt
git add story.txt
git commit -m "��砫� ���ਨ"
git checkout -b feature/rain
echo �� �����. >> story.txt
git add story.txt
git commit -m "������� �����"
git checkout master
git merge feature/rain
git branch -d feature/rain
git checkout -b feature/death-natashaRostova
echo ���� ���⮢� 㬥ૠ. >> story.txt
git add story.txt
git commit -m "������� ᮮ�饭�� �� �訡��"
git checkout master
git merge feature/death-natashaRostova
git branch -d feature/death-natashaRostova
git checkout -b feature/ammo
echo ���廊�� ���⮫�� 宫���묨. >> story.txt
git add story.txt
git commit -m "���廊�� ���⮫�� 宫���묨"
git checkout master
git merge feature/ammo
git branch -d feature/ammo
git checkout -b feature/delete-post
echo ��ࠫ� �⮫�. >> story.txt
git add story.txt
git commit -m "�⮫� �࠭"
git checkout master
git merge feature/delete-post
git branch -d feature/delete-post
git checkout -b release/v0.1
git merge master
git tag v0.1
git log --pretty=oneline --all > task2.txt
git diff HEAD~1 HEAD >> task2.txt
git log --graph >> task2.txt