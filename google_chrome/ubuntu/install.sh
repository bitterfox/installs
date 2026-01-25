#!/bin/sh

if [ -n "`dpkg -l | grep google-chrome`" ]; then
    echo "Google chrome is already installed. quit."
    exit 1
fi

wget -O /tmp/chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb /tmp/chrome.deb

sudo dpkg -i /tmp/chrome.deb
