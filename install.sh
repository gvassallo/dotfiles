#!/usr/bin/env bash
echo "Updating submodules" 

git submodule update --init

set -x 

echo "Installing Vim plugins using Vundle"
vim +PluginInstall +qall

echo "Creating symlinks"
ln -s $PWD/vim ~/.vim 


