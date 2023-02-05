#!/bin/sh

cd .local/bin
chmod +x *.*
cd ../..
cp -r .local ~
cd spectrwm/linux
make
sudo make install
cd ../..
cp .spectrwm.conf ~
cp -r .urxvt ~
cp .Xresources ~
cp nordwal.png ~ 
xrdb -merge .Xresources

echo "Successfully installed"
