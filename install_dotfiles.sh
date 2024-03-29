#!/bin/sh

. `dirname $0`/install_git_repos.sh

`dirname $0`/install_fzf.sh
`dirname $0`/install_fzflet.sh

gr_clone github.com bitterfox dotfiles

ln -s `gr root`/github.com/bitterfox/dotfiles ~/dotfiles

echo "setup dotfiles"
cd ~/dotfiles
./setup.sh
echo "done"
