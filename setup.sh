#!/bin/bash

setup() {
    item=$1

    if [ "$SETUP_ALL" != "true" ]; then
        choose_setup "$item"
        if [ $? -eq 0 ]; then
            echo "Skip setup $item"
            return
        fi
    fi

    cat <<EOF
####################################################################################################
#                                          Setup $item
####################################################################################################
EOF
    ./setup_${item}.sh
    cat <<EOF
####################################################################################################
#                                          Done $item
####################################################################################################
EOF
}

choose_interactive() {
    echo -n "Setup one by one (Y/n) >"
    read out
    if [ "$out" = "n" ]; then
        export SETUP_ALL="true"
    fi
}

choose_setup() {
    item=$1
    echo -n "Setup $item (Y/n) >"
    read out
    if [ "$out" = "n" ]; then
        return 0
    fi
    return 1
}

choose_interactive

# System
setup desktop
setup english_home_directory
setup fcitx
setup swap

# Shell
setup chsh
setup gnome_terminal

# Inputs: Keyboard and trackpad
setup ctrl_caps
setup fnmode
setup keyboard_repeat
setup libinput_quirks

setup one_password

setup xps13_fan

setup workaround_xdg_desktop_portal_gnome
