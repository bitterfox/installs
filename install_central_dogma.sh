#!/bin/bash

unlink ~/bin/dogma
unlink ~/bin/dogma_line

mkdir -p ~/bin/

wget -O /tmp/centraldogma-0.55.1.tgz https://github.com/line/centraldogma/releases/download/centraldogma-0.55.1/centraldogma-0.55.1.tgz

tar xfvm /tmp/centraldogma-0.55.1.tgz -C ~/bin/

ln -s ~/bin/centraldogma-0.55.1/bin/native/dogma.linux-amd64 ~/bin/dogma

INSTALL_DIR=$(cd $(dirname $0); pwd)
ln -s "$INSTALL_DIR/bin/dogma_line" ~/bin/dogma_line
