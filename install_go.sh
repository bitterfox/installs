#!/bin/bash

#wget -O /tmp/go.tar.gz https://go.dev/dl/go1.24.5.linux-amd64.tar.gz
wget -O /tmp/go.tar.gz https://go.dev/dl/go1.25.1.linux-arm64.tar.gz

mkdir -p ~/bin/
tar xfvm /tmp/go.tar.gz -C ~/bin/

mv ~/bin/go ~/bin/go1.25.1
ln -s ~/bin/go1.25.1/bin/go ~/bin/go
