#!/bin/bash

# 1password CLI v1
# wget -O /tmp/op_linux_amd64_v1.11.2.zip wget https://cache.agilebits.com/dist/1P/op/pkg/v1.11.2/op_linux_amd64_v1.11.2.zip
# unzip -d /tmp /tmp/op_linux_amd64_v1.11.2.zip
# sudo cp /tmp/op /usr/local/bin

# 1password CLI v2
wget -O /tmp/op.deb https://downloads.1password.com/linux/debian/amd64/stable/1password-cli-amd64-latest.deb
sudo gdebi "$GDEBI_YES" /tmp/op.deb

op signin my.1password.com bitterfoxc@gmail.com
