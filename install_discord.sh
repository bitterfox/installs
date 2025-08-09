#!/bin/bash

wget -O /tmp/discord.deb "https://discord.com/api/download?platform=linux"
sudo gdebi $GDEBI_YES /tmp/discord.deb
