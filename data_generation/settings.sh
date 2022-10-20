#!/bin/bash
# Based on AWS DeepLearning AMI with Ubuntu 18.04
# rm /usr/local/cuda
# ln -s /usr/local/cuda-10.1 /usr/local/cuda

sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.7 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 1
sudo apt-get remove  python3-apt
sudo apt-get install python3-apt
sudo apt-get update 
sudo apt-get install python3-pip   # pip3 이 없어서 설치해줘야한다.

# # Upgrade pip3 and install packages
# pip3 install --upgrade pip

pip3 install -r requirements.txt
mkdir ./logs
mkdir ./tensorstats
