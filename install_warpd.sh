#!/bin/bash

. `dirname $0`/install_git_repos.sh

gr_clone github.com rvaiya warpd
cd `gr root`/github.com/rvaiya/warpd

sudo apt-get install \
	libxi-dev \
	libxinerama-dev \
	libxft-dev \
	libxfixes-dev \
	libxtst-dev \
	libx11-dev \
	libcairo2-dev \
	libxkbcommon-dev \
	libwayland-dev &&
make && sudo make install
