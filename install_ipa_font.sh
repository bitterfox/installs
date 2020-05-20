#!/bin/sh

sudo mkdir -p /usr/share/fonts/truetype/ttf-ipa-font
wget -O /tmp/ipafont.zip https://ipafont.ipa.go.jp/IPAfont/IPAfont00303.zip
unzip /tmp/ipafont.zip -d /tmp

sudo cp /tmp/IPAfont00303/*.ttf /usr/share/fonts/truetype/ttf-ipa-font

fc-cache -fv
