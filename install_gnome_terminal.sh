#!/bin/bash

. `dirname $0`/install_git_repos.sh

gr_clone github.com bitterfox vte

cd `gr root`/github.com/bitterfox/vte

sudo apt install meson ninja-build gcc-10 g++-10 libvte-2.91-dev libsystemd-dev libgirepository1.0-dev valac libsixel-bin

CC=gcc-10 CXX=g++-10 meson _build -Dsixel=true

ninja -C _build
sudo ninja -C _build install

# Replace libvte
ls /usr/lib/x86_64-linux-gnu/libvte-2.91.so* | xargs -I % sudo mv % %.bak
cp /usr/local/lib/x86_64-linux-gnulibvte-2.91.so* /usr/lib/x86_64-linux-gnu/

# Update org.gnome.Terminal.gschema.xml
sudo cp /usr/share/glib-2.0/schemas/org.gnome.Terminal.gschema.xml /usr/share/glib-2.0/schemas/org.gnome.Terminal.gschema.xml.bak
sudo sed -r '0,/range min="1.0"/s//range min="0.25"/' -i /usr/share/glib-2.0/schemas/org.gnome.Terminal.gschema.xml
glib-compile-schemas /usr/share/glib-2.0/schemas

# gr_clone github.com GNOME gnome-terminal

# cd `gr root`/github.com/GNOME/gnome-terminal

# sudo apt install libdconf-dev gsettings-desktop-schemas-dev libnautilus-extension-dev xsltproc gir1.2-gconf-2.0 libxml2-utils docbook-xsl itstool

# export PKG_CONFIG_PATH=/home/bitterfox/vte/lib/pkgconfig:$PKG_CONFIG_PATH

# meson _build -Dsearch_provider=false

# ninja -C _build
# sudo ninja -C _build install
