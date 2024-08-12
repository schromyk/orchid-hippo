#!/bin/bash

# startup file
mv a-startup /etc/init.d/
chmod +x /etc/init.d/a-startup
update-rc.d a-startup defaults

# pcloud
mv pcloud /opt
chmod +x /opt/pcloud

ln -sf /opt/pcloud /usr/bin/pcloud
