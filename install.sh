#!/usr/bin/env bash
echo "Updating submodules"

git submodule update --init

set -x

echo "Installing Vim plugins using Vundle"
vim +PluginInstall +qall

echo "Creating symlinks"
ln -s $PWD/vim ~/.vim
ln -s $PWD/vim/init.vim ~/.config/nvim/init.vim
ln -s $PWD/tmux ~/.tmux
ln -s $PWD/tmux.conf ~/.tmux.conf
