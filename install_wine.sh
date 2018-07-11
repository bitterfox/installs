#!/bin/sh

wget -O /tmp/Release.key -nc https://dl.winehq.org/wine-builds/Release.key
sudo apt-key add /tmp/Release.key
sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/

sudo aptitude update
sudo aptitude install winehq-stable
LANG=C winecfg
sudo aptitude install winetricks
