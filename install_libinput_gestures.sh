#!/bin/sh

if [ -d ~/.libinput-gestures ]; then
    echo "libinput-gestures is already installed. quit."
    exit 1
fi

git clone --depth 1 https://github.com/bulletmark/libinput-gestures.git ~/.libinput-gestures
cd ~/.libinput-gestures/install
sudo make install

sudo cp sudoers_libinput_gestures /etc/sudoers.d
sudo chown root:root /etc/sudoers.d/sudoers_libinput_gestures
sudo chmod 440 /etc/sudoers.d/sudoers_libinput_gestures
