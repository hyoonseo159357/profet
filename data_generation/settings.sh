#!/bin/bash
sudo apt update
sudo apt install python3.7 # 설치하려는 버전 
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 1
sudo apt-get remove  python3-apt
sudo apt-get install python3-apt
sudo apt-get update 
sudo apt-get install python3-pip   # pip3 이 없어서 설치해줘야한다.

pip3 install --upgrade setuptools
sudo -H pip3 install --upgrade pip

pip3 install -r requirements.txt
mkdir ./logs
mkdir ./tensorstats

