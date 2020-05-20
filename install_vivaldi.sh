#!/bin/sh

if [ -n "`dpkg -l | grep vivaldi-stable`" ]; then
    echo "Vivaldi is already installed. quit."
    exit 1
fi

wget -O /tmp/vivaldi.deb https://downloads.vivaldi.com/stable/vivaldi-stable_3.0.1874.38-1_amd64.deb

sudo gdebi /tmp/vivaldi.deb
