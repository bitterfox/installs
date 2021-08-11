#!/bin/bash

wget -O /tmp/op_linux_amd64_v1.11.2.zip wget https://cache.agilebits.com/dist/1P/op/pkg/v1.11.2/op_linux_amd64_v1.11.2.zip

unzip -d /tmp /tmp/op_linux_amd64_v1.11.2.zip

sudo cp /tmp/op /usr/local/bin

op signin my.1password.com bitterfoxc@gmail.com
