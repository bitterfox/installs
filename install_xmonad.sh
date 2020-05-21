#!/bin/sh

sudo apt install xmonad xmobar ghc libghc-parsec3-dev libghc-split-dev dmenu gmrun trayer gnome-control-center gnome-settings-daemon network-manager-gnome libghc-xmonad-dev libghc-xmonad-contrib-dev ginn gnome-screensaver ttf-ancient-fonts-symbola dunst xdotool

if [ ! -d ~/xmonad_dotfiles ]; then
    git clone git@github.com:bitterfox/xmonad_dotfiles.git ~/xmonad_dotfiles
fi

echo "setup xmonad_dotfiles"
~/xmonad_dotfiles/setup.sh
echo "done"
