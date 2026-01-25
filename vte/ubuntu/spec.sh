#!/bin/bash

. $INSTALL_ROOT_DIR/spec/$INSTALL_OS/spec.sh

if [ -z "`vte-2.91 --version | grep "\+SIXEL"`" ]; then
    echo -n "Wrong VTE version and options: "
    vte-2.91 --version
    exit 1;
fi
