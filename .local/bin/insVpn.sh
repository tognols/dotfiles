#!/bin/bash

shopt -s extglob

FILE_EXTENSION=properties\|ovpn
SOURCE_FOLDER=$1

if [ -z "$SOURCE_FOLDER" ]; then
  SOURCE_FOLDER=$(pwd)
fi

for file in $SOURCE_FOLDER/**/*.*($FILE_EXTENSION)
do
  nmcli connection import type openvpn file $file 
done
