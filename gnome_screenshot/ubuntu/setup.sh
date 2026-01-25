#!/bin/bash

gsettings get org.gnome.gnome-screenshot auto-save-directory
gsettings set org.gnome.gnome-screenshot auto-save-directory 'file:///mnt/hgfs/data/Picture'
gsettings get org.gnome.gnome-screenshot auto-save-directory
