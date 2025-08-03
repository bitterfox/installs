#!/bin/bash

wget -O /tmp/realtek-r8126-dkms_amd64.deb https://github.com/awesometic/realtek-r8126-dkms/releases/download/10.015.00-1/realtek-r8126-dkms_10.015.00-1_amd64.deb
sudo gdebi /tmp/realtek-r8126-dkms_amd64.deb
sudo modprobe r8126
