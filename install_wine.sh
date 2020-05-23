#!/bin/sh

#wget -O /tmp/Release.key -nc https://dl.winehq.org/wine-builds/Release.key
#sudo apt-key add /tmp/Release.key
#sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/

sudo apt update
sudo apt install winehq-stable
LANG=C winecfg

wget -O /tmp/winetricks  https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x /tmp/winetricks
sudo mv -v /tmp/winetricks /usr/local/bin

sudo apt install cabextract

winetricks allfonts
winetricks settings fontsmooth=rgb
