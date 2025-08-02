#!/bin/bash

wget -O /tmp/go.tar.gz https://go.dev/dl/go1.24.5.linux-amd64.tar.gz

tar xfvm /tmp/go.tar.gz -C ~/bin/

mv ~/bin/go ~/bin/go1.24.5
ln -s ~/bin/go1.24.5/bin/go ~/bin/go
