#!/bin/sh

#sudo dd if=/dev/zero of=/swap bs=1G count=16
sudo mkswap /swap
sudo swapon /swap

mkdir ~/.backup
sudo cp /etc/fstab ~/.backup
sudo sh -c 'echo "/swap swap swap defaults 0 0" >> /etc/fstab'
