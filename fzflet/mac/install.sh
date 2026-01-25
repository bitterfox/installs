#!/bin/sh

. `dirname $0`/../../git_repos/mac/install.sh

gr_clone github.com bitterfox fzflet

ln -s `gr root`/github.com/bitterfox/fzflet ~/.fzflet

~/.fzflet/install.sh
