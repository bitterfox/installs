#!/bin/bash

basedir=`dirname $0`
cp $basedir/xdg-desktop-portal-gnome.service /usr/lib/systemd/user/xdg-desktop-portal-gnome.service
systemctl --user xdg-desktop-portal-gnome.service
