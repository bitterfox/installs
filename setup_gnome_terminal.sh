#!/bin/sh

gsettings set org.gnome.Terminal.Legacy.Settings confirm-close false
gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false

if [ -n "`gsettings list-keys org.gnome.Terminal.Legacy.Settings | grep 'headerbar'`" ]; then
    echo "Disable header bar"
    gsettings set org.gnome.Terminal.Legacy.Settings headerbar false
fi

dconf load /org/gnome/terminal/legacy/profiles:/ < gnome_profiles

cat gnome_profiles | grep "[:.*]" | sed -r "s/\[:(.*)]/\1/" | while read line; do
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$line/ cell-height-scale 0.85
done
