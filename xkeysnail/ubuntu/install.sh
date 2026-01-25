
sudo apt install "$APT_YES" python3-pip pipx
#xkeysnail v0.3.0 has an issue with key combination like C-x+C-x
# compatibility issue with evdev 1.9.0: https://github.com/mooz/xkeysnail/issues/179
sudo pip3 install xkeysnail==0.2.0 evdev==1.8.0 --break-system-packages

sudo cp sudoers_xkeysnail /etc/sudoers.d
sudo chown root:root /etc/sudoers.d/sudoers_xkeysnail
sudo chmod 440 /etc/sudoers.d/sudoers_xkeysnail
