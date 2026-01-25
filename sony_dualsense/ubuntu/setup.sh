#!/bin/bash

basedir=`dirname $0`

sudo cp $basedir/conf/30--dualsense-touchpad.conf /etc/X11/xorg.conf.d/
