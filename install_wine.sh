#!/bin/sh

# https://www.kkaneko.jp/tools/linuxtoolchain/wine.html
# https://marmooo.blogspot.com/2020/01/apt.html

wget -O /tmp/winehq.key -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add /tmp/winehq.key
sudo apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
# sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/

sudo apt update

#sudo dpkg --add-architecture i386
#sudo apt install --install-recommends winehq-stable

. /etc/os-release

if [ "$VERSION_ID" = "18.04" ]; then
    wget -O /tmp/libfaudio0_amd64.deb https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/amd64/libfaudio0_19.07-0~bionic_amd64.deb
    wget -O /tmp/libfaudio0_i386.deb https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/i386/libfaudio0_19.07-0~bionic_i386.deb

    sudo dpkg -i /tmp/libfaudio0_amd64.deb
    sudo dpkg -i /tmp/libfaudio0_i386.deb
fi

sudo apt install "$APT_YES" libc-bin
sudo apt --fix-broken install "$APT_YES"

if [ "$VERSION_ID" = "18.04" ]; then
    sudo dpkg -i /tmp/libfaudio0_i386.deb
fi

sudo apt install "$APT_YES" --install-recommends winehq-stable

LANG=C winecfg

wget -O /tmp/winetricks  https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x /tmp/winetricks
sudo mv -v /tmp/winetricks /usr/local/bin

sudo apt install "$APT_YES" cabextract

winetricks allfonts
winetricks settings fontsmooth=rgb
