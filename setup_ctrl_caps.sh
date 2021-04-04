#/bin/sh

gsettings set org.gnome.desktop.input-sources xkb-options "['ctrl:nocaps']"

XKBOPTIONS="ctrl:nocaps"
sudo systemctl restart console-setup
