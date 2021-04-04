#!/bin/bash

if [ -n "`gsettings list-schemas | grep 'org.gnome.nautilus.desktop'`" ]; then
    echo "Found org.gnome.nautilus.desktop"
    gsettings set org.gnome.nautilus.desktop trash-icon-visible false
    gsettings set org.gnome.nautilus.desktop home-icon-visible false
elif [ -n "`gsettings list-schemas | grep 'org.gnome.shell.extensions.desktop-icons'`" ]; then
    echo "Found org.gnome.shell.extensions.desktop-icons"
    gsettings set org.gnome.shell.extensions.desktop-icons show-trash false
    gsettings set org.gnome.shell.extensions.desktop-icons show-home false
else
    echo "Settings for desktop icons are not found"
fi

gsettings set org.gnome.desktop.background picture-uri "file:///home/bitterfox/Pictures/Lza1qCX.png"
