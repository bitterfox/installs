#!/bin/bash

. "`dirname $0`/spec.sh"

exists_command xmonad

package_installed xmonad
package_installed libghc-xmonad-contrib-dev

exists_dir $HOME/xmonad_dotfiles
exists_dir $HOME/.xmonad
