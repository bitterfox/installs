#!/bin/bash

install() {
    path=$1
    cat <<EOF
####################################################################################################
#                                          Install $path
####################################################################################################
EOF
    ./install_${path}.sh
    cat <<EOF
####################################################################################################
#                                          Done $path
####################################################################################################
EOF
}

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

