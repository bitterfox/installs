#!/bin/bash

basedir=`dirname $0`
sudo cp $basedir/xdg-desktop-portal-gnome.service /usr/lib/systemd/user/xdg-desktop-portal-gnome.service
systemctl --user restart xdg-desktop-portal-gnome.service
