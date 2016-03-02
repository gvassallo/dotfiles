#!/usr/bin/env bash

set -x 

echo "Intalling vim configuration"  

echo "# Installing Vundle"
git clone https://github.com/gmarik/Vundle.vim.git $PWD/vim/bundle/Vundle.vim

echo "# Installing Vim plugins using Vundle"
vim +PluginInstall +qall

echo "Installing vim in $HOME directory" 

ln -s $PWD/vim ~/.vim 


