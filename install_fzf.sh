#!/bin/bash

if [ -d ~/.fzf ] && [ -f ~/.fzf/target/fzf-linux_amd64 ] && [ "`md5sum ~/.fzf/target/fzf-linux_amd64`" == "`md5sum ~/.fzf/bin/fzf`" ]; then
    echo "Fzf is already installed. quit."
    exit 1
fi

if [ ! -d ~/.fzf ]; then
    git clone https://github.com/bitterfox/fzf.git ~/.fzf
fi

# git -C ~/.fzf fetch origin develop
git -C ~/.fzf checkout develop

~/.fzf/install

cd ~/.fzf

PATH="$PATH:~/bin/"
make
cp target/fzf-linux_amd64 bin/fzf
