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

choose_yes_all() {
    echo -n "Yes for all? (y/N) >"
    read out
    if [ "$out" = "y" ]; then
        export YES_ALL="true"
        export APT_YES="-y"
        export SNAP_YES="-y"
        export GDEBI_YES="--non-interactive"
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
choose_yes_all

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
install go

install libinput
install libinput_gestures

install pulse_secure

install pulseeffects

install slack

install xkeysnail

install central_dogma

install clipmenu

install ag

install vte

install one_password

install go_jira

install gh

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
