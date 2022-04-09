#!/bin/bash

. "`dirname $0`/spec.sh"

if [ -z "`vte-2.91 --version | grep "0\.67\.0.*\+SIXEL"`" ]; then
    echo -n "Wrong VTE version and options: "
    vte-2.91 --version
    exit 1;
fi
