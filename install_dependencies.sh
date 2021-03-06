#!/bin/sh

if [ "--fast" != "$1" ]; then
    sudo apt update
fi

# basic components
sudo apt install git mercurial subversion emacs zsh xclip curl fcitx-mozc jq gdebi
sudo apt install openjdk-8-jdk openjdk-8-source maven autoconf libx11-dev libxext-dev libxrender-dev libxtst-dev libxt-dev libcups2-dev libasound2-dev ant net-tools

if [ "--fast" != "$1" ]; then
    sudo apt update
    sudo apt upgrade
    sudo apt upgrade
fi
