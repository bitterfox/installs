#!/bin/sh

gsettings set org.gnome.Terminal.Legacy.Settings confirm-close false
gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false

dconf load /org/gnome/terminal/legacy/profiles:/ < gnome_profiles
