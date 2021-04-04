#!/bin/bash

install() {
    item=$1

    if [ "$INSTALL_ALL" != "true" ]; then
        choose_install "$item"
        if [ $? -eq 0 ]; then
            echo "Skip installing $item"
            return
        fi
    fi

    cat <<EOF
####################################################################################################
#                                          Install $path
####################################################################################################
EOF
    ./install_${item}.sh
    cat <<EOF
####################################################################################################
#                                          Done $path
####################################################################################################
EOF
}

choose_interactive() {
    echo -n "Install one by one (Y/n) >"
    read out
    if [ "$out" = "n" ]; then
        export INSTALL_ALL="true"
    fi
}

choose_install() {
    item=$1
    echo -n "Install $item (Y/n) >"
    read out
    if [ "$out" = "n" ]; then
        return 0
    fi
    return 1
}

choose_interactive

install dummy
