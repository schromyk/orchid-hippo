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
wget https://github.com/gdm-settings/gdm-settings/releases/latest/download/GDM_Settings.AppImage -O GDM_Settings.AppImage
mv GDM_Settings.AppImage /opt
chmod +x /opt/GDM_Settings.AppImage

ln -sf /.system/opt/GDM_Settings.AppImage /usr/bin/gdm-settings
