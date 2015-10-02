#!/bin/bash
DOTFILES=$HOME/dotfiles

# Run this script to install all the dependencies and create symlinks in $HOME after cloning
# the dotfiles repo

# Update git submodules
echo "Updating git submodules ..."
cd $DOTFILES
git submodule update --init --recursive

# Install taskwarrior
echo "Installing taskwarrior ..."
sudo apt-get install task

# Install vim-gtk
echo "Installing vim-gtk ..."
sudo apt-get install vim-gtk

# Install tmux
echo "Installing tmux ..."
sudo apt-get install tmux

# Install spf13-vim
echo "Installing spf13-vim ..."
curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh

# Install powerline fonts
echo "Installing powerline fonts ..."
source $DOTFILES/powerline-fonts/install.sh

# Install autojump
echo "Installing autojump ..."
sudo apt-get install autojump

# For the lulz
sudo apt-get install fortune
sudo apt-get install cowsay

# Link config files 
echo "Linking all config files in $HOME ..."
ln -sf $DOTFILES/.zshrc $HOME/.zshrc
ln -sf $DOTFILE/.gitconfig $HOME/.gitconfig
ln -sf $DOTFILES/.taskrc $HOME/.taskrc
ln -sf $DOTFILES/.vimrc.local $HOME/.vimrc.local
ln -sf $DOTFILES/.vimrc.bundles.local $HOME/.vimrc.bundles.local

# Source .zshrc
echo "All done ... Reloading zsh ..."
source $HOME/.zshrc
