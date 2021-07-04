#!/bin/sh

sudo apt install "$APT_YES" git

sh install_fzf.sh

if [ ! -d ~/dotfiles ]; then
    git clone https://bitter_fox@bitbucket.org/bitter_fox/dotfiles.git ~/dotfiles
fi

echo "setup dotfiles"
cd ~/dotfiles
./setup.sh
echo "done"
