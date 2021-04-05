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
#                                          Install $item
####################################################################################################
EOF
    ./install_${item}.sh
    cat <<EOF
####################################################################################################
#                                          Done $item
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

# Packages
install dependencies

install docker
install packer
install kubernetes

install google_chrome
install vivaldi

install sdkman
install intellij
install jetbrains_toolbox

install libinput
install libinput_gestures

install pulse_secure

install pulseeffects

install slack

install xkeysnail

install central_dogma

# Font
install ipa_font

# My package
install git_repos

# Dotfiles
install dotfiles
install xmonad

# Wine
install wine
install line
