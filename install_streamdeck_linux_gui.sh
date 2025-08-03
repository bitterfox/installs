#!/bin/bash

sudo apt install libhidapi-libusb0 pipx

sudo wget https://raw.githubusercontent.com/streamdeck-linux-gui/streamdeck-linux-gui/main/udev/60-streamdeck.rules -O /etc/udev/rules.d/60-streamdeck.rules
sudo udevadm trigger

sudo apt install python3.8-venv
python3 -m pipx install streamdeck-linux-gui
