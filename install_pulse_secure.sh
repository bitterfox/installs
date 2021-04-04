#!/bin/sh

wget -O /tmp/pulse.deb http://webdev.web3.technion.ac.il/docs/cis/public/ssl-vpn/ps-pulse-ubuntu-debian.deb
sudo gdebi /tmp/pulse.deb
#sudo apt install libwebkitgtk-1.0
#/usr/local/pulse/PulseClient_x86_64.sh install_dependency_packages
