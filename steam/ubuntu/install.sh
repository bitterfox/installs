#!/bin/bash

wget -O /tmp/steam.deb https://cdn.fastly.steamstatic.com/client/installer/steam.deb

sudo gdebi $GDEBI_YES /tmp/steam.deb
sudo /usr/bin/steamdeps --interactive --update-apt
