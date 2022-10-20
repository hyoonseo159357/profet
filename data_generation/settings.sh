#!/bin/bash
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 1
sudo apt-get remove  python3-apt
sudo apt-get install python3-apt
sudo apt-get update 
sudo apt-get install python3-pip   # pip3 이 없어서 설치해줘야한다.
pip3 install -r requirements.txt
mkdir ./logs
mkdir ./tensorstats
sudo apt update
sudo killall apt apt-get
sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock*
sudo dpkg --configure -a
sudo apt update
