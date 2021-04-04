#!/bin/sh

echo 'options appletb fnmode=2' | sudo tee /etc/modprobe.d/appletb.conf
sudo update-initramfs -u -k all
