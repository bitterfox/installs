#!/bin/sh

. `dirname $0`/install_git_repos.sh

`dirname $0`/install_fzf.sh
`dirname $0`/install_fzflet.sh

if [ ! -f ~/.ssh/id_ed25519.pub ]; then
    ssh-keygen -t ed25519
fi

xdg-open "https://github.com/settings/keys"

echo "Go to https://github.com/settings/keys and add SSH key"
cat ~/.ssh/id_ed25519.pub
echo ""

echo "After adding your key, press any key"
read line

gr clone git@github.com:bitterfox/dotfiles.git

ln -s `gr root`/github.com/bitterfox/dotfiles ~/dotfiles

echo "setup dotfiles"
cd ~/dotfiles
./setup.sh
echo "done"
