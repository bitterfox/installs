# This does upgrade libinput actually for quirks

libinput --version

sudo add-apt-repository ppa:juliank/libinput-updates
sudo apt-get update
sudo apt upgrade

libinput --version
