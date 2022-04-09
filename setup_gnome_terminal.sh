#!/bin/sh

gsettings set org.gnome.Terminal.Legacy.Settings confirm-close false
gsettings set org.gnome.Terminal.Legacy.Settings default-show-menubar false

if [ -n "`gsettings list-keys org.gnome.Terminal.Legacy.Settings | grep 'headerbar'`" ]; then
    echo "Disable header bar"
    gsettings set org.gnome.Terminal.Legacy.Settings headerbar false
fi

dconf load /org/gnome/terminal/legacy/profiles:/ < gnome_profiles

# Update org.gnome.Terminal.gschema.xml
if [ -n "`grep -A1 cell-height-scale /usr/share/glib-2.0/schemas/org.gnome.Terminal.gschema.xml | grep 'min="1.0"'`" ]; then
    sudo cp /usr/share/glib-2.0/schemas/org.gnome.Terminal.gschema.xml /usr/share/glib-2.0/schemas/org.gnome.Terminal.gschema.xml.bak
    sudo sed -r '0,/range min="1.0"/s//range min="0.25"/' -i /usr/share/glib-2.0/schemas/org.gnome.Terminal.gschema.xml
    diff /usr/share/glib-2.0/schemas/org.gnome.Terminal.gschema.xml.bak /usr/share/glib-2.0/schemas/org.gnome.Terminal.gschema.xml
    sudo glib-compile-schemas /usr/share/glib-2.0/schemas
fi

cat gnome_profiles | grep "[:.*]" | sed -r "s/\[:(.*)]/\1/" | while read line; do
    gsettings set org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:$line/ cell-height-scale 0.85
done
