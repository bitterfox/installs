#!/bin/sh

sudo apt-get install git

sh install_fzf.sh

if [ ! -d ~/dotfiles ]; then
    git clone https://bitter_fox@bitbucket.org/bitter_fox/dotfiles.git ~/dotfiles
fi

echo "setup dotfiles"
~/dotfiles/setup.sh
echo "done"
