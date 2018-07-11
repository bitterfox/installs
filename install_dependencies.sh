#!/bin/sh

sudo apt update

sudo apt install aptitude

sudo aptitude update

# basic components
sudo aptitude install git mercurial emacs zsh
sudo aptitude install xclip curl

sudo aptitude install openjdk-8-jdk maven
sudo aptitude install fcitx-mozc

sudo aptitude update
sudo aptitude upgrade
sudo aptitude upgrade
