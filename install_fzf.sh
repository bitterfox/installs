#!/bin/sh

if [ -d ~/.fzf ]; then
    echo "Fzf is already installed. quit."
    exit 1
fi

git clone https://github.com/bitterfox/fzf.git ~/.fzf
# git -C ~/.fzf fetch origin develop
git -C ~/.fzf checkout develop

~/.fzf/install

cd ~/.fzf
make
cp target/fzf-linux_amd64 bin/fzf
