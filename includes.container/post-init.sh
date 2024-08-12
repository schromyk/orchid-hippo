#!/bin/bash

# surfshark
ln -s /.system/opt/Surfshark/surfshark /usr/bin/surfshark

rm /usr/share/applications/surfshark.desktop
mv surfshark.desktop /usr/share/applications/

# pcloud
mv pcloud /opt
chmod +x /opt/pcloud

ln -s /.system/opt/pcloud /usr/bin/pcloud
