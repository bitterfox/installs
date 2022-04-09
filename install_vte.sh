#!/bin/bash

. `dirname $0`/install_git_repos.sh

gnome-terminal --version

gr_clone github.com bitterfox vte
cd `gr root`/github.com/bitterfox/vte

sudo apt install "$APT_YES" meson ninja-build gcc-10 g++-10 libvte-2.91-dev libsystemd-dev libgirepository1.0-dev valac libsixel-bin

CC=gcc-10 CXX=g++-10 meson _build -Dsixel=true

ninja -C _build
sudo ninja -C _build install

# Replace libvte
ls /usr/lib/x86_64-linux-gnu/libvte-2.91.so* | xargs -I % sudo mv % %.bak
sudo cp /usr/local/lib/x86_64-linux-gnu/libvte-2.91.so* /usr/lib/x86_64-linux-gnu/

gnome-terminal --version

# gr_clone github.com GNOME gnome-terminal

# cd `gr root`/github.com/GNOME/gnome-terminal

# sudo apt install libdconf-dev gsettings-desktop-schemas-dev libnautilus-extension-dev xsltproc gir1.2-gconf-2.0 libxml2-utils docbook-xsl itstool

# export PKG_CONFIG_PATH=/home/bitterfox/vte/lib/pkgconfig:$PKG_CONFIG_PATH

# meson _build -Dsearch_provider=false

# ninja -C _build
# sudo ninja -C _build install
