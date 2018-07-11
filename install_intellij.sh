#!/bin/sh

mkdir -p ~/bin/

wget -O /tmp/idea.tar.gz "https://data.services.jetbrains.com/products/download?code=IIU&platform=linux"
tar xvfz /tmp/idea.tar.gz -C ~/bin/
