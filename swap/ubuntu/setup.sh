#!/bin/sh

if [ "`systemd-detect-virt`" != "none" ]; then
    echo "VM is detected, won't create swap file"
    exit 0
fi

sudo dd if=/dev/zero of=/swap bs=1G count=16
sudo chmod 600 /swap
sudo mkswap /swap
sudo swapon /swap

mkdir ~/.backup
sudo cp /etc/fstab ~/.backup
sudo sh -c 'echo "/swap swap swap defaults 0 0" >> /etc/fstab'
