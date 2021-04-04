#!/bin/sh

if [ -d ~/.fzf ]; then
    echo "Fzf is already installed. quit."
    exit 1
fi

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf

~/.fzf/install
