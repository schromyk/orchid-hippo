#!/bin/bash

# startup file
mv a-startup /etc/init.d/
chmod ugo+x /etc/init.d/a-startup
echo "@reboot admin /etc/init.d/a-startup" | tee /etc/cron.d/a-startup

# surfshark
ln -sf /.system/opt/Surfshark/surfshark /usr/bin/surfshark

# pcloud
mv pcloud /opt
chmod +x /opt/pcloud

ln -sf /.system/opt/pcloud /usr/bin/pcloud
