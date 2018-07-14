#!/bin/sh

wget -O /tmp/Release.key -nc https://dl.winehq.org/wine-builds/Release.key
sudo apt-key add /tmp/Release.key
sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/

sudo aptitude update
sudo aptitude install winehq-stable
LANG=C winecfg

wget -O /tmp/winetricks  https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x /tmp/winetricks
sudo mv -v /tmp/winetricks /usr/local/bin

winetricks allfonts
