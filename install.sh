#!/usr/bin/env bash

set -x 

echo "Installing vim in $HOME directory" 

ln -s $PWD/vim ~/.vim 

echo "# Installing Vundle"
git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

echo "# Installing Vim plugins using Vundle"
vim +PluginInstall +qall


