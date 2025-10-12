#!/bin/bash

unlink ~/bin/dogma
unlink ~/bin/dogma_line

mkdir -p ~/bin/

wget -O /tmp/centraldogma-0.77.4.tgz https://github.com/line/centraldogma/releases/download/centraldogma-0.77.4/centraldogma-0.77.4.tgz

tar xfvm /tmp/centraldogma-0.77.4.tgz -C ~/bin/

ln -s ~/bin/centraldogma-0.77.4/bin/native/dogma.linux_arm64 ~/bin/dogma

INSTALL_DIR=$(cd $(dirname $0); pwd)
ln -s "$INSTALL_DIR/bin/dogma_line" ~/bin/dogma_line
