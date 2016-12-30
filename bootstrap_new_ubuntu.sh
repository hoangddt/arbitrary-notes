#!/bin/bash

sudo apt-get update
sudo apt-get install -y vim
sudo apt-get install -y git
sudo apt-get install -y zsh

sudo apt-get install -y python-pip
pip install httpie

cd ~/Downloads && mkdir soft
cd soft
wget https://download.sublimetext.com/sublime-text_build-3126_amd64.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg -i sublime-text_build-3126_amd64.deb

sudo dpkg -i google-chrome-stable_current_amd64.deb
# run this command if chrome fail
# sudo apt-get install -f

# install node 6.x LTS
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm install -g gulp
sudo npm install -g bower

sudo apt-get install -y nginx
sudo apt-get install yakuake
# configure yakuake

# Main menu for show program's command
sudo apt-get install -y alacarte
# react native cli
sudo npm install -g react-native-cli

# Android Studio 
wget https://dl.google.com/dl/android/studio/ide-zips/2.2.3.0/android-studio-ide-145.3537739-linux.zip

# jdk8 http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
wget http://download.oracle.com/otn-pub/java/jdk/8u111-b14/jdk-8u111-linux-x64.tar.gz?AuthParam=1482487784_0a52787c437b57a955ddb357576b9936

# Install JDK and Android studio
tar xf jdk-8u112-linux-x64.tar.gz
sudo cp -r jdk1.8.0_112 /opt

# add these to ~/.zshrc then $ source ~/.zshrc
export JAVA_HOME=/opt/jdk1.8.0_112
export PATH=$JAVA_HOME/bin:$PATH


unzip android-studio-ide-145.3537739-linux.zip
sudo cp -r android-studio /opt/

# add these to ~/.zshrc then $ source ~/.zshrc
export PATH=$PATH:/home/hoangddt/Android/Sdk/tools
export PATH=$PATH:/home/hoangddt/Android/Sdk/platform-tools

export ANDROID_HOME=/home/hoangddt/Android/Sdk
export PATH=$PATH:/opt/android-studio/bin
export REACT_EDITOR=subl

# genymotion
wget https://dl.genymotion.com/releases/genymotion-2.8.1/genymotion-2.8.1_x64.bin
# Virtual box
wget http://download.virtualbox.org/virtualbox/5.1.12/virtualbox-5.1_5.1.12-112440~Ubuntu~xenial_amd64.deb
sudo dpkg -i virtualbox-5.1_5.1.12-112440\~Ubuntu\~xenial_amd64.deb

# Install genymotion
# chmod +x ./genymotion-2.8.1_x64.bin
# install for all user
# sudo ./genymotion-2.8.1_x64.bin -d .

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"