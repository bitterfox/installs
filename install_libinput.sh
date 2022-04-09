#!/bin/bash
# This does upgrade libinput actually for quirks for Ubuntu 18.04

option=$1

sudo apt install "$APT_YES" libinput-tools

libinput --version

libinput quirks validate
if [ $? -eq 0 ]; then
    echo "libinput quirks is supported"
    if [ "$option" == "--force" ]; then
        echo "Force update libinput"
    else
        echo "Skip libinput update"
        exit 0
    fi
fi

sudo add-apt-repository ppa:juliank/libinput-updates
if [ $? -ne 0 ]; then
    echo "Abort update libinput"
    exit 0
fi

sudo apt-get update
sudo apt "$APT_YES" upgrade

libinput --version
