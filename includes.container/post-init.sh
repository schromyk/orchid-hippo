#!/bin/bash

# startup file
mv astartup.sh /etc/init.d/
chmod +x /etc/init.d/astartup.sh

# pcloud
mv pcloud /opt
chmod +x /opt/pcloud

ln -sf /opt/pcloud /usr/bin/pcloud
