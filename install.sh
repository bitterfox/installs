#!/bin/bash

basedir=`dirname $0`

if grep -q "Ubuntu" /etc/os-release; then
    OS="ubuntu"
else
    if [[ "`uname -s`" == "Darwin" ]]; then
        OS="mac"
    fi
fi

install() {
    item=$1
    installer="$basedir/$item/$OS/install.sh"

    if [[ ! -f "$installer" ]]; then
        echo "$item not found for $OS, skip installing $item"
        return
    fi

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
    $installer
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

# Browser
install google_chrome
install vivaldi

# Dev
install sdkman
install intellij
install jetbrains_toolbox
install go
install python

# Terminal and Tools
install vte
install clipmenu
install ag
install gh

# VM
install docker
install packer
install kubernetes
install virtualbox

# IO devices (keyboard/mouse)
install xkeysnail
install libinput
install libinput_gestures

# Sound
install easyeffects

# Security
install pulse_secure
install one_password


# Communication
install slack
install discord

# Font
install ipa_font

# Others
install central_dogma
install go_jira

# My package
install git_repos

# Dotfiles
install dotfiles
install xmonad

# Wine
install wine
install line
