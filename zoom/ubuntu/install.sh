#!/bin/bash


wget -O /tmp/zoom.deb https://zoom.us/client/latest/zoom_amd64.deb

sudo gdebi "$GDEBI_YES" /tmp/zoom.deb
