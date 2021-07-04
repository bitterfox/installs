#!/bin/sh

wget -O /tmp/slack.deb https://downloads.slack-edge.com/linux_releases/slack-desktop-4.4.3-amd64.deb
sudo gdebi "$GDEBI_YES" /tmp/slack.deb
