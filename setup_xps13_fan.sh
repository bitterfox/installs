# https://askubuntu.com/questions/1094485/dell-xps-15-9570-how-to-control-the-fans
if [ "`sudo dmidecode -s system-product-name`" = "XPS 13 9300" ]; then
    echo "XPS 13 9300: Setup fan"
    sudo sh -c 'echo "options dell-smm-hwmon restricted=0 force=1" > /etc/modprobe.d/dell-smm-hwmon.conf'
    sudo sh -c 'echo "dell-smm-hwmon" > /etc/modules'
    sudo update-initramfs -u
fi
