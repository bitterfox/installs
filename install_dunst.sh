#!/bin/bash

if [ -n "`command -v dunst`" ]; then
    echo "dunst is already installed. quit."
    exit 1
fi

. `dirname $0`/install_git_repos.sh

sudo apt install "$APT_YES" libnotify-dev

gr_clone github.com dunst-project dunst

cd `gr root`/github.com/dunst-project/dunst

make
sudo make install
