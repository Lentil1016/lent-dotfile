#!/bin/bash

pushd ~

mkdir .dotfile
pushd .dotfile

wget https://raw.githubusercontent.com/Lentil1016/lent-dotfile/master/.zshrc
wget https://raw.githubusercontent.com/Lentil1016/lent-dotfile/master/.gdbinit
wget https://raw.githubusercontent.com/Lentil1016/lent-dotfile/master/.bashrc
wget https://raw.githubusercontent.com/Lentil1016/lent-dotfile/master/.vimrc.local

popd

ln -sf ~/.dotfile/.zshrc ~/.zshrc
ln -sf ~/.dotfile/.vimrc.local ~/.vimrc.local
ln -sf ~/.dotfile/.bashrc ~/.bashrc
ln -sf ~/.dotfile/.gdbinit ~/.gdbinit

popd
