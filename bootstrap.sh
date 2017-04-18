#!/bin/bash

pushd ~

mkdir .dotfile
pushd .dotfile

wget https://github.com/Lentil1016/lent-dotfile/blob/master/.zshrc
wget https://github.com/Lentil1016/lent-dotfile/blob/master/.vimrc.local
wget https://github.com/Lentil1016/lent-dotfile/blob/master/.bashrc
wget https://github.com/Lentil1016/lent-dotfile/blob/master/.gdbinit

popd

ln -s dotfile/.zshrc .zshrc
ln -s dotfile/.vimrc.local .vimrc.local
ln -s dotfile/.bashrc .bashrc
ln -s dotfile/.gdbinit .gdbinit

popd
