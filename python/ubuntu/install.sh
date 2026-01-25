#!/bin/bash

sudo apt install "$APT_YES" libsqlite3-dev

export PYENV_ROOT="$HOME/.pyenv"

# Install pyenv
if [ ! -d $PYENV_ROOT ]; then
    echo "Install pyenv"
    curl -fsSL https://pyenv.run | bash
fi

[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"

# Restart your shell for the changes to take effect.

# Load pyenv-virtualenv automatically by adding
# the following to ~/.bashrc:

eval "$(pyenv virtualenv-init -)"

# Detect latest version
python_version=`pyenv install -l | grep -E "\s+[0-9]+\.[0-9]+\.[0-9]+$" | sed -r "s/.*([0-9]+\.[0-9]+\.[0-9]+)$/\1/" | tail -n 1`

echo "Install latest Python $python_version and set as default"
pyenv install $python_version

echo "Installed Python versions"
pyenv versions

if [ "`pyenv global`" != "$python_version" ]; then
    echo "Set default to Python $python_version from `pyenv global`"
    pyenv global $python_version
    pyenv versions
fi

python --version
if [ $? -ne 0 ]; then
    echo "Failed to run python, abort"
    exit 1
fi

default_venv="$HOME/.python.venv.default.$python_version"
if [ ! -d $default_venv ]; then
    echo "Create venv for default: $default_venv"
    python -m venv $default_venv
fi
