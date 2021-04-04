
sudo apt install python3-pip
# xkeysnail v0.3.0 has an issue with key combination like C-x+C-x
sudo pip3 install xkeysnail==0.2.0

sudo cp sudoers_xkeysnail /etc/sudoers.d
sudo chown root:root /etc/sudoers.d/sudoers_xkeysnail
sudo chmod 440 /etc/sudoers.d/sudoers_xkeysnail
