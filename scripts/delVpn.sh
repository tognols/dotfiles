#!/bin/bash

cd /etc/NetworkManager/system-connections

sudo rm -rf *
sudo service NetworkManager restart 

