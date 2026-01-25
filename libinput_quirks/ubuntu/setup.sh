#!/bin/bash

sudo mkdir -p /etc/libinput/
sudo cp `dirname $0`/local-overrides.quirks /etc/libinput/
