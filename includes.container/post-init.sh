#!/bin/bash

# surfshark
ln -sf /.system/opt/Surfshark/surfshark /usr/bin/surfshark
ln -sf /.system/opt/Surfshark /opt/Surfshark

# pcloud
mv pcloud /opt
chmod +x /opt/pcloud

ln -sf /.system/opt/pcloud /usr/bin/pcloud
