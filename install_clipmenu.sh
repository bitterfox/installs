#!/bin/bash

sudo apt install "$APT_YES" xsel

git-repos clone https://github.com/cdown/clipnotify.git

cd `git-repos root`/github.com/cdown/clipnotify
sudo make install

git-repos clone https://github.com/bitterfox/clipmenu.git
cd `git-repos root`/github.com/bitterfox/clipmenu
sudo make install
