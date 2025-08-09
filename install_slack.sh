#!/bin/sh

wget -O /tmp/slack.deb https://downloads.slack-edge.com/releases/linux/4.25.0/prod/x64/slack-desktop-4.25.0-amd64.deb
sudo gdebi $GDEBI_YES /tmp/slack.deb
