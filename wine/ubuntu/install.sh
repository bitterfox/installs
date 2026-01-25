#!/bin/sh

. /etc/os-release

# https://gitlab.winehq.org/wine/wine/-/wikis/Debian-Ubuntu
# https://www.kkaneko.jp/tools/linuxtoolchain/wine.html
# https://marmooo.blogspot.com/2020/01/apt.html

sudo dpkg --add-architecture i386

sudo mkdir -pm755 /etc/apt/keyrings
wget -O - https://dl.winehq.org/wine-builds/winehq.key | sudo gpg --dearmor -o /etc/apt/keyrings/winehq-archive.key -

sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/noble/winehq-${VERSION_CODENAME}.sources

sudo apt update

#sudo dpkg --add-architecture i386
#sudo apt install --install-recommends winehq-stable

if [ "$VERSION_ID" = "18.04" ]; then
    # libfaudio for 18.04 is not found now
    wget -O /tmp/libfaudio0_amd64.deb https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/amd64/libfaudio0_19.07-0~bionic_amd64.deb
    wget -O /tmp/libfaudio0_i386.deb https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/i386/libfaudio0_19.07-0~bionic_i386.deb

    sudo dpkg -i /tmp/libfaudio0_amd64.deb
    sudo dpkg -i /tmp/libfaudio0_i386.deb

    sudo apt install "$APT_YES" libc-bin
    sudo apt --fix-broken install "$APT_YES"

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
