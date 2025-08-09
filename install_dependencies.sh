#!/bin/sh

# basic components
# shell
DEPS="$DEPS zsh"
DEPS="$DEPS xclip"
DEPS="$DEPS curl"
DEPS="$DEPS jq"
DEPS="$DEPS bat"

# vcs
DEPS="$DEPS git mercurial subversion"

# util
DEPS="$DEPS fcitx-mozc"
DEPS="$DEPS gdebi"
DEPS="$DEPS net-tools"

# lang
DEPS="$DEPS openjdk-8-jdk openjdk-8-source maven ant"
DEPS="$DEPS autoconf"

# lib
DEPS="$DEPS libx11-dev libxext-dev libxrender-dev libxtst-dev libxt-dev"
DEPS="$DEPS libcups2-dev libasound2-dev"

# apps
DEPS="$DEPS gimp"
DEPS="$DEPS blueman"

if [ "--fast" != "$1" ]; then
    sudo apt update
fi

sudo apt install "$APT_YES" $DEPS
sudo snap install emacs --classic

if [ "--fast" != "$1" ]; then
    sudo apt update
    sudo apt upgrade "$APT_YES"
    sudo apt upgrade "$APT_YES"
fi
