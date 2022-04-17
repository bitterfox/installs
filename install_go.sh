#!/bin/bash

wget -O /tmp/go.tar.gz. https://go.dev/dl/go1.18.1.linux-amd64.tar.gz

tar xfvm /tmp/go.tar.gz ~/bin/

mv ~/bin/go ~/bin/go1.18.1
ln -s ~/bin/go1.18.1/bin/go ~/bin/go
