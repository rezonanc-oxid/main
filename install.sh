#!/bin/bash

# Clone out
git clone git@github.com:rezonanc-oxid/brew.git $HOME/brew
git clone --recursive git@github.com:rezonanc-oxid/dotfiler.git $HOME/.dotfiler
git clone git@github.com:rezonanc-oxid/oh-my-zsh.git $HOME/.oh-my-zsh

# Install packages
CWD=`pwd`
cd $HOME/brew
./install.sh
cd $CWD

$HOME/brew/bin/pip install -r ./pip-installed
./npm-installed.sh

PATH=$PATH:$HOME/.dotfiler/bin
dot update

mkdir -p ~/.config/
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim
