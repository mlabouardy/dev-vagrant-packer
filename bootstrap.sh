#!/bin/bash

## Update cache

apt-get update 

## Install git

apt-get install -y git


## Install Docker

apt-get install -y --no-install-recommends apt-transport-https \
        ca-certificates curl software-properties-common
curl -fsSL https://apt.dockerproject.org/gpg | sudo apt-key add -
add-apt-repository "deb https://apt.dockerproject.org/repo/ ubuntu-$(lsb_release -cs) main"
apt-get update
apt-get -y install docker-engine


## Install Docker Compose
curl -L "https://github.com/docker/compose/releases/download/1.11.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

## Install NodeJS, NPM & Bower

apt-get install -y nodejs=4.6.0 npm
ln -s `which nodejs` /usr/bin/node
npm i -g bower

## Install RoR

apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.3.3
rvm use 2.3.3 --default


## Install nginx

apt-get install -y nginx

## Install Python && Pip

apt-get install -y python python-pip python-dev build-essential

## Install X11 Desktop ENV

apt-get install -y xfce4 xfce4-goodies task-xfce-desktop
startxfce4

## Clean cache

apt-get clean
