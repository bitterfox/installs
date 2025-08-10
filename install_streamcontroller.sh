#!/bin/bash

sudo apt install "$APT_YES"

# Install flatpak
sudo apt install flatpak
sudo apt install gnome-software-plugin-flatpak
/usr/bin/flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
/usr/bin/flatpak install com.core447.StreamController

# Run
# flatpak run com.core447.StreamController
# flatpak run com.core447.StreamController -b

#/usr/bin/flatpak install -y flathub org.flatpak.Builder
#mkdir -p $HOME/bin
#cd $HOME/bin
#bash -c "export PATH='$PATH:/var/lib/flatpak/app/org.flatpak.Builder/current/active/files/bin/'; export XDG_DATA_DIRS='$XDG_DATA_DIRS:/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share'$(wget -O - https://raw.githubusercontent.com/StreamController/StreamController/main/flatpak/install.sh)"
