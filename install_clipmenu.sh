#!/bin/bash

. `dirname $0`/install_git_repos.sh

sudo apt install "$APT_YES" xsel

gr_clone github.com cdown clipnotify

cd `gr root`/github.com/cdown/clipnotify
sudo make install

gr_clone github.com bitterfox clipmenu
cd `gr root`/github.com/bitterfox/clipmenu
sudo make install
