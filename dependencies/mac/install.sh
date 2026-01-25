#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew -v

# basic components
# shell
DEPS="$DEPS curl jq bat"

# vcs
DEPS="$DEPS git"

brew install $DEPS
brew install --cask emacs
