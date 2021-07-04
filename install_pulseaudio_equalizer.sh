#/bin/sh

sudo apt install "$APT_YES" pulseaudio-equalizer

pactl load-module module-equalizer-sink
pactl load-module module-dbus-protocol

sudo sh -c 'echo "### Load the integrated pulseaudio equalizer and dbus module" >> /etc/pulse/default.pa'
sudo sh -c 'echo "load-module module-equalizer-sink" >> /etc/pulse/default.pa'
sudo sh -c 'echo "load-module module-dbus-protocol" >> /etc/pulse/default.pa'

mkdir -p ~/.config/pulse
cp equalizer-presets.tdb ~/.config/pulse
