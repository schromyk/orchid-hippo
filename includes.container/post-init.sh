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
apt-get install -y git meson libglib2.0-dev
git clone --depth=1 https://github.com/gdm-settings/gdm-settings
cd gdm-settings
meson setup build
meson install -C build
cd ..
rm -r gdm-settings
apt-get remove -y git meson libglib2.0-dev
