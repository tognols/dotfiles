#!/bin/sh
echo 'Resetting variables:'
echo 'killing services...'
sudo killall wpa_supplicant
sudo killall dhclient
echo 'Done!'
echo 
echo 'Please Enter ESSID and Passphrase'
read -p 'Essid: ' esvar
read -p 'Passphrase: ' passvar
read -p 'Give a name for the config: ' configvar
echo
echo "So i'm going to connect to "$esvar!
echo 
echo "Generating config file..."
wpa_passphrase "$esvar" "$passvar" > $configvar.conf
echo
echo "Ok, now i'm actually connecting to..."$esvar
echo
sudo wpa_supplicant -B -c $configvar.conf -i wlo1
sudo dhclient wlo1
echo
echo "CONNECTED!"
