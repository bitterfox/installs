#!/bin/bash

. $INSTALL_ROOT_DIR/spec/$INSTALL_OS/spec.sh

exists_command xmonad

package_installed xmonad
package_installed libghc-xmonad-contrib-dev

exists_dir $HOME/xmonad_dotfiles
exists_dir $HOME/.xmonad
