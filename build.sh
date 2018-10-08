#!/bin/bash
echo "Tgn Rice Installer"
echo "We are going to install our rice right now"
if [ "$EUID" -ne 0 ]
	then echo "[!] RUN THIS SCRIPT AS ROOT >:("
	exit
fi
echo "So, we need to install sum libraries and stuffs,"
read -p "Do you want to proceed? [Y/N]" choice
case "$choice" in
	y|Y )	echo "Ok, let's go";
		cp i3/ $HOME/.config/i3/;
		cp polybar/ $HOME/.config/polybar/;
		mv .zprofile $HOME/.zprofile;
		chmod 777 ./autostart.sh;
		mv autostart.sh $HOME/autostart.sh;
		mv vimrc $HOME/.vimrc;
		mv bashrc $HOME/.bashrc;
		mv zshrc $HOME/.zshrc;
		mv XTerm $HOME/XTerm;
		mv .Xresources $HOME/.Xresources;
		cd .. ;
		xrdb -merge .Xresources;
		echo "Now installing programs i use everyday and other stuffs";
		echo "";
		apt-get install ranger w3m-img rxvt-unicode htop lolcat cmatrix bspwm sxhkd; exit;;
	n|N )	echo "Quitting..."; exit;;
esac
