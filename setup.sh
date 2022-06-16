#!/bin/sh
# install sudo and update
apt-get update
apt-get -y install sudo
sudo apt-get update -y
sudo apt-get install -y apt-utils

# install make and git
yes | sudo apt-get install git-all

# install ffmpeg
yes | sudo apt install ffmpeg

pip install -r requirements.txt