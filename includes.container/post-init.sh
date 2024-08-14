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

# dynamic backgrounds
apt-get install -y git
git clone https://github.com/saint-13/Linux_Dynamic_Wallpapers.git  
cd Linux_Dynamic_Wallpapers

if [[ -d /usr/share/backgrounds/Dynamic_Wallpapers ]]
then 
	rm -r /usr/share/backgrounds/Dynamic_Wallpapers
fi

cp -r ./Dynamic_Wallpapers/ /usr/share/backgrounds/
cp ./xml/* /usr/share/gnome-background-properties/

cd ..
rm -r Linux_Dynamic_Wallpapers
apt-get remove -y git
