#!/bin/sh

if [ "--fast" != "$1" ]; then
    sudo apt update
fi

# basic components
sudo apt install git mercurial subversion emacs zsh xclip curl fcitx-mozc jq
sudo apt install openjdk-8-jdk openjdk-8-source maven

if [ "--fast" != "$1" ]; then
    sudo apt update
    sudo apt upgrade
    sudo apt upgrade
fi
