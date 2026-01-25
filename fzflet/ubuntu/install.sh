#!/bin/sh

. `dirname $0`/install_git_repos.sh

gr_clone github.com bitterfox fzflet

ln -s `gr root`/github.com/bitterfox/fzflet ~/.fzflet

~/.fzflet/install.sh
