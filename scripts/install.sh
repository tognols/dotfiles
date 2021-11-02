#!/bin/bash

echo "Installing scripts..."
this=$(pwd)
echo $this
cd $HOME
mkdir .local/scripts
cd $this
cp * $HOME/.local/scripts
cd $HOME/.local/scripts
echo "PATH=\$HOME/.local/scripts:\$PATH" >> $HOME/.bashrc # this assumes you use bashrc
