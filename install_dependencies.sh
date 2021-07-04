#!/bin/sh

if [ "--fast" != "$1" ]; then
    sudo apt update
fi

# basic components
sudo apt install "$APT_YES" git mercurial subversion zsh xclip curl fcitx-mozc jq gdebi
sudo apt install "$APT_YES" openjdk-8-jdk openjdk-8-source maven autoconf libx11-dev libxext-dev libxrender-dev libxtst-dev libxt-dev libcups2-dev libasound2-dev ant net-tools gimp golang
sudo snap install emacs --classic

if [ "--fast" != "$1" ]; then
    sudo apt update
    sudo apt upgrade "$APT_YES"
    sudo apt upgrade "$APT_YES"
fi
