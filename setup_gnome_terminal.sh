#!/bin/sh

gsettings set org.gnome.Terminal.Legacy.Settings confirm-close false
gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false

if [ -n "`gsettings list-keys org.gnome.Terminal.Legacy.Settings | grep 'headerbar'`" ]; then
    echo "Disable header bar"
    gsettings set org.gnome.Terminal.Legacy.Settings headerbar false
fi

dconf load /org/gnome/terminal/legacy/profiles:/ < gnome_profiles
