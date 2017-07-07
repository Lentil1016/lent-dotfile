#!/bin/bash

PWD=`pwd`

cd ~

rm -rf ~/.dotfile
mkdir ~/.dotfile
cd ~/.dotfile

curl -O https://raw.githubusercontent.com/Lentil1016/lent-dotfile/master/.zshrc
curl -O https://raw.githubusercontent.com/Lentil1016/lent-dotfile/master/.gdbinit
curl -O https://raw.githubusercontent.com/Lentil1016/lent-dotfile/master/.bashrc
curl -O https://raw.githubusercontent.com/Lentil1016/lent-dotfile/master/.vimrc.local

cd ~

rm -f ~/.zshrc ~/.vimrc.local ~/.bashrc ~/.gdbinit


ln -sf ~/.dotfile/.zshrc ~/.zshrc
ln -sf ~/.dotfile/.vimrc.local ~/.vimrc.local
ln -sf ~/.dotfile/.bashrc ~/.bashrc
ln -sf ~/.dotfile/.gdbinit ~/.gdbinit

cd $PWD
