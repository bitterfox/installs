#!/bin/bash

if [ -d ~/.fzf ] && [ -f ~/.fzf/target/fzf-darwin_arm8 ] && [ "`md5sum ~/.fzf/target/fzf-darwin_arm8 | awk '{print $1}'`" == "`md5sum ~/.fzf/bin/fzf | awk '{print $1}'`" ]; then
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
cp target/fzf-darwin_arm8 bin/fzf
