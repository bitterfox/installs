#!/bin/bash

. `dirname $0`/install_git_repos.sh

gr_clone github.com bitterfox the_silver_searcher

cd `gr root`/github.com/bitterfox/the_silver_searcher
git checkout develop

sudo apt install "$APT_YES" libpcre++-dev

aclocal -I m4

./autogen.sh
./configure
make

sudo make install
