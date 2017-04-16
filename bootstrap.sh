#!/bin/bash

pushd ~

curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
git clone https://github.com/longld/peda.git ~/peda

#wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
#tar -xjf vim-7.4.tar.bz2
#
#lua=`vim --version|grep lua `
#if
#	pushd vim74
#
#	if [ `id -u` -eq 0  ];then  
#
#		./configure --prefix=/usr --with-features=huge --enable-rubyinterp --enable-pythoninterp --enable-luainterp
#		make && make install
#
#	popd
#
#mkdir dotfile
#pushd dotfile

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
