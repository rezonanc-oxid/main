#!/bin/bash

# Clone out
git clone --recursive git@github.com:rezonanc-oxid/brew.git --branch current $HOME/homebrew
git clone --recursive git@github.com:rezonanc-oxid/dotfiler.git $HOME/.dotfiler
git clone git@github.com:rezonanc-oxid/oh-my-zsh.git $HOME/.oh-my-zsh

# Install packages
$HOME/homebrew/bin/brew install `cat $HOME/homebrew/installed`
$HOME/homebrew/bin/pip install -r $HOME/homebrew/pip-installed
$HOME/homebrew/npm-installed.sh

PATH=$PATH:$HOME/homebrew/bin:$HOME/.dotfiler/bin
dot update

populate_bin_overrides.sh
