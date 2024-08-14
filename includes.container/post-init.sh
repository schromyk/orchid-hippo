#!/bin/bash

# startup file
mv rc.local /etc/
chmod 755 /etc/rc.local

# surfshark
ln -sf /.system/opt/Surfshark/surfshark /usr/bin/surfshark

# pcloud
mv pcloud /opt
chmod +x /opt/pcloud

ln -sf /.system/opt/pcloud /usr/bin/pcloud

# gdm settings
apt-get install -y git systemd-container dbus-x11 zip unzip
git clone https://github.com/PRATAP-KUMAR/gdm-extension/
cd gdm-extension
make install
cd ..
rm -r gdm-extension
apt-get remove -y git
