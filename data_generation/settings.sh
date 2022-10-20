#!/bin/bash
# Based on AWS DeepLearning AMI with Ubuntu 18.04
# rm /usr/local/cuda
# ln -s /usr/local/cuda-10.1 /usr/local/cuda

# Upgrade pip3 and install packages
pip3 install --upgrade pip

sudo apt update
sudo killall apt apt-get
sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock*
sudo dpkg --configure -a
sudo apt update

pip3 install -r requirements.txt
mkdir ./logs
mkdir ./tensorstats
