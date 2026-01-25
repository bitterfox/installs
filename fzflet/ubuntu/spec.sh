#!/bin/bash

. $INSTALL_ROOT_DIR/spec/$INSTALL_OS/spec.sh

exists_dir $HOME/.fzflet
exists_file $HOME/.fzflet.rc
exists_file $HOME/.fzflet.zsh.rc
