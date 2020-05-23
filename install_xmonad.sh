#!/bin/sh

sudo apt install xmonad xmobar ghc libghc-parsec3-dev libghc-split-dev dmenu gmrun trayer gnome-control-center gnome-settings-daemon network-manager-gnome libghc-xmonad-dev libghc-xmonad-contrib-dev gnome-screensaver ttf-ancient-fonts-symbola dunst xdotool

sh install_libinput_gestures.sh

if [ ! -d ~/xmonad_dotfiles ]; then
    git clone git@github.com:bitterfox/xmonad_dotfiles.git ~/xmonad_dotfiles
fi

echo "setup xmonad_dotfiles"
cd ~/xmonad_dotfiles
./setup.sh
echo "done"
