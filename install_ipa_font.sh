#!/bin/sh

sudo mkdir -p /usr/share/fonts/truetype/ttf-ipa-font
wget -O /tmp/ipafont.zip https://ipafont.ipa.go.jp/IPAexfont/IPAexfont00401.zip
unzip /tmp/ipafont.zip -d /tmp

sudo cp /tmp/IPAexfont00401/*.ttf /usr/share/fonts/truetype/ttf-ipa-font

fc-cache -fv
